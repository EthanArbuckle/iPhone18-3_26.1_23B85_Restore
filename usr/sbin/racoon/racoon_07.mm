void *sub_1000532BC()
{
  result = qword_10008F2E8;
  if (qword_10008F2E8)
  {
    if (qword_10008F2F0 >= (qword_10008F328 - 1))
    {
      v1 = qword_10008F328 + 8;
      result = malloc_type_realloc(qword_10008F2E8, 8 * (qword_10008F328 + 8), 0x9F007A03uLL);
      qword_10008F2E8 = result;
      if (result)
      {
        v2 = &result[qword_10008F328];
        *v2 = 0u;
        v2[1] = 0u;
        v2[2] = 0u;
        v2[3] = 0u;
        qword_10008F328 = v1;
        return result;
      }

LABEL_8:
      sub_100053880("out of dynamic memory in yyensure_buffer_stack()");
    }
  }

  else
  {
    result = malloc_type_malloc(8uLL, 0x7EBAC0B3uLL);
    qword_10008F2E8 = result;
    if (!result)
    {
      goto LABEL_8;
    }

    *result = 0;
    qword_10008F328 = 1;
    qword_10008F2F0 = 0;
  }

  return result;
}

uint64_t sub_10005337C(FILE *a1, int a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0x7EBAC0B3uLL);
  if (!v4 || (v5 = v4, v4[6] = a2, v6 = malloc_type_malloc(a2 + 2, 0x7EBAC0B3uLL), (*(v5 + 8) = v6) == 0))
  {
    sub_100053880("out of dynamic memory in yy_create_buffer()");
  }

  *(v5 + 40) = 1;
  sub_100053968(v5, a1);
  return v5;
}

void sub_100053404(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x200uLL, __format, va);
  sub_100053EE4();
}

void sub_10005347C(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x200uLL, __format, va);
  sub_100053E7C();
}

void sub_1000534F4(void **a1)
{
  if (a1)
  {
    if (qword_10008F2E8)
    {
      v2 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
    }

    else
    {
      v2 = 0;
    }

    if (v2 == a1)
    {
      *(qword_10008F2E8 + 8 * qword_10008F2F0) = 0;
    }

    if (*(a1 + 10))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t sub_100053570(const char *a1)
{
  v2 = fopen(a1, "r");
  qword_1000900A0 = v2;
  if (v2)
  {
    v3 = dword_10008F330[0];
    v4 = &dword_10008F330[32 * dword_10008F330[0]];
    v6 = *(v4 + 1);
    v5 = v4 + 2;
    if (v6)
    {
      fclose(*(v5 + 1));
      v3 = dword_10008F330[0];
      free(*&dword_10008F330[32 * dword_10008F330[0] + 2]);
      v2 = qword_1000900A0;
    }

    v7 = &dword_10008F330[32 * v3];
    *(v7 + 2) = v2;
    v8 = strdup(a1);
    *(v7 + 1) = v8;
    v9 = v7 + 2;
    if (!v8)
    {
      if (dword_100090058)
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100063680();
        }
      }

      exit(1);
    }

    v9[6] = 1;
    if (!dword_100090058)
    {
      return 0;
    }

    v10 = ne_log_obj();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      sub_10006B8B0(a1, v10);
      return 0;
    }
  }

  else
  {
    v12 = __stderrp;
    v13 = __error();
    v14 = strerror(*v13);
    fprintf(v12, "failed to open file %s (%s)\n", a1, v14);
    if (dword_100090058)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10006B928(a1, v15);
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sub_1000536DC(uint64_t a1)
{
  result = sub_1000532BC();
  v3 = qword_10008F2E8;
  if (qword_10008F2E8)
  {
    v4 = qword_10008F2F0;
    v5 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
    if (v5 == a1)
    {
      return result;
    }

    if (v5)
    {
      v6 = qword_10008F308;
      *qword_10008F308 = byte_10008F310;
      *(*(v3 + 8 * v4) + 16) = v6;
      *(*(v3 + 8 * v4) + 32) = qword_10008F320;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v4 = qword_10008F2F0;
  }

  *(v3 + 8 * v4) = a1;
  qword_10008F320 = *(a1 + 32);
  qword_10008F308 = *(a1 + 16);
  qword_1000914E8 = qword_10008F308;
  qword_1000900A0 = **(v3 + 8 * v4);
  byte_10008F310 = *qword_10008F308;
  return result;
}

uint64_t sub_1000537A0()
{
  result = dword_10008F2E4;
  for (i = (qword_1000914E8 + dword_10008F2FC); i < qword_10008F308; ++i)
  {
    if (*i)
    {
      v2 = byte_10006E93C[*i];
    }

    else
    {
      v2 = &_mh_execute_header.magic + 1;
    }

    if (word_10006EA3C[result])
    {
      dword_10008F314 = result;
      qword_10008F318 = i;
    }

    v3 = result;
    v4 = word_100070B4E[result] + v2;
    if (result != word_10006F94A[v4])
    {
      do
      {
        v3 = word_100071A74[v3];
        if (v3 >= 1927)
        {
          v2 = *(&unk_10007299A + v2);
        }

        v4 = word_100070B4E[v3] + v2;
      }

      while (word_10006F94A[v4] != v3);
    }

    result = word_1000729D6[v4];
  }

  return result;
}

int *sub_1000538B8(FILE *a1)
{
  if (!qword_10008F2E8 || (v2 = *(qword_10008F2E8 + 8 * qword_10008F2F0)) == 0)
  {
    sub_1000532BC();
    v2 = sub_10005337C(qword_1000900A0, 0x4000);
    *(qword_10008F2E8 + 8 * qword_10008F2F0) = v2;
  }

  result = sub_100053968(v2, a1);
  v4 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
  v5 = *(v4 + 32);
  qword_10008F308 = *(v4 + 16);
  qword_1000914E8 = qword_10008F308;
  v6 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
  qword_10008F320 = v5;
  qword_1000900A0 = *v6;
  byte_10008F310 = *qword_10008F308;
  return result;
}

int *sub_100053968(uint64_t a1, FILE *a2)
{
  v4 = *__error();
  sub_100053A18(a1);
  *a1 = a2;
  *(a1 + 60) = 1;
  v5 = qword_10008F2E8;
  if (qword_10008F2E8)
  {
    v5 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
  }

  if (v5 != a1)
  {
    *(a1 + 52) = 1;
  }

  if (a2)
  {
    v6 = fileno(a2);
    v7 = isatty(v6) > 0;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 44) = v7;
  result = __error();
  *result = v4;
  return result;
}

uint64_t sub_100053A18(uint64_t result)
{
  if (result)
  {
    *(result + 32) = 0;
    **(result + 8) = 0;
    *(*(result + 8) + 1) = 0;
    *(result + 16) = *(result + 8);
    *(result + 48) = 1;
    *(result + 64) = 0;
    if (qword_10008F2E8)
    {
      v1 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
    }

    else
    {
      v1 = 0;
    }

    if (v1 == result)
    {
      v2 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
      qword_10008F320 = *(v2 + 32);
      qword_10008F308 = *(v2 + 16);
      qword_1000914E8 = qword_10008F308;
      qword_1000900A0 = **(qword_10008F2E8 + 8 * qword_10008F2F0);
      byte_10008F310 = *qword_10008F308;
    }
  }

  return result;
}

void *sub_100053AB8(void *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1000532BC();
    v2 = qword_10008F2E8;
    v3 = qword_10008F2F0;
    if (qword_10008F2E8)
    {
      if (*(qword_10008F2E8 + 8 * qword_10008F2F0))
      {
        v4 = qword_10008F308;
        *qword_10008F308 = byte_10008F310;
        *(*(v2 + 8 * v3) + 16) = v4;
        *(*(v2 + 8 * v3++) + 32) = qword_10008F320;
        qword_10008F2F0 = v3;
      }
    }

    *(v2 + 8 * v3) = v1;
    v5 = v1[4];
    qword_10008F308 = v1[2];
    qword_1000914E8 = qword_10008F308;
    v6 = *(v2 + 8 * v3);
    qword_10008F320 = v5;
    qword_1000900A0 = *v6;
    byte_10008F310 = *qword_10008F308;
  }

  return result;
}

void sub_100053B68()
{
  if (qword_10008F2E8)
  {
    v0 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
    if (v0)
    {
      sub_1000534F4(v0);
      v1 = qword_10008F2E8;
      v2 = qword_10008F2F0;
      *(qword_10008F2E8 + 8 * qword_10008F2F0) = 0;
      if (v2)
      {
        v3 = v2 - 1;
        qword_10008F2F0 = v3;
        v4 = *(v1 + 8 * v3);
        if (v4)
        {
          qword_10008F320 = *(v4 + 32);
          qword_10008F308 = *(v4 + 16);
          qword_1000914E8 = qword_10008F308;
          qword_1000900A0 = **(v1 + 8 * v3);
          byte_10008F310 = *qword_10008F308;
        }
      }
    }
  }
}

char *sub_100053C00(uint64_t a1, unint64_t a2)
{
  v2 = a2 - 2;
  if (a2 < 2 || *(a1 + v2) || *(a1 + a2 - 1))
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x48uLL, 0x7EBAC0B3uLL);
  if (!v6)
  {
    sub_100053880("out of dynamic memory in yy_scan_buffer()");
  }

  v4 = v6;
  *(v6 + 6) = v2;
  *(v6 + 1) = a1;
  *(v6 + 2) = a1;
  *v6 = 0;
  *(v6 + 4) = v2;
  *(v6 + 5) = 0;
  *(v6 + 12) = 1;
  *(v6 + 60) = 0;
  sub_1000536DC(v6);
  return v4;
}

char *sub_100053CA0(char *a1)
{
  v2 = strlen(a1);

  return sub_100053CDC(a1, v2);
}

char *sub_100053CDC(char *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(a2 + 2, 0x7EBAC0B3uLL);
  if (!v4)
  {
    sub_100053880("out of dynamic memory in yy_scan_bytes()");
  }

  if (a2)
  {
    v5 = v4;
    v6 = a2;
    do
    {
      v7 = *a1++;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  *&v4[a2] = 0;
  result = sub_100053C00(v4, a2 + 2);
  if (!result)
  {
    sub_100053880("bad buffer in yy_scan_bytes()");
  }

  *(result + 10) = 1;
  return result;
}

uint64_t sub_100053DD8()
{
  for (i = qword_10008F2E8; qword_10008F2E8; i = qword_10008F2E8)
  {
    if (!i[qword_10008F2F0])
    {
      break;
    }

    sub_1000534F4(i[qword_10008F2F0]);
    *(qword_10008F2E8 + 8 * qword_10008F2F0) = 0;
    sub_100053B68();
  }

  free(i);
  qword_10008F2E8 = 0;
  qword_10008F2F0 = 0;
  qword_10008F328 = 0;
  qword_10008F308 = 0;
  byte_10008F2E0 = 0;
  dword_10008F2E4 = 0;
  qword_1000900A0 = 0;
  qword_1000900A8 = 0;
  return 0;
}

void sub_100053E7C()
{
  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10006B9CC();
    }
  }

  ++dword_1000900B4;
}

void sub_100053EE4()
{
  if (dword_100090058)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10006B9CC();
    }
  }
}

uint64_t sub_100053F3C(const char *a1)
{
  if (dword_10008F330[0] < 10)
  {
    if (glob(a1, 2048, 0, &dword_10008F330[32 * dword_10008F330[0] + 10]) || (v5 = dword_10008F330[0], v6 = &dword_10008F330[32 * dword_10008F330[0]], !*(v6 + 5)))
    {
      if (dword_100090058)
      {
        v4 = ne_log_obj();
        result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v15 = 136315138;
        v16 = a1;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "glob found no matches for path %s\n", &v15, 0xCu);
      }

      return 0;
    }

    else
    {
      v6[32] = 0;
      v7 = v6 + 32;
      if (qword_10008F2E8)
      {
        v8 = *(qword_10008F2E8 + 8 * qword_10008F2F0);
      }

      else
      {
        v8 = 0;
      }

      v9 = 0;
      v10 = 0;
      *(v6 + 3) = v8;
      LODWORD(v6) = v5 + 1;
      while (1)
      {
        v11 = *(*&dword_10008F330[32 * v5 + 18] + 8 * v9);
        *v7 = v10 + 1;
        dword_10008F330[0] = v6;
        if (!sub_100053570(v11))
        {
          break;
        }

        v6 = dword_10008F330[0];
        v5 = --dword_10008F330[0];
        v12 = &dword_10008F330[32 * (v6 - 1)];
        v13 = v12[32];
        v7 = v12 + 32;
        v10 = v13;
        v9 = v13;
        if (*(v7 - 11) <= v13)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v14 = sub_10005337C(qword_1000900A0, 0x4000);
      sub_1000536DC(v14);
      result = 0;
      dword_10008F2E4 = 3;
    }
  }

  else
  {
    if (dword_100090058)
    {
      v1 = ne_log_obj();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_10006BA48();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_10005410C()
{
  v0 = &dword_100000008;
  do
  {
    v1 = (&dword_10008F330 + v0);
    v1[6] = 0uLL;
    v1[7] = 0uLL;
    v1[4] = 0uLL;
    v1[5] = 0uLL;
    v1[2] = 0uLL;
    v1[3] = 0uLL;
    v0 += 128;
    *v1 = 0uLL;
    v1[1] = 0uLL;
  }

  while (v0 != 1288);
  dword_10008F330 = 0;
}

void sub_100054148()
{
  v0 = &qword_10008F338;
  v1 = 10;
  do
  {
    if (*v0)
    {
      fclose(v0[1]);
      free(*v0);
      *v0 = 0;
    }

    v0 += 16;
    --v1;
  }

  while (v1);
}

void sub_1000541BC(int *a1@<X8>)
{
  v1 = &a1[32 * *a1];
  v2 = *(v1 + 1);
  v3 = v1[8];
}

void sub_100054314(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DC8(&_mh_execute_header, v1, v2, "hash(%s)\n", v3, v4, v5, v6, v7);
}

void sub_10005437C(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DC8(&_mh_execute_header, v1, v2, "hmac(%s)\n", v3, v4, v5, v6, v7);
}

void sub_1000543E4(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DC8(&_mh_execute_header, v1, v2, "encryption(%s)\n", v3, v4, v5, v6, v7);
}

void sub_1000546B8(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "crypto_cssm_check_x509cert";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: checking chain of %d certificates.\n", &v2, 0x12u);
}

void sub_1000548E4(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "eval result unknown: value = %d.\n", v3, 8u);
}

void sub_1000549C8()
{
  sub_100003248();
  sub_100002AF8(v0);
  sub_1000031F4();
  sub_100003228(&_mh_execute_header, v1, v2, "EvaluateCert error %d %s.\n", v3, v4, v5, v6, v7);
}

void sub_100054A74()
{
  sub_100003248();
  sub_100002AF8(v0);
  sub_1000031F4();
  sub_100003228(&_mh_execute_header, v1, v2, "check_x509cert error %d %s.\n", v3, v4, v5, v6, v7);
}

void sub_100054AEC()
{
  sub_100003248();
  sub_100002AF8(v0);
  sub_1000031F4();
  sub_100003228(&_mh_execute_header, v1, v2, "getsign error %d %s.\n", v3, v4, v5, v6, v7);
}

void sub_100054B64()
{
  sub_100003248();
  sub_100002AF8(v0);
  sub_1000031F4();
  sub_100003228(&_mh_execute_header, v1, v2, "get_x509cert error %d %s.\n", v3, v4, v5, v6, v7);
}

void sub_100054BDC(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "getifaddrs failed: %s\n", &v4, 0xCu);
}

void sub_100054C70(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to put IPv6 socket in non-blocking mode\n", buf, 2u);
}

void sub_100054CB0(_DWORD *a1, char **a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  *a1 = 136315138;
  *a2 = v5;
  sub_1000054F8(&_mh_execute_header, v6, v7, "ioctl(SIOCGIFAFLAG_IN6) failed:%s\n");
}

void sub_100054D10(_DWORD *a1, char **a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  *a1 = 136315138;
  *a2 = v5;
  sub_1000054F8(&_mh_execute_header, v6, v7, "socket(SOCK_DGRAM) failed:%s\n");
}

void sub_100054EDC()
{
  sub_100001224();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100054F8C(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 1);
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unsupported AF %d\n", buf, 8u);
}

void sub_100054FE0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 1);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "no socket matches address family %d\n", v3, 8u);
}

void sub_10005505C(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_1000054EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000550D4()
{
  sub_100001224();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055110()
{
  v0 = __error();
  strerror(*v0);
  sub_100005518(&_mh_execute_header, v1, v2, "read(PF_ROUTE) failed: %s\n", v3, v4, v5, v6, 2u);
}

void sub_100055194()
{
  sub_100001224();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000551D0()
{
  sub_100001224();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005520C()
{
  v0 = __error();
  strerror(*v0);
  sub_100005518(&_mh_execute_header, v1, v2, "socket(PF_ROUTE) failed: %s", v3, v4, v5, v6, 2u);
}

void sub_1000552C4(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_100008348();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005534C(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_100008348();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000553D4(uint8_t *a1, uint64_t a2, uint64_t **a3)
{
  v5 = sub_10003A5E8(*(a2 + 56));
  *a1 = 136315138;
  *a3 = v5;
  sub_100008348();
  _os_log_debug_impl(v6, v7, v8, v9, a1, 0xCu);
}

void sub_10005543C(uint8_t *a1, uint64_t a2, uint64_t **a3)
{
  v5 = sub_10003A5E8(*(a2 + 48));
  *a1 = 136315138;
  *a3 = v5;
  sub_100008348();
  _os_log_debug_impl(v6, v7, v8, v9, a1, 0xCu);
}

void sub_100055574(int *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = **(a2 + 24);
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100055644(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "already responded within the past %ld secs\n", &v2, 0xCu);
}

void sub_100055758(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 1);
  v3 = *(a2 + 28);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_100055808(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 1);
  v3 = *(a2 + 16);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_1000558BC(uint64_t a1)
{
  sub_10003C560(*(*a1 + 48));
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100055944()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055980()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000559F0()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100055A60()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055A9C(unsigned __int8 *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2 - 8;
  sub_10000F9C0();
  sub_100008320();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100055B24(int *a1)
{
  v6 = *a1;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100055BAC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055BE8(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100055C58()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100055CC8(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100055D38(unsigned __int8 *a1)
{
  v7 = a1[4];
  sub_10003BE54(a1[5]);
  v8 = a1[6];
  v9 = a1[7];
  sub_10000FA3C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void sub_100055DF8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 4);
  sub_10003C080(*(a2 + 5), *(a1 + 5));
  sub_10000FA3C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100055EC4(_BYTE *a1, _BYTE *a2)
{
  sub_10000F988(a1, a2);
  sub_10000F9B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100055EF8()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100055F68()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100055FA4()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056014(_BYTE *a1, _BYTE *a2)
{
  sub_10000F988(a1, a2);
  sub_10000F9B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100056048()
{
  sub_10000FA08();
  sub_100008320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000560B8()
{
  sub_10000FA08();
  sub_100008320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100056128(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005619C(unsigned __int16 *a1)
{
  v1 = bswap32(*a1);
  sub_10000F9C0();
  sub_10000F9A4();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10005621C()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005628C(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000563B8(_BYTE *a1, _BYTE *a2)
{
  sub_10000F988(a1, a2);
  sub_10000F9B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1000563EC(_BYTE *a1, _BYTE *a2)
{
  sub_10000F988(a1, a2);
  sub_10000F9B4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100056420()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005645C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056498()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000564D4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056510(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  v2 = *(v1 + 5);
  v4 = *(*v3 + 5);
  sub_10000F9C0();
  sub_100008320();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xEu);
}

void sub_100056598()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000565D4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056610()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005664C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056688()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000566C4()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056734()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000567A4()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056890()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056900()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056970()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000569E0()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056A50(int a1)
{
  sub_10003C560(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "auth method %s isn't supported.\n", v3, v4, v5, v6, v7);
}

void sub_100056AC8()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056B38()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056BA8()
{
  sub_10000F998();
  sub_10000F9A4();
  sub_100008320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100056C1C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056C8C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056D7C()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100056DEC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056E28()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100056E98()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056F00()
{
  sub_10000F998();
  sub_10000F9A4();
  sub_100008320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100056F74()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056FB0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056FEC()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005705C(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_100008320();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_1000570E0()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057150()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000571B8()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000571F4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057230()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000572A0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000572DC()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000573C8()
{
  sub_10000F998();
  sub_10000F9A4();
  sub_100008320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10005743C()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000574AC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000574E8()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057524()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057560(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000575D4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057610()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057680(uint64_t a1)
{
  v1 = *(*a1 + 1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100057730(unsigned __int8 *a1)
{
  sub_10003C390(*a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "Expecting IP address type in main mode, but %s.\n", v3, v4, v5, v6, v7);
}

void sub_1000577AC(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100057820()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005785C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057898()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000578D4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057910()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005794C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057988()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000579FC(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100057A6C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057AA8(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100057B18()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057B54()
{
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100057BDC()
{
  sub_100001DF0();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100057C64(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "failed to get ID for %s\n", v3, v4, v5, v6, v7);
}

void sub_100057CDC(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100057D50()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100057DC0(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100057E30()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057E6C(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100057EDC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057F18(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100057F88()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100057FC4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058000()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005803C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058078()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000580B4(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_10000F9A4();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10005812C(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  sub_100001DF0();
  sub_100008320();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10005823C(uint64_t a1)
{
  v1 = bswap32(*(a1 + 2));
  sub_10000F9C0();
  sub_10000F9A4();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_1000582BC()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005832C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005839C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005840C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005847C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_100058578()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000585E8()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100058658()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000586C8()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100058738(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000588AC(uint64_t a1, NSObject *a2)
{
  sub_10003C560(*(*(*a1 + 248) + 48));
  sub_10000FA58();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "authmethod is %s\n", v3, 0xCu);
}

void sub_100058A78(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100012904();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100058E88(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005900C(const sockaddr **a1)
{
  sub_100012918(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "NAT-D hashing failed for %s\n", v3, v4, v5, v6, v7);
}

void sub_1000591B8(uint64_t a1)
{
  sub_10003A958(*(a1 + 48));
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "couldn't find the Hybrid pskey for %s.\n", v3, v4, v5, v6, v7);
}

void sub_100059268(uint8_t *a1, unsigned __int8 *a2, char **a3, NSObject *a4)
{
  v7 = sub_10003BCF8(*a2);
  *a1 = 136315138;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "received payload of type %s\n", a1, 0xCu);
}

void sub_100059C64(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "remote supports FRAGMENTATION\n", buf, 2u);
}

void sub_100059CA4(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100059E64(uint64_t a1)
{
  sub_1000168C4(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100059F08(uint64_t a1)
{
  sub_1000168C4(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005A07C(uint64_t a1)
{
  sub_1000168C4(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005A400(uint8_t *buf, unsigned int *a2, unsigned int *a3, os_log_t log)
{
  v4 = bswap32(*a2);
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "delete payload with invalid doi:%d.\n", buf, 8u);
}

void sub_10005A518()
{
  sub_10001A2E8();
  v1 = sub_10003BC84(v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "Unhandled notify message %s, no Phase 2 handle found.\n");
}

void sub_10005A568()
{
  sub_10001A2E8();
  v1 = sub_10003BC84(v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "Fatal %s notify messsage, Phase 2 should be deleted.\n");
}

void sub_10005A5B8()
{
  sub_10001A2E8();
  v1 = sub_10003BC84(v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "Fatal %s notify messsage, Phase 1 should be deleted.\n");
}

void sub_10005A6A0()
{
  sub_10001A2E8();
  v1 = sub_10003BCF8(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "reject the packet, received unexpected payload type %s.\n");
}

void sub_10005A6F0(int a1, uint64_t a2)
{
  sub_10003BCF8(a1);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_10005A860(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 1);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "invalid family: %d\n", v3, 8u);
}

void sub_10005AA4C()
{
  v0 = ipsec_strerror();
  sub_10001A310(v0, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v1, v2, "pfkey_check (%s)\n");
}

void sub_10005AAA0(unsigned __int16 *a1)
{
  sub_10001A32C(a1);
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005AD28(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_10001EBB4();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_10005ADA0(uint64_t a1, const sockaddr *a2)
{
  v2 = sub_10001EB74(a1, a2);
  sub_10001A310(v2, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v3, v4, "initiator rcvd NAT-OA r: %s\n");
}

void sub_10005ADE8(uint64_t a1, const sockaddr *a2)
{
  v2 = sub_10001EB74(a1, a2);
  sub_10001A310(v2, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v3, v4, "initiaor rcvd NAT-OA i: %s\n");
}

void sub_10005AECC(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005AF74(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ignored, multiple SA isn't supported.\n", buf, 2u);
}

void sub_10005B050(uint64_t **a1, unsigned int *a2, os_log_t log)
{
  v3 = **a1;
  v4 = bswap32(*a2);
  v5 = 134218240;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "invalid length (%lu,%d) while getting hash buffer.\n", &v5, 0x12u);
}

void sub_10005B3F4(uint64_t a1, const sockaddr *a2)
{
  v2 = sub_10001EB74(a1, a2);
  sub_10001A310(v2, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v3, v4, "responder rcvd NAT-OA r: %s\n");
}

void sub_10005B43C(uint64_t a1, const sockaddr *a2)
{
  v2 = sub_10001EB74(a1, a2);
  sub_10001A310(v2, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v3, v4, "responder rcvd NAT-OA i: %s\n");
}

void sub_10005B484(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IDr2 payload is not immediatelly followed by IDi2. We allowed.\n", buf, 2u);
}

void sub_10005B5FC(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005B80C(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005B984(uint64_t **a1)
{
  sub_100038374(*a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005BE4C(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "get_proposal_r_remote";
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: ignore_id %x.\n", &v2, 0x12u);
}

void sub_10005BF74(uint64_t a1, unsigned __int16 *a2)
{
  sub_10003A5E8((a1 + 8));
  v4 = *(a1 + 264);
  v5 = *a2;
  sub_10001EB94();
  sub_10000FA3C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x18u);
}

void sub_10005C010(uint64_t a1, unsigned __int16 *a2)
{
  sub_10003A5E8((a1 + 136));
  v4 = *(a1 + 265);
  v5 = *a2;
  sub_10001EB94();
  sub_10000FA3C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x18u);
}

void sub_10005C0AC(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005C12C(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "policy found, but no IPsec required: %s\n", v3, v4, v5, v6, v7);
}

void sub_10005C1D8(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "no policy found: %s\n", v3, v4, v5, v6, v7);
}

void sub_10005C284(uint64_t *a1)
{
  v6 = *a1;
  sub_100008320();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10005C33C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005C3B0()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005C420()
{
  sub_10000FA58();
  sub_100008320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10005C49C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005C524(unsigned int *a1)
{
  v1 = bswap32(*a1);
  sub_10000F9C0();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005C5D4()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005C654()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005C784(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005C894(unsigned __int8 *a1, const sockaddr *a2)
{
  v2 = *a1;
  sub_10003A5E8(a2);
  sub_1000031F4();
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10005C950(uint64_t a1)
{
  sub_100021944(a1, *(a1 + 84));
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005C9E0(unsigned int *a1, uint64_t a2)
{
  sub_100021944(a2, *a1);
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005CAE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  sub_10003BC10(*a1);
  sub_10003BC10(*a2);
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10005CB8C(unsigned __int8 *a1, const sockaddr *a2)
{
  v2 = *a1;
  sub_10003A5E8(a2);
  sub_1000031F4();
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10005CC7C(uint64_t a1)
{
  sub_100025A94(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10005CE58(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to put socket in non-blocking mode\n", buf, 2u);
}

void sub_10005CE98()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "setsockopt IPV6_BOUND_IF (%s)\n");
}

void sub_10005CEEC()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "setsockopt IP_BOUND_IF (%s)\n");
}

void sub_10005CF40()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "setsockopt IP_RECVDSTADDR (%s)\n");
}

void sub_10005CFC8(uint64_t a1, const sockaddr **a2)
{
  v2 = sub_10003A5E8(*a2);
  sub_10001A310(v2, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v3, v4, "failed to bind to address %s: can't read interface address flags.\n");
}

void sub_10005D020()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "setsockopt (%s)\n");
}

void sub_10005D074()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "setsockopt SO_REUSEPORT (%s)\n");
}

void sub_10005D0C8()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "setsockopt SO_REUSEADDR (%s)\n");
}

void sub_10005D11C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005D1A4()
{
  sub_100025A78();
  v0 = __error();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v2, v3, "socket (%s)\n");
}

void sub_10005D1F8(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  v3 = *(qword_1000900B8 + 24);
  *buf = 67109120;
  *a2 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unsupported address family %d\n", buf, 8u);
}

void sub_10005D320(uint64_t a1)
{
  sub_100021944(a1, *(a1 + 84));
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005D3B0(uint64_t a1)
{
  sub_100021944(a1, *(a1 + 84));
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005D440(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_10003A958(v1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005D4C0(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_100021944(v1, *(v2 + 108));
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D550(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_100021944(v1, *(v2 + 108));
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D5E0(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_100021944(v1, *(v2 + 108));
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D6D8(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_10003A958(v1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005D78C(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_10003A958(v1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005D8DC(uint64_t a1)
{
  sub_10003A5E8(*(a1 + 56));
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005D960(uint64_t a1)
{
  sub_10003A5E8(*(a1 + 48));
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005DA18(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_10003A5E8(v1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005DA98(uint64_t a1)
{
  sub_10003A5E8(*(a1 + 8));
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005DB50(uint64_t a1)
{
  v1 = sub_100025A88(a1);
  sub_10003A5E8(v1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005DBD0(uint64_t a1)
{
  sub_10002D834(*(a1 + 8), *a1, *(a1 + 104), 0, 0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005DC98(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10000F9C0();
  sub_100008320();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xEu);
}

void sub_10005DDC4(unsigned __int16 *a1)
{
  v1 = bswap32(*a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005DE40(uint64_t *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218240;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "add payload of len %zu, next type %d\n", &v4, 0x12u);
}

void sub_10005DECC()
{
  sub_100025A78();
  v0 = ipsec_strerror();
  sub_10001A310(v0, 4.8149e-34);
  sub_1000054F8(&_mh_execute_header, v1, v2, "pfkey_check (%s)\n");
}

void sub_10005DF18()
{
  sub_100025A78();
  sub_10003A5E8((v2 + 8));
  v3 = *(v1 + 264);
  v4 = *v0;
  sub_10000FA58();
  sub_100025AA4();
  sub_10000FA3C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x18u);
}

void sub_10005DFB0()
{
  sub_100025A78();
  sub_10003A5E8((v2 + 136));
  v3 = *(v1 + 265);
  v4 = *v0;
  sub_10000FA58();
  sub_100025AA4();
  sub_10000FA3C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x18u);
}

void sub_10005E118(unsigned __int8 a1)
{
  sub_10003BC10(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10005E358(os_log_t log)
{
  v1 = *(qword_1000900B8 + 144);
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to open pre_share_key file %s\n", &v2, 0xCu);
}

void sub_10005E414(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "filename: %s\n", &v2, 0xCu);
}

void sub_10005E4E0(int *a1)
{
  v1 = *a1;
  v2 = __error();
  v3 = strerror(*v2);
  errx(1, "couldn't set net.inet.ipsec.esp_port to %d. (%s)", v1, v3);
}

void sub_10005E5B4(NSObject *a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "failed to exec racoon. (%s)", &v4, 0xCu);
}

void sub_10005E648()
{
  v0 = __error();
  v1 = strerror(*v0);
  errx(1, "failed to be daemon. (%s)", v1);
}

void sub_10005E6FC(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  v2 = **v1;
  sub_10002C11C();
  sub_100008320();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10005E844(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005E9F0(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005EA64()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005EAD4()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005EB44()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005EBB4()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005ED28(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *(v1 + 48);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005EDD0(uint64_t a1)
{
  sub_10003C560(*(*a1 + 48));
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "not supported authmethod type %s\n", v3, v4, v5, v6, v7);
}

void sub_10005EEB8(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *(v1 + 108);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005EF2C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005F0A0(int a1)
{
  sub_100002AF8(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "error verifying signature %s\n", v3, v4, v5, v6, v7);
}

void sub_10005F180(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10005F290(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *(v1 + 48);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005F3A0(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *(v1 + 104);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005F414(unsigned int *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_10002C134(&_mh_execute_header, v2, v3, "done with chking cert status %d\n", v4, v5, v6, v7, v8);
}

void sub_10005F66C()
{
  sub_10003C390(3);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v0, v1, "subjectAltName (expected type %s):\n", v2, v3, v4, v5, v6);
}

void sub_10005F784()
{
  sub_10003C390(2);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v0, v1, "subjectAltName (expected type %s):\n", v2, v3, v4, v5, v6);
}

void sub_10005F834(int a1)
{
  sub_10003C390(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "subjectAltName (expected type %s):\n", v3, v4, v5, v6, v7);
}

void sub_10005F948()
{
  sub_10003C390(9);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v0, v1, "subjectName (type %s):\n", v2, v3, v4, v5, v6);
}

void sub_10005F9C4(int a1)
{
  sub_10003C390(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "Impropper ID type passed: %s.\n", v3, v4, v5, v6, v7);
}

void sub_10005FA3C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FB7C()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10005FC54(uint64_t a1)
{
  sub_10003BB9C(*(*a1 + 104));
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "create my CR: %s\n", v3, v4, v5, v6, v7);
}

void sub_10005FCD4(uint64_t a1)
{
  sub_10003BB9C(*(*a1 + 112));
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "create my CR: NONE, using %s instead\n", v3, v4, v5, v6, v7);
}

void sub_10005FD88(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *v1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005FE30(const sockaddr **a1)
{
  sub_10003A958(*a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "couldn't find the pskey by address %s.\n", v3, v4, v5, v6, v7);
}

void sub_10005FEE0(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *(v1 + 48);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_10005FFBC(uint64_t a1)
{
  sub_10003A958(*(a1 + 48));
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "couldn't find the pskey for %s.\n", v3, v4, v5, v6, v7);
}

void sub_100060038(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  v2 = *v1;
  v4 = **v3;
  sub_10002C11C();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "len(SKEYID_e) < len(Ka) (%zu < %zu), generating long key (Ka = K1 | K2 | ...)\n", v6, 0x16u);
}

void sub_1000600BC(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  v2 = *v1;
  sub_10002C11C();
  sub_100008320();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100060164(uint64_t *a1)
{
  sub_10002C110(a1);
  v2 = *(v1 + 52);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_1000601D8(uint64_t *a1)
{
  sub_100001DE4(a1, __stack_chk_guard);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100060290()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "vdup (%s)\n", v3, v4, v5, v6, v7);
}

void sub_100060310(uint64_t a1)
{
  sub_10002C100(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100060524(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100060648(uint64_t a1)
{
  sub_10002C100(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100060824(uint64_t a1)
{
  sub_10002C100(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000608C8()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100060948()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000609C8()
{
  sub_1000313F4();
  sub_10003C958(*v1);
  strerror(*v0);
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100060A70(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100060AE0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100060B9C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100060C58()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100060C94()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100060D14()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100060D94(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *&byte_100089050[16 * a2 + 8];
  *buf = 136315138;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "call pfkey_send_register for %s\n", buf, 0xCu);
}

void sub_100060DF0()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100060E70()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100060EAC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100060EE8()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100060F68()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100060FD8()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061048()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000610B8()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000610F4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061130()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000611A0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000611DC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061218()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061288()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061374()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000613E4(uint64_t a1)
{
  sub_10003A958(*(a1 + 8));
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100061468()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000614A4(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100061514(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "call pfkey_send_getspi\n", buf, 2u);
}

void sub_100061554()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000615D4(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100061644()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061680(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000616F0()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100061770(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000617E0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006181C()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006189C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006190C()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006198C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000619FC()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100061AB0()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100061C30()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100061CB0()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100061D20()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061D5C(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100061DCC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "becoming tlen < 0\n", buf, 2u);
}

void sub_100061E0C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061E48()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061E84(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100061EF4(unsigned __int16 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100061F68()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061FA4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061FE0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006201C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062058()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062094()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000620D0()
{
  sub_1000313F4();
  sub_100031400(v1);
  v2 = *v0;
  sub_1000313DC();
  sub_10000FA3C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100062150(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000621C4(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100062234()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062270(uint64_t a1)
{
  sub_10003A958(*(a1 + 8));
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000622F4(uint64_t a1)
{
  sub_10003A958(*(a1 + 8));
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062378(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000623E8(unsigned int *a1, uint64_t a2)
{
  sub_100031418(a1, a2);
  sub_1000031F4();
  sub_10000FA3C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100062464()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000624A0()
{
  sub_10000F998();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100062510(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100062580()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000625BC(unsigned int *a1, uint64_t a2)
{
  sub_100031418(a1, a2);
  sub_1000031F4();
  sub_10000FA3C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100062638()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062674()
{
  sub_10000F998();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000626E4(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062764(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000627E4(uint64_t a1)
{
  sub_100031400(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062860()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000628D0(const sockaddr *a1)
{
  sub_10003A958(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062984(uint64_t a1)
{
  sub_1000330F8((a1 + 16));
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062A08(uint64_t a1)
{
  sub_1000330F8((a1 + 16));
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062A8C(uint64_t a1)
{
  v1 = *(a1 + 61);
  sub_10000F9C0();
  sub_1000054EC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100062B00(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062B80()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062BBC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062BF8()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062C34(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062CB4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062CF0(const sockaddr *a1)
{
  sub_10003A958(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062D70(unsigned int *a1)
{
  sub_1000128F8(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100062DE0(const sockaddr *a1)
{
  sub_10003A958(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062E60()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062E9C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062ED8()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062F14()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062F50(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100062FD0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006300C(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006308C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000630C8(unsigned __int8 *a1)
{
  sub_1000330F8(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100063148()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063184()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000631C0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000631FC()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063238()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063274(uint64_t a1)
{
  sub_100031400(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000632F0(uint64_t a1)
{
  sub_100031400(a1);
  sub_10000FA58();
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006336C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100063510(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
}

void sub_10006358C(uint64_t *a1)
{
  v6 = *a1;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100063604(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s", &v3, 0xCu);
}

void sub_1000636C0()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000637E4()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000638C8(os_log_t log)
{
  v1 = 136315138;
  v2 = "getsp_r";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, outbound policy outer addresses matched Phase 2 addresses\n", &v1, 0xCu);
}

void sub_10006394C(os_log_t log)
{
  v1 = 136315138;
  v2 = "getsp_r";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s, inbound policy outer addresses matched Phase 2 addresses\n", &v1, 0xCu);
}

void sub_1000639D0()
{
  sub_10001A2E8();
  v1 = sub_10003A5E8(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v2, v3, "src1: %s\n");
}

void sub_100063A20()
{
  sub_10001A2E8();
  v1 = sub_10003A5E8(v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v2, v3, "src2: %s\n");
}

void sub_100063A70()
{
  sub_10001A2E8();
  v1 = sub_10003A5E8(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v2, v3, "dst1: %s\n");
}

void sub_100063AC0()
{
  sub_10001A2E8();
  v1 = sub_10003A5E8((v0 + 136));
  sub_10001A310(v1, 4.8149e-34);
  sub_10001EB54(&_mh_execute_header, v2, v3, "dst2: %s\n");
}

void sub_100063B54(unsigned __int8 *a1, unsigned __int8 *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unexpected error: src.ss_len:%d dst.ss_len:%d\n", v5, 0xEu);
}

void sub_100063BE4(uint64_t *a1, uint64_t *a2)
{
  sub_100035F80(a1, a2, __stack_chk_guard);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100063C54(unsigned int *a1, unsigned int *a2)
{
  sub_100035F64(a1, a2, __stack_chk_guard);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100063CC4(unsigned int *a1, unsigned int *a2)
{
  sub_100035F64(a1, a2, __stack_chk_guard);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100063D34(unsigned int *a1, unsigned int *a2)
{
  sub_100035F64(a1, a2, __stack_chk_guard);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100063DA4(uint64_t *a1, uint64_t *a2)
{
  sub_100035F80(a1, a2, __stack_chk_guard);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100063E14(int *a1, int *a2)
{
  sub_10003BE54(*a1);
  sub_10003BE54(*a2);
  sub_100035E80();
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100063EB0(uint64_t *a1, uint64_t *a2)
{
  sub_100035F80(a1, a2, __stack_chk_guard);
  sub_100008330();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100063F20(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "IPComp SPI size promoted from 16bit to 32bit\n", buf, 2u);
}

void sub_100063F60(int *a1, int *a2)
{
  sub_10003C210(*a1);
  sub_10003C210(*a2);
  sub_100035E80();
  sub_10001A31C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000640CC(unsigned int *a1, unsigned int *a2)
{
  sub_10003C2F8(5, *a1);
  sub_10003C2F8(5, *a2);
  sub_100035E80();
  sub_100035F58();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_1000643DC()
{
  sub_100003248();
  sub_10003BE54(*v1);
  sub_100035F2C();
  v3 = *(v0 + 48);
  v2 = *(v0 + 52);
  sub_100035E98();
  sub_100035F58();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x3Cu);
}

void sub_10006447C()
{
  sub_100003248();
  sub_10003BE54(*v1);
  sub_100035F2C();
  v3 = *(v0 + 48);
  v2 = *(v0 + 52);
  sub_100035E98();
  sub_10001A31C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Cu);
}

void sub_100064518()
{
  sub_100003248();
  sub_10003BE54(*v1);
  sub_100035F2C();
  v3 = *(v0 + 48);
  v2 = *(v0 + 52);
  sub_100035E98();
  sub_100035F58();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x3Cu);
}

void sub_1000645B8(uint64_t a1)
{
  sub_100035F74(a1);
  sub_10003C080(4, v1);
  sub_100035F58();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void sub_100064644(uint64_t a1)
{
  sub_100035F74(a1);
  sub_10003C080(4, v1);
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000646CC(uint64_t a1)
{
  sub_100035F74(a1);
  sub_10003C080(4, v1);
  sub_100035F58();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_100064758()
{
  sub_100003248();
  sub_100035F90(v0);
  sub_100035FC8();
  sub_100035F08();
  sub_100035F58();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x1Cu);
}

void sub_1000647E4()
{
  sub_100003248();
  sub_100035F90(v0);
  sub_100035FC8();
  sub_100035F08();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10006486C()
{
  sub_100003248();
  sub_100035F90(v0);
  sub_100035FC8();
  sub_100035F08();
  sub_100035F58();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x1Cu);
}

void sub_1000648F8()
{
  sub_100003248();
  sub_100035F74(v0);
  sub_10003C080(2, v1);
  sub_100035FE4();
  sub_100035E80();
  sub_100035F58();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void sub_10006498C()
{
  sub_100003248();
  sub_100035F74(v0);
  sub_10003C080(2, v1);
  sub_100035FE4();
  sub_100035E80();
  sub_10001A31C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100064A1C()
{
  sub_100003248();
  sub_100035F74(v0);
  sub_10003C080(2, v1);
  sub_100035FE4();
  sub_100035E80();
  sub_100035F58();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_100064AB0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "(unknown proto_id %d)\n", v2, 8u);
}

void sub_100064B94(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "(unknown proto_id %d)\n", v2, 8u);
}

void sub_100064C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  sub_100035EE0();
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s%p: next=%p tnext=%p\n", v5, 0x2Au);
}

void sub_100064C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  sub_100035EE0();
  sub_100008320();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_100064CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  sub_100035EE0();
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "%s%p: next=%p tnext=%p\n", v5, 0x2Au);
}

void sub_100064DAC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "pp_peer is inconsistency, ignore it.\n", buf, 2u);
}

void sub_100064F40(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "invalid ip address family: %d\n", v3, 8u);
}

void sub_100064FBC(const sockaddr *a1, NSObject *a2)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Remote configuration for '%s' not found!\n", v3, 0xCu);
}

void sub_100065088(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s has invalid owner uid\n", &v2, 0xCu);
}

void sub_100065100(uint64_t a1, _WORD *a2, os_log_t log)
{
  v3 = *a2 & 0xF000;
  v4 = 136315394;
  v5 = a1;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s is an invalid file type 0x%x\n", &v4, 0x12u);
}

void sub_100065190(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s has weak file permission\n", &v2, 0xCu);
}

void sub_100065278(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "getsainfo_by_dst_id - sainfo id = anonymous\n", buf, 2u);
}

void sub_1000652B8(unsigned __int8 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to swap launchd keepalive integer %d\n", v2, 8u);
}

void sub_1000653F0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "getsockname (%s)\n", v3, v4, v5, v6, v7);
}

void sub_100065470()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "connect (%s)\n", v3, v4, v5, v6, v7);
}

void sub_1000654F0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "socket (%s)\n", v3, v4, v5, v6, v7);
}

void sub_1000655A4()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "setsockopt IP_IPSEC_POLICY (%s)\n", v3, v4, v5, v6, v7);
}

void sub_100065624()
{
  ipsec_strerror();
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v0, v1, "ipsec_set_policy (%s)\n", v2, v3, v4, v5, v6);
}

void sub_100065710()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "recvmsg (%s)\n", v3, v4, v5, v6, v7);
}

void sub_1000657C4(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_100035F58();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void sub_100065854(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_100035F58();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void sub_1000658E4(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_100035F58();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void sub_1000659A8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "bind 1 (%s)\n", v3, v4, v5, v6, v7);
}

void sub_100065A28()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "setsockopt IPV6_USE_MIN_MTU (%s)\n", v3, v4, v5, v6, v7);
}

void sub_100065AA8()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "setsockopt SO_REUSEPORT (%s)\n", v3, v4, v5, v6, v7);
}

void sub_100065B28()
{
  v2 = sub_10003B474();
  v3 = strerror(*v2);
  *v1 = 136315138;
  *v0 = v3;
  sub_1000054F8(&_mh_execute_header, v4, v5, "sendto (%s)\n");
}

void sub_100065B7C()
{
  v2 = sub_10003B474();
  v3 = strerror(*v2);
  *v1 = 136315138;
  *v0 = v3;
  sub_1000054F8(&_mh_execute_header, v4, v5, "treating socket error (%s) like packet loss\n");
}

void sub_100065BD0(uint64_t a1)
{
  sub_10003A5E8(a1);
  v2 = *(a1 + 24);
  sub_10003B490();
  sub_100035F58();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x12u);
}

void sub_100065C68(uint64_t a1)
{
  sub_10003A5E8(a1);
  v2 = *(a1 + 24);
  sub_10003B490();
  sub_100035F58();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x12u);
}

void sub_100065D00()
{
  v2 = sub_10003B474();
  v3 = strerror(*v2);
  *v1 = 136315138;
  *v0 = v3;
  sub_1000054F8(&_mh_execute_header, v4, v5, "sendmsg (%s)\n");
}

void sub_100065D54()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "%s\n", v3, v4, v5, v6, v7);
}

void sub_100065DD4(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unexpected inconsistency: %d %zu\n", v4, 0x12u);
}

void sub_100065E5C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100065ED0()
{
  sub_10000FA58();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Call with null args: naddr=%p, saddr=%p\n", v2, 0x16u);
}

void sub_100065F54(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_10006600C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "unable to hash vendor ID string\n", buf, 2u);
}

void sub_100066090(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "invalid vendor ID index: %d\n", v2, 8u);
}

void sub_10006614C(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000661BC(int a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = sub_10003CF98(a1);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "unsupported NAT-T version: %s\n", &v3, 0xCu);
}

void sub_100066248()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100066284(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000662F4()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100066330(unsigned __int8 *a1)
{
  sub_10000FA4C(a1);
  sub_10000F9C0();
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000663A0()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100066548(unsigned __int16 *a1)
{
  v6 = bswap32(*a1) >> 16;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000665C8(int a1)
{
  sub_10003BD6C(a1);
  sub_100043340();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10006664C()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006674C()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000667BC(_DWORD *a1, __int16 a2, char **a3)
{
  v5 = sub_10003BD6C(a2 & 0x7FFF);
  *a1 = 136315138;
  *a3 = v5;
  sub_10001EB54(&_mh_execute_header, v6, v7, "Attribute %s\n");
}

void sub_100066818(_DWORD *a1, int a2, char **a3)
{
  v5 = sub_10003BD6C(a2);
  *a1 = 136315138;
  *a3 = v5;
  sub_10001EB54(&_mh_execute_header, v6, v7, "Unexpected SET attribute %s\n");
}

void sub_100066874()
{
  sub_10000F96C();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100066980(uint64_t a1)
{
  v6 = *(*a1 + 1);
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100066BDC(int a1, int a2, os_log_t log)
{
  v3 = 134218496;
  v4 = qword_100090C68;
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "resize pool from %zu to %d impossible port %d is in use\n", &v3, 0x18u);
}

void sub_100066C74()
{
  v0 = __error();
  strerror(*v0);
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100066D2C(int a1, uint64_t a2)
{
  sub_10003BD6C(a1);
  v8 = bswap32(*(a2 + 2)) >> 16;
  sub_10000FA3C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100066DCC(int a1)
{
  sub_10003BD6C(a1);
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100066F58(int a1)
{
  sub_10003BD6C(a1);
  sub_10000FA3C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006705C(unsigned __int16 *a1, NSObject *a2)
{
  v2 = bswap32(*a1) >> 16;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "unity_pfs = %x\n", v3, 8u);
}

void sub_1000670E0(int *a1)
{
  v6 = *a1;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000671C0(int *a1)
{
  v6 = *a1;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000672A0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Throttling in action for %s: delay %lds\n", &v3, 0x16u);
}

void sub_1000673C4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unknown group auth source\n", buf, 2u);
}

void sub_10006757C(uint64_t a1)
{
  v6 = *(**(*a1 + 272) + 8);
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100067634(unsigned __int16 *a1)
{
  v6 = bswap32(*a1) >> 16;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100067820()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006785C()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000678E4()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006796C()
{
  sub_100047A60();
  sub_100047A80();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000679E0()
{
  sub_100047A60();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067A58()
{
  sub_100047A60();
  sub_100047A80();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067ACC()
{
  sub_100047A60();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067B44()
{
  sub_100047A60();
  sub_100047A80();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067BB8()
{
  sub_100047A60();
  sub_100047A80();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067C2C()
{
  sub_100047A60();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067CA4(unsigned __int16 *a1)
{
  v1 = bswap32(*a1);
  sub_100047A8C();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100067D24()
{
  sub_100047A60();
  sub_100047A80();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067D98()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100067DD4()
{
  sub_100047A60();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067E4C()
{
  sub_100047A60();
  sub_100047A80();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067EC0(unsigned __int16 *a1)
{
  v1 = bswap32(*a1);
  sub_100047A8C();
  sub_100008320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100067F40()
{
  sub_100047A60();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100067FB8(unsigned __int16 *a1)
{
  v6 = bswap32(*a1) >> 16;
  sub_100001DFC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100068038()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000680C0()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100068148()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068184()
{
  sub_100047A60();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000681FC()
{
  v0 = sub_10003B474();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_100047A74();
  sub_100047ACC(v2, v3, v4, v5);
}

void sub_100068250()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068328()
{
  v0 = sub_10003B474();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_100047A74();
  sub_100047ACC(v2, v3, v4, v5);
}

void sub_10006837C()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000683B8()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000683F4()
{
  v0 = sub_10003B474();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_100047A74();
  sub_100047ACC(v2, v3, v4, v5);
}

void sub_100068448()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068484()
{
  v0 = sub_10003B474();
  v1 = strerror(*v0);
  sub_10001A310(v1, 4.8149e-34);
  sub_100047A74();
  sub_100047ACC(v2, v3, v4, v5);
}

void sub_1000684D8(int a1)
{
  strerror(a1);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100068558()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068594()
{
  v0 = __error();
  strerror(*v0);
  sub_100047AB8();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100068628()
{
  v0 = __error();
  strerror(*v0);
  sub_100047AA4();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void sub_1000686E8()
{
  v0 = __error();
  strerror(*v0);
  sub_100047AA4();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_100068790()
{
  v0 = __error();
  strerror(*v0);
  sub_100047AB8();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100068824()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100068860()
{
  v0 = __error();
  strerror(*v0);
  sub_10000FA58();
  sub_10001A31C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006891C(unsigned __int8 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "invalid family: %d\n", v3, 8u);
}

void sub_100068A00(const sockaddr *a1)
{
  sub_10003A958(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "no configuration found for %s\n", v3, v4, v5, v6, v7);
}

void sub_100068AAC(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 60);
  *buf = 67109120;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Using dh group %d for main mode\n", buf, 8u);
}

void sub_100068B00(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 188);
  *buf = 67109120;
  *a3 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Using dh group %d for aggressive mode\n", buf, 8u);
}

void sub_100068B54(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "invalid keylen %d\n", v2, 8u);
}

void sub_100068C00(int a1, uint64_t a2)
{
  sub_10003C080(a1, a2);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v2, v3, "Algorithm %s not supported by the kernel (missing module?)\n", v4, v5, v6, v7, v8);
}

void sub_100068CE0(uint64_t *a1)
{
  sub_100038374(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "Duplicated sainfo: %s\n", v3, v4, v5, v6, v7);
}

void sub_100068D58(uint64_t *a1)
{
  sub_100038374(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "No compression algorithm at %s\n", v3, v4, v5, v6, v7);
}

void sub_100068DD0(uint64_t *a1)
{
  sub_100038374(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "No authentication algorithm at %s\n", v3, v4, v5, v6, v7);
}

void sub_100068E48(uint64_t *a1)
{
  sub_100038374(a1);
  sub_10000FA58();
  sub_10000F9E8(&_mh_execute_header, v1, v2, "No encryption algorithm at %s\n", v3, v4, v5, v6, v7);
}

void sub_100068F28()
{
  sub_10000FA58();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_100048BC8(&_mh_execute_header, v0, v1, "invalid length for vpn ph2 algo - len=%ld - expected %ld\n", v2, v3);
}

void sub_100068F9C()
{
  sub_10000FA58();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_100048BC8(&_mh_execute_header, v0, v1, "invalid length for vpn ph2 selector - len=%ld - expected %ld\n", v2, v3);
}

void sub_100069404(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "start search for IKE-Session. target %s.\n", v3, v4, v5, v6, v7);
}

void sub_10006947C(uint8_t *a1, uint64_t a2, uint64_t **a3, NSObject *a4)
{
  v7 = sub_10003A5E8((a2 + 136));
  *a1 = 136315138;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "still search for IKE-Session. this %s.\n", a1, 0xCu);
}

void sub_1000694E8(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "Pre-existing IKE-Session to %s. case 3.\n", v3, v4, v5, v6, v7);
}

void sub_100069560(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "Pre-existing IKE-Session to %s. case 2.\n", v3, v4, v5, v6, v7);
}

void sub_1000695D8(uint64_t a1)
{
  sub_10003A5E8((a1 + 136));
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "Best-match IKE-Session to %s.\n", v3, v4, v5, v6, v7);
}

void sub_100069654(const sockaddr *a1)
{
  sub_10003A5E8(a1);
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "Pre-existing IKE-Session to %s. case 1.\n", v3, v4, v5, v6, v7);
}

void sub_1000696CC(const sockaddr *a1)
{
  sub_10003A5E8(a1 + 8);
  sub_10000FA58();
  sub_100005518(&_mh_execute_header, v1, v2, "New IKE-Session to %s.\n", v3, v4, v5, v6, v7);
}

void sub_100069B80(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Mismatched parent session in ph1bind replacement.\n", buf, 2u);
}

void sub_100069BC0(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "ike_session_rebind_all_ph12_to_new_ph1";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Same Phase 2 in ph1bind replacement in %s.\n", buf, 0xCu);
}

void sub_100069F58()
{
  sub_100001224();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006A084(int *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = *(a2 + 100);
  v5 = *(a2 + 264) << 30 >> 31;
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "about to cleanup ph2: status %d, seq %d dying %d\n", v6, 0x14u);
}

void sub_10006A650(unsigned __int8 *a1)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  sub_1000054EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x18u);
}

void sub_10006A6E8()
{
  sub_10004D6B8();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006A764(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "ike_session_get_sainfo_r";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "candidate ph2 found in %s.\n", buf, 0xCu);
}

void sub_10006A834(unsigned int *a1)
{
  v1 = *a1;
  sub_10003B490();
  sub_1000054EC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10006A8B4()
{
  sub_10004D6B8();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10006A930(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "ike_session_get_proposal_r";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "candidate ph2 found in %s.\n", buf, 0xCu);
}

void sub_10006AA00(unsigned int *a1)
{
  v1 = *a1;
  sub_10003B490();
  sub_1000054EC();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10006ABE8(unsigned __int8 *a1)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  sub_1000054EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Eu);
}

void sub_10006AE00(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "received power-mgmt event: %x\n", v2, 8u);
}

void sub_10006AFB8(int a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1;
  v4 = 2080;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "xpc connection error %d:%s.\n", v3, 0x12u);
}

void sub_10006B040()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006B0B0()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006B3DC()
{
  sub_10000FA58();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006B480(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "\n", buf, 2u);
}

void sub_10006B528()
{
  sub_100001224();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006B564(os_log_t log)
{
  v1 = *qword_1000900B8;
  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "could not read configuration file %s\n", &v2, 0xCu);
}

void sub_10006B5F0(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = dword_1000900B4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "fatal parse failure (%d errors)\n", v1, 8u);
}

void sub_10006B6AC(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = dword_1000900B4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "parse error is nothing, but yyerrorcount is %d.\n", v1, 8u);
}

void sub_10006B734()
{
  sub_100001224();
  sub_1000054EC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006B7A4(int a1)
{
  v6 = sys_signame[a1];
  sub_1000054EC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10006B8B0(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "reading configuration file %s\n", &v2, 0xCu);
}

void sub_10006B928(uint64_t a1, NSObject *a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  v6 = 136315394;
  v7 = a1;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "failed to open file %s (%s)\n", &v6, 0x16u);
}

void sub_10006B9CC()
{
  sub_1000541BC(&dword_10008F330);
  sub_100054198();
  sub_100001DFC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}