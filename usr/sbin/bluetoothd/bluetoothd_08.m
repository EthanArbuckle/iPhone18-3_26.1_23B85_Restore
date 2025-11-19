void sub_10008CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v62 = STACK[0x4F0];
  if (STACK[0x4F0])
  {
    STACK[0x4F8] = v62;
    operator delete(v62);
  }

  v63 = STACK[0x5B0];
  if (STACK[0x5B0])
  {
    STACK[0x5B8] = v63;
    operator delete(v63);
  }

  STACK[0x25F0] = &a50;
  sub_10008D02C(&STACK[0x25F0]);
  STACK[0x25F0] = &a53;
  sub_10008D02C(&STACK[0x25F0]);
  STACK[0x25F0] = &a57;
  sub_10008D02C(&STACK[0x25F0]);
  STACK[0x25F0] = &a61;
  sub_10008D02C(&STACK[0x25F0]);
  _Unwind_Resume(a1);
}

const __CFString *sub_10008D004(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xB)
  {
    return @"com.apple.bluetooth.LeBroadcaster.AdvertisingConfigAssertion";
  }

  else
  {
    return off_100AFDA68[a2 - 1];
  }
}

void sub_10008D02C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10008D11C(uint64_t a1, int a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 1048))(v4))
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v6 = "NO";
      if (*(a1 + 1577))
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      if (a2)
      {
        v6 = "YES";
      }

      v8 = 136315394;
      v9 = v7;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SystemSettings::advStateStable:%s->%s", &v8, 0x16u);
    }

    *(a1 + 1577) = a2;
    if (a2)
    {
      sub_1000A11BC(a1, 1);
    }
  }
}

void sub_10008D244(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != *(v3 + 517))
  {
    v7 = v1;
    v8 = v2;
    *(v3 + 517) = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10008D0EC;
    v5[3] = &unk_100AFF980;
    v6 = *(a1 + 40);
    sub_100015514(v3 + 128, v5);
  }
}

uint64_t sub_10008D2E4()
{
  if (sub_10000C240())
  {
    sub_10000AF54("StopAdvertising tech=%d", v0, v1, v2, v3, v4, v5, v6, byte_100B65339);
    v7 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v73 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_10008E2E8())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We are busy rotating our address", v14, v15, v16, v17, v18, v19, v20, v71);
      v21 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4073;
  }

  v23 = byte_100B65338;
  if (byte_100B65338)
  {
    if (byte_100B65339)
    {
      v24 = sub_100018960(207, sub_100093054, v8, v9, v10, v11, v12, v13, 0);
      if (v24)
      {
        v22 = v24;
        if (!sub_10000C240())
        {
          return v22;
        }

        sub_10000AF54("Could not stop the LE advertising OI_HCI_CMD_LE_SetExtendedAdvertisingEnable returned %!", v25, v26, v27, v28, v29, v30, v31, v22);
        v32 = sub_10000C050(0x42u);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          return v22;
        }

LABEL_14:
        sub_10080F7A0();
        return v22;
      }

      if (byte_100B65338)
      {
        v43 = 0;
        v44 = vdupq_n_s64(byte_100B65338 - 1);
        v45 = 53888 * ((byte_100B65338 + 15) >> 4);
        v46 = xmmword_1008A4930;
        v47 = xmmword_1008A4940;
        v48 = xmmword_1008A4950;
        v49 = xmmword_1008A4960;
        v50 = xmmword_1008A4970;
        v51 = xmmword_1008A4980;
        v52 = xmmword_1008A4990;
        v53 = xmmword_1008A49A0;
        v54 = vdupq_n_s64(0x10uLL);
        do
        {
          v55 = vmovn_s64(vcgeq_u64(v44, v53));
          if (vuzp1_s8(vuzp1_s16(v55, *v44.i8), *v44.i8).u8[0])
          {
            BYTE5(qword_100B61170[v43 / 8 + 417]) = 3;
          }

          if (vuzp1_s8(vuzp1_s16(v55, *&v44), *&v44).i8[1])
          {
            BYTE5(qword_100B61170[v43 / 8 + 838]) = 3;
          }

          if (vuzp1_s8(vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, *&v52))), *&v44).i8[2])
          {
            BYTE5(qword_100B61170[v43 / 8 + 1259]) = 3;
            BYTE5(qword_100B61170[v43 / 8 + 1680]) = 3;
          }

          v56 = vmovn_s64(vcgeq_u64(v44, v51));
          if (vuzp1_s8(*&v44, vuzp1_s16(v56, *&v44)).i32[1])
          {
            BYTE5(qword_100B61170[v43 / 8 + 2101]) = 3;
          }

          if (vuzp1_s8(*&v44, vuzp1_s16(v56, *&v44)).i8[5])
          {
            BYTE5(qword_100B61170[v43 / 8 + 2522]) = 3;
          }

          if (vuzp1_s8(*&v44, vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, *&v50)))).i8[6])
          {
            BYTE5(qword_100B61170[v43 / 8 + 2943]) = 3;
            BYTE5(qword_100B61170[v43 / 8 + 3364]) = 3;
          }

          v57 = vmovn_s64(vcgeq_u64(v44, v49));
          if (vuzp1_s8(vuzp1_s16(v57, *v44.i8), *v44.i8).u8[0])
          {
            BYTE5(qword_100B61170[v43 / 8 + 3785]) = 3;
          }

          if (vuzp1_s8(vuzp1_s16(v57, *&v44), *&v44).i8[1])
          {
            BYTE5(qword_100B61170[v43 / 8 + 4206]) = 3;
          }

          if (vuzp1_s8(vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, *&v48))), *&v44).i8[2])
          {
            BYTE5(qword_100B61170[v43 / 8 + 4627]) = 3;
            BYTE5(qword_100B61170[v43 / 8 + 5048]) = 3;
          }

          v58 = vmovn_s64(vcgeq_u64(v44, v47));
          if (vuzp1_s8(*&v44, vuzp1_s16(v58, *&v44)).i32[1])
          {
            BYTE5(qword_100B61170[v43 / 8 + 5469]) = 3;
          }

          if (vuzp1_s8(*&v44, vuzp1_s16(v58, *&v44)).i8[5])
          {
            BYTE5(qword_100B61170[v43 / 8 + 5890]) = 3;
          }

          if (vuzp1_s8(*&v44, vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, *&v46)))).i8[6])
          {
            BYTE5(qword_100B61170[v43 / 8 + 6311]) = 3;
            BYTE5(qword_100B61170[v43 / 8 + 6732]) = 3;
          }

          v51 = vaddq_s64(v51, v54);
          v52 = vaddq_s64(v52, v54);
          v53 = vaddq_s64(v53, v54);
          v50 = vaddq_s64(v50, v54);
          v49 = vaddq_s64(v49, v54);
          v48 = vaddq_s64(v48, v54);
          v47 = vaddq_s64(v47, v54);
          v43 += 53888;
          v46 = vaddq_s64(v46, v54);
        }

        while (v45 != v43);
      }

      sub_10008E3CC();
      return 0;
    }

    v41 = 0;
    for (i = &byte_100B61E7D; *i != 2; i += 3368)
    {
      *i = 0;
      if (v23 == ++v41)
      {
        return 0;
      }
    }

    byte_100B65344 = v41;
    v59 = sub_1002A48BC();
    if (v59)
    {
      v60 = v59;
      if (sub_10000C240())
      {
        sub_10000AF54("Could not stop the LE advertising : %!, resetting its state to idle", v61, v62, v63, v64, v65, v66, v67, v60);
        v68 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      v69 = 0;
    }

    else
    {
      v69 = 3;
    }

    v22 = 0;
    *i = v69;
  }

  else
  {
    if (byte_100B61E7D != 2)
    {
      return 0;
    }

    v22 = sub_100018960(170, sub_1002B1C48, v8, v9, v10, v11, v12, v13, 0);
    if (!v22)
    {
      byte_100B61E7D = 3;
      return v22;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Could not stop the LE advertising : %!", v33, v34, v35, v36, v37, v38, v39, v22);
      v40 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }
  }

  return v22;
}

uint64_t sub_10008D888(int a1)
{
  if (!dword_100BCE338)
  {
    return 103;
  }

  if (dword_100B6A56C)
  {
    sub_10002242C(dword_100B6A56C);
    dword_100B6A56C = 0;
  }

  byte_100B663B9 &= 0x7Cu;
  byte_100B6A558 = sub_10008E070();
  byte_100B6A568 = 0;
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE_GAP_StopAdvertising Force stop", v2, v3, v4, v5, v6, v7, v8, v11);
      v9 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1002D0B38();
    byte_100B6A558 = 0;
    off_100B6A560 = 0;
    sub_1002B1EA4();
    return 0;
  }

  else
  {

    return sub_10008D2E4();
  }
}

void sub_10008D970(uint64_t a1, char a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008D244;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10008D9FC(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 16);
  v2 = *(a1 + 168);
  if (v2 >= 0x1F4)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100844C20(v2 - 499, v2, v3);
    }

    if (v2 == 499)
    {
      v5 = *(a1 + 160);
    }

    else
    {
      v4 = (v2 - 499) + 1;
      v5 = *(a1 + 160);
      do
      {
        v5 = v5[1];
        --v4;
      }

      while (v4 > 1);
    }

    sub_1000C1358(a1 + 152, *(a1 + 160), v5);
  }

  operator new();
}

void sub_10008DC2C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  if (*(a1 + 144) == 1)
  {
    v3 = *(a1 + 160);
    if (v3 != a1 + 152)
    {
      v4 = Current;
      v5 = 0;
      do
      {
        v25 = 0;
        v24 = 0u;
        v6 = *(v3 + 16);
        v7 = *(v3 + 32);
        v25 = *(v3 + 48);
        *v23 = v6;
        v24 = v7;
        v8 = DWORD1(v6);
        if (!DWORD1(v6))
        {
          sub_10008DEA0(&v26, &v25);
          v8 = HIDWORD(v23[0]);
        }

        if (v8 == 1)
        {
          v9 = v27[0];
          if (v27[0])
          {
            v10 = v27;
            do
            {
              v11 = *(v9 + 8);
              v12 = v11 >= v25;
              v13 = v11 < v25;
              if (v12)
              {
                v10 = v9;
              }

              v9 = v9[v13];
            }

            while (v9);
            if (v10 != v27 && v25 >= *(v10 + 8))
            {
              v14 = v10[7] - *&v24 > 5400.0;
              sub_10008DF84(&v26, &v25);
              v5 |= v14;
            }
          }
        }

        v3 = *(v3 + 8);
      }

      while (v3 != a1 + 152);
      v15 = v26;
      if (v26 != v27)
      {
        do
        {
          v16 = v4 - v15[7] > 5400.0;
          v17 = *(v15 + 1);
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
              v18 = *(v15 + 2);
              v19 = *v18 == v15;
              v15 = v18;
            }

            while (!v19);
          }

          v5 |= v16;
          v15 = v18;
        }

        while (v18 != v27);
      }

      if (v5)
      {
        if (qword_100B53FE8 != -1)
        {
          sub_100844990();
        }

        v20 = qword_100B53FE0;
        sub_100007E30(v23, "Assertion");
        sub_100007E30(__p, "MAX_ASSERTION_TIME_SECONDS");
        sub_1005780BC(v20, v23, __p, 0.0);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v24) < 0)
        {
          operator delete(v23[0]);
        }

        *(a1 + 136) = CFAbsoluteTimeGetCurrent();
      }
    }
  }

  sub_10000CEDC(&v26, v27[0]);
}

uint64_t *sub_10008DEA0(uint64_t a1, unsigned int *a2)
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

uint64_t sub_10008DF84(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10002717C(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_10008E008(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 1000000 * a2;
  block = a3;
  v5 = dispatch_time(0, v4);
  dispatch_after(v5, *(a1 + 8), block);
}

const char *sub_10008E07C(uint64_t a1, unsigned int a2)
{
  if (a2 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_100AFDA28[a2];
  }
}

void sub_10008E0A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10008E0A0(a1, *a2);
    sub_10008E0A0(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_10008E104(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10008E104(a1, *a2);
    sub_10008E104(a1, a2[1]);
    sub_10004CE24((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_10008E164(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 128);
    if (v5 > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = off_100B0ADD8[v5];
    }

    if (a2 > 3)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_100B0ADD8[a2];
    }

    v8 = *(a1 + 49);
    v11 = 136447234;
    if (v8)
    {
      v9 = "ON";
    }

    else
    {
      v9 = "OFF";
    }

    v12 = v6;
    v13 = 1024;
    v14 = v5;
    v15 = 2082;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    v19 = 2082;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Advertising state change:  %{public}s(%d) --> %{public}s(%d) stack:%{public}s", &v11, 0x2Cu);
  }

  *(a1 + 128) = a2;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  v10 = *(a1 + 128);
  if (v10 > 1)
  {
    if (v10 == 3)
    {
      goto LABEL_19;
    }

    if (v10 != 2)
    {
      return;
    }

LABEL_18:
    sub_100097D14(a1, 1);
    return;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

  if (v10 == 1)
  {
LABEL_19:
    sub_1000937AC(a1, 1);
  }
}

uint64_t sub_10008E2E8()
{
  if (sub_10000C240())
  {
    if (byte_100B6A5C9)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    sub_10000AF54("Address rotation in progress:%s", v0, v1, v2, v3, v4, v5, v6, v7);
    v8 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  return byte_100B6A5C9;
}

void sub_10008E3CC()
{
  if (byte_100B65338)
  {
    v0 = 0;
    do
    {
      if (byte_100B660C0[v0] == 1 && !sub_1002A9EC0())
      {
        byte_100B660C0[v0] = 0;
      }

      ++v0;
    }

    while (v0 < byte_100B65338);
  }
}

uint64_t sub_10008E450(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v145[1] = 0;
  v146 = a2;
  v145[0] = 0;
  sub_100007F88(v145, a1 + 64);
  v5 = sub_100090C1C(a1, a2);
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_100018384(a2, __p);
      sub_10086B4CC();
    }

    v6 = 0;
    goto LABEL_202;
  }

  v7 = *(a1 + 16920);
  if (v7)
  {
    v8 = a1 + 16920;
    do
    {
      v9 = *(v7 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * v11);
    }

    while (v7);
    if (v8 != a1 + 16920 && *(v8 + 32) <= a2)
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_100018384(a2, __p);
        sub_10086B2C4();
      }

      v6 = 122;
      goto LABEL_202;
    }
  }

  sub_10009093C(v5, a3);
  v12 = *(a3 + 8);
  if (*(v12 + 264) != 2)
  {
LABEL_23:
    sub_100068968(__p, (v12 + 416));
    v17 = v154;
    sub_10004B61C(__p, __p[1]);
    if (!v17)
    {
      v18 = *(a3 + 8);
      sub_100007E30(__p, "com.apple.bluetoothd");
      sub_1000C1030(&v143, __p, 1);
      if ((v18 + 416) != &v143)
      {
        sub_1000717E8((v18 + 416), v143, &v144);
      }

      sub_10004B61C(&v143, v144);
      if (SBYTE7(v154) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    memset(v155, 0, sizeof(v155));
    *__p = 0u;
    sub_100007AD0(__p);
    v19 = sub_100007774(&v154);
    sub_100018384(v146, __dst);
    v20 = sub_100007774(v19);
    sub_100007774(v20);
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    v21 = *(a3 + 8);
    if (v21[32])
    {
      memset(__dst, 0, sizeof(__dst));
      v22 = sub_100063D0C();
      v23 = v22;
      sub_100007E30(__dst, [v22 UTF8String]);

      sub_100007774(&v154);
      v24 = std::ostream::operator<<();
      v25 = sub_100007774(v24);
      if ((__dst[23] & 0x80u) == 0)
      {
        v26 = __dst;
      }

      else
      {
        v26 = *__dst;
      }

      strlen(v26);
      sub_100007774(v25);
      if (__dst[23] < 0)
      {
        operator delete(*__dst);
      }

      v21 = *(a3 + 8);
    }

    if (v21[9] != v21[8])
    {
      sub_100007774(&v154);
      v27 = *(*(a3 + 8) + 64);
      if (*(*(a3 + 8) + 72) != v27)
      {
        v28 = 0;
        v29 = 1;
        do
        {
          sub_10003B85C(v27 + 20 * v28, __dst);
          v30 = sub_100007774(&v154);
          sub_100007774(v30);
          if (__dst[23] < 0)
          {
            operator delete(*__dst);
          }

          v28 = v29;
          v27 = *(*(a3 + 8) + 64);
          v31 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(a3 + 8) + 72) - v27) >> 2) > v29++;
        }

        while (v31);
      }

      sub_100007774(&v154);
      v21 = *(a3 + 8);
    }

    if (v21[12] != v21[11])
    {
      sub_100007774(&v154);
      v32 = *(*(a3 + 8) + 88);
      if (*(*(a3 + 8) + 96) != v32)
      {
        v33 = 0;
        v34 = 1;
        do
        {
          sub_10003B85C(v32 + 20 * v33, __dst);
          v35 = sub_100007774(&v154);
          sub_100007774(v35);
          if (__dst[23] < 0)
          {
            operator delete(*__dst);
          }

          v33 = v34;
          v32 = *(*(a3 + 8) + 88);
          v31 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(a3 + 8) + 96) - v32) >> 2) > v34++;
        }

        while (v31);
      }

      sub_100007774(&v154);
      v21 = *(a3 + 8);
    }

    if (v21[64])
    {
      sub_100007774(&v154);
      v21 = *(a3 + 8);
      v36 = v21[62];
      v37 = v21 + 63;
      if (v36 != v21 + 63)
      {
        do
        {
          v38 = sub_10000C5E0((v36 + 5));
          v39 = sub_10000C5F8((v36 + 5));
          v40 = sub_100007774(&v154);
          *(v40 + *(*v40 - 24) + 8) = *(v40 + *(*v40 - 24) + 8) & 0xFFFFFFB5 | 2;
          v41 = std::ostream::operator<<();
          v42 = sub_100007774(v41);
          v43 = *v42;
          *(v42 + *(*v42 - 24) + 8) = *(v42 + *(*v42 - 24) + 8) & 0xFFFFFFB5 | 8;
          *(v42 + *(v43 - 24) + 8) |= 0x4000u;
          __dst[0] = 48;
          sub_10004DE98(v42, __dst);
          for (; v38; --v38)
          {
            *(&v155[1].__locale_ + *(v154 - 24)) = 2;
            ++v39;
            v44 = std::ostream::operator<<();
            sub_100007774(v44);
          }

          sub_100007774(&v154);
          v45 = v36[1];
          if (v45)
          {
            do
            {
              v46 = v45;
              v45 = *v45;
            }

            while (v45);
          }

          else
          {
            do
            {
              v46 = v36[2];
              v16 = *v46 == v36;
              v36 = v46;
            }

            while (!v16);
          }

          v36 = v46;
        }

        while (v46 != v37);
        v21 = *(a3 + 8);
      }
    }

    if (sub_10000C5E0((v21 + 6)))
    {
      v47 = sub_10000C5E0(*(a3 + 8) + 48);
      v48 = sub_10000C5F8(*(a3 + 8) + 48);
      v49 = sub_100007774(&v154);
      v50 = *v49;
      *(v49 + *(*v49 - 24) + 8) = *(v49 + *(*v49 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v49 + *(v50 - 24) + 8) |= 0x4000u;
      __dst[0] = 48;
      sub_10004DE98(v49, __dst);
      for (; v47; --v47)
      {
        *(&v155[1].__locale_ + *(v154 - 24)) = 2;
        ++v48;
        v51 = std::ostream::operator<<();
        sub_100007774(v51);
      }

      sub_100007774(&v154);
    }

    if (sub_10000C5E0(*(a3 + 8) + 136))
    {
      v52 = sub_10000C5E0(*(a3 + 8) + 136);
      v53 = sub_10000C5F8(*(a3 + 8) + 136);
      v54 = sub_100007774(&v154);
      v55 = *v54;
      *(v54 + *(*v54 - 24) + 8) = *(v54 + *(*v54 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v54 + *(v55 - 24) + 8) |= 0x4000u;
      __dst[0] = 48;
      sub_10004DE98(v54, __dst);
      for (; v52; --v52)
      {
        *(&v155[1].__locale_ + *(v154 - 24)) = 2;
        ++v53;
        v56 = std::ostream::operator<<();
        sub_100007774(v56);
      }

      sub_100007774(&v154);
    }

    if (sub_10000C5E0(*(a3 + 8) + 152))
    {
      v57 = sub_10000C5E0(*(a3 + 8) + 152);
      v58 = sub_10000C5F8(*(a3 + 8) + 152);
      v59 = sub_100007774(&v154);
      v60 = *v59;
      *(v59 + *(*v59 - 24) + 8) = *(v59 + *(*v59 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v59 + *(v60 - 24) + 8) |= 0x4000u;
      __dst[0] = 48;
      sub_10004DE98(v59, __dst);
      for (; v57; --v57)
      {
        *(&v155[1].__locale_ + *(v154 - 24)) = 2;
        ++v58;
        v61 = std::ostream::operator<<();
        sub_100007774(v61);
      }

      sub_100007774(&v154);
    }

    if (sub_10000C5E0(*(a3 + 8) + 224))
    {
      v62 = sub_10000C5E0(*(a3 + 8) + 224);
      v63 = sub_10000C5F8(*(a3 + 8) + 224);
      v64 = sub_100007774(&v154);
      v65 = *v64;
      *(v64 + *(*v64 - 24) + 8) = *(v64 + *(*v64 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v64 + *(v65 - 24) + 8) |= 0x4000u;
      __dst[0] = 48;
      sub_10004DE98(v64, __dst);
      for (; v62; --v62)
      {
        *(&v155[1].__locale_ + *(v154 - 24)) = 2;
        ++v63;
        v66 = std::ostream::operator<<();
        sub_100007774(v66);
      }

      sub_100007774(&v154);
    }

    sub_100007774(&v154);
    v67 = std::ostream::operator<<();
    sub_100007774(v67);
    v68 = *(a3 + 8);
    if (*(v68 + 39) < 0)
    {
      sub_100008904(__dst, *(v68 + 16), *(v68 + 24));
    }

    else
    {
      *__dst = *(v68 + 16);
      *&__dst[16] = *(v68 + 32);
    }

    if (__dst[23] < 0)
    {
      v71 = *&__dst[8];
      operator delete(*__dst);
      if (v71)
      {
LABEL_83:
        v69 = sub_100007774(&v154);
        v70 = *(a3 + 8);
        if (*(v70 + 39) < 0)
        {
          sub_100008904(__dst, *(v70 + 16), *(v70 + 24));
        }

        else
        {
          *__dst = *(v70 + 16);
          *&__dst[16] = *(v70 + 32);
        }

        v72 = sub_100007774(v69);
        sub_100007774(v72);
        if (__dst[23] < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_93;
      }
    }

    else if (__dst[23])
    {
      goto LABEL_83;
    }

    sub_100007774(&v154);
LABEL_93:
    v73 = *(a3 + 8);
    if (*(v73 + 308) == 1)
    {
      sub_100007774(&v154);
      v73 = *(a3 + 8);
    }

    if (*(v73 + 360) == 1)
    {
      sub_100007774(&v154);
      v73 = *(a3 + 8);
    }

    if (*(v73 + 440))
    {
      v74 = sub_100007774(&v154);
      v75 = sub_10002D1A4(*(*(a3 + 8) + 440));
      strlen(v75);
      sub_100007774(v74);
      if (qword_100B50910 != -1)
      {
        sub_10086AEE8();
      }

      nullsub_21(off_100B50908);
      v6 = sub_10072A430(a1, v76, a3);
      if (v6)
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086B320();
        }

LABEL_199:
        *&v154 = v137;
        if (SHIBYTE(v157) < 0)
        {
          operator delete(*(&v156 + 1));
        }

        std::locale::~locale(v155);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_202;
      }

      v73 = *(a3 + 8);
    }

    if (!*(v73 + 128) || !IsAppleInternalBuild() || (sub_100007774(&v154), v77 = *(a3 + 8), v78 = *(v77 + 112), v79 = (v77 + 120), v78 == (v77 + 120)))
    {
LABEL_119:
      v89 = *(*(a3 + 8) + 488);
      v90 = v89 == 0;

      if (!v90)
      {
        v91 = sub_100007774(&v154);
        v92 = *(*(a3 + 8) + 488);
        v93 = [v92 description];
        v94 = v93;
        strlen([v93 UTF8String]);
        sub_100007774(v91);
      }

      sub_100068968(__dst, (*(a3 + 8) + 416));
      v95 = *&__dst[16];
      sub_10004B61C(__dst, *&__dst[8]);
      if (v95)
      {
        sub_100007774(&v154);
        sub_100068968(__dst, (*(a3 + 8) + 416));
        v96 = *__dst;
        if (*__dst != &__dst[8])
        {
          do
          {
            v97 = sub_100007774(&v154);
            sub_100007774(v97);
            v98 = *(v96 + 1);
            if (v98)
            {
              do
              {
                v99 = v98;
                v98 = *v98;
              }

              while (v98);
            }

            else
            {
              do
              {
                v99 = *(v96 + 2);
                v16 = *v99 == v96;
                v96 = v99;
              }

              while (!v16);
            }

            v96 = v99;
          }

          while (v99 != &__dst[8]);
        }

        sub_10004B61C(__dst, *&__dst[8]);
        sub_100007774(&v154);
      }

      v100 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v101 = (__dst[23] & 0x80u) == 0 ? __dst : *__dst;
        *buf = 136446210;
        *&buf[4] = v101;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        if (__dst[23] < 0)
        {
          operator delete(*__dst);
        }
      }

      if (*(a1 + 17172) == 1)
      {
        v102 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          v112 = v146;
          sub_100018384(v146, buf);
          v113 = v170;
          v114 = *buf;
          v115 = v147;
          sub_100025284(v112, v147);
          if (v113 >= 0)
          {
            v114 = buf;
          }

          if (v150 < 0)
          {
            v115 = *v147;
          }

          v116 = sub_10002D1A4(*(*(a3 + 8) + 440));
          *__dst = 136446722;
          *&__dst[4] = v114;
          *&__dst[12] = 2082;
          *&__dst[14] = v115;
          *&__dst[22] = 2082;
          v152 = v116;
          _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "WILLSLEEP violation! Session %{public}s(%{public}s) %{public}s asking to start advertising", __dst, 0x20u);
          if (v150 < 0)
          {
            operator delete(*v147);
          }

          if (v170 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      v103 = *(a3 + 8);
      if (*(v103 + 308) == 1)
      {
        v104 = *(v103 + 264);
        if (*(a1 + 17009 + v104))
        {
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
          {
            sub_10086B388();
          }
        }

        else
        {
          if ((byte_100BC7AD0 & 1) == 0)
          {
            v106 = sub_10000E92C();
            if ((*(*v106 + 816))(v106))
            {
              v107 = sub_10000E92C();
              v108 = (*(*v107 + 824))(v107);
              v109 = sub_10000C7D0();
              v110 = (*(*v109 + 3496))(v109, v108, 1);
              v111 = qword_100BCE9A8;
              if ((v110 & 0xFFFFFFFD) != 0)
              {
                if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
                {
                  sub_10086B3F0();
                }
              }

              else if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
              {
                *__dst = 67109120;
                *&__dst[4] = v108;
                _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_INFO, "SPMI Debug Control set to %d", __dst, 8u);
              }
            }

            byte_100BC7AD0 = 1;
            LODWORD(v104) = *(*(a3 + 8) + 264);
          }

          v121 = sub_1002B2310(v104);
          v122 = sub_10000C7D0();
          if (((*(*v122 + 3472))(v122, v121, 1, 1) & 0xFFFFFFFD) != 0)
          {
            if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
            {
              sub_10086B458();
            }
          }

          else
          {
            *(a1 + 17009 + *(*(a3 + 8) + 264)) = 1;
          }
        }
      }

      v123 = *(a3 + 8);
      if (*(v123 + 409) == 1)
      {
        v124 = *(v123 + 264);
        if (*(a1 + 17014 + v124))
        {
          v125 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            *__dst = 67109120;
            *&__dst[4] = v124;
            _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "setLEAdvTxPowerIncrease on advertising handle is already set up on handle %d", __dst, 8u);
          }
        }

        else
        {
          v126 = 0;
          do
          {
            v127 = *(a1 + 17014 + v126);
            if (v127)
            {
              break;
            }

            v16 = v126++ == 4;
          }

          while (!v16);
          *(a1 + 17014 + v124) = 1;
          if ((v127 & 1) == 0)
          {
            sub_10072B234(a1, 1);
          }
        }
      }

      v128 = *(a3 + 8);
      *(v128 + 408) = a4;
      *(v128 + 400) = sub_1000269D4();
      *__dst = &v146;
      v129 = sub_1000866FC(a1 + 16912, &v146);
      sub_10000AE20((v129 + 5), a3);
      if (qword_100B512F8 != -1)
      {
        sub_10086ACE4();
      }

      v130 = sub_100026F14(off_100B512F0, v146);
      if (v130)
      {
        if (qword_100B512F8 != -1)
        {
          sub_10086ACE4();
        }

        v130 = sub_10006E254(off_100B512F0, v146);
        v131 = v130;
        if (v130 == 8 || v130 == 4)
        {
          v130 = sub_10072B31C(a1, v146);
        }

        v132 = *(a3 + 8);
        *(v132 + 336) |= v131 == 16;
        *(v132 + 337) = v131 == 16;
      }

      sub_100069590(v130, a3);
      v133 = *(a1 + 49);
      v134 = qword_100BCE9A8;
      v135 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
      if (v133 == 1)
      {
        if (v135)
        {
          *__dst = 0;
          _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Calling updateAdvertisement", __dst, 2u);
        }

        v136 = *(a1 + 56);
        v142[0] = _NSConcreteStackBlock;
        v142[1] = 3221225472;
        v142[2] = sub_100090F44;
        v142[3] = &unk_100ADF8F8;
        v142[4] = a1;
        sub_10000CA94(v136, v142);
      }

      else if (v135)
      {
        *__dst = 0;
        _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "Stack is not ready, waiting for the stack to start", __dst, 2u);
      }

      v6 = 0;
      goto LABEL_199;
    }

    while (1)
    {
      v80 = sub_10000C5E0((v78 + 7));
      v81 = sub_10000C5F8((v78 + 7));
      v82 = sub_100007774(&v154);
      sub_10003B85C((v78 + 4), __dst);
      v83 = sub_100007774(v82);
      v84 = sub_100007774(v83);
      v85 = *v84;
      *(v84 + *(*v84 - 24) + 8) = *(v84 + *(*v84 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v84 + *(v85 - 24) + 8) |= 0x4000u;
      buf[0] = 48;
      sub_10004DE98(v84, buf);
      if (__dst[23] < 0)
      {
        operator delete(*__dst);
        if (!v80)
        {
          goto LABEL_110;
        }
      }

      else if (!v80)
      {
        goto LABEL_110;
      }

      do
      {
        *(&v155[1].__locale_ + *(v154 - 24)) = 2;
        ++v81;
        v86 = std::ostream::operator<<();
        sub_100007774(v86);
        --v80;
      }

      while (v80);
LABEL_110:
      sub_100007774(&v154);
      v87 = v78[1];
      if (v87)
      {
        do
        {
          v88 = v87;
          v87 = *v87;
        }

        while (v87);
      }

      else
      {
        do
        {
          v88 = v78[2];
          v16 = *v88 == v78;
          v78 = v88;
        }

        while (!v16);
      }

      v78 = v88;
      if (v88 == v79)
      {
        goto LABEL_119;
      }
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  *&v154 = 0;
  sub_1000690B8(__p, a1 + 16912);
  v13 = __p[0];
  if (__p[0] == &__p[1])
  {
LABEL_22:
    sub_10008667C(__p, __p[1]);
    v12 = *(a3 + 8);
    goto LABEL_23;
  }

  while (*(v13[6] + 66) != 2)
  {
    v14 = v13[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v13[2];
        v16 = *v15 == v13;
        v13 = v15;
      }

      while (!v16);
    }

    v13 = v15;
    if (v15 == &__p[1])
    {
      goto LABEL_22;
    }
  }

  v105 = qword_100BCEA18;
  if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
  {
    sub_100018384(a2, __dst);
    v117 = __dst[23];
    v118 = *__dst;
    sub_100018384(v13[4], buf);
    v119 = __dst;
    if (v117 < 0)
    {
      v119 = v118;
    }

    if (v170 >= 0)
    {
      v120 = buf;
    }

    else
    {
      v120 = *buf;
    }

    *v147 = 136446466;
    *&v147[4] = v119;
    v148 = 2082;
    v149 = v120;
    _os_log_error_impl(&_mh_execute_header, v105, OS_LOG_TYPE_ERROR, "session %{public}s cannot use the exposure notification instance since its already being used by %{public}s", v147, 0x16u);
    if (v170 < 0)
    {
      operator delete(*buf);
    }

    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }
  }

  sub_10008667C(__p, __p[1]);
  v6 = 4;
LABEL_202:
  sub_1000088CC(v145);
  return v6;
}

void sub_10008FE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_1007FC91C(&a34);
  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

void sub_100090334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, atomic_uint *a33)
{
  if (a33)
  {
    sub_10000C808(a33);
  }

  _Unwind_Resume(a1);
}

void sub_1000903F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1 && *(v2 + 24))
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v3 = sub_1000689C0(off_100B50C60, *(*(a1 + 32) + 24));
    if (v3)
    {
      v4 = v3 == -310000;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v17 = CUPrintErrorCode();
      LogPrintF_safe();
    }

    *(*(a1 + 32) + 8) = 0;
  }

  if (*(a1 + 56) == 1)
  {
    if (!*(*(a1 + 32) + 16))
    {
      v5 = [[NSString alloc] initWithFormat:@"CBStackAdvertiserCA-0x%X", *(*(a1 + 32) + 128)];
      if (qword_100B50B88 != -1)
      {
        sub_100806928();
      }

      v6 = qword_100B50B80;
      sub_100007E30(__p, [v5 UTF8String]);
      v7 = sub_100044414(v6, __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 && v7 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
      {
        v18 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      if (*(*(a1 + 32) + 16))
      {
        if (qword_100B50B88 != -1)
        {
          sub_10080693C();
        }

        *(*(a1 + 32) + 24) = sub_1000117DC(qword_100B50B80, *(*(a1 + 32) + 16));
      }
    }

    v8 = *(a1 + 48);
    *(v8 + 264) = 0;
    *(v8 + 12) = 1;
    v9 = *(a1 + 32);
    if (*(v9 + 224))
    {
      goto LABEL_53;
    }

    v10 = *(v9 + 136);
    if (v10 <= 39)
    {
      if (v10 > 19)
      {
        if (v10 == 20)
        {
          v11 = 560;
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 == 10)
        {
          v11 = 3200;
          goto LABEL_52;
        }

        if (v10 == 15)
        {
          v11 = 1636;
          goto LABEL_52;
        }
      }
    }

    else if (v10 <= 44)
    {
      if (v10 == 40)
      {
        v11 = 290;
        goto LABEL_52;
      }

      if (v10 == 42)
      {
        v11 = 192;
        goto LABEL_52;
      }
    }

    else
    {
      switch(v10)
      {
        case '-':
          v11 = 96;
          goto LABEL_52;
        case '2':
          v11 = 48;
          goto LABEL_52;
        case '<':
          v11 = 32;
LABEL_52:
          *(v8 + 222) = v11;
          *(v8 + 307) = 0;
          *(v8 + 409) = *(*(a1 + 32) + 132);
LABEL_53:
          if (qword_100B50C68 != -1)
          {
            sub_100806900();
          }

          v12 = sub_10008E450(off_100B50C60, *(*(a1 + 32) + 24), a1 + 40, 1);
          v13 = objc_retainBlock(*(*(a1 + 32) + 144));
          if (v13)
          {
            v22 = @"kCBMsgArgResult";
            v14 = [NSNumber numberWithInt:v12];
            v23 = v14;
            v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
            v16 = [NSError errorWithInfo:v15];
            v13[2](v13, v16, 1);
          }

          if (v12 && v12 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
          {
            v19 = CUPrintErrorCode();
            LogPrintF_safe();
          }

          *(*(a1 + 32) + 8) = 1;
          return;
      }
    }

    v11 = 432;
    goto LABEL_52;
  }
}

void sub_10009093C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 8) + 440);
  if ((v3 & 0xFFFF0000) == 0xF0000 && (_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = sub_10002D1A4(v3);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s is not an enabled feature for LE Advertising", &v13, 0xCu);
    }

    return;
  }

  if (v3 > 983046)
  {
    if (v3 <= 2147418126)
    {
      if (v3 == 983047)
      {
        v4 = *(a2 + 8);
        *(v4 + 409) = 1;
        *(v4 + 264) = 1;
LABEL_24:
        v11 = 290;
        goto LABEL_28;
      }

      if (v3 != 2147418126)
      {
        return;
      }

      v4 = *(a2 + 8);
      *(v4 + 409) = 1;
      *(v4 + 264) = 0;
    }

    else
    {
      if (v3 != 2147418127)
      {
        if (v3 == 2147418128)
        {
          v12 = *(a2 + 8);
          *(v12 + 409) = 1;
          *(v12 + 264) = 4;
          *(v12 + 222) = 160;
          *(v12 + 464) = 1;
          *(v12 + 339) = 771;
          v6 = (v12 + 343);
          v7 = 257;
        }

        else
        {
          if (v3 != 2147418129)
          {
            return;
          }

          v5 = *(a2 + 8);
          *(v5 + 409) = 1;
          *(v5 + 264) = 4;
          *(v5 + 222) = 160;
          *(v5 + 464) = 1;
          *(v5 + 339) = 771;
          v6 = (v5 + 343);
          v7 = 514;
        }

        *v6 = v7;
        return;
      }

      v4 = *(a2 + 8);
      *(v4 + 409) = 1;
      *(v4 + 264) = 1;
    }

    v11 = 160;
    goto LABEL_28;
  }

  if (v3 <= 983041)
  {
    if (v3 == 983040)
    {
      v4 = *(a2 + 8);
      *(v4 + 409) = 1;
      *(v4 + 264) = 0;
      v11 = 1600;
LABEL_28:
      *(v4 + 222) = v11;
      *(v4 + 464) = 1;
      return;
    }

    if (v3 != 983041)
    {
      return;
    }

    v9 = *(a2 + 8);
    *(v9 + 409) = 257;
    *(v9 + 264) = 2;
    v10 = 1600;
  }

  else
  {
    if (v3 == 983042)
    {
      v4 = *(a2 + 8);
      *(v4 + 409) = 1;
      *(v4 + 264) = 1;
      v11 = 48;
      goto LABEL_28;
    }

    if (v3 != 983043)
    {
      if (v3 != 983046)
      {
        return;
      }

      v4 = *(a2 + 8);
      *(v4 + 409) = 1;
      *(v4 + 264) = 0;
      goto LABEL_24;
    }

    v9 = *(a2 + 8);
    *(v9 + 409) = 257;
    *(v9 + 264) = 2;
    v10 = 48;
  }

  *(v9 + 222) = v10;
}

uint64_t sub_100090C1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 17060);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 17064);
      v43 = *(a1 + 17072);
      if (v4 == v43)
      {
        v39 = 1;
        return v39 & 1;
      }

      v5 = 0;
      while (1)
      {
        __p[1] = 0;
        v49 = 0;
        __p[0] = 0;
        if (*(v4 + 23) < 0)
        {
          sub_100008904(__p, *v4, *(v4 + 1));
        }

        else
        {
          v6 = *v4;
          v49 = *(v4 + 2);
          *__p = v6;
        }

        sub_100018384(v2, &v45);
        v7 = v47;
        v8 = v47;
        v9 = v45;
        if ((v47 & 0x80u) == 0)
        {
          v10 = &v45;
        }

        else
        {
          v10 = v45;
        }

        if ((v47 & 0x80u) != 0)
        {
          v7 = v46;
        }

        v11 = HIBYTE(v49);
        if (v49 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if (v49 >= 0)
        {
          v13 = HIBYTE(v49);
        }

        else
        {
          v13 = __p[1];
        }

        if (v13)
        {
          v14 = v10 + v7;
          if (v7 >= v13)
          {
            v41 = v45;
            v17 = *v12;
            v18 = v10;
            do
            {
              v19 = v7 - v13;
              if (v19 == -1)
              {
                break;
              }

              v20 = memchr(v18, v17, v19 + 1);
              if (!v20)
              {
                break;
              }

              v15 = v20;
              if (!memcmp(v20, v12, v13))
              {
                goto LABEL_30;
              }

              v18 = (v15 + 1);
              v7 = v14 - (v15 + 1);
            }

            while (v7 >= v13);
            v15 = v14;
LABEL_30:
            v9 = v41;
            v2 = a2;
          }

          else
          {
            v15 = v10 + v7;
          }

          v16 = v15 != v14 && v15 - v10 != -1;
          if ((v8 & 0x80000000) == 0)
          {
LABEL_38:
            if (v11 < 0)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v16 = 1;
          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

        operator delete(v9);
        if (v49 < 0)
        {
LABEL_42:
          operator delete(__p[0]);
        }

LABEL_39:
        v5 |= v16;
        v4 = (v4 + 24);
        if (v4 == v43)
        {
          v39 = v5 ^ 1;
          return v39 & 1;
        }
      }
    }

LABEL_85:
    v39 = 0;
    return v39 & 1;
  }

  v22 = *(a1 + 17064);
  v44 = *(a1 + 17072);
  if (v22 == v44)
  {
    goto LABEL_85;
  }

  do
  {
    __p[1] = 0;
    v49 = 0;
    __p[0] = 0;
    if (*(v22 + 23) < 0)
    {
      sub_100008904(__p, *v22, *(v22 + 1));
    }

    else
    {
      v23 = *v22;
      v49 = *(v22 + 2);
      *__p = v23;
    }

    sub_100018384(v2, &v45);
    v24 = v47;
    v25 = v47;
    v26 = v45;
    if ((v47 & 0x80u) == 0)
    {
      v27 = &v45;
    }

    else
    {
      v27 = v45;
    }

    if ((v47 & 0x80u) != 0)
    {
      v24 = v46;
    }

    v28 = HIBYTE(v49);
    if (v49 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if (v49 >= 0)
    {
      v30 = HIBYTE(v49);
    }

    else
    {
      v30 = __p[1];
    }

    if (v30)
    {
      v31 = v27 + v24;
      if (v24 >= v30)
      {
        v33 = *v29;
        v34 = v27;
        do
        {
          v35 = v24 - v30;
          if (v35 == -1)
          {
            break;
          }

          v36 = memchr(v34, v33, v35 + 1);
          if (!v36)
          {
            break;
          }

          v32 = v36;
          if (!memcmp(v36, v29, v30))
          {
            goto LABEL_69;
          }

          v34 = (v32 + 1);
          v24 = v31 - (v32 + 1);
        }

        while (v24 >= v30);
        v32 = v31;
LABEL_69:
        v2 = a2;
      }

      else
      {
        v32 = v27 + v24;
      }

      v39 = v32 != v31 && v32 - v27 != -1;
      if (v25 < 0)
      {
LABEL_83:
        operator delete(v26);
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v39 = 1;
      if (v47 < 0)
      {
        goto LABEL_83;
      }
    }

    if ((v28 & 0x80) == 0)
    {
      goto LABEL_78;
    }

LABEL_84:
    operator delete(__p[0]);
LABEL_78:
    v22 = (v22 + 24);
    if (v22 == v44)
    {
      v38 = 1;
    }

    else
    {
      v38 = v39;
    }
  }

  while ((v38 & 1) == 0);
  return v39 & 1;
}

void sub_100090F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009138C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, atomic_uint *a34)
{
  if (a34)
  {
    sub_10000C808(a34);
  }

  _Unwind_Resume(a1);
}

void sub_100091588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a18)
  {
    sub_10000C808(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100091714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 - 48) = v15;
  v18 = *(v16 - 40);
  if (v18)
  {
    sub_10000C808(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100091764(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1 && *(v2 + 48))
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v3 = sub_1000689C0(off_100B50C60, *(*(a1 + 32) + 48));
    if (v3)
    {
      v4 = v3 == -310000;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v21 = CUPrintErrorCode();
      LogPrintF_safe();
    }

    *(*(a1 + 32) + 32) = 0;
  }

  if (*(a1 + 64) == 1)
  {
    if (!*(*(a1 + 32) + 40))
    {
      v5 = [[NSString alloc] initWithFormat:@"CBStackAdvertiserNC-0x%X", *(*(a1 + 32) + 128)];
      if (qword_100B50B88 != -1)
      {
        sub_100806928();
      }

      v6 = qword_100B50B80;
      sub_100007E30(__p, [v5 UTF8String]);
      v7 = sub_100044414(v6, __p);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 && v7 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
      {
        v21 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      if (*(*(a1 + 32) + 40))
      {
        if (qword_100B50B88 != -1)
        {
          sub_10080693C();
        }

        *(*(a1 + 32) + 48) = sub_1000117DC(qword_100B50B80, *(*(a1 + 32) + 40));
      }
    }

    v8 = *(a1 + 48);
    *(v8 + 264) = 1;
    *(v8 + 12) = 0;
    v9 = *(a1 + 32);
    if (*(v9 + 224))
    {
      goto LABEL_53;
    }

    v10 = *(v9 + 136);
    if (v10 <= 39)
    {
      if (v10 > 19)
      {
        if (v10 == 20)
        {
          v11 = 560;
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 == 10)
        {
          v11 = 3200;
          goto LABEL_52;
        }

        if (v10 == 15)
        {
          v11 = 1636;
          goto LABEL_52;
        }
      }
    }

    else if (v10 <= 44)
    {
      if (v10 == 40)
      {
        v11 = 290;
        goto LABEL_52;
      }

      if (v10 == 42)
      {
        v11 = 192;
        goto LABEL_52;
      }
    }

    else
    {
      switch(v10)
      {
        case '-':
          v11 = 96;
          goto LABEL_52;
        case '2':
          v11 = 48;
          goto LABEL_52;
        case '<':
          v11 = 32;
LABEL_52:
          *(v8 + 222) = v11;
          *(v8 + 307) = 0;
          *(v8 + 409) = *(*(a1 + 32) + 132);
LABEL_53:
          if (qword_100B50C68 != -1)
          {
            sub_100806900();
          }

          v12 = sub_10008E450(off_100B50C60, *(*(a1 + 32) + 48), a1 + 40, 1);
          if (*(a1 + 56))
          {
            v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC) / 0xF4240 - *(a1 + 56);
            if (dword_100B50B90 <= 50 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
            {
              sub_1000C0F24();
            }

            v14 = +[NSMutableDictionary dictionary];
            v15 = [[NSNumber alloc] initWithLongLong:v13];
            [v14 setObject:v15 forKeyedSubscript:@"heySiriXPCDuration"];

            v16 = sub_10000F034();
            (*(*v16 + 528))(v16, v14);
          }

          v17 = objc_retainBlock(*(*(a1 + 32) + 144));
          if (v17)
          {
            v25 = @"kCBMsgArgResult";
            v18 = [NSNumber numberWithInt:v12];
            v26 = v18;
            v19 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            v20 = [NSError errorWithInfo:v19];
            v17[2](v17, v20, 2);
          }

          if (v12 && v12 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
          {
            v22 = CUPrintErrorCode();
            LogPrintF_safe();
          }

          *(*(a1 + 32) + 32) = 1;
          return;
      }
    }

    v11 = 432;
    goto LABEL_52;
  }
}

void sub_100091D98(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56) == 1 && *(v2 + 72))
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v3 = sub_1000689C0(off_100B50C60, *(*(a1 + 32) + 72));
    if (v3)
    {
      v4 = v3 == -310000;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v12 = CUPrintErrorCode();
      LogPrintF_safe();
    }

    *(*(a1 + 32) + 56) = 0;
  }

  if (*(a1 + 56) == 1)
  {
    if (!*(*(a1 + 32) + 64))
    {
      v5 = [[NSString alloc] initWithFormat:@"CBStackAdvertiserNC1-0x%X", *(*(a1 + 32) + 128)];
      if (qword_100B50B88 != -1)
      {
        sub_100806928();
      }

      v6 = qword_100B50B80;
      sub_100007E30(__p, [v5 UTF8String]);
      v7 = sub_100044414(v6, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 && v7 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
      {
        v13 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      if (*(*(a1 + 32) + 64))
      {
        if (qword_100B50B88 != -1)
        {
          sub_10080693C();
        }

        *(*(a1 + 32) + 72) = sub_1000117DC(qword_100B50B80, *(*(a1 + 32) + 64));
      }
    }

    v8 = *(a1 + 48);
    *(v8 + 264) = 2;
    v9 = *(*(a1 + 32) + 136);
    if (v9 <= 39)
    {
      if (v9 > 19)
      {
        if (v9 == 20)
        {
          v10 = 560;
          goto LABEL_51;
        }
      }

      else
      {
        if (v9 == 10)
        {
          v10 = 3200;
          goto LABEL_51;
        }

        if (v9 == 15)
        {
          v10 = 1636;
          goto LABEL_51;
        }
      }
    }

    else if (v9 <= 44)
    {
      if (v9 == 40)
      {
        v10 = 290;
        goto LABEL_51;
      }

      if (v9 == 42)
      {
        v10 = 192;
        goto LABEL_51;
      }
    }

    else
    {
      switch(v9)
      {
        case '-':
          v10 = 96;
          goto LABEL_51;
        case '2':
          v10 = 48;
          goto LABEL_51;
        case '<':
          v10 = 32;
LABEL_51:
          *(v8 + 222) = v10;
          *(v8 + 12) = 0;
          *(v8 + 307) = 0;
          *(v8 + 409) = *(*(a1 + 32) + 132);
          if (qword_100B50C68 != -1)
          {
            sub_100806900();
          }

          v11 = sub_10008E450(off_100B50C60, *(*(a1 + 32) + 72), a1 + 40, 1);
          if (v11 && v11 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
          {
            v14 = CUPrintErrorCode();
            LogPrintF_safe();
          }

          *(*(a1 + 32) + 56) = 1;
          return;
      }
    }

    v10 = 432;
    goto LABEL_51;
  }
}

void sub_1000921B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 80) == 1 && *(v2 + 96))
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v3 = sub_1000689C0(off_100B50C60, *(*(a1 + 32) + 96));
    if (v3)
    {
      v4 = v3 == -310000;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v17 = CUPrintErrorCode();
      LogPrintF_safe();
    }

    *(*(a1 + 32) + 80) = 0;
  }

  if (*(a1 + 56) == 1)
  {
    if (!*(*(a1 + 32) + 88))
    {
      v5 = [[NSString alloc] initWithFormat:@"CBStackAdvertiserNCObjectDiscovery-0x%X", *(*(a1 + 32) + 128)];
      if (qword_100B50B88 != -1)
      {
        sub_100806928();
      }

      v6 = qword_100B50B80;
      sub_100007E30(__p, [v5 UTF8String]);
      v7 = sub_100044414(v6, __p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 && v7 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
      {
        v18 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      if (*(*(a1 + 32) + 88))
      {
        if (qword_100B50B88 != -1)
        {
          sub_10080693C();
        }

        *(*(a1 + 32) + 96) = sub_1000117DC(qword_100B50B80, *(*(a1 + 32) + 88));
      }
    }

    v8 = *(a1 + 48);
    *(v8 + 264) = 3;
    *(v8 + 12) = 0;
    v9 = *(a1 + 32);
    if (*(v9 + 224))
    {
      goto LABEL_53;
    }

    v10 = *(v9 + 136);
    if (v10 <= 39)
    {
      if (v10 > 19)
      {
        if (v10 == 20)
        {
          v11 = 560;
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 == 10)
        {
          v11 = 3200;
          goto LABEL_52;
        }

        if (v10 == 15)
        {
          v11 = 1636;
          goto LABEL_52;
        }
      }
    }

    else if (v10 <= 44)
    {
      if (v10 == 40)
      {
        v11 = 290;
        goto LABEL_52;
      }

      if (v10 == 42)
      {
        v11 = 192;
        goto LABEL_52;
      }
    }

    else
    {
      switch(v10)
      {
        case '-':
          v11 = 96;
          goto LABEL_52;
        case '2':
          v11 = 48;
          goto LABEL_52;
        case '<':
          v11 = 32;
LABEL_52:
          *(v8 + 222) = v11;
          *(v8 + 307) = 0;
          *(v8 + 409) = *(*(a1 + 32) + 132);
LABEL_53:
          if (qword_100B50C68 != -1)
          {
            sub_100806900();
          }

          v12 = sub_10008E450(off_100B50C60, *(*(a1 + 32) + 96), a1 + 40, 1);
          v13 = objc_retainBlock(*(*(a1 + 32) + 144));
          if (v13)
          {
            v22 = @"kCBMsgArgResult";
            v14 = [NSNumber numberWithInt:v12];
            v23 = v14;
            v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
            v16 = [NSError errorWithInfo:v15];
            v13[2](v13, v16, 4);
          }

          if (v12 && v12 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
          {
            v19 = CUPrintErrorCode();
            LogPrintF_safe();
          }

          *(*(a1 + 32) + 80) = 1;
          return;
      }
    }

    v11 = 432;
    goto LABEL_52;
  }
}

void sub_1000926FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1 && *(v2 + 120))
  {
    if (qword_100B50C68 != -1)
    {
      sub_1008068EC();
    }

    v3 = sub_1000689C0(off_100B50C60, *(*(a1 + 32) + 120));
    if (v3)
    {
      v4 = v3 == -310000;
    }

    else
    {
      v4 = 1;
    }

    if (!v4 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
    {
      v13 = CUPrintErrorCode();
      LogPrintF_safe();
    }

    *(*(a1 + 32) + 104) = 0;
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    if (!*(v5 + 112))
    {
      v6 = [[NSString alloc] initWithFormat:@"CBStackAdvertiserMultiInstances-0x%X", *(*(a1 + 32) + 128)];
      if (qword_100B50B88 != -1)
      {
        sub_100806928();
      }

      v7 = qword_100B50B80;
      sub_100007E30(__p, [v6 UTF8String]);
      v8 = sub_100044414(v7, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v8 && v8 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
      {
        v14 = CUPrintErrorCode();
        LogPrintF_safe();
      }

      if (*(*(a1 + 32) + 112))
      {
        if (qword_100B50B88 != -1)
        {
          sub_10080693C();
        }

        *(*(a1 + 32) + 120) = sub_1000117DC(qword_100B50B80, *(*(a1 + 32) + 112));
      }

      v5 = *(a1 + 32);
    }

    v9 = *(a1 + 48);
    v10 = *(v5 + 136);
    if (v10 <= 39)
    {
      if (v10 > 19)
      {
        if (v10 == 20)
        {
          v11 = 560;
          goto LABEL_51;
        }
      }

      else
      {
        if (v10 == 10)
        {
          v11 = 3200;
          goto LABEL_51;
        }

        if (v10 == 15)
        {
          v11 = 1636;
          goto LABEL_51;
        }
      }
    }

    else if (v10 <= 44)
    {
      if (v10 == 40)
      {
        v11 = 290;
        goto LABEL_51;
      }

      if (v10 == 42)
      {
        v11 = 192;
        goto LABEL_51;
      }
    }

    else
    {
      switch(v10)
      {
        case '-':
          v11 = 96;
          goto LABEL_51;
        case '2':
          v11 = 48;
          goto LABEL_51;
        case '<':
          v11 = 32;
LABEL_51:
          *(v9 + 222) = v11;
          *(v9 + 307) = 0;
          *(v9 + 409) = *(*(a1 + 32) + 132);
          *(v9 + 12) = *(a1 + 57);
          if (qword_100B50C68 != -1)
          {
            sub_100806900();
          }

          v12 = sub_10008E450(off_100B50C60, *(*(a1 + 32) + 120), a1 + 40, 1);
          if (v12 && v12 != -310000 && dword_100B50B90 <= 90 && (dword_100B50B90 != -1 || _LogCategory_Initialize()))
          {
            v15 = CUPrintErrorCode();
            LogPrintF_safe();
          }

          *(*(a1 + 32) + 104) = 1;
          return;
      }
    }

    v11 = 432;
    goto LABEL_51;
  }
}

void sub_100092B14(int a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100097D98;
  v3[3] = &unk_100AE0900;
  v4 = a1;
  sub_10000CA94(v2, v3);
}

void sub_100092B90(uint64_t a1, uint64_t a2)
{
  if (a1 && a1 != 4073)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("failed to start advertising instance %d with status %! . Abort ! Abort ! Abort !", v6, v7, v8, v9, v10, v11, v12, byte_100B6A558);
      v13 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    if (byte_100B6A558 >= 2u)
    {
      byte_100B6A558 = sub_10008E070();
      sub_10008D888(0);
      sub_1002B2118();
    }

    off_100B6A560(a1, a2);
  }

  else
  {
    v4 = byte_100B6A558;
    if (v4 >= sub_10008E070() || (byte_100B6A558 ? (v5 = byte_100B6A558 - 1) : (v5 = 0), sub_1000C1334(v5)))
    {
      off_100B6A560(a1, a2);
      byte_100B6A558 = 0;
    }

    else
    {
      v14 = sub_10008E070();
      if (sub_10009561C(&unk_100B663E0, v14, 0, 0, 0) != 101)
      {
        return;
      }

      byte_100B6A558 = 0;
      off_100B6A560(0, a2);
    }
  }

  if (byte_100B6A5C8 == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Advertising settled, need to rotate our address now", v15, v16, v17, v18, v19, v20, v21, v23);
      v22 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v25 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    sub_1002CE968();
    byte_100B6A5C8 = 0;
  }
}

void sub_100092D80(uint64_t a1, int a2, unsigned int a3)
{
  v4 = a1;
  v5 = 0;
  v41 = qword_100B61178;
  v6 = byte_100B61169;
  v7 = 5;
  v8 = qword_100B61170;
  do
  {
    if (*v8)
    {
      v5 = *v8;
    }

    v8 += 421;
    --v7;
  }

  while (v7);
  if (a1)
  {
    if (byte_100B65338)
    {
      if (byte_100B65339)
      {
        v9 = sub_100018960(207, 0);
        if (v9)
        {
          v10 = v9;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not stop the LE advertising OI_HCI_CMD_LE_SetExtendedAdvertisingEnable returned %!", v11, v12, v13, v14, v15, v16, v17, v10);
            v18 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }
      }

      else
      {
        v29 = 0;
        do
        {
          v30 = sub_1002A48BC();
          if (v30)
          {
            v31 = v30;
            if (sub_10000C240())
            {
              sub_10000AF54("Could not stop the LE advertising BT_VSC_SetMultipleAdvInstanceEnable returned  %!", v32, v33, v34, v35, v36, v37, v38, v31);
              v39 = sub_10000C050(0x42u);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = sub_10000C0FC();
                *buf = 136446466;
                v43 = v40;
                v44 = 1024;
                v45 = 0xFFFF;
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
              }
            }
          }

          ++v29;
        }

        while (v29 < byte_100B65338);
      }
    }
  }

  else if (!a2)
  {
    goto LABEL_14;
  }

  byte_100B65344 = 0;
  v19 = &qword_100B61170[421 * a3];
  bzero(v19 + 4, 0x672uLL);
  bzero(v19 + 211, 0x672uLL);
  *(v19 + 843) = 0;
  *(v19 + 15) = 0;
  *(v19 + 3341) = 0;
LABEL_14:
  byte_100B61169 = 0;
  if (v5)
  {
    if (sub_10008E2E8())
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Stopped due to address change, recovering silentRestartSequence=%d", v20, v21, v22, v23, v24, v25, v26, v6);
        v27 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = sub_10000C0FC();
          *buf = 136446210;
          v43 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      v4 = 4073;
    }

    if ((v6 & 1) == 0)
    {
      v5(v4, v41);
    }
  }
}

void sub_100093054(uint64_t a1)
{
  if (byte_100B65339)
  {
    if (byte_100B65338)
    {
      v2 = 0;
      v3 = vdupq_n_s64(byte_100B65338 - 1);
      v4 = 53888 * ((byte_100B65338 + 15) >> 4);
      v5 = xmmword_1008A4930;
      v6 = xmmword_1008A4940;
      v7 = xmmword_1008A4950;
      v8 = xmmword_1008A4960;
      v9 = xmmword_1008A4970;
      v10 = xmmword_1008A4980;
      v11 = xmmword_1008A4990;
      v12 = xmmword_1008A49A0;
      v13 = vdupq_n_s64(0x10uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v3, v12));
        if (vuzp1_s8(vuzp1_s16(v14, *v3.i8), *v3.i8).u8[0])
        {
          BYTE5(qword_100B61170[v2 / 8 + 417]) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v14, *&v3), *&v3).i8[1])
        {
          BYTE5(qword_100B61170[v2 / 8 + 838]) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v11))), *&v3).i8[2])
        {
          BYTE5(qword_100B61170[v2 / 8 + 1259]) = 0;
          BYTE5(qword_100B61170[v2 / 8 + 1680]) = 0;
        }

        v15 = vmovn_s64(vcgeq_u64(v3, v10));
        if (vuzp1_s8(*&v3, vuzp1_s16(v15, *&v3)).i32[1])
        {
          BYTE5(qword_100B61170[v2 / 8 + 2101]) = 0;
        }

        if (vuzp1_s8(*&v3, vuzp1_s16(v15, *&v3)).i8[5])
        {
          BYTE5(qword_100B61170[v2 / 8 + 2522]) = 0;
        }

        if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v9)))).i8[6])
        {
          BYTE5(qword_100B61170[v2 / 8 + 2943]) = 0;
          BYTE5(qword_100B61170[v2 / 8 + 3364]) = 0;
        }

        v16 = vmovn_s64(vcgeq_u64(v3, v8));
        if (vuzp1_s8(vuzp1_s16(v16, *v3.i8), *v3.i8).u8[0])
        {
          BYTE5(qword_100B61170[v2 / 8 + 3785]) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v16, *&v3), *&v3).i8[1])
        {
          BYTE5(qword_100B61170[v2 / 8 + 4206]) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v7))), *&v3).i8[2])
        {
          BYTE5(qword_100B61170[v2 / 8 + 4627]) = 0;
          BYTE5(qword_100B61170[v2 / 8 + 5048]) = 0;
        }

        v17 = vmovn_s64(vcgeq_u64(v3, v6));
        if (vuzp1_s8(*&v3, vuzp1_s16(v17, *&v3)).i32[1])
        {
          BYTE5(qword_100B61170[v2 / 8 + 5469]) = 0;
        }

        if (vuzp1_s8(*&v3, vuzp1_s16(v17, *&v3)).i8[5])
        {
          BYTE5(qword_100B61170[v2 / 8 + 5890]) = 0;
        }

        if (vuzp1_s8(*&v3, vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v5)))).i8[6])
        {
          BYTE5(qword_100B61170[v2 / 8 + 6311]) = 0;
          BYTE5(qword_100B61170[v2 / 8 + 6732]) = 0;
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v12 = vaddq_s64(v12, v13);
        v9 = vaddq_s64(v9, v13);
        v8 = vaddq_s64(v8, v13);
        v7 = vaddq_s64(v7, v13);
        v6 = vaddq_s64(v6, v13);
        v2 += 53888;
        v5 = vaddq_s64(v5, v13);
      }

      while (v4 != v2);
    }
  }

  else
  {
    v18 = byte_100B65344;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 0;
    if (v18 + 1 < byte_100B65338)
    {
      v19 = v18 + 1;
      v20 = &qword_100B61170[421 * v18 + 838] + 5;
      do
      {
        if (*v20 == 2)
        {
          byte_100B65344 = v19;
          v21 = sub_1002A48BC();
          if (!v21)
          {
            return;
          }

          v22 = v21;
          if (sub_10000C240())
          {
            sub_10000AF54("Could not stop the LE advertising : %!", v23, v24, v25, v26, v27, v28, v29, v22);
            v30 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = sub_10000C0FC();
              *buf = 136446466;
              v57 = v31;
              v58 = 1024;
              v59 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }
        }

        *v20 = 0;
        ++v19;
        v20 += 3368;
      }

      while (v19 < byte_100B65338);
    }
  }

  if (byte_100B61168)
  {
    v32 = 0;
    v33 = &byte_100B61E7D;
    do
    {
      if (*v33)
      {
        sub_1000D660C();
        if (*v33)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("instance=%d state=%d instead of 0", v34, v35, v36, v37, v38, v39, v40, v55);
            v41 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = sub_10000C0FC();
              *buf = 136446466;
              v57 = v42;
              v58 = 1024;
              v59 = 0xFFFF;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
            }
          }

          *v33 = 0;
        }
      }

      ++v32;
      v33 += 3368;
    }

    while (v32 < byte_100B61168);
  }

  if (byte_100B61169)
  {
    v43 = sub_10009499C();
    if (!v43)
    {
      return;
    }

    v44 = v43;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to restart advertising : %!", v45, v46, v47, v48, v49, v50, v51, v44);
      v52 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    byte_100B61E7D = 0;
    v53 = v44;
    v54 = 0;
  }

  else
  {
    byte_100B61E7D = 0;
    v53 = a1;
    v54 = 1;
  }

  sub_100092D80(v53, v54, 0);
}

void sub_100093630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 17040;
  v3 = *(a1 + 40);
  if (!*(v1 + 17040 + 8 * v3))
  {
    if (v3 == 1)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10072CCFC;
      block[3] = &unk_100ADF8F8;
      block[4] = v1;
      v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      v11 = *(a1 + 40);
      v12 = *(v2 + 8 * v11);
      *(v2 + 8 * v11) = v10;

      v13 = sub_100017F4C();
      sub_10008E008(v13, 10000, *(v2 + 8 * *(a1 + 40)));
    }

    else if (!v3)
    {
      v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, &stru_100B0AC48);
      v6 = *(a1 + 40);
      v7 = *(v2 + 8 * v6);
      *(v2 + 8 * v6) = v5;

      v8 = sub_100017F4C();
      v9 = *(v2 + 8 * *(a1 + 40));

      sub_10008E008(v8, 10000, v9);
    }
  }
}

void sub_100093748(uint64_t a1)
{
  v2 = *(a1 + 32) + 17040;
  v3 = *(v2 + 8 * *(a1 + 40));
  if (v3)
  {
    dispatch_block_cancel(v3);
    v4 = *(a1 + 40);
    v5 = *(v2 + 8 * v4);
    *(v2 + 8 * v4) = 0;
  }
}

void sub_1000937AC(uint64_t a1, int a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100093630;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100093830(_DWORD *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v12 = *(a2 + 6) + 4;
  v13 = sub_100007618(*(a2 + 6) + 4, 0x68A77A04uLL);
  if (!v13)
  {
    return 104;
  }

  v14 = v13;
  *(a3 + 15) = 0;
  *a3 = v13;
  *(a3 + 4) = v12;
  *(a3 + 5) = v12;
  if (!v12)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2592, "((*pBs).__data != NULL) && ((*pBs).__trueSize > 0)");
  }

  *(a3 + 14) = 2;
  *(a3 + 5) = v12;
  *(a3 + 6) = 1;
  *v13 = 1;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_142;
  }

  if (*(a3 + 5) - *(a3 + 6) <= 1)
  {
LABEL_142:
    v94 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
    goto LABEL_144;
  }

  if (*(a3 + 14) != 2)
  {
    v94 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_144:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2594, v94);
  }

  *(*a3 + *(a3 + 6)) = *(a2 + 2);
  *(*a3 + *(a3 + 6) + 1) = *(a2 + 3);
  v15 = *(a3 + 6);
  *(a3 + 6) = v15 + 2;
  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
    goto LABEL_146;
  }

  if (*(a3 + 5) <= (v15 + 2))
  {
LABEL_146:
    v95 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_148;
  }

  if (*(a3 + 14) != 2)
  {
    v95 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
LABEL_148:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2595, v95);
  }

  v16 = *(a2 + 6);
  v17 = *a3;
  *(a3 + 6) = v15 + 3;
  *(v17 + (v15 + 2)) = v16;
  v18 = *(a2 + 8);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_125:
    if (*(a3 + 14) == 2)
    {
      v83 = *(a3 + 6);
      *(a3 + 5) = v83;
    }

    else
    {
      v83 = *(a3 + 5);
    }

    *(a3 + 14) = 15;
    if (v12 != v83)
    {
      sub_1000D660C();
    }

    return 0;
  }

  v20 = 0;
  v117 = a4;
  while (v19 <= 51)
  {
    if (v19 != 49)
    {
      if (v19 == 50)
      {
        v35 = a1;
        a1 += 2;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_155:
          v98 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_157:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2615, v98);
        }

        if (*(a3 + 5) - *(a3 + 6) <= 1)
        {
          goto LABEL_155;
        }

        if (*(a3 + 14) != 2)
        {
          v98 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_157;
        }

        *(*a3 + *(a3 + 6)) = *v35;
        v28 = *(a3 + 6) + 2;
      }

      else
      {
        if (v19 != 51)
        {
          goto LABEL_132;
        }

        v26 = a1;
        a1 += 2;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_151:
          v97 = "ByteStream_NumReadBytesAvail(*pBs) >= 3";
LABEL_153:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2622, v97);
        }

        if (*(a3 + 5) - *(a3 + 6) <= 2)
        {
          goto LABEL_151;
        }

        if (*(a3 + 14) != 2)
        {
          v97 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_153;
        }

        v27 = *v26;
        *(*a3 + *(a3 + 6)) = v27;
        *(*a3 + *(a3 + 6) + 2) = BYTE2(v27);
        v28 = *(a3 + 6) + 3;
      }

      goto LABEL_113;
    }

    v31 = a1;
    a1 += 2;
    if (*(a3 + 15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_159:
      v96 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_160:
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2608, v96);
    }

    v32 = *(a3 + 6);
    if (*(a3 + 5) <= v32)
    {
      goto LABEL_159;
    }

    if (*(a3 + 14) != 2)
    {
      v96 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
      goto LABEL_160;
    }

    v33 = *v31;
    v34 = *a3;
    *(a3 + 6) = v32 + 1;
    *(v34 + v32) = v33;
LABEL_114:
    ++v20;
    v19 = *(*(a2 + 8) + v20);
    if (!*(*(a2 + 8) + v20))
    {
      goto LABEL_125;
    }
  }

  switch(v19)
  {
    case 'a':
      v21 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_218:
        v114 = "ByteStream_NumReadBytesAvail(*pBs) >= OI_BD_ADDR_BYTE_SIZE";
LABEL_220:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2643, v114);
      }

      v22 = *(a3 + 6);
      if (*(a3 + 5) - v22 <= 5)
      {
        goto LABEL_218;
      }

      if (*(a3 + 14) != 2)
      {
        v114 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_220;
      }

      v23 = *v21;
      sub_1000075EC((*a3 + v22), *v21, 6uLL);
      *(a3 + 6) += 6;
      if (a5)
      {
        v24 = *v23;
        *(a5 + 4) = *(v23 + 4);
        *a5 = v24;
      }

      if (a6)
      {
        v25 = *v23;
        *(a6 + 5) = *(v23 + 4);
        *(a6 + 1) = v25;
      }

      goto LABEL_114;
    case 'b':
      v70 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_214:
        v113 = "ByteStream_NumReadBytesAvail(*pBs) >= (31)";
LABEL_216:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2756, v113);
      }

      v71 = *(a3 + 6);
      if (*(a3 + 5) - v71 <= 30)
      {
        goto LABEL_214;
      }

      if (*(a3 + 14) != 2)
      {
        v113 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_216;
      }

      memmove((*a3 + v71), *v70, 0x1FuLL);
      v28 = *(a3 + 6) + 31;
      goto LABEL_113;
    case 'c':
      v36 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_210:
        v112 = "ByteStream_NumReadBytesAvail(*pBs) >= (10)";
LABEL_212:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2725, v112);
      }

      v37 = *(a3 + 6);
      if (*(a3 + 5) - v37 <= 9)
      {
        goto LABEL_210;
      }

      if (*(a3 + 14) != 2)
      {
        v112 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_212;
      }

      goto LABEL_67;
    case 'd':
      v43 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_207:
        v111 = "ByteStream_NumReadBytesAvail(*pBs) >= (16)";
LABEL_208:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2763, v111);
      }

      v44 = *(a3 + 6);
      if (*(a3 + 5) - v44 <= 15)
      {
        goto LABEL_207;
      }

      if (*(a3 + 14) != 2)
      {
        v111 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_208;
      }

      goto LABEL_87;
    case 'e':
      v29 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_203:
        v110 = "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(*pVal))";
LABEL_205:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2703, v110);
      }

      v30 = *(a3 + 6);
      if (*(a3 + 5) - v30 <= 7)
      {
        goto LABEL_203;
      }

      if (*(a3 + 14) != 2)
      {
        v110 = "((*pBs)).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_205;
      }

      goto LABEL_103;
    case 'f':
    case 'j':
    case 'q':
    case 'r':
    case 's':
    case 't':
    case 'u':
    case 'v':
    case 'x':
    case 'y':
      goto LABEL_132;
    case 'g':
      v64 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_199:
        v109 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_201:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2679, v109);
      }

      v65 = *(a3 + 6);
      if (*(a3 + 5) <= v65)
      {
        goto LABEL_199;
      }

      if (*(a3 + 14) != 2)
      {
        v109 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_201;
      }

      v66 = *v64;
      v67 = *a3;
      *(a3 + 6) = v65 + 1;
      *(v67 + v65) = v66;
      if (a7)
      {
        *a7 = v66;
      }

      goto LABEL_114;
    case 'h':
      v45 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_195:
        v108 = "ByteStream_NumReadBytesAvail(*pBs) >= 2";
LABEL_197:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2668, v108);
      }

      if (*(a3 + 5) - *(a3 + 6) <= 1)
      {
        goto LABEL_195;
      }

      if (*(a3 + 14) != 2)
      {
        v108 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_197;
      }

      v46 = *v45;
      *(*a3 + *(a3 + 6)) = *v46;
      *(*a3 + *(a3 + 6) + 1) = v46[1];
      *(a3 + 6) += 2;
      if (a4)
      {
        *a4 = v46;
      }

      goto LABEL_114;
    case 'i':
      v72 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_191:
        v107 = "ByteStream_NumReadBytesAvail(*pBs) >= ((240))";
LABEL_193:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2749, v107);
      }

      v73 = *(a3 + 6);
      if (*(a3 + 5) - v73 <= 239)
      {
        goto LABEL_191;
      }

      if (*(a3 + 14) != 2)
      {
        v107 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_193;
      }

      memmove((*a3 + v73), *v72, 0xF0uLL);
      v28 = *(a3 + 6) + 240;
      goto LABEL_113;
    case 'k':
      v43 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_188:
        v106 = "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(*pVal))";
LABEL_189:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2689, v106);
      }

      v44 = *(a3 + 6);
      if (*(a3 + 5) - v44 <= 0xF)
      {
        goto LABEL_188;
      }

      if (*(a3 + 14) != 2)
      {
        v106 = "((*pBs)).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_189;
      }

LABEL_87:
      *(*a3 + v44) = **v43;
      v28 = *(a3 + 6) + 16;
      goto LABEL_113;
    case 'l':
      v57 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_184:
        v105 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_186:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2732, v105);
      }

      v58 = *(a3 + 6);
      if (*(a3 + 5) <= v58)
      {
        goto LABEL_184;
      }

      if (*(a3 + 14) != 2)
      {
        v105 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_186;
      }

      v59 = *v57;
      v60 = *a3;
      *(a3 + 6) = v58 + 1;
      *(v60 + v58) = v59;
      v61 = v59;
      v62 = v59 + ((v59 + 3) >> 2);
      if (v61 <= (v62 + 1))
      {
        v63 = v62 + 1;
      }

      else
      {
        v63 = -1;
      }

      byte_100BCE140 = v63;
      goto LABEL_114;
    case 'm':
      v38 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_180:
        v104 = "ByteStream_NumReadBytesAvail(*pBs) >= (5)";
LABEL_182:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2770, v104);
      }

      v39 = *(a3 + 6);
      if (*(a3 + 5) - v39 <= 4)
      {
        goto LABEL_180;
      }

      if (*(a3 + 14) != 2)
      {
        v104 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_182;
      }

      v40 = *v38;
      v41 = *a3 + v39;
      v42 = *v40;
      *(v41 + 4) = *(v40 + 4);
      *v41 = v42;
      v28 = *(a3 + 6) + 5;
      goto LABEL_113;
    case 'n':
      v47 = a1;
      a1 += 2;
      v119 = *v47;
      v48 = strlen(*v47);
      v49 = v48;
      if (v48 <= 0xF8uLL)
      {
        v50 = v48;
      }

      else
      {
        v50 = 248;
      }

      v118 = *a3;
      v51 = *(a3 + 6);
      if (*(a3 + 15))
      {
        v52 = *(a3 + 6);
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
        v51 = v52;
        v53 = 0;
      }

      else
      {
        v53 = *(a3 + 5) - v51;
      }

      if (v53 < v50)
      {
        v103 = "ByteStream_NumReadBytesAvail(*pBs) >= (len)";
LABEL_178:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2714, v103);
      }

      if (*(a3 + 14) != 2)
      {
        v103 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_178;
      }

      v79 = v50;
      memmove((v118 + v51), v119, v50);
      *(a3 + 6) += v50;
      a4 = v117;
      if (v79 <= 0xF7)
      {
        while (!*(a3 + 15))
        {
          v80 = *(a3 + 6);
          if (*(a3 + 5) <= v80)
          {
            goto LABEL_138;
          }

          if (*(a3 + 14) != 2)
          {
            v93 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
            goto LABEL_139;
          }

          v81 = *a3;
          *(a3 + 6) = v80 + 1;
          *(v81 + v80) = 0;
          v82 = v49++;
          if (v82 >= 0xF7)
          {
            goto LABEL_114;
          }
        }

        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_138:
        v93 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_139:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2716, v93);
      }

      goto LABEL_114;
    case 'o':
      v36 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_174:
        v102 = "ByteStream_NumReadBytesAvail(*pBs) >= (10)";
LABEL_175:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2776, v102);
      }

      v37 = *(a3 + 6);
      if (*(a3 + 5) - v37 <= 9)
      {
        goto LABEL_174;
      }

      if (*(a3 + 14) != 2)
      {
        v102 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_175;
      }

LABEL_67:
      v54 = *v36;
      v55 = *a3 + v37;
      v56 = *v54;
      *(v55 + 8) = *(v54 + 4);
      *v55 = v56;
      v28 = *(a3 + 6) + 10;
      goto LABEL_113;
    case 'p':
      v43 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_170:
        v101 = "ByteStream_NumReadBytesAvail((*pBs)) >= (sizeof(*pVal))";
LABEL_172:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2696, v101);
      }

      v44 = *(a3 + 6);
      if (*(a3 + 5) - v44 <= 0xF)
      {
        goto LABEL_170;
      }

      if (*(a3 + 14) != 2)
      {
        v101 = "((*pBs)).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_172;
      }

      goto LABEL_87;
    case 'w':
      v68 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_166:
        v100 = "ByteStream_NumReadBytesAvail(*pBs) >= (72)";
LABEL_168:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2782, v100);
      }

      v69 = *(a3 + 6);
      if (*(a3 + 5) - v69 <= 71)
      {
        goto LABEL_166;
      }

      if (*(a3 + 14) != 2)
      {
        v100 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_168;
      }

      memmove((*a3 + v69), *v68, 0x48uLL);
      v28 = *(a3 + 6) + 72;
      goto LABEL_113;
    case 'z':
      v74 = a1;
      a1 += 2;
      if (*(a3 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_162:
        v99 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
LABEL_164:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2657, v99);
      }

      v75 = *(a3 + 6);
      if (*(a3 + 5) <= v75)
      {
        goto LABEL_162;
      }

      if (*(a3 + 14) != 2)
      {
        v99 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
        goto LABEL_164;
      }

      v76 = *v74;
      v77 = *a3;
      *(a3 + 6) = v75 + 1;
      *(v77 + v75) = v76;
      if (a6)
      {
        *a6 = v76;
      }

      goto LABEL_114;
    default:
      if (v19 == 52)
      {
        v78 = a1;
        a1 += 2;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_225:
          v116 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
LABEL_227:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2629, v116);
        }

        if (*(a3 + 5) - *(a3 + 6) <= 3)
        {
          goto LABEL_225;
        }

        if (*(a3 + 14) != 2)
        {
          v116 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_227;
        }

        *(*a3 + *(a3 + 6)) = *v78;
        v28 = *(a3 + 6) + 4;
LABEL_113:
        *(a3 + 6) = v28;
        goto LABEL_114;
      }

      if (v19 == 56)
      {
        v29 = a1;
        a1 += 2;
        if (*(a3 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c");
LABEL_222:
          v115 = "ByteStream_NumReadBytesAvail(*pBs) >= (8)";
LABEL_223:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/hci/hcicmdapi.c", 2636, v115);
        }

        v30 = *(a3 + 6);
        if (*(a3 + 5) - v30 <= 7)
        {
          goto LABEL_222;
        }

        if (*(a3 + 14) != 2)
        {
          v115 = "(*pBs).__RWFlag == BYTESTREAM_WRITE";
          goto LABEL_223;
        }

LABEL_103:
        *(*a3 + v30) = **v29;
        v28 = *(a3 + 6) + 8;
        goto LABEL_113;
      }

LABEL_132:
      if (sub_10000C240())
      {
        sub_10000AF54("unknown cmd parm type %d", v85, v86, v87, v88, v89, v90, v91, *(*(a2 + 8) + v20));
        v92 = sub_10000C050(0x2Eu);
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v123 = sub_10000C0FC();
          v124 = 1024;
          v125 = 615;
          _os_log_error_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
        }
      }

      sub_10000C1E8(v14);
      return 615;
  }
}

uint64_t sub_10009499C()
{
  if (!byte_100B65339)
  {
    v0 = sub_1002A4718();
    if (v0)
    {
      return v0;
    }

    goto LABEL_14;
  }

  if (!sub_100098124())
  {
    v11 = sub_100018960(204, sub_1000C29D4);
    if (v11)
    {
      v0 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_CMD_LE_SetExtendedAdvertisingParameters returned %!", v12, v13, v14, v15, v16, v17, v18, v0);
        v19 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }
      }

      return v0;
    }

LABEL_14:
    v0 = 0;
    BYTE5(qword_100B61170[421 * byte_100B65344 + 417]) = 1;
    return v0;
  }

  v2 = sub_100018960(254, sub_1000C29D4);
  if (!v2)
  {
    goto LABEL_14;
  }

  v0 = v2;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCI_CMD_LE_SetExtendedAdvertisingParametersV2 returned %!", v3, v4, v5, v6, v7, v8, v9, v0);
    v10 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      sub_10080F7A0();
    }
  }

  return v0;
}

uint64_t sub_100094C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, const void *a10, char a11, unsigned __int16 a12, const void *a13, char a14, unsigned __int8 a15, int *a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  *(v174 + 3) = 0;
  v174[0] = 0;
  if (sub_10000C240())
  {
    sub_10000AF54("StartAdvertising tech=%d handle=%d", v33, v34, v35, v36, v37, v38, v39, byte_100B65339);
    v40 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v176 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!a1)
  {
    return 101;
  }

  if (a15 && !byte_100B65338)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We're doing legacy advertising, why did we try to set handle to %d", v41, v42, v43, v44, v45, v46, v47, a15);
      v48 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
    return 101;
  }

  if (sub_10008E2E8())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We are busy rotating our address", v51, v52, v53, v54, v55, v56, v57, v173);
      v58 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 4073;
  }

  byte_100B65344 = a15;
  if (byte_100B65338)
  {
    v59 = a15;
  }

  else
  {
    v59 = 0;
  }

  if (BYTE5(qword_100B61170[421 * v59 + 417]))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("LE Advertising already in progress (handle:%d state:%d).", v60, v61, v62, v63, v64, v65, v66, byte_100B65344);
      v67 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 118;
  }

  if ((a3 - 16385) <= 0xFFFFC01E)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid advertising interval parameters : %d", v68, v69, v70, v71, v72, v73, v74, a3);
    v75 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if ((a4 - 16385) <= 0xFFFFC01E)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid advertising interval parameters : %d", v76, v77, v78, v79, v80, v81, v82, a4);
    v83 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a5 >= 4)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid advertising type parameters : %d", v84, v85, v86, v87, v88, v89, v90, a5);
    v91 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a5 == 1 && !a6)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Address can't be NULL", v92, v93, v94, v95, v96, v97, v98, v173);
    v99 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a5 == 1 && *a6 >= 2u)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid address type parameters : %d", v116, v117, v118, v119, v120, v121, v122, *a6);
    v123 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_65:
    sub_10080F7A0();
    return 101;
  }

  if ((a7 - 8) <= 0xFFFFFFF8)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid advertising map parameters : %d", v100, v101, v102, v103, v104, v105, v106, a7);
    v107 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a8 >= 4)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid advertising filter parameters : %d", v108, v109, v110, v111, v112, v113, v114, a8);
    v115 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a9 && !a10)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid advertising data length parameters : %d", v124, v125, v126, v127, v128, v129, v130, a9);
    v131 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a12 && !a13)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("Invalid scan data length parameters : %d", v132, v133, v134, v135, v136, v137, v138, a9);
    v139 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_65;
  }

  if (a16 && (a15 & 0xFB) != 0)
  {
    v140 = &qword_100B61170[421 * a15];
    v141 = *a16;
    *(v140 + 3345) = *(a16 + 3);
    *(v140 + 3342) = v141;
    *(v140 + 3349) = 1;
  }

  else
  {
    v142 = &qword_100B61170[421 * a15];
    *(v142 + 3349) = 1;
    v143 = &byte_100B65345[8 * a15 - a15];
    v144 = *v143 == dword_100B65368 && *(v143 + 3) == *(&dword_100B65368 + 3);
    v145 = v142 + 3342;
    if (v144)
    {
      if ((a15 & 0xFB) != 0)
      {
        *v145 = 1;
        arc4random_buf(&qword_100B61170[421 * a15 + 417] + 7, 6uLL);
        HIBYTE(qword_100B61170[421 * byte_100B65344 + 417]) &= 0x3Fu;
      }

      else
      {
        sub_1002D2704(0, v145);
      }
    }

    else
    {
      *v145 = *v143;
      *(v142 + 3345) = *(v143 + 3);
    }
  }

  if (byte_100B65338)
  {
    v146 = byte_100B65344;
    v147 = &qword_100B61170[421 * byte_100B65344];
    *v147 = a1;
    v147[1] = a2;
    *(v147 + 8) = a3;
    *(v147 + 9) = a4;
    *(v147 + 20) = a5;
    *(v147 + 28) = a7;
    *(v147 + 29) = a8;
    *(v147 + 15) = a9;
    *(v147 + 1684) = a11;
    *(v147 + 3340) = a14;
    *(v147 + 841) = 0;
    *(v147 + 1669) = 0;
    *(v147 + 3351) = a17;
    *(v147 + 3352) = a18;
    *(v147 + 3353) = a19;
    *(v147 + 3354) = a20;
    *(v147 + 3355) = a21;
    *(v147 + 3356) = a22;
    *(v147 + 3357) = a23;
    v147[420] = a24;
    *(v147 + 3350) = a25;
    bzero(v147 + 4, 0x672uLL);
    if (a10)
    {
      memmove(v147 + 4, a10, a9);
      v146 = byte_100B65344;
    }

    v148 = &qword_100B61170[421 * v146];
    *(v148 + 843) = a12;
    bzero(v148 + 211, 0x672uLL);
    if (a13)
    {
      memmove(v148 + 211, a13, a12);
    }

    v49 = sub_10009499C();
  }

  else
  {
    sub_1000841FC(v174);
    qword_100B61170[0] = a1;
    qword_100B61178 = a2;
    word_100B61180 = a3;
    word_100B61182 = a4;
    byte_100B61184 = a5;
    if (a5 == 1)
    {
      v155 = *a6;
      v156 = *(a6 + 2);
      byte_100B6118B = a6[6];
      word_100B61189 = v156;
      dword_100B61185 = v155;
    }

    else
    {
      *(&dword_100B61185 + 3) = 0;
      dword_100B61185 = 0;
    }

    byte_100B6118C = a7;
    byte_100B6118D = a8;
    word_100B6118E = a9;
    byte_100B61804 = a11;
    byte_100B61E7C = a14;
    word_100B61802 = 0;
    word_100B61E7A = 0;
    *byte_100B61190 = 0;
    *&byte_100B61190[16] = 0;
    *&byte_100B61190[8] = 0;
    *&byte_100B61190[23] = 0;
    if (a10)
    {
      __memmove_chk();
    }

    word_100B61806 = a12;
    unk_100B61808 = 0;
    unk_100B61818 = 0;
    unk_100B61810 = 0;
    unk_100B6181F = 0;
    if (a13)
    {
      __memmove_chk();
    }

    v49 = sub_100018960(166, sub_1002B1D58, v149, v150, v151, v152, v153, v154, word_100B61180);
    byte_100B61E7D = 1;
  }

  if (byte_100B6536F && (++dword_100B65340, !(dword_100B65340 % byte_100B6536F)))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Faking OI_BUSY_FAIL now", v157, v158, v159, v160, v161, v162, v163, v173);
      v164 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    v49 = 118;
  }

  else if (!v49)
  {
    return v49;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Could not start a LE advertising %!", v165, v166, v167, v168, v169, v170, v171, v49);
    v172 = sub_10000C050(0x42u);
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  return v49;
}

uint64_t sub_100095588(uint64_t a1, unint64_t a2)
{
  v3 = &v6 + 1;
  v6 = 0;
  do
  {
    *--v3 = a0123456789abcd_0[a2 % 0xA];
    v4 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v4);
  return sub_100062468(a1, v3);
}

uint64_t sub_10009561C(_BYTE *a1, unsigned int a2, unsigned __int8 *a3, uint64_t (*a4)(void, void), uint64_t a5)
{
  v133 = 0;
  bzero(v135, 0x672uLL);
  v132 = 0;
  bzero(__dst, 0x672uLL);
  if (!a1)
  {
    sub_1000D660C();
  }

  if (!dword_100BCE338)
  {
    return 103;
  }

  if (!a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("You must specify at least numOfInstances>=1", v19, v20, v21, v22, v23, v24, v25, v131);
    v26 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

LABEL_22:
    sub_1000E09C0();
    return 101;
  }

  if (a2 >= 6)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    sub_10000AF54("numOfInstances can not be greater than %d", v10, v11, v12, v13, v14, v15, v16, 5);
    v17 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_22;
  }

  v27 = sub_10008E070();
  if (a2 != 1 && !v27)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    v28 = sub_10008E070();
    sub_10000AF54("numOfInstances can not be greater than 1, using regular advertising", v29, v30, v31, v32, v33, v34, v35, v28);
    v36 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_22;
  }

  if (sub_10008E070() && sub_10008E070() < a2)
  {
    if (!sub_10000C240())
    {
      return 101;
    }

    v37 = sub_10008E070();
    sub_10000AF54("numOfInstances can not be greater than %d", v38, v39, v40, v41, v42, v43, v44, v37);
    v45 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      return 101;
    }

    goto LABEL_22;
  }

  __memmove_chk();
  if (a4)
  {
    v46 = 0;
    byte_100B6A558 = 0;
  }

  else
  {
    v46 = byte_100B6A558;
  }

  if (v46 < a2)
  {
    while (*&a1[3352 * v46 + 2] >= 0x4000u)
    {
      LOBYTE(v46) = v46 + 1;
      byte_100B6A558 = v46;
      v18 = 101;
      if (a2 <= v46)
      {
        return v18;
      }
    }
  }

  if (a2 == v46)
  {
    return 101;
  }

  if (v46)
  {
    v48 = byte_100B663B8;
    goto LABEL_35;
  }

  v58 = a1[1];
  if (v58 > 1)
  {
    if (v58 == 2)
    {
      if ((qword_100B663B0 & 2) != 0)
      {
        goto LABEL_91;
      }

      if (!sub_10000C240())
      {
        return 1330;
      }

      sub_10000AF54("Device does not support discoverable advertising.", v99, v100, v101, v102, v103, v104, v105, v131);
      v106 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
      {
        return 1330;
      }
    }

    else
    {
      if (v58 != 3 || (qword_100B663B0 & 1) != 0)
      {
        goto LABEL_91;
      }

      if (!sub_10000C240())
      {
        return 1330;
      }

      sub_10000AF54("Device does not support non-connectable advertising.", v68, v69, v70, v71, v72, v73, v74, v131);
      v75 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        return 1330;
      }
    }

    goto LABEL_89;
  }

  if (!a1[1])
  {
    if ((qword_100B663B0 & 4) != 0)
    {
      goto LABEL_91;
    }

    if (!sub_10000C240())
    {
      return 1330;
    }

    sub_10000AF54("Device does not support direct advertising.", v91, v92, v93, v94, v95, v96, v97, v131);
    v98 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      return 1330;
    }

LABEL_89:
    sub_1000E09C0();
    return 1330;
  }

  if (v58 == 1 && (qword_100B663B0 & 8) == 0)
  {
    if (!sub_10000C240())
    {
      return 1330;
    }

    sub_10000AF54("Device does not support connectable advertising.", v59, v60, v61, v62, v63, v64, v65, v131);
    v66 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      return 1330;
    }

    goto LABEL_89;
  }

LABEL_91:
  v48 = byte_100B663B8;
  if ((byte_100B663B8 & 5) == 0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We can only advertise in Peripheral or Broadcaster mode.", v115, v116, v117, v118, v119, v120, v121, v131);
      v122 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 132;
  }

  if (v58 <= 1 && (byte_100B663B8 & 5) == 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("We can't be connectable in Broadcaster mode.", v107, v108, v109, v110, v111, v112, v113, v131);
      v114 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4061;
  }

LABEL_35:
  if (v48)
  {
    v67 = byte_100B663B9 & 0x7C;
  }

  else
  {
    if (*a1)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if ((v48 & 4) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Role should be broadcaster to enable discoverable states.", v50, v51, v52, v53, v54, v55, v56, v131);
        v57 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 4055;
    }

    v67 = byte_100B663B9 & 0x7C | v49;
  }

  byte_100B663B9 = v67;
  v18 = sub_100097EB4(&a1[3352 * v46], v135, &v133, __dst, &v132, v46);
  if (!v18)
  {
    if (a4)
    {
      if (a2 == 1)
      {
        v76 = 0;
      }

      else
      {
        v76 = a4;
      }

      off_100B6A560 = v76;
    }

    byte_100B6A568 = 1;
    if (a2 == 1)
    {
      v77 = a4;
    }

    else
    {
      v77 = sub_100092B90;
    }

    v78 = &a1[3352 * byte_100B6A558];
    v79 = *(v78 + 1);
    v80 = v79;
    if (!*(v78 + 1))
    {
      if (*v78)
      {
        v79 = 400;
      }

      else
      {
        v79 = 2048;
      }

      if (*v78)
      {
        v80 = 800;
      }

      else
      {
        v80 = 4096;
      }
    }

    if (v78[3317])
    {
      v81 = (v78 + 3310);
    }

    else
    {
      v81 = 0;
    }

    v82 = sub_100094C2C(v77, a5, v79, v80, v78[1], a3, v78[3344], 0, v133, v135, v78[3319], v132, __dst, v78[3320], byte_100B6A558, v81, *(v78 + 3322), BYTE1(*(v78 + 3322)), BYTE2(*(v78 + 3322)), HIBYTE(*(v78 + 3322)), *(v78 + 1663), HIBYTE(*(v78 + 1663)), v78[3328], *(v78 + 417), v78[3321]);
    if (v82)
    {
      v18 = v82;
      if (sub_10000C240())
      {
        sub_10000AF54("LE_StartAdvertising failed with status %! currentAdvHandle=%d gMultiAdvCompleteCb=%p numOfInstances=%d ", v83, v84, v85, v86, v87, v88, v89, v18);
        v90 = sub_10000C050(0x42u);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      if (a1[3352 * byte_100B6A558] == 1)
      {
        v18 = sub_10002195C(sub_1002D0B18, 0, 300, &dword_100B6A56C);
        if (v18)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Could not register callback, status:%!", v123, v124, v125, v126, v127, v128, v129, v18);
            v130 = sub_10000C050(0x42u);
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }
      }

      else
      {
        v18 = 0;
      }

      ++byte_100B6A558;
    }
  }

  return v18;
}

uint64_t *sub_100095D64(uint64_t a1, unsigned __int8 *a2)
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

uint64_t *sub_100095E9C(uint64_t a1, unsigned __int8 *a2)
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

void sub_100095F7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 144);
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "addUniqueUUIDRulesToDictionary %@ fScreenState:%d", buf, 0x12u);
  }

  if (*(a1 + 144))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = sub_1007A90F8;
    v31 = sub_1007A9108;
    v32 = 0;
    v6 = *(a1 + 4400);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1007A9110;
    v22 = &unk_100B0D228;
    v7 = v3;
    v23 = v7;
    v24 = buf;
    [v6 enumerateObjectsUsingBlock:&v19];
    v8 = [v7 mutableCopy];
    if (*(*&buf[8] + 40))
    {
      [*(a1 + 4400) removeObject:?];
      v9 = objc_opt_new();
      [v8 setObject:v9 forKeyedSubscript:@"data"];

      v10 = objc_opt_new();
      [v8 setObject:v10 forKeyedSubscript:@"mask"];

      v11 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"rssi"];
      v12 = [v11 intValue];
      v13 = [v7 objectForKeyedSubscript:@"rssi"];
      v14 = [v13 intValue];
      if (v14 >= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v14;
      }

      v16 = [NSNumber numberWithChar:v15];
      [v8 setObject:v16 forKeyedSubscript:@"rssi"];

      v17 = qword_100BCE918;
      if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
      {
        v18 = *(*&buf[8] + 40);
        *v25 = 138412546;
        v26 = v18;
        v27 = 2112;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "addUniqueUUIDRulesToDictionary removing [%@] and replacing with [%@]", v25, 0x16u);
      }
    }

    [*(a1 + 4400) addObject:v8];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1 + 4400) addObject:v3];
  }
}

uint64_t *sub_100096318(uint64_t a1, unsigned __int8 *a2)
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

void *sub_1000963F0(void *a1)
{
  *a1 = &off_100AE0AB8;
  v2 = a1[1];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

uint64_t sub_10009643C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000C7698();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    sub_100096570(a1, v7);
  }

  v8 = (16 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (16 * v2);
  v9 = *(a2 + 8);
  *v8 = &off_100AE0AB8;
  v8[1] = v9;
  if (v9)
  {
    sub_10000C69C(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 16 * v2;
  }

  *&v19 = v10 + 16;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  sub_100098FBC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_100098884(&v17);
  return v16;
}

void sub_10009655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100098884(va);
  _Unwind_Resume(a1);
}

void sub_100096570(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1000965B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10009643C(a1, a2);
  }

  else
  {
    sub_1005139C8(a1, a2);
    result = v3 + 16;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000965F8(uint64_t a1)
{
  v21 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "OverrideSupportLEAdvTxPowerIncrease");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 < 0)
  {
    operator delete(*buf);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v7 = sub_10000C798();
    if ((*(*v7 + 416))(v7))
    {
      v8 = *(a1 + 800);
      if (v8 - 1 <= 0x7CE)
      {
        v9 = v8 > 0x17;
        if (v8 == 23)
        {
          v10 = sub_1000271F0();
          LOBYTE(v6) = (v10 & 0xFFFFFFFB) != 0x102 && (v10 & 0xFFFFFFFE) != 260 && v10 != 263 && (v10 & 0xFFFFFFF8) != 264;
          return v6 & 1;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v14 = sub_10000C798();
      if ((*(*v14 + 384))(v14))
      {
        v15 = *(a1 + 800);
        if (v15)
        {
          if (v15 <= 0x7CF)
          {
            v9 = v15 > 0x16;
            if (v15 == 22)
            {
              if (sub_1000271F0() != 43 && sub_1000271F0() != 42 && (sub_1000271F0() != 50 || (_os_feature_enabled_impl() & 1) == 0))
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            }

LABEL_39:
            if (!v9)
            {
              goto LABEL_43;
            }

LABEL_41:
            LOBYTE(v6) = 1;
            return v6 & 1;
          }

          if (v15 - 3000 < 0x3E8)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v16 = sub_10000C798();
        if ((*(*v16 + 368))(v16))
        {
          v17 = sub_1000271F0() - 223;
          if (v17 < 0x14)
          {
            v6 = 0xFFF9Fu >> v17;
            return v6 & 1;
          }
        }
      }
    }

LABEL_43:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (v21)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Support LE Adv Tx Power Increase - %{public}s", buf, 0xCu);
  }

  LOBYTE(v6) = v21;
  return v6 & 1;
}

void sub_1000968CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10009690C(void *a1, void *a2, unint64_t *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_1000988F0(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10009699C();
  }

  return result;
}

void sub_100096A3C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10072FC2C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100096A68(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(&unk_100B55260);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(v2 + 64);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 dispatchQueue];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000991B4;
        v9[3] = &unk_100ADF920;
        v9[4] = v7;
        v10 = *(a1 + 40);
        dispatch_async(v8, v9);
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100B55260);
}

void sub_100096C14(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(&unk_100B55360);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(v2 + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 dispatchQueue];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000991C4;
        v9[3] = &unk_100ADF920;
        v9[4] = v7;
        v10 = *(a1 + 40);
        dispatch_async(v8, v9);
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100B55360);
}

uint64_t sub_100096DC0(uint64_t a1, int a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 64);
  if (*(a1 + 49))
  {
    if (a2 != 4073 && a2)
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086BBA0();
      }

      sub_10008E164(a1, 0);
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10008D888(1);
      sub_100022214(buf);
      v9 = *(a1 + 56);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10072CFA8;
      v17[3] = &unk_100ADF8F8;
      v17[4] = a1;
      sub_10000CA94(v9, v17);
      sub_10002249C(buf);
    }

    else
    {
      v4 = a1 + 0x4000;
      v5 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "Stopped";
        if (*(a1 + 128) == 1)
        {
          v6 = "Started";
        }

        *buf = 136446466;
        *&buf[4] = v6;
        *&buf[12] = 1024;
        *&buf[14] = a2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s advertising successfully status=%{bluetooth:OI_STATUS}u", buf, 0x12u);
      }

      v7 = *(a1 + 17056);
      if (*(a1 + 17056) && (++word_100BC7AC0, !(word_100BC7AC0 % v7)))
      {
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
        {
          sub_10086BB64();
        }
      }

      else if (*(a1 + 128) == 1)
      {
        sub_10008E164(a1, 2u);
        if ((*(a1 + 17160) & 1) == 0)
        {
          sub_100728D18(a1);
        }
      }

      else
      {
        sub_10008E164(a1, 0);
      }

      memset(buf, 0, sizeof(buf));
      sub_100097CBC(buf, a1 + 16968);
      v10 = *buf;
      if (*buf != &buf[8])
      {
        do
        {
          (***(v10 + 4))(*(v10 + 4), *(a1 + 128) != 0);
          v11 = *(v10 + 1);
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v12 = *(v10 + 2);
              v13 = *v12 == v10;
              v10 = v12;
            }

            while (!v13);
          }

          v10 = v12;
        }

        while (v12 != &buf[8]);
      }

      if (a2 == 4073)
      {
        v14 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Advertising stopped due to LE_GAP_ADDRESS_REFRESH_IN_PROGRESS, need to update our advertisers", v19, 2u);
        }

        *(v4 + 648) = 1;
      }

      else
      {
        v15 = *(a1 + 56);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100096A58;
        v18[3] = &unk_100ADF8F8;
        v18[4] = a1;
        sub_10000CA94(v15, v18);
      }

      sub_10000801C(v20);
      sub_10000CEDC(buf, *&buf[8]);
    }
  }

  else
  {
    v8 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stack is off", buf, 2u);
    }

    sub_10008E164(a1, 0);
  }

  return sub_1000088CC(v20);
}

void sub_1000971A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000971F4(uint64_t a1, int a2, int a3)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100097A04;
  v17[3] = &unk_100AFD598;
  v18 = a2;
  v19 = a3;
  sub_100097704(a1 + 72, v17);
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 424);
  v6 = *(a1 + 488);
  v5 = *(a1 + 496);
  if (v6 != v5)
  {
    switch(a2)
    {
      case 0:
        v15 = "power changed";
        v7 = 1;
        goto LABEL_16;
      case 1:
        v15 = "device name changed";
        v7 = 2;
        goto LABEL_16;
      case 2:
        v15 = "discoverability changed";
        v7 = 4;
        goto LABEL_16;
      case 3:
        v15 = "connectability changed";
        v7 = 8;
        goto LABEL_16;
      case 4:
        v15 = "pairing status changed";
        v7 = 16;
        goto LABEL_16;
      case 5:
        v15 = "connection status changed";
        v7 = 32;
        goto LABEL_16;
      case 6:
        v15 = "discovery started";
        v7 = 64;
        goto LABEL_16;
      case 7:
        v15 = "discovery stopped";
        v7 = 128;
        goto LABEL_16;
      case 8:
        return sub_1000088CC(v16);
      case 9:
        v15 = "airplane mode status changed";
        v7 = 512;
        goto LABEL_16;
      case 10:
        v15 = "denylist mode changed";
        v7 = 1024;
        goto LABEL_16;
      case 11:
        v15 = "first unlock completed";
        v7 = 2048;
        goto LABEL_16;
      case 12:
        v15 = "HP Cellular mode status changed";
        v7 = 4096;
        goto LABEL_16;
      default:
        v7 = 0;
        v15 = "unknown";
LABEL_16:
        v8 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending '%{public}s' event to local device listeners", buf, 0xCu);
          v6 = *(a1 + 488);
          v5 = *(a1 + 496);
        }

        if (v6 != v5)
        {
          do
          {
            if (v6[1])
            {
              if (qword_100B50B88 != -1)
              {
                sub_100844390();
              }

              v9 = sub_100076290(qword_100B50B80, *v6);
              if (v9)
              {
                if (qword_100B50B88 != -1)
                {
                  sub_100844390();
                }

                if ((sub_100619674(qword_100B50B80, *v6) & v7) == 0)
                {
                  if (qword_100B540D0 != -1)
                  {
                    sub_1008445C0();
                  }

                  operator new();
                }

                if (qword_100B50B88 != -1)
                {
                  sub_100844390();
                }

                v10 = sub_1000117DC(qword_100B50B80, v9);
                if (!v10)
                {
                  __assert_rtn("notifyStatusEvent", "LocalDevice.mm", 1121, "session");
                }

                v11 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  sub_100018384(v10, buf);
                  v12 = buf;
                  if (v21 < 0)
                  {
                    v12 = *buf;
                  }

                  *v22 = 136446466;
                  v23 = v15;
                  v24 = 2080;
                  v25 = v12;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Masking '%{public}s' event from local device listener : %s", v22, 0x16u);
                  if (v21 < 0)
                  {
                    operator delete(*buf);
                  }
                }
              }

              else
              {
                v13 = sub_100576F84(*(a1 + 488), *(a1 + 496), *v6);
                if (v13 != *(a1 + 496))
                {
                  *(a1 + 496) = v13;
                }
              }
            }

            v6 += 6;
          }

          while (v6 != *(a1 + 496));
        }

        break;
    }
  }

  return sub_1000088CC(v16);
}

void sub_1000976A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100097704(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_1000977D0(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100096A68;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100097854(uint64_t a1, int a2)
{
  os_unfair_lock_lock(&unk_100B55370);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 24);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 dispatchQueue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000991D4;
        v10[3] = &unk_100ADF920;
        v10[4] = v8;
        v11 = a2;
        dispatch_async(v9, v10);
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&unk_100B55370);
}

void sub_100097A34(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100096C14;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_100097AD8(uint64_t a1, int a2)
{
  v3 = qword_100BCEA28;
  if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    if (a2)
    {
      v4 = "YES";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "ExposureNotification::leAdvertisingStateChanged advertising:%s", &v5, 0xCu);
  }
}

uint64_t sub_100097B98(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1000988F0(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_100097C34(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100097B98(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100097CBC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100097C34(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100097D14(uint64_t a1, int a2)
{
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100093748;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_100097D98(uint64_t a1)
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  v2 = off_100B50C60;
  v3 = *(a1 + 32);

  return sub_100096DC0(v2, v3);
}

int8x16_t sub_100097DEC(uint64_t a1, uint64_t a2, unint64_t a3, int8x16_t *a4)
{
  v8 = 0u;
  v9 = 0u;
  v10 = &v8;
  v11 = 0;
  sub_10003B254(&v10, 0xFFuLL);
  if (a3 >= 3)
  {
    if (sub_100069470(a2 + 2, a3 - 2, sub_100098A98))
    {
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
      {
        sub_10086B64C();
      }
    }

    result = vorrq_s8(a4[1], v9);
    *a4 = vorrq_s8(*a4, v8);
    a4[1] = result;
  }

  return result;
}

uint64_t sub_100097EB4(uint64_t a1, uint64_t a2, _WORD *a3, void *__dst, _WORD *a5, unsigned int a6)
{
  if (!a2 || !a3 || !__dst || !a5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("createAdvertisingData: Unexpected <null> pointer parameters", v12, v13, v14, v15, v16, v17, v18, v45);
      v19 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  if (*(a1 + 3318))
  {
    v11 = 0;
    goto LABEL_25;
  }

  v11 = 0;
  if (a6 <= 4 && ((1 << a6) & 0x13) != 0)
  {
    if (*(a1 + 1656) > 0x1Cu)
    {
      v11 = 0;
      if (a6)
      {
        goto LABEL_25;
      }
    }

    else
    {
      *a2 = 258;
      v20 = byte_100B663B9;
      if (a6)
      {
        v20 = byte_100B663B9 | 2;
      }

      *(a2 + 2) = v20;
      v11 = 3;
      if (a6)
      {
        goto LABEL_25;
      }
    }

    if (*(a1 + 1656) > 0x19u)
    {
      goto LABEL_25;
    }

    if (*(a1 + 4) == 1)
    {
      v21 = v11;
      *(a2 + v11) = 2562;
      v22 = *(a1 + 4);
LABEL_24:
      v11 += 3;
      *(a2 + v21 + 2) = v22;
      goto LABEL_25;
    }

    v22 = dword_100B6A578;
    if (dword_100B6A578 && dword_100B6A578 != 127)
    {
      v21 = v11;
      *(a2 + v11) = 2562;
      goto LABEL_24;
    }
  }

LABEL_25:
  v23 = *(a1 + 1656);
  if (*(a1 + 1656))
  {
    if (a6 == 4)
    {
      v24 = 1650;
    }

    else
    {
      v24 = 31;
    }

    if (v23 + v11 > v24)
    {
      if (!sub_10000C240())
      {
        goto LABEL_42;
      }

      sub_10000AF54("Not enough room in ADV packet. (currently length=%d)", v25, v26, v27, v28, v29, v30, v31, *(a1 + 1656));
      v32 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    memmove((a2 + v11), (a1 + 5), v23);
    LOWORD(v11) = *(a1 + 1656) + v11;
  }

  v33 = *(a1 + 3308);
  if (*(a1 + 3308))
  {
    if (a6 == 4)
    {
      v34 = 1650;
    }

    else
    {
      v34 = 31;
    }

    if (v34 < v33)
    {
      if (!sub_10000C240())
      {
        goto LABEL_42;
      }

      sub_10000AF54("Not enough room in SCN_RSP packet.", v35, v36, v37, v38, v39, v40, v41, v45);
      v42 = sub_10000C050(0x42u);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

LABEL_41:
      sub_1000E09C0();
LABEL_42:
      sub_1000D660C();
      return 101;
    }

    memmove(__dst, (a1 + 1658), v33);
    v44 = *(a1 + 3308);
  }

  else
  {
    v44 = 0;
  }

  result = 0;
  *a3 = v11;
  *a5 = v44;
  return result;
}

uint64_t sub_100098140(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5, int a6)
{
  v6 = a4 + 1;
  v7 = *a4;
  if (*a4 == a4 + 1)
  {
LABEL_17:
    LOWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    v12 = a6 + 1;
    do
    {
      v13 = sub_10000C5E0((v7 + 7));
      if ((v12 + v13) > (a3 - v11))
      {
        break;
      }

      switch(a6)
      {
        case 2:
          v14 = 22;
          break;
        case 16:
          v14 = 33;
          break;
        case 4:
          v14 = 32;
          break;
        default:
          goto LABEL_17;
      }

      *(a2 + v11) = v12 + v13;
      *(a2 + (v11 + 1)) = v14;
      v25 = *(v7 + 2);
      v26 = *(v7 + 12);
      sub_10007A978((a2 + (v11 + 2)), &v25, 1);
      v15 = v11 + 2 + a6;
      v16 = sub_10000C5F8((v7 + 7));
      v17 = sub_10000C5E0((v7 + 7));
      memcpy((a2 + v15), v16, v17);
      v18 = sub_10000C5E0((v7 + 7));
      v19 = sub_100099408(a5, v7 + 32);
      sub_10000AE20(v19 + 56, (v7 + 7));
      v20 = v7[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v7[2];
          v22 = *v21 == v7;
          v7 = v21;
        }

        while (!v22);
      }

      v11 = v15 + v18;
      v7 = v21;
    }

    while (v21 != v6);
  }

  return v11;
}

uint64_t sub_10009830C(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t *a4, unsigned int a5, uint64_t *a6)
{
  v6 = a4[1] - *a4;
  if (!v6)
  {
    return 0;
  }

  v7 = a5;
  if (a5 + 2 > a3)
  {
    return 0;
  }

  v13 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 2);
  if (v13 >= (a3 - 2) / a5)
  {
    LOBYTE(v13) = (a3 - 2) / a5;
  }

  *a2 = v13 * a5 + 1;
  switch(a5)
  {
    case 2u:
      v14 = 20;
      break;
    case 0x10u:
      v14 = 21;
      break;
    case 4u:
      v14 = 31;
      break;
    default:
      return 0;
  }

  a2[1] = v14;
  v16 = *a4;
  v15 = a4[1];
  if (*a4 == v15)
  {
    return 2;
  }

  else
  {
    v17 = a3 - a5;
    v8 = 2;
    do
    {
      if (v17 >= v8)
      {
        v18 = *v16;
        v20 = *(v16 + 16);
        v19 = v18;
        sub_10007A978(&a2[v8], &v19, 1);
        v8 += v7;
        sub_10000CDB8(a6, v16);
        v15 = a4[1];
      }

      v16 += 20;
    }

    while (v16 != v15);
  }

  return v8;
}

uint64_t sub_10009846C(uint64_t a1, _BYTE *a2, unsigned int a3, uint64_t *a4, unsigned int a5, uint64_t *a6, uint64_t *a7)
{
  switch(a5)
  {
    case 2u:
      v13 = 3;
      v14 = 2;
      break;
    case 0x10u:
      v13 = 7;
      v14 = 6;
      break;
    case 4u:
      v13 = 5;
      v14 = 4;
      break;
    default:
      return 0;
  }

  v15 = a4[1] - *a4;
  if (!v15 || a5 + 2 > a3)
  {
    return 0;
  }

  v18 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 2);
  v19 = (a3 - 2);
  if (v18 >= v19 / a5)
  {
    v20 = v19 / a5;
  }

  else
  {
    v20 = v18;
  }

  v27 = v20 * a5 + 1;
  log = qword_100BCE9B0;
  if (os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110144;
    *&buf[4] = a3;
    *&buf[8] = 1024;
    *&buf[10] = 2;
    *&buf[14] = 1024;
    v29 = v19;
    v30 = 1024;
    v31 = v20;
    v32 = 1024;
    v33 = v27;
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "uuidsToData size:%d position:%d sizeRemaining:%d numUUISThatFit:%d advStructureLen:%d", buf, 0x20u);
  }

  *a2 = v27;
  if (0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 2) <= v20)
  {
    v21 = v13;
  }

  else
  {
    v21 = v14;
  }

  a2[1] = v21;
  v22 = *a4;
  if (*a4 == a4[1])
  {
    return 2;
  }

  else
  {
    v23 = a3 - a5;
    v16 = 2;
    do
    {
      if (v23 >= v16)
      {
        v25 = *v22;
        v29 = *(v22 + 16);
        *buf = v25;
        sub_10007A978(&a2[v16], buf, 1);
        v16 += a5;
        v24 = a6;
      }

      else
      {
        v24 = a7;
      }

      sub_10000CDB8(v24, v22);
      v22 += 20;
    }

    while (v22 != a4[1]);
  }

  return v16;
}

void sub_10009869C(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 88);
  for (i = *(a1 + 96); v5 != i; v5 = (v5 + 20))
  {
    if (*v5 == a2)
    {
      sub_10000CDB8(a3, v5);
      i = *(a1 + 96);
    }
  }
}

void sub_100098708(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100098724(uint64_t a1, uint64_t *a2, unsigned __int8 **a3, unsigned int a4)
{
  v4 = *a3;
  if (*a3 == a3[1])
  {
    return 0;
  }

  else
  {
    v8 = 0;
    do
    {
      for (i = *a2; i != a2[1]; i += 20)
      {
        if (sub_10004E15C(i, v4))
        {
          goto LABEL_9;
        }
      }

      if (*v4 + v8 > a4)
      {
        return v8;
      }

      sub_10000CDB8(a2, v4);
      v8 += *v4;
LABEL_9:
      v4 += 20;
    }

    while (v4 != a3[1]);
  }

  return v8;
}

void sub_1000987D4(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(a1 + 64);
  for (i = *(a1 + 72); v5 != i; v5 = (v5 + 20))
  {
    if (*v5 == a2)
    {
      sub_10000CDB8(a3, v5);
      i = *(a1 + 72);
    }
  }
}

void sub_100098840(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10009885C(_BYTE *a1)
{
  if (a1[206] & 1) != 0 || (a1[207])
  {
    v1 = 0;
  }

  else
  {
    v1 = a1[212] ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_100098884(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000988F0(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_100098A98(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 255)
  {
    abort();
  }

  *(a4 + ((a1 >> 3) & 0x18)) |= 1 << a1;
  return 161;
}

uint64_t (*sub_100098AE4(uint64_t a1))(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  v1 = sub_10009362C;
  switch(*(a1 + 18))
  {
    case 0:
      return v1;
    case 1:
      return sub_1000C2B58;
    case 2:
      return sub_1002512F4;
    case 3:
      return sub_1002513E0;
    case 4:
      return sub_100251508;
    case 5:
      return sub_100251638;
    case 6:
      return sub_1002517DC;
    case 7:
      return sub_100251938;
    case 8:
      return sub_100251B58;
    case 9:
      return sub_100251CD8;
    case 0xA:
      v3 = sub_1000255F0(a1);
      v2 = sub_100251DD8;
      if (v3 > 162)
      {
        if (v3 <= 243)
        {
          if (v3 > 183)
          {
            if (v3 > 197)
            {
              if (v3 == 198)
              {
                return sub_10025387C;
              }

              if (v3 == 230)
              {
                return sub_1002539D4;
              }
            }

            else if (v3 == 184 || v3 == 188)
            {
              return sub_1002537B4;
            }
          }

          else if (v3 > 180)
          {
            if (v3 == 181)
            {
              return sub_1002535C0;
            }

            if (v3 == 183)
            {
              return sub_1002536EC;
            }
          }

          else
          {
            if (v3 == 163)
            {
              return sub_100253388;
            }

            if (v3 == 164)
            {
              return sub_1002534B0;
            }
          }

          return 0;
        }

        if (v3 <= 255)
        {
          if (v3 > 252)
          {
            if (v3 == 253)
            {
              return sub_100253DC8;
            }

            if (v3 == 255)
            {
              return sub_100253F90;
            }
          }

          else
          {
            if (v3 == 244)
            {
              return sub_100253C30;
            }

            if (v3 == 245)
            {
              return sub_10025407C;
            }
          }

          return 0;
        }

        if (v3 <= 263)
        {
          if (v3 == 256)
          {
            return sub_100253EA4;
          }

          if (v3 == 260)
          {
            return sub_100254224;
          }

          return 0;
        }

        if (v3 == 264)
        {
          return sub_1002546B4;
        }

        if (v3 == 273)
        {
          return sub_10025482C;
        }

        if (v3 != 275)
        {
          return 0;
        }

        return nullsub_143;
      }

      if (v3 > 131)
      {
        if (v3 <= 145)
        {
          if (v3 > 143)
          {
            if (v3 == 144)
            {
              return sub_1002524A4;
            }

            else
            {
              return sub_100252608;
            }
          }

          if (v3 == 132)
          {
            return sub_10025324C;
          }

          if (v3 == 143)
          {
            return sub_1002522E4;
          }
        }

        else if (v3 <= 154)
        {
          if (v3 == 146)
          {
            return sub_100252718;
          }

          if (v3 == 147)
          {
            return sub_10025288C;
          }
        }

        else
        {
          switch(v3)
          {
            case 155:
              return sub_100252A2C;
            case 156:
              return sub_100252CF4;
            case 157:
              return sub_100252E70;
          }
        }

        return 0;
      }

      if (v3 > 98)
      {
        if (v3 > 118)
        {
          if (v3 == 119)
          {
            return sub_10025317C;
          }

          if (v3 == 120)
          {
            return sub_100252FAC;
          }
        }

        else
        {
          if (v3 == 99)
          {
            return sub_1002520C4;
          }

          if (v3 == 114)
          {
            return sub_10025308C;
          }
        }

        return 0;
      }

      if (v3 > 79)
      {
        if (v3 == 80)
        {
          return sub_100251FD0;
        }

        if (v3 != 95)
        {
          return 0;
        }

        return nullsub_143;
      }

      if (v3 == 25)
      {
        return sub_100252B7C;
      }

      if (v3 != 65)
      {
        return 0;
      }

      return v2;
    case 0xB:
      return sub_1002518D4;
    case 0xC:
      return sub_10025199C;
    default:
      sub_1000D660C();
      return 0;
  }
}

void sub_100098FBC(uint64_t a1, void (***a2)(void), void (***a3)(void), void *a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4;
    v8 = a2;
    do
    {
      v9 = v8[1];
      *v4 = &off_100AE0AB8;
      v4[1] = v9;
      if (v9)
      {
        sub_10000C69C(v9);
      }

      v8 += 2;
      v4 += 2;
      v7 += 2;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      v11 = v6;
      do
      {
        v12 = *v11;
        v11 += 2;
        (*v12)(v6);
        v10 += 2;
        v6 = v11;
      }

      while (v11 != a3);
    }
  }
}

void sub_100099094(uint64_t a1)
{
  v1 = *(a1 + 17024);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 17024)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 17024) = 0;
  }
}

uint64_t sub_1000991E4(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a3;
  if (a2 < a3)
  {
    if (!sub_10000C240())
    {
      return 4057;
    }

    sub_10000AF54("Invalid service data length: %d < %d (UUID size=%d)", v7, v8, v9, v10, v11, v12, v13, a2);
    v14 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 4057;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    if (!sub_10000C240())
    {
      return 4057;
    }

    sub_10000AF54("Invalid parsedData for parseADServiceData", v24, v25, v26, v27, v28, v29, v30, v45);
    v31 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      return 4057;
    }

LABEL_12:
    sub_1000E09C0();
    return 4057;
  }

  if (*(a4 + 5632) >= 0xAuLL)
  {
    if (!sub_10000C240())
    {
      return 4057;
    }

    sub_10000AF54("Invalid parsedData nbServiceData %u for parseADServiceData", v16, v17, v18, v19, v20, v21, v22, *(a4 + 5632));
    v23 = sub_10000C050(0x42u);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      return 4057;
    }

    goto LABEL_12;
  }

  v33 = a4 + 5072;
  v34 = a4 + 5072 + 56 * *(a4 + 5632);
  sub_10006A0FC(a1, a3, 1, &v46);
  *v34 = v46;
  *(v34 + 16) = v47;
  if (v5 >= 0x20u)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Invalid size %d for serviceData in parseADServiceData", v35, v36, v37, v38, v39, v40, v41, v5);
      v42 = sub_10000C050(0x42u);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 4057;
  }

  memmove((v33 + 56 * *(a4 + 5632) + 20), &a1->i8[v4], v5);
  result = 0;
  v44 = *(a4 + 5632);
  *(v33 + 56 * v44 + 52) = v5;
  *(a4 + 5632) = v44 + 1;
  return result;
}

uint64_t sub_100099408(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_1000994CC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

unsigned __int8 *sub_1000994CC(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_10007C3A8(a3, v4 + 32))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_10007C3A8(v7 + 32, a3))
      {
        break;
      }

      v5 = v7 + 8;
      v4 = *(v7 + 1);
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_100099554(uint64_t a1, uint64_t a2)
{
  if (!a2 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100873AC0();
  }

  v4 = *a2;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 96);
  v5 = [*(a1 + 176) objectForKey:v4];
  [*(a1 + 176) setObject:a2 forKey:v4];
  if (v5)
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5[60];
      v8 = *(a2 + 480);
      *buf = 134218240;
      *&buf[4] = v7;
      buf_12 = 2048;
      buf_14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MUC - Old device exist - copy current IDS user address 0x%llx in new device 0x%llx", buf, 0x16u);
    }

    sub_10078CE20(a2, v5);
    sub_1000D3BB8(v5);
    operator delete();
  }

  *src = 0;
  v21 = 0;
  sub_10004DFB4(src, v4);
  __p[0] = *(a2 + 16);
  *buf = __p;
  v9 = sub_10009A480(a1 + 184, __p);
  uuid_copy(v9 + 40, src);
  if (*(a2 + 24))
  {
    __p[0] = *(a2 + 24);
    *buf = __p;
    v10 = sub_10009A480(a1 + 184, __p);
    uuid_copy(v10 + 40, src);
  }

  v11 = (a1 + 208);
  for (i = *(a1 + 216); ; i = *(i + 1))
  {
    if (i == v11)
    {
      goto LABEL_16;
    }

    if (!uuid_compare(i + 16, src))
    {
      break;
    }
  }

  if (i != v11)
  {
    v14 = *i;
    v13 = *(i + 1);
    *(v14 + 8) = v13;
    *v13 = v14;
    --*(a1 + 224);
    operator delete(i);
  }

LABEL_16:
  sub_10004B168();
}

void sub_100099DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  sub_1000088CC(&a38);

  _Unwind_Resume(a1);
}

void *sub_100099EA8(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_10003B814(result, a3);
  }

  return result;
}

uint64_t sub_100099F20(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = *a3;
  if (*a3 == *(a3 + 8))
  {
    return 0;
  }

  v8 = a4[1];
  while (1)
  {
    v9 = *a4;
    if (*a4 != v8)
    {
      while (!sub_10004E15C(v9, v4))
      {
        v9 += 20;
        if (v9 == v8)
        {
          v9 = v8;
          break;
        }
      }

      v8 = a4[1];
      if (v9 != v8)
      {
        break;
      }
    }

    v4 += 20;
    if (v4 == *(a3 + 8))
    {
      return 0;
    }
  }

  v11 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    sub_10003B85C(v4, v16);
    if (v17 >= 0)
    {
      v12 = v16;
    }

    else
    {
      v12 = v16[0];
    }

    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136446466;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Matched UUID %{public}s for device %{public}s", buf, 0x16u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }

  return 1;
}

uint64_t sub_10009A0E8(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_100044BC4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10009A240(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10013936C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10009A25C(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10009A2EC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10009A198();
  }

  return result;
}

unsigned __int8 *sub_10009A2EC(void *a1, uint64_t *a2, unsigned __int8 **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_10007C3A8(a5, a2 + 32))
  {
    if (!sub_10007C3A8(a2 + 32, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 2);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_10007C3A8(a5, v15 + 32))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 2);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_10007C3A8(v12 + 32, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000994CC(a1, a3, a5);
}

void *sub_10009A480(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10009A9F4();
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

uint64_t sub_10009A544(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009A5EC;
  v5[3] = &unk_100AE25F0;
  v5[4] = &v6;
  v5[5] = a2;
  dispatch_sync(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_10009A5EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LeDeviceCache sharedInstance];
  *(*(*(a1 + 32) + 8) + 24) = [v3 readDeviceByAddress:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_10009A698(uuid_t out, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = xmmword_100B5B53D;
    __memcpy_chk();
    if (sub_1000456EC(&xmmword_100B5B54D, 0x10uLL, &v6, 0x10u, out, 0x10u))
    {
      sub_1000C52F4(105);
      sub_10009A778(v4, v5);
    }
  }

  else
  {

    uuid_generate(out);
  }
}

uint64_t sub_10009A778(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = *(a1 + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009A840;
  v8[3] = &unk_100AF5548;
  v9 = v3;
  v10 = &v11;
  v5 = v3;
  dispatch_sync(v4, v8);
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_10009A840(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[LeDeviceCache sharedInstance];
  *(*(*(a1 + 40) + 8) + 24) = [v3 readDevice:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10009A8C0(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 172) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 83) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 234) = 0;
  *(a1 + 238) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = &_mh_execute_header;
  *(a1 + 264) = 0;
  *(a1 + 266) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 356) = 3;
  *(a1 + 364) = 0;
  *(a1 + 357) = 0;
  *(a1 + 368) = 1;
  *(a1 + 379) = 0;
  *(a1 + 372) = 0;
  *(a1 + 396) = 0;
  *(a1 + 388) = 0;
  *(a1 + 460) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 476) = 127;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 527) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 569) = 0;
  *(a1 + 562) = 0;
  *(a1 + 606) = 0;
  *(a1 + 600) = 0;
  *(a1 + 584) = 0u;
  return a1;
}

void sub_10009AA64(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_10009AA7C(void *result, char *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      operator new();
    }

    v7 = (v6 + 1) / -2;
    v8 = &v5[-((v6 + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-((v6 + 1) / 2)], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v8[v9];
    v3[1] = &v5[v7];
    v3[2] = &v8[v9];
  }

  *v4 = *a2;
  ++v3[2];
  return result;
}

void sub_10009AB88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0;
  if (!(*(*v1 + 136))(v1, &v2))
  {
    sub_10009AC40(v1, v2);
  }
}

uint64_t sub_10009ABF0(uint64_t a1, _BYTE *a2)
{
  state64 = 0;
  result = notify_get_state(*(a1 + 1460), &state64);
  if (result)
  {
    return 1;
  }

  *a2 = state64 & 1;
  return result;
}

void sub_10009AC40(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "off";
    if (a2)
    {
      v5 = "on";
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Microphone is now %{public}s", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009AE28;
  v6[3] = &unk_100AEF080;
  v7 = a2;
  sub_10009AD5C(a1 + 584, v6);
}

void sub_10009AD5C(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_10009AE58(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E6338;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 24, 1, v3, 0);
}

uint64_t sub_10009AED0()
{
  v0 = *(*sub_10000C7D0() + 1184);

  return v0();
}

const char *sub_10009B750(uint64_t a1, int a2)
{
  if (a2 > 1999)
  {
    if (a2 <= 2999)
    {
      switch(a2)
      {
        case 2000:
          return "APPLE_M1";
        case 2001:
          return "APPLE_M2";
        case 2002:
          return "APPLE_M2_5";
      }
    }

    else if (a2 > 4999)
    {
      if (a2 == 5000)
      {
        return "SRS_7923";
      }

      if (a2 == 6000)
      {
        return "APPLE_VIRTUAL";
      }
    }

    else
    {
      if (a2 == 3000)
      {
        return "PROXIMA";
      }

      if (a2 == 4000)
      {
        return "SRS_7922";
      }
    }

    return "Unknown Chipset";
  }

  else
  {
    result = "THIRD_PARTY_DONGLE";
    switch(a2)
    {
      case 0:
        return result;
      case 1:
        result = "BCM_4350C2";
        break;
      case 2:
        result = "BCM_20702A3";
        break;
      case 3:
        result = "BCM_20702B0";
        break;
      case 4:
        result = "BCM_4350";
        break;
      case 5:
        result = "BCM_4350A0";
        break;
      case 6:
        result = "BCM_4350C5";
        break;
      case 7:
        result = "BCM_20703A1";
        break;
      case 8:
        result = "BCM_20703A2";
        break;
      case 9:
        result = "BCM_43430";
        break;
      case 10:
        result = "BCM_43452";
        break;
      case 11:
        result = "BCM_4355B3";
        break;
      case 12:
        result = "BCM_4355C0";
        break;
      case 13:
        result = "BCM_4355C1";
        break;
      case 14:
        result = "BCM_4355";
        break;
      case 15:
        result = "BCM_4357";
        break;
      case 16:
        result = "BCM_4364";
        break;
      case 17:
        result = "BCM_4364B0";
        break;
      case 18:
        result = "BCM_4364B3";
        break;
      case 19:
        result = "BCM_4377";
        break;
      case 20:
        result = "BCM_4378";
        break;
      case 21:
        result = "BCM_4378B3";
        break;
      case 22:
        result = "BCM_4387";
        break;
      case 23:
        result = "BCM_4388";
        break;
      case 24:
        result = "BCM_4388C2";
        break;
      case 25:
        result = "BCM_4399";
        break;
      default:
        return "Unknown Chipset";
    }
  }

  return result;
}

uint64_t sub_10009B9DC()
{
  if (qword_100B5F398 != -1)
  {
    sub_100814268();
  }

  return dword_100B52308;
}

uint64_t sub_10009BA14(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 56);
  v2 = *(a1 + 193);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10009BA5C()
{
  if (qword_100B50DB8 != -1)
  {
    sub_1008447DC();
  }

  v1 = off_100B50DB0;

  return sub_10009BA14(v1);
}

id sub_10009BB10(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1);
  v2 = *(a1 + 64);
  v3 = (a1 + 72);
  if (v2 == (a1 + 72))
  {
    v16 = 0;
  }

  else
  {
    v4 = objc_alloc_init(NSMutableArray);
    do
    {
      v5 = v2[5];
      v6 = objc_alloc_init(CBAudioLinkQualityInfo);
      [v6 setAosState:*v5];
      [v6 setBitRate:1000 * *(v5 + 3)];
      v7 = *(v5 + 5);
      if (v7 == 33023)
      {
        v8 = 30;
      }

      else
      {
        v8 = 0;
      }

      if (v7 == 2)
      {
        v8 = 20;
      }

      if (*(v5 + 5))
      {
        v9 = v8;
      }

      else
      {
        v9 = 10;
      }

      [v6 setCodecType:v9];
      v10 = [NSString stringWithUTF8String:v5 + 12];
      [v6 setDeviceName:v10];

      [v6 setBtBand:v5[1]];
      LOWORD(v11) = *(v5 + 4);
      [v6 setJitterBufferSeconds:v11 / 1000.0];
      [v6 setNoiseFloor90:v5[4]];
      LOBYTE(v12) = v5[2];
      [v6 setRetransmitRate:v12 / 100.0];
      [v6 setRssiAverage:v5[3]];
      [v6 setSignalToNoiseRatio:v5[5]];
      [v4 addObject:v6];

      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
    v16 = [v4 copy];
  }

  sub_1000088CC(v18);

  return v16;
}

uint64_t sub_10009BD9C()
{
  if (qword_100B6D7B0 != -1)
  {
    sub_10082C150();
  }

  return qword_100B6D7A8;
}

uint64_t sub_10009BDD4(uint64_t a1, std::string *this)
{
  if ((*(a1 + 119) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 104))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 119))
  {
LABEL_3:
    std::string::operator=(this, (a1 + 96));
    return 0;
  }

  return 203;
}

uint64_t sub_10009BE1C(uint64_t a1)
{
  if (*(a1 + 132))
  {
    return 214;
  }

  else
  {
    return *(a1 + 128);
  }
}

uint64_t sub_10009BE34(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v8);
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, a1 + 240);
    v4 = *(a1 + 304);
    *(a2 + 4) = *(a1 + 308);
    *a2 = v4;
    sub_1000088CC(v7);
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v5 = 111;
  }

  sub_1000088CC(v8);
  return v5;
}

void sub_10009BEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009BF08(uint64_t a1)
{
  v2 = sub_1000271F0() - 20;
  result = 2;
  switch(v2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 37:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 92:
    case 93:
    case 94:
    case 95:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 147:
    case 174:
    case 175:
    case 176:
    case 177:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 222:
    case 276:
      return result;
    default:
      if ((*(a1 + 800) - 5000) < 0x3E8)
      {
        return 2;
      }

      v4 = sub_10000C798();
      if ((*(*v4 + 368))(v4))
      {
        return 0;
      }

      if ((*(a1 + 800) - 3000) < 0x3E8)
      {
        return 2;
      }

      v5 = sub_10000C798();
      if (!(*(*v5 + 416))(v5))
      {
        return 1;
      }

      v6 = *(a1 + 800);
      v7 = v6 - 1;
      v8 = 2 * (v6 > 0x14);
      if (v7 <= 0x7CE)
      {
        return v8;
      }

      else
      {
        return 0;
      }
  }
}

uint64_t sub_10009C474(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_10009C530(&v6, a1 + 184);
  sub_10000801C(v9);
  v2 = v7;
  if (v7 == &v6)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    do
    {
      v4 = v2 + 1;
      v2 = v2[1];
      v3 = *(v4[1] + 32) | v3;
    }

    while (v2 != &v6);
  }

  sub_100028EB4(&v6);
  sub_1000088CC(v9);
  return v3;
}

void sub_10009C50C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_100028EB4(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void *sub_10009C530(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

BOOL sub_10009C5EC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t sub_10009C61C(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void sub_10009C628(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x18u);
}

void sub_10009C694(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t **sub_10009C6F0(void *a1, uint64_t a2)
{
  v4 = sub_100059420(&v17, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void sub_10009C96C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  length = 0;
  data = xpc_dictionary_get_data(v4, "kCBMsgArgAddressBytes", &length);
  if (length == 6)
  {
    v6 = data;
    uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSessionID");
    value = 0;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
    {
      sub_10083271C();
      if (uint64)
      {
        goto LABEL_4;
      }
    }

    else if (uint64)
    {
LABEL_4:
      v8 = sub_10009CF60(uint64, v6, &value);
LABEL_11:
      reply = xpc_dictionary_create_reply(xdict);
      if (!reply)
      {
        return;
      }

      v10 = reply;
      xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v8);
      v12 = value;
      v11 = "kCBMsgArgBTDevice";
      v9 = v10;
      goto LABEL_13;
    }

    v8 = 1;
    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
  {
    sub_1008326E8();
  }

  v9 = xpc_dictionary_create_reply(xdict);
  if (v9)
  {
    v10 = v9;
    v11 = "kCBMsgArgResult";
    v12 = 8;
LABEL_13:
    xpc_dictionary_set_uint64(v9, v11, v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

BOOL sub_10009CAD8(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCEAD8, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_1006BA258(&xmmword_100BCEAD8, &v11);
    v7 = v6[4];
    v8 = v6[5];
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    (v7)(v9, xdict);
  }

  return v5 != 0;
}

unint64_t sub_10009CBD4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL sub_10009CC80(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCE530, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_1000A20CC(&xmmword_100BCE530, &v11);
    v7 = v6[4];
    v8 = v6[5];
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    (v7)(v9, xdict);
  }

  return v5 != 0;
}

BOOL sub_10009CD7C(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCEB18, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_100724A64(&xmmword_100BCEB18, &v11);
    v7 = v6[4];
    v8 = v6[5];
    v9 = (a1 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    (v7)(v9, xdict);
  }

  return v5 != 0;
}

void sub_10009CE78(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgAddressString");
  v10 = 0;
  bytes = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100832680();
  }

  v6 = sub_10009D058(string, &bytes);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_data(v8, "kCBMsgArgAddressBytes", &bytes, 6uLL);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_10009CF60(unint64_t a1, int *a2, unint64_t *a3)
{
  if (!a2)
  {
    return 8;
  }

  v12 = *a2;
  v13 = *(a2 + 2);
  if (!v12)
  {
    v9 = 1;
    while (v9 != 6)
    {
      if (*(&v12 + v9++))
      {
        if ((v9 - 2) <= 4)
        {
          goto LABEL_3;
        }

        return 8;
      }
    }

    return 8;
  }

LABEL_3:
  if (qword_100B508F0 != -1)
  {
    sub_10083FB04();
  }

  v5 = sub_1000E6554(off_100B508E8, &v12, 1);
  if (!v5)
  {
    return 8;
  }

  v6 = v5;
  if (qword_100B508F0 != -1)
  {
    v11 = v5;
    sub_10083FB18();
    v6 = v11;
  }

  v7 = sub_10056A4C4(off_100B508E8, a1, v6);
  *a3 = v7;
  if (v7)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_10009D058(unsigned __int8 *a1, uint64_t a2)
{
  v5 = 0;
  v4 = 0;
  if (!sub_10009D0B4(&v4, a1))
  {
    return 8;
  }

  result = 0;
  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

unsigned __int8 *sub_10009D0F0(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return a1;
  }

  for (i = a1; ; ++i)
  {
    v3 = *i;
    if (v3 != 9 && v3 != 32)
    {
      break;
    }
  }

  for (j = 0; j != 6; ++j)
  {
    v5 = *i;
    if ((v5 - 48) >= 0xA)
    {
      if ((v5 - 97) >= 6)
      {
        if ((v5 - 65) > 5)
        {
          return a1;
        }

        v6 = -55;
      }

      else
      {
        v6 = -87;
      }
    }

    else
    {
      v6 = -48;
    }

    v7 = i[1];
    if ((v7 - 48) >= 0xA)
    {
      if ((v7 - 97) >= 6)
      {
        if ((v7 - 65) > 5)
        {
          return a1;
        }

        v8 = -55;
      }

      else
      {
        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    *(a2 + j) = v7 + 16 * (v6 + v5) + v8;
    v9 = i + 2;
    v10 = i[2];
    if (v10 == 58 || v10 == 45)
    {
      v9 = i + 3;
    }

    i = v9;
  }

  return v9;
}

uint64_t sub_10009D210(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, v1 + 1592);
  v2 = [*(v1 + 1584) systemLockStateSync] == 3 || objc_msgSend(*(v1 + 1584), "systemLockStateSync") == 2;
  *(v1 + 1657) = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 1656);
    v5 = *(v1 + 1657);
    *buf = 67109376;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::systemMonitor fDeviceFirstUnlocked:%d fDeviceLocked:%d", buf, 0xEu);
  }

  sub_10000801C(v7);
  sub_10009D33C(v1, *(v1 + 1657));
  return sub_1000088CC(v7);
}

void sub_10009D33C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SystemSettingsModel::systemMonitor device lock state changed:%d", buf, 8u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009D1E0;
  v5[3] = &unk_100AEF240;
  v6 = a2;
  sub_10009D440(a1 + 1184, v5);
}

void sub_10009D440(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, (a1 + 8));
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_10009D50C(uint64_t a1, char a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009D61C;
  v5[3] = &unk_100AE15D8;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10009D598(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009D8CC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_10009D61C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 385) = v2;
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::deviceLockStateChanged fDeviceLocked:%d", v5, 8u);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return sub_10009D6F0(v1);
  }

  return result;
}

uint64_t sub_10009D6F0(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_1008734AC();
  }

  v2 = *(off_100B50908 + 63);
  if (v2 == 0.0)
  {
    v3 = 0;
    v4 = 9999;
  }

  else
  {
    v4 = ((CFAbsoluteTimeGetCurrent() - v2) / 60.0);
    v3 = v4;
  }

  v5 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 383);
    v7 = *(a1 + 329);
    v8 = *(a1 + 384);
    v9 = *(a1 + 385);
    v10 = *(a1 + 386);
    v11 = *(a1 + 376);
    v13[0] = 67110656;
    v13[1] = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::startActiveScanIfNeededForGlobalTCCDialog fScreenState:%d fStackStarted:%d fDeviceFirstUnlocked:%d fDeviceLocked:%d BuddyHasNotCompleted:%d fNameSearchActiveScanCounter:%d LastActiveScanTime:%d minutes ago", v13, 0x2Cu);
  }

  if (*(a1 + 383) == 1 && *(a1 + 329) == 1 && *(a1 + 384) == 1 && (*(a1 + 385) & 1) == 0 && (*(a1 + 386) & 1) == 0 && v3 >= *(a1 + 380) && !*(a1 + 360))
  {
    sub_1007960B8(a1);
    ++*(a1 + 376);
  }

  if (*(a1 + 360) && (*(a1 + 383) != 1 || *(a1 + 385) == 1))
  {
    sub_100796320(a1);
  }

  return 0;
}

id sub_10009DA04(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 48);
  v3 = *(a1 + 440);
  if (v3 != (a1 + 448))
  {
    do
    {
      v4 = sub_10004DF60(v3 + 32);
      v5 = sub_10004EE74(a1, v4);

      if (v5)
      {
        v6 = sub_10004DF60(v3 + 32);
        [v2 addObject:v6];
      }

      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != (a1 + 448));
  }

  sub_1000088CC(v11);

  return v2;
}

uint64_t sub_10009DB3C(uint64_t a1, char **a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (qword_100B512E8 != -1)
  {
    sub_1000DF9EC();
  }

  v4 = sub_10009DF08(off_100B512E0, &v21);
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_1008635DC();
    }
  }

  else
  {
    v5 = v21;
    v6 = v22;
    if (v21 != v22)
    {
      do
      {
        *buf = *v5;
        v20 = 0;
        v7 = sub_1000BE4B4();
        v8 = *buf;
        sub_100007E30(__p, "HasTS");
        v9 = (*(*v7 + 784))(v7, v8, __p, &v20);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(*__p);
        }

        v10 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E5A58(*buf, v18);
          v11 = v18;
          if (v19 < 0)
          {
            v11 = v18[0];
          }

          *__p = 136446722;
          *&__p[4] = v11;
          v26 = 1024;
          v27 = v20;
          v28 = 1024;
          v29 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}s hasTS: %d, res: %d", __p, 0x18u);
          if (v19 < 0)
          {
            operator delete(v18[0]);
          }
        }

        if ((v20 & 1) == 0)
        {
          sub_1000C2484(a2, buf);
        }

        ++v5;
      }

      while (v5 != v6);
    }

    v18[0] = 0;
    v18[1] = 0;
    sub_100007F88(v18, a1 + 536);
    if (*(a1 + 600))
    {
      if (qword_100B508F0 != -1)
      {
        sub_100863610();
      }

      v12 = sub_1000504C8(off_100B508E8, *(a1 + 600), 0);
      sub_10000801C(v18);
      if (v12)
      {
        v13 = *a2;
        v14 = a2[1];
        if (*a2 != v14)
        {
          while (*v13 != v12)
          {
            v13 += 8;
            if (v13 == v14)
            {
              goto LABEL_37;
            }
          }
        }

        if (v13 != v14)
        {
          v15 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v12, __p);
            if (v29 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = *__p;
            }

            *buf = 136446210;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Currently unpairing device %{public}s. Don't send it as part of the paired devices list", buf, 0xCu);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(*__p);
            }

            v14 = a2[1];
          }

          if (v14 != v13 + 8)
          {
            memmove(v13, v13 + 8, v14 - (v13 + 8));
          }

          a2[1] = v14 - 8;
        }
      }
    }

LABEL_37:
    sub_1000088CC(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  return v4;
}

void sub_10009DEA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_1000088CC(&a12);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10009DF08(void *a1, uint64_t a2)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, (a1 + 3));
  v4 = a1[16];
  v5 = a1 + 17;
  if (v4 != a1 + 17)
  {
    do
    {
      v16 = *(v4 + 2);
      sub_1000C2484(a2, &v16 + 1);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v9 = a1[19];
  v10 = a1 + 20;
  if (v9 != v10)
  {
    do
    {
      v16 = *(v9 + 2);
      v11 = *v5;
      if (*v5)
      {
        do
        {
          v12 = v11[4];
          if (v16 >= v12)
          {
            if (v12 >= v16)
            {
              goto LABEL_15;
            }

            ++v11;
          }

          v11 = *v11;
        }

        while (v11);
      }

      sub_1000C2484(a2, &v16 + 1);
LABEL_15:
      v13 = v9[1];
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
          v14 = v9[2];
          v8 = *v14 == v9;
          v9 = v14;
        }

        while (!v8);
      }

      v9 = v14;
    }

    while (v14 != v10);
  }

  sub_1000088CC(v17);
  return 0;
}