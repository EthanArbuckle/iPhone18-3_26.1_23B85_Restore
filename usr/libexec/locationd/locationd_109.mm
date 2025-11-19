void sub_100804744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008047F4(uint64_t a1)
{
  if (*(a1 + 952))
  {
    sub_10001CAF4(buf);
    v7 = 0;
    sub_1000B9370(*buf, "GnssKnownACUpdateRateCellSeconds", &v7);
    if (*v9)
    {
      sub_100008080(*v9);
    }

    sub_10001CAF4(buf);
    v7 = 0;
    sub_1000B9370(*buf, "GnssKnownACUpdateRateWiFiSeconds", &v7);
    if (*v9)
    {
      sub_100008080(*v9);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 952);
      v4 = v3;
      if (*(v3 + 23) < 0)
      {
        v4 = *v3;
      }

      v5 = v3 + 3;
      if (*(v3 + 47) < 0)
      {
        v5 = *v5;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v9 = 2082;
      *&v9[2] = "";
      v10 = 2082;
      v11 = "knownACFile";
      v12 = 2081;
      v13 = v4;
      v14 = 2081;
      v15 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, source:%{private, location:escape_only}s, destination:%{private, location:escape_only}s}", buf, 0x30u);
    }

    operator new();
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "knownACFile, exiting as KnownAC file ptr is null", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947D9C();
  }
}

void sub_100804ABC(uint64_t a1, std::__shared_weak_count *a2, ...)
{
  va_start(va, a2);
  sub_10080AC08(va);
  if (a2)
  {
    sub_100008080(a2);
  }

  operator delete();
}

uint64_t sub_100804B08(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 47);
    if (v5 < 0)
    {
      v5 = *(v3 + 32);
    }

    if (v5)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v7 = (*a2 + 24);
        if (*(*a2 + 47) < 0)
        {
          v7 = *v7;
        }

        v12 = 136446210;
        v13 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101947E80(a2);
      }

      v8 = (*a2 + 24);
      if (*(*a2 + 47) < 0)
      {
        v8 = *v8;
      }

      if ((sub_1004E915C(v8, 4) & 1) == 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v9 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v10 = (*a2 + 24);
          if (*(*a2 + 47) < 0)
          {
            v10 = *v10;
          }

          v12 = 136446210;
          v13 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class,assistance file,%{public}s", &v12, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101947F88(a2);
        }
      }
    }
  }

  sub_10170B188(a1 + 2752);
  return sub_100803C8C(a1);
}

void sub_100804CD8(uint64_t *a1)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(*v3 + 360);

    v4();
  }

  else
  {
    v7 = v1;
    v8 = v2;
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#timingadvanceforcell, fDevice not found", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101948090();
    }
  }
}

void sub_100804DAC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1001C3FFC();
    if (v2)
    {
      sub_10095D9F8(v2, 0, a1);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor to deregister from", v5, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194816C();
      }
    }

    (*(*a1 + 8))(a1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "GNSS_SEN,Invalid dispatcher passed to Deleter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101948250();
    }
  }
}

void sub_100804EF8(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_10098EAD4();
    if (v2)
    {
      sub_10095D9F8(v2, 0, a1);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor to deregister from", v5, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101948334();
      }
    }

    (*(*a1 + 8))(a1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "GNSS_SEN,Invalid dispatcher passed to Deleter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101948418();
    }
  }
}

uint64_t sub_100805044(uint64_t a1)
{
  *a1 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_101C76220;
  *(a1 + 64) = _Q0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 11;
  *(a1 + 100) = -1;
  *(a1 + 108) = -1;
  *(a1 + 120) = _Q0;
  *(a1 + 136) = 0;
  __asm { FMOV            V1.2S, #-1.0 }

  *(a1 + 140) = _D1;
  *(a1 + 148) = 26;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0xFFFFFFFF00000000;
  *(a1 + 188) = 4;
  *(a1 + 200) = -1;
  *(a1 + 248) = _Q0;
  *(a1 + 384) = xmmword_101CE6D38;
  *(a1 + 400) = xmmword_101CE6D48;
  *(a1 + 416) = xmmword_101CE6D58;
  *(a1 + 428) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 320) = xmmword_101CE6CF8;
  *(a1 + 336) = xmmword_101CE6D08;
  *(a1 + 352) = xmmword_101CE6D18;
  *(a1 + 368) = xmmword_101CE6D28;
  *(a1 + 288) = xmmword_101CE6CD8;
  *(a1 + 304) = xmmword_101CE6CE8;
  *(a1 + 540) = xmmword_101CE6D38;
  *(a1 + 556) = xmmword_101CE6D48;
  *(a1 + 572) = xmmword_101CE6D58;
  *(a1 + 584) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 476) = xmmword_101CE6CF8;
  *(a1 + 492) = xmmword_101CE6D08;
  *(a1 + 508) = xmmword_101CE6D18;
  *(a1 + 524) = xmmword_101CE6D28;
  *(a1 + 444) = xmmword_101CE6CD8;
  *(a1 + 460) = xmmword_101CE6CE8;
  *(a1 + 696) = xmmword_101CE6D38;
  *(a1 + 712) = xmmword_101CE6D48;
  *(a1 + 728) = xmmword_101CE6D58;
  *(a1 + 740) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 632) = xmmword_101CE6CF8;
  *(a1 + 648) = xmmword_101CE6D08;
  *(a1 + 664) = xmmword_101CE6D18;
  *(a1 + 680) = xmmword_101CE6D28;
  *(a1 + 600) = xmmword_101CE6CD8;
  *(a1 + 616) = xmmword_101CE6CE8;
  *(a1 + 852) = xmmword_101CE6D38;
  *(a1 + 868) = xmmword_101CE6D48;
  *(a1 + 884) = xmmword_101CE6D58;
  *(a1 + 788) = xmmword_101CE6CF8;
  *(a1 + 804) = xmmword_101CE6D08;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  *(a1 + 170) = 0;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 196) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  *(a1 + 238) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0xBFF0000000000000;
  *(a1 + 272) = 0xBFF0000000000000;
  *(a1 + 280) = 0;
  *(a1 + 820) = xmmword_101CE6D18;
  *(a1 + 836) = xmmword_101CE6D28;
  *(a1 + 756) = xmmword_101CE6CD8;
  *(a1 + 772) = xmmword_101CE6CE8;
  *(a1 + 933) = 0;
  *(a1 + 928) = 0;
  *(a1 + 896) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 912) = 0u;
  *(a1 + 944) = xmmword_101CA7C10;
  sub_10000EC00((a1 + 960), "");
  sub_10000EC00((a1 + 984), "");
  *(a1 + 1016) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0xBFF0000000000000;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 1048) = -1;
  *(a1 + 1056) = -1;
  *(a1 + 1060) = 0;
  *(a1 + 1065) = 0;
  *(a1 + 1076) = -1;
  *(a1 + 1080) = 0;
  *(a1 + 1087) = 0;
  *(a1 + 1092) = 0u;
  *(a1 + 1108) = 0u;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1232) = -1;
  *(a1 + 1216) = v8;
  *(a1 + 1200) = v8;
  return a1;
}

void sub_1008052A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 983) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008053C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024727E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008053F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008054B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472868;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008054E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008055A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024728E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008055D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805690(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472968;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008056BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805778(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024729E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008057AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805868(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472A68;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080589C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805958(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472AE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080598C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805A48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472B68;
  a2[1] = v2;
  return result;
}

uint64_t sub_100805A80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805B3C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472BE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100805B74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100805BC0(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0x402E000000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = xmmword_101CA7BD0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 6;
  *(a1 + 152) = 256;
  *(a1 + 154) = 1;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 232) = xmmword_101CA7BE0;
  *(a1 + 248) = 0x4024000000000000;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 1;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 312) = 257;
  *(a1 + 316) = 0x32000000018;
  *(a1 + 324) = 0;
  *(a1 + 328) = 257;
  *(a1 + 332) = -115;
  *(a1 + 336) = 0x4000000000000000;
  *(a1 + 344) = 0x3E800000005;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 364) = 257;
  *(a1 + 368) = 1;
  *(a1 + 372) = 257;
  *(a1 + 376) = 0x32000000018;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0x6400000005;
  *(a1 + 400) = 256;
  *(a1 + 404) = 0;
  *(a1 + 408) = -1;
  *(a1 + 416) = 257;
  *(a1 + 420) = 1;
  *(a1 + 424) = 0;
  *(a1 + 428) = -1;
  *(a1 + 436) = 257;
  *(a1 + 440) = 0;
  *(a1 + 444) = -1;
  *(a1 + 452) = 257;
  *(a1 + 456) = 0;
  *(a1 + 460) = -1;
  *(a1 + 468) = 257;
  *(a1 + 472) = 0x6400000002;
  *(a1 + 480) = 100;
  *(a1 + 488) = 256;
  *(a1 + 490) = 1;
  *(a1 + 560) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 568) = 0x3FF0000000000000;
  __asm { FMOV            V6.2D, #10.0 }

  *(a1 + 608) = 0;
  *(a1 + 576) = _Q6;
  *(a1 + 592) = 0u;
  *(a1 + 616) = 1;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 648) = 257;
  *(a1 + 652) = 0x32000000018;
  *(a1 + 660) = 0;
  *(a1 + 664) = 257;
  *(a1 + 668) = -115;
  *(a1 + 672) = 0x4000000000000000;
  *(a1 + 680) = 0x3E800000005;
  *(a1 + 688) = 0;
  *(a1 + 692) = -1;
  *(a1 + 700) = 257;
  *(a1 + 704) = 1;
  *(a1 + 708) = 257;
  *(a1 + 712) = 0x32000000018;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0x6400000005;
  *(a1 + 736) = 256;
  *(a1 + 740) = 0;
  *(a1 + 744) = -1;
  *(a1 + 752) = 257;
  *(a1 + 756) = 1;
  *(a1 + 760) = 0;
  *(a1 + 764) = -1;
  *(a1 + 772) = 257;
  *(a1 + 776) = 0;
  *(a1 + 780) = -1;
  *(a1 + 788) = 257;
  *(a1 + 792) = 0;
  *(a1 + 796) = -1;
  *(a1 + 804) = 257;
  *(a1 + 808) = 0x6400000002;
  *(a1 + 816) = 100;
  return result;
}

uint64_t sub_100805DF4(uint64_t a1)
{
  if (*(a1 + 1335) < 0)
  {
    operator delete(*(a1 + 1312));
  }

  if (*(a1 + 1311) < 0)
  {
    operator delete(*(a1 + 1288));
  }

  if (*(a1 + 1287) < 0)
  {
    operator delete(*(a1 + 1264));
  }

  if (*(a1 + 1263) < 0)
  {
    operator delete(*(a1 + 1240));
  }

  v3 = (a1 + 1216);
  sub_1003D2B50(&v3);
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  v3 = (a1 + 1128);
  sub_1003D2B50(&v3);
  if (*(a1 + 1095) < 0)
  {
    operator delete(*(a1 + 1072));
  }

  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  sub_100805EC8(a1 + 120);
  return a1;
}

uint64_t sub_100805EC8(uint64_t a1)
{
  v3 = (a1 + 624);
  sub_100805FD4(&v3);
  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  v3 = (a1 + 288);
  sub_100805FD4(&v3);
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v3 = (a1 + 120);
  sub_1001E56E8(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100805FD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100806028(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100806028(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v4 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 10;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1008060A0(uint64_t a1)
{
  if (*(a1 + 1199) < 0)
  {
    operator delete(*(a1 + 1176));
  }

  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
  }

  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
  }

  return a1;
}

void *sub_100806104(void *a1, uint64_t a2)
{
  sub_1001B6020(v4, a2);
  sub_100806178(v4, a1);
  sub_1001C5560(v4);
  return a1;
}

void *sub_100806178(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1008063D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10080640C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  std::string::operator=((a1 + 32), (a2 + 32));
  v4 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v4;
  std::string::operator=((a1 + 88), (a2 + 88));
  *(a1 + 112) = *(a2 + 112);
  if (a1 != a2)
  {
    sub_1018024F0((a1 + 120), *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  }

  *(a1 + 144) = *(a2 + 144);
  v5 = *(a2 + 152);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 152) = v5;
  std::string::operator=((a1 + 160), (a2 + 160));
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 208));
  v6 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = v6;
  std::string::operator=((a1 + 256), (a2 + 256));
  *(a1 + 280) = *(a2 + 280);
  if (a1 != a2)
  {
    sub_10080662C(a1 + 288, *(a2 + 288), *(a2 + 296), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 296) - *(a2 + 288)) >> 4));
  }

  v7 = *(a2 + 312);
  v8 = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = v8;
  *(a1 + 312) = v7;
  v9 = *(a2 + 360);
  v10 = *(a2 + 376);
  v11 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v11;
  *(a1 + 360) = v9;
  *(a1 + 376) = v10;
  v12 = *(a2 + 424);
  v13 = *(a2 + 440);
  v14 = *(a2 + 456);
  *(a1 + 468) = *(a2 + 468);
  *(a1 + 440) = v13;
  *(a1 + 456) = v14;
  *(a1 + 424) = v12;
  v15 = *(a2 + 488);
  *(a1 + 490) = *(a2 + 490);
  *(a1 + 488) = v15;
  std::string::operator=((a1 + 496), (a2 + 496));
  std::string::operator=((a1 + 520), (a2 + 520));
  std::string::operator=((a1 + 544), (a2 + 544));
  v16 = *(a2 + 584);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 584) = v16;
  std::string::operator=((a1 + 592), (a2 + 592));
  *(a1 + 616) = *(a2 + 616);
  if (a1 != a2)
  {
    sub_10080662C(a1 + 624, *(a2 + 624), *(a2 + 632), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 632) - *(a2 + 624)) >> 4));
  }

  v17 = *(a2 + 648);
  v18 = *(a2 + 680);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 680) = v18;
  *(a1 + 648) = v17;
  v19 = *(a2 + 696);
  v20 = *(a2 + 712);
  v21 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v21;
  *(a1 + 696) = v19;
  *(a1 + 712) = v20;
  v22 = *(a2 + 760);
  v23 = *(a2 + 776);
  v24 = *(a2 + 792);
  *(a1 + 804) = *(a2 + 804);
  *(a1 + 776) = v23;
  *(a1 + 792) = v24;
  *(a1 + 760) = v22;
  return a1;
}

void sub_10080662C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1008067C4(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_100806804(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 4) >= a4)
  {
    sub_100806A5C(&v17, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        if (*(v14 - 1) < 0)
        {
          operator delete(*(v14 - 3));
        }

        if (*(v14 - 33) < 0)
        {
          operator delete(*(v14 - 7));
        }

        v15 = v14 - 10;
        if (*(v14 - 57) < 0)
        {
          operator delete(*v15);
        }

        v14 -= 10;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100806A5C(&v16, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100806850(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1008067C4(uint64_t a1)
{
  if (*a1)
  {
    sub_100806028(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100806804(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_100806AE0(a1, a2);
  }

  sub_10028C64C();
}

char *sub_100806850(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100007244(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_100007244(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      v4[48] = *(v6 + 48);
      if (*(v6 + 79) < 0)
      {
        sub_100007244(v4 + 56, *(v6 + 7), *(v6 + 8));
      }

      else
      {
        v9 = *(v6 + 56);
        *(v4 + 9) = *(v6 + 9);
        *(v4 + 56) = v9;
      }

      v6 += 5;
      v4 = v14 + 80;
      v14 += 80;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_100806998(v11);
  return v4;
}

void sub_100806954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_100806998(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100806998(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1008069E4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1008069E4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      if (*(v6 - 33) < 0)
      {
        operator delete(*(v6 - 7));
      }

      v7 = v6 - 10;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 10;
    }

    while (v7 != a5);
  }
}

std::string *sub_100806A5C(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this[2].__r_.__value_.__s.__data_[0] = v5[2].__r_.__value_.__s.__data_[0];
    std::string::operator=((this + 56), (v5 + 56));
    this = (this + 80);
    v5 = (v5 + 80);
  }

  while (v5 != v6);
  return v6;
}

void sub_100806AE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100806B38(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_100806CA4(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_100806D0C(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_100806E54(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_1003D2AF8(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100806E54(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100806D58(a1, __str + v11, a3, *(a1 + 8));
  }
}

void sub_100806CA4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_1003D2AF8(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100806D0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1003D2A50(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_100806D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100007244(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100007244((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100806E08(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1003D2AF8(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100806E54(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_100806EC4(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_100807024(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_100807024(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100807114(a1, prime);
    }
  }
}

void sub_100807114(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

double sub_100807378(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1008073A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100807478(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1008074C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008075AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100807698(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008076E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080777C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100807814(uint64_t a1, uint64_t a2)
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

void sub_1008078B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008078EC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080792C(uint64_t a1, const void **a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  v6 = (a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    if (a2[1])
    {
      goto LABEL_5;
    }

LABEL_20:
    sub_1019484FC();
    result = abort_report_np();
    __break(1u);
    return result;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  sub_100070148(&v12, v8 + 1);
  if (v13 >= 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12;
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  *(v9 + v8) = 44;
  if (*(a1 + 119) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v12;
  *(a1 + 112) = v13;
  return a1;
}

void sub_100807A90(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*v5);
  }

  sub_1003C93BC(v3, *(v1 + 64));
  v7 = *(v1 + 40);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1003C93BC(v2, *v4);
  _Unwind_Resume(a1);
}

uint64_t sub_100807AD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100807B54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100807BD4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100807C54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100807CD4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10168A7F4();

    operator delete();
  }

  return result;
}

uint64_t sub_100807D20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016DA8A8();

    operator delete();
  }

  return result;
}

uint64_t sub_100807D6C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100E0DD44();

    operator delete();
  }

  return result;
}

uint64_t **sub_100807DB8(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10080C390((v2 + 3));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100807E48(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100AE351C();

    operator delete();
  }

  return result;
}

uint64_t sub_100807E94(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1009B889C();

    operator delete();
  }

  return result;
}

uint64_t sub_100807EE0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_101754A38();

    operator delete();
  }

  return result;
}

uint64_t sub_100807F2C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10131EFC0();

    operator delete();
  }

  return result;
}

uint64_t *sub_100807F78(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100746290(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100807FC4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10167EAA8();

    operator delete();
  }

  return result;
}

uint64_t sub_100808010(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016FF1D8();

    operator delete();
  }

  return result;
}

uint64_t sub_10080805C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_1008080DC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1008085F4(v2 + 72);

    operator delete();
  }

  return result;
}

uint64_t sub_10080813C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10080C4F8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808188(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016CBDFC();

    operator delete();
  }

  return result;
}

uint64_t sub_1008081D4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016A8560(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808220(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016BF660();

    operator delete();
  }

  return result;
}

uint64_t sub_10080826C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016AD084();

    operator delete();
  }

  return result;
}

uint64_t sub_1008082B8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100D085F8();

    operator delete();
  }

  return result;
}

uint64_t sub_100808304(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1010BFFF8();

    operator delete();
  }

  return result;
}

uint64_t sub_100808350(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100EAB9FC();

    operator delete();
  }

  return result;
}

uint64_t sub_10080839C(uint64_t a1)
{
  sub_1008083D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1008083D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100805DF4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10080841C(uint64_t a1)
{
  v2 = a1 + 56;
  sub_10080848C(*(a1 + 56), (a1 + 64), a1);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_1003C93BC(v2, *(a1 + 64));
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1003C93BC(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_10080848C(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1001C04E8(a3, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_10080857C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472F28;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008085A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008085F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1008086E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472FB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100808710(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080875C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1008087DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_1008088CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473048;
  a2[1] = v2;
  return result;
}

void sub_1008088F8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v14 = *(a2 + 960);
  v15 = *(a2 + 976);
  *(a2 + 960) = 0u;
  *(a2 + 976) = 0;
  v16 = *(a2 + 984);
  v17 = *(a2 + 1000);
  *(a2 + 984) = 0u;
  *(a2 + 1000) = 0;
  *(v25 + 12) = *(a2 + 1132);
  v25[0] = *(a2 + 1120);
  v24 = *(a2 + 1104);
  v23 = *(a2 + 1088);
  v22 = *(a2 + 1072);
  v21 = *(a2 + 1056);
  v20 = *(a2 + 1040);
  v4 = *(a2 + 1008);
  v19 = *(a2 + 1024);
  v18 = v4;
  v26 = *(a2 + 1152);
  v27 = *(a2 + 1168);
  v5 = *(a2 + 1176);
  *(a2 + 1176) = 0;
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0u;
  __p = v5;
  v29 = *(a2 + 1192);
  *(a2 + 1192) = 0;
  *(a2 + 1184) = 0;
  v30 = *(a2 + 1200);
  v31 = *(a2 + 1216);
  v32 = *(a2 + 1232);
  v6 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v70) = 2082;
    *(&v70 + 2) = "";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,fEmergencyAWD CB}", buf, 0x12u);
  }

  v66 = xmmword_101CE6D38;
  v67 = xmmword_101CE6D48;
  memset(v68, 0, 28);
  v62 = xmmword_101CE6CF8;
  v63 = xmmword_101CE6D08;
  v64 = xmmword_101CE6D18;
  v65 = xmmword_101CE6D28;
  v60 = xmmword_101CE6CD8;
  v61 = xmmword_101CE6CE8;
  v57 = xmmword_101CE6D38;
  v58 = xmmword_101CE6D48;
  memset(v59, 0, 28);
  v53 = xmmword_101CE6CF8;
  v54 = xmmword_101CE6D08;
  v55 = xmmword_101CE6D18;
  v56 = xmmword_101CE6D28;
  v51 = xmmword_101CE6CD8;
  v52 = xmmword_101CE6CE8;
  v48 = xmmword_101CE6D38;
  v49 = xmmword_101CE6D48;
  memset(v50, 0, 28);
  v44 = xmmword_101CE6CF8;
  v45 = xmmword_101CE6D08;
  v46 = xmmword_101CE6D18;
  v47 = xmmword_101CE6D28;
  v42 = xmmword_101CE6CD8;
  v43 = xmmword_101CE6CE8;
  v39 = xmmword_101CE6D38;
  v40 = xmmword_101CE6D48;
  memset(v41, 0, 28);
  v35 = xmmword_101CE6CF8;
  v36 = xmmword_101CE6D08;
  v37 = xmmword_101CE6D18;
  v38 = xmmword_101CE6D28;
  v33 = xmmword_101CE6CD8;
  v34 = xmmword_101CE6CE8;
  v8 = *(v6 + 992);
  if (v8)
  {
    sub_100E12FB0(v8, buf);
    v66 = v76;
    v67 = v77;
    v68[0] = *v78;
    *(v68 + 12) = *&v78[3];
    v62 = v72;
    v63 = v73;
    v64 = v74;
    v65 = v75;
    v60 = v70;
    v61 = v71;
    v57 = *&v78[31];
    v58 = *&v78[35];
    v59[0] = *v79;
    *(v59 + 12) = *&v79[3];
    v53 = *&v78[15];
    v54 = *&v78[19];
    v55 = *&v78[23];
    v56 = *&v78[27];
    v51 = *&v78[7];
    v52 = *&v78[11];
    v48 = *&v79[31];
    v49 = *&v79[35];
    v50[0] = *v80;
    *(v50 + 12) = *&v80[3];
    v44 = *&v79[15];
    v45 = *&v79[19];
    v46 = *&v79[23];
    v47 = *&v79[27];
    v9 = buf[0];
    v10 = *buf & 0xFFFFFFFF00000000;
    v42 = *&v79[7];
    v43 = *&v79[11];
    v39 = *&v80[31];
    v40 = *&v80[35];
    v41[0] = *v81;
    *(v41 + 12) = *&v81[12];
    v35 = *&v80[15];
    v36 = *&v80[19];
    v37 = *&v80[23];
    v38 = *&v80[27];
    v11 = *buf & 0xFFFF00;
    v12 = *buf >> 24;
    v33 = *&v80[7];
    v34 = *&v80[11];
  }

  else
  {
    v11 = 0;
    v10 = 0;
    LOBYTE(v12) = 0;
    v9 = 0;
  }

  *(&__dst[17] + 1) = v10 | (v12 << 24) | v11 | v9;
  *(&__dst[26] + 12) = *(v68 + 12);
  __dst[24] = v66;
  __dst[25] = v67;
  __dst[20] = v62;
  __dst[21] = v63;
  __dst[22] = v64;
  __dst[23] = v65;
  __dst[18] = v60;
  __dst[19] = v61;
  *(&__dst[33] + 12) = v57;
  *(&__dst[34] + 12) = v58;
  *(&__dst[35] + 12) = v59[0];
  *(&__dst[36] + 8) = *(v59 + 12);
  *(&__dst[29] + 12) = v53;
  *(&__dst[30] + 12) = v54;
  *(&__dst[31] + 12) = v55;
  *(&__dst[32] + 12) = v56;
  *(&__dst[27] + 12) = v51;
  *(&__dst[28] + 12) = v52;
  *(&__dst[43] + 8) = v48;
  *(&__dst[44] + 8) = v49;
  *(&__dst[45] + 8) = v50[0];
  *(&__dst[46] + 4) = *(v50 + 12);
  *(&__dst[39] + 8) = v44;
  *(&__dst[40] + 8) = v45;
  *(&__dst[41] + 8) = v46;
  *(&__dst[42] + 8) = v47;
  *(&__dst[37] + 8) = v42;
  *(&__dst[38] + 8) = v43;
  *(&__dst[53] + 4) = v39;
  *(&__dst[54] + 4) = v40;
  *(&__dst[55] + 4) = v41[0];
  *(&__dst[49] + 4) = v35;
  *(&__dst[50] + 4) = v36;
  *(&__dst[51] + 4) = v37;
  *(&__dst[52] + 4) = v38;
  *(&__dst[47] + 4) = v33;
  *(&__dst[48] + 4) = v34;
  __dst[26] = v68[0];
  __dst[56] = *(v41 + 12);
  if (sub_1001C5490())
  {
    BYTE8(__dst[9]) = *(v6 + 1248);
    if (v9)
    {
      BYTE9(__dst[9]) = v12;
    }
  }

  sub_1016AA218(*(v6 + 1128), __dst);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }
}

uint64_t sub_100808EA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100808EEC(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100809144(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1008091D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 960);
  v3 = *(a2 + 983);
  v4 = *(a2 + 984);
  *(a2 + 960) = 0u;
  *(a2 + 976) = 0u;
  v5 = *(a2 + 1007);
  *(a2 + 992) = 0u;
  v6 = *(a2 + 1152);
  v7 = *(a2 + 1175);
  *(a2 + 1152) = 0;
  *(a2 + 1160) = 0u;
  v8 = *(a2 + 1176);
  v9 = *(a2 + 1199);
  *(a2 + 1192) = 0;
  *(a2 + 1176) = 0u;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289026;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,#Warning, Emergency AWD is disabled in simulator/conformance mode}", v11, 0x12u);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v8);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v6);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v2);
    return;
  }

LABEL_12:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_13;
  }
}

uint64_t sub_10080934C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100809398(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1008095F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10080966C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473158;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008096A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008096EC(uint64_t a1, uint64_t a2)
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

void *sub_100809784(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1008099DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1008099E8(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      sub_100809A6C(a1, v4, a2);
      a2 += 10;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100809A6C(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1005A4918(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_100809B00();
  }

  return v3;
}

uint64_t sub_100809B80(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001C5560(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100809BCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100809BCC(a1, *a2);
    sub_100809BCC(a1, a2[1]);
    sub_1001C5560((a2 + 5));

    operator delete(a2);
  }
}

uint64_t sub_100809C98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024731E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100809CC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100809D10(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100809E00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473278;
  a2[1] = v2;
  return result;
}

uint64_t sub_100809E2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100809EE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473308;
  a2[1] = v2;
  return result;
}

void sub_100809F14(uint64_t a1, int *a2)
{
  v2 = *(*(a1 + 8) + 848);
  if (v2)
  {
    sub_1016DAF30(v2, *a2);
  }
}

uint64_t sub_100809F2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100809F78(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080A068(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473398;
  a2[1] = v2;
  return result;
}

void sub_10080A094(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v3 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FF918(v3);
  if (v2)
  {
    sub_100008080(v2);

    sub_100008080(v2);
  }
}

void sub_10080A0FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080A11C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080A168(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080A1E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080A280(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080A318(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080A420(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473428;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080A44C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080A498(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080A588(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024734B8;
  a2[1] = v2;
  return result;
}

__n128 sub_10080A5B4(uint64_t a1, _OWORD *a2)
{
  v2 = a2[7];
  v7[6] = a2[6];
  v7[7] = v2;
  v7[8] = a2[8];
  v3 = a2[3];
  v7[2] = a2[2];
  v7[3] = v3;
  v4 = a2[5];
  v7[4] = a2[4];
  v7[5] = v4;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  sub_10013582C(*(a1 + 8), v7);
  return result;
}

uint64_t sub_10080A604(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10080A650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t *sub_10080A6BC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_10080A744(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080A7F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024735A8;
  a2[1] = v2;
  return result;
}

void sub_10080A820(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v15 = 136446210;
      v16 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v18 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class,assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v15 = 136446210;
        v16 = v7;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

LABEL_23:
  v14[0] = v3;
  v14[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FF9C0(v4, v14);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080ABBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080AC08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080ACF8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473638;
  a2[1] = v2;
  return result;
}

void sub_10080AD24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v15 = 136446210;
      v16 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v18 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class for assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v15 = 136446210;
        v16 = v7;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

LABEL_23:
  v14[0] = v3;
  v14[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FFBB8(v4, v14);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080B0C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080B180(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024736B8;
  sub_10080B25C((a1 + 24), a2, a3);
  return a1;
}

void sub_10080B1FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024736B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_10080B25C(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_10080B2D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080B364(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473708;
  a2[1] = v2;
  return result;
}

void sub_10080B390(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v15 = 136446210;
      v16 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v18 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class for assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v15 = 136446210;
        v16 = v7;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

LABEL_23:
  v14[0] = v3;
  v14[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FFDB0(v4, v14);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080B72C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080B7E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473788;
  a2[1] = v2;
  return result;
}

void sub_10080B814(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v15 = 136446210;
      v16 = v11;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v18 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class for assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v15 = 136446210;
        v16 = v7;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

LABEL_23:
  v14[0] = v3;
  v14[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FFEB8(v4, v14);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080BBB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080BC6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473808;
  a2[1] = v2;
  return result;
}

void sub_10080BC98(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_23;
  }

  if ((*(v3 + 47) & 0x8000000000000000) != 0)
  {
    if (!*(v3 + 32))
    {
      goto LABEL_23;
    }
  }

  else if (!*(v3 + 47))
  {
    goto LABEL_23;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v6 = *v6;
    }

    *buf = 136446210;
    v14 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v7 = (v3 + 24);
  v8 = (v3 + 24);
  if (*(v3 + 47) < 0)
  {
    v8 = *v7;
  }

  if ((sub_1004E915C(v8, 4) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v10 = *v7;
      }

      *buf = 136446210;
      v14 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class,assistance file,%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

LABEL_23:
  sub_1008000B0(v4);
  if (v2)
  {
    sub_100008080(v2);
  }
}

uint64_t sub_10080C000(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C0BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473888;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C1A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473918;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C1DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C228(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080C318(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473998;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C344(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C390(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080C480(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473A28;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C4AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C4F8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080C5E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473AA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C61C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C668(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080C758(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473B38;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C784(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C840(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473BC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C86C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "injectassistancepedometerspeed";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  return (*(**v3 + 88))(*v3, a2);
}

uint64_t sub_10080C980(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C9CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080CABC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473C58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080CAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "injectassistancepedometerspeedconstraint";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  return (*(**v3 + 96))(*v3, a2);
}

uint64_t sub_10080CBFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CC48(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080CCC8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080CD60(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080CE68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473CE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080CE94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CF50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473D78;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080CF7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CFC8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080D048(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080D138(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473E08;
  a2[1] = v2;
  return result;
}

void sub_10080D164(uint64_t a1, int *a2, void *__src)
{
  v4 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1008002E4(*(a1 + 8), v4, __dst);
}

uint64_t sub_10080D1B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D204(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080D2F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473E98;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080D32C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D378(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080D468(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473F28;
  a2[1] = v2;
  return result;
}

void sub_10080D494(uint64_t a1, unsigned int *a2, int **a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*v4)
  {
    *(*v4 + 472) = v3;
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      do
      {
        v7 = *v5++;
        v10 = v7;
        v8 = *v4;
        v11 = &v10;
        v9 = sub_1003E3DEC(v8 + 64, &v10);
        ++v9[5];
      }

      while (v5 != v6);
    }
  }

  sub_10080191C(v4, v3);
}

uint64_t sub_10080D53C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D588(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10080D678(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473FB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080D6B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D6FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_10080D77C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_10080D9B0();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10080D99C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10080DE38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080DE38(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100805DF4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_10080DE84(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_10080E0B8();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10080E0A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10080DE38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080E2CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080E388(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024740C8;
  a2[1] = v2;
  return result;
}

void sub_10080E3B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1007FDF94(v1);
  v2 = *(v1 + 1040);
  if (v2)
  {
    sub_100746294(v2);
  }

  v3 = *(v1 + 1008);
  if (v3)
  {
    sub_100AE3520(v3);
  }

  v4 = *(v1 + 1056);
  if (v4)
  {
    sub_1016FF060(v4);
  }

  v5 = *(v1 + 1032);
  if (v5)
  {
    sub_10131F5B0(v5);
  }

  v6 = *(v1 + 1016);
  if (v6)
  {
    sub_1009B8B64(v6);
  }

  if (*(v1 + 1104) && *(v1 + 1220) == 1)
  {
    sub_100800C1C(v1 + 816);
    sub_100800B68(v1 + 800);
    *(v1 + 1220) = 0;
  }

  sub_1007FDF08(v1);
}

uint64_t sub_10080E454(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080E510(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102474148;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080E544(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080E600(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024741C8;
  a2[1] = v2;
  return result;
}

void sub_10080E62C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1007FDF94(v1);

  sub_1007FDF08(v1);
}

uint64_t sub_10080E668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10080E6CC(uint64_t a1)
{
  sub_10080E704(a1);

  operator delete();
}

uint64_t sub_10080E704(uint64_t a1)
{
  *a1 = off_102474248;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  return sub_1017E7D44(a1);
}

void sub_10080E79C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_1025019A0;
  *a1 = off_1024742C0;
  a1[1] = 0;
  v8 = a2;
  a1[5] = 0;
  a1[2] = v8;
  a1[3] = a3;
  a1[4] = a5;
  a1[6] = 0;
  operator new[]();
}

void sub_10080E92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  sub_1017E7D44(v11);
  _Unwind_Resume(a1);
}

void sub_10080E96C(uint64_t a1)
{
  sub_10080E9A4(a1);

  operator delete();
}

uint64_t sub_10080E9A4(uint64_t a1)
{
  *a1 = off_1024742C0;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  return sub_1017E7D44(a1);
}

uint64_t *sub_10080EA4C(uint64_t a1, int *a2)
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

uint64_t sub_10080EC04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102474310;
  a2[1] = v2;
  return result;
}

void sub_10080EC30(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v6[0] = *a2;
  v6[1] = v2;
  *a2 = 0;
  a2[1] = 0;
  v3 = *(a1 + 8);
  if (sub_100804B08(v3, v6))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "knownACFile,calling modifyKnownACDownloader as source url has changed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v7 = 0;
      v5 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::modifyKnownACDownloader()::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    sub_1008047F4(v3);
  }

  if (v2)
  {
    sub_100008080(v2);
  }
}

uint64_t sub_10080EDDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10080EE34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void sub_10080EE4C(void *a1, NSObject *a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

void sub_10080EE64()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_10080EF28()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_10080EFE0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CA7C40;
      v0[3] = unk_101CA7C50;
      v0[4] = xmmword_101CA7C60;
      v0[0] = xmmword_101CA7C20;
      v0[1] = unk_101CA7C30;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10080F0D8()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10080F150()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10080F1C8()
{
  sub_10000EC00(byte_10265A318, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_10265A318, dword_100000000);
  qword_10265A330 = off_102472CC8;
  qword_10265A348 = &qword_10265A330;
  __cxa_atexit(sub_1003EE78C, &qword_10265A330, dword_100000000);
  qword_10265A350 = off_102472D48;
  qword_10265A368 = &qword_10265A350;
  __cxa_atexit(sub_1003EE78C, &qword_10265A350, dword_100000000);
  qword_10265A370 = off_102472DC8;
  qword_10265A388 = &qword_10265A370;
  __cxa_atexit(sub_1003EE790, &qword_10265A370, dword_100000000);
  qword_10265A390 = off_102472E48;
  qword_10265A3A8 = &qword_10265A390;
  return __cxa_atexit(sub_1003EE790, &qword_10265A390, dword_100000000);
}

uint64_t sub_10080F310(uint64_t a1, double a2, double a3)
{
  *a1 = a3;
  *(a1 + 8) = 0xFFF0000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  sub_10116B808(a1 + 208);
  v5 = 70.0;
  if (a2 != -1.0)
  {
    v5 = a2;
  }

  *(a1 + 40) = v5;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 64) = vdupq_n_s64(0xFFF0000000000000);
  *(a1 + 32) = a2 != -1.0;
  *(a1 + 36) = 2;
  *(a1 + 80) = 0x7FF0000000000000;
  v6 = *(a1 + 80);
  *(a1 + 128) = *(a1 + 64);
  *(a1 + 144) = v6;
  v7 = *(a1 + 48);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 112) = v7;
  return a1;
}

void sub_10080F3DC(double *a1, uint64_t a2, void *a3)
{
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v6 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    *buf = 134218496;
    v43 = v7;
    v44 = 2048;
    *v45 = v8;
    *&v45[8] = 1024;
    *v46 = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "onHRCatherineData-catherine,%.0f,confidence,%.6f,error,%d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948768(a2);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (sub_10116B934(a1 + 52, a2, a1 + 5, a1 + 16))
  {
    for (i = *(a1 + 25); i; i = *(a1 + 25))
    {
      *v49 = 0u;
      memset(v48, 0, sizeof(v48));
      sub_10080FC6C(a1, a2, v48);
      ++*(a1 + 24);
      *(a1 + 25) = i - 1;
      sub_1000A2BE8((a1 + 20), 1);
      sub_10052CF28(a3, v48);
      if (qword_1025D43A0 != -1)
      {
        sub_101948884();
      }

      v12 = qword_1025D43A8;
      if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
      {
        *buf = 134219008;
        v43 = *(&v48[0] + 1);
        v44 = 1024;
        *v45 = v48[0];
        *&v45[4] = 1024;
        *&v45[6] = DWORD1(v48[0]);
        *v46 = 2048;
        *&v46[2] = v49[0];
        LOWORD(v47[0]) = 2048;
        *(v47 + 2) = *(&v48[2] + 1);
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43A0 != -1)
        {
          sub_101948884();
        }

        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::onHLCatherineData(const CLCatherineData &, CatherineQueue &)", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }

    sub_10052CF28(a3, a2);
    v20 = a3[5] + a3[4] - 1;
    v21 = *(a3[1] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v20 & 0x3F) << 6);
    *(v21 + 48) = 0;
    *(v21 + 4) = 2;
    if (qword_1025D43A0 != -1)
    {
      sub_101948884();
    }

    v22 = qword_1025D43A8;
    if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
    {
      v23 = *(v21 + 8);
      v24 = *v21;
      v25 = *(v21 + 4);
      v27 = *(v21 + 40);
      v26 = *(v21 + 48);
      *buf = 134219008;
      v43 = v23;
      v44 = 1024;
      *v45 = v24;
      *&v45[4] = 1024;
      *&v45[6] = v25;
      *v46 = 2048;
      *&v46[2] = v26;
      LOWORD(v47[0]) = 2048;
      *(v47 + 2) = v27;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43A0 != -1)
      {
        sub_101948884();
      }

      v36 = *(v21 + 8);
      v37 = *v21;
      v38 = *(v21 + 4);
      v40 = *(v21 + 40);
      v39 = *(v21 + 48);
      LODWORD(v48[0]) = 134219008;
      *(v48 + 4) = v36;
      WORD6(v48[0]) = 1024;
      *(v48 + 14) = v37;
      WORD1(v48[1]) = 1024;
      DWORD1(v48[1]) = v38;
      WORD4(v48[1]) = 2048;
      *(&v48[1] + 10) = v39;
      WORD1(v48[2]) = 2048;
      *(&v48[2] + 4) = v40;
      v41 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::onHLCatherineData(const CLCatherineData &, CatherineQueue &)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    a1[1] = Current;
    v29 = *a2;
    v28 = *(a2 + 16);
    v30 = *(a2 + 48);
    *(a1 + 8) = *(a2 + 32);
    *(a1 + 9) = v30;
    *(a1 + 6) = v29;
    *(a1 + 7) = v28;
    a1[18] = 0.0;
    *(a1 + 25) = 2;
    if (qword_1025D43A0 != -1)
    {
      sub_101948884();
    }

    v31 = qword_1025D43A8;
    if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
    {
      v32 = *(a1 + 13);
      v33 = *(a1 + 16);
      v34 = *(a1 + 17);
      v35 = *(a1 + 24);
      *buf = 134218752;
      v43 = v32;
      v44 = 2048;
      *v45 = v33;
      *&v45[8] = 2048;
      *v46 = v34;
      *&v46[8] = 1024;
      v47[0] = v35;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "lastGoodCatherine,catherine,%.0f,startTime,%.6f,startTime,%.6f,dataSource,%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019489AC(a1, a1 + 12);
    }
  }

  else
  {
    sub_1000A2B60(a1 + 20, (a2 + 40));
    if (Current > a1[1] + *a1)
    {
      if (qword_1025D43A0 != -1)
      {
        sub_101948884();
      }

      v14 = qword_1025D43A8;
      if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 25);
        *buf = 134217984;
        v43 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Timeout exceded, notifying clients with %lu catherine samples", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019488AC(a1);
      }

      while (*(a1 + 25))
      {
        *(v48 + 1) = a1[13];
        *&v48[0] = *(a1 + 24);
        v16 = *(*(*(a1 + 21) + ((*(a1 + 24) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (a1[24] & 0x1FFLL));
        *&v48[2] = v16 + *(a2 + 32) - *(a2 + 40);
        *(&v48[2] + 1) = v16;
        v49[0] = v16 - a1[17] + a1[18];
        if (*a1 == 65.0)
        {
          v17 = *(a1 + 14);
        }

        else
        {
          v17 = 0;
        }

        *&v48[1] = v17;
        sub_10052CF28(a3, v48);
        *(a1 + 12) = vaddq_s64(*(a1 + 24), xmmword_101C66230);
        sub_1000A2BE8((a1 + 20), 1);
        if (qword_1025D43A0 != -1)
        {
          sub_101948884();
        }

        v18 = qword_1025D43A8;
        if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
        {
          *buf = 134219008;
          v43 = *(&v48[0] + 1);
          v44 = 1024;
          *v45 = v48[0];
          *&v45[4] = 1024;
          *&v45[6] = DWORD1(v48[0]);
          *v46 = 2048;
          *&v46[2] = v49[0];
          LOWORD(v47[0]) = 2048;
          *(v47 + 2) = *(&v48[2] + 1);
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", buf, 0x2Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43A0 != -1)
          {
            sub_101948884();
          }

          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::onHLCatherineData(const CLCatherineData &, CatherineQueue &)", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }
    }
  }
}

uint64_t sub_10080FC6C@<X0>(uint64_t result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(*(result + 168) + ((*(result + 192) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(result + 192) & 0x1FFLL));
  v4 = *(result + 136);
  v5 = *(result + 144);
  v6 = v3 - v4;
  v8 = a2[4];
  v7 = a2[5];
  v9 = (v3 - v4) / (v7 - v4) * a2[1] + (1.0 - (v3 - v4) / (v7 - v4)) * *(result + 104);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  v10 = *(result + 96);
  if (v10 <= *a2)
  {
    v10 = *a2;
  }

  *a3 = v10;
  *(a3 + 4) = 1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0x3FF0000000000000;
  *(a3 + 32) = v3 + v8 - v7;
  *(a3 + 40) = v3;
  *(a3 + 48) = v6 + v5;
  return result;
}

void sub_10080FD00(uint64_t a1, int a2)
{
  *(a1 + 16) = 1;
  v4 = sub_1000137E0();
  *(a1 + 24) = v4;
  *(a1 + 20) = a2;
  v5 = *(a1 + 40);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 104) = v5;
  *(a1 + 128) = v4;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  *(a1 + 144) = 0x7FF0000000000000;
  sub_10116BDEC(a1 + 208);
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v6 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 20);
    v8 = *(a1 + 104);
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    v11 = *(a1 + 96);
    v12 = *(a1 + 100);
    v13 = *(a1 + 144);
    *buf = 67110656;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = v10;
    v23 = 1024;
    v24 = v11;
    v25 = 1024;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "sessionType,%d,lastGoodCatherine,%.0f,timestamp,%.6f,startTime,%.6f,dataSource,%d,interpolation,%d,staleness=%.6f", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43A0 != -1)
    {
      sub_101948884();
    }

    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::startSession(const CLMotionActivity::Type)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }
}

void sub_10080FF60(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  v3 = *(a1 + 40);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 104) = v3;
  *(a1 + 128) = 0;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  *(a1 + 144) = 0x7FF0000000000000;
  sub_10116BE20(a1 + 208);
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v4 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLCatherineInterpolator stopped session type %d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948AD8(v2);
  }
}

void *sub_100810CCC(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_100810E2C(a1, "SmoothedGaitMetricsHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102474478;
  a1[9] = off_102474540;
  a1[46] = off_102474590;
  sub_100DD42E4(a1 + 47, 0, 0);
  sub_100DD42E4(a1 + 49, 0, 0);
  sub_100DD42E4(a1 + 51, 0, 0);
  sub_100DD42E4(a1 + 53, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_100810E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100810E2C(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102450C98;
  sub_1003FFA38((a1 + 8));
  *v12 = &off_102450CC8;
  *a1 = off_102474848;
  *(a1 + 72) = off_1024748F0;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_102474848;
  *(a1 + 72) = off_1024748F0;
  *(a1 + 176) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 12000;
  *(a1 + 280) = off_102450C98;
  sub_1003FFA38((a1 + 288));
  *(a1 + 288) = &off_102450CC8;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((a3 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_100811214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1017EC98C(&a21);
  *a13 = a12;
  sub_1003FFCFC(v31);
  sub_1007D4B7C(v30);
  sub_1010532A4(v29);
  *v27 = a14;
  sub_1003FFCFC(v28);
  _Unwind_Resume(a1);
}

void *sub_1008112BC(void *a1)
{
  *a1 = off_102474848;
  v2 = (a1 + 9);
  a1[9] = off_1024748F0;
  sub_10081713C(a1, 0, 0);
  a1[35] = off_102450C98;
  sub_1003FFCFC(a1 + 36);
  sub_1007D4B7C(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102450C98;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1008113A0(void *a1)
{
  sub_1008112BC(a1);

  operator delete();
}

void sub_1008113D8(uint64_t a1)
{
  sub_1008112BC((a1 - 72));

  operator delete();
}

void sub_100811414(uint64_t a1)
{
  sub_1008112BC((a1 - 368));

  operator delete();
}

uint64_t sub_100811450(uint64_t *a1)
{
  result = sub_100023B68(a1[10]);
  if (result)
  {
    sub_100811500(a1);
    sub_100811618(a1);
    sub_100608EC8(a1[10], "SmoothedGaitMetricsHistory", &off_102474638, &off_1025D8750, 0);
    a1[47] = sub_100614C1C(a1[10], "DELETE FROM SmoothedGaitMetricsHistory WHERE startTime < ?");
    a1[48] = v3;
    a1[49] = sub_100614C1C(a1[10], "SELECT * from SmoothedGaitMetricsHistory ORDER BY startTime ASC");
    a1[50] = v4;
    a1[51] = sub_100614C1C(a1[10], "SELECT COUNT(*) FROM SmoothedGaitMetricsHistory");
    a1[52] = v5;
    result = sub_100614C1C(a1[10], "INSERT INTO SmoothedGaitMetricsHistory (startTime, walkingSpeed, stepLength, cycleTime, distance, doubleSupportPercentage, asymmetryProbability, numGaitMetrics \t\t\t\t) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    a1[53] = result;
    a1[54] = v6;
  }

  return result;
}

BOOL sub_100811500(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "SmoothedGaitMetricsHistory");
  if (result)
  {
    v3 = "numGaitMetrics";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "SmoothedGaitMetricsHistory", "numGaitMetrics", &v3);
  }

  return result;
}

BOOL sub_100811618(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "SmoothedGaitMetricsHistory");
  if (result)
  {
    v3 = "numGaitMetrics";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "SmoothedGaitMetricsHistory", "numGaitMetrics", &v3);
  }

  return result;
}

void sub_100811AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a17);
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  sub_10026C504(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_100811B9C(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 424), &v17);
    if (v17)
    {
      v5 = sub_100008880(v17);
      if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
      {
        v6 = sub_100008880(v17);
        if (sub_1001A3BD4(v6, 2, *(a2 + 16)))
        {
          v7 = sub_100008880(v17);
          if (sub_1001A3BD4(v7, 3, *(a2 + 24)))
          {
            v8 = sub_100008880(v17);
            if (sub_1001A3BD4(v8, 4, *(a2 + 36)))
            {
              v9 = sub_100008880(v17);
              if (sub_1001A3BD4(v9, 5, *(a2 + 32)))
              {
                v10 = sub_100008880(v17);
                if (sub_1001A3BD4(v10, 6, *(a2 + 20)))
                {
                  v11 = sub_100008880(v17);
                  if (sub_1001A3BD4(v11, 7, *(a2 + 28)))
                  {
                    v12 = sub_100008880(v17);
                    if (sub_1001452C8(v12, 8, *(a2 + 40)))
                    {
                      v13 = *(a1 + 80);
                      v14 = sub_100008880(v17);
                      sub_1001A3DEC(v13, v14);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (qword_1025D4420 != -1)
      {
        sub_101948D40();
      }

      v15 = qword_1025D4428;
      if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "[SmoothedGaitMetricsRecorderDb] Invalid SQL statement", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101948E5C(buf);
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLMobility::SmoothedGaitMetricsRecorderDb::insertRecordUL(const SmoothedGaitMetrics &, BOOL)", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    result = v17;
    v17 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100811E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100811E7C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[111] < 0)
  {
    return sub_100007244(a2, *(result + 11), *(result + 12));
  }

  *a2 = *(result + 88);
  *(a2 + 16) = *(result + 13);
  return result;
}

char *sub_100811EA4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[39] < 0)
  {
    return sub_100007244(a2, *(result + 2), *(result + 3));
  }

  *a2 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  return result;
}

uint64_t sub_100811ECC(uint64_t a1, char *a2)
{
  if (!sub_10060A9FC(*(a1 + 80), a2))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101948EA0();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Notice %{public}s needs autoincrement migration", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101948EB4(a2);
    }

    __p = 0;
    v26 = 0uLL;
    sub_10000EC00(buf, a2);
    v5 = std::string::append(buf, "AutoIncr", 8uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24 = v5->__r_.__value_.__r.__words[2];
    v23 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_10000EC00(buf, a2);
    v7 = std::string::append(buf, "Index", 5uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22 = v7->__r_.__value_.__r.__words[2];
    *v21 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_100144A84(*(a1 + 80));
    if (v26 >= 0)
    {
      v9 = HIBYTE(v26);
    }

    else
    {
      v9 = v26;
    }

    v10 = buf;
    sub_100070148(buf, v9 + 21);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(v10, p_p, v9);
    }

    strcpy(v10 + v9, "DROP TABLE IF EXISTS ");
    if (v24 >= 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23;
    }

    if (v24 >= 0)
    {
      v13 = HIBYTE(v24);
    }

    else
    {
      v13 = *(&v23 + 1);
    }

    v14 = std::string::append(buf, v12, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    v28.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
    *(v28.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *&v26 = v28.__r_.__value_.__r.__words[0];
    *(&v26 + 7) = *(v28.__r_.__value_.__r.__words + 7);
    HIBYTE(v26) = v16;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
      v16 = HIBYTE(v26);
      v15 = __p;
    }

    if (v16 >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = v15;
    }

    sub_1000388D8(*(a1 + 80), v17);
  }

  v18 = *(a1 + 80);
  if (*(v18 + 88) <= 0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = *(v18 + 88);
  }

  sub_1001B16EC(v18, v19);
  return 0;
}

void sub_100812FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100813290(void *a1)
{
  if (sub_100099160(a1 + 9))
  {
    if (sub_100099160(a1 + 9))
    {
      sub_10003848C(buf);
      v2 = sub_100038730(&v13, "SELECT * FROM ", 14);
      (*(*a1 + 64))(__p, a1);
      if ((v11 & 0x80u) == 0)
      {
        v3 = __p;
      }

      else
      {
        v3 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v4 = v11;
      }

      else
      {
        v4 = __p[1];
      }

      v5 = sub_100038730(v2, v3, v4);
      sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY startTime ASC", 62);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = a1[10];
      sub_100073518(buf, __p);
      if ((v11 & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      sub_1000388D8(v6, v7);
    }

    return 100;
  }

  else
  {
    if (qword_1025D4420 != -1)
    {
      sub_101948FCC();
    }

    v8 = qword_1025D4428;
    if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "SmoothedGaitMetricsHistory not accessible", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101948FE0();
    }

    return 109;
  }
}

void sub_100813700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10081377C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  sub_1008137F0(a1, a2);
  return 0;
}

uint64_t sub_1008137F0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v4, 0);
  v5 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_double(v5, 1);
  v6 = sub_100008880(*a1);
  v7 = sqlite3_column_double(v6, 2);
  *(a2 + 16) = v7;
  v8 = sub_100008880(*a1);
  v9 = sqlite3_column_double(v8, 3);
  *(a2 + 24) = v9;
  v10 = sub_100008880(*a1);
  v11 = sqlite3_column_double(v10, 4);
  *(a2 + 36) = v11;
  v12 = sub_100008880(*a1);
  v13 = sqlite3_column_double(v12, 5);
  *(a2 + 32) = v13;
  v14 = sub_100008880(*a1);
  v15 = sqlite3_column_double(v14, 6);
  *(a2 + 20) = v15;
  v16 = sub_100008880(*a1);
  v17 = sqlite3_column_double(v16, 7);
  *(a2 + 28) = v17;
  v18 = sub_100008880(*a1);
  result = sqlite3_column_int(v18, 8);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1008138E0(void *a1, _OWORD *a2)
{
  v5 = a1 + 14;
  v4 = a1[14];
  v6 = a1 + 9;
  v18 = a1 + 14;
  (*(v4 + 16))(a1 + 14);
  v19 = 256;
  if (sub_100099160(v6))
  {
    LODWORD(v17[0]) = 0;
    memset(v17 + 8, 0, 36);
    v7 = (*(*a1 + 104))(a1, v17);
    if (v7)
    {
      if (v7 == 1)
      {
        if (qword_1025D4420 != -1)
        {
          sub_101948D40();
        }

        v11 = qword_1025D4428;
        if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: No recent records in database", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_29;
        }

        sub_101948E5C(buf);
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v12);
      }

      else
      {
        if (v7 == 2)
        {
          if (qword_1025D4420 != -1)
          {
            sub_101948D40();
          }

          v8 = qword_1025D4428;
          if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: Query error", buf, 2u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (qword_1025D4420 != -1)
          {
            sub_101948D40();
          }

          v14 = qword_1025D4428;
          if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: unexpected return type", buf, 2u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_29;
          }
        }

        sub_101948E5C(buf);
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v12);
      }

      if (v12 != buf)
      {
        free(v12);
      }
    }

    else
    {
      v13 = v17[1];
      *a2 = v17[0];
      a2[1] = v13;
      *(a2 + 28) = *(&v17[1] + 12);
    }

LABEL_29:
    v10 = 100;
    goto LABEL_30;
  }

  if (qword_1025D4420 != -1)
  {
    sub_101948FCC();
  }

  v9 = qword_1025D4428;
  if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "[SmoothedGaitMetricsHistory] Database inaccessible, unable to query", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948E5C(buf);
    LOWORD(v17[0]) = 0;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v10 = 109;
LABEL_30:
  (*(*v5 + 24))(v5);
  return v10;
}

void sub_100813DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100813E38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  (*(*a1 + 120))(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_100813F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100813F24(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 8) - 16) != 1.79769313e308 || !sub_100099160(a1 + 9))
  {
    return -1;
  }

  sub_100144A84(a1[10]);
  Current = CFAbsoluteTimeGetCurrent();
  sub_100144CA0(a1 + 47, &v13);
  v5 = sub_100008880(v13);
  if (sub_1001A3BD4(v5, 1, Current - *(*(a2 + 8) - 24)))
  {
    v6 = a1[10];
    v7 = sub_100008880(v13);
    sub_1001A3DEC(v6, v7);
    v8 = (*(*a1 + 152))(a1);
  }

  else
  {
    v8 = -1;
  }

  sub_1001454E0(a1[10]);
  v9 = a1[10];
  if (*(v9 + 88) <= 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = *(v9 + 88);
  }

  sub_1001B16EC(v9, v10);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v8;
}

void sub_100814060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100814084(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    *(a2 + 8) = *a2;
    sub_100144CA0((a1 + 392), &v19);
    sub_100144A84(*(a1 + 80));
    *v18 = 0;
    memset(&v18[8], 0, 36);
    while (!sub_10081377C(&v19, v18))
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
        v10 = v9 + 1;
        if (v9 + 1 > 0x555555555555555)
        {
          sub_10028C64C();
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x2AAAAAAAAAAAAAALL)
        {
          v12 = 0x555555555555555;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1008169AC(a2, v12);
        }

        v13 = 48 * v9;
        v14 = *&v18[16];
        *v13 = *v18;
        *(v13 + 16) = v14;
        *(v13 + 32) = *&v18[32];
        v8 = 48 * v9 + 48;
        v15 = *(a2 + 8) - *a2;
        v16 = 48 * v9 - v15;
        memcpy((v13 - v15), *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v8;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        v7 = *&v18[16];
        *v5 = *v18;
        v5[1] = v7;
        v5[2] = *&v18[32];
        v8 = (v5 + 3);
      }

      *(a2 + 8) = v8;
    }

    sub_1001454E0(*(a1 + 80));
    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_10081423C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100814280(uint64_t a1)
{
  if (!sub_100099160(a1 + 72))
  {
    return 0xFFFFFFFFLL;
  }

  sub_100144CA0((a1 + 408), &v8);
  v3 = sub_100008880(v8);
  v4 = sqlite3_step(v3);
  if (v4 == 100)
  {
    v5 = sub_100008880(v8);
    v1 = sqlite3_column_int(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v4 != 100)
  {
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_10081432C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100814374(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v8 = *v16;
  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_1008149D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_100814A60(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_100817388(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_101948EA0();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2082;
    v14 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101948CFC(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::setDatabaseAccessible() [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_100815134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_100815170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

id *sub_100815184(uint64_t a1, __int128 *a2, char a3)
{
  v31[0] = os_transaction_create();
  v31[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v31);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v27 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v6 = (*(*a1 + 104))(a1, &v27);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101948CFC(buf);
        LOWORD(v32) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 1);
    v8 = *&v28;
    v9 = v7 - *&v28;
    if (v7 - *&v28 < 0.0)
    {
      v9 = -(v7 - *&v28);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 1);
        *buf = 134349312;
        v37 = *&v28;
        v38 = 2050;
        v39 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101948CFC(buf);
        v22 = *(a2 + 1);
        v32 = 134349312;
        v33 = *&v28;
        v34 = 2050;
        v35 = v22;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 1);
      v8 = *&v28;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101948CD4();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 1);
          *buf = 134217984;
          v37 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101948CFC(buf);
          v24 = *(a2 + 1);
          v32 = 134217984;
          v33 = v24;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v37 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101948CFC(buf);
        v32 = 134217984;
        v33 = v17;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, &v27, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *a2;
  v20 = a2[1];
  *(a1 + 252) = *(a2 + 28);
  *(a1 + 224) = v19;
  *(a1 + 240) = v20;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v31);
}

void sub_1008158B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1008158E8(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_100815E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100815E9C(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v16[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " SET startTime = startTime + ?", 30);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return result;
}

void sub_1008163BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100816410(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_10081691C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

void sub_1008169AC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100816A04(void *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_100817024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1008170AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_10081713C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_101948EA0();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101949144(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194928C(a1);
    }
  }

  *(a1 + 352) = a2;
  v10 = *(a1 + 360);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 360) = _Block_copy(a3);
  }
}

void sub_100817404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008175B4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100817BE8;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A3C0 != -1)
  {
    dispatch_once(&qword_10265A3C0, block);
  }

  return qword_1026372B8;
}

void sub_100817958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10081798C(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100007244(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v17 = *(a3 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244(v14, *a4, *(a4 + 8));
  }

  else
  {
    *v14 = *a4;
    v15 = *(a4 + 16);
  }

  v7 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_100818040;
  v8[3] = &unk_102474A70;
  v8[4] = a1;
  v13 = a2;
  if (SHIBYTE(v17) < 0)
  {
    sub_100007244(v9, __dst, *(&__dst + 1));
  }

  else
  {
    *v9 = __dst;
    v10 = v17;
  }

  if (SHIBYTE(v15) < 0)
  {
    sub_100007244(__p, v14[0], v14[1]);
  }

  else
  {
    *__p = *v14;
    v12 = v15;
  }

  [v7 async:v8];
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }
}

void sub_100817B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100817C58(uint64_t a1, void *a2)
{
  v3 = sub_100817D4C(a1, "CLBacklightStateNotifier", a2);
  *v3 = off_1024749A0;
  v3[14] = 0;
  *(a1 + 112) = [[CLBacklightStateNotifierAdapter alloc] initWithCLBacklightStateNotifier:a1];
  v4 = [+[BLSBacklight sharedBacklight](BLSBacklight "sharedBacklight")];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100818264;
  v7[3] = &unk_102460CC8;
  v7[4] = a1;
  v8 = v4;
  [v5 async:v7];
  return a1;
}

uint64_t sub_100817D4C(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102474B78;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100817DDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100817DF8(uint64_t a1)
{
  *a1 = off_102474B78;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100817E7C(uint64_t a1)
{
  *a1 = off_1024749A0;
  *(a1 + 108) = 1;

  *(a1 + 112) = 0;

  return sub_100817DF8(a1);
}

void sub_100817EE8(uint64_t a1)
{
  sub_100817E7C(a1);

  operator delete();
}

void sub_100817F20(uint64_t a1)
{
  *(a1 + 108) = 1;

  *(a1 + 112) = 0;
}

void sub_100818040(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  if (sub_10000608C(v2, &v3, 1))
  {
    v9 = 0;
    v3 = *(a1 + 88);
    if (*(a1 + 63) < 0)
    {
      sub_100007244(&v4, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 56);
    }

    if (*(a1 + 87) < 0)
    {
      sub_100007244(&__p, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      __p = *(a1 + 64);
      v7 = *(a1 + 80);
    }

    v8 = 0;
    (*(*v2 + 152))(v2, &v9, &v3, 1, 0xFFFFFFFFLL, 0);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4);
    }
  }
}

void sub_100818150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10081817C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100007244(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_100007244(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_1008181F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_10081820C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_100818264(uint64_t a1)
{
  v2 = *(a1 + 32);
  *buf = 1;
  if (sub_10000608C(v2, buf, 1))
  {
    if (qword_1025D41E0 != -1)
    {
      sub_101949588();
    }

    v3 = qword_1025D41E8;
    if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLBacklightState, didChangeAlwaysOnEnabled, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019495B0();
    }

    v5 = 1;
    *buf = 0;
    *v8 = 0u;
    *__p = 0u;
    v10 = 0u;
    v11 = *(a1 + 40);
    (*(*v2 + 152))(v2, &v5, buf, 1, 0xFFFFFFFFLL, 0);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1008183E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100819DB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1008183FC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_102474CC8;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_1008185A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1008185D0(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1019496B4();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019496C8(a1, a2);
      }
    }
  }
}

uint64_t sub_100818774(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_10081892C(char *a1, int a2, int *a3, char *a4)
{
  v31 = a2;
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
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 6);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 7) >= v13)
        {
          v17 = v14;
        }

        v14 = *&v14[8 * (*(v14 + 7) < v13)];
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 7))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 8);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 8) >= v13)
        {
          v19 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 8) < v13)];
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 8))
      {
        v29 = v19;
        v26 = *(v19 + 7);
        v27 = *a4;
        *buf = &v31;
        *(sub_100007FA0((v19 + 40), &v31) + 32) = v27;
        *buf = 0;
        *&buf[8] = 0u;
        *__p = 0u;
        v34 = 0u;
        v35 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10081A9B0();
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = (a1 + 56);
        v29 = a1 + 64;
        v21 = byte_1025D8881;
        v28 = v13;
        *buf = &v28;
        *(sub_100024014((a1 + 56), &v28) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_100024014((a1 + 56), &v28);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v24 = *a4;
        v28 = *a3;
        *buf = &v28;
        v25 = sub_100024014(v20, &v28);
        *buf = &v31;
        *(sub_100007FA0((v25 + 5), &v31) + 32) = v24;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410((v30 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1019496B4();
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
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019497C8(a1);
    return 0;
  }

  return result;
}

void sub_100818D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100819DB0(va);
  _Unwind_Resume(a1);
}

BOOL sub_100818D30(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1019496B4();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1019498D0(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100818EC4(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_1019499D0();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1019499D0();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLBacklightStateNotifier_Type::Notification, CLBacklightStateNotifier_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLBacklightStateNotifier_Type::Notification, NotificationData_T = CLBacklightStateNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_100819268(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  *a3 = *v9;
  std::string::operator=((a3 + 8), (v9 + 8));
  std::string::operator=((a3 + 32), (v9 + 32));
  *(a3 + 56) = *(v9 + 56);
  return 1;
}

void sub_1008193A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008193B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *v5 = 0u;
  *__p = 0u;
  v7 = 0u;
  v8 = 0;
  (*(*a1 + 152))(a1, a2, &v4, a3, a4, 0);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10081945C(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      sub_10081A420();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_100819E24();
    }
  }
}

void sub_100819908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_100819934(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019496B4();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101949B14(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019496B4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019499F8(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1019499D0();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1019499D0();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLBacklightStateNotifier_Type::Notification, CLBacklightStateNotifier_Type::NotificationData, char, char>::listClients() [Notification_T = CLBacklightStateNotifier_Type::Notification, NotificationData_T = CLBacklightStateNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_100819CF8(uint64_t a1)
{
  sub_10081A940(a1);

  operator delete();
}

id sub_100819D30(uint64_t a1, int a2, void *a3)
{
  result = sub_10081A6AC(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100819DB0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100819F3C()
{
  if (*(v0 + 31) < 0)
  {
    operator delete(*v1);
  }

  operator delete();
}

void sub_100819F6C(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_10081A6AC(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_10081A328(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1019499D0();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1019499D0();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLBacklightStateNotifier_Type::Notification, CLBacklightStateNotifier_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLBacklightStateNotifier_Type::Notification, NotificationData_T = CLBacklightStateNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_10081A328(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10081A6AC(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10081A48C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102474C58;
  *(a1 + 24) = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 32), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 32) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100007244((a1 + 56), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 72) = *(a2 + 48);
    *(a1 + 56) = v5;
  }

  *(a1 + 80) = *(a2 + 56);
  return a1;
}

void sub_10081A534(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void sub_10081A580(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102474C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10081A5E0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t sub_10081A638(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

id sub_10081A6AC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10081A70C(a1);
}

id sub_10081A70C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101949C20();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CAFE79 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101949C34();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101949C20();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CAFE79 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101949D34();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_10081A940(uint64_t a1)
{
  *a1 = &off_102474CC8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_10081AAC8()
{
  if (*(v0 + 31) < 0)
  {
    operator delete(*v1);
  }

  operator delete();
}

uint64_t sub_10081AAF8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10081AB6C()
{
  result = sub_100177B18();
  if ((result & 0x10) != 0)
  {
    operator new();
  }

  return result;
}

void sub_10081AF70(uint64_t a1, int *a2, _OWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101949E48();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPressure::onBias", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101949E5C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPressure::onBias, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10081B380(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10081B13C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101949E48();
  }

  v7 = os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    v12 = 1;
    v9 = _os_activity_create(dword_100000000, "CL: CLPressure::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v9, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101949E5C();
    }

    v10 = qword_1025D47F8;
    v7 = os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPressure::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  sub_10081BB74(v7, v8, a2, a3);
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}