void sub_1001AB518(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

__int16 *sub_1001AB570(__int16 *result, uint64_t a2)
{
  v3 = result;
  result[132] = 0;
  if (*(result + 152) != 1)
  {
    goto LABEL_14;
  }

  result = sub_10019A2D4(result + 7);
  if (!result)
  {
    goto LABEL_14;
  }

  v4 = **v3;
  v5 = *(*v3 + 8);
  if (v4 == v5)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4 + 96;
    do
    {
      sub_10018D404(v14);
      v7 = sub_100109D18(v14, *(a2 + 4), *(a2 + 12), *(v6 - 88), *(v6 - 80), 0.0);
      v8 = *(v6 - 48);
      v9 = v7 < v8;
      v10 = v7 >= v8 || v6 == v5;
      v6 += 96;
    }

    while (!v10);
  }

  *(v3 + 265) = v9;
  *(v3 + 264) = v9;
  v11 = sub_1001A6A10();
  result = sub_1001AB698(v11);
  if (result)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(*v3 + 8) - **v3) >> 5);
    result = sub_1001A6A10();
    if (v12 > *(result + 1))
    {
LABEL_14:
      *(v3 + 264) = 1;
    }
  }

  if (*(v3 + 264) == 1)
  {
    *(v3 + 11) = *(a2 + 4);
    v13 = *(a2 + 20);
  }

  else
  {
    if ((v3[76] & 1) == 0)
    {
      sub_100173BA0();
    }

    v13 = *(v3 + 11);
    *(v3 + 11) = *(v3 + 4);
  }

  *(v3 + 25) = v13;
  return result;
}

uint64_t sub_1001AB710(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664838))
  {
    unk_102664830 = sub_101226BEC();
    __cxa_guard_release(&qword_102664838);
  }

  v2 = &unk_102664830;
  if (!byte_102664831)
  {
    v2 = (a1 + 139);
  }

  return *v2;
}

double sub_1001AB7A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xFFFF;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 44) = _Q0;
  *(a2 + 60) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 108) = 0;
  *(a2 + 100) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  *(a2 + 96) = 4;
  *(a2 + 4) = *(a1 + 8);
  *(a2 + 20) = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  *(a2 + 36) = *(a1 + 40);
  result = *(a1 + 64);
  *(a2 + 76) = result;
  return result;
}

uint64_t sub_1001AB810(uint64_t a1, void *a2, __int128 *a3, void *a4, __int128 *a5, const std::string *a6, uint64_t a7)
{
  *a1 = 0xFFFF;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = xmmword_101C75BF0;
  v14 = a1 + 332;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 36) = _Q0;
  *(a1 + 52) = _Q0;
  *(a1 + 68) = _Q0;
  *(a1 + 84) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0xBFF0000000000000;
  *(a1 + 124) = 0x7FFFFFFF;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0xFFFF;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_101C75BF0;
  *(a1 + 192) = _Q0;
  *(a1 + 208) = _Q0;
  *(a1 + 224) = _Q0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 0xBFF0000000000000;
  *(a1 + 268) = 0;
  *(a1 + 252) = 0;
  *(a1 + 260) = 0;
  *(a1 + 272) = 0xBFF0000000000000;
  *(a1 + 280) = 0x7FFFFFFF;
  *(a1 + 300) = 0;
  *(a1 + 284) = 0;
  *(a1 + 292) = 0;
  *(a1 + 308) = 0;
  *(a1 + 312) = 0xFFFF;
  *(a1 + 324) = 0;
  *(a1 + 316) = 0;
  v37 = _Q0;
  *(a1 + 332) = xmmword_101C75BF0;
  *(a1 + 348) = _Q0;
  *(a1 + 364) = _Q0;
  *(a1 + 380) = _Q0;
  *(a1 + 396) = 0;
  *(a1 + 424) = 0;
  *(a1 + 400) = 0xBFF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 428) = 0xBFF0000000000000;
  *(a1 + 436) = 0x7FFFFFFF;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  sub_10018D404(a1 + 472);
  *(a1 + 512) = *a2;
  v20 = *a3;
  v21 = a3[2];
  *(a1 + 536) = a3[1];
  *(a1 + 552) = v21;
  *(a1 + 520) = v20;
  v22 = a3[3];
  v23 = a3[4];
  v24 = a3[5];
  *(a1 + 616) = *(a3 + 12);
  *(a1 + 584) = v23;
  *(a1 + 600) = v24;
  *(a1 + 568) = v22;
  v25 = a4[1];
  *(a1 + 624) = *a4;
  *(a1 + 632) = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 640) = 0;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 648), *a5, *(a5 + 1));
  }

  else
  {
    v26 = *a5;
    *(a1 + 664) = *(a5 + 2);
    *(a1 + 648) = v26;
  }

  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  sub_1001AE1CC(a1 + 696);
  v27 = sub_1001AE1CC(a1 + 792);
  sub_1001AE284(a1 + 888, v27);
  *(a1 + 1480) = 0;
  *(a1 + 1488) = 0;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1538) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1544) = a1 + 1552;
  *(a1 + 1568) = -1;
  sub_10018D404(a1 + 1576);
  *(a1 + 1616) = 0xFFFF;
  *(a1 + 1620) = 0u;
  *(v14 + 1304) = xmmword_101C75BF0;
  *(v14 + 1320) = v37;
  *(v14 + 1336) = v37;
  *(v14 + 1352) = v37;
  *(a1 + 1700) = 0;
  *(a1 + 1704) = 0xBFF0000000000000;
  *(a1 + 1712) = 0u;
  *(a1 + 1728) = 0;
  *(v14 + 1400) = 0xBFF0000000000000;
  *(a1 + 1740) = 0x7FFFFFFF;
  *(a1 + 1744) = 0;
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0u;
  *(a1 + 1784) = 0u;
  *(a1 + 1776) = a1 + 1784;
  *(a1 + 1800) = 0;
  *(a1 + 1804) = 257;
  *(a1 + 1808) = 0x5000001F4;
  *(a1 + 1816) = 4;
  *(v14 + 1488) = xmmword_101C89010;
  *(a1 + 1836) = 0x244480000;
  sub_1001AE288(a1 + 888, a6);
  v28 = *(a7 + 96);
  if (v28 == 1)
  {
    sub_100419914((a1 + 888), a7);
    v28 = *(a7 + 96);
  }

  if (v28 <= 0xB && ((1 << v28) & 0xC02) != 0)
  {
    v29 = *(a7 + 16);
    *a1 = *a7;
    *(a1 + 16) = v29;
    v30 = *(a7 + 32);
    v31 = *(a7 + 48);
    v32 = *(a7 + 80);
    *(a1 + 64) = *(a7 + 64);
    *(a1 + 80) = v32;
    *(a1 + 32) = v30;
    *(a1 + 48) = v31;
    v33 = *(a7 + 96);
    v34 = *(a7 + 112);
    v35 = *(a7 + 128);
    *(a1 + 140) = *(a7 + 140);
    *(a1 + 112) = v34;
    *(a1 + 128) = v35;
    *(a1 + 96) = v33;
  }

  return a1;
}

void sub_1001ABB6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 640);
  *(v1 + 640) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 632);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001ABC20(_BYTE *a1)
{
  v2 = a1 + 284;
  sub_10018D404(a1);
  *(v3 + 40) = 0xFFFF;
  *(v3 + 52) = 0;
  *(v3 + 44) = 0;
  *(v3 + 60) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v3 + 76) = _Q1;
  *(v3 + 92) = _Q1;
  *(v3 + 108) = _Q1;
  *(v3 + 124) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 128) = 0xBFF0000000000000;
  *(v3 + 152) = 0;
  *(v3 + 156) = 0xBFF0000000000000;
  *(v3 + 164) = 0x7FFFFFFF;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  *(v3 + 196) = 0xFFFF;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = xmmword_101C75BF0;
  *(v3 + 232) = _Q1;
  *(v3 + 248) = _Q1;
  *(v3 + 264) = 0xBFF0000000000000;
  *(v3 + 272) = 0xBFF0000000000000;
  *(v3 + 280) = 0;
  *v2 = 0xBFF0000000000000;
  *(v3 + 308) = 0;
  *(v3 + 292) = 0;
  *(v3 + 300) = 0;
  *(v3 + 312) = 0xBFF0000000000000;
  *(v3 + 320) = 0x7FFFFFFF;
  *(v3 + 340) = 0;
  *(v3 + 324) = 0;
  *(v3 + 332) = 0;
  *(v3 + 348) = 0;
  *(v3 + 352) = 0xFFFF;
  *(v3 + 364) = 0;
  *(v3 + 356) = 0;
  *(v2 + 88) = xmmword_101C75BF0;
  *(v2 + 104) = _Q1;
  *(v2 + 120) = _Q1;
  *(v2 + 136) = _Q1;
  *(v3 + 436) = 0;
  *(v3 + 464) = 0;
  *(v3 + 440) = 0xBFF0000000000000;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v2 + 23) = 0xBFF0000000000000;
  *(v3 + 476) = 0x7FFFFFFF;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  *(v3 + 496) = 0;
  *(v3 + 504) = 0;
  *(v3 + 508) = 0;
  sub_10000EC00((v3 + 512), "N/A");
  a1[536] = 0;
  sub_10000EC00(a1 + 544, "not_set");
  sub_10000EC00(a1 + 568, "not_set");
  return a1;
}

void sub_1001ABD88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 567) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 535) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001ABDBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100100690();
  if ((sub_1001AC2B4(v4) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(__p);
      v8 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as it got disabled by CLWifi1Settings!", &buf, 0xCu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA4E9C();
    }

    sub_1001E268C(a1 + 888, 1);
    return 0;
  }

  sub_1001AE290(a1);
  sub_1001E0C14(a1 + 792, a2);
  if (fabs(*(a1 + 696)) > 90.0 || fabs(*(a1 + 704)) > 180.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(__p);
      v6 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as it does not have a valid centroid!", &buf, 0xCu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA50AC();
    }

    sub_1001E268C(a1 + 888, 2);
    return 0;
  }

  (*(**(a1 + 624) + 48))(&buf);
  if (buf)
  {
    sub_100199FB0(buf);
    sub_1001E0C88(buf);
    v10 = buf;
    sub_1001ADFA4(a1 + 696, __p);
    Current = CFAbsoluteTimeGetCurrent();
    v12 = sub_1001E0C90(v10, __p, Current);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3FB0();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "WifiCalc, #warning, movingApDetector is null", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA3FD8(__p);
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL isBadClientSideCentroidByMovingApDetector(const std::shared_ptr<CLMovingApDetector> &, const CLWifiAccessPoint &)", "%s\n", v16);
      if (v16 != __p)
      {
        free(v16);
      }
    }

    v12 = 0;
  }

  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3FB0();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(__p);
      v15 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as it fails to pass cross-check with GPS/Cell!", &buf, 0xCu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA4FA4();
    }

    sub_1001E268C(a1 + 888, 3);
    return 0;
  }

  sub_1001E0C9C(a1 + 888, (a1 + 1496));
  sub_1001E95BC(a1, a2);
  if (sub_1001E0E04(a1))
  {
    sub_1001EA6AC(a1, a2);
    sub_1001E9CCC(a1 + 888, 1);
    return 1;
  }

  else
  {
    sub_1001E9CCC(a1 + 888, 0);
    if (*(a1 + 1424) != 10)
    {
      return 0;
    }

    result = 0;
    *(a2 + 181) = 1;
  }

  return result;
}

void sub_1001AC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001AC2B4(uint64_t a1)
{
  if (qword_102664828 != -1)
  {
    sub_101B79098();
  }

  v2 = word_102664820;
  if ((word_102664820 & 0x100) == 0)
  {
    v2 = *(a1 + 137);
  }

  return v2 & 1;
}

void sub_1001AC300(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 671);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 656);
  }

  if (v4)
  {
    sub_10082C78C();
  }

  sub_1001AC420(&v10);
  sub_1001B3390(v10, (a1 + 512));
  v5 = v11;
  v9[0] = v10;
  v9[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000EC00(__p, "Wifi");
  v6 = sub_100100690();
  sub_1001AC4CC(a1, v9, __p, (v6 + 80), a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_100008080(v5);
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

void sub_1001AC3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v19)
  {
    sub_100008080(v19);
  }

  if (a19)
  {
    sub_100008080(a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001AC420@<W0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_10265A588, memory_order_acquire) & 1) == 0)
  {
    sub_10194CF68();
  }

  if (!xmmword_10265A5A0 || !(result = sub_10018E854(xmmword_10265A5A0)))
  {
    sub_10082C9DC();
  }

  v3 = *(&xmmword_10265A5A0 + 1);
  *a1 = xmmword_10265A5A0;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_1001AC4CC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::string::size_type a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (*a2)
  {
    if (sub_10018E854(*a2))
    {
      sub_10018F1F0(*a2, &buf);
      v10 = *(a1 + 672);
      if (v10)
      {
        *(a1 + 680) = v10;
        operator delete(v10);
        *(a1 + 672) = 0;
        *(a1 + 680) = 0;
        *(a1 + 688) = 0;
      }

      *(a1 + 672) = buf;
      sub_1001ACAE0(v48, a1 + 672, a4);
      sub_1001AD9CC(v48, v39);
      if (fabs(*v39) <= 90.0 && fabs(*(v39 + 1)) <= 180.0)
      {
        *(a1 + 1520) = sub_10007280C(v48);
      }

      if (*(a1 + 1488) != 1 || *(a1 + 1480) == -1)
      {
        *(a1 + 1480) = sub_1001AEBCC(v48);
        *(a1 + 1488) = v11;
        sub_1001AE000(v48, &buf);
        v12 = (a1 + 1496);
        if (*(a1 + 1519) < 0)
        {
          operator delete(*v12);
        }

        *v12 = *&buf.__r_.__value_.__l.__data_;
        *(a1 + 1512) = *(&buf.__r_.__value_.__l + 2);
      }

      if (qword_1025D4620 != -1)
      {
        sub_101AA3FB0();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 680);
        v15 = *(a1 + 672);
        if (*(a3 + 23) >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        sub_10018F0D0(&v40);
        v17 = SHIBYTE(v40.__r_.__value_.__r.__words[2]);
        v18 = v40.__r_.__value_.__r.__words[0];
        sub_1001AEBD8(v39, &__p);
        v19 = &v40;
        if (v17 < 0)
        {
          v19 = v18;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 134349827;
        *(buf.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 6);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2081;
        v45 = v19;
        v46 = 2085;
        v47 = p_p;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiCalc, using %{public}zu %{public}s harvest samples for associated AP %{private}s from harvest database, computed centroid %{sensitive}s", &buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA3FD8(&buf);
        v29 = *(a1 + 680);
        v30 = *(a1 + 672);
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        sub_10018F0D0(&__p);
        v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v32 = __p.__r_.__value_.__r.__words[0];
        sub_1001AEBD8(v39, v36);
        v33 = &__p;
        if (v31 < 0)
        {
          v33 = v32;
        }

        LODWORD(v40.__r_.__value_.__l.__data_) = 134349827;
        *(v40.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 6);
        if (v37 >= 0)
        {
          v34 = v36;
        }

        else
        {
          v34 = v36[0];
        }

        WORD2(v40.__r_.__value_.__r.__words[1]) = 2082;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = a3;
        HIWORD(v40.__r_.__value_.__r.__words[2]) = 2081;
        v41 = v33;
        v42 = 2085;
        v43 = v34;
        v35 = _os_log_send_and_compose_impl();
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "CLWifiAccessPoint CLWifiPositionCalculatorWithAssociatedAp::calculateAssociatedApCentroidFromHarvestDatabase(std::shared_ptr<CLWifiAssociatedApHarvestDatabase>, const std::string &, const CFTimeInterval &)", "%s\n", v35);
        if (v35 != &buf)
        {
          free(v35);
        }
      }

      v21 = v39[3];
      a5[2] = v39[2];
      a5[3] = v21;
      v22 = v39[5];
      a5[4] = v39[4];
      a5[5] = v22;
      result = *v39;
      v24 = v39[1];
      *a5 = v39[0];
      a5[1] = v24;
      if (v53 < 0)
      {
        operator delete(v52);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v27 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_10018F0D0(&buf);
        v28 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v48 = 136380675;
        v49 = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "WifiCalc, #warning, unable to compute centroid for associated AP %{private}s due to invalid harvest database", v48, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA3EA8();
      }

      return sub_1001AE1CC(a5);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v25 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(&buf);
      v26 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      *v48 = 136380675;
      v49 = v26;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "WifiCalc, #warning, unable to compute centroid for associated AP %{private}s due to invalid harvest database handle", v48, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA401C();
    }

    return sub_1001AE1CC(a5);
  }

  return result;
}

double sub_1001ACAE4(float64x2_t *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return -1.0;
  }

  sub_101207E8C(a2);
  v4 = *a2;
  v5 = a2[1];
  v6 = *v4;
  v7 = *(v4 + 16);
  v8 = *(v4 + 48);
  v63 = *(v4 + 32);
  v64 = v8;
  v61 = v6;
  v62 = v7;
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v4 + 112);
  v67 = *(v4 + 96);
  v68 = v11;
  v65 = v9;
  v66 = v10;
  v12 = *(v4 + 128);
  v13 = *(v4 + 144);
  v14 = *(v4 + 176);
  v71 = *(v4 + 160);
  v72 = v14;
  v69 = v12;
  v70 = v13;
  if (v4 != v5)
  {
    v15 = v4;
    do
    {
      v16 = *(v4 + 24);
      *v81 = *(v4 + 8);
      v82 = v16;
      v17 = *(v4 + 40);
      v18 = *(v4 + 56);
      v19 = *(v4 + 88);
      v85 = *(v4 + 72);
      v86 = v19;
      v83 = v17;
      v84 = v18;
      v20 = *(v4 + 104);
      v21 = *(v4 + 120);
      v22 = *(v4 + 136);
      *(v89 + 12) = *(v4 + 148);
      v88 = v21;
      v89[0] = v22;
      v87 = v20;
      v23 = *(v15 + 24);
      *__p = *(v15 + 8);
      v53 = v23;
      v24 = *(v15 + 40);
      v25 = *(v15 + 56);
      v26 = *(v15 + 88);
      v56 = *(v15 + 72);
      v57 = v26;
      v54 = v24;
      v55 = v25;
      v27 = *(v15 + 104);
      v28 = *(v15 + 120);
      v29 = *(v15 + 136);
      *(v60 + 12) = *(v15 + 148);
      v59 = v28;
      v60[0] = v29;
      v58 = v27;
      sub_1001097CC(a1 + 6, v81, __p);
      if (v30 > *(sub_1001CBE20() + 10))
      {
        break;
      }

      v31 = *v15;
      v32 = v15[1];
      v33 = v15[3];
      v63 = v15[2];
      v64 = v33;
      v61 = v31;
      v62 = v32;
      v34 = v15[4];
      v35 = v15[5];
      v36 = v15[7];
      v67 = v15[6];
      v68 = v36;
      v65 = v34;
      v66 = v35;
      v37 = v15[8];
      v38 = v15[9];
      v39 = v15[11];
      v71 = v15[10];
      v72 = v39;
      v69 = v37;
      v70 = v38;
      v15 += 12;
    }

    while (v15 != v5);
  }

  v40 = *(v4 + 84) - *(&v66 + 4);
  if (v40 < 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    v41 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_1001912D0(v4, v81);
      v42 = SBYTE7(v82);
      v43 = v81[0];
      sub_1001912D0(&v61, __p);
      v44 = v81;
      if (v42 < 0)
      {
        v44 = v43;
      }

      if ((SBYTE7(v53) & 0x80u) == 0)
      {
        v45 = __p;
      }

      else
      {
        v45 = __p[0];
      }

      *buf = 136643075;
      *&buf[4] = v44;
      v74 = 2085;
      v75 = v45;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "WifiCentroidCalculator, timestamps out of order in getStationaryTimeInSeconds(), newest: %{sensitive}s, oldest: %{sensitive}s", buf, 0x16u);
      if (SBYTE7(v53) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v82) < 0)
      {
        operator delete(v81[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B6FAC8(v81);
      sub_1001912D0(v4, __p);
      v46 = SBYTE7(v53);
      v47 = __p[0];
      sub_1001912D0(&v61, buf);
      v48 = __p;
      if (v46 < 0)
      {
        v48 = v47;
      }

      if (v76 >= 0)
      {
        v49 = buf;
      }

      else
      {
        v49 = *buf;
      }

      v77 = 136643075;
      v78 = v48;
      v79 = 2085;
      v80 = v49;
      v50 = _os_log_send_and_compose_impl();
      if (v76 < 0)
      {
        operator delete(*buf);
      }

      if (SBYTE7(v53) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "double CLWifiCentroidCalculator::computeStationaryTimeInSeconds(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v50);
      if (v50 != v81)
      {
        free(v50);
      }
    }
  }

  return v40;
}

void sub_1001ACEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001ACED8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    sub_10019033C(a1, a2);
  }

  sub_10028C64C();
}

void sub_1001ACF24(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 136);
  *(a1 + 144) = *(a1 + 136);
  if (*a2 == a2[1])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B6FA8C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, empty input entries", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B6FE90();
    }
  }

  else
  {
    sub_101207E8C(a2);
    if (*(a1 + 216) == 1)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B6FA8C();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10018F0D0(__p);
        if (__p[23] >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = *__p;
        }

        *buf = 136380675;
        *&buf[4] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, detected %{private}s as moving AP", buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B6FD68();
      }
    }

    else
    {
      v8 = *a2;
      v9 = *(*a2 + 8);
      v84 = *(*a2 + 24);
      *buf = v9;
      v10 = *(v8 + 40);
      v11 = *(v8 + 56);
      v12 = *(v8 + 72);
      v88 = *(v8 + 88);
      v87 = v12;
      v86 = v11;
      v85 = v10;
      v13 = *(v8 + 104);
      v14 = *(v8 + 120);
      v15 = *(v8 + 136);
      *(v91 + 12) = *(v8 + 148);
      v91[0] = v15;
      v90 = v14;
      v89 = v13;
      v16 = sub_1001AD9A0(v8);
      if (qword_1025D4620 != -1)
      {
        sub_101B6FA8C();
      }

      v17 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_1001912D0(v8, __p);
        v18 = __p[23] >= 0 ? __p : *__p;
        *v69 = 136642819;
        v70 = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, newest entry %{sensitive}s", v69, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B6FB0C(v8);
      }

      v19 = (a1 + 208);
      if (v16 <= *(a1 + 208))
      {
        v22 = *(sub_1001CBE20() + 8);
        v23 = *a2;
        v24 = a2[1];
        if (*a2 != v24)
        {
          do
          {
            v25 = *(v23 + 24);
            *__p = *(v23 + 8);
            *&__p[16] = v25;
            v26 = *(v23 + 40);
            v27 = *(v23 + 56);
            v28 = *(v23 + 88);
            v78 = *(v23 + 72);
            v79 = v28;
            v76 = v26;
            v77 = v27;
            v29 = *(v23 + 104);
            v30 = *(v23 + 120);
            v31 = *(v23 + 136);
            *&v82[12] = *(v23 + 148);
            v81 = v30;
            *v82 = v31;
            v80 = v29;
            sub_1001097CC((a1 + 96), buf, __p);
            if (v32 < v22)
            {
              v33 = *(a1 + 144);
              v34 = *(a1 + 152);
              if (v33 >= v34)
              {
                v45 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *v2) >> 6);
                v46 = v45 + 1;
                if (v45 + 1 > 0x155555555555555)
                {
                  sub_10028C64C();
                }

                v47 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *v2) >> 6);
                if (2 * v47 > v46)
                {
                  v46 = 2 * v47;
                }

                if (v47 >= 0xAAAAAAAAAAAAAALL)
                {
                  v48 = 0x155555555555555;
                }

                else
                {
                  v48 = v46;
                }

                if (v48)
                {
                  sub_10019033C(v2, v48);
                }

                v49 = 192 * v45;
                v50 = *v23;
                v51 = v23[1];
                v52 = v23[3];
                *(v49 + 32) = v23[2];
                *(v49 + 48) = v52;
                *v49 = v50;
                *(v49 + 16) = v51;
                v53 = v23[4];
                v54 = v23[5];
                v55 = v23[7];
                *(v49 + 96) = v23[6];
                *(v49 + 112) = v55;
                *(v49 + 64) = v53;
                *(v49 + 80) = v54;
                v56 = v23[8];
                v57 = v23[9];
                v58 = v23[11];
                *(v49 + 160) = v23[10];
                *(v49 + 176) = v58;
                *(v49 + 128) = v56;
                *(v49 + 144) = v57;
                v44 = 192 * v45 + 192;
                v59 = *(a1 + 136);
                v60 = *(a1 + 144) - v59;
                v61 = 192 * v45 - v60;
                memcpy((v49 - v60), v59, v60);
                v62 = *(a1 + 136);
                *(a1 + 136) = v61;
                *(a1 + 144) = v44;
                *(a1 + 152) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                v35 = *v23;
                v36 = v23[1];
                v37 = v23[3];
                v33[2] = v23[2];
                v33[3] = v37;
                *v33 = v35;
                v33[1] = v36;
                v38 = v23[4];
                v39 = v23[5];
                v40 = v23[7];
                v33[6] = v23[6];
                v33[7] = v40;
                v33[4] = v38;
                v33[5] = v39;
                v41 = v23[8];
                v42 = v23[9];
                v43 = v23[11];
                v33[10] = v23[10];
                v33[11] = v43;
                v33[8] = v41;
                v33[9] = v42;
                v44 = (v33 + 12);
              }

              *(a1 + 144) = v44;
            }

            v23 += 12;
          }

          while (v23 != v24);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101B6FAA0();
        }

        v63 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v64 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
          v65 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6);
          *__p = 134218496;
          *&__p[4] = v64;
          *&__p[12] = 2048;
          *&__p[14] = v65;
          *&__p[22] = 2048;
          *&__p[24] = v22;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, using %zu samples from %zu samples based on outlier threshold %.1f", __p, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B6FAA0();
          }

          v66 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
          v67 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6);
          *v69 = 134218496;
          v70 = v66;
          v71 = 2048;
          v72 = v67;
          v73 = 2048;
          v74 = v22;
          v68 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidCalculator::computeEntriesToUse(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v68);
          if (v68 != __p)
          {
            free(v68);
          }
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B6FAA0();
        }

        v20 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *v19;
          *__p = 134283777;
          *&__p[4] = v16;
          *&__p[12] = 2049;
          *&__p[14] = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiCentroidCalculator, discarding all entries as newest entry has age %{private}.1fs, greater than %{private}.1fs", __p, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B6FC34(v19, v16);
        }
      }
    }
  }
}

BOOL sub_1001AD5F4(float64x2_t *a1, uint64_t *a2)
{
  v2 = sub_1001AD820(a1, a2);
  if (qword_1025D4620 != -1)
  {
    sub_101B6FA8C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10018F0D0(__p);
    v4 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1026;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiCentroidCalculator, AP %{private}s has %{public}d moves", &buf, 0x12u);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    sub_10018F0D0(&buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v9 = 136380931;
    v10 = p_buf;
    v11 = 1026;
    v12 = v2;
    v7 = _os_log_send_and_compose_impl();
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiCentroidCalculator::isMovingAp(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v7);
    if (v7 != __p)
    {
      free(v7);
    }
  }

  return v2 > *(sub_1001CBE20() + 22);
}

uint64_t sub_1001AD820(float64x2_t *a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  sub_101207E8C(a2);
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (!v5)
  {
LABEL_12:
    sub_10046F324();
  }

  v6 = *(v4 + 24);
  __dst[0] = *(v4 + 8);
  __dst[1] = v6;
  v7 = *(v4 + 40);
  v8 = *(v4 + 56);
  v9 = *(v4 + 88);
  __dst[4] = *(v4 + 72);
  __dst[5] = v9;
  __dst[2] = v7;
  __dst[3] = v8;
  v10 = *(v4 + 104);
  v11 = *(v4 + 120);
  v12 = *(v4 + 136);
  *(v31 + 12) = *(v4 + 148);
  __dst[7] = v11;
  v31[0] = v12;
  __dst[6] = v10;
  if (0xAAAAAAAAAAAAAAABLL * (v5 >> 6) < 2)
  {
    return 0;
  }

  v13 = 0;
  v14 = 1;
  v15 = 200;
  do
  {
    v16 = *(v4 + v15 + 16);
    v28[0] = *(v4 + v15);
    v28[1] = v16;
    v17 = *(v4 + v15 + 32);
    v18 = *(v4 + v15 + 48);
    v19 = *(v4 + v15 + 80);
    v28[4] = *(v4 + v15 + 64);
    v28[5] = v19;
    v28[2] = v17;
    v28[3] = v18;
    v20 = *(v4 + v15 + 96);
    v21 = *(v4 + v15 + 112);
    v22 = *(v4 + v15 + 128);
    *&v29[12] = *(v4 + v15 + 140);
    v28[7] = v21;
    *v29 = v22;
    v28[6] = v20;
    sub_1001097CC(a1 + 6, __dst, v28);
    v24 = v23;
    v25 = sub_1001CBE20();
    v4 = *a2;
    v26 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 6);
    if (v24 > *(v25 + 10))
    {
      if (v26 <= v14)
      {
        goto LABEL_12;
      }

      v13 = (v13 + 1);
      memmove(__dst, (v4 + v15), 0x9CuLL);
    }

    ++v14;
    v15 += 192;
  }

  while (v14 < v26);
  return v13;
}

__n128 sub_1001AD9CC@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001ADAF4(a1);
  sub_1001ADC5C(a1);
  sub_1001ADD60(a1);
  sub_1001ADEC8(a1);
  sub_1001AE670(a1);
  sub_1001AE73C(a1, (a1 + 136));
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

double sub_1001ADA38(uint64_t a1)
{
  if (*sub_1001CBE20() != 1)
  {
    return 1.0;
  }

  v2 = *(a1 + 168);
  if (*(sub_1001CBE20() + 2) < v2)
  {
    v2 = *(sub_1001CBE20() + 2);
  }

  if (*(sub_1001CBE20() + 1) > v2)
  {
    v2 = *(sub_1001CBE20() + 1);
  }

  v3 = *(sub_1001CBE20() + 2) - v2;
  v4 = v3 / *(sub_1001CBE20() + 3);

  return exp(v4);
}

void sub_1001ADAF4(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  v3 = -180.0;
  if (v2 < *(sub_1001CBE20() + 18))
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 == v5)
  {
    goto LABEL_16;
  }

  v6 = 1.79769313e308;
  v7 = -1.79769313e308;
  v8 = *(a1 + 136);
  do
  {
    v9 = *(v8 + 20);
    v7 = fmax(v7, v9);
    v6 = fmin(v6, v9);
    v8 += 192;
  }

  while (v8 != v5);
  v10 = v6 < -179.9 && v7 > 179.9;
  if (v4 == v5)
  {
LABEL_16:
    v17 = -180.0;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *(v4 + 12);
      v15 = *(v4 + 20);
      v16 = sub_1001ADA38(v4);
      if (v10)
      {
        v15 = fmod(v15 + 360.0, 360.0);
      }

      v13 = v13 + v16;
      v11 = v11 + v14 * v16;
      v12 = v12 + v15 * v16;
      v4 += 192;
    }

    while (v4 != v5);
    v17 = -180.0;
    if (v13 > 0.0)
    {
      v3 = v11 / v13;
      v17 = v12 / v13;
      if (v12 / v13 > 180.0)
      {
        v17 = v17 + -360.0;
      }
    }
  }

  *a1 = v3;
  *(a1 + 8) = v17;
}

void sub_1001ADC5C(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  v3 = -1.0;
  if (v2 >= *(sub_1001CBE20() + 18) && fabs(*a1) <= 90.0 && fabs(*(a1 + 8)) <= 180.0)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 144);
    if (v4 != v5)
    {
      v6 = 0.0;
      v7 = 0.0;
      do
      {
        v8 = sub_100109D18((a1 + 96), *(v4 + 12), *(v4 + 20), *a1, *(a1 + 8), 0.0);
        v9 = sub_1001ADA38(v4);
        v6 = v6 + v8 * v9 * v8;
        v7 = v7 + v9;
        v4 += 192;
      }

      while (v4 != v5);
      if (v7 > 0.0)
      {
        v3 = fmax(sqrt(v6 / v7), *(sub_1001CBE20() + 7));
      }
    }
  }

  *(a1 + 32) = v3;
}

char *sub_1001ADD60(void *a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[18] - a1[17]) >> 6);
  v3 = sub_1001CBE20();
  if (v2 >= *(v3 + 18))
  {
    v7 = a1[17];
    v8 = a1[18];
    if (v7 == v8)
    {
      goto LABEL_10;
    }

    v9 = 0.0;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    v12 = 0.0;
    do
    {
      LODWORD(v3) = sub_1001ADE70(v3, v7);
      if (v3)
      {
        v13 = *(v7 + 36);
        v11 = fmax(v11, v13);
        v10 = fmin(v10, v13);
        v14 = sub_1001ADA38(v7);
        v12 = v12 + v14;
        v9 = v9 + v13 * v14;
      }

      v7 += 192;
    }

    while (v7 != v8);
    if (v12 == 0.0 || (result = sub_1001CBE20(), v11 - v10 > *(result + 5)))
    {
LABEL_10:
      result = sub_1001CBE20();
      a1[2] = *(result + 6);
      v5 = -1.0;
      v6 = 5;
    }

    else
    {
      v6 = 2;
      v5 = v9 / v12;
    }
  }

  else
  {
    result = sub_1001CBE20();
    v5 = *(result + 6);
    v6 = 2;
  }

  *&a1[v6] = v5;
  return result;
}

BOOL sub_1001ADE70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  if (v3 == *(sub_1001CBE20() + 6))
  {
    return 0;
  }

  v5 = *(a2 + 44);
  return v5 <= *(sub_1001CBE20() + 4);
}

void sub_1001ADEC8(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  v3 = -1.0;
  if (v2 >= *(sub_1001CBE20() + 18))
  {
    v4 = *(a1 + 16);
    v5 = sub_1001CBE20();
    if (v4 != *(v5 + 6))
    {
      v6 = *(a1 + 136);
      v7 = *(a1 + 144);
      if (v6 != v7)
      {
        v8 = 0.0;
        v9 = 0.0;
        do
        {
          LODWORD(v5) = sub_1001ADE70(v5, v6);
          if (v5)
          {
            v10 = vabdd_f64(*(a1 + 16), *(v6 + 36));
            v11 = sub_1001ADA38(v6);
            v8 = v8 + v11 * v10 * v10;
            v9 = v9 + v11;
          }

          v6 += 192;
        }

        while (v6 != v7);
        if (v9 > 0.0)
        {
          v3 = sqrt(v8 / v9);
        }
      }
    }
  }

  *(a1 + 40) = v3;
}

uint64_t sub_1001ADFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001970F8(a2, *(a1 + 72), *(a1 + 52), *(a1 + 48), 0, *(a1 + 24), -1, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 32), *(a1 + 40), *(a1 + 64));
  *(result + 88) = *(a1 + 88);
  return result;
}

char *sub_1001AE000@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[207] < 0)
  {
    return sub_100007244(a2, *(result + 23), *(result + 24));
  }

  *a2 = *(result + 184);
  *(a2 + 16) = *(result + 25);
  return result;
}

uint64_t sub_1001AE028()
{
  sub_10001A3E8();
  result = sub_1001AE054();
  if (result)
  {
    sub_10001A3E8();
    return sub_10001CF3C() ^ 1;
  }

  return result;
}

BOOL sub_1001AE054()
{
  if ((sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_10006FE64() || sub_10006FDD0() && !sub_10006FEAC())
  {
    return 1;
  }

  return sub_100718F78();
}

void sub_1001AE0AC(double *a1, double *a2, uint64_t a3)
{
  if (rand() % 100 <= 0)
  {
    sub_1002E98BC(a1, a2);
    v7 = 11;
    strcpy(__p, "WifiHarvest");
    sub_1002E9B38(a1, a3, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = 10;
    strcpy(__p, "GpsHarvest");
    sub_1002E9B38(a2, a3, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001AE1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001AE1CC@<D0>(uint64_t a1@<X8>)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  v2 = sub_100196E8C(__p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001A61B8(v2, __p);
  sub_1001A8F68(__p, a1);
  *a1 = vdupq_n_s64(0xC066800000000000);
  *(a1 + 16) = 0xC07F400000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 52) = 0xFFFFFFFFLL;
  *(a1 + 88) = 0;
  return result;
}

void sub_1001AE268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AE290(uint64_t a1)
{
  *(a1 + 1528) = 0;
  sub_1001AC300(a1, &v17);
  v2 = v20;
  *(a1 + 824) = v19;
  *(a1 + 840) = v2;
  *(a1 + 856) = v21[0];
  *(a1 + 865) = *(v21 + 9);
  v3 = v18;
  *(a1 + 792) = v17;
  *(a1 + 808) = v3;
  if (sub_1001AE028())
  {
    sub_1001AEC20(a1, __p);
    v4 = v15;
    *(a1 + 728) = v14;
    *(a1 + 744) = v4;
    *(a1 + 760) = v16[0];
    *(a1 + 769) = *(v16 + 9);
    v5 = v13;
    *(a1 + 696) = *__p;
    *(a1 + 712) = v5;
    sub_1001AE0AC(&v17, (a1 + 696), a1);
    if (fabs(*(a1 + 696)) <= 90.0 && fabs(*(a1 + 704)) <= 180.0)
    {
      sub_100238844(a1, &v17);
      sub_10000EC00(__p, "Valid: gnss_harvest_database");
      sub_1001E0C0C(a1 + 888, __p);
      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
      }

      v9 = 1;
      goto LABEL_20;
    }
  }

  sub_1001AF058(a1, __p);
  v6 = v15;
  *(a1 + 728) = v14;
  *(a1 + 744) = v6;
  *(a1 + 760) = v16[0];
  *(a1 + 769) = *(v16 + 9);
  v7 = v13;
  *(a1 + 696) = *__p;
  *(a1 + 712) = v7;
  sub_1001AE0AC(&v17, (a1 + 696), a1);
  if (fabs(*(a1 + 696)) <= 90.0 && fabs(*(a1 + 704)) <= 180.0)
  {
    sub_100238844(a1, &v17);
    sub_10000EC00(__p, "Valid: local_store");
    sub_1001E0C0C(a1 + 888, __p);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = 3;
    goto LABEL_20;
  }

  v8 = sub_100100690();
  if (sub_1001E49C8(v8) && fabs(*&v17) <= 90.0 && fabs(*(&v17 + 1)) <= 180.0)
  {
    sub_10000EC00(__p, "Valid: wifi_harvest_database");
    sub_1001E0C0C(a1 + 888, __p);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v10 = v20;
    *(a1 + 728) = v19;
    *(a1 + 744) = v10;
    *(a1 + 760) = v21[0];
    *(a1 + 769) = *(v21 + 9);
    v11 = v18;
    *(a1 + 696) = v17;
    *(a1 + 712) = v11;
    v9 = 2;
LABEL_20:
    *(a1 + 1528) = v9;
    return;
  }

  sub_10000EC00(__p, "Invalid");
  sub_1001E0C0C(a1 + 888, __p);
  if (SBYTE7(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001AE51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001AE544(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_1001AE1CC(a1);
  sub_10018D404(a1 + 96);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = *a3;
  *(a1 + 216) = 0;
  if (*a2 == a2[1])
  {
    *(a1 + 160) = 0xBFF0000000000000;
  }

  else
  {
    *(a1 + 72) = **a2;
    sub_101207A44(a2, __p);
    *(a1 + 160) = sub_1001ACAE4(a1, __p);
    *(a1 + 216) = sub_1001AD5F4(a1, __p);
    sub_1001ACF24(a1, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_1001AE62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (*(v11 + 207) < 0)
  {
    operator delete(*v13);
  }

  v15 = *v12;
  if (*v12)
  {
    *(v11 + 144) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AE670(uint64_t a1)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 144) - *(a1 + 136)) >> 6);
  if (v2 < *(sub_1001CBE20() + 18) || fabs(*a1) > 90.0 || fabs(*(a1 + 8)) > 180.0 || (v3 = *(a1 + 136), v4 = *(a1 + 144), v3 == v4))
  {
    v5 = -1;
  }

  else
  {
    v5 = -1;
    do
    {
      v5 = fmax(v5, sub_100109D18((a1 + 96), *(v3 + 12), *(v3 + 20), *a1, *(a1 + 8), 0.0));
      v3 += 192;
    }

    while (v3 != v4);
  }

  *(a1 + 52) = v5;
}

void sub_1001AE73C(uint64_t a1, uint64_t *a2)
{
  if (*a2 == a2[1])
  {
    return;
  }

  sub_101207E8C(a2);
  v4 = *a2;
  v5 = (a2[1] - *a2) >> 6;
  *(a1 + 168) = *(*a2 + 184);
  *(a1 + 176) = 1;
  sub_100191B4C(v4, buf);
  v6 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    operator delete(*v6);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * v5;
  *v6 = *buf;
  *(a1 + 200) = *&buf[16];
  if (*(v4 + 184) != -1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (a1 + 184);
      if (*(a1 + 207) < 0)
      {
        v9 = *v6;
      }

      *buf = 136380931;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiCentroidCalculator, inferred associated AP LOI type %{private}s using newest sample out of %zu samples", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B6FAA0();
      }

      if (*(a1 + 207) < 0)
      {
        v6 = *v6;
      }

      v27 = 136380931;
      v28 = v6;
      v29 = 2048;
      v30 = v7;
      goto LABEL_36;
    }

    return;
  }

  sub_1001ADFA4(a1, buf);
  sub_1001AB7A0(buf, &v27);
  v11 = *a2;
  v10 = a2[1];
  if (v10 == *a2)
  {
    return;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = v11 + v12;
    if (*(v11 + v12 + 184) != -1)
    {
      break;
    }

LABEL_18:
    ++v13;
    v12 += 192;
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 6) <= v13)
    {
      return;
    }
  }

  v15 = *(v14 + 24);
  *buf = *(v14 + 8);
  *&buf[16] = v15;
  v16 = *(v14 + 40);
  v17 = *(v14 + 56);
  v18 = *(v14 + 88);
  v33 = *(v14 + 72);
  v34 = v18;
  *&buf[32] = v16;
  v32 = v17;
  v19 = *(v14 + 104);
  v20 = *(v14 + 120);
  v21 = *(v14 + 136);
  *(v37 + 12) = *(v14 + 148);
  v36 = v20;
  v37[0] = v21;
  v35 = v19;
  sub_1001097CC((a1 + 96), &v27, buf);
  v23 = v22;
  if (v22 > *(sub_1001CBE20() + 8))
  {
    v11 = *a2;
    v10 = a2[1];
    goto LABEL_18;
  }

  *(a1 + 168) = *(v11 + v12 + 184);
  *(a1 + 176) = 1;
  sub_100191B4C(v11 + v12, buf);
  if (*(a1 + 207) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *buf;
  *(a1 + 200) = *&buf[16];
  if (qword_1025D4620 != -1)
  {
    sub_101B6FAA0();
  }

  v24 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v25 = (a1 + 184);
    if (*(a1 + 207) < 0)
    {
      v25 = *v6;
    }

    *buf = 136381443;
    *&buf[4] = v25;
    *&buf[12] = 1024;
    *&buf[14] = v13 + 1;
    *&buf[18] = 2048;
    *&buf[20] = v7;
    *&buf[28] = 2048;
    *&buf[30] = v23;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "WifiCentroidCalculator, inferred associated AP LOI type %{private}s using sample %d / %zu, distance %.1fm", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B6FAA0();
    }

LABEL_36:
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidCalculator::inferLocationOfInterestType(const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }
}

uint64_t sub_1001AEBD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1001ADFA4(a1, v5);
  sub_1001AB7A0(v5, v4);
  return sub_1001D78F4(a2);
}

void sub_1001AEC20(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 671);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 656);
  }

  if (v4)
  {
    sub_10082C75C();
  }

  sub_1001CBD74(&v10);
  sub_1001B3390(v10, (a1 + 512));
  v5 = v11;
  v9[0] = v10;
  v9[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000EC00(__p, "GPS");
  v6 = sub_100100690();
  sub_1001AC4CC(a1, v9, __p, (v6 + 88), a2);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    sub_100008080(v5);
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

void sub_1001AECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (v19)
  {
    sub_100008080(v19);
  }

  if (a19)
  {
    sub_100008080(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001AED40(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = result[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (result[4] = v6 - (v7 << 8); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10045E858(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 8; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_1001AEFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001AF058(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001AE1CC(a2);
  if (sub_1001AF614())
  {
    v4 = sub_1001AB6B4(*(a1 + 624));
    if (v4 && (v5 = v4, ([v4 isValid] & 1) != 0))
    {
      [v5 purgeOlderRecords];
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        [v5 getBasicInfo];
        v7 = __p[23] >= 0 ? __p : *__p;
        *buf = 136642819;
        v38 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, fetching associated AP centroid from local store, %{sensitive}s", buf, 0xCu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA4210();
      }

      v8 = [v5 fetchRecord:sub_10023A2FC()];
      if (v8)
      {
        Current = CFAbsoluteTimeGetCurrent();
        [v8 lastUpdated];
        v11 = v10;
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v12 = Current - v11;
        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [objc_msgSend(v8 "description")];
          *__p = 136643075;
          *&__p[4] = v14;
          *&__p[12] = 2049;
          *&__p[14] = v12;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, found associated AP centroid from local store: %{sensitive}s, age: %{private}.1fs", __p, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA4314(v8, v12);
        }

        [v8 latitude];
        *a2 = v15;
        [v8 longitude];
        *(a2 + 8) = v16;
        [v8 altitude];
        *(a2 + 16) = v17;
        [v8 horizontalAccuracy];
        *(a2 + 32) = v18;
        [v8 verticalAccuracy];
        *(a2 + 40) = v19;
        *(a2 + 52) = [v8 reach];
        [v8 stationaryTimeInSeconds];
        *(a1 + 1520) = v20;
        sub_10000EC00(__p, [objc_msgSend(v8 "loiType")]);
        v21 = (a1 + 1496);
        if (*(a1 + 1519) < 0)
        {
          operator delete(*v21);
        }

        *v21 = *__p;
        *(a1 + 1512) = *&__p[16];
        if (*(a1 + 1519) < 0)
        {
          v27 = *(a1 + 1504);
          if (v27 <= 5)
          {
            if (v27 != 3)
            {
              if (v27 == 4)
              {
                if (**v21 == 1701670728)
                {
LABEL_92:
                  v29 = 0;
                  v28 = 0;
                  goto LABEL_93;
                }

                v23 = **v21;
                goto LABEL_52;
              }

LABEL_88:
              v29 = 0;
              v31 = 0;
              v28 = 0;
              goto LABEL_89;
            }

            if (**v21 != 31047 || *(*v21 + 2) != 109)
            {
              goto LABEL_88;
            }

            goto LABEL_83;
          }

          if (v27 != 6)
          {
            if (v27 != 7)
            {
              goto LABEL_88;
            }

            v21 = *v21;
            goto LABEL_60;
          }

          if (**v21 != 1869112147 || *(*v21 + 2) != 27759)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v22 = *(a1 + 1519);
          if (v22 <= 5)
          {
            if (v22 != 3)
            {
              if (v22 == 4)
              {
                v23 = *v21;
                if (*v21 == 1701670728)
                {
                  goto LABEL_92;
                }

LABEL_52:
                if (v23 == 1802661719)
                {
                  v28 = 0;
                  v29 = 1;
LABEL_93:
                  v31 = 1;
                  goto LABEL_89;
                }

                goto LABEL_88;
              }

              goto LABEL_88;
            }

            if (*v21 != 31047 || *(a1 + 1498) != 109)
            {
              goto LABEL_88;
            }

LABEL_83:
            v28 = 0;
            v31 = 1;
            v29 = 3;
            goto LABEL_89;
          }

          if (v22 != 6)
          {
            if (v22 != 7)
            {
              goto LABEL_88;
            }

LABEL_60:
            if (*v21 != 1852534357 || *(v21 + 3) != 1853321070)
            {
              goto LABEL_88;
            }

            v28 = -256;
            v31 = 1;
            v29 = 255;
LABEL_89:
            *(a1 + 1480) = v28 | v29;
            *(a1 + 1488) = v31;

            return;
          }

          if (*v21 != 1869112147 || *(a1 + 1500) != 27759)
          {
            goto LABEL_88;
          }
        }

        v28 = 0;
        v31 = 1;
        v29 = 2;
        goto LABEL_89;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101AA3FB0();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, could not find associated AP centroid from local store", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA4454();
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v25 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip fetching associated AP centroid from local store as the store is invalid", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA4540();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip fetching associated AP centroid from local store as it is disabled by settings", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA4124();
    }
  }
}

uint64_t sub_1001AF614()
{
  v12 = 0;
  sub_10001CAF4(&buf);
  v0 = sub_10001CB4C(buf, "iCloudSharingEnabled", &v12);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019DB1F0();
    }

    v1 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (v12)
      {
        v2 = "true";
      }

      else
      {
        v2 = "false";
      }

      LODWORD(buf) = 136380675;
      *(&buf + 4) = v2;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "CLWifi1Settings, #Warning defaults write iCloudSharingEnabled to %{private}s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DB370(&v12);
    }

    v3 = &v12;
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1019DB1F0();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001A3E8();
      sub_1001AF89C(&buf);
      v5 = v14 >= 0 ? &buf : buf;
      *v15 = 136446210;
      v16 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLWifi1Settings, system version: %{public}s", v15, 0xCu);
      if (v14 < 0)
      {
        operator delete(buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DB218();
    }

    sub_10001A3E8();
    if (sub_10001CF04())
    {
      v3 = sub_100100690() + 117;
    }

    else
    {
      sub_10001A3E8();
      if (sub_10001CF3C())
      {
        v3 = sub_100100690() + 120;
      }

      else
      {
        sub_10001A3E8();
        v7 = sub_10003FFF8();
        sub_10001A3E8();
        if (v7)
        {
          v8 = sub_1001AE054();
          v9 = sub_100100690();
          if (v8)
          {
            v3 = v9 + 118;
          }

          else
          {
            v3 = v9 + 119;
          }
        }

        else if (sub_1007194F0())
        {
          v3 = sub_100100690() + 122;
        }

        else
        {
          sub_10001A3E8();
          v10 = sub_1007195F0();
          v11 = sub_100100690();
          if (v10)
          {
            v3 = v11 + 123;
          }

          else
          {
            v3 = v11 + 126;
          }
        }
      }
    }
  }

  return *v3;
}

void sub_1001AF87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1001AF89C@<X0>(_BYTE *a1@<X8>)
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
  }

  v3 = [v2 objectForKey:_kCFSystemVersionProductVersionKey];
  v4 = [v2 objectForKey:_kCFSystemVersionProductNameKey];
  v5 = [v2 objectForKey:_kCFSystemVersionBuildVersionKey];
  v6 = @"???";
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"???";
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = @"???";
  }

  if (v5)
  {
    v6 = v5;
  }

  v9 = [NSString stringWithFormat:@"%@ %@ (%@)", v7, v8, v6];

  v10 = [(NSString *)v9 UTF8String];

  return sub_10000EC00(a1, v10);
}

void sub_1001AFBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a15;
  sub_1002394D8(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AFC18(uint64_t a1, void *a2)
{
  result = sub_10018E854(a1);
  if (result)
  {
    if (qword_1025D4850 != -1)
    {
      sub_10194D038();
    }

    v5 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      sub_1001912D0(a2, v35);
      v6 = __p;
      if (v34 < 0)
      {
        v6 = __p[0];
      }

      if (v38 >= 0)
      {
        v7 = v35;
      }

      else
      {
        v7 = *v35;
      }

      *buf = 136315395;
      *&buf[4] = v6;
      v26 = 2085;
      v27 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "%s, adding associated AP harvest sample: %{sensitive}s", buf, 0x16u);
      if (v38 < 0)
      {
        operator delete(*v35);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194CFF4(__p);
      std::operator+<char>();
      v14 = v38;
      v15 = *v35;
      sub_1001912D0(a2, buf);
      v16 = v35;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v28 >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      v29 = 136315395;
      v30 = v16;
      v31 = 2085;
      v32 = v17;
      v18 = _os_log_send_and_compose_impl();
      if (v28 < 0)
      {
        operator delete(*buf);
      }

      if (v38 < 0)
      {
        operator delete(*v35);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSample(const CLWifiHarvestDatabaseEntry &)", "%s\n", v18);
      if (v18 != __p)
      {
        free(v18);
      }
    }

    *(a1 + 256) = *a2;
    if (sub_1001B00D0(a1))
    {
      return 1;
    }

    else
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v8 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v9 = v34;
        v10 = __p[0];
        v11 = sub_10018E854(a1);
        v12 = __p;
        v13 = "invalid";
        if (v9 < 0)
        {
          v12 = v10;
        }

        if (v11)
        {
          v13 = "valid";
        }

        *v35 = 136315394;
        *&v35[4] = v12;
        v36 = 2080;
        v37 = v13;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "%s, #warning, could not insert associated AP harvest sample into %s database!", v35, 0x16u);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_10194CFF4(__p);
        std::operator+<char>();
        v19 = v38;
        v20 = *v35;
        v21 = sub_10018E854(a1);
        v22 = v35;
        v23 = "invalid";
        if (v19 < 0)
        {
          v22 = v20;
        }

        if (v21)
        {
          v23 = "valid";
        }

        *buf = 136315394;
        *&buf[4] = v22;
        v26 = 2080;
        v27 = v23;
        v24 = _os_log_send_and_compose_impl();
        if (v38 < 0)
        {
          operator delete(*v35);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSample(const CLWifiHarvestDatabaseEntry &)", "%s\n", v24);
        if (v24 != __p)
        {
          free(v24);
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_1001B0090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 89) < 0)
  {
    operator delete(*(v24 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B00D0(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v40);
    v2 = sub_100038730(&v41, "INSERT OR REPLACE INTO ", 23);
    v3 = (a1 + 232);
    if (*(a1 + 255) < 0)
    {
      v3 = *v3;
    }

    v4 = strlen(v3);
    v5 = sub_100038730(v2, v3, v4);
    v6 = sub_100038730(v5, "(", 3);
    v7 = sub_100038730(v6, "MAC", 3);
    v8 = sub_100038730(v7, ",", 1);
    v9 = sub_100038730(v8, "Channel", 7);
    v10 = sub_100038730(v9, ",", 1);
    v11 = sub_100038730(v10, "Rssi", 4);
    v12 = sub_100038730(v11, ",", 1);
    v13 = sub_100038730(v12, "ScanTimestamp", 13);
    v14 = sub_100038730(v13, ",", 1);
    v15 = strlen("Timestamp");
    v16 = sub_100038730(v14, "Timestamp", v15);
    v17 = sub_100038730(v16, ",", 1);
    v18 = strlen("Latitude");
    v19 = sub_100038730(v17, "Latitude", v18);
    v20 = sub_100038730(v19, ",", 1);
    v21 = strlen("Longitude");
    v22 = sub_100038730(v20, "Longitude", v21);
    v23 = sub_100038730(v22, ",", 1);
    v24 = strlen("HorizontalAccuracy");
    v25 = sub_100038730(v23, "HorizontalAccuracy", v24);
    v26 = sub_100038730(v25, ",", 1);
    v27 = strlen("Altitude");
    v28 = sub_100038730(v26, "Altitude", v27);
    v29 = sub_100038730(v28, ",", 1);
    v30 = strlen("VerticalAccuracy");
    v31 = sub_100038730(v29, "VerticalAccuracy", v30);
    v32 = sub_100038730(v31, ",", 1);
    v33 = sub_100038730(v32, "LoiType", 7);
    v34 = sub_100038730(v33, ") VALUES ", 9);
    sub_100038730(v34, "(?,?,?,?,?,?,?,?,?,?,?);", 24);
    sub_100073518(v40, __p);
    if (v39 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    sub_1000388D8(a1 + 64, v35);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v36 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call insertOrReplace() without a backing database in CLWifiHarvestDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE32A8();
  }

  return 0;
}

void sub_1001B08E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B0960(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 16);
  (*(*v3 + 16))(v3);
  LODWORD(v1) = sqlite3_changes(*(v1 + 8));
  (*(*v3 + 24))(v3);
  return v1;
}

void sub_1001B09FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

double sub_1001B0A10(uint64_t a1)
{
  v1 = (a1 + 8);
  v5 = *(a1 + 8);
  sub_10001CAF4(&buf);
  v2 = sub_1000B9370(buf, "databasePurgeThreshold", &v5);
  if (*(&buf + 1))
  {
    sub_100008080(*(&buf + 1));
  }

  if (v2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B78E54();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134283521;
      *(&buf + 4) = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLWifi1Settings, #Warning defaults write databasePurgeThreshold to %{private}.1f", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B793B8();
    }

    v1 = &v5;
  }

  return *v1;
}

void sub_1001B0B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B0B4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 8;
  (*(*a1 + 16))(__p);
  sub_1001B0C14(a2, a1 + 64, v4, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1001B0BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001B0BEC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[255] < 0)
  {
    return sub_100007244(a2, *(result + 29), *(result + 30));
  }

  *a2 = *(result + 232);
  *(a2 + 16) = *(result + 31);
  return result;
}

id *sub_1001B0C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000FF38(v25, "CLLocationDatabase::clearLocationsByAge", 0);
  if (sub_100023B68(a2))
  {
    if (*(a3 + 8) != 1)
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1001B1FD8;
      v24[3] = &unk_102463E88;
      v24[4] = a1;
      v24[5] = a4;
      v24[6] = mach_absolute_time();
      v24[7] = v24;
      sub_10003848C(v22);
      v11 = sub_100038730(&v23, "DELETE FROM ", 12);
      v12 = *(a4 + 23);
      if (v12 >= 0)
      {
        v13 = a4;
      }

      else
      {
        v13 = *a4;
      }

      if (v12 >= 0)
      {
        v14 = *(a4 + 23);
      }

      else
      {
        v14 = *(a4 + 8);
      }

      v15 = sub_100038730(v11, v13, v14);
      v16 = sub_100038730(v15, " WHERE ", 7);
      v17 = sub_100038730(v16, "Timestamp", 9);
      v18 = sub_100038730(v17, " < ? OR ", 8);
      v19 = sub_100038730(v18, "Timestamp", 9);
      sub_100038730(v19, " > ?", 4);
      sub_100073518(v22, buf);
      if (v27 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      sub_1000388D8(a2, v20);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018F331C();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Can't clear locations by age in read-only database", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F3344(buf);
      LOWORD(v22[0]) = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "static void CLLocationDatabase::clearLocationsByAge(const CFTimeInterval &, CLSqliteDatabase &, const CLSqliteDatabase::SqliteProperties &, const std::string &)", "%s\n", v9);
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018F3718();
    }

    v10 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call clearLocationsByAge() without a backing database in CLLocationDatabase!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F3AFC(buf);
      LOWORD(v22[0]) = 0;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationDatabase::clearLocationsByAge(const CFTimeInterval &, CLSqliteDatabase &, const CLSqliteDatabase::SqliteProperties &, const std::string &)", "%s\n", v9);
LABEL_15:
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return sub_10001A420(v25);
}

void sub_1001B163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  sub_10026C504(&a11);
  sub_10010069C(&a53);
  sub_10001A420(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B16EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v28[2] = v4;
  (*(*v4 + 16))(v4);
  v29 = 256;
  if (*(a1 + 56) == 1)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v5 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      v6 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v6 = *v6;
      }

      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Attempt to reduceFreePages on readonly database, path:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v7 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v8 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v8 = *v8;
      }

      *buf = 68289282;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempt to reduceFreePages on readonly database", "{msg%{public}.0s:Attempt to reduceFreePages on readonly database, path:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v9 = 2;
    goto LABEL_65;
  }

  v10 = sub_1001B1CF8();
  if (sub_1001B1CF0(v10))
  {
    sub_10000FF38(v28, "IncrementalVacuum", 0);
    v27[0] = mach_absolute_time();
    v27[1] = &stru_102463EC8;
    v26 = 0;
    if (sub_1001B1D30(*(a1 + 8), "pragma page_count;", &v26))
    {
      v11 = v26;
    }

    else
    {
      v11 = -1;
    }

    if (sub_1001B1D30(*(a1 + 8), "pragma freelist_count;", &v26))
    {
      v12 = v26;
    }

    else
    {
      v12 = -1;
    }

    v13 = v11 - v12;
    if (v11)
    {
      v14 = v13 / v11;
    }

    else
    {
      v14 = 1.0;
    }

    if (qword_1025D4850 != -1)
    {
      sub_1018E57E8();
    }

    v17 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v18 = *v18;
      }

      *buf = 68290306;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2082;
      v35 = v18;
      v36 = 2050;
      v37 = v11;
      v38 = 2050;
      v39 = v12;
      v40 = 2050;
      v41 = v14;
      v42 = 2050;
      v43 = a2;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reduceFreePages, path:%{public, location:escape_only}s, page_count:%{public}lld, freelist_count:%{public}lld, loadFactor:%{public}f, incrementalVacuumPageLimit:%{public}lld}", buf, 0x44u);
    }

    if (!v12)
    {
      goto LABEL_42;
    }

    if (v11 < 0 || (v12 & 0x8000000000000000) != 0)
    {
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }

      v19 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
      {
        v20 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v20 = *v20;
        }

        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2082;
        v35 = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot reduceFreePages, path:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (qword_1025D4850 != -1)
        {
          sub_1018E57E8();
        }
      }

      v21 = off_1025D4858;
      if (os_signpost_enabled(off_1025D4858))
      {
        v22 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v22 = *v22;
        }

        *buf = 68289282;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2082;
        v35 = v22;
        _os_signpost_emit_with_name_impl(dword_100000000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot reduceFreePages", "{msg%{public}.0s:Cannot reduceFreePages, path:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      v9 = 4;
      goto LABEL_64;
    }

    if (v14 <= 0.85 || v12 >= 0x200)
    {
      if (v14 >= 0.4)
      {
        v23 = (v12 * 0.8);
      }

      else
      {
        v23 = v12 - v13;
      }

      if (v23 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = v23;
      }

      if (sub_100617784(a1, v24))
      {
        v9 = v23 > a2;
      }

      else
      {
        v9 = 4;
      }
    }

    else
    {
LABEL_42:
      v9 = 0;
    }

LABEL_64:
    sub_10010069C(v27);
    sub_10001A420(v28);
    goto LABEL_65;
  }

  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v15 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v16 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v16 = *v16;
    }

    *buf = 68289282;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 2082;
    v35 = v16;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Attempt to reduceFreePages with incremental vacuum disabled, path:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = 3;
LABEL_65:
  (*(*v4 + 24))(v4);
  return v9;
}

uint64_t sub_1001B1CF8()
{
  if (qword_10265EB38 != -1)
  {
    sub_101A89CB4();
  }

  return qword_102637D68;
}

BOOL sub_1001B1D30(sqlite3_stmt *a1, char *a2, sqlite3_int64 *a3)
{
  v5 = sub_100038FF4(a1, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sqlite3_step(v5);
  v8 = v7 == 100;
  if (v7 == 100)
  {
    *a3 = sqlite3_column_int64(v6, 0);
  }

  sub_1001B1DA0(a1, v6);
  return v8;
}

void sub_1001B1DA0(sqlite3 *a1, sqlite3_stmt *pStmt)
{
  v5 = sqlite3_finalize(pStmt);
  if (v5)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v4 = sqlite3_errmsg(a1);
      }

      else
      {
        v4 = "no database";
      }

      *buf = 68289795;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1040;
      v11 = 4;
      v12 = 2098;
      v13 = &v5;
      v14 = 2081;
      v15 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Finalized statement previously failed, rc:%{public, location:SqliteResult}.*P, errmsg:%{private, location:escape_only}s}", buf, 0x2Cu);
    }
  }
}

void sub_1001B1EC0(id a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1000080EC(a3 - a2);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v6 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68290050;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "elapsed";
    v12 = 2050;
    v13 = a2;
    v14 = 2050;
    v15 = a3;
    v16 = 2050;
    v17 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:reduceFreePages, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f}", v7, 0x3Au);
  }
}

void sub_1001B1FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000080EC(a3 - a2);
  if (qword_1025D4600 != -1)
  {
    sub_1018F3B40();
  }

  v7 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = **(a1 + 32);
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    v10[0] = 68290563;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "elapsed";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    v19 = 2050;
    v20 = v6;
    v21 = 2050;
    v22 = v9;
    v23 = 2081;
    v24 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLLocationDatabase::clearLocationsByAge, event:%{public, location:escape_only}s, begin_mach:%{public}llu, end_mach:%{public}llu, elapsed_s:%{public}.09f, age_s:%{public}.09f, tableName:%{private, location:escape_only}s}", v10, 0x4Eu);
  }
}

void sub_1001B211C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_1001B2710(a1, &v39);
  v3 = v39;
  v4 = v40;
  if (v39 != v40)
  {
    do
    {
      v38 = *v3;
      v41 = &v38;
      v5 = sub_1001B2C5C(a2, &v38);
      v6 = v5;
      v7 = v5[4];
      v8 = v5[5];
      if (v7 >= v8)
      {
        v19 = v5[3];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v19) >> 6);
        v21 = v20 + 1;
        if (v20 + 1 > 0x155555555555555)
        {
          sub_10028C64C();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v19) >> 6);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0xAAAAAAAAAAAAAALL)
        {
          v23 = 0x155555555555555;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          sub_10019033C((v5 + 3), v23);
        }

        v24 = 192 * v20;
        v25 = *v3;
        v26 = v3[1];
        v27 = v3[3];
        *(v24 + 32) = v3[2];
        *(v24 + 48) = v27;
        *v24 = v25;
        *(v24 + 16) = v26;
        v28 = v3[4];
        v29 = v3[5];
        v30 = v3[7];
        *(v24 + 96) = v3[6];
        *(v24 + 112) = v30;
        *(v24 + 64) = v28;
        *(v24 + 80) = v29;
        v31 = v3[8];
        v32 = v3[9];
        v33 = v3[11];
        *(v24 + 160) = v3[10];
        *(v24 + 176) = v33;
        *(v24 + 128) = v31;
        *(v24 + 144) = v32;
        v18 = 192 * v20 + 192;
        v34 = v5[3];
        v35 = v5[4] - v34;
        v36 = 192 * v20 - v35;
        memcpy((v24 - v35), v34, v35);
        v37 = v6[3];
        v6[3] = v36;
        v6[4] = v18;
        v6[5] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        v9 = *v3;
        v10 = v3[1];
        v11 = v3[3];
        v7[2] = v3[2];
        v7[3] = v11;
        *v7 = v9;
        v7[1] = v10;
        v12 = v3[4];
        v13 = v3[5];
        v14 = v3[7];
        v7[6] = v3[6];
        v7[7] = v14;
        v7[4] = v12;
        v7[5] = v13;
        v15 = v3[8];
        v16 = v3[9];
        v17 = v3[11];
        v7[10] = v3[10];
        v7[11] = v17;
        v7[8] = v15;
        v7[9] = v16;
        v18 = (v7 + 12);
      }

      v6[4] = v18;
      v3 += 12;
    }

    while (v3 != v4);
    v3 = v39;
  }

  if (v3)
  {
    v40 = v3;
    operator delete(v3);
  }
}

uint64_t sub_1001B2334(uint64_t a1)
{
  sub_1001B211C(a1, v41);
  v2 = sub_100100690();
  v3 = v42;
  if (v42)
  {
    v4 = *(v2 + 4);
    do
    {
      v5 = v3[3];
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v3[4] - v5) >> 6);
      v7 = v6 > v4;
      v8 = v6 - v4;
      if (v7)
      {
        v9 = v5 + 192 * v8;
        v10 = *(v9 + 24);
        v33 = *(v9 + 8);
        v34 = v10;
        v11 = *(v9 + 40);
        v12 = *(v9 + 56);
        v13 = *(v9 + 88);
        *v37 = *(v9 + 72);
        *&v37[16] = v13;
        v35 = v11;
        v36 = v12;
        v14 = *(v9 + 104);
        v15 = *(v9 + 120);
        v16 = *(v9 + 136);
        *(v40 + 12) = *(v9 + 148);
        v39 = v15;
        v40[0] = v16;
        v38 = v14;
        Current = CFAbsoluteTimeGetCurrent();
        v18 = *&v37[12];
        if (qword_1025D4850 != -1)
        {
          sub_10194CFCC();
        }

        v19 = Current - v18;
        v20 = off_1025D4858;
        if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
        {
          std::operator+<char>();
          v21 = SHIBYTE(v46);
          v22 = *v43;
          sub_10018F0D0(&__p);
          v23 = v43;
          if (v21 < 0)
          {
            v23 = v22;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          v51 = v23;
          v52 = 2048;
          v53 = v19;
          v54 = 2080;
          v55 = p_p;
          v56 = 1024;
          v57 = v4;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "%s, deleting samples older than %.1f(s) for mac %s to keep maximum %d samples", buf, 0x26u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(*v43);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194CFF4(buf);
          std::operator+<char>();
          v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v26 = __p.__r_.__value_.__r.__words[0];
          sub_10018F0D0(&v31);
          v27 = &__p;
          if (v25 < 0)
          {
            v27 = v26;
          }

          v28 = &v31;
          if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = v31.__r_.__value_.__r.__words[0];
          }

          *v43 = 136315906;
          *&v43[4] = v27;
          v44 = 2048;
          v45 = v19;
          v46 = 2080;
          v47 = v28;
          v48 = 1024;
          v49 = v4;
          v29 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v31.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::deleteOldSamplesBeyondThresholdForEachAssociatedAp()", "%s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        sub_100F795C4(a1);
      }

      v3 = *v3;
    }

    while (v3);
  }

  return sub_1001B2ECC(v41);
}

void sub_1001B2710(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10018FE0C(a1, &v13);
    v4 = std::string::append(&v13, " ", 1uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    sub_1001901C8(&v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v14;
    }

    else
    {
      v6 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v12, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    v15 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (v16 >= 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15;
    }

    sub_1000388D8(a1 + 64, v10);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v11 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getAllEntries() without a backing database in CLWifiHarvestDatabase!", &v12, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE353C();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_1001B2B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v45 - 121) < 0)
  {
    operator delete(*(v45 - 144));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001B2C5C(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_1001B2ECC(uint64_t a1)
{
  sub_1001B2F08(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001B2F08(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1001B2F54(uint64_t a1)
{
  sub_1001B211C(a1, v28);
  v2 = *(sub_100100690() + 5);
  if (v28[3] > v2)
  {
    sub_1001E9E88(v24, v28);
    if (v26)
    {
      v3 = v25;
      v4 = *v25;
      if (*v25)
      {
        do
        {
          if (*(v4[4] - 108) < *(v3[4] - 108))
          {
            v3 = v4;
          }

          v4 = *v4;
        }

        while (v4);
      }

      v5 = v3[2];
    }

    else
    {
      sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
      v5 = sub_100196E8C(__p);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*__p);
      }
    }

    v27 = v5;
    sub_1001B2ECC(v24);
    v6 = sub_1001EA21C(v28, &v27);
    Current = CFAbsoluteTimeGetCurrent();
    v8 = sub_10019D138(v28, &v27);
    if (!v8)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    v9 = *(v8[4] - 108);
    if (qword_1025D4850 != -1)
    {
      sub_10194CFCC();
    }

    v10 = Current - v9;
    v11 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      std::operator+<char>();
      v12 = SHIBYTE(v32);
      v13 = *v29;
      sub_10018F0D0(&v23);
      v14 = v29;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v23;
      }

      else
      {
        v15 = v23.__r_.__value_.__r.__words[0];
      }

      *__p = 136316162;
      *&__p[4] = v14;
      v39 = 2048;
      v40 = v6;
      v41 = 2080;
      v42 = v15;
      v43 = 2048;
      v44 = v10;
      v45 = 1024;
      v46 = v2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "%s, deleting all %zu samples for mac %s that was last harvested %.1f(s) ago to keep maximum %d distinct APs", __p, 0x30u);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*v29);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194CFF4(__p);
      std::operator+<char>();
      v17 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
      v18 = v23.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v22);
      v19 = &v23;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v22;
      }

      else
      {
        v20 = v22.__r_.__value_.__r.__words[0];
      }

      *v29 = 136316162;
      *&v29[4] = v19;
      v30 = 2048;
      v31 = v6;
      v32 = 2080;
      v33 = v20;
      v34 = 2048;
      v35 = v10;
      v36 = 1024;
      v37 = v2;
      v21 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::deleteAssociatedApThatHasNotBeenHarvestedForTheLongestTimeIfNecessary()", "%s\n", v21);
      if (v21 != __p)
      {
        free(v21);
      }
    }

    sub_100F7999C(a1);
  }

  return sub_1001B2ECC(v28);
}

void sub_1001B3390(uint64_t a1, void *a2)
{
  if (sub_10018E854(a1))
  {
    v4 = sub_1000081AC();
    if (v4 - *(a1 + 368) >= 7200.0)
    {
      *(a1 + 368) = v4;
      sub_1001B211C(a1, v60);
      v5 = v61;
      if (v61)
      {
        v6 = 0;
        do
        {
          v6 -= 0x5555555555555555 * ((v5[4] - v5[3]) >> 6);
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      v9 = v62;
      sub_1001E9E88(v56, v60);
      if (v58)
      {
        v10 = v57;
        v11 = *v57;
        if (*v57)
        {
          do
          {
            if (v10[4] - v10[3] < v11[4] - v11[3])
            {
              v10 = v11;
            }

            v11 = *v11;
          }

          while (v11);
        }

        v12 = v10[2];
      }

      else
      {
        sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
        v12 = sub_100196E8C(__p);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(*__p);
        }
      }

      v59 = v12;
      sub_1001B2ECC(v56);
      v13 = sub_1001EA21C(v60, &v59);
      sub_1001E9E88(v52, v60);
      if (v54)
      {
        v14 = v53;
        v15 = *v53;
        if (*v53)
        {
          do
          {
            if (v15[4] - v15[3] < v14[4] - v14[3])
            {
              v14 = v15;
            }

            v15 = *v15;
          }

          while (v15);
        }

        v16 = v14[2];
      }

      else
      {
        sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
        v16 = sub_100196E8C(__p);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(*__p);
        }
      }

      v55 = v16;
      sub_1001B2ECC(v52);
      v17 = sub_1001EA21C(v60, &v55);
      v18 = sub_1001EA21C(v60, a2);
      v19 = -1.0;
      if (sub_10019D138(v60, a2))
      {
        v20 = sub_10019D138(v60, a2);
        if (!v20)
        {
          sub_1000432E8("unordered_map::at: key not found");
        }

        v21 = v20[3];
        if (v21 != v20[4])
        {
          v19 = (CFAbsoluteTimeGetCurrent() - *(v21 + 84)) / 3600.0;
        }
      }

      v22 = -1.0;
      if (sub_10019D138(v60, a2))
      {
        v23 = sub_10019D138(v60, a2);
        if (!v23)
        {
          sub_1000432E8("unordered_map::at: key not found");
        }

        v24 = v23[4];
        if (v23[3] != v24)
        {
          v22 = CFAbsoluteTimeGetCurrent() - *(v24 - 108);
        }
      }

      v51 = v22;
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v25 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
      {
        std::operator+<char>();
        if (v66 >= 0)
        {
          v26 = buf;
        }

        else
        {
          v26 = *buf;
        }

        v44 = v26;
        v27 = &v50;
        sub_10018F0D0(&v50);
        v45 = v18;
        v28 = v17;
        v29 = v13;
        v30 = v9;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v50.__r_.__value_.__r.__words[0];
        }

        sub_10018F0D0(&v49);
        v31 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
        v32 = v49.__r_.__value_.__r.__words[0];
        sub_10018F0D0(&v48);
        v33 = &v49;
        if (v31 < 0)
        {
          v33 = v32;
        }

        v34 = &v48;
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v48.__r_.__value_.__r.__words[0];
        }

        *__p = 136317699;
        *&__p[4] = v44;
        v85 = 2049;
        v9 = v30;
        v86 = v30;
        v87 = 2049;
        v88 = v6;
        v89 = 2049;
        v13 = v29;
        v90 = v29;
        v91 = 2080;
        v92 = v27;
        v93 = 2049;
        v17 = v28;
        v94 = v28;
        v95 = 2080;
        v96 = v33;
        v97 = 2081;
        v98 = v34;
        v99 = 2049;
        v18 = v45;
        v100 = v45;
        v101 = 2049;
        v102 = v19;
        v103 = 2049;
        v104 = v22;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "%s, %{private}zu APs, %{private}zu total samples, max samples: %{private}zu (%s), min samples: %{private}zu (%s), current associated AP %{private}s has %{private}zu samples and oldest sample age of %{private}.1f hours, latest sample age of %{private}.1f seconds", __p, 0x70u);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v66) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194CFF4(__p);
        std::operator+<char>();
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v50;
        }

        else
        {
          v35 = v50.__r_.__value_.__r.__words[0];
        }

        v36 = &v49;
        sub_10018F0D0(&v49);
        v46 = v18;
        v37 = v13;
        v38 = v9;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v49.__r_.__value_.__r.__words[0];
        }

        sub_10018F0D0(&v48);
        v39 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
        v40 = v48.__r_.__value_.__r.__words[0];
        sub_10018F0D0(&v47);
        v41 = &v48;
        if (v39 < 0)
        {
          v41 = v40;
        }

        v42 = &v47;
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v47.__r_.__value_.__r.__words[0];
        }

        *buf = 136317699;
        *&buf[4] = v35;
        v64 = 2049;
        v9 = v38;
        v65 = v38;
        v66 = 2049;
        v67 = v6;
        v68 = 2049;
        v69 = v37;
        v70 = 2080;
        v71 = v36;
        v72 = 2049;
        v73 = v17;
        v74 = 2080;
        v75 = v41;
        v76 = 2081;
        v77 = v42;
        v78 = 2049;
        v79 = v46;
        v80 = 2049;
        v81 = v19;
        v82 = 2049;
        v83 = v22;
        v43 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::logDatabaseInfoAndSubmitMetricsIfPossible(const CLMacAddress &)", "%s\n", v43);
        if (v43 != __p)
        {
          free(v43);
        }
      }

      sub_1001EA27C(a1 + 304, v9, v6, &v51, v19);
      sub_1001EA2F8(a1, v60, a2);
      sub_1001B2ECC(v60);
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10194D038();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      v8 = v87 >= 0 ? __p : *__p;
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%s, #warning, could not log database info as it is invalid", buf, 0xCu);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194D04C();
    }
  }
}

uint64_t sub_1001B3BFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001ACED8(result, a4);
  }

  return result;
}

void sub_1001B3C5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B3C78(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1001A1980(a1, a2);
  }

  sub_10028C64C();
}

void sub_1001B3CCC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001B3D04(a1);

  operator delete();
}

void sub_1001B3D04(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B8B50;
  if (qword_102637FD8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t sub_1001B3D90()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 184) < 0x39) & (0x10000000000000BuLL >> (dword_1026592D0 + 72));
}

void sub_1001B3DF8(uint64_t a1, void *a2, void *a3, int a4)
{
  LODWORD(v4) = a4;
  while (1)
  {
    [a3 machContinuousTimeSec];
    v9 = v8;
    [a2 machContinuousTimeSec];
    v11 = v9 - v10;
    [objc_msgSend(a3 "location")];
    v13 = v12;
    [objc_msgSend(a3 "location")];
    v15 = v14;
    [objc_msgSend(a2 "location")];
    v17 = v16;
    [objc_msgSend(a2 "location")];
    v19 = sub_100109D18((a1 + 72), v13, v15, v17, v18, 0.0);
    if (v11 <= *a1)
    {
      break;
    }

    if (v19 <= *(a1 + 8))
    {
      break;
    }

    [a2 machContinuousTimeSec];
    v21 = (*(**(a1 + 32) + 56))(*(a1 + 32), v11 * 0.5 + v20);
    if (!v21 || *(a1 + 24) <= v4)
    {
      break;
    }

    v22 = v21;
    [objc_msgSend(v21 "location")];
    if (v23 < *(a1 + 16))
    {
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      if (v25 >= v24)
      {
        v27 = *(a1 + 48);
        v28 = (v25 - v27) >> 3;
        if ((v28 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v29 = v24 - v27;
        v30 = v29 >> 2;
        if (v29 >> 2 <= (v28 + 1))
        {
          v30 = v28 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          sub_1003EE744(a1 + 48, v31);
        }

        *(8 * v28) = v22;
        v26 = 8 * v28 + 8;
        v32 = *(a1 + 48);
        v33 = *(a1 + 56) - v32;
        v34 = (8 * v28 - v33);
        memcpy(v34, v32, v33);
        v35 = *(a1 + 48);
        *(a1 + 48) = v34;
        *(a1 + 56) = v26;
        *(a1 + 64) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v25 = v22;
        v26 = (v25 + 1);
      }

      *(a1 + 56) = v26;
    }

    v4 = (v4 + 1);
    sub_1001B3DF8(a1, a2, v22, v4);
    a2 = v22;
  }
}

BOOL sub_1001B4008(void *a1, void *a2)
{
  [a1 machContinuousTimeSec];
  v4 = v3;
  [a2 machContinuousTimeSec];
  return v4 < v5;
}

void sub_1001B4048(uint64_t a1, int a2, _BYTE *a3, double *a4, double *a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a9 > 0.0 && (a8 < -450.0 || a8 > 8850.0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 68289282;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2050;
      v37 = a8;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition bad altitude, altitude:%{public}f}", &v32, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0.0;
    *a5 = 3000.0;
  }

  else
  {
    *a4 = a8;
    v19 = 3000.0;
    if (a9 <= 3000.0)
    {
      v19 = a9;
    }

    *a5 = v19;
    if (a9 <= 0.0)
    {
      *a4 = 0.0;
      *a5 = 3000.0;
      *a3 = 0;
    }

    else
    {
      if ((a2 - 1) > 0xFFFFFFFD)
      {
        *a5 = sqrt(v19 * v19 + 900.0);
      }

      else
      {
        *a4 = *a4 + a10;
      }

      *a3 = 1;
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v22 = *a4;
        v32 = 68289795;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2049;
        v37 = a8;
        v38 = 2049;
        v39 = v22;
        v40 = 2049;
        v41 = a10;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition converted MSL alt to WGS84, altMsl:%{private}.3f, altWGS84:%{private}.3f, undulation:%{private}.3f}", &v32, 0x30u);
      }

      if (*(a1 + 11768) == 1)
      {
        if (a9 <= 0.0 || a9 > 2.33)
        {
          if (a9 <= 2.33)
          {
            v23 = *a5;
          }

          else
          {
            v23 = floor(a9 / 2.33) * 2.33;
          }
        }

        else
        {
          v23 = 2.33;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v29 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v30 = *a4;
          v31 = *a5;
          v32 = 68290307;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2053;
          v37 = a6;
          v38 = 2053;
          v39 = a7;
          v40 = 2049;
          v41 = v30;
          v42 = 2050;
          v43 = v31;
          v44 = 2050;
          v45 = v23;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, verticalAccuracyScalingDuringEmergency, lat:%{sensitive}.6f, lon:%{sensitive}.6f, altWGS84:%{private}.2f, priorVunc:%{public}.2f, newVunc:%{public}.2f}", &v32, 0x44u);
        }

        *a5 = v23;
      }

      else
      {
        v24 = 3.0;
        if (*(a1 + 10044) > 0.0)
        {
          v25 = sub_1001CCA3C(a1 + 10024, a1 + 10184);
          if (v25 >= 30.0 || v25 <= 0.0)
          {
            v24 = 3.0;
          }

          else
          {
            v24 = 15.0;
          }
        }

        if (*a5 > 0.0 && *a5 < v24)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v27 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v28 = *a4;
            v32 = 68290307;
            v33 = 0;
            v34 = 2082;
            v35 = "";
            v36 = 2053;
            v37 = a6;
            v38 = 2053;
            v39 = a7;
            v40 = 2049;
            v41 = v28;
            v42 = 2050;
            v43 = a9;
            v44 = 2050;
            v45 = v24;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition ApplyingVuncLowerBound, lat:%{sensitive}.7f, lon:%{sensitive}.7f, altWGS84:%{private}.2f, priorVunc:%{public}.1f, vuncLowerBound:%{public}.1f}", &v32, 0x44u);
          }

          *a5 = v24;
        }
      }
    }
  }
}

void sub_1001B44C0(_OWORD *a1, uint64_t a2)
{
  *(*a1 + 1336) = sub_1001B4678(*(a2 + 4), *(a2 + 12));
  *(*a1 + 1337) = sub_1001B4788(*(a2 + 4), *(a2 + 12)) != 0;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = LocationLogEncryptionDataSize();
    v6 = LocationLogEncryptionEncryptData();
    v7 = *(*a1 + 1336);
    v8 = *(a2 + 824);
    v9[0] = 68290307;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "Injecting position assistance to GNSS platform";
    v14 = 1040;
    v15 = v5;
    v16 = 2098;
    v17 = v6;
    v18 = 1025;
    v19 = v7;
    v20 = 1026;
    v21 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, location:%{public, location:Encrypted_CLClientLocation}.*P, isIndia:%{private}hhd, isCPI:%{public}hhd}", v9, 0x38u);
  }

  (*(**a1 + 192))(*a1, a2);
  sub_100181FF8(a1 + 172, a2, *(a2 + 768) != 0);
}

uint64_t sub_1001B4788(double a1, double a2)
{
  if (a2 > 134.82 || a2 < 73.48 || a1 < 18.15 || a1 > 53.6)
  {
    return 0;
  }

  if (a1 <= 42.3 && a2 <= 119.3 && a2 >= 107.1 || a1 <= 42.3 && a1 >= 25.3 && a2 <= 123.45 && a2 >= 119.3 || a1 >= 42.3 && a2 <= 129.2 && a1 <= 49.34 && a2 >= 119.93 || a2 <= 107.1 && a2 >= 98.76 && a1 >= 23.39 && a1 <= 41.58 || a1 <= 42.6 && a2 <= 98.76 && a1 >= 28.39 && a2 >= 85.19 || a2 <= 90.66 && a2 >= 80.81 && a1 >= 42.6 && a1 <= 45.2 || a2 <= 101.54 && a2 >= 99.4 && a1 >= 22.06 && a1 <= 23.39 || a2 <= 119.93 && a1 >= 42.3 && a1 <= 44.74 && a2 >= 111.924 || a2 <= 119.93 && a2 >= 116.55 && a1 >= 44.74 && a1 <= 46.35 || a2 <= 133.09 && a2 >= 129.2 && a1 >= 45.23 && a1 <= 47.66 || a2 <= 125.95 && a2 >= 120.78 && a1 >= 49.34 && a1 <= 52.86 || a2 >= 123.45 && a1 <= 42.4 && a2 <= 126.51 && a1 >= 41.38 || a2 <= 85.19 && a2 >= 79.24 && a1 >= 31.07 && a1 <= 41.73 || a2 <= 85.19 && a1 <= 42.6 && a1 >= 41.73 && a2 >= 80.28 || a2 >= 123.45 && a1 >= 40.9 && a1 <= 41.38 && a2 <= 125.97 || a2 >= 123.45 && a1 >= 40.47 && a1 <= 40.9 && a2 <= 125.0 || a2 <= 120.15 && a2 >= 119.2 && a1 >= 24.78 && a1 <= 25.4)
  {
    return 1;
  }

  if ((a2 > 108.15 || a2 < 97.511 || a1 < 21.14 || a1 > 28.39) && (a2 > 97.511 || a2 < 78.33 || a1 < 27.29 || a1 > 32.7) && (a1 < 32.7 || a2 > 79.24 || a1 > 41.73) && (a1 > 49.16 || a2 > 96.06 || a1 < 41.73 || a2 < 79.24) && (a1 > 45.45 || a2 < 96.06 || a2 > 115.52 || a1 < 41.38) && (a1 < 39.6 || a2 < 115.52) && (a1 < 21.7 || a1 > 25.3 || a2 > 122.5 || a2 < 119.3))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1001B4D48(void *a1)
{
  if (a1 < 5)
  {
    return dword_101DA8DF4[a1];
  }

  if (qword_1025D4650 != -1)
  {
    sub_101621394();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for GNSS::ReliabilityIndication", v4, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101622994(a1);
  }

  return 1;
}

uint64_t sub_1001B4E38(unsigned int a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B4E44(uint64_t result)
{
  *result = &off_1024B8B50;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 20) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1001B4E70(uint64_t a1)
{
  *a1 = off_10246D5A8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

uint64_t sub_1001B4EAC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 36);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_20;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637FD8 + 8);
    }

    v7 = sub_1001B4F8C(v6, a2);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
    }

    else
    {
      v9 = 1;
    }

    v4 = v8 + v9 + 1;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 16);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v11 = 2;
    }

    v4 += v11;
  }

LABEL_18:
  v5 = ((v3 >> 1) & 2) + v4;
  if ((v3 & 8) != 0)
  {
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  }

LABEL_20:
  *(a1 + 32) = v5;
  return v5;
}

uint64_t sub_1001B4F8C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v6 = *(a1 + 72);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 96);
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
      if ((v3 & 0x200) == 0)
      {
LABEL_21:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(a1 + 76);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 96);
    }

    else
    {
      v9 = 2;
    }

    v5 = (v9 + v5);
    if ((v3 & 0x400) == 0)
    {
LABEL_22:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_41;
      }

LABEL_35:
      v10 = *(a1 + 88);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
      }

      else
      {
        v11 = 2;
      }

      v5 = (v11 + v5);
      goto LABEL_41;
    }

LABEL_34:
    v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 80), a2) + 1;
    if ((*(a1 + 96) & 0x800) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_41:
  *(a1 + 92) = v5;
  return v5;
}

uint64_t sub_1001B50E4(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637FD8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, v8, a2, a4);
}

uint64_t sub_1001B519C(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 72), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, *(v5 + 80), a2, a4);
    if ((*(v5 + 96) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 76), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:
  v7 = *(v5 + 88);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, v7, a2, a4);
}

void sub_1001B5324(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssProvider,startLocation", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A79754();
  }

  [*(a1 + 3248) setNextFireDelay:30.0];
  [*(a1 + 3256) setNextFireDelay:1.0 interval:1.0];
  if ((*(a1 + 3720) & 1) == 0)
  {
    [*(*(a1 + 3712) + 16) register:*(*(a1 + 3712) + 8) forNotification:27 registrationInfo:0];
    *(a1 + 3720) = 1;
  }

  sub_1001B5420(a1);
  sub_1001B5570(a1 + 120);
  *(a1 + 3672) = sub_1000081AC();
  sub_1001C577C(a1, (a1 + 3672));
}

void sub_1001B5420(_BYTE *a1)
{
  if (a1[3320])
  {
    v2 = 1;
  }

  else
  {
    v3 = 0;
    v2 = sub_10000608C(a1, &v3, 1) != 0;
  }

  if (a1[3321] != v2)
  {
    sub_1001B5488(a1, v2);
  }
}

void sub_1001B5488(_BYTE *a1, char a2)
{
  sub_100021AFC(v5);
  v8 = 1;
  v9 = a2;
  v4 = 11;
  (*(*a1 + 152))(a1, &v4, v5, 1, 0xFFFFFFFFLL, 0);
  a1[3321] = a2;

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v7)
  {
    sub_100008080(v7);
  }

  if (v6)
  {
    sub_100008080(v6);
  }
}

void sub_1001B555C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B5570(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "clientStart";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  *(a1 + 744) = 1;
  return sub_1001BF630(a1 + 2576, 2);
}

_BYTE *sub_1001B5660@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0x11)
  {
    v2 = "EventUnknown";
  }

  else
  {
    v2 = (&off_102474380)[a1];
  }

  return sub_10000EC00(a2, v2);
}

uint64_t sub_1001B568C(uint64_t *a1, int a2)
{
  if (a2 <= 6)
  {
    switch(a2)
    {
      case 2:
        goto LABEL_16;
      case 4:
        v5 = *a1;
        if (*a1)
        {
          (*(*v5 + 32))(v5);
        }

        return 0;
      case 5:
        sub_1007FD02C(a1);
        goto LABEL_16;
    }

    return 0;
  }

  if (a2 > 0x10)
  {
    return 0;
  }

  if (((1 << a2) & 0x2A80) == 0)
  {
    if (a2 == 15)
    {
      sub_1007FD0BC(a1);
    }

    else if (a2 == 16)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v3 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning,CLGnssController,Unexpected Debounce Timeout event in Idle state", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194130C();
      }
    }

    return 0;
  }

LABEL_16:

  return sub_1001BCEDC(a1);
}

BOOL sub_1001B57D8()
{
  if (sub_10006FDD0() && !sub_10006FEAC() || (sub_10006FEAC() & 1) != 0 || sub_100718F78())
  {
    return 1;
  }

  else
  {
    v4 = 0;
    if ((sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_10006FF98() || sub_100718F78())
    {
      sub_10001CAF4(&v2);
      sub_10001CB4C(v2, "GpsdEmergency", &v4);
      if (v3)
      {
        sub_100008080(v3);
      }

      return v4;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1001B5884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001B589C()
{
  if ((sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_10006FE64())
  {
    return 1;
  }

  return sub_100718F78();
}

uint64_t *sub_1001B58E4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1001B59B8(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 1026;
    v8 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssStopTimer, run:%{public}hhd}", v4, 0x18u);
  }

  sub_1001C04E8(a1 + 2576, 16);
  *(a1 + 768) = 0;
  v3 = *(a1 + 1136);
  if (v3)
  {
    sub_1001BD68C(v3, 3, 0);
  }
}

uint64_t sub_1001B5AB4(unsigned __int8 *a1, int a2)
{
  v4 = sub_1001B5C18(a1, 0, a2);
  v5 = a1[2412];
  v6 = a1[2392];
  v7 = v6 ^ 1;
  if (((v5 ^ 1) & 1) != 0 || v7)
  {
    v9 = v5 ^ 1 | v6;
    if (v5 | v7)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    if (v9 == 1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  sub_1001B5C18(a1, v8, a2);
  if (a1[2506] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[2412];
      v13 = a1[2392];
      v15[0] = 67174913;
      v15[1] = v12;
      v16 = 1025;
      v17 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,updateGnssDailyUseMetricsAtEventEnd,isDisplayOn,%{private}d,isOutsideVisit,%{private}d", v15, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB4A8();
    }
  }

  return v4;
}

uint64_t sub_1001B5C18(uint64_t a1, int a2, int a3)
{
  v19 = a3;
  v20 = a2;
  result = sub_1000735F4((a1 + 2304), &v20);
  if (!result)
  {
    return result;
  }

  v5 = sub_1000735F4((a1 + 2304), &v20);
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = sub_1000735F4(v5 + 3, &v19);
  if (!sub_1000735F4((a1 + 2304), &v20))
  {
    goto LABEL_31;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1000735F4((a1 + 2304), &v20);
  if (!v7 || (v8 = sub_1000735F4(v7 + 3, &v19)) == 0)
  {
LABEL_31:
    sub_1000432E8("unordered_map::at: key not found");
  }

  v9 = v8;
  if (*(v8 + 40) != 1)
  {
    return 0;
  }

  *(v8 + 40) = 0;
  v10 = sub_1000081AC() - *(v8 + 4);
  if (v10 >= 0.0)
  {
    *(v9 + 3) = v10 + *(v9 + 3);
    if (*(a1 + 2506) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = v9[3];
        *buf = 67175425;
        v30 = v20;
        v31 = 1025;
        v32 = v19;
        v33 = 2049;
        v34 = v10;
        v35 = 2049;
        v36 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,updateGnssSessionDataAtEventEnd,metricsContext,%{private}d,eventType,%{private}d,eventDuration_s,%{private}.1lf,totalDailyUsage_s,%{private}.1lf", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v17 = v9[3];
        v21 = 67175425;
        v22 = v20;
        v23 = 1025;
        v24 = v19;
        v25 = 2049;
        v26 = v10;
        v27 = 2049;
        v28 = v17;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAWD::updateGnssSessionDataAtEventEnd(const DailyUseMetricsContext, const GNSS::GnssSessionEventType)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016C8BF0();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    v14 = *(v9 + 4);
    *buf = 67175169;
    v30 = v20;
    v31 = 1025;
    v32 = v19;
    v33 = 2049;
    v34 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#gnssca,updateGnssSessionDataAtEventEnd,start time in future,metricsContext,%{private}d,eventType,%{private}d,startTime,%{private}.1lf", buf, 0x18u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v15 = *(v9 + 4);
    v21 = 67175169;
    v22 = v20;
    v23 = 1025;
    v24 = v19;
    v25 = 2049;
    v26 = v15;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGnssAWD::updateGnssSessionDataAtEventEnd(const DailyUseMetricsContext, const GNSS::GnssSessionEventType)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001B6020(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1001B60B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102474048;
  a2[1] = v2;
  return result;
}

uint64_t sub_1001B60DC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *&v22[0] = 68289282;
    WORD4(v22[0]) = 2082;
    *(v22 + 10) = "";
    WORD1(v22[1]) = 2082;
    *(&v22[1] + 4) = "deviceStart";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v22, 0x1Cu);
  }

  sub_1001B632C(*a1 + 8);
  v5 = *a1;
  v5[1144] = *(a1 + 2497);
  (*(*v5 + 16))(v5, a1 + 572);
  v6 = *(a1 + 1136);
  if (v6)
  {
    sub_1001BD68C(v6, 4, 1);
  }

  *v30 = 0;
  *&v30[16] = 0u;
  *&v28[16] = 0u;
  *v28 = 0;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  DWORD2(v24) = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *&v28[8] = _Q1;
  v29 = _Q1;
  *&v30[8] = _Q1;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v34 = 1065353216;
  v35 = 0x100000005uLL;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v12 = v23;
  v13 = v24;
  v14 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v14;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  v15 = v27;
  v16 = *v28;
  v17 = v29;
  *(a1 + 192) = *&v28[16];
  *(a1 + 208) = v17;
  *(a1 + 160) = v15;
  *(a1 + 176) = v16;
  v18 = *v30;
  v19 = *&v30[16];
  v20 = v31;
  *(a1 + 272) = *&v32[0];
  *(a1 + 240) = v19;
  *(a1 + 256) = v20;
  *(a1 + 224) = v18;
  sub_1001BD950(a1 + 280, v32 + 1);
  *(a1 + 320) = v35;
  sub_100134860(v32 + 8);
  *(a1 + 772) = 0;
  sub_1001BE9FC(a1 + 2752);
  result = *(a2 + 24);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t sub_1001B632C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A3A9C4();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssawd,GnssSessionData::reset}", v9, 0x12u);
  }

  bzero(v9, 0x4F0uLL);
  v12 = v13;
  __asm { FMOV            V1.2D, #-1.0 }

  v16 = 0u;
  v13[1] = _Q1;
  memset(&v13[2], 0, 48);
  v14 = 0;
  v15 = &v16;
  v18 = 0u;
  v17 = &v18;
  v19 = -1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0x3F80000000000000;
  v23 = v24;
  memset(v24, 0, sizeof(v24));
  v25 = 1065353216;
  v27 = 0u;
  v26 = &v27;
  v28 = 0;
  v30 = 0u;
  v32 = 0u;
  v29 = &v30;
  v31 = &v32;
  memset(v34, 0, sizeof(v34));
  v33 = v34;
  v35 = 1065353216;
  v36 = v37;
  memset(v37, 0, 165);
  memset(&v37[10] + 8, 0, 168);
  v38 = 11;
  v39 = -1;
  v40 = -1;
  v41 = 0xBF800000BF800000;
  v42 = 0;
  memset(v52, 0, sizeof(v52));
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v51 = v52;
  v53 = 1065353216;
  v54 = 0;
  v55 = 1;
  v56 = 0;
  *(v57 + 5) = 0;
  v57[0] = 0;
  v57[2] = 0xFFFFFFFF00000000;
  v58 = -1;
  *v60 = 0u;
  v59 = v60;
  v60[11] = 0;
  v60[13] = 0;
  memset(&v60[5], 0, 23);
  v60[14] = -1;
  v61 = 0xBFF0000000000000;
  v62 = -1;
  v66 = 0;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v67 = 1;
  sub_1001B65D4(a1, v9);
  return sub_1001B6A44(v9);
}

uint64_t sub_1001B65D4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *a1 = v4;
  sub_1001B67C4(a1 + 56, a2 + 7);
  *(a1 + 80) = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 112) = v8;
  *(a1 + 128) = v9;
  *(a1 + 96) = v7;
  sub_1001B67C4(a1 + 152, a2 + 19);
  sub_1001B67C4(a1 + 176, a2 + 22);
  *(a1 + 200) = *(a2 + 25);
  sub_100BE1788(a1 + 208, a2 + 26);
  sub_1001B67C4(a1 + 248, a2 + 31);
  sub_100BE1788(a1 + 272, a2 + 34);
  sub_1001B67C4(a1 + 312, a2 + 39);
  v10 = *(a2 + 42);
  *(a1 + 344) = *(a2 + 86);
  *(a1 + 336) = v10;
  sub_1001B67C4(a1 + 352, a2 + 44);
  sub_1001B67C4(a1 + 376, a2 + 47);
  sub_1001B67C4(a1 + 400, a2 + 50);
  sub_1001BD950(a1 + 424, a2 + 53);
  *(a1 + 464) = *(a2 + 116);
  sub_1001B67C4(a1 + 472, a2 + 59);
  memcpy((a1 + 496), a2 + 31, 0x162uLL);
  sub_1001B688C((a1 + 856), a2 + 856);
  sub_1001B688C((a1 + 904), a2 + 904);
  v11 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 242);
  *(a1 + 952) = v11;
  sub_1001B67C4(a1 + 976, a2 + 122);
  sub_100BE1788(a1 + 1000, a2 + 125);
  *(a1 + 1040) = *(a2 + 260);
  *(a1 + 1048) = *(a2 + 131);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1060) = *(a2 + 265);
  v12 = *(a2 + 1064);
  v13 = *(a2 + 1080);
  *(a1 + 1092) = *(a2 + 1092);
  *(a1 + 1064) = v12;
  *(a1 + 1080) = v13;
  sub_1001BDAD4(a1 + 1112, a2 + 139);
  v14 = a2[71];
  v15 = a2[72];
  v16 = a2[73];
  *(a1 + 1184) = a2[74];
  *(a1 + 1168) = v16;
  *(a1 + 1152) = v15;
  *(a1 + 1136) = v14;
  v17 = a2[75];
  v18 = a2[76];
  v19 = a2[77];
  *(a1 + 1241) = *(a2 + 1241);
  *(a1 + 1232) = v19;
  *(a1 + 1216) = v18;
  *(a1 + 1200) = v17;
  return a1;
}

void sub_1001B67C4(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_1003C93BC(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void sub_1001B6830(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_10013489C(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1001B688C(void **a1, uint64_t a2)
{
  sub_1001B68DC(a1);
  sub_1001B69C0(a1);
  result = sub_1001B6958(a1, a2);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B68DC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 128;
  }

  a1[4] = v6;
}

uint64_t sub_1001B6958(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 != v5)
  {
    *(a1 + 16) = v4 + ((v5 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1001BD9F4(a1);
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *a2 = 0u;
  a2[1] = 0u;
  return a1;
}

void sub_1001B69C0(void **a1)
{
  if (a1[5])
  {
    sub_10051373C(a1, 0);
    sub_1000BFE3C(a1, 0);
  }

  else
  {
    v3 = a1[1];
    for (i = a1[2]; i != v3; a1[2] = i)
    {
      operator delete(*(i - 8));
      v3 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
  }

  sub_1001BD9F4(a1);
}

uint64_t sub_1001B6A44(uint64_t a1)
{
  sub_10018F070(a1 + 1112, *(a1 + 1120));
  sub_1004906DC(a1 + 1000);
  sub_1003C93BC(a1 + 976, *(a1 + 984));
  sub_10049AC1C((a1 + 904));
  sub_10049AC1C((a1 + 856));
  sub_1003C93BC(a1 + 472, *(a1 + 480));
  sub_100134860(a1 + 424);
  sub_1003C93BC(a1 + 400, *(a1 + 408));
  sub_1003C93BC(a1 + 376, *(a1 + 384));
  sub_1003C93BC(a1 + 352, *(a1 + 360));
  sub_1003C93BC(a1 + 312, *(a1 + 320));
  sub_1004906DC(a1 + 272);
  sub_1003C93BC(a1 + 248, *(a1 + 256));
  sub_1004906DC(a1 + 208);
  sub_1003C93BC(a1 + 176, *(a1 + 184));
  sub_1003C93BC(a1 + 152, *(a1 + 160));
  sub_1003C93BC(a1 + 56, *(a1 + 64));
  return a1;
}

void sub_1001B6B1C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#gpsd,start initiated", &buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101774354();
  }

  *(a1 + 1696) = 1;
  sub_1001B74A8(a1);
  sub_1001B77F4(a1);
  v18[0] = 0;
  v16 = 0u;
  v17 = 0u;
  buf = 0u;
  memset(&v18[8], 0, 32);
  *&v18[40] = 1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22[0] = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *&v22[8] = _Q1;
  v22[24] = 0;
  v23 = _Q1;
  v24[0] = 0;
  *&v24[8] = _Q1;
  v24[24] = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v27 = 1065353216;
  v28 = 0x100000005uLL;
  v8 = *&v24[16];
  *(a1 + 2056) = *v24;
  *(a1 + 2072) = v8;
  *(a1 + 2088) = v25;
  *(a1 + 2104) = v26[0];
  v9 = *v22;
  *(a1 + 1992) = v21;
  *(a1 + 2008) = v9;
  v10 = v23;
  *(a1 + 2024) = *&v22[16];
  *(a1 + 2040) = v10;
  v11 = *&v18[32];
  *(a1 + 1928) = *&v18[16];
  *(a1 + 1944) = v11;
  v12 = v20;
  *(a1 + 1960) = v19;
  *(a1 + 1976) = v12;
  v13 = v16;
  *(a1 + 1864) = buf;
  *(a1 + 1880) = v13;
  v14 = *v18;
  *(a1 + 1896) = v17;
  *(a1 + 1912) = v14;
  sub_1001BD950(a1 + 2112, &v26[1]);
  *(a1 + 2152) = v28;
  sub_100134860(&v26[1]);
  *(a1 + 1721) = 0;
  *(a1 + 1728) = 0xC08F400000000000;
  *(a1 + 1744) = 0;
  *(a1 + 88) = sub_1000081AC();
  ++*(a1 + 1288);
  operator new();
}

void sub_1001B7418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

id sub_1001B74A8(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gpsd,registerKeepAlive", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017746F4();
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 1800) "vendor")];
}

uint64_t sub_1001B7568(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018E669C();
  }

  v8 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_INFO))
  {
    v9 = "remove";
    v14 = 68289794;
    v16 = "";
    v15 = 2082;
    if (a2)
    {
      v9 = "add";
    }

    v17 = 2050;
    v18 = a3;
    v19 = 2082;
    v20 = a4;
    v21 = 2082;
    v22 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Updating keep-alive client registration, client:%{public}lu, debugMessage:%{public, location:escape_only}s, registrationType:%{public, location:escape_only}s}", &v14, 0x30u);
  }

  if (a2)
  {
    if ((*(a1 + 248) & 1) == 0)
    {
      v14 = a3;
      sub_1001B7728(a1 + 216, &v14);
LABEL_14:
      v10 = 1;
      goto LABEL_16;
    }
  }

  else if (*(a1 + 232))
  {
    v14 = a3;
    sub_10061FED0((a1 + 216), &v14);
    if (*(a1 + 248) == 1 && !*(a1 + 232))
    {
      IOAllowPowerChange(*(a1 + 124), *(a1 + 272));
    }

    goto LABEL_14;
  }

  v10 = 0;
LABEL_16:
  v11 = *(a1 + 240);
  if (*(a1 + 232))
  {
    if (!v11)
    {
      v12 = [[CLOSTransaction alloc] initWithDescription:"CLDaemonStatus.keepalive"];
LABEL_21:
      *(a1 + 240) = v12;
    }
  }

  else if (v11)
  {

    v12 = 0;
    goto LABEL_21;
  }

  return v10;
}

void *sub_1001B7728(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1001B77F4(uint64_t result)
{
  v1 = result;
  if (*(result + 1680) == 1)
  {
    sub_1001324C4(v7);
    if (!sub_100132484(0x18u))
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    v8 = 24;
    v10 |= 0x200004u;
    v2 = v9;
    if (!v9)
    {
      operator new();
    }

    *(v9 + 20) |= 1u;
    *(v2 + 8) = 1;
    sub_10001CAF4(buf);
    v11[0] = 0;
    if (sub_10005BBE4(*buf, "GpsSimulatorTestModeDefaultWeek", v11))
    {
      v3 = v11[0];
    }

    else
    {
      v3 = 2049;
    }

    if (v13)
    {
      sub_100008080(v13);
    }

    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *&buf[4] = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#Warning,setConfigSimulatorMode,week,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      v11[0] = 67240192;
      v11[1] = v3;
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::preStartConfig()", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *(v2 + 20) |= 2u;
    *(v2 + 12) = v3;
    sub_10013256C(v1, v7);
    result = sub_100133DCC(v7);
  }

  if (v1[1722] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,preStartConfig,resending airborne", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101774270();
    }

    return (*(*v1 + 256))(v1, 1);
  }

  return result;
}

void sub_1001B7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B7B7C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1001C5740(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001B7BD8(uint64_t result)
{
  v1 = *(result + 1328);
  if ((v1 & 0x20) != 0 || (*(result + 1336) & 1) == 0)
  {
    v1 |= 0x20u;
  }

  *(result + 1332) = v1;
  return result;
}

uint64_t sub_1001B7BF4(uint64_t a1, int a2, int a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109376;
    v9[1] = a2;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gpsd,setGnssConstellations,enableflags,0x%x,disableflags,0x%x", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017748C8();
  }

  sub_1001324C4(v9);
  if (!sub_100132484(0x19u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v12 = 25;
  v14 |= 0x400004u;
  v7 = v13;
  if (!v13)
  {
    operator new();
  }

  *(v13 + 20) |= 3u;
  *(v7 + 8) = a2;
  *(v7 + 12) = a3;
  sub_10013256C(a1, v9);
  return sub_100133DCC(v9);
}

void *sub_1001B7DD4(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1024B92D0;
  return result;
}

uint64_t sub_1001B7DF8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(a1 + 16) = v4;
  return v4;
}

uint64_t sub_1001B7E88(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

void sub_1001B7EF4(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v3 = (a2 + 4);
    v4 = *(a2 + 4);
    v5 = *(a1 + 712);
    *(a1 + 712) = v4;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = *v3;
      v10[0] = 67240192;
      v10[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Got notification gps active state,%{public}d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FA8F4(v3);
    }

    if (v4 != v5)
    {
      sub_100110094(a1);
    }

    v8 = *(a1 + 712);
    v10[0] = 0;
    v9 = sub_10000608C(a1, v10, 1) != 0;
    sub_1001B8040(a1 + 800, v8, (v4 != v5), v9);
  }
}

void sub_1001B8040(uint64_t a1, void *a2, void *a3, char a4)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67240448;
    v11[1] = a2;
    v12 = 1026;
    v13 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,isGpsHWActive,%{public}d,didStatusChange,%{public}d", v11, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101876928(a2, a3);
    if (!a3)
    {
      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  if (a2)
  {
    v9 = sub_10000B1F8();
    v11[0] = 1;
    *(a1 + 80) = sub_10001A6B0(v9, v11);
    sub_10018E860(a1, 1);
  }

  else if (a4)
  {
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,session continued with gps off,resetting IO", v11, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101876A2C();
    }
  }

  else
  {
    sub_1001EFA0C(a1);
  }
}

void sub_1001B81F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B8450(a1);
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    v9 = [objc_msgSend(*(a1 + 8) "locationGroups")];
    v10 = sub_10017F5D4([*(a1 + 8) pipelinedSeeded]);
    *buf = 136446978;
    v13 = v8;
    v14 = 2050;
    v15 = v6;
    v16 = 2050;
    v17 = v9;
    v18 = 2082;
    v19 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@IndoorAvl, load, %{public}s, %{public}lu, total, %{public}lu, state, %{public}s", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    [objc_msgSend(*(a1 + 8) "locationGroups")];
    sub_10017F5D4([*(a1 + 8) pipelinedSeeded]);
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorLogic::loadAvailabilityTiles(std::chrono::steady_clock::time_point, const std::string &)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  sub_10025CB28(a1, a2, a3);
}

id sub_1001B8450(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  v3 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];
  if (*[*(a1 + 8) latestPosition] == 1)
  {
    v4 = [*(a1 + 8) latestPosition];
    if ((*v4 & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    v3 = [[GeographicCoordinate alloc] initWithLatitude:*(v4 + 108) longitude:*(v4 + 116) andAltitude:*(v4 + 36)];
  }

  v5 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];
  if (v5 & 1 | (([*(a1 + 8) locationGroupsLoaded] & 1) == 0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 8) locationGroupsLoaded];
      *buf = 67240448;
      v22 = v5;
      v23 = 1026;
      v24 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@IndoorAvl, load, must recompute, %{public}d, locationGroupsLoaded, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A9B8(buf);
      [*(a1 + 8) locationGroupsLoaded];
      LODWORD(v19) = 14;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "unsigned long CLIndoorLogic::reloadAvailabilityGroupsIfNecessary()", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    sub_1001B8A14(a1 + 48);
    if ([*(a1 + 8) avlTilePathOverrideForTest])
    {
      v8 = [*(a1 + 8) avlTilePathOverrideForTest];
    }

    else
    {
      v8 = sub_1001B8B38();
    }

    v11 = v8;
    if (([*(a1 + 8) locationGroupsLoaded] & 1) == 0)
    {
      [objc_msgSend(*(a1 + 8) "availableVenuesState")];
    }

    v10 = [objc_msgSend(*(a1 + 8) "availableVenuesState")];
    if (!v10)
    {
      goto LABEL_28;
    }

    if ([objc_msgSend(*(a1 + 8) "availableVenuesState")])
    {
      v12 = *(a1 + 8);
      [objc_msgSend(objc_msgSend(v12 "availableVenuesState")];
      [v12 setAvailabilityTiles:v10 withZScoreConfidenceInterval:?];
      [*(a1 + 8) updatePrefetchParameters:{objc_msgSend(objc_msgSend(*(a1 + 8), "availableVenuesState"), "availabilityTileParams")}];
      (*(**(a1 + 24) + 88))(*(a1 + 24));
      if (qword_1025D4620 == -1)
      {
LABEL_24:
        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "contents on disk have changed, or we moved really far away, re-read availability tiles into memory", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186A9B8(buf);
          LODWORD(v19) = 2;
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "unsigned long CLIndoorLogic::reloadAvailabilityGroupsIfNecessary()", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }

        v10 = [objc_msgSend(*(a1 + 8) locationGroups];
LABEL_28:
        sub_10025CAF4((a1 + 48));
        goto LABEL_29;
      }
    }

    else
    {
      sub_10186A9FC();
      v19 = 1469;
      v20 = "reloadAvailabilityGroupsIfNecessary";
      v18 = "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Indoor/CLIndoorStateMachine.mm";
      abort_report_np();
      __break(1u);
    }

    sub_101869E5C();
    goto LABEL_24;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Not necessary to reload availability groups, skipping", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186A9B8(buf);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "unsigned long CLIndoorLogic::reloadAvailabilityGroupsIfNecessary()", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v10 = 0;
LABEL_29:

  return v10;
}

void sub_1001B8A14(uint64_t a1)
{
  if (*a1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A5BAA4();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "%s,os_transaction already taken, not taking another", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5BAB8(a1);
    }
  }

  else
  {
    v4 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v4 = *v4;
    }

    *a1 = [[CLOSTransaction alloc] initWithDescription:v4];
  }
}

NSURL *sub_1001B8B38()
{
  v0 = sub_1001B8C6C();
  v1 = [NSString stringWithUTF8String:v0];
  if (!v1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v4 = 136446210;
      v5 = v0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "availabilityDir_nsstr is nil which will cause a NSInvalidArgumentException due to [NSURL initFileURLWithPath:isDirectory:]: nil string parameter;  availabiltyDir_cstr = %{public}s", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10186DEE4();
    }
  }

  return [NSURL URLWithString:[NSString stringWithUTF8String:"availability.pb"] relativeToURL:[NSURL fileURLWithPath:v1 isDirectory:1]];
}

void *sub_1001B8C6C()
{
  if ((atomic_load_explicit(&qword_1025D49C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D49C8))
  {
    operator new();
  }

  result = off_1025D49C0;
  if (*(off_1025D49C0 + 23) < 0)
  {
    return *off_1025D49C0;
  }

  return result;
}

double sub_1001B8DBC()
{
  v2 = 0;
  time(&v2);
  v0 = localtime(&v2);
  return (3600 * v0->tm_hour + 60 * v0->tm_min + v0->tm_sec);
}

uint64_t *sub_1001B8E0C(uint64_t a1, int a2, int a3)
{
  v15 = a3;
  v16[0] = a2;
  result = sub_1000735F4((a1 + 2304), v16);
  if (result)
  {
    v5 = sub_1000735F4((a1 + 2304), v16);
    if (!v5)
    {
      goto LABEL_21;
    }

    v6 = sub_1000735F4(v5 + 3, &v15);
    if (!sub_1000735F4((a1 + 2304), v16))
    {
      goto LABEL_21;
    }

    if (!v6)
    {
      return 0;
    }

    v7 = sub_1000735F4((a1 + 2304), v16);
    if (!v7 || (v8 = sub_1000735F4(v7 + 3, &v15)) == 0)
    {
LABEL_21:
      sub_1000432E8("unordered_map::at: key not found");
    }

    v9 = v8;
    v10 = *(v8 + 40);
    if ((v10 & 1) == 0)
    {
      *(v8 + 4) = sub_1000081AC();
      *(v9 + 40) = 1;
      if (*(a1 + 2506) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v12 = v9[4];
          *buf = 134284033;
          v23 = v12;
          v24 = 1025;
          v25 = v16[0];
          v26 = 1025;
          v27 = v15;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,initializeGnssSessionDataAtEventStart,start time,%{private}.1lf,metricsContext,%{private}d,eventType,%{private}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_1016C8BF0();
          }

          v13 = v9[4];
          v16[1] = 134284033;
          v17 = v13;
          v18 = 1025;
          v19 = v16[0];
          v20 = 1025;
          v21 = v15;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssAWD::initializeGnssSessionDataAtEventStart(const DailyUseMetricsContext, const GNSS::GnssSessionEventType)", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }
      }
    }

    return (v10 ^ 1u);
  }

  return result;
}

uint64_t sub_1001B9078(uint64_t a1)
{
  sub_1001BEAA4(a1);
  v2 = *(a1 + 1000);
  if (v2)
  {
    sub_1001BEE98(v2);
  }

  v3 = *(a1 + 1048);
  if (v3)
  {
    sub_1001BA05C(v3);
  }

  v4 = *(a1 + 992);
  if (v4)
  {
    sub_1001BA0FC(v4);
  }

  v5 = *(a1 + 728);
  if (v5)
  {
    sub_1001C4404(v5, *(a1 + 2569));
  }

  v6 = *(a1 + 1160);
  if (v6)
  {
    sub_1001C3E2C(v6);
  }

  v7 = *(a1 + 1112);
  if (v7)
  {
    sub_10137EA74(v7);
  }

  v8 = *(a1 + 1200);
  if (v8)
  {
    sub_100EAC45C(v8);
  }

  v9 = *(a1 + 1208);
  if (v9)
  {
    sub_1009BAA90(v9);
  }

  result = *a1;
  if (*a1 && *(a1 + 928))
  {
    v11 = *(*result + 168);

    return v11();
  }

  return result;
}

void sub_1001B9150(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67240448;
    v3[1] = sub_1001BEAF0();
    v4 = 1026;
    v5 = sub_1001B9258();
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "L5Context,start,L5AntennaHasContentionWithCell,%{public}d,L5AntennaHasContentionWithWiFi24,%{public}d", v3, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A66020();
  }

  if ((*(a1 + 51) & 1) == 0)
  {
    *(a1 + 51) = 1;
    sub_10017DC7C(a1);
  }
}

uint64_t sub_1001B9258()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = 0;
  v1 = (dword_1026592D0 - 178) > 0x1E || ((1 << (dword_1026592D0 + 78)) & 0x500404FF) == 0;
  if (v1 && (dword_1026592D0 - 257) >= 2)
  {
    v0 = sub_1001C0C18();
    sub_10001CAF4(&v3);
    v5 = 0;
    if (sub_10001CB4C(v3, "GnssL5AntTunerContentionWithWiFi2p4", &v5))
    {
      v0 = v5;
    }

    if (v4)
    {
      sub_100008080(v4);
    }
  }

  return v0 & 1;
}

void sub_1001B9334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B934C(int *a1)
{
  v2 = a1[18];
  __p = 0;
  v35 = 0;
  v36 = 0;
  if (sub_10001CF3C())
  {
    if (*(a1 + 57) == 1)
    {
      sub_1000B85D0(&__p, 1uLL);
    }

    if (*(a1 + 58) == 1)
    {
      sub_1000B85D0(&__p, 1uLL);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 57);
      v6 = *(a1 + 58);
      v7 = *a1;
      *buf = 67240960;
      v46 = v5;
      v47 = 1026;
      v48 = v6;
      v49 = 1026;
      v50 = v7;
      v51 = 1026;
      v52 = v2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "L5ContextMinorPower,OnlyRhythmicGNSS,%{public}d,LongDurationHKWorkout,%{public}d,L5EnableCur,%{public}d,L5EnableReq,%{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A65040(buf);
      v8 = *(a1 + 57);
      v9 = *(a1 + 58);
      v10 = *a1;
      v37 = 67240960;
      v38 = v8;
      v39 = 1026;
      v40 = v9;
      v41 = 1026;
      v42 = v10;
      v43 = 1026;
      v44 = v2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssL5Context::tickL5EnablementForPlatformsWithMinorPowerImpact()", "%s\n", v11);
      goto LABEL_55;
    }

    goto LABEL_38;
  }

  if (*(a1 + 48) == 1 && (*(a1 + 55) & 1) == 0)
  {
    v3 = sub_1001B9258();
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 53) == 1)
  {
    v12 = sub_1001BEAF0();
    v13 = v12;
    if ((v3 & 1) == 0)
    {
      if (v12)
      {
        v25 = __p;
        v26 = v35 - __p;
        v27 = (v35 - __p) >> 2;
        v28 = v27 + 1;
        if ((v27 + 1) >> 62)
        {
          sub_10028C64C();
        }

        v29 = v36 - __p;
        if ((v36 - __p) >> 1 > v28)
        {
          v28 = v29 >> 1;
        }

        v19 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
        v30 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v30 = v28;
        }

        if (v30)
        {
          sub_1000B85D0(&__p, v30);
        }

        *(4 * v27) = 3;
        v31 = 4 * v27 + 4;
        memcpy(0, v25, v26);
        v32 = __p;
        __p = 0;
        v35 = v31;
        v36 = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v2 = 0;
        v35 = v31;
        v13 = 1;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v13 = 0;
    if (!v3)
    {
      v13 = 0;
      goto LABEL_33;
    }
  }

  v14 = __p;
  v15 = v35 - __p;
  v16 = (v35 - __p) >> 2;
  v17 = v16 + 1;
  if ((v16 + 1) >> 62)
  {
    sub_10028C64C();
  }

  v18 = v36 - __p;
  if ((v36 - __p) >> 1 > v17)
  {
    v17 = v18 >> 1;
  }

  v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
  v20 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v20 = v17;
  }

  if (v20)
  {
    sub_1000B85D0(&__p, v20);
  }

  *(4 * v16) = 1;
  v21 = 4 * v16 + 4;
  memcpy(0, v14, v15);
  v22 = __p;
  __p = 0;
  v35 = v21;
  v36 = 0;
  if (v22)
  {
    operator delete(v22);
  }

  v2 = 0;
  v35 = v21;
LABEL_33:
  if (qword_1025D4650 != -1)
  {
    sub_101A65084();
  }

  v23 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *a1;
    *buf = 67240960;
    v46 = v3;
    v47 = 1026;
    v48 = v13;
    v49 = 1026;
    v50 = v24;
    v51 = 1026;
    v52 = v2;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "L5ContextMinorPower,ContentionWiFi2p4,%{public}d,ContentionVoiceCall,%{public}d,L5EnableCur,%{public}d,L5EnableReq,%{public}d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A65040(buf);
    v33 = *a1;
    v37 = 67240960;
    v38 = v3;
    v39 = 1026;
    v40 = v13;
    v41 = 1026;
    v42 = v33;
    v43 = 1026;
    v44 = v2;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssL5Context::tickL5EnablementForPlatformsWithMinorPowerImpact()", "%s\n", v11);
LABEL_55:
    if (v11 != buf)
    {
      free(v11);
    }
  }

LABEL_38:
  if (v2 != *a1)
  {
    *a1 = v2;
    if (*(a1 + 4))
    {
      sub_100D09BCC((a1 + 2), v2);
    }
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_1001B98FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001B9940(int *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[3];
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLGC,updateGnssBandStatus,L5,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946810(a1);
  }

  if (!*a1)
  {
    goto LABEL_19;
  }

  if (!sub_1001B9B0C())
  {
    goto LABEL_15;
  }

  v4 = sub_1001BED94(a1);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(**a1 + 224);
      goto LABEL_18;
    }

    if (v4 != 3)
    {
      goto LABEL_19;
    }

LABEL_15:
    v5 = *(**a1 + 224);
    goto LABEL_18;
  }

  if (!v4)
  {
    v5 = *(**a1 + 224);
    goto LABEL_18;
  }

  if (v4 == 1)
  {
    v5 = *(**a1 + 224);
LABEL_18:
    v5();
  }

LABEL_19:
  sub_1001B9EF4(a1);
}

BOOL sub_1001B9B0C()
{
  if ((sub_1001B9C14() & 1) == 0 && !sub_10006FE30() && !sub_100718F78())
  {
    goto LABEL_8;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v0 = 1;
  }

  else
  {
LABEL_8:
    v0 = sub_100718E94();
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "supportsGnssConcurrency", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

void sub_1001B9BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001B9BE0()
{
  result = sub_10006FDD0();
  if (result)
  {
    if (sub_10006FEAC())
    {
      return 0;
    }

    else
    {
      return sub_10006FC6C() ^ 1;
    }
  }

  return result;
}

uint64_t sub_1001B9C14()
{
  result = sub_1001B9BE0();
  if (result)
  {
    return (sub_10006FC00() & 1) == 0 && !sub_10006FBAC();
  }

  return result;
}

void sub_1001B9C48(uint64_t a1, int a2, int a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67240448;
    v9[1] = a2;
    v10 = 1026;
    v11 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#gpsd,setRfBandEnable,L1,%{public}d,L5,%{public}d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101775CB0();
  }

  if ((atomic_load_explicit(&qword_102666C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102666C98))
  {
    byte_102666C90 = sub_1001C0C18();
    __cxa_guard_release(&qword_102666C98);
  }

  if (byte_102666C90 == 1)
  {
    sub_1001324C4(v9);
    if (!sub_100132484(0x26u))
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    v12 = 38;
    v14 |= 0x20000004u;
    v7 = v13;
    if (!v13)
    {
      operator new();
    }

    v8 = *(v13 + 16);
    *(v13 + 8) = a2;
    *(v7 + 16) = v8 | 3;
    *(v7 + 9) = a3;
    sub_10013256C(a1, v9);
    sub_100133DCC(v9);
  }
}

uint64_t sub_1001B9E88(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

void sub_1001B9EF4(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gnssband,signalGnssBandChange", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019469E8();
  }

  CFRunLoopSourceSignal(*(a1 + 24));
  v3 = sub_100107858();
  CFRunLoopWakeUp(v3);
}

_BYTE *sub_1001B9F9C(_BYTE *result)
{
  if ((result[16] & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4650 != -1)
    {
      sub_101B77F98();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registered for time notifications", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B785D8();
    }

    result = [*(*v1 + 16) register:*(*v1 + 8) forNotification:0 registrationInfo:0];
    v1[16] = 1;
  }

  return result;
}

void sub_1001BA05C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10167F27C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLGnssInterference,start", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10167F2D4();
  }

  *(a1 + 16) = 1;
}

void sub_1001BA0FC(_BYTE *a1)
{
  sub_1001BA1EC(a1);
  a1[1544] = 1;
  if (qword_1025D4650 != -1)
  {
    sub_100244280();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,start}", v3, 0x12u);
  }

  sub_1001BB1A4(a1);
  sub_1001BB328(a1);
  a1[76] = 1;
}

uint64_t sub_1001BA1EC(uint64_t a1)
{
  sub_10004FD18(v56);
  v54 = 0;
  str = 0;
  sub_10001CAF4(buf);
  if (sub_100185ADC(*buf, "GpsReferenceLocation", v56) && sub_1004FBF14(v56, "Latitude", &str))
  {
    v2 = sub_1004FBF14(v56, "Longitude", &v54);
    if (*v58)
    {
      sub_100008080(*v58);
    }

    if (v2)
    {
      v67[0] = 0.0;
      v53 = 0;
      *(a1 + 8284) = CFStringGetDoubleValue(str);
      *(a1 + 8292) = CFStringGetDoubleValue(v54);
      *(a1 + 8412) = 1;
      *(a1 + 1577) = 1;
      *(a1 + 8300) = 0x40A7700000000000;
      if (sub_10005BBE4(v56, "LocationType", &v53))
      {
        *(a1 + 8376) = v53;
      }

      if (sub_1000B9370(v56, "HorizontalUncertainty", v67))
      {
        v3 = v67[0];
        if (v67[0] <= 0.0)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v4 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v58 = 2082;
            *&v58[2] = "";
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalUncertainty for GpsReferenceLocation}", buf, 0x12u);
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }
          }

          v5 = qword_1025D4658;
          v3 = -1.0;
          if (os_signpost_enabled(qword_1025D4658))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v58 = 2082;
            *&v58[2] = "";
            _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: HorizontalUncertainty for GpsReferenceLocation", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalUncertainty for GpsReferenceLocation}", buf, 0x12u);
          }
        }
      }

      else
      {
        v3 = 3000.0;
      }

      *(a1 + 8300) = v3;
      *(a1 + 9088) = 0;
      if (sub_10005BBE4(v56, "HorizontalReliability", &v53))
      {
        if (v53 < 5)
        {
          *(a1 + 9088) = v53;
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v24 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v58 = 2082;
            *&v58[2] = "";
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalReliability}", buf, 0x12u);
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }
          }

          v25 = qword_1025D4658;
          if (os_signpost_enabled(qword_1025D4658))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *v58 = 2082;
            *&v58[2] = "";
            _os_signpost_emit_with_name_impl(dword_100000000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: HorizontalReliability", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: HorizontalReliability}", buf, 0x12u);
          }
        }
      }

      *(a1 + 9092) = 0;
      if (sub_1000B9370(v56, "Altitude", v67))
      {
        *(a1 + 8308) = v67[0];
        if (sub_1000B9370(v56, "VerticalUncertainty", v67))
        {
          v26 = v67[0];
          if (v67[0] <= 0.0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v27 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v58 = 2082;
              *&v58[2] = "";
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalUncertainty for GpsReferenceLocation}", buf, 0x12u);
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }
            }

            v28 = qword_1025D4658;
            v26 = -1.0;
            if (os_signpost_enabled(qword_1025D4658))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v58 = 2082;
              *&v58[2] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: VerticalUncertainty for GpsReferenceLocation", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalUncertainty for GpsReferenceLocation}", buf, 0x12u);
            }
          }
        }

        else
        {
          v26 = 3000.0;
        }

        *(a1 + 8316) = v26;
        if (sub_10005BBE4(v56, "VerticalReliability", &v53))
        {
          if (v53 < 5)
          {
            *(a1 + 9092) = v53;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v29 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v58 = 2082;
              *&v58[2] = "";
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalReliability}", buf, 0x12u);
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }
            }

            v30 = qword_1025D4658;
            if (os_signpost_enabled(qword_1025D4658))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *v58 = 2082;
              *&v58[2] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#GnssAssistancePosition, invalid defaults: VerticalReliability", "{msg%{public}.0s:#GnssAssistancePosition, invalid defaults: VerticalReliability}", buf, 0x12u);
            }
          }
        }
      }

      else
      {
        *(a1 + 8308) = xmmword_101C76220;
      }

      if (*(a1 + 9088) > 0 || *(a1 + 9092) >= 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v31 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v32 = *(a1 + 8376);
          v33 = *(a1 + 8284);
          v34 = *(a1 + 8292);
          v35 = *(a1 + 8308);
          v36 = *(a1 + 8300);
          v37 = *(a1 + 8316);
          v38 = *(a1 + 9088);
          v39 = *(a1 + 9092);
          *buf = 68291075;
          *&buf[4] = 0;
          *v58 = 2082;
          *&v58[2] = "";
          v59 = 1026;
          *v60 = v32;
          *&v60[4] = 2053;
          *&v60[6] = v33;
          *&v60[14] = 2053;
          *&v60[16] = v34;
          *&v60[24] = 2050;
          *&v60[26] = v35;
          *&v60[34] = 2050;
          *&v60[36] = v36;
          v61 = 2050;
          v62 = v37;
          v63 = 1026;
          v64 = v38;
          v65 = 1026;
          v66 = v39;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, forcing tightly-coupled assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, horizontalReliability:%{public}d, verticalReliability:%{public}d}", buf, 0x56u);
        }
      }

      if ((sub_1000B9370(v56, "timestamp", (a1 + 8356)) & 1) == 0)
      {
        *(a1 + 8356) = CFAbsoluteTimeGetCurrent();
      }

      if (!sub_1000B9370(v56, "Age", (a1 + 9096)))
      {
        goto LABEL_133;
      }

      v40 = *(a1 + 9096);
      v41 = v40 & 0x7FFFFFFFFFFFFFFFLL;
      v42 = (v40 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v43 = v40 < 0;
      v44 = v40 < 0 && ((v40 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (!v43)
      {
        v42 = 0;
      }

      v45 = v41 <= 0x7FF0000000000000;
      v46 = v41 == 0x7FF0000000000000 || v42;
      if (!v45)
      {
        v46 = 1;
      }

      if ((v46 | v44) == 1)
      {
LABEL_133:
        *(a1 + 9096) = 0;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v47 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a1 + 8284);
        v49 = *(a1 + 8292);
        v50 = *(a1 + 8356);
        v51 = *(a1 + 9096);
        *buf = 68290051;
        *v58 = 2082;
        *&buf[4] = 0;
        *&v58[2] = "";
        v59 = 2053;
        *v60 = v48;
        *&v60[8] = 2053;
        *&v60[10] = v49;
        *&v60[18] = 2050;
        *&v60[20] = v50;
        *&v60[28] = 2050;
        *&v60[30] = v51;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, CL-force reference location, lat:%{sensitive}.7f, lon:%{sensitive}.7f, timestamp:%{public}.2f, age:%{public}.1f}", buf, 0x3Au);
      }
    }
  }

  else if (*v58)
  {
    sub_100008080(*v58);
  }

  v53 = 0;
  sub_10001CAF4(buf);
  v6 = sub_10005BBE4(*buf, "GpsPositionInjectionEnable", &v53);
  if (*v58)
  {
    sub_100008080(*v58);
  }

  if (v6)
  {
    v7 = v53 == 1;
    *(a1 + 1578) = v53 == 1;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else if ((*(a1 + 1578) & 1) == 0)
  {
LABEL_23:
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v58 = 2082;
      *&v58[2] = "";
      v9 = "{msg%{public}.0s:#GnssAssistancePosition, CPI,disabled}";
LABEL_32:
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x12u);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    v9 = "{msg%{public}.0s:#GnssAssistancePosition, CPI,enabled}";
    goto LABEL_32;
  }

LABEL_33:
  sub_10001CAF4(buf);
  v10 = sub_10005BBE4(*buf, "GpsUseCachedLocation", &v53);
  if (*v58)
  {
    sub_100008080(*v58);
  }

  if (v10)
  {
    *(a1 + 1576) = v53 != 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 1576);
    *buf = 68289282;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    v59 = 1026;
    *v60 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, fUseCachedLocationAssist:%{public}d}", buf, 0x18u);
  }

  sub_10001CAF4(buf);
  v13 = sub_10005BBE4(*buf, "GpsUseDefaultLocationInFarStartTest", &v53);
  if (*v58)
  {
    sub_100008080(*v58);
  }

  if (v13)
  {
    *(a1 + 1545) = v53 != 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v14 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 1545);
    *buf = 68289282;
    *&buf[4] = 0;
    *v58 = 2082;
    *&v58[2] = "";
    v59 = 1026;
    *v60 = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, fUseDefaultLocInFarStartTest:%{public}d}", buf, 0x18u);
  }

  sub_1003C93BC(a1 + 1552, *(a1 + 1560));
  *(a1 + 1552) = a1 + 1560;
  *(a1 + 1560) = 0u;
  sub_10001CAF4(buf);
  v16 = sub_1001C0EF0(*buf, "GpsPositionAssistanceTypeBlocklist");
  if (*v58)
  {
    sub_100008080(*v58);
  }

  if (v16)
  {
    v17 = 0;
    v52 = 0;
    do
    {
      sub_10001CAF4(buf);
      v18 = sub_1004FB7DC(*buf, "GpsPositionAssistanceTypeBlocklist", &v52);
      if (*v58)
      {
        sub_100008080(*v58);
      }

      if (v18)
      {
        if (v52 < 0xE)
        {
          *buf = v52;
          sub_1003C9410(a1 + 1552, buf);
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v22 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v52;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#GnssAssistancePosition,blocking location type,%d", buf, 8u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_74;
          }

          sub_101A95F98(buf);
          LODWORD(v67[0]) = 67109120;
          HIDWORD(v67[0]) = v52;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistancePosition::getLocationDefaults()", "%s\n", v20);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v19 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v52;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#GnssAssistancePosition,unexpected location type,%d", buf, 8u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_74;
          }

          sub_101A95F98(buf);
          LODWORD(v67[0]) = 67109120;
          HIDWORD(v67[0]) = v52;
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAssistancePosition::getLocationDefaults()", "%s\n", v20);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v21 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#GnssAssistancePosition,unable to retrieve blocked location type at index,%d", buf, 8u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_74;
        }

        sub_101A95F98(buf);
        LODWORD(v67[0]) = 67109120;
        HIDWORD(v67[0]) = v17;
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAssistancePosition::getLocationDefaults()", "%s\n", v20);
      }

      if (v20 != buf)
      {
        free(v20);
      }

LABEL_74:
      ++v17;
    }

    while (v16 != v17);
  }

  return sub_100005DA4(v56);
}

void sub_1001BB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

CFIndex sub_1001BB128(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), kCFPreferencesCurrentHost);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

_BYTE *sub_1001BB1A4(_BYTE *result)
{
  if ((result[11784] & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,TBA, registered for tunnel and bridge assistance notifications}", &v4, 0x12u);
    }

    [*(*(v1 + 1474) + 16) register:*(*(v1 + 1474) + 8) forNotification:4 registrationInfo:0];
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, registered for tunnel end point notifications}", &v4, 0x12u);
    }

    result = [*(*(v1 + 1474) + 16) register:*(*(v1 + 1474) + 8) forNotification:5 registrationInfo:0];
    v1[11784] = 1;
  }

  return result;
}

void sub_1001BB328(uint64_t a1)
{
  v2 = sub_1001BB7DC(a1 + 496);
  v3 = *(v2 + 16);
  *v34 = *v2;
  *&v34[16] = v3;
  v4 = *(v2 + 80);
  v6 = *(v2 + 32);
  v5 = *(v2 + 48);
  v36 = *(v2 + 64);
  v37 = v4;
  *&v34[32] = v6;
  v35 = v5;
  v8 = *(v2 + 112);
  v7 = *(v2 + 128);
  v9 = *(v2 + 96);
  *&v40[12] = *(v2 + 140);
  v39 = v8;
  *v40 = v7;
  v38 = v9;
  memcpy(v41, (v2 + 160), sizeof(v41));
  v42 = *(v2 + 680);
  v10 = *(v2 + 688);
  v43 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(v2 + 696);
  v12 = *(v2 + 728);
  v45 = *(v2 + 712);
  v46 = v12;
  v44 = v11;
  v13 = *(v2 + 744);
  v14 = *(v2 + 760);
  v15 = *(v2 + 776);
  *(v49 + 9) = *(v2 + 785);
  v48 = v14;
  v49[0] = v15;
  v47 = v13;
  if (sub_1001BB918(a1))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 8376);
      v18 = *(a1 + 8284);
      v19 = *(a1 + 8292);
      v21 = *(a1 + 8300);
      v20 = *(a1 + 8308);
      v22 = *(a1 + 8316);
      buf = 68290563;
      v51 = 2082;
      v52 = "";
      v53 = 1026;
      v54 = v17;
      v55 = 2053;
      *v56 = v18;
      *&v56[8] = 2053;
      *&v56[10] = v19;
      *&v56[18] = 2050;
      *&v56[20] = v20;
      *&v56[28] = 2050;
      *&v56[30] = v21;
      *&v56[38] = 2050;
      *&v56[40] = v22;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, feed tightly coupled location as assistance location, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", &buf, 0x4Au);
    }

    sub_1001928D0(a1, a1 + 8280, 0, 0);
    goto LABEL_21;
  }

  if (*(a1 + 11768) == 1)
  {
    if (*(a1 + 1604) > 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v23 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 11768);
        v25 = *(a1 + 1680);
        v26 = *(a1 + 1588);
        v27 = *(a1 + 1596);
        v29 = *(a1 + 1604);
        v28 = *(a1 + 1612);
        v30 = *(a1 + 1620);
        buf = 68290819;
        v51 = 2082;
        v52 = "";
        v53 = 1026;
        v54 = v24;
        v55 = 1026;
        *v56 = v25;
        *&v56[4] = 2053;
        *&v56[6] = v26;
        *&v56[14] = 2053;
        *&v56[16] = v27;
        *&v56[24] = 2050;
        *&v56[26] = v28;
        *&v56[34] = 2050;
        *&v56[36] = v29;
        *&v56[44] = 2050;
        *&v56[46] = v30;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, feed cached reference location as assistance location, isEmergency:%{public}d, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", &buf, 0x50u);
      }

      sub_1001928D0(a1, a1 + 1584, 0, 0);
      goto LABEL_21;
    }

LABEL_17:
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v51 = 2082;
      v52 = "";
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, cached reference location not available}", &buf, 0x12u);
    }

LABEL_21:
    if (!v10)
    {
      return;
    }

    goto LABEL_22;
  }

  if (*&v34[20] <= 0.0)
  {
    goto LABEL_17;
  }

  if (qword_1025D4650 != -1)
  {
    sub_100244280();
  }

  v32 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 11768);
    buf = 68290819;
    v51 = 2082;
    v52 = "";
    v53 = 1026;
    v54 = v33;
    v55 = 1026;
    *v56 = v38;
    *&v56[4] = 2053;
    *&v56[6] = *&v34[4];
    *&v56[14] = 2053;
    *&v56[16] = *&v34[12];
    *&v56[24] = 2050;
    *&v56[26] = *&v34[28];
    *&v56[34] = 2050;
    *&v56[36] = *&v34[20];
    *&v56[44] = 2050;
    *&v56[46] = *&v34[36];
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssAssistancePosition, feed cached reference location as assistance location, isEmergency:%{public}d, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", &buf, 0x50u);
  }

  sub_1001928D0(a1, v34, 0, 0);
  v10 = v43;
  if (v43)
  {
LABEL_22:
    sub_100008080(v10);
  }
}

uint64_t sub_1001BB7DC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    sub_100072AFC(a1 + 32, __p);
    if (v8 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = *(a1 + 160);
    v5 = *(a1 + 508);
    *buf = 68289795;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2085;
    v14 = v3;
    v15 = 1026;
    v16 = v4;
    v17 = 2050;
    v18 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#GnssRefLocationCache,getCachedReferenceLocation, location,:%{sensitive, location:escape_only}s, integrity:%{public}d, undulation:%{public}f}", buf, 0x2Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1 + 32;
}

BOOL sub_1001BB918(uint64_t a1)
{
  if (*(a1 + 1545) != 1)
  {
    return 0;
  }

  result = sub_100195DDC(a1, a1 + 8280, *(a1 + 9096));
  if (result)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 9096);
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2050;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,useTightlyCoupledPosInFarStartTest, age:%{public}f}", v5, 0x1Cu);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1001BBA20(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10066AF9C();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D7A61;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018F721C(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_1001BBDD8(uint64_t a1, int *a2, _DWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  *a3 = *v8;
  return 1;
}

void sub_1001BBE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000081AC();
  v5 = *(a2 + 504);
  if (v5 <= 0.0)
  {
    v6 = (a2 + 76);
    if (*(a2 + 76) <= 0.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v32 = *v6;
        LODWORD(buf[0]) = 134349056;
        *(buf + 4) = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "#GnssAssistancePosition,feedAssistanceLocation,missing timestamp,%{public}.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A965D8((a2 + 76));
      }

      return;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 504);
      LODWORD(buf[0]) = 134349056;
      *(buf + 4) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#GnssAssistancePosition,#Warning,feedAssistanceLocation,missing mct timestamp,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A966DC((a2 + 504));
    }

    v5 = v4 - (CFAbsoluteTimeGetCurrent() - *v6);
    *(a2 + 504) = v5;
  }

  v9 = v4 - v5;
  if (v9 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  *(a2 + 816) = v10;
  v168 = 0;
  v167 = 0.0;
  v166 = 0;
  sub_1001B4048(a1, *(a2 + 472), &v168, &v167, &v166, *(a2 + 4), *(a2 + 12), *(a2 + 28), *(a2 + 36), *(a2 + 476));
  *(a2 + 28) = v167;
  v11 = v166;
  *(a2 + 36) = v166;
  v116 = *(a2 + 20);
  if ((*(a1 + 11768) & 1) == 0)
  {
    v17 = *(a1 + 8240);
    if (*(a1 + 8248) == v17 || (v18 = *(a1 + 8264), v19 = (v17 + 8 * (v18 >> 9)), v20 = *v19, v21 = &(*v19)[v18 & 0x1FF], v22 = *(v17 + (((*(a1 + 8272) + v18) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 8272) + v18) & 0x1FF), v21 == v22))
    {
      v29 = 0;
      v23 = 0;
      v28 = *(a2 + 824);
      v24 = 0.0;
    }

    else
    {
      v23 = 0;
      v24 = 0.0;
      do
      {
        v25 = *v21++;
        v26 = v25;
        if (v21 - v20 == 4096)
        {
          v27 = v19[1];
          ++v19;
          v20 = v27;
          v21 = v27;
        }

        v24 = v24 + (v26 - v24) / ++v23;
      }

      while (v21 != v22);
      v28 = *(a2 + 824);
      v29 = v23 == 20;
      if (v28 == 1 && v23 == 20 && v24 > 13.4112)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v30 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *&buf[0] = 68289282;
          WORD4(buf[0]) = 2082;
          *(buf + 10) = "";
          WORD1(buf[1]) = 2050;
          *(&buf[1] + 4) = v24;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance: withdrawing tight coupling assistance due to average user speed, averageSpeed:%{public}f}", buf, 0x1Cu);
        }

        v28 = 0;
        *(a2 + 824) = 0;
        v23 = 20;
        v29 = 1;
      }
    }

    if (v9 > 0.0)
    {
      v35 = v9 <= 1.0 || v9 == INFINITY;
      v33 = 0.65;
      if (!v35)
      {
        v33 = v9 + 0.65;
      }
    }

    else
    {
      v33 = 0.65;
    }

    v36 = *(a2 + 20);
    if (v36 > 0.0)
    {
      v37 = v24 * 1.5;
      if (!v29)
      {
        v37 = 13.4112;
      }

      v36 = sqrt(v37 * (v37 * (v33 * v33)) + v36 * v36);
      *(a2 + 20) = v36;
    }

    v38 = *(a2 + 36);
    if (v38 > 0.0)
    {
      v38 = sqrt(v33 * v33 + v38 * v38);
      *(a2 + 36) = v38;
    }

    if (v9 > 0.0 && v9 != INFINITY && ((v28 ^ 1) & 1) == 0)
    {
      *(a2 + 76) = v9 + *(a2 + 76);
      *(a2 + 192) = sub_1000137E0();
      *(a2 + 504) = sub_1000081AC();
      *(a2 + 184) = v9 + *(a2 + 184);
      *(a2 + 816) = 0;
      v36 = *(a2 + 20);
      v38 = *(a2 + 36);
    }

    v39 = v38;
    if (v36 <= 0.0)
    {
LABEL_71:
      if (v39 <= 0.0)
      {
        goto LABEL_82;
      }

      *(a2 + 36) = (v39 * 1.95996398 + 25.0) / 1.95996398;
      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v44 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *&buf[0] = 68289026;
          WORD4(buf[0]) = 2082;
          *(buf + 10) = "";
          v45 = v44;
          v46 = OS_LOG_TYPE_DEFAULT;
LABEL_81:
          _os_log_impl(dword_100000000, v45, v46, "{msg%{public}.0s:#GnssAssistancePosition, adjust,vunc}", buf, 0x12u);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v47 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *&buf[0] = 68289026;
          WORD4(buf[0]) = 2082;
          *(buf + 10) = "";
          v45 = v47;
          v46 = OS_LOG_TYPE_DEBUG;
          goto LABEL_81;
        }
      }

LABEL_82:
      v48 = *(a2 + 20);
      v49 = *(a2 + 36);
      v50 = -1.0;
      if (*(a1 + 5668) > 0.0)
      {
        sub_1001097CC((a1 + 11656), a1 + 5648, a2);
        v50 = v51;
        v52 = 1.0;
        v53 = v24 * -0.48 + 1.0;
        v54 = 0.0;
        if (v53 < 0.0)
        {
          v53 = 0.0;
        }

        if (v53 > 1.0)
        {
          v53 = 1.0;
        }

        if (v50 * -0.00444444444 + 1.11111111 >= 0.0)
        {
          v54 = v50 * -0.00444444444 + 1.11111111;
        }

        if (v54 <= 1.0)
        {
          v52 = v54;
        }

        v55 = v53 * v52;
        v56 = *(a2 + 20);
        if (v56 > 0.0)
        {
          if (v56 < v55 * 1.41421356 * 250.0)
          {
            v56 = v55 * 1.41421356 * 250.0;
          }

          *(a2 + 20) = v56;
        }

        v57 = *(a2 + 36);
        if (v57 > 0.0)
        {
          v58 = v55 * 250.0;
          if (v57 >= v58)
          {
            v58 = *(a2 + 36);
          }

          *(a2 + 36) = v58;
        }
      }

      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v59 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        v60 = *(a2 + 20);
        v61 = *(a2 + 36);
        *&buf[0] = 68292098;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2050;
        *(&buf[1] + 4) = v10;
        WORD6(buf[1]) = 1026;
        *(&buf[1] + 14) = v23;
        WORD1(buf[2]) = 2050;
        *(&buf[2] + 4) = v24;
        WORD6(buf[2]) = 2050;
        *(&buf[2] + 14) = v50;
        WORD3(buf[3]) = 2050;
        *(&buf[3] + 1) = v116;
        LOWORD(buf[4]) = 2050;
        *(&buf[4] + 2) = v36;
        WORD5(buf[4]) = 2050;
        *(&buf[4] + 12) = v48;
        WORD2(buf[5]) = 2050;
        *(&buf[5] + 6) = v60;
        HIWORD(buf[5]) = 2050;
        *&buf[6] = v11;
        WORD4(buf[6]) = 2050;
        *(&buf[6] + 10) = v38;
        WORD1(buf[7]) = 2050;
        *(&buf[7] + 4) = v49;
        WORD6(buf[7]) = 2050;
        *(&buf[7] + 14) = v61;
        v13 = "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance, assistanceAge:%{public}f, validRecentSpeeds:%{public}d, averageSpeed:%{public}f, assistanceInnovation:%{public}f, huncOriginal:%{public}f, huncPropagated:%{public}f, huncMomentMatched:%{public}f, huncDiluted:%{public}f, vuncOriginal:%{public}f, vuncPropagated:%{public}f, vuncMomentMatched:%{public}f, vuncDiluted:%{public}f}";
        v14 = v59;
        v15 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v62 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_110;
        }

        v63 = *(a2 + 20);
        v64 = *(a2 + 36);
        *&buf[0] = 68292098;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2050;
        *(&buf[1] + 4) = v10;
        WORD6(buf[1]) = 1026;
        *(&buf[1] + 14) = v23;
        WORD1(buf[2]) = 2050;
        *(&buf[2] + 4) = v24;
        WORD6(buf[2]) = 2050;
        *(&buf[2] + 14) = v50;
        WORD3(buf[3]) = 2050;
        *(&buf[3] + 1) = v116;
        LOWORD(buf[4]) = 2050;
        *(&buf[4] + 2) = v36;
        WORD5(buf[4]) = 2050;
        *(&buf[4] + 12) = v48;
        WORD2(buf[5]) = 2050;
        *(&buf[5] + 6) = v63;
        HIWORD(buf[5]) = 2050;
        *&buf[6] = v11;
        WORD4(buf[6]) = 2050;
        *(&buf[6] + 10) = v38;
        WORD1(buf[7]) = 2050;
        *(&buf[7] + 4) = v49;
        WORD6(buf[7]) = 2050;
        *(&buf[7] + 14) = v64;
        v13 = "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance, assistanceAge:%{public}f, validRecentSpeeds:%{public}d, averageSpeed:%{public}f, assistanceInnovation:%{public}f, huncOriginal:%{public}f, huncPropagated:%{public}f, huncMomentMatched:%{public}f, huncDiluted:%{public}f, vuncOriginal:%{public}f, vuncPropagated:%{public}f, vuncMomentMatched:%{public}f, vuncDiluted:%{public}f}";
        v14 = v62;
        v15 = OS_LOG_TYPE_DEBUG;
      }

      v16 = 134;
      goto LABEL_109;
    }

    *(a2 + 20) = (v36 * 1.73081838 + 25.0) / 1.73081838;
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v40 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }

      *&buf[0] = 68289026;
      WORD4(buf[0]) = 2082;
      *(buf + 10) = "";
      v41 = v40;
      v42 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v43 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_70;
      }

      *&buf[0] = 68289026;
      WORD4(buf[0]) = 2082;
      *(buf + 10) = "";
      v41 = v43;
      v42 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v41, v42, "{msg%{public}.0s:#GnssAssistancePosition, adjust,hunc}", buf, 0x12u);
LABEL_70:
    v39 = *(a2 + 36);
    goto LABEL_71;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0] = 68289794;
    WORD4(buf[0]) = 2082;
    *(buf + 10) = "";
    WORD1(buf[1]) = 2050;
    *(&buf[1] + 4) = v10;
    WORD6(buf[1]) = 2050;
    *(&buf[1] + 14) = v116;
    WORD3(buf[2]) = 2050;
    *(&buf[2] + 1) = v11;
    v13 = "{msg%{public}.0s:#GnssAssistancePosition, Position Assistance(undiluted), assistanceAge:%{public}f, huncOriginal:%{public}f, vuncOriginal:%{public}f}";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 48;
LABEL_109:
    _os_log_impl(dword_100000000, v14, v15, v13, buf, v16);
  }

LABEL_110:
  if (!sub_1001BB918(a1))
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v84 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v85 = *(a2 + 4);
        v86 = *(a2 + 12);
        v87 = *(a2 + 28);
        v88 = *(a2 + 20);
        v89 = *(a2 + 36);
        v90 = *(a2 + 816);
        v91 = *(a2 + 824);
        v92 = *(a2 + 76);
        *&buf[0] = 68291075;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2053;
        *(&buf[1] + 4) = v85;
        WORD6(buf[1]) = 2053;
        *(&buf[1] + 14) = v86;
        WORD3(buf[2]) = 2050;
        *(&buf[2] + 1) = v87;
        LOWORD(buf[3]) = 2050;
        *(&buf[3] + 2) = v88;
        WORD5(buf[3]) = 2050;
        *(&buf[3] + 12) = v89;
        WORD2(buf[4]) = 2050;
        *(&buf[4] + 6) = v90;
        HIWORD(buf[4]) = 1026;
        LODWORD(buf[5]) = v91;
        WORD2(buf[5]) = 1026;
        *(&buf[5] + 6) = v92;
        v93 = v84;
        v94 = OS_LOG_TYPE_DEFAULT;
LABEL_139:
        _os_log_impl(dword_100000000, v93, v94, "{msg%{public}.0s:#GnssAssistancePosition, location assistance, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, age:%{public}.1f, isCPI:%{public}d, timestamp:%{public}d}", buf, 0x5Au);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v98 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v99 = *(a2 + 4);
        v100 = *(a2 + 12);
        v101 = *(a2 + 28);
        v102 = *(a2 + 20);
        v103 = *(a2 + 36);
        v104 = *(a2 + 816);
        v105 = *(a2 + 824);
        v106 = *(a2 + 76);
        *&buf[0] = 68291075;
        WORD4(buf[0]) = 2082;
        *(buf + 10) = "";
        WORD1(buf[1]) = 2053;
        *(&buf[1] + 4) = v99;
        WORD6(buf[1]) = 2053;
        *(&buf[1] + 14) = v100;
        WORD3(buf[2]) = 2050;
        *(&buf[2] + 1) = v101;
        LOWORD(buf[3]) = 2050;
        *(&buf[3] + 2) = v102;
        WORD5(buf[3]) = 2050;
        *(&buf[3] + 12) = v103;
        WORD2(buf[4]) = 2050;
        *(&buf[4] + 6) = v104;
        HIWORD(buf[4]) = 1026;
        LODWORD(buf[5]) = v105;
        WORD2(buf[5]) = 1026;
        *(&buf[5] + 6) = v106;
        v93 = v98;
        v94 = OS_LOG_TYPE_DEBUG;
        goto LABEL_139;
      }
    }

    v107 = *(a2 + 112);
    v118[6] = *(a2 + 96);
    v118[7] = v107;
    v119[0] = *(a2 + 128);
    *(v119 + 12) = *(a2 + 140);
    v108 = *(a2 + 48);
    v118[2] = *(a2 + 32);
    v118[3] = v108;
    v109 = *(a2 + 80);
    v118[4] = *(a2 + 64);
    v118[5] = v109;
    v110 = *(a2 + 16);
    v118[0] = *a2;
    v118[1] = v110;
    memcpy(v120, (a2 + 160), sizeof(v120));
    v121 = *(a2 + 680);
    v111 = *(a2 + 688);
    v122 = v111;
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v112 = *(a2 + 776);
    v127 = *(a2 + 760);
    v128[0] = v112;
    *(v128 + 9) = *(a2 + 785);
    v113 = *(a2 + 712);
    v123 = *(a2 + 696);
    v124 = v113;
    v114 = *(a2 + 744);
    v125 = *(a2 + 728);
    v126 = v114;
    v128[2] = *(a2 + 808);
    v129 = *(a2 + 824);
    v115 = *(a1 + 32);
    if (!v115)
    {
      sub_1000CF05C();
    }

    (*(*v115 + 48))(v115, v118);
    v97 = v122;
    if (v122)
    {
      goto LABEL_144;
    }

    return;
  }

  v65 = *a2;
  v66 = *(a2 + 60);
  v162 = *(a2 + 44);
  v163 = v66;
  v164 = *(a2 + 76);
  v165 = *(a2 + 92);
  v67 = *(a2 + 116);
  buf[0] = *(a2 + 100);
  buf[1] = v67;
  v68 = *(a2 + 132);
  *&buf[3] = *(a2 + 148);
  buf[2] = v68;
  memcpy(&buf[3] + 12, (a2 + 160), 0x201uLL);
  v69 = *(a2 + 680);
  v70 = *(a2 + 688);
  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v71 = *(a2 + 776);
  v160 = *(a2 + 760);
  v161[0] = v71;
  *(v161 + 9) = *(a2 + 785);
  v72 = *(a2 + 712);
  v156 = *(a2 + 696);
  v157 = v72;
  v73 = *(a2 + 728);
  v159 = *(a2 + 744);
  v158 = v73;
  v74 = *(a2 + 808);
  v117 = *(a2 + 816);
  v75 = *(a1 + 8376);
  v76 = *(a1 + 8284);
  v77 = *(a1 + 8292);
  v78 = *(a1 + 8308);
  v79 = *(a1 + 8300);
  v80 = *(a1 + 8316);
  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v81 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v169 = 68290819;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2053;
      v174 = v76;
      v175 = 2053;
      v176 = v77;
      v177 = 2050;
      v178 = v78;
      v179 = 2050;
      v180 = v79;
      v181 = 2050;
      v182 = v80;
      v183 = 2050;
      v184 = v117;
      v185 = 1026;
      v186 = 1;
      v82 = v81;
      v83 = OS_LOG_TYPE_DEFAULT;
LABEL_127:
      _os_log_impl(dword_100000000, v82, v83, "{msg%{public}.0s:#GnssAssistancePosition, location assistance, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, age:%{public}.1f, isCPI:%{public}d}", v169, 0x54u);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v95 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v169 = 68290819;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2053;
      v174 = v76;
      v175 = 2053;
      v176 = v77;
      v177 = 2050;
      v178 = v78;
      v179 = 2050;
      v180 = v79;
      v181 = 2050;
      v182 = v80;
      v183 = 2050;
      v184 = v117;
      v185 = 1026;
      v186 = 1;
      v82 = v95;
      v83 = OS_LOG_TYPE_DEBUG;
      goto LABEL_127;
    }
  }

  v131 = v76;
  v132 = v77;
  v133 = v79;
  v134 = v78;
  v135 = v80;
  v136 = v162;
  v137 = v163;
  v138 = v164;
  v130 = v65;
  v139 = v165;
  v140 = v75;
  v144 = *&buf[3];
  v143 = buf[2];
  v142 = buf[1];
  v141 = buf[0];
  memcpy(v145, &buf[3] + 12, sizeof(v145));
  v146 = v69;
  v147 = v70;
  if (v70)
  {
    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v152 = v160;
  v153[0] = v161[0];
  *(v153 + 9) = *(v161 + 9);
  v148 = v156;
  v149 = v157;
  v150 = v158;
  v151 = v159;
  v154 = v74;
  v155 = v117;
  v96 = *(a1 + 32);
  if (!v96)
  {
    sub_1000CF05C();
  }

  (*(*v96 + 48))(v96, &v130);
  if (v147)
  {
    sub_100008080(v147);
  }

  if (v70)
  {
    v97 = v70;
LABEL_144:
    sub_100008080(v97);
  }
}