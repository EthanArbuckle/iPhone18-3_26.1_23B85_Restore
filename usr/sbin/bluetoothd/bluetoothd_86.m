uint64_t sub_10062FF34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = sub_100630220();
  if (result)
  {
    v7 = 0;
    if (!*(a1 + 904))
    {
      operator new();
    }

    return sub_1003A6B20(*(a1 + 904), a2, a3, &v7);
  }

  return result;
}

void sub_100630030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100117644(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063005C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 912);
  *a2 = *(result + 904);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10063007C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!sub_100630220())
  {
    return 0;
  }

  v6 = *(a1 + 904);
  v7 = *(a1 + 912);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  v17 = 0;
  if (!sub_1003A7300(v6, a2, a3, &v17))
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008547B8();
    }

LABEL_22:
    v12 = 0;
    if (!v7)
    {
      return v12;
    }

LABEL_23:
    sub_100117644(v7);
    return v12;
  }

  if (v17)
  {
    goto LABEL_22;
  }

  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Deleting  mBTTimeSyncManager", buf, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008547F4();
  }

  v9 = off_100B50A98;
  v10 = *(a1 + 912);
  v14 = *(a1 + 904);
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10063D9B4(v9 + 96, &v14);
  if (v15)
  {
    sub_100117644(v15);
  }

  v11 = *(a1 + 912);
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  if (v11)
  {
    sub_100117644(v11);
  }

  v12 = 1;
  if (v7)
  {
    goto LABEL_23;
  }

  return v12;
}

void sub_1006301F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100117644(a10);
  }

  if (v10)
  {
    sub_100117644(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100630220()
{
  v0 = sub_10000E92C();
  if ((*(*v0 + 536))(v0))
  {
    return 0;
  }

  sub_10000C7D0();
  if (sub_100410E9C())
  {
    return 1;
  }

  v2 = *(*sub_10000C798() + 840);

  return v2();
}

uint64_t sub_100630310()
{
  result = sub_100630220();
  if (result)
  {
    sub_10000C7D0();
    if (sub_100410E9C())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_100630340(uint64_t a1, unsigned __int8 *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = a2[128];
  v4 = a2[129];
  v5 = a2[130];
  v6 = a2[131];
  v7 = a2[132];
  v8 = a2[133];
  v18 = TSNullClockIdentifier;
  if (qword_100B50940 != -1)
  {
    sub_10085481C();
  }

  v9 = *(off_100B50938 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006304F0;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8;
  block[4] = &v15;
  dispatch_sync(v9, block);
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v16[3];
    *buf = 134217984;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Reference Timestamp ID: %llx ", buf, 0xCu);
  }

  v12 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v12;
}

void sub_1006304F0(void *a1)
{
  v2 = a1[5];
  if (qword_100B508F0 != -1)
  {
    sub_1008540D4();
  }

  v3 = sub_1000504C8(off_100B508E8, a1[6], 0);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 904);
    v6 = *(v2 + 912);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5)
    {
      sub_1003A8168(v5, (*(a1[4] + 8) + 24), (v4[128] << 40) | (v4[129] << 32) | (v4[130] << 24) | (v4[131] << 16) | (v4[132] << 8) | v4[133]);
    }

    if (v6)
    {

      sub_100117644(v6);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854844();
  }
}

void sub_100630604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063061C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[113];
  v4 = a1[114];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[32];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1006306D8;
  v6[3] = &unk_100B02EB0;
  v6[4] = v3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a2;
  v9 = a3;
  dispatch_async(v5, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1006306D8(uint64_t *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[4];
      if (v4)
      {
        if (sub_1003A9550(a1[4]))
        {
          sub_1003A66BC(v4, a1[6], a1[7], 0);
          sub_1003A94D4(v4);
LABEL_10:
          sub_100117644(v3);
          return;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio Timesync: Legacy timesync trigger ended", v6, 2u);
  }

  if (v3)
  {
    goto LABEL_10;
  }
}

void sub_1006307B4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(*(a1 + 32) + 344))
    {
      v3 = 0;
      sub_1000216B4(&v3);
      sub_10024DEFC(sub_100630888, *(a1 + 40) + 128);
      sub_100022214(&v3);
      sub_10002249C(&v3);
    }

    else
    {
      v2 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stack is not running. So, cannot issue the readLocalBTClock command", buf, 2u);
      }
    }
  }
}

void sub_100630888(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B50940 != -1)
  {
    sub_100853F30();
  }

  v4 = off_100B50938;
  v5 = mach_absolute_time();

  sub_10063061C(v4, v5, 312500 * a3);
}

uint64_t sub_1006308F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && (v15 = 0, sub_1000216B4(&v15), v11 = sub_1000E1FE8(a2 + 128), sub_100022214(&v15), sub_10002249C(&v15), v11))
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0xFFFFLL;
  }

  v13 = sub_10000C7D0();
  return (*(*v13 + 1912))(v13, a3, a4, v12, a5, a6);
}

void sub_1006309CC(uint64_t a1)
{
  v1 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100630A40;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

uint64_t sub_100630A40(uint64_t a1)
{
  result = *(*(a1 + 32) + 888);
  if (result)
  {
    return sub_1006ED208(result);
  }

  return result;
}

void sub_100630A54(uint64_t a1, char a2, char a3, char a4, const void *a5, size_t size)
{
  v6 = size;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v12 = size;
  v22 = malloc_type_malloc(size, 0x100004077774924uLL);
  memcpy(v20[3], a5, v12);
  v13 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100630B60;
  block[3] = &unk_100B02EE8;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  block[4] = &v19;
  block[5] = a1;
  v18 = v6;
  dispatch_async(v13, block);
  _Block_object_dispose(&v19, 8);
}

void sub_100630B60(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 888);
  if (v2)
  {
    sub_1006ED3C0(v2, *(a1 + 48), *(a1 + 49), *(a1 + 50), *(*(*(a1 + 32) + 8) + 24));
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);

  free(v3);
}

unint64_t sub_100630BC8(uint64_t a1, int a2, float a3)
{
  result = sub_10062D8E8(a1, a2);
  v15 = result;
  if (result)
  {
    v8 = *(a1 + 200);
    v7 = a1 + 200;
    v6 = v8;
    if (v8)
    {
      v9 = v7 - 8;
      v10 = v7;
      do
      {
        v11 = *(v6 + 32);
        v12 = v11 >= result;
        v13 = v11 < result;
        if (v12)
        {
          v10 = v6;
        }

        v6 = *(v6 + 8 * v13);
      }

      while (v6);
      if (v10 != v7 && result >= *(v10 + 32))
      {
        v16 = &v15;
        result = sub_10005E16C(v9, &v15);
        if (**(result + 40))
        {
          v16 = &v15;
          result = sub_10005E16C(v9, &v15);
          v14 = **(result + 40);
          *(v14 + 396) = *(v14 + 396) + a3;
          ++*(v14 + 400);
        }
      }
    }
  }

  return result;
}

BOOL sub_100630CD4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 888))
  {
    return 0;
  }

  v2 = *(a1 + 896);
  return v2 && v2 == a2;
}

unint64_t sub_100630CF8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  v4 = 0;
  sub_1000C2364(a2, &v6, &v5, &v4 + 1, &v4);
  LOBYTE(v2) = 0;
  if (v5 == 76)
  {
    v2 = 0x200020033FuLL >> (BYTE4(v4) - 10);
    if ((HIDWORD(v4) - 8202) > 0x25)
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

unint64_t sub_100630D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E92C();
  if ((*(*v4 + 304))(v4))
  {
    return 0;
  }

  v5 = sub_10000C798();
  if ((*(*v5 + 368))(v5))
  {
    return 0;
  }

  v6 = sub_100630E30(a1);
  if (v6)
  {
    return 0;
  }

  result = sub_100630CF8(v6, a2);
  if (result)
  {
    sub_10000C7D0();
    if (sub_10041074C())
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

BOOL sub_100630E30(uint64_t a1)
{
  v1 = *(a1 + 1256);
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = "disabled";
    if (v1 > 1)
    {
      v3 = "enabled";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter - isWirelessSplitterEnabled is %s ", &v5, 0xCu);
  }

  return v1 > 1;
}

uint64_t sub_100630EF4(uint64_t a1)
{
  v1 = sub_100630F58(*(a1 + 32), *(a1 + 40));
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;

  return sub_1004D1518(v2, v1, 1);
}

uint64_t sub_100630F58(uint64_t a1, unint64_t a2)
{
  v11 = a2;
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 200);
  v2 = a1 + 200;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2 - 8;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2)
  {
    return 0;
  }

  if (*(v6 + 32) > a2)
  {
    return 0;
  }

  v12 = &v11;
  if (!*(sub_10005E16C(v2 - 8, &v11)[5] + 92))
  {
    return 0;
  }

  v12 = &v11;
  return *(sub_10005E16C(v5, &v11)[5] + 92);
}

uint64_t sub_100631020(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 1);
}

uint64_t sub_100631078(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 0);
}

uint64_t sub_1006310D0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 1);
}

uint64_t sub_100631128(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  return sub_1004D1518(v2, v3, 0);
}

void sub_100631180(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v14 = a2;
  *buf = &v14;
  *(sub_10005E16C(a1 + 192, &v14)[5] + 66) = a3;
  *buf = &v14;
  if (*(sub_10005E16C(a1 + 192, &v14)[5] + 66) >= *(a1 + 1176) && (*buf = &v14, *sub_10005E16C(a1 + 192, &v14)[5]))
  {
    *buf = &v14;
    v5 = sub_10005E16C(a1 + 192, &v14);
    ++*(*v5[5] + 384);
  }

  else
  {
    *buf = &v14;
    if (*(sub_10005E16C(a1 + 192, &v14)[5] + 66) >= *(a1 + 1178) && (*buf = &v14, *sub_10005E16C(a1 + 192, &v14)[5]))
    {
      *buf = &v14;
      v6 = sub_10005E16C(a1 + 192, &v14);
      ++*(*v6[5] + 380);
    }

    else
    {
      *buf = &v14;
      if (*sub_10005E16C(a1 + 192, &v14)[5])
      {
        *buf = &v14;
        v7 = sub_10005E16C(a1 + 192, &v14);
        ++*(*v7[5] + 376);
      }

      else
      {
        v8 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A2DP Link Adaptive Bitrate: Metrics not enabled", buf, 2u);
        }
      }
    }
  }

  v9 = sub_100630F58(a1, v14);
  *buf = &v14;
  if (*(sub_10005E16C(a1 + 192, &v14)[5] + 68) < v3)
  {
    *buf = &v14;
    LOWORD(v3) = *(sub_10005E16C(a1 + 192, &v14)[5] + 68);
  }

  v10 = sub_1000DAB84();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10063148C;
  v11[3] = &unk_100AE0900;
  v12 = v9;
  v13 = v3;
  sub_10000CA94(v10, v11);
}

void sub_10063148C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);

  sub_1004DF868(v2, v3, v4);
}

void *sub_1006314E4(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v7 = a2;
  v8 = &v7;
  v5 = sub_10005E16C(a1 + 192, &v7);
  ++*(v5[5] + 70);
  v8 = &v7;
  result = sub_10005E16C(a1 + 192, &v7);
  if (*(result[5] + 70) >= 6)
  {
    sub_100631180(a1, v7, a3);
    v8 = &v7;
    result = sub_10005E16C(a1 + 192, &v7);
    *(result[5] + 70) = 0;
  }

  return result;
}

void sub_1006315C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100631640;
  v6[3] = &unk_100AFA2C0;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  v6[6] = a4;
  v8 = a5;
  dispatch_async(v5, v6);
}

void sub_100631640(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10011CCEC(*(v2 + 216), *(a1 + 40), *(a1 + 56), *(a1 + 48), *(a1 + 57));
  v3 = *(v2 + 216);
  v4 = *(a1 + 40);

  sub_10011F874(v3, v4);
}

void sub_100631690(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631708;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "off";
    if (**(v2 + 216))
    {
      v5 = "on";
    }

    else
    {
      v5 = "off";
    }

    if (*(a1 + 40))
    {
      v4 = "on";
    }

    v12 = 136315394;
    v13 = v5;
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dynamic Latency fScreenOn from %s -> %s", &v12, 0x16u);
  }

  v6 = *(v2 + 216);
  v7 = *(a1 + 40);
  if (*v6 != v7)
  {
    *v6 = v7;
    if (sub_100630E30(v2) && (v8 = *(v2 + 1264)) != 0)
    {
      v9 = **(v2 + 216);
      Current = CFAbsoluteTimeGetCurrent();
      v11 = *(v2 + 1264);
      if (v9)
      {
        *(v8 + 48) += (Current - *(v11 + 24));
        *(*(v2 + 1264) + 16) = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        *(v8 + 52) += (Current - *(v11 + 16));
        *(*(v2 + 1264) + 24) = CFAbsoluteTimeGetCurrent();
      }
    }

    else
    {
      sub_10011AD54(*(v2 + 216));
    }
  }
}

void sub_10063188C(uint64_t a1, char a2)
{
  v2 = *(a1 + 224);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631708;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 32;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631908(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631980;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631A10(void *a1)
{
  if (!a1[26] || (v1 = a1[24], v1 == a1 + 25))
  {
LABEL_11:
    v7 = 0;
    v8 = 0;
  }

  else
  {
    while (1)
    {
      v2 = v1[5];
      if (*(v2 + 84) == 2 && (*(v2 + 80) & 1) != 0)
      {
        break;
      }

      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
      if (v4 == a1 + 25)
      {
        goto LABEL_11;
      }
    }

    v6 = v1[4];
    v7 = 0;
    v8 = 0;
    if (v6)
    {
      sub_1000C2364(v6, &v8 + 1, &v8, &v7 + 1, &v7);
    }
  }

  operator new();
}

uint64_t sub_100631C44(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notify A2DPClient Accessibility headTracking change:%u", v5, 8u);
  }

  if (qword_100B50AE0 != -1)
  {
    sub_100853D2C();
  }

  return sub_1004DB15C(qword_100B50AD8, *(a1 + 32));
}

void sub_100631D14(uint64_t a1, char a2)
{
  v2 = *(a1 + 160);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100631980;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 96;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100631D90(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100631E44;
  block[3] = &unk_100AF3488;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v5 = *(a2 + 2);
  }

  dispatch_async(v2, block);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }
}

void sub_100631E44(uint64_t a1)
{
  v2 = sub_1000DAB84();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100631F18;
  v3[3] = &unk_100AF3488;
  if (*(a1 + 55) < 0)
  {
    sub_100008904(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
    v5 = *(a1 + 48);
  }

  sub_10000CA94(v2, v3);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }
}

void sub_100631EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100631F18(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notify Foreground app changed :%s", &v7, 0xCu);
  }

  v4 = [NSString alloc];
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  v6 = [v4 initWithUTF8String:v5];
  if (qword_100B50AE0 != -1)
  {
    sub_100853D2C();
  }

  sub_1004DAE58(qword_100B50AD8, v6);
}

void sub_10063203C(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006320B4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1006320C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 136);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006320B4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 120;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_100632144(uint64_t a1)
{
  v1 = *(a1 + 216);
  if (*(v1 + 4))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 5);
  }

  return v2 & 1;
}

void sub_100632164(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006321DC;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1006321F0(uint64_t a1, char a2)
{
  v2 = *(a1 + 208);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006321DC;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 48;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063226C(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006322E4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_1006322F8(uint64_t a1, char a2)
{
  v2 = *(a1 + 176);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006322E4;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 80;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100632374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006323EC;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
}

void sub_100632400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 200);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006323EC;
  block[3] = &unk_100AEC130;
  block[4] = a1 - 56;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v3, block);
}

void *sub_10063247C(void *result, unint64_t a2)
{
  v12 = a2;
  if (a2)
  {
    v2 = result;
    v13 = &v12;
    result = sub_10005E16C((result + 24), &v12);
    if (*result[5])
    {
      v13 = &v12;
      if (*(*(sub_10005E16C((v2 + 24), &v12)[5] + 48) + 20) == 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12);
        v4 = (result + 5);
LABEL_8:
        v8 = 144;
LABEL_14:
        *(**v4 + v8) = Current;
        return result;
      }

      v13 = &v12;
      if (*(*(sub_10005E16C((v2 + 24), &v12)[5] + 48) + 20) == 6)
      {
        v13 = &v12;
        if (*(*sub_10005E16C((v2 + 24), &v12)[5] + 144) != 0.0)
        {
          v5 = CFAbsoluteTimeGetCurrent();
          v13 = &v12;
          v6 = v5 - *(*sub_10005E16C((v2 + 24), &v12)[5] + 144);
          v13 = &v12;
          v7 = sub_10005E16C((v2 + 24), &v12);
          *(*v7[5] + 128) = v6 + *(*v7[5] + 128);
          v13 = &v12;
          result = sub_10005E16C((v2 + 24), &v12);
          v4 = (result + 5);
          Current = 0.0;
          goto LABEL_8;
        }

        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12);
        if (*(*result[5] + 152) == 0.0)
        {
          return result;
        }

        v9 = CFAbsoluteTimeGetCurrent();
        v13 = &v12;
        v10 = v9 - *(*sub_10005E16C((v2 + 24), &v12)[5] + 152);
        v13 = &v12;
        v11 = sub_10005E16C((v2 + 24), &v12);
        *(*v11[5] + 136) = v10 + *(*v11[5] + 136);
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12);
        v4 = (result + 5);
        Current = 0.0;
      }

      else
      {
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12);
        if (*(*(result[5] + 48) + 20) != 7)
        {
          return result;
        }

        Current = CFAbsoluteTimeGetCurrent();
        v13 = &v12;
        result = sub_10005E16C((v2 + 24), &v12);
        v4 = (result + 5);
      }

      v8 = 152;
      goto LABEL_14;
    }
  }

  return result;
}

void sub_10063279C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a3 + 8))
    {
      return;
    }
  }

  else if (!*(a3 + 23))
  {
    return;
  }

  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (!a4 || !*(a2 + 23))
    {
      return;
    }

LABEL_11:
    operator new[]();
  }

  if (a4 && *(a2 + 8))
  {
    goto LABEL_11;
  }
}

void sub_100632AE0(uint64_t a1)
{
  for (i = *(a1 + 1152); i != *(a1 + 1160); ++i)
  {
    v3 = *i;
    if (*i && *(v3 + 1) && *(v3 + 2))
    {
      v4 = *v3;
      if (v4 >= 2)
      {
        v5 = 0;
        v6 = qword_100BCE8D0;
        do
        {
          v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
          if (v7)
          {
            v8 = sub_10062ADB8(v7, *(v3 + 1));
            v9 = *(*(v3 + 1) + v5);
            *buf = 138412802;
            v19 = v8;
            v20 = 1024;
            v21 = v5;
            v22 = 1024;
            v23 = v9;
            _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive %@ Threshold (%d): %3d", buf, 0x18u);

            v6 = qword_100BCE8D0;
            v4 = *v3;
          }

          ++v5;
        }

        while (v5 < v4 - 1);
      }

      if (v4)
      {
        v11 = 0;
        v12 = qword_100BCE8D0;
        do
        {
          v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
          if (v13)
          {
            v14 = sub_10062ADB8(v13, *(v3 + 1));
            v15 = *(*(v3 + 2) + 2 * v11);
            *buf = 138412802;
            v19 = v14;
            v20 = 1024;
            v21 = v11;
            v22 = 1024;
            v23 = v15;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "A2DP Link Adaptive %@ Rate (%d): %3d", buf, 0x18u);

            v12 = qword_100BCE8D0;
            v4 = *v3;
          }

          ++v11;
        }

        while (v11 < v4);
      }
    }

    else
    {
      v10 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
      {
        sub_1008548B8(&v16, v17, v10);
      }
    }
  }
}

uint64_t sub_100632D10(uint64_t a1, unint64_t a2)
{
  v10[0] = a2;
  v2 = a1 + 200;
  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 192;
  v5 = v2;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v2 || *(v5 + 32) > a2)
  {
    return 0;
  }

  v10[2] = v10;
  return *(sub_10005E16C(v4, v10)[5] + 48);
}

int32x4_t sub_100632DA0(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  v3.i32[0] = *(a3 + 165);
  v3.i32[1] = *(a3 + 167);
  v3.i32[2] = *(a3 + 1);
  v3.i32[3] = *(a3 + 169);
  result = vaddq_s32(*a2, v3);
  *a2 = result;
  v5 = a2[1].i32[1] + *(a3 + 171);
  a2[1].i32[0] += *(a3 + 173);
  a2[1].i32[1] = v5;
  return result;
}

void sub_100632DE8(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v3 = *(a3 + 229);
  v4 = a2->i32[1];
  a2->i32[0] += v3;
  v5 = *(a3 + 230);
  a2[1].i32[0] += v5;
  v6 = *(a3 + 231);
  a2[2].i32[0] += v6;
  if (v4 < v3)
  {
    a2->i32[1] = v3;
  }

  if (a2[1].i32[1] < v5)
  {
    a2[1].i32[1] = v5;
  }

  if (a2[2].i32[1] < v6)
  {
    a2[2].i32[1] = v6;
  }

  v7 = *(a3 + 232);
  v8.i32[0] = 1;
  v8.i32[1] = v7;
  a2[3] = vadd_s32(a2[3], v8);
  v9 = a2[4].u32[0];
  if (v9 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = a2[4].i32[0];
  }

  if (v9)
  {
    v7 = v10;
  }

  a2[4].i32[0] = v7;
}

id sub_100632E78(uint64_t a1, char a2)
{
  v4 = [NSMutableString stringWithFormat:&stru_100B0F9E0];
  v5 = v4;
  v6 = *(a1 + 834);
  if (v6 - 212 >= 0xFFFFFF2D)
  {
    if ((a2 & 4) != 0)
    {
      v8 = @"Cell Active ";
    }

    else
    {
      v8 = @"Cell Inactive ";
    }

    [v4 appendString:v8];
    if ((a2 & 2) != 0)
    {
      v9 = @"/ WiFi5G Active ";
    }

    else
    {
      v9 = @"/ WiFi5G Inactive ";
    }

    [v5 appendString:v9];
    v10 = @"/ H ";
    v11 = @"/ B ";
    goto LABEL_19;
  }

  if (v6 >= 0xD4)
  {
    if ((a2 & 8) != 0)
    {
      [v4 appendString:@"Cell Inactive "];
      v7 = &stru_100B0F9E0;
    }

    else
    {
      [v4 appendString:@"Cell Active "];
      if ((a2 & 4) != 0)
      {
        v7 = @"/ Ant(2/4/6) ";
      }

      else
      {
        v7 = @"/ Ant(1/3/5) ";
      }
    }

    [v5 appendString:v7];
    if ((a2 & 2) != 0)
    {
      v12 = @"/ B ";
    }

    else
    {
      v12 = @"/ H ";
    }

    [v5 appendString:v12];
    v10 = @"/ WiFi5G Active";
    v11 = @"/ WiFi5G Inactive";
LABEL_19:
    if (a2)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    [v5 appendString:v13];
  }

  return v5;
}

void sub_100632FE0(unsigned __int8 *a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ----------------------------Packet------------------Target iPA Tx Power------------------------", &v18, 2u);
  }

  if ((a2 - 2001) < 2 || a2 == 3000)
  {
    if (a1[690] >= a1[666])
    {
      v12 = a1[666];
    }

    else
    {
      v12 = a1[690];
    }

    if (a1[706] >= a1[668])
    {
      v13 = a1[668];
    }

    else
    {
      v13 = a1[706];
    }

    if (a1[722] >= a1[670])
    {
      v14 = a1[670];
    }

    else
    {
      v14 = a1[722];
    }

    if (a1[738] >= a1[672])
    {
      v15 = a1[672];
    }

    else
    {
      v15 = a1[738];
    }

    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v16 = a1[674];
      if (v16 >= a1[664])
      {
        v16 = a1[664];
      }

      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v16, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              BDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v12, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              EDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v13, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                             LEData                       %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v13, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                             LEAdv                        %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v14, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              HDR4                        %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v15, 1uLL);
      v11 = "statedump:                              HDR8                        %.2f dBm";
      goto LABEL_51;
    }
  }

  else if (a2 == 2000)
  {
    if (a1[675] >= a1[666])
    {
      v5 = a1[666];
    }

    else
    {
      v5 = a1[675];
    }

    v6 = a1[668];
    if (a1[676] >= v6)
    {
      v7 = a1[668];
    }

    else
    {
      v7 = a1[676];
    }

    if (a1[677] >= v6)
    {
      v8 = a1[668];
    }

    else
    {
      v8 = a1[677];
    }

    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[674];
      if (v10 >= a1[664])
      {
        v10 = a1[664];
      }

      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v10, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              BDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v5, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                              EDR                         %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v7, 1uLL);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "statedump:                             LEData                       %.2f dBm", &v18, 0xCu);
      v9 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = vcvtd_n_f64_u32(v8, 1uLL);
      v11 = "statedump:                             LEAdv                        %.2f dBm";
LABEL_51:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, &v18, 0xCu);
    }
  }

  v17 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: ============================= End of bluetooth power targets dump ==========================", &v18, 2u);
  }
}

void sub_100633460(unsigned __int8 *a1, int a2)
{
  v4 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v51) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ========================= Bluetooth Tx Power Targets (CC0) ===============================", &v51, 2u);
  }

  if ((a2 - 2001) < 2 || a2 == 3000)
  {
    v5 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------EDR-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[667];
      v16 = a1[691];
      v17 = a1[802];
      if (v16 >= v15)
      {
        v18 = a1[667];
      }

      else
      {
        v18 = a1[691];
      }

      if (v17 < v18)
      {
        v18 = a1[802];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v18, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v15, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v16, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v17, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[667];
      v20 = a1[691];
      v21 = a1[810];
      if (v20 >= v19)
      {
        v22 = a1[667];
      }

      else
      {
        v22 = a1[691];
      }

      if (v21 < v22)
      {
        v22 = a1[810];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v22, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v19, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v20, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v21, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a1[667];
      v24 = a1[691];
      v25 = a1[818];
      if (v24 >= v23)
      {
        v26 = a1[667];
      }

      else
      {
        v26 = a1[691];
      }

      if (v25 < v26)
      {
        v26 = a1[818];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v26, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v23, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v24, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v25, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:      WiFi 5G On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------HDR4-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = a1[671];
      v28 = a1[739];
      v29 = a1[802];
      if (v28 >= v27)
      {
        v28 = a1[671];
      }

      if (v29 < v28)
      {
        v28 = a1[802];
      }

      v30 = vcvtd_n_f64_u32(a1[723], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v28, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v27, 1uLL);
      v55 = 2048;
      v56 = v30;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v29, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v31 = a1[671];
      v32 = a1[739];
      v33 = a1[810];
      if (v32 >= v31)
      {
        v32 = a1[671];
      }

      if (v33 < v32)
      {
        v32 = a1[810];
      }

      v34 = vcvtd_n_f64_u32(a1[723], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v32, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v31, 1uLL);
      v55 = 2048;
      v56 = v34;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v33, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v35 = a1[671];
      v36 = a1[739];
      v37 = a1[818];
      if (v36 >= v35)
      {
        v36 = a1[671];
      }

      if (v37 < v36)
      {
        v36 = a1[818];
      }

      v38 = vcvtd_n_f64_u32(a1[723], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v36, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v35, 1uLL);
      v55 = 2048;
      v56 = v38;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v37, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:      WiFi 5G On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------HDR8-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v39 = a1[673];
      v40 = a1[755];
      v41 = a1[802];
      if (v40 >= v39)
      {
        v40 = a1[673];
      }

      if (v41 < v40)
      {
        v40 = a1[802];
      }

      v42 = vcvtd_n_f64_u32(a1[739], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v40, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v39, 1uLL);
      v55 = 2048;
      v56 = v42;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v41, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v43 = a1[673];
      v44 = a1[755];
      v45 = a1[810];
      if (v44 >= v43)
      {
        v44 = a1[673];
      }

      if (v45 < v44)
      {
        v44 = a1[810];
      }

      v46 = vcvtd_n_f64_u32(a1[739], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v44, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v43, 1uLL);
      v55 = 2048;
      v56 = v46;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v45, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v47 = a1[673];
      v48 = a1[755];
      v49 = a1[818];
      if (v48 >= v47)
      {
        v48 = a1[673];
      }

      if (v49 < v48)
      {
        v48 = a1[818];
      }

      v50 = vcvtd_n_f64_u32(a1[739], 1uLL);
      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v48, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v47, 1uLL);
      v55 = 2048;
      v56 = v50;
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v49, 1uLL);
      v14 = "statedump:      WiFi 5G On           %.2f dBm                   [%.2f,%.2f,%.2f]";
      goto LABEL_85;
    }
  }

  else if (a2 == 2000)
  {
    v5 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v51) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: ------Use Case-------Target ePA Tx Power-------------------Power Caps--------------------------", &v51, 2u);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[802];
      v7 = a1[679];
      v8 = a1[667];
      if (v7 >= v6)
      {
        v9 = a1[802];
      }

      else
      {
        v9 = a1[679];
      }

      if (v8 < v9)
      {
        v9 = a1[667];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v9, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v8, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v7, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v6, 1uLL);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:     Cellular Off          %.2f dBm                   [%.2f,%.2f,%.2f]", &v51, 0x2Au);
      v5 = qword_100BCE8D0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[803];
      v11 = a1[679];
      v12 = a1[667];
      if (v11 >= v10)
      {
        v13 = a1[803];
      }

      else
      {
        v13 = a1[679];
      }

      if (v12 < v13)
      {
        v13 = a1[667];
      }

      v51 = 134218752;
      v52 = vcvtd_n_f64_u32(v13, 1uLL);
      v53 = 2048;
      v54 = vcvtd_n_f64_u32(v12, 1uLL);
      v55 = 2048;
      v56 = vcvtd_n_f64_u32(v11, 1uLL);
      v57 = 2048;
      v58 = vcvtd_n_f64_u32(v10, 1uLL);
      v14 = "statedump:     Cellular On           %.2f dBm                   [%.2f,%.2f,%.2f]";
LABEL_85:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v14, &v51, 0x2Au);
    }
  }
}

void sub_100633C48(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, uint64_t a7)
{
  v26 = 0;
  v25 = 0;
  if (a2 == 2)
  {
    v13 = sub_10000E92C();
    sub_100007E30(buf, "ePA");
    sub_100007E30(__p, "DisableA2DP");
    (*(*v13 + 72))(v13, buf, __p, &v26 + 1);
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_9;
    }

    v14 = sub_10000E92C();
    sub_100007E30(buf, "ePA");
    sub_100007E30(__p, "DisableHFP");
    (*(*v14 + 72))(v14, buf, __p, &v26 + 1);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

LABEL_9:
  v15 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableReTxEPA");
  (*(*v15 + 72))(v15, buf, __p, &v26);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

  v16 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "DisableThresholdEPA");
  (*(*v16 + 72))(v16, buf, __p, &v25);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

  *a3 = HIBYTE(v26);
  *a4 = v26;
  *a5 = v25;
  *a6 = 3;
  if (a2 == 2)
  {
    v17 = sub_10000C798();
    if ((*(*v17 + 168))(v17))
    {
LABEL_19:
      *a6 = 7;
    }
  }

  else if (a2 == 1)
  {
    v18 = sub_10000C798();
    if ((*(*v18 + 176))(v18))
    {
      if (!sub_100537D2C(a7))
      {
        goto LABEL_19;
      }
    }
  }

  if (*a4 == 1)
  {
    *a6 &= ~2u;
    v19 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Disabling ePA for retransmission policy through defaults write", buf, 2u);
    }
  }

  if (*a5 == 1)
  {
    *a6 &= ~1u;
    v20 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Warning: Disabling threshold based ePA policy through defaults write", buf, 2u);
    }
  }
}

void sub_100633FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063402C(_BYTE *a1, uint64_t a2, char a3, int a4)
{
  v40 = 0;
  v39 = 0;
  sub_100633C48(a1, a4, a1 + 345, &v40, &v39, &v40 + 1, a2);
  if (a1[345] == 1)
  {
    v8 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ePA disabled by defaults write", buf, 2u);
    }

    return;
  }

  v9 = sub_10000C7D0();
  if (!sub_100410AA0(v9))
  {
    sub_10000C7D0();
    if (!sub_1004108D4())
    {
      return;
    }

    v15 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Enable EPA for Marconi", buf, 2u);
    }

    v16 = sub_10000C7D0();
    (*(*v16 + 168))(v16, a2, 2, 0, 30, 10);
    goto LABEL_39;
  }

  sub_10061F5E4(a1, a2, a4, a1 + 886);
  v10 = sub_10000C798();
  if ((*(*v10 + 168))(v10))
  {
    v11 = sub_1000271F0();
    if (a4 == 1)
    {
      v12 = -75;
    }

    else
    {
      v12 = -80;
    }

    if (v11 == 163)
    {
      v13 = 4294967197;
    }

    else
    {
      v13 = v12;
    }

    v14 = *(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu || *(sub_10000C7D0() + 800) < 0xBB8u;
    v27 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v28 = a1[886];
      *buf = 67109888;
      v42 = HIBYTE(v40);
      v43 = 1024;
      v44 = v28;
      v45 = 1024;
      v46 = v13;
      v47 = 1024;
      v48 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Enabling beamforming, policy: %#x, iPA-Beamforming RSSI threshold: %d dBm, ePA-Beamforming RSSI threshold: %d dBm, beamforming gain threshold: %d dB", buf, 0x1Au);
    }

    if (!v14)
    {
      goto LABEL_30;
    }

    if (qword_100B50B60 != -1)
    {
      sub_100853DA4();
    }

    if (sub_1003774D4() && (v29 = sub_10000C798(), v30 = (*(*v29 + 456))(v29), (v30 & 1) == 0))
    {
      v32 = sub_100634584(v30, a2, HIBYTE(v40), a1[886], 0, v13, -70, 0);
    }

    else
    {
LABEL_30:
      v31 = sub_10000C7D0();
      v32 = (*(*v31 + 112))(v31, 0, a2, HIBYTE(v40), a1[886], 0, v13);
    }

    sub_10063480C(v32, a2, 1);
    v33 = sub_10000C7D0();
    if ((*(v33 + 800) - 23) > 0x7B8)
    {
      v34 = 2;
    }

    else
    {
      v34 = 4;
    }

    sub_1006349F8(v33, v34, a2, 1);
    goto LABEL_39;
  }

  sub_10061F850(a1, a3, a1 + 884, a1 + 885);
  sub_10061F8D8(a1);
  sub_10000C7D0();
  v17 = sub_100410F60();
  v18 = a1[885];
  v19 = qword_100BCE8D0;
  v20 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  v21 = HIBYTE(v40);
  if (v17 == v18)
  {
    if (v20)
    {
      v22 = a1[886];
      v23 = 25 * a1[884];
      *buf = 67109888;
      v42 = HIBYTE(v40);
      v43 = 1024;
      v44 = v22;
      v45 = 1024;
      v46 = v23;
      v47 = 1024;
      v48 = 25 * v17;
      v24 = "Enabling ePA, policy: %#x, Threshold: %d dBm, Tx power high: %d, low: %d";
      v25 = v19;
      v26 = 26;
LABEL_35:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

  else if (v20)
  {
    v35 = a1[886];
    v36 = 25 * a1[884];
    *buf = 67110144;
    v42 = HIBYTE(v40);
    v43 = 1024;
    v44 = v35;
    v45 = 1024;
    v46 = v36;
    v47 = 1024;
    v48 = 25 * v18;
    v49 = 1024;
    v50 = 25 * v17;
    v24 = "Enabling ePA, policy: %#x, Threshold: %d dBm, Tx power high: %d, medium: %d, low (unused): %d";
    v25 = v19;
    v26 = 32;
    goto LABEL_35;
  }

  v37 = sub_10000C7D0();
  (*(*v37 + 88))(v37, a2, 1, v21, a1[884], a1[885], a1[886]);
  v38 = sub_10000C7D0();
  (*(*v38 + 104))(v38, 1);
LABEL_39:
  if (qword_100B50AC0 != -1)
  {
    sub_100853D54();
  }

  sub_100594AA0(off_100B50AB8, a2, 0xFFFFFFFFLL, 0, 702, 0);
}

uint64_t sub_100634584(uint64_t a1, uint64_t a2, int a3, char a4, char a5, char a6, char a7, int a8)
{
  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  v15 = sub_1000DEB14(a2);
  if (v15 == 22 || v15 == 17)
  {
    v17 = 60;
  }

  else
  {
    v17 = 45;
  }

  if (a8)
  {
    LOBYTE(v18) = 75;
  }

  else
  {
    LOBYTE(v18) = v17;
  }

  v31 = 0;
  v19 = sub_10000E92C();
  sub_100007E30(buf, "ePA");
  sub_100007E30(__p, "iPAMaxThreshold");
  v20 = (*(*v19 + 88))(v19, buf, __p, &v31);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v35 & 0x80000000) == 0)
  {
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_16:
    v18 = -v31;
    v21 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined iPA-Max threshold to -%d dBm through defaults write", buf, 8u);
    }

    goto LABEL_18;
  }

  operator delete(*buf);
  if (v20)
  {
    goto LABEL_16;
  }

LABEL_18:
  v22 = 0;
  v23 = 0;
  LOBYTE(v32[0]) = 2;
  v24 = 1;
  while (1)
  {
    v25 = v24;
    v26 = &v32[v23] + 1;
    *v26 = v23;
    *(v26 + 1) = 6;
    v26[3] = v26[3] & 0xF8 | a3 & 7;
    v26[4] = v18;
    v26[5] = a4;
    if (a3)
    {
      if (v22)
      {
        break;
      }
    }

    v24 = 0;
    v26[6] = a6;
    v26[7] = a5;
    v22 = 1;
    v23 = 1;
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v26[6] = a7;
  v26[7] = a5;
LABEL_24:
  v27 = sub_10000C7D0();
  return (*(*v27 + 128))(v27, a2, 17, v32);
}

void sub_1006347D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063480C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000E92C();
  if (!(*(*v5 + 384))(v5))
  {
    return 0;
  }

  v6 = sub_10000E92C();
  if (!(*(*v6 + 392))(v6))
  {
    return 0;
  }

  v7 = qword_100BCE8D0;
  v8 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v23 = 0;
    v9 = "Enabling beamforming VSE Logging";
    v10 = &v23;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    *buf = 0;
    v9 = "Disabling beamforming VSE Logging";
    v10 = buf;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
LABEL_9:
  v11 = sub_10000C7D0();
  v12 = (*(*v11 + 112))(v11, 2, a2, a3, 0, 0, 0);
  v13 = qword_100BCE8D0;
  if (!v12)
  {
    v16 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO);
    if (a3)
    {
      if (v16)
      {
        v21 = 0;
        v17 = "Beamforming VSE Logging enabled";
        v18 = &v21;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v17, v18, 2u);
      }
    }

    else if (v16)
    {
      v20 = 0;
      v17 = "Beamforming VSE Logging disabled";
      v18 = &v20;
      goto LABEL_20;
    }

    return 0;
  }

  v14 = v12;
  v15 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
  if (a3)
  {
    if (v15)
    {
      sub_100854968();
    }
  }

  else if (v15)
  {
    sub_1008548F8();
  }

  return v14;
}

uint64_t sub_1006349F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 == 4 || a2 == 2;
  if (a2 == 4 || a2 == 2)
  {
    v8 = sub_10000E92C();
    if (!(*(*v8 + 384))(v8))
    {
      return 0;
    }
  }

  v9 = sub_10000E92C();
  if (!(*(*v9 + 392))(v9) && v7)
  {
    return 0;
  }

  v13 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "Logging";
    if (a2 == 1)
    {
      v14 = "Global control";
    }

    v15 = "Enable";
    if (!a4)
    {
      v15 = "Disable";
    }

    v19 = 136315394;
    v20 = v14;
    v21 = 2080;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beamforming MRC %s %s", &v19, 0x16u);
  }

  v16 = sub_10000C7D0();
  v17 = (*(*v16 + 136))(v16, a2, a3, a4);
  v11 = v17;
  if (a2 == 1 && v17)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854AB8();
    }
  }

  else if (v17)
  {
    v18 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR);
    if (a4)
    {
      if (v18)
      {
        sub_100854A48();
      }
    }

    else if (v18)
    {
      sub_1008549D8();
    }
  }

  return v11;
}

uint64_t sub_100634C30(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C7D0();
  if (sub_100410AA0(v3))
  {
    v4 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disable Enhanced Power save ", buf, 2u);
    }

    v5 = sub_10000C798();
    if ((*(*v5 + 168))(v5))
    {
      v6 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disable Enhanced Power and beamforming", v17, 2u);
      }

      if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) > 0xBB7u)
      {
        goto LABEL_14;
      }

      if (qword_100B50B60 != -1)
      {
        sub_100853DA4();
      }

      if (sub_1003774D4() && (v7 = sub_10000C798(), v8 = (*(*v7 + 456))(v7), (v8 & 1) == 0))
      {
        v10 = sub_100634584(v8, a2, 0, -69, 0, -80, -70, 0);
      }

      else
      {
LABEL_14:
        v9 = sub_10000C7D0();
        v10 = (*(*v9 + 112))(v9, 0, a2, 0, 4294967227, 0, 4294967216);
      }

      sub_10063480C(v10, a2, 0);
      v15 = sub_10000C7D0();
      if ((*(v15 + 800) - 23) > 0x7B8)
      {
        v16 = 2;
      }

      else
      {
        v16 = 4;
      }

      sub_1006349F8(v15, v16, a2, 0);
    }

    else
    {
      v13 = sub_10000C7D0();
      (*(*v13 + 88))(v13, a2, 1, 0, 0, 0, 4294967227);
      v14 = sub_10000C7D0();
      (*(*v14 + 104))(v14, 0);
    }
  }

  else
  {
    sub_10000C7D0();
    result = sub_1004108D4();
    if (!result)
    {
      return result;
    }

    v12 = sub_10000C7D0();
    (*(*v12 + 168))(v12, a2, 0, 0, 0, 0);
  }

  if (qword_100B50AC0 != -1)
  {
    sub_100853D54();
  }

  return sub_100594AA0(off_100B50AB8, a2, 0xFFFFFFFFLL, 0, 703, 0);
}

void sub_100634F34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_10000C798();
  v9 = (*(*v8 + 144))(v8);
  if (a2 && v9)
  {
    if (*(a1 + 344))
    {
      v48 = 0;
      sub_1000216B4(&v48);
      v10 = sub_10024132C(a2 + 128);
      sub_100022214(&v48);
      v11 = sub_10000C798();
      if ((((*(*v11 + 168))(v11) | v10) & 1) == 0)
      {
        v12 = sub_10000E92C();
        if (!(*(*v12 + 352))(v12))
        {
          v18 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v19 = "A2DP";
            if (a4 == 1)
            {
              v19 = "HFP";
            }

            v20 = "started";
            if (!a3)
            {
              v20 = "stopped";
            }

            *buf = 136315394;
            v50 = v19;
            v51 = 2080;
            v52 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s stream %s: Diversity inactive since role is peripheral or not supporting TxBF", buf, 0x16u);
          }

          goto LABEL_71;
        }
      }

      v13 = *(sub_10000C7D0() + 800);
      if (!a3)
      {
        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "A2DP";
          if (a4 == 1)
          {
            v17 = "HFP";
          }

          *buf = 136315138;
          v50 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s stream stopped: Disabling diversity", buf, 0xCu);
        }

        if (v13 <= 0x13)
        {
          sub_1006359E4(a1, 0, 3);
        }

        goto LABEL_71;
      }

      sub_1000618AC(&v48);
      if (a4 == 1)
      {
        v14 = sub_1000E2040(a2 + 128);
      }

      else
      {
        if (a4 != 2)
        {
          v21 = 0;
LABEL_27:
          if ((*(a2 + 1435) & 0xFE) == 2)
          {
            v22 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Low Latency Traffic detected, use ACL Connection instead", buf, 2u);
            }

            v21 = sub_1000E1FE8(a2 + 128);
          }

          sub_100022214(&v48);
          if (!v21)
          {
            goto LABEL_71;
          }

          v23 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            v24 = "A2DP";
            if (a4 == 1)
            {
              v24 = "HFP";
            }

            *buf = 136315138;
            v50 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s stream started: Enabling diversity/TxBF", buf, 0xCu);
          }

          if (v13 <= 0x13)
          {
            sub_1006359E4(a1, v21, 3);
          }

          v25 = sub_10000C798();
          if (((*(*v25 + 152))(v25) & 1) == 0)
          {
            v26 = sub_10000C798();
            if (!(*(*v26 + 160))(v26))
            {
              goto LABEL_65;
            }
          }

          v27 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Platform supports enhanced diversity, configuring antenna pair before enabling diversity", buf, 2u);
          }

          v28 = sub_10000E92C();
          if ((*(*v28 + 368))(v28))
          {
            v29 = qword_100BCE8D0;
            if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: Forcing enhanced diversity antenna pair via defaults write", buf, 2u);
            }

            v30 = sub_10000E92C();
            v31 = (*(*v30 + 376))(v30);
            v32 = sub_100635C10(a1, v31);
            v33 = qword_100BCE8D0;
            v34 = os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT);
            if (v32)
            {
              if (v34)
              {
                *buf = 0;
                v35 = "Warning: Forcing enhanced diversity antenna pair via defaults write failed";
                v36 = v33;
                v37 = 2;
LABEL_64:
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
              }

LABEL_65:
              if (v13 < 0x14)
              {
                v44 = 5;
              }

              else
              {
                v44 = 6;
              }

              v45 = sub_10000E92C();
              if ((*(*v45 + 320))(v45))
              {
                v46 = sub_10000E92C();
                v44 = (*(*v46 + 328))(v46);
              }

              v47 = sub_1006359E4(a1, v21, v44);
              sub_100635EF4(v47, v21, 1);
LABEL_71:
              sub_10002249C(&v48);
              return;
            }

            if (!v34)
            {
              goto LABEL_65;
            }

            if (*(a1 + 876))
            {
              v43 = "default";
            }

            else
            {
              v43 = "non-default";
            }

            *buf = 136315138;
            v50 = v43;
            v35 = "Warning: Enhanced diversity antenna pair set to %s config at stream start based on defaults write";
          }

          else
          {
            v38 = sub_100017E6C();
            v39 = (*(*v38 + 264))(v38);
            v40 = v39;
            if (v39 >= 2 && v39 != *(a1 + 880))
            {
              v41 = qword_100BCE8D0;
              if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device orientation outdated, updating orientation first", buf, 2u);
              }

              *(a1 + 880) = v40;
            }

            sub_100635D6C(a1);
            v33 = qword_100BCE8D0;
            if (!os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_65;
            }

            if (*(a1 + 876))
            {
              v42 = "default";
            }

            else
            {
              v42 = "non-default";
            }

            *buf = 136315138;
            v50 = v42;
            v35 = "Enhanced diversity antenna pair set to %s config at stream start based on orientation";
          }

          v36 = v33;
          v37 = 12;
          goto LABEL_64;
        }

        v14 = sub_1000E1FE8(a2 + 128);
      }

      v21 = v14;
      goto LABEL_27;
    }

    v15 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stack is not ready, cannot update diversity settings", buf, 2u);
    }
  }
}

void sub_100635670(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100854B4C();
  }

  v2 = off_100B54078;

  sub_1006FCA38(v2, v1 + 16);
}

void sub_1006356C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100854B4C();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 16);
}

uint64_t sub_100635718()
{
  v9 = 0;
  v8 = 0;
  v5 = 10;
  v0 = sub_1000271F0() == 90 || sub_1000271F0() == 28;
  v1 = sub_10000C7D0();
  v2 = (*(*v1 + 896))(v1, 4095, 2, v0, 0, 0, &v5, &v8);
  v3 = qword_100BCE8D0;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854B60();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v7 = v0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Default BT antenna set to %d", buf, 8u);
  }

  return v2;
}

uint64_t sub_10063586C(uint64_t a1, int a2)
{
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) > 0xBB7u)
  {
    return 0;
  }

  v11 = 0;
  v10 = 0;
  v7 = 10;
  v4 = *sub_10000C7D0();
  v3 = (*(v4 + 896))();
  v5 = qword_100BCE8D0;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854BD4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Diversity follow mode set to %d", buf, 8u);
  }

  return v3;
}

uint64_t sub_1006359E4(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu || *(sub_10000C7D0() + 800) < 0xBB8u)
  {
    v13 = 0;
    sub_1000216B4(&v13);
    if (sub_1000B8B5C(a2) || sub_1000C0E08(a2))
    {
      v7 = *a2;
    }

    else
    {
      v7 = 4095;
    }

    sub_100022214(&v13);
    v8 = sub_10000C798();
    if (((a3 > 5) & (*(*v8 + 168))(v8)) != 0)
    {
      v9 = -125;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10000C7D0();
    v6 = (*(*v10 + 896))(v10, v7, 1, a3, 0, v9, 0, 0);
    v11 = qword_100BCE8D0;
    if (v6)
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100854C44();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        v15 = a3;
        v16 = 1024;
        v17 = v7;
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Diversity mode %d set on handle %d with beamforming/diversity threshold %d", buf, 0x14u);
      }

      *(a1 + 872) = a3;
    }

    sub_10002249C(&v13);
  }

  else
  {
    v6 = 0;
    *(a1 + 872) = a3;
  }

  return v6;
}

uint64_t sub_100635C10(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  v8 = 10;
  v4 = *sub_10000C7D0();
  v5 = (*(v4 + 896))();
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854CB4();
    }
  }

  else
  {
    *(a1 + 876) = a2 == 1;
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Diversity antenna pair set to (0, %d)", buf, 8u);
    }
  }

  return v5;
}

void sub_100635D6C(uint64_t a1)
{
  v2 = 1;
  v3 = sub_1000271F0();
  if (v3 > 79)
  {
    if (v3 > 133)
    {
      if (v3 == 134 || v3 == 136)
      {
        return;
      }

      goto LABEL_12;
    }

    if ((v3 - 80) >= 2)
    {
      if (v3 == 91)
      {
        if (*(a1 + 880) == 7)
        {
          v2 = 1;
        }

        else
        {
          v2 = 2;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    if ((v3 - 74) < 2)
    {
LABEL_5:
      v4 = (*(a1 + 880) & 0xFFFFFFFE) == 6;
      goto LABEL_9;
    }

    if ((v3 - 76) >= 2)
    {
      if ((v3 - 78) >= 2)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }
  }

  v4 = *(a1 + 880) == 2;
LABEL_9:
  if (v4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

LABEL_12:
  v5 = sub_100635C10(a1, v2);
  v6 = qword_100BCE8D0;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854D24();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 880);
    v8[0] = 67109376;
    v8[1] = v7;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device orientation set to %d, setting diversity antenna to %d", v8, 0xEu);
  }
}

uint64_t sub_100635EF4(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (*(sub_10000C7D0() + 800) >= 0x7D0u && *(sub_10000C7D0() + 800) <= 0xF9Fu && *(sub_10000C7D0() + 800) > 0xBB7u)
  {
    return 0;
  }

  v5 = sub_10000E92C();
  if (!(*(*v5 + 336))(v5))
  {
    return 0;
  }

  if (a3)
  {
    v6 = sub_10000E92C();
    a3 = (*(*v6 + 344))(v6);
  }

  v7 = *a2;
  v17 = 0;
  v16 = 0;
  v8 = *sub_10000C7D0();
  v9 = (*(v8 + 896))();
  v10 = qword_100BCE8D0;
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854DA4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = a3;
    v14 = 1024;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Diversity log mode %d set on handle %d", buf, 0xEu);
  }

  return v9;
}

uint64_t sub_1006360F0(uint64_t a1, unint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, _DWORD *a6, uint64_t a7)
{
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  v25 = 0uLL;
  v26 = 0;
  result = sub_1005D0AF4(off_100B50AC8, a2, &v25);
  if (result)
  {
    v16 = v25.n128_u32[0];
    v15 = v25.n128_u32[1];
    v17 = v25.n128_u32[3];
    *(a1 + 1188) = v25.n128_u32[1];
    *(a1 + 1192) = v16;
    *(a1 + 1208) = v17;
    *a3 = v15 - *(a1 + 1200);
    *a4 = v16 - *(a1 + 1204);
    *a6 = v17 - *(a1 + 1212);
    v18 = *(a1 + 1196);
    if (v18 == 128)
    {
      v19 = *a4;
      if (*a4 <= 0x41)
      {
        v20 = 66;
        goto LABEL_10;
      }
    }

    else if (v18 == 256)
    {
      v19 = *a4;
      if (*a4 <= 0x84)
      {
        v20 = 133;
LABEL_10:
        *a5 = v20 - v19;
      }
    }

    *(a1 + 1200) = v15;
    *(a1 + 1204) = v16;
    *(a1 + 1212) = v17;
    v21 = sub_10000E92C();
    result = (*(*v21 + 8))(v21);
    if (result)
    {
      v24 = *(a1 + 1196);
      if ((v24 - 127) < 3 || v24 == 256)
      {
        return sub_10063626C(a1, a2, *a3, *a4, *a5, v25.n128_i32[2], &v25, a7, v22, v23);
      }
    }
  }

  return result;
}

void *sub_10063626C(void *result, unint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, float a9, float a10)
{
  v37 = a2;
  if (!(a4 | a3 | a5))
  {
    return result;
  }

  v16 = result;
  v17 = *(a8 + 6);
  v18 = v17 < -90;
  if (v17 >= -90)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (*(a8 + 229) > -85)
  {
    v18 = v19;
  }

  if (*(a8 + 230) > -85)
  {
    ++v18;
  }

  if (*(a8 + 231) > -85)
  {
    ++v18;
  }

  if (v18 <= 1)
  {
    v20 = 15;
  }

  else
  {
    v20 = 45;
  }

  v21 = v20 * (a5 + a4) / 0x64;
  if (v21 < a3 || (a4 / 0x14 >= a5 ? (v22 = 1) : (v22 = 2), a6 ? (v23 = v22) : (v23 = a4 / 0x14 < a5), v21 < *(a8 + 28)))
  {
    v23 = 1;
  }

  if (*(a8 + 40) >= 4u)
  {
    goto LABEL_29;
  }

  v24 = *(a8 + 42);
  if (*(a8 + 42))
  {
    LOWORD(a10) = *(a8 + 28);
    v25 = (LODWORD(a10) * 100.0) / v24;
    if (v25 > 8.0)
    {
      goto LABEL_29;
    }

    LOWORD(v25) = *(a8 + 32);
    if (((LODWORD(v25) * 100.0) / v24) > 8.0)
    {
      goto LABEL_29;
    }
  }

  LOWORD(a9) = *(a8 + 70);
  v26 = (100 * (*(a8 + 64) + *(a8 + 52) + *(a8 + 74))) / LODWORD(a9);
  if (v26 <= 20.0)
  {
    if (v26 < 5.0)
    {
      *(result + 384) = 0;
    }

    goto LABEL_30;
  }

  v27 = ++*(result + 384);
  if (v27 >= 0x3C)
  {
LABEL_29:
    sub_100625738(result, a2, 60);
  }

LABEL_30:
  if (!v23)
  {
    *buf = &v37;
    v36 = v16 + 192;
LABEL_40:
    result = sub_10005E16C(v36, &v37);
    *(result[5] + 108) = 0;
    return result;
  }

  *buf = &v37;
  v28 = sub_10005E16C(v16 + 192, &v37);
  ++*(v28[5] + 108);
  v29 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = &v37;
    v30 = *(sub_10005E16C(v16 + 192, &v37)[5] + 108);
    *buf = &v37;
    v31 = *(sub_10005E16C(v16 + 192, &v37)[5] + 104);
    v32 = *(a7 + 16);
    v33 = *(a8 + 28);
    *buf = 67110912;
    *&buf[4] = a3;
    v39 = 1024;
    v40 = a4;
    v41 = 1024;
    v42 = a5;
    v43 = 1024;
    v44 = a6;
    v45 = 1024;
    v46 = v30;
    v47 = 1024;
    v48 = v31;
    v49 = 1024;
    v50 = v32;
    v51 = 1024;
    v52 = v33;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "AudioQuality PLC %u,RxCnt %u,Miss %u,LengthErr %u,Credit %u, total credit:%u,isHDR:%u,NAK %u", buf, 0x32u);
  }

  *buf = &v37;
  if (*(sub_10005E16C(v16 + 192, &v37)[5] + 108) >= 5u)
  {
    sub_100625738(v16, v37, 60);
  }

  *buf = &v37;
  result = sub_10005E16C(v16 + 192, &v37);
  if (*(result[5] + 108) >= 0xAu)
  {
    v34 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "AudioQuality need to trigger banner", buf, 2u);
    }

    *buf = &v37;
    v35 = sub_10005E16C(v16 + 192, &v37);
    ++*(v35[5] + 104);
    *buf = &v37;
    v36 = v16 + 192;
    goto LABEL_40;
  }

  return result;
}

void sub_1006366CC(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 4u)
    {
      v9 = &stru_100B0F9E0;
    }

    else
    {
      v9 = *(&off_100B03200 + (a3 & 7));
    }

    *buf = 138412290;
    v34 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: ----------Use Case-----------------%@ Target ePA Tx Power,Ant0(Ant1)----------------Power Caps----------------", buf, 0xCu);
  }

  if (a2)
  {
    v10 = 0;
    v11 = a1 + 408;
    v12 = 4 * a3 + 4;
    v13 = v12 + a4;
    v14 = (a4 + 23);
    v15 = v12;
    do
    {
      v16 = 0;
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v17 = &v32;
      v18 = &v31;
      v19 = &v30;
      v20 = &v29;
      v21 = 1;
      v28 = 0;
      do
      {
        v22 = v21;
        v23 = *(v11 + (v15 | (2 * v16)));
        *v18 = v23;
        v24 = *(v11 + v13 + 2 * v16);
        *v19 = v24;
        v25 = *(v11 + v10 + v14 + v16 * a2);
        *v20 = v25;
        if (v23 < v25)
        {
          v25 = v23;
        }

        if (v24 < v25)
        {
          LOBYTE(v25) = v24;
        }

        *v17 = v25;
        v17 = &v31 + 1;
        v18 = (&v30 + 1);
        v19 = (&v29 + 1);
        v20 = &v28;
        v16 = 1;
        v21 = 0;
      }

      while ((v22 & 1) != 0);
      v26 = sub_100632E78(a1, v10);
      v27 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138414338;
        v34 = v26;
        v35 = 2048;
        v36 = vcvtd_n_f64_u32(v32, 2uLL);
        v37 = 2048;
        v38 = vcvtd_n_f64_u32(HIBYTE(v31), 2uLL);
        v39 = 2048;
        v40 = vcvtd_n_f64_u32(v31, 2uLL);
        v41 = 2048;
        v42 = vcvtd_n_f64_u32(HIBYTE(v30), 2uLL);
        v43 = 2048;
        v44 = vcvtd_n_f64_u32(v30, 2uLL);
        v45 = 2048;
        v46 = vcvtd_n_f64_u32(HIBYTE(v29), 2uLL);
        v47 = 2048;
        v48 = vcvtd_n_f64_u32(v29, 2uLL);
        v49 = 2048;
        v50 = vcvtd_n_f64_u32(v28, 2uLL);
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "statedump: %@          %.2f(%.2f) dBm          [%.2f(%.2f),%.2f(%.2f),%.2f(%.2f)]", buf, 0x5Cu);
      }

      ++v10;
    }

    while (v10 != a2);
  }
}

void sub_100636974(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: -------------------------------Link------------------Target iPA Tx Power,Ant0(Ant1)-------------------------", buf, 2u);
  }

  if (a2)
  {
    v7 = 0;
    v8 = a3;
    v9 = (a1 + 413);
    v10 = a2;
    do
    {
      if (*(v9 - 2) >= v9[v8 - 2])
      {
        v11 = v9[v8 - 2];
      }

      else
      {
        v11 = *(v9 - 2);
      }

      if (*v9 >= v9[v8])
      {
        v12 = v9[v8];
      }

      else
      {
        v12 = *v9;
      }

      v13 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v14 = &stru_100B0F9E0;
        if (v7 <= 4u)
        {
          v14 = *(&off_100B03200 + (v7 & 7));
        }

        *buf = 138412802;
        v16 = v14;
        v17 = 2048;
        v18 = vcvtd_n_f64_u32(v11, 2uLL);
        v19 = 2048;
        v20 = vcvtd_n_f64_u32(v12, 2uLL);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:                              %5@                         %4.2f(%4.2f) dBm", buf, 0x20u);
      }

      v9 += 4;
      ++v7;
    }

    while (v10 != v7);
  }
}

void sub_100636B10(uint64_t a1)
{
  v2 = *(sub_10000C7D0() + 800);
  if ((v2 - 1) > 0x7CE)
  {
    if ((v2 - 2000) <= 0x7CF && *(a1 + 836) && *(a1 + 838) && *(a1 + 840))
    {
      sub_100633460(a1, v2);

      sub_100632FE0(a1, v2);
    }
  }

  else
  {
    v3 = *(a1 + 834);
    if (*(a1 + 834))
    {
      if (v3 <= 0xD3)
      {
        v4 = 8;
      }

      else
      {
        v4 = 12;
      }

      if (v3 <= 0xD3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 5;
      }

      v6 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 67109120;
        v7[1] = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: ===================================== Bluetooth Tx Power Targets (CC%d) ====================================", v7, 8u);
      }

      sub_1006366CC(a1, v4, 1, 23);
      if (v3 >= 0xD4)
      {
        sub_1006366CC(a1, 0xCu, 3, 23);
        sub_1006366CC(a1, 0xCu, 4, 23);
      }

      sub_100636974(a1, v5, 0x17u);
    }
  }
}

void sub_100636CCC(uint64_t a1)
{
  v2 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------- Audio Link Manager -------------------", v3, 2u);
  }

  sub_100636B10(a1);
}

void sub_100636D40(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = off_100B6F7C0;
  v11 = off_100B6F7C0;
  if (!off_100B6F7C0)
  {
    v5 = sub_10063D1E8();
    v9[3] = dlsym(v5, "tailspin_kdbg_filter_subclass_set");
    off_100B6F7C0 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, 1, a2, 1);
  }

  else
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"void BT::soft_tailspin_kdbg_filter_subclass_set(tailspin_config_t, uint8_t, uint8_t, BOOL)"];
    [v6 handleFailureInFunction:v7 file:@"AudioLinkManager.mm" lineNumber:114 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100636E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100636ECC(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_100B6F7C8;
  v9 = off_100B6F7C8;
  if (!off_100B6F7C8)
  {
    v3 = sub_10063D1E8();
    v7[3] = dlsym(v3, "tailspin_config_apply_sync");
    off_100B6F7C8 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"BOOL BT::soft_tailspin_config_apply_sync(const tailspin_config_t)"];
    [v4 handleFailureInFunction:v5 file:@"AudioLinkManager.mm" lineNumber:126 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100637018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100637048(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_100B6F7D0;
  v9 = off_100B6F7D0;
  if (!off_100B6F7D0)
  {
    v3 = sub_10063D1E8();
    v7[3] = dlsym(v3, "tailspin_config_free");
    off_100B6F7D0 = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void BT::soft_tailspin_config_free(tailspin_config_t)"];
    [v4 handleFailureInFunction:v5 file:@"AudioLinkManager.mm" lineNumber:120 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100637194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006371C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063723C;
  v3[3] = &unk_100ADF940;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063723C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 880) != v3)
  {
    *(v2 + 880) = v3;
    sub_100637260(v2);
  }
}

void sub_100637260(uint64_t a1)
{
  if (*(a1 + 344))
  {
    v2 = sub_10000C798();
    if ((*(*v2 + 160))(v2))
    {

      sub_10061EEB4(a1, 0);
    }

    else
    {
      v4 = sub_10000C798();
      if ((*(*v4 + 152))(v4))
      {
        if (*(a1 + 208))
        {
          v5 = *(a1 + 192);
          if (v5 != (a1 + 200))
          {
            v6 = 0;
            while (1)
            {
              v7 = *(v5[5] + 80);
              if (v7)
              {
                break;
              }

              v8 = v5[1];
              if (v8)
              {
                do
                {
                  v9 = v8;
                  v8 = *v8;
                }

                while (v8);
              }

              else
              {
                do
                {
                  v9 = v5[2];
                  v10 = *v9 == v5;
                  v5 = v9;
                }

                while (!v10);
              }

              v6 |= v7;
              v5 = v9;
              if (v9 == (a1 + 200))
              {
                if ((v6 & 1) == 0)
                {
                  return;
                }

                break;
              }
            }

            if (*(a1 + 872) != 3)
            {
              v11 = sub_10000E92C();
              if (((*(*v11 + 368))(v11) & 1) == 0)
              {

                sub_100635D6C(a1);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v3 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stack is not ready, cannot update device orientation", v12, 2u);
    }
  }
}

void sub_100637424(uint64_t a1, int a2)
{
  v2 = *(a1 + 192);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063723C;
  v3[3] = &unk_100ADF940;
  v3[4] = a1 - 64;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_1006374C8(uint64_t a1, unint64_t a2)
{
  v28 = a2;
  __p[0] = &v28;
  v3 = sub_10005E16C(a1 + 192, &v28);
  v4 = *(a1 + 1248);
  if (v4)
  {
    v5 = *(v3[5] + 92);
    v6 = (a1 + 1248);
    v7 = a1 + 1248;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= v5;
      v10 = v8 < v5;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != v6 && v5 >= *(v7 + 32))
    {
      v11 = *(a1 + 1240);
      if (v11 != v6)
      {
        v12 = 0;
        while (1)
        {
          if (qword_100B508F0 != -1)
          {
            sub_100853FB4();
          }

          v13 = *(v11[5] + 8);
          v14 = *(v13 + 4);
          LODWORD(__p[0]) = *v13;
          WORD2(__p[0]) = v14;
          v15 = sub_1000E6554(off_100B508E8, __p, 1);
          v16 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v15, __p);
            v17 = v27;
            v18 = __p[0];
            v19 = sub_1005491CC(v15);
            *buf = 136315394;
            v20 = __p;
            if (v17 < 0)
            {
              v20 = v18;
            }

            v30 = v20;
            v31 = 1024;
            v32 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter %s spatial allowed %d", buf, 0x12u);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v21 = sub_1005491CC(v15);
          if (v21 != 1)
          {
            break;
          }

          v22 = v11[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v11[2];
              v24 = *v23 == v11;
              v11 = v23;
            }

            while (!v24);
          }

          v12 |= v21 == 1;
          v11 = v23;
          if (v23 == v6)
          {
            return v12 & 1;
          }
        }
      }
    }
  }

  v12 = 0;
  return v12 & 1;
}

void sub_1006376F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063771C(uint64_t a1, int a2)
{
  v2 = *(a1 + 1264);
  if (v2)
  {
    if (a2)
    {
      v4 = sub_100017E6C();
      (*(*v4 + 160))(v4, *(a1 + 216));
      v5 = sub_100017E6C();
      sub_100532818(v5 + 744, a1 + 32);
      v6 = **(a1 + 216);
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 1264);
      if (v6 == 1)
      {
        *(v8 + 16) = Current;
        *(v8 + 24) = 0;
      }

      else
      {
        *(v8 + 24) = Current;
        *(v8 + 16) = 0;
      }
    }

    else
    {
      v9 = **(a1 + 216);
      v10 = CFAbsoluteTimeGetCurrent();
      v11 = 24;
      if (v9)
      {
        v11 = 16;
      }

      *(v2 + 48) += (v10 - *(*(a1 + 1264) + v11));
      v12 = sub_100017E6C();
      sub_100532AB8(v12 + 744, a1 + 32);
      **(a1 + 216) = 1;
    }
  }
}

BOOL sub_100637810(void *a1, uint64_t a2, void *a3)
{
  v3 = a1[157];
  if (v3 < 2)
  {
    v7 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wireless Splitter - getWirelessSplitterAddresses, disabled", buf, 2u);
    }
  }

  else
  {
    v5 = a1[156];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = v5[1];
      }

      while (v5);
    }

    else
    {
      v8 = a1 + 156;
      do
      {
        v6 = v8[2];
        v9 = *v6 == v8;
        v8 = v6;
      }

      while (v9);
    }

    v10 = v6[5];
    v11 = *(*(a1[155] + 40) + 8);
    v12 = *(v11 + 2);
    v27 = *v11;
    v28 = v12;
    v13 = *(v10 + 8);
    v14 = *(v13 + 4);
    LODWORD(v13) = *v13;
    v25 = v13;
    v26 = v14;
    *a2 = v27;
    *(a2 + 4) = v12;
    *(a2 + 6) = v13;
    *(a2 + 10) = v14;
    v15 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v27, buf);
      v16 = v24;
      v17 = *buf;
      sub_1000BE6F8(&v25, __p);
      v18 = buf;
      if (v16 < 0)
      {
        v18 = v17;
      }

      if (v22 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      *v29 = 136315394;
      v30 = v18;
      v31 = 2080;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter - getWirelessSplitterAddresses, enabled user1: %s user2: %s", v29, 0x16u);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v24 < 0)
      {
        operator delete(*buf);
      }
    }

    *a3 = 2;
  }

  return v3 > 1;
}

void sub_100637A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100637A2C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 1240);
  v3 = (a1 + 1248);
  if (v2 != (a1 + 1248))
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 16);
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = *a2;
        v9 = v5 - *a2;
        v10 = v9 >> 1;
        if (v9 >> 1 <= -2)
        {
          sub_1000C7698();
        }

        v11 = v7 - v8;
        if (v11 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v11;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          sub_1003705C4(a2, v13);
        }

        *(2 * v10) = v6;
        v5 = (2 * v10 + 2);
        memcpy(0, v8, v9);
        v14 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 2;
      }

      a2[1] = v5;
      v15 = v2[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v2[2];
          v17 = *v16 == v2;
          v2 = v16;
        }

        while (!v17);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }
}

void sub_100637B6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100637B88(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_100853CDC();
  }

  v2 = sub_1005D09A8(off_100B50AC8, *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v14 = 0;
    sub_1000216B4(&v14);
    v4 = sub_100320D94(v3 + 400);
    v5 = sub_100210C40(v4, (*(a1 + 48) & 1) == 0);
    sub_100022214(&v14);
    *(*(*(a1 + 32) + 8) + 24) = v5 != 0;
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      sub_1000E5A58(*(a1 + 40), __p);
      v8 = "re-enabled";
      if (v7)
      {
        v8 = "disabled";
      }

      v9 = "successfully";
      if (v5)
      {
        v9 = "not successfully";
      }

      *buf = 136315650;
      *&buf[4] = v9;
      if (v16 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      v18 = 2080;
      v19 = v8;
      v20 = 2082;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter %s %s inband ringtone for phone call support for device %{public}s", buf, 0x20u);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }

    sub_10002249C(&v14);
  }

  else
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      if (v12)
      {
        sub_1000E5A58(v12, buf);
        if (v20 >= 0)
        {
          v13 = buf;
        }

        else
        {
          v13 = *buf;
        }

        *__p = 136446210;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter looks like HFP Service for device %{public}s is not available", __p, 0xCu);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        *__p = 136446210;
        *&__p[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter looks like HFP Service for device %{public}s is not available", __p, 0xCu);
      }
    }
  }
}

void sub_100637E14(uint64_t a1)
{
  v1 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100637E88;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_100637E88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 350) & 1) == 0)
  {
    *(v1 + 392) = CFAbsoluteTimeGetCurrent();
    *(v1 + 350) = 1;
  }
}

void sub_100637EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100637F34;
  v3[3] = &unk_100AE0860;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

void *sub_100637F34(void *result)
{
  v1 = result[4];
  if ((*(v1 + 349) & 1) == 0 && *(v1 + 350) == 1)
  {
    v3 = result + 5;
    v2 = result[5];
    if (v2)
    {
      v4 = *(v1 + 200);
      if (v4)
      {
        v5 = v1 + 192;
        v6 = v1 + 200;
        do
        {
          v7 = *(v4 + 32);
          v8 = v7 >= v2;
          v9 = v7 < v2;
          if (v8)
          {
            v6 = v4;
          }

          v4 = *(v4 + 8 * v9);
        }

        while (v4);
        if (v6 != v1 + 200 && v2 >= *(v6 + 32))
        {
          result = sub_10005E16C(v5, v3);
          if (*(result[5] + 32))
          {
            v10 = *(v1 + 392);
            *(*(sub_10005E16C(v5, v3)[5] + 32) + 32) = v10;
            Current = CFAbsoluteTimeGetCurrent();
            v12 = Current - *(*(sub_10005E16C(v5, v3)[5] + 32) + 32);
            result = sub_10005E16C(v5, v3);
            *(*(result[5] + 32) + 104) = v12;
          }
        }
      }
    }

    *(v1 + 349) = 1;
  }

  return result;
}

void sub_100638090(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10063810C;
  block[3] = &unk_100AEDA80;
  block[4] = a1;
  block[5] = a2;
  v7 = a4;
  v6 = a3;
  dispatch_async(v4, block);
}

void *sub_10063810C(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result;
    v4 = result[4];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5 - 8;
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v1 >= *(v9 + 32))
      {
        result = sub_10005E16C(v8, v2);
        if (*result[5])
        {
          v13 = sub_10005E16C(v8, v2);
          ++*(*v13[5] + 288);
          v14 = sub_10005E16C(v8, v2);
          ++*(*v14[5] + 280);
          v15 = *(v3 + 52);
          v16 = sub_10005E16C(v8, v2);
          *(*v16[5] + 264) += v15;
          v17 = *(v3 + 12);
          result = sub_10005E16C(v8, v2);
          *(*result[5] + 272) += v17;
        }
      }
    }
  }

  return result;
}

void sub_10063828C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 256);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100638308;
  v6[3] = &unk_100AF6B90;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_async(v5, v6);
}

void *sub_100638308(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result;
    v4 = result[4];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5 - 8;
      v9 = v5;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= v1;
        v12 = v10 < v1;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v5 && v1 >= *(v9 + 32))
      {
        if (*sub_10005E16C(v8, v2)[5])
        {
          Current = CFAbsoluteTimeGetCurrent();
          *(*sub_10005E16C(v8, v2)[5] + 200) = Current;
          v14 = CFAbsoluteTimeGetCurrent();
          *(*sub_10005E16C(v8, v2)[5] + 216) = v14;
        }

        result = sub_10005E16C(v8, v2);
        if (*(result[5] + 32))
        {
          v15 = CFAbsoluteTimeGetCurrent();
          *(*(sub_10005E16C(v8, v2)[5] + 32) + 16) = v15;
          v16 = CFAbsoluteTimeGetCurrent();
          *(*(sub_10005E16C(v8, v2)[5] + 32) + 40) = v16;
          v17 = v3[12];
          *(*(sub_10005E16C(v8, v2)[5] + 32) + 56) = v17;
          v18 = v3[13];
          *(*(sub_10005E16C(v8, v2)[5] + 32) + 64) = v18;
          v19 = v3[14];
          result = sub_10005E16C(v8, v2);
          *(*(result[5] + 32) + 124) = v19;
        }
      }
    }
  }

  return result;
}

void sub_100638540(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006385B8;
  block[3] = &unk_100AE0880;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void *sub_1006385B8(void *result)
{
  v2 = result + 5;
  v1 = result[5];
  if (v1)
  {
    v3 = result[4];
    v4 = v3[25];
    if (v4)
    {
      v5 = result;
      v6 = (v3 + 24);
      v7 = v3 + 25;
      do
      {
        v8 = v4[4];
        v9 = v8 >= v1;
        v10 = v8 < v1;
        if (v9)
        {
          v7 = v4;
        }

        v4 = v4[v10];
      }

      while (v4);
      if (v7 != v3 + 25 && v1 >= v7[4])
      {
        if (*sub_10005E16C(v6, v2)[5])
        {
          Current = CFAbsoluteTimeGetCurrent();
          *(*sub_10005E16C(v6, v2)[5] + 208) = Current;
          v12 = CFAbsoluteTimeGetCurrent();
          *(*sub_10005E16C(v6, v2)[5] + 224) = v12;
          v13 = *(*sub_10005E16C(v6, v2)[5] + 208);
          v14 = v13 - *(*sub_10005E16C(v6, v2)[5] + 200);
          v15 = *sub_10005E16C(v6, v2)[5];
          LODWORD(v16) = *(v15 + 232);
          *(v15 + 232) = (v14 + v16);
          v17 = *(*sub_10005E16C(v6, v2)[5] + 224);
          v18 = v17 - *(*sub_10005E16C(v6, v2)[5] + 216);
          v19 = *sub_10005E16C(v6, v2)[5];
          LODWORD(v20) = *(v19 + 248);
          *(v19 + 248) = (v18 + v20);
        }

        result = sub_10005E16C(v6, v2);
        if (*(result[5] + 32))
        {
          v21 = CFAbsoluteTimeGetCurrent();
          *(*(sub_10005E16C(v6, v2)[5] + 32) + 24) = v21;
          v22 = CFAbsoluteTimeGetCurrent();
          *(*(sub_10005E16C(v6, v2)[5] + 32) + 48) = v22;
          v23 = *(*(sub_10005E16C(v6, v2)[5] + 32) + 24);
          v24 = (v23 - *(*(sub_10005E16C(v6, v2)[5] + 32) + 16));
          *(*(sub_10005E16C(v6, v2)[5] + 32) + 8) = v24;
          v25 = *(*(sub_10005E16C(v6, v2)[5] + 32) + 48);
          v26 = (v25 - *(*(sub_10005E16C(v6, v2)[5] + 32) + 40));
          *(*(sub_10005E16C(v6, v2)[5] + 32) + 4) = v26;
          v27 = *(v5 + 12);
          *(*(sub_10005E16C(v6, v2)[5] + 32) + 120) = v27;
          return sub_1006389C0(v3, v5[5]);
        }
      }
    }
  }

  return result;
}

void *sub_1006389C0(void *result, unint64_t a2)
{
  v14 = a2;
  if (a2)
  {
    v2 = result;
    v3 = result[25];
    if (v3)
    {
      v4 = (result + 24);
      v5 = result + 25;
      do
      {
        v6 = v3[4];
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v3;
        }

        v3 = v3[v8];
      }

      while (v3);
      if (v5 != result + 25 && v5[4] <= a2)
      {
        v15 = &v14;
        result = sub_10005E16C(v4, &v14);
        if (*(result[5] + 32))
        {
          v12 = 0;
          v13 = 0;
          sub_1000C2364(v14, &v13 + 1, &v13, &v12, &v12 + 1);
          v9 = v12;
          v15 = &v14;
          *(*(sub_10005E16C(v4, &v14)[5] + 32) + 112) = v9;
          v10 = sub_10000F034();
          v15 = &v14;
          v11 = sub_10005E16C(v4, &v14);
          (*(*v10 + 72))(v10, *(v11[5] + 32));
          v15 = &v14;
          *(*(sub_10005E16C(v4, &v14)[5] + 32) + 116) = 0;
          v15 = &v14;
          *(*(sub_10005E16C(v4, &v14)[5] + 32) + 8) = 0;
          v15 = &v14;
          result = sub_10005E16C(v4, &v14);
          *(*(result[5] + 32) + 4) = 0;
          *(v2 + 349) = 0;
          v2[49] = 0;
        }
      }
    }
  }

  return result;
}

std::string *sub_100638B98@<X0>(char a1@<W1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = "";
  sub_100007E30(a2, "");
  if ((a1 + 1) < 5u)
  {
    v4 = off_100B03228[(a1 + 1)];
  }

  return std::string::assign(a2, v4);
}

void sub_100638C0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100638C28(uint64_t a1, void *a2, int a3, char a4, int a5, int a6)
{
  v10 = a2;
  __p = 0;
  v32 = 0uLL;
  sub_100007E30(&__p, "");
  if (a3 == 255)
  {
    memset(&v30, 0, sizeof(v30));
    sub_100638B98(a4, &v30);
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &v30;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v30.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v12;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Overwriting the 'unknown->%s' spatial transition string with '%s->%s'", &buf, 0x20u);
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    memset(&buf, 0, sizeof(buf));
    p_buf = &buf;
    sub_1003A5170(&buf, size + 2);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v30;
      }

      else
      {
        v15 = v30.__r_.__value_.__r.__words[0];
      }

      memmove(p_buf, v15, size);
    }

    strcpy(p_buf + size, "->");
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v30;
    }

    else
    {
      v16 = v30.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v30.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&buf, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    v33.__r_.__value_.__r.__words[0] = v18->__r_.__value_.__l.__size_;
    *(v33.__r_.__value_.__r.__words + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    __p = v19;
    *&v32 = v33.__r_.__value_.__r.__words[0];
    *(&v32 + 7) = *(v33.__r_.__value_.__r.__words + 7);
    HIBYTE(v32) = v20;
  }

  else
  {
    sub_100638B98(a3, &v30);
    v21 = std::string::append(&v30, "->");
    v22 = *&v21->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_100638B98(a4, &v33);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v33;
    }

    else
    {
      v23 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v33.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&buf, v23, v24);
    v26 = v25->__r_.__value_.__r.__words[0];
    v34[0] = v25->__r_.__value_.__l.__size_;
    *(v34 + 7) = *(&v25->__r_.__value_.__r.__words[1] + 7);
    v27 = HIBYTE(v25->__r_.__value_.__r.__words[2]);
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    __p = v26;
    *&v32 = v34[0];
    *(&v32 + 7) = *(v34 + 7);
    HIBYTE(v32) = v27;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  memset(&buf, 0, sizeof(buf));
  if (a5)
  {
    v28 = "On";
  }

  else
  {
    v28 = "Off";
  }

  sub_100007E30(&buf, v28);
  std::string::append(&buf, "->");
  if (a6)
  {
    v29 = "On";
  }

  else
  {
    v29 = "Off";
  }

  std::string::append(&buf, v29);
  operator new();
}

void sub_1006390FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006391C0(uint64_t result)
{
  if (*(result + 160) == 1)
  {
    v9 = v1;
    v10 = v2;
    v3 = result;
    if (*(result + 152))
    {
      sub_10062F4E8(result, &v7);
      v4 = *(v3 + 152);
      if (*(v4 + 47) < 0)
      {
        operator delete(*(v4 + 24));
      }

      *(v4 + 24) = v7;
      *(v4 + 40) = v8;
      v5 = sub_10000F034();
      result = (*(*v5 + 192))(v5, *(v3 + 152));
      v6 = *(v3 + 152);
      if (v6)
      {
        if (*(v6 + 151) < 0)
        {
          operator delete(*(v6 + 128));
        }

        if (*(v6 + 111) < 0)
        {
          operator delete(*(v6 + 88));
        }

        if (*(v6 + 71) < 0)
        {
          operator delete(*(v6 + 48));
        }

        if (*(v6 + 47) < 0)
        {
          operator delete(*(v6 + 24));
        }

        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        operator delete();
      }

      *(v3 + 152) = 0;
      *(v3 + 160) = 0;
    }
  }

  return result;
}

void sub_1006392D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = qword_100BCE8D0;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AudioLinkManager setSpatialModeWithBundleID：%@, mode:%u, headtrack:%u", buf, 0x18u);
    }

    if (*(a1 + 1296) == 1)
    {
      v9 = [NSNumber numberWithBool:a4, @"kCBMsgArgParamSpatialHeadTracking"];
      v14[1] = @"kCBMsgArgParamSpatialMode";
      v15[0] = v9;
      v10 = [NSNumber numberWithUnsignedInt:a3];
      v15[1] = v10;
      v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

      v12 = sub_100639508(a1);
      v13 = *(a1 + 1304);
      *(a1 + 1304) = v12;

      [*(a1 + 1304) setObject:v11 forKey:v7];
    }

    else
    {
      if (qword_100B50AA0 != -1)
      {
        sub_1008547F4();
      }

      sub_1005A608C(off_100B50A98, v7, a3, a4);
    }

    sub_1000E6C1C(a1, a4, a3);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854E14();
  }
}

id sub_100639508(uint64_t a1)
{
  if (*(a1 + 1296) == 1 && (v1 = *(a1 + 1304)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100853C50();
    }

    v2 = sub_1005A6278(off_100B50A98);
  }

  return v2;
}

void sub_100639570(uint64_t a1, void *a2, unsigned __int8 *a3, int *a4)
{
  v7 = a2;
  v8 = *(a1 + 1304);
  if (!v8)
  {
    v9 = sub_100639508(a1);
    v10 = *(a1 + 1304);
    *(a1 + 1304) = v9;

    v8 = *(a1 + 1304);
  }

  v11 = [v8 objectForKey:v7];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKey:@"kCBMsgArgParamSpatialMode"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 unsignedIntValue];
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100854E50();
      }

      if ([v7 caseInsensitiveCompare:@"com.apple.facetime"])
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }
    }

    *a4 = v15;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_100854E8C();
    }

    if ([v7 caseInsensitiveCompare:@"com.apple.facetime"])
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    *a4 = v16;
  }

  v17 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *a4;
    v19 = *a3;
    v20 = 138412802;
    v21 = v7;
    v22 = 1024;
    v23 = v18;
    v24 = 1024;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AudioLinkManager getSpatialModeWithBundleIDInSplitter : %@=>%u,%u", &v20, 0x18u);
  }
}

void sub_10063977C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006397F4;
  block[3] = &unk_100AEAF08;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void sub_1006397F4(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (v1)
  {
    v4 = *(a1 + 32);
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      v8 = v5;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v1;
        v11 = v9 < v1;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && v1 >= *(v8 + 32))
      {
        v12 = *(a1 + 48);
        *buf = a1 + 40;
        *(sub_10005E16C(v5 - 8, v2)[5] + 94) = v12;
        if (qword_100B508E0 != -1)
        {
          sub_100854EC8();
        }

        sub_100519738(off_100B508D8, *v2);
        v13 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 48))
          {
            v14 = "Active";
          }

          else
          {
            v14 = "Not Active";
          }

          *buf = 136446210;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Spatial Audio %{public}s", buf, 0xCu);
        }
      }
    }
  }
}

uint64_t sub_100639958(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100639A08;
  block[3] = &unk_100AE0EB8;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *sub_100639A08(void *result)
{
  v1 = result + 6;
  v2 = result[6];
  if (v2)
  {
    v3 = result;
    v4 = result[5];
    v7 = *(v4 + 200);
    v5 = v4 + 200;
    v6 = v7;
    if (v7)
    {
      result = (v5 - 8);
      v8 = v5;
      do
      {
        v9 = *(v6 + 32);
        v10 = v9 >= v2;
        v11 = v9 < v2;
        if (v10)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * v11);
      }

      while (v6);
      if (v8 != v5 && v2 >= *(v8 + 32))
      {
        result = sub_10005E16C(result, v1);
        *(*(v3[4] + 8) + 24) = *(result[5] + 94);
      }
    }
  }

  return result;
}

uint64_t sub_100639AAC()
{
  os_eligibility_get_domain_answer();
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100854EF0();
  }

  return 0;
}

void sub_100639BFC(uint64_t a1, void *a2)
{
  v4 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 280);
  objc_storeStrong((a1 + 920), a2);
  *(a1 + 929) = v4 != 0;
  v5 = sub_1000DAB84();
  sub_10000CA94(v5, &stru_100B02F30);
  sub_1000088CC(v6);
}

void sub_100639C9C(id a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;

  sub_1004DB318(v2);
}

id sub_100639CE0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 280);
  v2 = *(a1 + 920);
  sub_1000088CC(v4);

  return v2;
}

uint64_t sub_100639D40()
{
  v0 = *(*sub_10000C798() + 840);

  return v0();
}

void sub_100639D94(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100639E0C;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100639E0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Spatial Profile Allowed change to %d ", v7, 8u);
  }

  *(v2 + 928) = *(a1 + 40);
  if (qword_100B50AA0 != -1)
  {
    sub_1008547F4();
  }

  if (*(v2 + 928))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  sub_1005A5E40(off_100B50A98, v5);
  v6 = sub_1000DAB84();
  sub_10000CA94(v6, &stru_100B02F50);
}

void sub_100639F0C(id a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;

  sub_1004DB318(v2);
}

void sub_100639F50(uint64_t a1, char a2)
{
  v2 = *(a1 + 144);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100639E0C;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 112;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_100639FCC(uint64_t a1, uint64_t a2)
{
  if (sub_1000E012C(a2, 64))
  {
    v4 = sub_10000C798();
    v5 = (*(*v4 + 840))(v4, 3);
  }

  else
  {
    v5 = 0;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100853C50();
  }

  v6 = sub_10059A098(off_100B50A98);
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 280);
  v7 = *(a1 + 920);
  sub_10000801C(v16);
  if (a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "NO";
      v11 = *(a1 + 928);
      *buf = 136316162;
      if (v7)
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      v18 = "YES";
      if (v6 == 1)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      v19 = 2080;
      v20 = v12;
      if (v11)
      {
        v10 = "YES";
      }

      v21 = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = "YES";
      v25 = 2080;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile User preference, Support = %s Enrollment = %s User Choice = %s Owned Device %s Allowed %s", buf, 0x34u);
    }

    v14 = 0;
    if (v7 && v6 == 1)
    {
      v14 = *(a1 + 928);
    }
  }

  else
  {
    v14 = 0;
  }

  sub_1000088CC(v16);
  return v14 & 1;
}

void sub_10063A1B8(uint64_t a1, char a2)
{
  v2 = *(a1 + 256);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063A230;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063A244(uint64_t a1, char a2)
{
  v2 = *(a1 + 128);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10063A230;
  v3[3] = &unk_100AE15D8;
  v3[4] = a1 - 128;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10063A2C0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = _os_feature_enabled_impl();
  if (a3 && v6)
  {
    if (sub_10010C5DC(*(a1 + 224), a3))
    {
      v7 = *(a1 + 256);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10063A37C;
      block[3] = &unk_100AEAF08;
      v9 = a2;
      block[4] = a1;
      block[5] = a3;
      dispatch_async(v7, block);
    }
  }
}

void sub_10063A390(uint64_t a1, unint64_t a2, int a3)
{
  v9[0] = a2;
  v9[2] = v9;
  v4 = *(sub_10005E16C(a1 + 192, v9)[5] + 92);
  v5 = sub_1000DAB84();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10063A448;
  v6[3] = &unk_100B02F70;
  v7 = v4;
  v8 = a3 == 240;
  sub_10000CA94(v5, v6);
}

void sub_10063A448(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10085431C();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);

  sub_1004DF8B0(v2, v3, v4);
}

void sub_10063A4A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1000D999C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10063A524;
  v6[3] = &unk_100AE15D8;
  v6[4] = a2;
  v7 = a3;
  sub_10000CA94(v5, v6);
}

uint64_t sub_10063A524(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_100853CDC();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);

    return sub_1005E4B8C(v2, v3, v4);
  }

  return result;
}

void sub_10063A588(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 && ((sub_10010C5DC(*(a1 + 224), a2) & 1) != 0 || !a4))
  {
    v6 = sub_1000DAB84();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10063A624;
    v7[3] = &unk_100AE15D8;
    v7[4] = a2;
    v8 = a4;
    sub_10000CA94(v6, v7);
  }
}

uint64_t sub_10063A624(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_100853CDC();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);

    return sub_1005D328C(v2, v3, v4);
  }

  return result;
}

void sub_10063A688(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  sub_10054F9BC(a2, a3);
  if (qword_100B512B8 != -1)
  {
    sub_100854F60();
  }

  v5 = qword_100B512B0;

  sub_10031A678(v5, a2, v3);
}

void sub_10063A6F0(uint64_t a1, char a2, int *a3, char a4, int a5, int a6, char a7, char a8, __int16 a9)
{
  v15 = *a3;
  v16 = *(a3 + 2);
  v9 = *(a1 + 256);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10063A790;
  v10[3] = &unk_100AF6B90;
  v10[4] = a1;
  v14 = a2;
  v17 = a4;
  v11 = a5;
  v12 = a6;
  v18 = a7;
  v19 = a8;
  v13 = a9;
  dispatch_async(v9, v10);
}

void sub_10063A7E4(uint64_t a1, int a2, unsigned __int8 *a3, char a4, __int16 a5, uint64_t a6)
{
  if (_os_feature_enabled_impl())
  {
    v12 = (*a3 << 40) | (a3[1] << 32) | (a3[2] << 24) | (a3[3] << 16);
    v13 = a3[4];
    v14 = a3[5];
    v15 = *(a1 + 256);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10063A8DC;
    v16[3] = &unk_100B02F90;
    v17 = a2;
    v16[4] = a1;
    v16[5] = v12 | (v13 << 8) | v14;
    v19 = a4;
    v18 = a5;
    v16[6] = a6;
    dispatch_async(v15, v16);
  }
}

uint64_t sub_10063A8FC(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v6 = *(sub_100632D10(a1, a3) + 24);
  v7 = sub_100632D10(a1, a3);
  v8 = v7;
  if (a2 != 7)
  {
    v12 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 216);
      v14 = *(v13 + 8 * a2 + 176);
      v13 += 48;
      v15 = *(v13 + 8 * v6);
      v16 = *(v13 + 8 * *(v8 + 24));
      v18 = 136446722;
      v19 = v14;
      v20 = 2082;
      v21 = v15;
      v22 = 2082;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unhandled Low Latency Game Transition: %{public}s. State: %{public}s -> %{public}s.", &v18, 0x20u);
    }

    return 0;
  }

  if (v6 != 13 && v6 != 10)
  {
    if ((v6 - 11) <= 1)
    {
      *(v7 + 24) = 8;
      sub_10010E8E0(*(a1 + 224), 3, a3);
      return 1;
    }

    return 0;
  }

  *(v7 + 24) = 12;
  v10 = *(a1 + 224);
  v11 = 1;
  sub_10010E55C(v10, 1, a3);
  return v11;
}

void sub_10063AA70(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4)
{
  v4 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10063AAEC;
  block[3] = &unk_100AE0880;
  v6 = a2;
  v7 = a3;
  block[4] = a1;
  block[5] = a4;
  dispatch_async(v4, block);
}

void sub_10063AAEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10062D8E8(v2, *(a1 + 48));
  v19 = v3;
  sub_100625738(v2, v3, 60);
  if (v3)
  {
    v5 = (v2 + 200);
    v4 = *(v2 + 200);
    if (v4)
    {
      v6 = (v2 + 200);
      do
      {
        v7 = v4[4];
        v8 = v7 >= v3;
        v9 = v7 < v3;
        if (v8)
        {
          v6 = v4;
        }

        v4 = v4[v9];
      }

      while (v4);
      if (v6 != v5 && v3 >= v6[4])
      {
        block = &v19;
        if (*(sub_10005E16C(v2 + 192, &v19)[5] + 24))
        {
          block = &v19;
          v10 = sub_10005E16C(v2 + 192, &v19);
          ++*(*(v10[5] + 24) + 180);
        }
      }
    }

    if (v19)
    {
      v11 = *v5;
      if (*v5)
      {
        v12 = (v2 + 200);
        do
        {
          v13 = v11[4];
          v8 = v13 >= v19;
          v14 = v13 < v19;
          if (v8)
          {
            v12 = v11;
          }

          v11 = v11[v14];
        }

        while (v11);
        if (v12 != v5 && v19 >= v12[4])
        {
          block = &v19;
          if (*(sub_10005E16C(v2 + 192, &v19)[5] + 32))
          {
            block = &v19;
            v15 = sub_10005E16C(v2 + 192, &v19);
            ++*(*(v15[5] + 32) + 116);
          }
        }
      }
    }
  }

  if (*(a1 + 50) >= 0x33u)
  {
    v16 = *(a1 + 40);
    v17 = *(v2 + 256);
    block = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10062E544;
    v23 = &unk_100AEC130;
    v24 = v2;
    v25 = v19;
    v26 = v16;
    dispatch_async(v17, &block);
    v18 = *(v2 + 256);
    block = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100631640;
    v23 = &unk_100AFA2C0;
    v24 = v2;
    v25 = v19;
    v27 = 256;
    v26 = 0;
    dispatch_async(v18, &block);
  }
}

void sub_10063AD60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updating the tipiConnection state for a2dp audio packet flush metrics: %d", buf, 8u);
  }

  v7 = *(a1 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10063AE6C;
  block[3] = &unk_100AEAF08;
  block[4] = a1;
  block[5] = a2;
  v9 = a3;
  dispatch_async(v7, block);
}

void *sub_10063AE6C(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[4];
    v5 = *(v2 + 200);
    v3 = v2 + 200;
    v4 = v5;
    if (v5)
    {
      v6 = v3;
      do
      {
        v7 = *(v4 + 32);
        v8 = v7 >= v1;
        v9 = v7 < v1;
        if (v8)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * v9);
      }

      while (v4);
      if (v6 != v3 && v1 >= *(v6 + 32))
      {
        v10 = *(result + 48);
        result = sub_10005E16C(v3 - 8, result + 5);
        *(result[5] + 40) = v10;
      }
    }
  }

  return result;
}

void *sub_10063AF08(uint64_t a1, unint64_t a2)
{
  v31[0] = a2;
  *&v27 = v31;
  v3 = sub_10005E16C(a1 + 192, v31);
  std::string::assign((*(v3[5] + 24) + 40), "No");
  *&v27 = v31;
  v4 = sub_10005E16C(a1 + 192, v31);
  std::string::assign((*(v4[5] + 24) + 88), "2.4G");
  *&v27 = v31;
  v5 = sub_10005E16C(a1 + 192, v31);
  std::string::assign((*(v5[5] + 24) + 112), "0000");
  *&v27 = v31;
  *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 164) = 0;
  v29 = 0;
  v30 = 0;
  result = v31[0];
  if (v31[0])
  {
    sub_1000C2364(v31[0], &v30 + 1, &v30, &v29, &v29 + 1);
    v7 = v29;
    *&v27 = v31;
    *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 36) = v7;
    v8 = v31[0];
    if (*(v31[0] + 1436) == 1)
    {
      *&v27 = v31;
      v9 = sub_10005E16C(a1 + 192, v31);
      std::string::assign((*(v9[5] + 24) + 40), "Yes");
      v8 = v31[0];
    }

    sub_10063B444(a1, v8);
    *&v27 = v31;
    v10 = *sub_10005E16C(a1 + 192, v31)[5];
    *&v27 = v31;
    v11 = sub_10005E16C(a1 + 192, v31);
    std::string::operator=((*(v11[5] + 24) + 64), v10 + 19);
    if (*(v31[0] + 1437) == 1)
    {
      *&v27 = v31;
      v12 = sub_10005E16C(a1 + 192, v31);
      std::string::assign((*(v12[5] + 24) + 88), "5G");
    }

    *&v27 = v31;
    v13 = *(sub_10005E16C(a1 + 192, v31)[5] + 24);
    v14 = *(v13 + 200);
    if (v14 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v13 + 196) / v14;
    }

    *&v27 = v31;
    *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 192) = v15;
    if (sub_1000E2140(v31[0], 12))
    {
      sub_1000E2D2C(v31[0], 0xAu, &v27);
      v31[2] = v31;
      v16 = *(sub_10005E16C(a1 + 192, v31)[5] + 24);
      if (*(v16 + 135) < 0)
      {
        operator delete(*(v16 + 112));
      }

      *(v16 + 112) = v27;
      *(v16 + 128) = v28;
    }

    *&v27 = v31;
    v17 = *(*(sub_10005E16C(a1 + 192, v31)[5] + 48) + 16);
    *&v27 = v31;
    *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 136) = v17;
    *&v27 = v31;
    v18 = *(sub_10005E16C(a1 + 192, v31)[5] + 24);
    v19 = v18[6];
    if (v19)
    {
      v20 = *v18 / v19;
    }

    else
    {
      v20 = 0;
    }

    *&v27 = v31;
    *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 140) = v20;
    *&v27 = v31;
    v21 = *(sub_10005E16C(a1 + 192, v31)[5] + 24);
    v22 = *(v21 + 148);
    if (v22)
    {
      v23 = *(v21 + 172) / v22;
    }

    else
    {
      v23 = 0;
    }

    *&v27 = v31;
    *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 144) = v23;
    *&v27 = v31;
    v24 = *(sub_10005E16C(a1 + 192, v31)[5] + 24);
    v25 = *(v24 + 168);
    if (v25)
    {
      v26 = *(v24 + 176) / v25;
    }

    else
    {
      v26 = 0;
    }

    *&v27 = v31;
    *(*(sub_10005E16C(a1 + 192, v31)[5] + 24) + 152) = v26;
    *&v27 = v31;
    result = sub_10005E16C(a1 + 192, v31);
    if (*(result[5] + 40) == 1)
    {
      *&v27 = v31;
      result = sub_10005E16C(a1 + 192, v31);
      *(*(result[5] + 24) + 164) = 1;
    }
  }

  return result;
}

void sub_10063B428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063B444(uint64_t a1, unint64_t a2)
{
  v12 = a2;
  __p.__r_.__value_.__r.__words[0] = &v12;
  if (*sub_10005E16C(a1 + 192, &v12)[5])
  {
    __p.__r_.__value_.__r.__words[0] = &v12;
    v3 = sub_10005E16C(a1 + 192, &v12);
    std::string::assign((*v3[5] + 456), "Audio");
    v4 = *(a1 + 216);
    if (v4[8] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v5 = sub_10005E16C(a1 + 192, &v12);
      std::string::assign((*v5[5] + 456), "Video Spatial");
      v4 = *(a1 + 216);
    }

    if (v4[7] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v6 = sub_10005E16C(a1 + 192, &v12);
      std::string::assign((*v6[5] + 456), "Audio Spatial");
      v4 = *(a1 + 216);
    }

    if (v4[5] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v7 = sub_10005E16C(a1 + 192, &v12);
      std::string::assign((*v7[5] + 456), "Game");
      v4 = *(a1 + 216);
    }

    if (v4[3] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v8 = sub_10005E16C(a1 + 192, &v12);
      std::string::assign((*v8[5] + 456), "VoiceOver");
      v4 = *(a1 + 216);
    }

    if (v4[2] == 1)
    {
      __p.__r_.__value_.__r.__words[0] = &v12;
      v9 = sub_10005E16C(a1 + 192, &v12);
      std::string::assign((*v9[5] + 456), "GarageBand");
    }

    __p.__r_.__value_.__r.__words[0] = &v12;
    if (*(*sub_10005E16C(a1 + 192, &v12)[5] + 160) == 1)
    {
      memset(&__p, 0, sizeof(__p));
      sub_100007E30(&__p, "Game");
      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12)[5] + 163) == 1)
      {
        std::string::append(&__p, " + Audio");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12)[5] + 161) == 1)
      {
        std::string::append(&__p, " + AudioSpatial");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12)[5] + 162) == 1)
      {
        std::string::append(&__p, " + VideoSpatial");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12)[5] + 165) == 1)
      {
        std::string::append(&__p, " + GarageBand");
      }

      v13 = &v12;
      if (*(*sub_10005E16C(a1 + 192, &v12)[5] + 164) == 1)
      {
        std::string::append(&__p, " + VoiceOver");
      }

      v13 = &v12;
      v10 = sub_10005E16C(a1 + 192, &v12);
      std::string::operator=((*v10[5] + 456), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_10063B850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063B8B0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10063B93C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063B93C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063BAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063BB10(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063BBDC((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063BBDC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063BD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063BDB0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063BE7C((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063BE7C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C050(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063C11C((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C11C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C2B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C2F0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10063C37C((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C37C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C550(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063C61C((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C61C(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063C7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063C7F0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063C8BC((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063C8BC(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063CA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063CA90(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CB68(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CC40(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CD18(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10063CDF0(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

uint64_t *sub_10063CEC8(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_10063D2BC(v2);
    operator delete();
  }

  v3 = a1[1];
  if (v3)
  {
    if (*(v3 + 159) < 0)
    {
      operator delete(*(v3 + 136));
    }

    operator delete();
  }

  if (a1[2])
  {
    operator delete();
  }

  if (a1[6])
  {
    operator delete();
  }

  if (a1[7])
  {
    operator delete();
  }

  v4 = a1[3];
  if (v4)
  {
    sub_10047F5B0(v4);
    operator delete();
  }

  if (a1[4])
  {
    operator delete();
  }

  return a1;
}

uint64_t sub_10063CFD4()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_100B6F7A0;
  v5 = qword_100B6F7A0;
  if (!qword_100B6F7A0)
  {
    v6 = *off_100B02FB0;
    v7 = 0;
    v3[3] = _sl_dlopen();
    qword_100B6F7A0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_10063D0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10063D100(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100B6F7A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063D198(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_dump_output_with_options");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063D1E8()
{
  v0 = sub_10063CFD4();
  if (v0)
  {
    return v0;
  }

  v1 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *BT::libtailspinLibrary()"];
  [v1 handleFailureInFunction:v3 file:@"AudioLinkManager.mm" lineNumber:90 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

uint64_t sub_10063D2BC(uint64_t a1)
{
  v2 = *(a1 + 328);
  for (i = *(a1 + 336); v2 != i; ++v2)
  {
    if (*v2)
    {
      operator delete();
    }
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  v4 = *(a1 + 352);
  if (v4)
  {
    *(a1 + 360) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 328);
  if (v5)
  {
    *(a1 + 336) = v5;
    operator delete(v5);
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  return a1;
}

uint64_t sub_10063D370(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, int a6)
{
  *a1 = xmmword_1008AA9C0;
  *(a1 + 16) = 0xFFFFFF6A00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  sub_100007E30((a1 + 168), "2.4G");
  *(a1 + 192) = 0;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 150;
  *(a1 + 320) = a4;
  *(a1 + 321) = a5;
  *(a1 + 324) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 372) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 412) = a6;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 4294967196;
  *(a1 + 448) = 0;
  sub_100007E30((a1 + 456), "Unknown");
  sub_100007E30((a1 + 480), "Unknown");
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  return a1;
}

void sub_10063D498(_Unwind_Exception *exception_object)
{
  if (*(v1 + 479) < 0)
  {
    operator delete(*(v1 + 456));
  }

  v3 = *(v1 + 352);
  if (v3)
  {
    *(v1 + 360) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 328);
  if (v4)
  {
    *(v1 + 336) = v4;
    operator delete(v4);
  }

  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063D4EC(uint64_t a1)
{
  *a1 = xmmword_1008AA9C0;
  *(a1 + 16) = 0xFFFFFF6A00000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_100007E30((a1 + 40), "");
  sub_100007E30((a1 + 64), "");
  sub_100007E30((a1 + 88), "");
  sub_100007E30((a1 + 112), "");
  *(a1 + 136) = xmmword_1008AA9E0;
  *(a1 + 152) = 0x7E0000007ELL;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_10063D598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063D5E4(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, char a6)
{
  *a1 = xmmword_1008AA9C0;
  *(a1 + 16) = 0xFFFFFF6A00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  sub_100007E30((a1 + 136), "2.4G");
  *(a1 + 160) = 0;
  *(a1 + 161) = a4;
  *(a1 + 162) = a5;
  *(a1 + 164) = 0;
  *(a1 + 192) = 0;
  *(a1 + 180) = 0;
  *(a1 + 172) = 0;
  *(a1 + 188) = 0;
  *(a1 + 204) = 0xFFFFFF9C00000000;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 229) = 0;
  *(a1 + 237) = a6;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  return a1;
}

void sub_10063D6A4(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1);
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = (a1 + 8);
  if (v6 == v5)
  {
    goto LABEL_11;
  }

  do
  {
    v7 = v6[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      v9 = *a2;
      if (v8)
      {
        v10 = *v6;
        sub_100117644(v8);
        if (v10 == v9)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v9 = *a2;
    }

    if (!v9)
    {
      goto LABEL_10;
    }

LABEL_8:
    v6 += 2;
  }

  while (v6 != v5);
  v6 = v5;
LABEL_10:
  v5 = *(a1 + 16);
LABEL_11:
  if (v6 == v5)
  {
    v11 = *a2;
    v12 = a2[1];
    if (*(&v11 + 1))
    {
      atomic_fetch_add_explicit((*(&v11 + 1) + 16), 1uLL, memory_order_relaxed);
      v5 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    if (v5 >= v13)
    {
      v15 = *v4;
      v16 = v5 - *v4;
      v17 = (v16 >> 4) + 1;
      if (v17 >> 60)
      {
        sub_1000C7698();
      }

      v18 = v13 - v15;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFF0;
      v20 = 0xFFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      v24[4] = (a1 + 8);
      if (v20)
      {
        sub_10042A610(a1 + 8, v20);
      }

      v21 = (16 * (v16 >> 4));
      *v21 = v11;
      v14 = v21 + 1;
      memcpy(0, v15, v16);
      v22 = *(a1 + 8);
      *(a1 + 8) = 0;
      *(a1 + 16) = v14;
      v23 = *(a1 + 24);
      *(a1 + 24) = 0;
      v24[2] = v22;
      v24[3] = v23;
      v24[0] = v22;
      v24[1] = v22;
      sub_10063D92C(v24);
    }

    else
    {
      *v5 = v11;
      v5[1] = v12;
      v14 = v5 + 2;
    }

    *(a1 + 16) = v14;
    sub_10063D85C((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_10063D844(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10063D85C(void **result)
{
  v3 = result[1];
  v4 = *result;
  v5 = result[2] - *result;
  v6 = v3 - *result;
  if (v5 > v6)
  {
    v19 = v1;
    v20 = v2;
    v7 = result;
    v8 = v6 >> 4;
    v18 = result;
    if (v3 != v4)
    {
      sub_10042A610(result, v6 >> 4);
    }

    v9 = 16 * v8;
    v14 = 0;
    v15 = 16 * v8;
    v16 = 16 * v8;
    v17 = 0;
    if (v5 >> 4)
    {
      v10 = result[1] - v4;
      v11 = v9 - v10;
      memcpy((v9 - v10), v4, v10);
      v12 = *v7;
      *v7 = v11;
      v7[1] = v9;
      v13 = v7[2];
      v7[2] = 0;
      v16 = v12;
      v17 = v13;
      v14 = v12;
      v15 = v12;
    }

    return sub_10063D92C(&v14);
  }

  return result;
}

void **sub_10063D92C(void **a1)
{
  sub_10063D960(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10063D960(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void sub_10063D9B4(uint64_t a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1);
  v4 = sub_10063DA4C(*(a1 + 8), *(a1 + 16), a2);
  sub_10063DBB0(&v9, v4 + 1, *(a1 + 16), v4);
  v6 = v5;
  v7 = *(a1 + 16);
  if (v7 != v5)
  {
    do
    {
      v8 = *(v7 - 8);
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      v7 -= 16;
    }

    while (v7 != v6);
  }

  *(a1 + 16) = v6;
  sub_10063D85C((a1 + 8));
  os_unfair_lock_unlock(a1);
}

uint64_t *sub_10063DA4C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v17 = v5[1];
      if (!v17)
      {
        goto LABEL_2;
      }

      v18 = std::__shared_weak_count::lock(v17);
      if (!v18)
      {
        goto LABEL_2;
      }

      v19 = v18;
      if (!*v5)
      {
        break;
      }

      v20 = v5[1];
      if (v20 && (v21 = std::__shared_weak_count::lock(v20)) != 0)
      {
        v22 = *v5;
        v23 = *a3;
        sub_100117644(v21);
        sub_100117644(v19);
        if (v22 == v23)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v24 = *a3;
        sub_100117644(v19);
        if (!v24)
        {
          goto LABEL_2;
        }
      }

      v5 += 2;
      if (v5 == a2)
      {
        return a2;
      }
    }

    sub_100117644(v18);
  }

LABEL_2:
  if (v5 != a2)
  {
    for (i = v5 + 2; ; i += 2)
    {
      if (i == a2)
      {
        return v5;
      }

      v7 = i[1];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          if (!*i)
          {
            sub_100117644(v8);
            continue;
          }

          v10 = i[1];
          if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
          {
            v12 = *i;
            v13 = *a3;
            sub_100117644(v11);
            sub_100117644(v9);
            if (v12 == v13)
            {
              continue;
            }
          }

          else
          {
            v14 = *a3;
            sub_100117644(v9);
            if (!v14)
            {
              continue;
            }
          }

          v15 = *i;
          *i = 0;
          i[1] = 0;
          v16 = v5[1];
          *v5 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          v5 += 2;
        }
      }
    }
  }

  return v5;
}

__int128 *sub_10063DBB0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_weak(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10063DC1C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_10063DCE8((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10063DCE8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10063DE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063DEBC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void *sub_10063DF94(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_create_with_current_state");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063DFE4(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_enabled_set");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E034(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_kdbg_filter_subclass_set");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E084(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_apply_sync");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E0D4(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_free");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10063E124(uint64_t a1)
{
  v2 = sub_10063D1E8();
  result = dlsym(v2, "tailspin_config_create_with_default_config");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100B6F7D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10063E174(uint64_t a1)
{
  v2 = sub_100007E30(a1, "Unknown");
  sub_100007E30(v2 + 24, "Unknown");
  sub_100007E30((a1 + 48), "Unknown");
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  sub_100007E30((a1 + 88), "Unknown");
  *(a1 + 112) = -1;
  *(a1 + 120) = -1;
  sub_100007E30((a1 + 128), "Unknown");
  *(a1 + 152) = 0;
  return a1;
}

void sub_10063E204(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10063E95C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10063E9F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10063EA08(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10063EA08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1003A636C(v2);
    operator delete();
  }

  return a1;
}

void sub_10063EA54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10063EA8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1003A636C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10063EAD4(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (a2 - v8 <= 2)
    {
      if ((a2 - v8) < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v77 = *(a2 - 1);
        v78 = *v8;
        if (v77 < v78)
        {
          *v8 = v77;
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v82 = v8 + 1;
      v83 = v8[1];
      v84 = v8 + 2;
      v85 = v8[2];
      v86 = *v8;
      if (v83 >= v86)
      {
        if (v85 >= v83)
        {
          goto LABEL_187;
        }

        *v82 = v85;
        *v84 = v83;
        v87 = v8;
        v88 = v8 + 1;
        result = v83;
        if (v85 < v86)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v87 = v8;
        v88 = v8 + 2;
        result = *v8;
        if (v85 >= v83)
        {
          *v8 = v8[1];
          v8[1] = v86;
          v87 = v8 + 1;
          v88 = v8 + 2;
          result = v86;
          if (v85 >= v86)
          {
LABEL_187:
            LODWORD(v83) = v85;
            goto LABEL_188;
          }
        }

LABEL_180:
        *v87 = v85;
        *v88 = v86;
        LODWORD(v83) = result;
      }

LABEL_188:
      v129 = *(a2 - 1);
      if (v129 < v83)
      {
        *v84 = v129;
        *(a2 - 1) = v83;
        v130 = *v84;
        v131 = *v82;
        if (v130 < v131)
        {
          v8[1] = v130;
          v8[2] = v131;
          v132 = *v8;
          if (v130 < v132)
          {
            *v8 = v130;
            v8[1] = v132;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v68 = v8 + 1;
      v69 = v8[1];
      v71 = v8 + 2;
      v70 = v8[2];
      v72 = *v8;
      if (v69 >= v72)
      {
        if (v70 >= v69)
        {
          v75 = *v8;
          LODWORD(v72) = v8[1];
        }

        else
        {
          v73 = v8;
          v74 = v8 + 1;
          *v68 = v8[2];
          *v71 = v69;
          v75 = v70;
          result = v72;
          v76 = v69;
          if (v70 < v72)
          {
            goto LABEL_193;
          }

          v75 = v72;
          LODWORD(v72) = v70;
          LODWORD(v70) = v69;
        }
      }

      else
      {
        if (v70 < v69)
        {
          v73 = v8;
          v74 = v8 + 2;
          v75 = v8[2];
          result = v8[1];
          v76 = *v8;
          goto LABEL_193;
        }

        v73 = v8 + 1;
        v74 = v8 + 2;
        *v8 = v8[1];
        v8[1] = v72;
        v75 = v69;
        result = v70;
        v76 = v72;
        if (v70 >= v72)
        {
          v75 = v69;
        }

        else
        {
LABEL_193:
          *v73 = v70;
          *v74 = v72;
          LODWORD(v72) = result;
          LODWORD(v70) = v76;
        }
      }

      v134 = v8[3];
      if (v134 >= v70)
      {
        LODWORD(v70) = v8[3];
      }

      else
      {
        v8[2] = v134;
        v8[3] = v70;
        if (v134 < v72)
        {
          *v68 = v134;
          *v71 = v72;
          if (v134 < v75)
          {
            *v8 = v134;
            v8[1] = v75;
          }
        }
      }

      v135 = *(a2 - 1);
      if (v135 >= v70)
      {
        return result;
      }

      v8[3] = v135;
      *(a2 - 1) = v70;
      v126 = v8[3];
      v136 = v8[2];
      if (v126 >= v136)
      {
        return result;
      }

      v8[2] = v126;
      v8[3] = v136;
      v137 = v8[1];
      if (v126 >= v137)
      {
        return result;
      }

      v8[1] = v126;
      v8[2] = v137;
LABEL_208:
      v138 = *v8;
      if (v126 < v138)
      {
        *v8 = v126;
        v8[1] = v138;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v89 = v8 + 1;
      v91 = v8 == a2 || v89 == a2;
      if (a4)
      {
        if (!v91)
        {
          v92 = 0;
          v93 = v8;
          do
          {
            v94 = v93[1];
            v95 = *v93;
            v93 = v89;
            if (v94 < v95)
            {
              v96 = v92;
              while (1)
              {
                v8[v96 + 1] = v95;
                if (!v96)
                {
                  break;
                }

                v95 = v8[--v96];
                if (v94 >= v95)
                {
                  v97 = &v8[v96 + 1];
                  goto LABEL_129;
                }
              }

              v97 = v8;
LABEL_129:
              *v97 = v94;
            }

            v89 = v93 + 1;
            ++v92;
          }

          while (v93 + 1 != a2);
        }
      }

      else if (!v91)
      {
        do
        {
          v127 = v7[1];
          v128 = *v7;
          v7 = v89;
          if (v127 < v128)
          {
            do
            {
              *v89 = v128;
              v128 = *(v89 - 2);
              --v89;
            }

            while (v127 < v128);
            *v89 = v127;
          }

          v89 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v98 = (a2 - v8 - 2) >> 1;
      v99 = v98;
      do
      {
        v100 = v99;
        if (v98 >= v99)
        {
          v101 = (2 * v99) | 1;
          v102 = &v8[v101];
          if (2 * v100 + 2 >= v9)
          {
            LOBYTE(v104) = *v102;
          }

          else
          {
            v103 = *v102;
            v104 = v102[1];
            v105 = v103 < v104;
            if (v103 > v104)
            {
              LOBYTE(v104) = *v102;
            }

            if (v105)
            {
              ++v102;
              v101 = 2 * v100 + 2;
            }
          }

          v106 = &v8[v100];
          v107 = v8[v100];
          if (v107 <= v104)
          {
            do
            {
              *v106 = v104;
              v106 = v102;
              if (v98 < v101)
              {
                break;
              }

              v108 = (2 * v101) | 1;
              v102 = &v8[v108];
              v101 = 2 * v101 + 2;
              if (v101 >= v9)
              {
                LOBYTE(v104) = *v102;
                v101 = v108;
              }

              else
              {
                v104 = *v102;
                result = v102[1];
                v109 = v104 < result;
                if (v104 <= result)
                {
                  LOBYTE(v104) = v102[1];
                }

                if (v109)
                {
                  ++v102;
                }

                else
                {
                  v101 = v108;
                }
              }
            }

            while (v107 <= v104);
            *v106 = v107;
          }
        }

        v99 = v100 - 1;
      }

      while (v100);
      while (2)
      {
        v110 = 0;
        LOBYTE(v111) = *v8;
        v112 = v8;
        do
        {
          v113 = &v112[v110];
          v114 = &v112[v110 + 1];
          v115 = (2 * v110) | 1;
          v110 = 2 * v110 + 2;
          if (v110 >= v9)
          {
            v116 = *v114;
            v110 = v115;
          }

          else
          {
            v118 = v113[2];
            v117 = v113 + 2;
            v116 = v118;
            v119 = *(v117 - 1);
            v120 = v119 < v118;
            if (v119 > v118)
            {
              v116 = *(v117 - 1);
            }

            if (v120)
            {
              v114 = v117;
            }

            else
            {
              v110 = v115;
            }
          }

          *v112 = v116;
          v112 = v114;
        }

        while (v110 <= ((v9 - 2) >> 1));
        if (v114 == --a2)
        {
LABEL_169:
          *v114 = v111;
        }

        else
        {
          *v114 = *a2;
          *a2 = v111;
          v121 = v114 - v8 - 1;
          if (v114 - v8 + 1 >= 2)
          {
            v122 = &v8[v121 >> 1];
            v123 = *v122;
            v111 = *v114;
            if (v123 < v111)
            {
              v124 = v121 >> 1;
              do
              {
                *v114 = v123;
                v114 = v122;
                if (!v124)
                {
                  break;
                }

                v125 = v124 - 1;
                v124 = (v124 - 1) >> 1;
                v122 = &v8[v125 >> 1];
                v123 = *v122;
              }

              while (v123 < v111);
              goto LABEL_169;
            }
          }
        }

        v105 = v9-- <= 2;
        if (v105)
        {
          return result;
        }

        continue;
      }
    }

    v10 = &v8[v9 >> 1];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *v10;
      v13 = *v8;
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          *v10 = v11;
          *(a2 - 1) = v12;
          v16 = *v10;
          v17 = *v8;
          if (v16 < v17)
          {
            *v8 = v16;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v11 < v12)
        {
          *v8 = v11;
          goto LABEL_27;
        }

        *v8 = v12;
        *v10 = v13;
        v20 = *(a2 - 1);
        if (v20 < v13)
        {
          *v10 = v20;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v21 = v9 >> 1;
      v22 = &v8[v9 >> 1];
      v25 = *(v22 - 1);
      v23 = v22 - 1;
      v24 = v25;
      v26 = v8[1];
      v27 = *(a2 - 2);
      if (v25 >= v26)
      {
        if (v27 < v24)
        {
          *v23 = v27;
          *(a2 - 2) = v24;
          v28 = *v23;
          v29 = v8[1];
          if (v28 < v29)
          {
            v8[1] = v28;
            *v23 = v29;
          }
        }
      }

      else
      {
        if (v27 < v24)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        *v23 = v26;
        v31 = *(a2 - 2);
        if (v31 < v26)
        {
          *v23 = v31;
LABEL_39:
          *(a2 - 2) = v26;
        }
      }

      v32 = &v8[v21];
      v35 = v32[1];
      v33 = v32 + 1;
      v34 = v35;
      v36 = v8[2];
      v37 = *(a2 - 3);
      if (v35 >= v36)
      {
        if (v37 < v34)
        {
          *v33 = v37;
          *(a2 - 3) = v34;
          v38 = *v33;
          v39 = v8[2];
          if (v38 < v39)
          {
            v8[2] = v38;
            *v33 = v39;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v34;
        *v33 = v36;
        v40 = *(a2 - 3);
        if (v40 < v36)
        {
          *v33 = v40;
LABEL_48:
          *(a2 - 3) = v36;
        }
      }

      v41 = *v10;
      v42 = *v23;
      v43 = *v33;
      if (v41 >= v42)
      {
        if (v43 >= v41)
        {
          goto LABEL_56;
        }

        *v10 = v43;
        *v33 = v41;
        v33 = v10;
        LOBYTE(v41) = v42;
        if (v43 >= v42)
        {
          LOBYTE(v41) = v43;
          goto LABEL_56;
        }
      }

      else if (v43 >= v41)
      {
        *v23 = v41;
        *v10 = v42;
        v23 = v10;
        LOBYTE(v41) = v43;
        if (v43 >= v42)
        {
          LOBYTE(v41) = v42;
LABEL_56:
          v44 = *v8;
          *v8 = v41;
          *v10 = v44;
          goto LABEL_57;
        }
      }

      *v23 = v43;
      *v33 = v42;
      goto LABEL_56;
    }

    v14 = *v8;
    v15 = *v10;
    if (v14 >= v15)
    {
      if (v11 < v14)
      {
        *v8 = v11;
        *(a2 - 1) = v14;
        v18 = *v8;
        v19 = *v10;
        if (v18 < v19)
        {
          *v10 = v18;
          *v8 = v19;
        }
      }

      goto LABEL_57;
    }

    if (v11 >= v14)
    {
      *v10 = v14;
      *v8 = v15;
      v30 = *(a2 - 1);
      if (v30 >= v15)
      {
        goto LABEL_57;
      }

      *v8 = v30;
    }

    else
    {
      *v10 = v11;
    }

    *(a2 - 1) = v15;
LABEL_57:
    --a3;
    v45 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 1) < v45)
    {
      v46 = 0;
      do
      {
        v47 = v8[++v46];
      }

      while (v47 < v45);
      v48 = &v8[v46];
      v49 = a2;
      if (v46 == 1)
      {
        v49 = a2;
        do
        {
          if (v48 >= v49)
          {
            break;
          }

          v51 = *--v49;
        }

        while (v51 >= v45);
      }

      else
      {
        do
        {
          v50 = *--v49;
        }

        while (v50 >= v45);
      }

      if (v48 >= v49)
      {
        v57 = v48 - 1;
      }

      else
      {
        v52 = *v49;
        v53 = &v8[v46];
        v54 = v49;
        do
        {
          *v53 = v52;
          *v54 = v47;
          do
          {
            v55 = *++v53;
            LOBYTE(v47) = v55;
          }

          while (v55 < v45);
          do
          {
            v56 = *--v54;
            v52 = v56;
          }

          while (v56 >= v45);
        }

        while (v53 < v54);
        v57 = v53 - 1;
      }

      if (v57 != v8)
      {
        *v8 = *v57;
      }

      *v57 = v45;
      if (v48 < v49)
      {
        goto LABEL_80;
      }

      v58 = sub_10063F480(v8, v57);
      v8 = v57 + 1;
      result = sub_10063F480(v57 + 1, a2);
      if (result)
      {
        a2 = v57;
        if (v58)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v58)
      {
LABEL_80:
        result = sub_10063EAD4(v7, v57, a3, a4 & 1);
        a4 = 0;
        v8 = v57 + 1;
      }
    }

    else
    {
      if (v45 >= *(a2 - 1))
      {
        v60 = v8 + 1;
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          ++v60;
        }

        while (v45 >= *v8);
      }

      else
      {
        do
        {
          v59 = *++v8;
        }

        while (v45 >= v59);
      }

      v61 = a2;
      if (v8 < a2)
      {
        v61 = a2;
        do
        {
          v62 = *--v61;
        }

        while (v45 < v62);
      }

      if (v8 < v61)
      {
        v63 = *v8;
        v64 = *v61;
        do
        {
          *v8 = v64;
          *v61 = v63;
          do
          {
            v65 = *++v8;
            v63 = v65;
          }

          while (v45 >= v65);
          do
          {
            v66 = *--v61;
            v64 = v66;
          }

          while (v45 < v66);
        }

        while (v8 < v61);
      }

      v67 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v67;
      }

      a4 = 0;
      *v67 = v45;
    }
  }

  v79 = v8[1];
  v80 = *v8;
  v81 = *(a2 - 1);
  if (v79 >= v80)
  {
    if (v81 >= v79)
    {
      return result;
    }

    v8[1] = v81;
    *(a2 - 1) = v79;
    v126 = v8[1];
    goto LABEL_208;
  }

  if (v81 >= v79)
  {
    *v8 = v79;
    v8[1] = v80;
    v133 = *(a2 - 1);
    if (v133 >= v80)
    {
      return result;
    }

    v8[1] = v133;
  }

  else
  {
    *v8 = v81;
  }

  *(a2 - 1) = v80;
  return result;
}

BOOL sub_10063F480(char *a1, char *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v2 == 3)
    {
      v16 = a1[1];
      v17 = *a1;
      v18 = *(a2 - 1);
      if (v16 < v17)
      {
        if (v18 >= v16)
        {
          *a1 = v16;
          a1[1] = v17;
          v45 = *(a2 - 1);
          if (v45 >= v17)
          {
            return 1;
          }

          a1[1] = v45;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v17;
        return 1;
      }

      if (v18 >= v16)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v16;
      v33 = a1[1];
LABEL_68:
      v50 = *a1;
      if (v33 < v50)
      {
        *a1 = v33;
        a1[1] = v50;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= v8)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = a1[2];
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v46 = a1[3];
          if (v46 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v46;
            a1[3] = v6;
            if (v46 < v8)
            {
              *v4 = v46;
              *v7 = v8;
              if (v46 < v11)
              {
                *a1 = v46;
                a1[1] = v11;
              }
            }
          }

          v47 = *(a2 - 1);
          if (v47 >= v6)
          {
            return 1;
          }

          a1[3] = v47;
          *(a2 - 1) = v6;
          v33 = a1[3];
          v48 = a1[2];
          if (v33 >= v48)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v48;
          v49 = a1[1];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v49;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = a1[1];
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= v29)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v41 = *(a2 - 1);
        if (v41 < v26)
        {
          *v27 = v41;
          *(a2 - 1) = v26;
          v42 = *v27;
          v43 = *v25;
          if (v42 < v43)
          {
            a1[1] = v42;
            a1[2] = v43;
            v44 = *a1;
            if (v42 < v44)
            {
              *a1 = v42;
              a1[1] = v44;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < v15)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= v22)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = *v34;
    v38 = *v20;
    if (v37 < v38)
    {
      v39 = v35;
      while (1)
      {
        a1[v39 + 3] = v38;
        if (v39 == -2)
        {
          break;
        }

        v38 = a1[v39-- + 1];
        if (v37 >= v38)
        {
          v40 = &a1[v39 + 3];
          goto LABEL_37;
        }
      }

      v40 = a1;
LABEL_37:
      *v40 = v37;
      if (++v36 == 8)
      {
        return v34 + 1 == a2;
      }
    }

    v20 = v34;
    ++v35;
    if (++v34 == a2)
    {
      return 1;
    }
  }
}