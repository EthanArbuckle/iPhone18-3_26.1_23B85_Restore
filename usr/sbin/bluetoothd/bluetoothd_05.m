void sub_10005574C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61)
{
  STACK[0x200] = &a48;
  sub_100018458(&STACK[0x200]);
  STACK[0x200] = &a51;
  sub_100018458(&STACK[0x200]);
  if (__p)
  {
    a55 = __p;
    operator delete(__p);
  }

  sub_10004B61C(&a57, a58);
  sub_10004B61C(&a60, a61);

  _Unwind_Resume(a1);
}

uint64_t sub_100055E98@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(result + 120);
  v4 = *(result + 128);
  if (v3 != v4)
  {
    v5 = v3 + 56;
    do
    {
      if (*(v5 + 48) == 1)
      {
        if (sub_10000D26C(v5 - 16) || (result = sub_10000D26C(v5), result))
        {
          result = sub_100055FD8(a2, v5 - 56);
        }
      }

      v6 = v5 + 56;
      v5 += 112;
    }

    while (v6 != v4);
  }

  return result;
}

void sub_100055F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100018458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055F38@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(result + 120);
  v4 = *(result + 128);
  if (v3 != v4)
  {
    v5 = v3 + 56;
    do
    {
      if (*(v5 + 48) == 1)
      {
        result = sub_10000D26C(v5 - 16);
        if ((result & 1) == 0)
        {
          result = sub_10000D26C(v5);
          if ((result & 1) == 0)
          {
            result = sub_100055FD8(a2, v5 - 56);
          }
        }
      }

      v6 = v5 + 56;
      v5 += 112;
    }

    while (v6 != v4);
  }

  return result;
}

void sub_100055FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100018458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055FD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1000585C4(a1, a2);
  }

  else
  {
    sub_10005602C(*(a1 + 8), a2);
    result = v3 + 112;
    *(a1 + 8) = v3 + 112;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005602C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = *(a2 + 64);
  *(a1 + 56) = &off_100AE0A78;
  *(a1 + 64) = v6;
  if (v6)
  {
    sub_10000C69C(v6);
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_100056104(_Unwind_Exception *a1)
{
  *(v1 + 40) = v2;
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100056138(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1000C7698();
}

void **sub_100056194(void **a1)
{
  sub_100056250(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000561C8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_100018288(a1, a4, v8);
      v8 += 7;
      a4 += 112;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1000181EC(a1, v6);
      v6 += 112;
    }
  }
}

void sub_100056250(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 112;
    sub_1000181EC(v4, i - 112);
  }
}

void sub_100056298(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a3;
  v13 = a8;
  if (!*(a1 + 120))
  {
    goto LABEL_7;
  }

  v14 = *(a1 + 128);
  if (!v14)
  {
    goto LABEL_7;
  }

  if (!*(a1 + 136))
  {
    goto LABEL_7;
  }

  if (*(a1 + 144))
  {
    goto LABEL_7;
  }

  if (((v14[128] << 40) | (v14[129] << 32) | (v14[130] << 24) | (v14[131] << 16) | (v14[132] << 8) | v14[133]) != *(*(a4 + 8) + 200))
  {
    goto LABEL_7;
  }

  v15 = sub_100011794(a2);
  if (v15 != sub_100011794(*(a1 + 120)))
  {
    goto LABEL_7;
  }

  v16 = sub_10000C798();
  v17 = (*(*v16 + 592))(v16);
  if (v17 == 1)
  {
    v23 = *(a4 + 8);
    v24 = *(v23 + 365);
    v25 = *(v23 + 444);
    v26 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004D9B0();
      v27 = "Dropping";
      if (!(v24 | v25))
      {
        v27 = "Using";
      }

      *buf = 136316162;
      if (v34 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = *__p;
      }

      *&buf[4] = v27;
      v36 = 2112;
      v37 = v12;
      v38 = 2080;
      v39 = v28;
      v40 = 1024;
      LODWORD(v41[0]) = v25;
      WORD2(v41[0]) = 1024;
      *(v41 + 6) = v24;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Warning: BBFC: %s ADV report for %@ %s antenna:%d scanSourceCore:%d", buf, 0x2Cu);
      if (v34 < 0)
      {
        operator delete(*__p);
      }
    }

    if (!(v24 | v25))
    {
LABEL_31:
      v29 = mach_absolute_time();
      v30 = qword_100BCEAB8;
      if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
      {
        v31 = (v29 - *(a1 + 184)) * *(a1 + 176) / *(a1 + 180) / 0xF4240;
        *buf = 134217984;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Scan took:%llu ms", buf, 0xCu);
        v30 = qword_100BCEAB8;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(*(a1 + 128), buf);
        if (v38 >= 0)
        {
          v32 = buf;
        }

        else
        {
          v32 = *buf;
        }

        *__p = 136446210;
        *&__p[4] = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Found device %{public}s ", __p, 0xCu);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*buf);
        }
      }

      *(a1 + 232) = 1;
      operator new();
    }
  }

  else
  {
    if (v17 != 2)
    {
      goto LABEL_31;
    }

    v18 = *(*(a4 + 8) + 369);
    v19 = qword_100BCEAB8;
    if (os_log_type_enabled(qword_100BCEAB8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004D9B0();
      v20 = "Using";
      if (v34 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = *__p;
      }

      if (v18)
      {
        v20 = "Dropping";
      }

      *buf = 136315906;
      *&buf[4] = v20;
      v36 = 2112;
      v37 = v12;
      v22 = "Y";
      v38 = 2080;
      if (!v18)
      {
        v22 = "N";
      }

      v39 = v21;
      v40 = 2080;
      v41[0] = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: BBFC: %s ADV report for %@ %s coexDenied:%s", buf, 0x2Au);
      if (v34 < 0)
      {
        operator delete(*__p);
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_7:
}

void sub_100056C54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a3;
  v13 = a8;
  if (a2 && *(a1 + 80) == a2)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    sub_1000575BC(&v65, *(a4 + 8) + 112);
    if (v67)
    {
      v63 = 0;
      v64 = 0;
      __dst = xmmword_1008A4DDC;
      v77 = 0;
      sub_10000D03C(buf, &__dst);
      v14 = *(sub_10050E0CC(&v65, buf) + 8);
      v63 = &off_100AE0A78;
      v64 = v14;
      if (v14)
      {
        sub_10000C69C(v14);
      }

      if (sub_10000C5E0(&v63) == 20)
      {
        v15 = *(a4 + 8);
        if (*(v15 + 370) == 1)
        {
          v16 = sub_10000E92C();
          if ((*(*v16 + 176))(v16) && os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEBUG))
          {
            sub_10083D1F8();
          }

          v17 = *(a4 + 8);
          v18 = *(v17 + 396);
          v53 = *(v17 + 397);
          v19 = *(a1 + 208);
          if (v18 > v19)
          {
            LOBYTE(v19) = v18;
          }

          *(a1 + 208) = v19;
          v54 = [NSData dataWithBytes:sub_10000C5F8(&v63) length:16];
          v20 = [NSData dataWithBytes:sub_10000C5F8(&v63) + 16 length:4];
          v21 = *(a4 + 8);
          v22 = *(v21 + 384) - *(v21 + 376);
          if (v22 <= 0x3C)
          {
            v23 = 60;
          }

          else
          {
            v23 = v22;
          }

          v52 = v20;
          v24 = sub_100725680(v21, *&v22);
          v25 = *(*(a4 + 8) + 384);
          v26 = sub_10000E92C();
          if ((*(*v26 + 176))(v26))
          {
            v27 = qword_100BCEA28;
            if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_DEBUG))
            {
              v48 = sub_100063D0C();
              v49 = *(a4 + 8);
              v50 = kCFAbsoluteTimeIntervalSince1970 + *(v49 + 376);
              v51 = kCFAbsoluteTimeIntervalSince1970 + *(v49 + 384);
              *buf = 138414594;
              *&buf[4] = v12;
              *&buf[12] = 2112;
              *&buf[14] = v48;
              *&buf[22] = 2112;
              *v70 = v54;
              *&v70[8] = 2112;
              *&v70[10] = v52;
              *&v70[18] = 1024;
              *v71 = v53;
              *&v71[4] = 1024;
              *&v71[6] = v18;
              v72 = 2048;
              *v73 = v50;
              *&v73[8] = 2048;
              *v74 = v51;
              *&v74[8] = 1024;
              *v75 = v23;
              *&v75[4] = 1024;
              *&v75[6] = v24;
              _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "cached device %@ address:%@ rpi:%@ aem:%@ avgRSSI:%d maxRSSI:%d firstTimestamp:%f lastTimestamp:%f deltaSinceLastStop:%d sec reports:%hu", buf, 0x56u);
            }
          }

          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_10050E1D4;
          v55[3] = &unk_100AFB0A8;
          v28 = v54;
          v56 = v28;
          v29 = v52;
          v57 = v29;
          v61 = v53;
          v62 = v18;
          v59 = v24;
          v58 = v25 + kCFAbsoluteTimeIntervalSince1970;
          v60 = v23;
          sub_10050E108(a1 + 176, v55);
        }

        else
        {
          v30 = *(v15 + 216);
          if (v30 < 1)
          {
            __dst = 0uLL;
            v77 = 0;
            v34 = sub_10000C5F8(&v63);
            v35 = sub_10000C5E0(&v63);
            memcpy(&__dst, v34, v35);
            *buf = &__dst;
            v36 = sub_1005137DC(a1 + 48, &__dst);
            sub_100513984(v36 + 56, a4);
            v37 = sub_10000E92C();
            if ((*(*v37 + 184))(v37))
            {
              v38 = qword_100BCEA28;
              if (os_log_type_enabled(qword_100BCEA28, OS_LOG_TYPE_INFO))
              {
                v39 = sub_100063D0C();
                v40 = sub_10000C5F8(&v63);
                v41 = sub_10000C5F8(&v63);
                v42 = *(a4 + 8);
                v43 = *(v42 + 216);
                v44 = *(v42 + 217);
                v45 = *(v42 + 240);
                p_dst = &__dst;
                v46 = sub_1005137DC(a1 + 48, &__dst);
                v47 = (*(v46 + 64) - *(v46 + 56)) >> 4;
                *buf = 138414594;
                *&buf[4] = v12;
                *&buf[12] = 2112;
                *&buf[14] = v39;
                *&buf[22] = 1040;
                *v70 = 16;
                *&v70[4] = 2096;
                *&v70[6] = v40;
                *&v70[14] = 1040;
                *&v70[16] = 4;
                *v71 = 2096;
                *&v71[2] = v41 + 16;
                v72 = 1024;
                *v73 = v43;
                *&v73[4] = 1024;
                *&v73[6] = v44;
                *v74 = 2048;
                *&v74[2] = v45 + kCFAbsoluteTimeIntervalSince1970;
                *v75 = 2048;
                *&v75[2] = v47;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "device %@ address:%@ rpi:%.16P aem:%.4P rssi:%d saturated:%d timestamp:%f totalReports:%lu", buf, 0x56u);
              }
            }
          }

          else
          {
            v31 = *(a1 + 274);
            v32 = 0xFFFF;
            if (v31 != 0xFFFF)
            {
              v32 = v31 + 1;
              *(a1 + 274) = v31 + 1;
            }

            v33 = qword_100BCEA18;
            if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109634;
              *&buf[4] = v30;
              *&buf[8] = 2112;
              *&buf[10] = v12;
              *&buf[18] = 1024;
              *&buf[20] = v32;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Ignoring invalid RSSI level (%d) received from device %@ (fInvalidRSSIReportCounter:%d)", buf, 0x18u);
            }
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10083D184();
      }

      v63 = &off_100AE0A78;
      if (v64)
      {
        sub_10000C808(v64);
      }
    }

    sub_10004CE24(&v65, v66);
  }
}

void sub_100057304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, atomic_uint *a21, char a22, void *a23)
{
  if (a21)
  {
    sub_10000C808(a21);
  }

  sub_10004CE24(&a22, a23);

  _Unwind_Resume(a1);
}

void sub_1000573B8(uint64_t a1, id a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a3;
  v13 = a8;
  v14 = *(a1 + 8);
  v15 = v14;
  if (!a2 || [v14 sessionHandle] == a2)
  {
    if (v12)
    {
      *(a1 + 24) = 1;
      sub_100057994(a1, v12, a4);
    }

    else
    {
      v16 = *(*(a4 + 8) + 305);
      v17 = *(a1 + 16);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001384A0;
      v18[3] = &unk_100AE1750;
      v19 = v16;
      v18[4] = v15;
      dispatch_async(v17, v18);
    }
  }
}

uint64_t sub_1000574D8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  if (v2 == v3)
  {
    return 0;
  }

  while (1)
  {
    if (*(v2 + 104) == 1)
    {
      v6 = *(v2 + 20);
      v7 = *(v2 + 36);
      if (sub_10004E15C(a2, &v6))
      {
        break;
      }
    }

    v2 += 112;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100057584()
{
  if (qword_100B6D3F0 != -1)
  {
    sub_100826FBC();
  }

  return byte_100B6D3EA;
}

void *sub_1000575BC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10005870C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100057614(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  sub_1000534F0(*(a1 + 8), __p);
  if (__p[1] == __p[0])
  {
    v10 = *(a1 + 8);
    v12 = *(v10 + 56);
    v11 = *(v10 + 64);
    if (__p[1])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11 == v12)
    {
      return 0;
    }
  }

  else if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v13 = *(a3 + 8);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  sub_1000534F0(*(a1 + 8), &v32);
  if (*(*(a3 + 8) + 72) != *(*(a3 + 8) + 64))
  {
    v14 = sub_100099F20(v14, a2, &v32, (*(a3 + 8) + 64));
    if (v14)
    {
      goto LABEL_22;
    }
  }

  if (v13[16])
  {
    __p[0] = 0;
    __p[1] = 0;
    v38[0] = 0;
    v15 = v13[14];
    v16 = (v13 + 15);
    if (v15 != v16)
    {
      do
      {
        sub_10000CDB8(__p, v15 + 2);
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

        v15 = v18;
      }

      while (v18 != v16);
    }

    v20 = sub_100099F20(v14, a2, &v32, __p);
    v14 = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v20)
    {
      goto LABEL_22;
    }
  }

  v21 = *(a3 + 8);
  if (*(v21 + 96) != *(v21 + 88))
  {
    if (sub_100099F20(v14, a2, &v32, (v21 + 88)))
    {
      goto LABEL_22;
    }

    v21 = *(a3 + 8);
  }

  v23 = sub_10000C5E0(v21 + 48);
  v24 = sub_10000C5F8(*(a3 + 8) + 48);
  if (v23 < 3 || *v24 != 76 || !sub_10004E668(a1, v24, v23, a4, &v31))
  {
    v27 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
    {
      *__p = 0u;
      memset(v38, 0, 21);
      uuid_unparse_upper(a2, __p);
      sub_100007E30(v29, __p);
      sub_1008777CC(__p, v29, buf, v27);
    }

    v22 = 0;
    goto LABEL_39;
  }

  v25 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
  {
    *__p = 0u;
    memset(v38, 0, 21);
    uuid_unparse_upper(a2, __p);
    sub_100007E30(v29, __p);
    v26 = v30 >= 0 ? v29 : v29[0];
    *buf = 136446210;
    v36 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Device %{public}s matched MFG data", buf, 0xCu);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (*(*(a1 + 8) + 1) == 1)
  {
    *a5 = 1;
  }

LABEL_22:
  v22 = 1;
LABEL_39:
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  return v22;
}

void sub_10005793C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100057994(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(CBDevice);
  v7 = [v5 UUIDString];
  [v6 setIdentifier:v7];

  if (*(*(a3 + 8) + 305))
  {
    v8 = 2048;
  }

  else
  {
    v8 = 2;
  }

  [v6 setInternalFlags:v8];
  v9 = *(a3 + 8);
  if (*(v9 + 306) == 1)
  {
    [v6 setInternalFlags:{objc_msgSend(v6, "internalFlags") | 0x1000}];
    v9 = *(a3 + 8);
  }

  if (*(v9 + 40))
  {
    [v6 setAppearanceValue:?];
    v9 = *(a3 + 8);
  }

  v10 = *(v9 + 144);
  v73 = &off_100AE0A78;
  v74 = v10;
  if (v10)
  {
    sub_10000C69C(v10);
  }

  v11 = sub_10000C5F8(&v73);
  if (sub_10000C5E0(&v73) == 7)
  {
    v12 = [[NSData alloc] initWithBytes:v11 + 1 length:6];
    [v6 setBleAddressData:v12];
  }

  [v6 setBleAdvertisementTimestamp:*(*(a3 + 8) + 240)];
  [v6 setBleAdvertisementTimestampMachContinuous:*(*(a3 + 8) + 248)];
  v13 = *(*(a3 + 8) + 56);
  v71 = &off_100AE0A78;
  v72 = v13;
  if (v13)
  {
    sub_10000C69C(v13);
  }

  v14 = sub_10000C5F8(&v71);
  if (v14)
  {
    v15 = [[NSData alloc] initWithBytes:v14 length:sub_10000C5E0(&v71)];
    [v6 setBleAppleManufacturerData:v15];
  }

  [v6 setBleChannel:{*(*(a3 + 8) + 219), &off_100AE0A78}];
  v16 = *(*(a3 + 8) + 216);
  if (v16 == 127)
  {
    LOBYTE(v16) = 0;
  }

  [v6 setBleRSSI:v16];
  v17 = *(*(a3 + 8) + 200);
  if (v17)
  {
    LOBYTE(v67) = WORD2(*(*(a3 + 8) + 200)) >> 8;
    BYTE1(v67) = BYTE4(v17);
    BYTE2(v67) = BYTE3(v17);
    BYTE3(v67) = BYTE2(v17);
    BYTE4(v67) = BYTE1(v17);
    BYTE5(v67) = v17;
    v18 = [[NSData alloc] initWithBytes:&v67 length:6];
    [v6 setBtAddressData:v18];
  }

  v19 = [v6 deviceFlags];
  if (qword_100B508C0 != -1)
  {
    sub_10080AB88();
  }

  if (sub_10004EE74(off_100B508B8, v5))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10080AC24();
    }

    v20 = off_100B508C8;
    sub_100007E30(__p, "_CTKD_");
    if (sub_10004EB40(v20, v5, __p))
    {
      v21 = 0x40000000000;
    }

    else
    {
      v21 = 0;
    }

    if (v70 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v21 = 0x40000000000;
  }

  if (v19 != v21)
  {
    [v6 setDeviceFlags:v21];
  }

  v67 = 0;
  v68[0] = 0;
  v68[1] = 0;
  sub_1000575BC(&v67, *(a3 + 8) + 112);
  v77 = xmmword_1008A4EE4;
  LODWORD(v78) = -815610143;
  sub_10000D03C(&v81, &v77);
  v22 = sub_100058794(&v67, &v81);
  if (v68 != v22)
  {
    v23 = *(v22 + 64);
    v81.n128_u64[0] = &off_100AE0A78;
    v81.n128_u64[1] = v23;
    if (v23)
    {
      sub_10000C69C(v23);
    }

    v24 = [NSData alloc];
    v25 = sub_10000C5F8(&v81);
    v26 = [v24 initWithBytes:v25 length:sub_10000C5E0(&v81)];
    [v6 setDockKitAccessoryPayloadData:v26];

    v81.n128_u64[0] = &off_100AE0A78;
    if (v81.n128_u64[1])
    {
      sub_10000C808(v81.n128_u64[1]);
    }
  }

  v77 = xmmword_1008A4F48;
  LODWORD(v78) = 0;
  sub_10000D03C(&v81, &v77);
  if (v68 != sub_100058794(&v67, &v81))
  {
    v27 = v6;
    v28 = [v6 discoveryTypesInternalPtr];
    v28[3] |= 0x20u;
  }

  v77 = xmmword_1008A2BF0;
  LODWORD(v78) = 0;
  sub_10000D03C(&v81, &v77);
  v29 = sub_100058794(&v67, &v81);
  if (v68 != v29)
  {
    v30 = *(v29 + 64);
    v81.n128_u64[0] = &off_100AE0A78;
    v81.n128_u64[1] = v30;
    if (v30)
    {
      sub_10000C69C(v30);
    }

    v31 = [NSData alloc];
    v32 = sub_10000C5F8(&v81);
    v33 = [v31 initWithBytes:v32 length:sub_10000C5E0(&v81)];
    [v6 setFidoPayloadData:v33];

    v81.n128_u64[0] = &off_100AE0A78;
    if (v81.n128_u64[1])
    {
      sub_10000C808(v81.n128_u64[1]);
    }
  }

  v81 = 0uLL;
  v82 = 0;
  sub_10000CB74(&v81, (*(a3 + 8) + 64));
  v79 = xmmword_1008A2C04;
  v80 = 0;
  sub_10000D03C(&v77, &v79);
  v34 = sub_100058794(&v67, &v77);
  if (v68 == v34)
  {
    v40 = v81.n128_u64[1];
    v39 = v81.n128_u64[0];
    if (v81.n128_u64[0] != v81.n128_u64[1])
    {
      while (1)
      {
        LODWORD(v78) = 0;
        v77 = xmmword_1008A2C04;
        if (sub_10004E15C(v39, &v77))
        {
          break;
        }

        v39 += 20;
        if (v39 == v40)
        {
          v39 = v40;
          break;
        }
      }

      v40 = v81.n128_u64[1];
    }

    if (v39 != v40)
    {
      v41 = +[NSData data];
      [v6 setGfpPayloadData:v41];
    }
  }

  else
  {
    v35 = *(v34 + 64);
    *&v77 = &off_100AE0A78;
    *(&v77 + 1) = v35;
    if (v35)
    {
      sub_10000C69C(v35);
    }

    v36 = [NSData alloc];
    v37 = sub_10000C5F8(&v77);
    v38 = [v36 initWithBytes:v37 length:sub_10000C5E0(&v77)];
    [v6 setGfpPayloadData:v38];

    *&v77 = &off_100AE0A78;
    if (*(&v77 + 1))
    {
      sub_10000C808(*(&v77 + 1));
    }
  }

  v43 = v81.n128_u64[1];
  v42 = v81.n128_u64[0];
  if (v81.n128_u64[0] != v81.n128_u64[1])
  {
    while (1)
    {
      v77 = xmmword_1008A4D28;
      LODWORD(v78) = 0;
      if (sub_10004E15C(v42, &v77))
      {
        break;
      }

      v42 += 20;
      if (v42 == v43)
      {
        v42 = v43;
        break;
      }
    }

    v43 = v81.n128_u64[1];
  }

  if (v42 != v43)
  {
    [v6 setDiscoveryFlags:{objc_msgSend(v6, "discoveryFlags") | 0x2000000000000}];
  }

  v44 = byte_100B55320;
  v45 = [v6 internalFlags];
  if (v44)
  {
    v46 = 0x20000;
  }

  else
  {
    v46 = 0;
  }

  [v6 setInternalFlags:v46 | v45];
  v77 = 0uLL;
  v78 = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10080AC24();
  }

  sub_10004FFDC(off_100B508C8, v5, &v77);
  v47 = HIBYTE(v78);
  if (v78 < 0)
  {
    v47 = *(&v77 + 1);
  }

  if (v47)
  {
    v48 = [NSString alloc];
    if (v78 >= 0)
    {
      v49 = &v77;
    }

    else
    {
      v49 = v77;
    }

    v50 = [v48 initWithUTF8String:v49];
    [v6 setLeAdvName:v50];
  }

  v75 = xmmword_1008A4DF0;
  v76 = 0;
  sub_10000D03C(&v79, &v75);
  v51 = sub_100058794(&v67, &v79);
  if (v68 != v51)
  {
    v52 = *(v51 + 64);
    *&v79 = &off_100AE0A78;
    *(&v79 + 1) = v52;
    if (v52)
    {
      sub_10000C69C(v52);
    }

    v53 = [NSData alloc];
    v54 = sub_10000C5F8(&v79);
    v55 = [v53 initWithBytes:v54 length:sub_10000C5E0(&v79)];
    [v6 setProximityServiceData:v55];

    *&v79 = &off_100AE0A78;
    if (*(&v79 + 1))
    {
      sub_10000C808(*(&v79 + 1));
    }
  }

  v75 = xmmword_1008A2C18;
  v76 = 0;
  sub_10000D03C(&v79, &v75);
  v56 = sub_100058794(&v67, &v79);
  if (v68 != v56)
  {
    v57 = *(v56 + 64);
    *&v79 = &off_100AE0A78;
    *(&v79 + 1) = v57;
    if (v57)
    {
      sub_10000C69C(v57);
    }

    v58 = [NSData alloc];
    v59 = sub_10000C5F8(&v79);
    v60 = [v58 initWithBytes:v59 length:sub_10000C5E0(&v79)];
    [v6 setSafetyAlertsSegmentServiceData:v60];

    [v6 setInternalFlags:{objc_msgSend(v6, "internalFlags") | 0x4000}];
    *&v79 = &off_100AE0A78;
    if (*(&v79 + 1))
    {
      sub_10000C808(*(&v79 + 1));
    }
  }

  v61 = *(*(a3 + 8) + 208);
  if (v61)
  {
    LOBYTE(v79) = WORD2(*(*(a3 + 8) + 208)) >> 8;
    BYTE1(v79) = BYTE4(v61);
    BYTE2(v79) = BYTE3(v61);
    BYTE3(v79) = BYTE2(v61);
    BYTE4(v79) = BYTE1(v61);
    BYTE5(v79) = v61;
    v62 = [[NSData alloc] initWithBytes:&v79 length:6];
    [v6 setTxAddressData:v62];
  }

  v63 = *(a1 + 8);
  v64 = *(a1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046200;
  block[3] = &unk_100AE0B60;
  block[4] = v6;
  block[5] = v63;
  dispatch_async(v64, block);

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }

  if (v81.n128_u64[0])
  {
    v81.n128_u64[1] = v81.n128_u64[0];
    operator delete(v81.n128_u64[0]);
  }

  sub_10004CE24(&v67, v68[0]);
  v71 = v65;
  if (v72)
  {
    sub_10000C808(v72);
  }

  v73 = &off_100AE0A78;
  if (v74)
  {
    sub_10000C808(v74);
  }
}

void sub_1000583C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, atomic_uint *a29, uint64_t a30, atomic_uint *a31)
{
  v36 = *(v34 - 120);
  if (v36)
  {
    *(v34 - 112) = v36;
    operator delete(v36);
  }

  sub_10004CE24(&a19, a20);
  a28 = a9;
  if (a29)
  {
    sub_10000C808(a29);
  }

  a30 = a10;
  if (a31)
  {
    sub_10000C808(a31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000585C4(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_1000C7698();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100056138(a1, v6);
  }

  v13 = 0;
  v14 = 112 * v2;
  sub_10005602C(112 * v2, a2);
  v15 = (112 * v2 + 112);
  v7 = *(a1 + 8);
  v8 = 112 * v2 + *a1 - v7;
  sub_1000561C8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100056194(&v13);
  return v12;
}

void sub_1000586F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100056194(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005870C(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10009A25C(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_100058794(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_10007C3A8((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_10007C3A8(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_10005881C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
  }

  else
  {
    sub_100057994(a1, v5, a3);
  }
}

void sub_10005889C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10005889C(a1, *a2);
    sub_10005889C(a1, a2[1]);
    sub_1006E6664((a2 + 4));

    operator delete(a2);
  }
}

void sub_1000588F8(uint64_t a1)
{
  *(a1 + 40) = &off_100AE0AB8;
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

id sub_100058928()
{
  if (qword_100B55318 != -1)
  {
    sub_100809CFC();
  }

  v1 = qword_100B55300;

  return v1;
}

void sub_100058F48(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 80) <= 0)
  {
    v14 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_FAULT))
    {
      sub_10082181C(a1, v14);
    }

    return;
  }

  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v6 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v6 = *v6;
    }

    v17 = 136446466;
    v18 = string;
    v19 = 2082;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received MBFramework XPC message %{public}s from session %{public}s", &v17, 0x16u);
  }

  if (!string)
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (!reply)
    {
      return;
    }

    v12 = reply;
    v13 = 19;
    goto LABEL_25;
  }

  if (qword_100B54110 != -1)
  {
    sub_10082176C();
  }

  sub_1000591F4(qword_100B54108, string, *(a1 + 40));
  v7 = *(a1 + 128);
  if (v7 == (a1 + 136))
  {
LABEL_17:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100821794();
    }

    reply = xpc_dictionary_create_reply(xdict);
    if (!reply)
    {
      return;
    }

    v12 = reply;
    v13 = 2;
LABEL_25:
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v13);
    xpc_connection_send_message(*(a1 + 16), v12);
    xpc_release(v12);
    return;
  }

  while (!(**v7[4])(v7[4], xdict))
  {
    v8 = v7[1];
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
        v9 = v7[2];
        v10 = *v9 == v7;
        v7 = v9;
      }

      while (!v10);
    }

    v7 = v9;
    if (v9 == (a1 + 136))
    {
      goto LABEL_17;
    }
  }

  v15 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v16 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v16 = *v16;
    }

    v17 = 136446466;
    v18 = string;
    v19 = 2082;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Handled MBFramework XPC message %{public}s from session %{public}s", &v17, 0x16u);
  }
}

void sub_1000591F4(uint64_t a1, char *a2, int a3)
{
  v6 = sub_10000E92C();
  if ((*(*v6 + 8))(v6))
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x4812000000;
    v10[3] = sub_10004243C;
    v10[4] = sub_10004268C;
    v10[5] = "";
    __p[1] = 0;
    v12 = 0;
    __p[0] = 0;
    sub_100007E30(__p, a2);
    v7 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000ADAC8;
    v8[3] = &unk_100B02EE8;
    v9 = a3;
    v8[4] = v10;
    v8[5] = a1;
    dispatch_async(v7, v8);
    _Block_object_dispose(v10, 8);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

BOOL sub_100059324(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCE580, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_10009C6F0(&xmmword_100BCE580, &v11);
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

unint64_t sub_100059420(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_100059748(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_10009CBD4(a2, a3);
  }

  else
  {
    return sub_100487378(a2, a3);
  }
}

uint64_t **sub_100059628(void *a1, uint64_t a2)
{
  v4 = sub_100059420(&v17, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t sub_100059748(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_100059808(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "kCBMsgId");
  v11 = string;
  v12 = strlen(string);
  v5 = sub_100059628(&xmmword_100BCE558, &v11);
  if (v5)
  {
    v11 = string;
    v12 = strlen(string);
    v13 = &v11;
    v6 = sub_100059904(&xmmword_100BCE558, &v11);
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

uint64_t **sub_100059904(void *a1, uint64_t a2)
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

void sub_100059B80(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(v4, "kCBMsgArgBTPowerModule");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FE14();
    if (uint64)
    {
      goto LABEL_3;
    }

LABEL_7:
    uint64 = 1;
    goto LABEL_8;
  }

  if (!uint64)
  {
    goto LABEL_7;
  }

LABEL_3:
  LODWORD(uint64) = sub_100059D3C(uint64, v6, &value);
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_10082FE7C(&value, v7);
  }

  uint64 = uint64;
LABEL_8:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", uint64);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgBTPowerMode", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

uint64_t sub_100059CB8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 104);
  if (a2)
  {
    v4 = *(v3 + 168);
    v5 = *(v3 + 176);
    if (v4 != v5)
    {
      while (*v4 != a2)
      {
        if (++v4 == v5)
        {
          v4 = *(v3 + 176);
          break;
        }
      }
    }

    if (v4 == v5)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  sub_1000088CC(v7);
  return v3;
}

uint64_t sub_100059D3C(uint64_t a1, uint64_t a2, int *a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v5 = sub_100059CB8(off_100B50898, a1);
  if (!v5)
  {
    return 7;
  }

  v10 = 0;
  v6 = sub_100059E64(v5, &v10);
  if (!v6)
  {
    if (v10 > 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0;
      *a3 = dword_1008A9E30[v10];
    }
  }

  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    *buf = 67109120;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning bluetooth power state: %x", buf, 8u);
  }

  return v6;
}

uint64_t sub_100059E64(uint64_t a1, _DWORD *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  *a2 = sub_10000EE78(off_100B512C0);
  return 0;
}

void sub_100059EB0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLocalDeviceID");
  v6 = xpc_dictionary_get_uint64(value, "kCBMsgArgReset");
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830A18();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v7 = sub_100059FE8(uint64, v6, v10);
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v7);
    xpc_dictionary_set_data(v9, "kCBMsgArgData", v10, 0xF8uLL);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

uint64_t sub_100059FE8(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v6 = sub_100059CB8(off_100B50898, a1);
  if (v6)
  {

    return sub_10005A0A0(v6, a1, a2 != 0, a3);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008401B0();
    }

    return 7;
  }
}

uint64_t sub_10005A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 512);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): readEnhancedPowerProfileStatistics", v16, 2u);
  }

  v9 = *(a1 + 576);
  if (v9 && *v9 == a2)
  {
    v13 = sub_100017E6C();
    if ((*(*v13 + 184))(v13, a3))
    {
      v14 = sub_10000C7D0();
      v11 = (*(*v14 + 1208))(v14, a3, a4);
    }

    else
    {
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readEnhancedPowerProfileStatistics) can't read power profile stats: BT_ERROR_LOCAL_DEVICE_NOT_READY", v16, 2u);
      }

      v11 = 205;
    }
  }

  else
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readEnhancedPowerProfileStatistics) BT_ERROR_INVALID_HANDLE", v16, 2u);
    }

    v11 = 7;
  }

  sub_1000088CC(v17);
  return v11;
}

void sub_10005A24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10005A260(uint64_t a1, int a2)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 1592);
  *(a1 + 1440) = CFAbsoluteTimeGetCurrent();
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 1440);
    *buf = 134217984;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): current timestamp: %f", buf, 0xCu);
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 1432);
    *buf = 134217984;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): previous timestamp: %f", buf, 0xCu);
  }

  v8 = *(a1 + 1440);
  v9 = *(a1 + 1432);
  v10 = sub_10000C798();
  v11 = v8 - v9;
  v12 = (*(*v10 + 496))(v10);
  if (v11 <= v12)
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): can't read power stats right now", buf, 2u);
    }

    if (*(a1 + 1440) < *(a1 + 1432))
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 1440);
        v22 = *(a1 + 1432);
        *buf = 134218240;
        v29 = v21;
        v30 = 2048;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): current timestamp: %f is less than previous time stamp: %f", buf, 0x16u);
      }

      *(a1 + 1432) = *(a1 + 1440);
    }

    v23 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 1440);
      *buf = 134217984;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): end current timestamp: %f", buf, 0xCu);
    }

    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 1432);
      *buf = 134217984;
      v29 = v25;
      goto LABEL_23;
    }
  }

  else
  {
    if (a2)
    {
      *(a1 + 1432) = *(a1 + 1440);
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 1432);
        *buf = 134217984;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (reset) previous timestamp: %f", buf, 0xCu);
      }
    }

    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 1440);
      *buf = 134217984;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): end current timestamp: %f", buf, 0xCu);
    }

    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 1432);
      *buf = 134217984;
      v29 = v18;
LABEL_23:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): end previous timestamp: %f", buf, 0xCu);
    }
  }

  sub_1000088CC(v27);
  return v11 > v12;
}

uint64_t sub_10005A628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47[0] = 0;
  v47[1] = 0;
  sub_100007F88(v47, a1 + 72);
  sub_10000C7D0();
  v5 = sub_10005AB50();
  v6 = sub_10000C7D0();
  v7 = sub_10005AA8C(v6);
  sub_10000C7D0();
  v8 = sub_10005ACCC();
  v9 = sub_10000C7D0();
  v10 = sub_10005ACF0(v9);
  v11 = v10;
  if (v5)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v7)
  {
    v12 = 3;
  }

  if (v8)
  {
    v12 = 4;
  }

  if (v10)
  {
    v13 = 5;
  }

  else
  {
    v13 = v12;
  }

  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_100020304(a1, 191);
    *buf = 136446466;
    v49 = v15;
    v50 = 1024;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): Sending: %{public}s, version=%d", buf, 0x12u);
  }

  if (sub_100020164(a1, 191))
  {
    v46 = 0;
    sub_1000216B4(&v46);
    v16 = sub_10005B070();
    sub_100022214(&v46);
    if (v16)
    {
      goto LABEL_18;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100826FD0();
    }

    if (sub_100021BDC(off_100B50A98, 0xBFu))
    {
      goto LABEL_18;
    }

    v19 = xmmword_100B6D540;
    *a3 = xmmword_100B6D530;
    *(a3 + 16) = v19;
    v20 = xmmword_100B6D560;
    *(a3 + 32) = xmmword_100B6D550;
    *(a3 + 48) = v20;
    v21 = xmmword_100B6D580;
    *(a3 + 64) = xmmword_100B6D570;
    *(a3 + 80) = v21;
    v22 = xmmword_100B6D5A0;
    *(a3 + 96) = xmmword_100B6D590;
    *(a3 + 112) = v22;
    *(a3 + 128) = xmmword_100B6D5B0;
    *(a3 + 144) = xmmword_100B6D5C0;
    v23 = DWORD2(xmmword_100B6D5C0);
    v24 = HIDWORD(xmmword_100B6D5C0);
    if (!v5)
    {
      v23 = 0;
      v24 = 0;
    }

    *(a3 + 160) = v23;
    *(a3 + 164) = v24;
    v25 = dword_100B6D5D0;
    v26 = unk_100B6D5D4;
    if (!v5)
    {
      v25 = 0;
      v26 = 0;
    }

    *(a3 + 168) = v25;
    *(a3 + 172) = v26;
    v27 = dword_100B6D5D8;
    v28 = unk_100B6D5DC;
    if (!v7)
    {
      v28 = 0;
    }

    v29 = xmmword_100B6D5E0;
    v30 = DWORD1(xmmword_100B6D5E0);
    if (!v7)
    {
      v29 = 0;
      v30 = 0;
    }

    *(a3 + 184) = v29;
    *(a3 + 188) = v30;
    v31 = DWORD2(xmmword_100B6D5E0);
    v32 = HIDWORD(xmmword_100B6D5E0);
    if (!v7)
    {
      v31 = 0;
      v32 = 0;
    }

    *(a3 + 192) = v31;
    *(a3 + 196) = v32;
    v33 = dword_100B6D5F0;
    v34 = unk_100B6D5F4;
    if (!v8)
    {
      v33 = 0;
      v34 = 0;
    }

    *(a3 + 200) = v33;
    *(a3 + 204) = v34;
    v35 = dword_100B6D5F8;
    v36 = unk_100B6D5FC;
    if (!v11)
    {
      v35 = 0;
      v36 = 0;
    }

    *(a3 + 216) = v35;
    *(a3 + 220) = v36;
    v37 = xmmword_100B6D600;
    if (!v11)
    {
      v37 = 0;
    }

    *(a3 + 224) = v37;
    v38 = WORD2(xmmword_100B6D600);
    if (!v11)
    {
      v38 = 0;
    }

    *(a3 + 226) = v38;
    v39 = WORD4(xmmword_100B6D600);
    if (!v11)
    {
      v39 = 0;
    }

    *(a3 + 228) = v39;
    if (!v11)
    {
      v27 = 0;
    }

    *(a3 + 176) = v27;
    *(a3 + 180) = v28;
    v41 = qword_100B6D610;
    v40 = unk_100B6D618;
    if (!v11)
    {
      v41 = 0;
      v40 = 0;
    }

    *(a3 + 232) = v41;
    *(a3 + 240) = v40;
    if (!sub_100020164(a1, 192))
    {
      v17 = 0;
      goto LABEL_19;
    }

    v42 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v43 = sub_100020304(a1, 192);
      *buf = 136446210;
      v49 = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): Sending: %{public}s", buf, 0xCu);
    }

    sub_1000618AC(&v46);
    v44 = sub_1000618B8();
    sub_100022214(&v46);
    if (v44)
    {
      goto LABEL_18;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100826FD0();
    }

    if (sub_100021BDC(off_100B50A98, 0xC0u))
    {
LABEL_18:
      v17 = 1;
    }

    else
    {
      v17 = 0;
      v45 = *(&xmmword_100B6D420 + 1);
      *(a3 + 152) = xmmword_100B6D420;
      *(a3 + 208) = v45;
    }

LABEL_19:
    sub_100022684(a1, 0xBFu);
    sub_100022684(a1, 0xC0u);
    sub_10002249C(&v46);
    goto LABEL_23;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008279C4();
  }

  sub_100022684(a1, 0xBFu);
  sub_100022684(a1, 0xC0u);
  v17 = 2;
LABEL_23:
  sub_1000088CC(v47);
  return v17;
}

void sub_10005AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_10005AA8C(uint64_t a1)
{
  if ((*(sub_10000C7D0() + 800) - 22) > 0x7B9)
  {
    return 0;
  }

  (*(*a1 + 16))(v4, a1);
  if (v5 < 0)
  {
    if (v4[1] == 2)
    {
      v2 = bswap32(*v4[0]);
      operator delete(v4[0]);
      if (HIWORD(v2) == 17200)
      {
        return 0;
      }
    }

    else
    {
      operator delete(v4[0]);
    }
  }

  else if (v5 == 2 && bswap32(LOWORD(v4[0])) >> 16 == 17200)
  {
    return 0;
  }

  return 1;
}

void sub_10005AB78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_100B6D388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6D388))
  {
    sub_100007E30(&xmmword_100B6D370, "");
    __cxa_atexit(&std::string::~string, &xmmword_100B6D370, &_mh_execute_header);
    __cxa_guard_release(&qword_100B6D388);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D1FCC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D390 != -1)
  {
    dispatch_once(&qword_100B6D390, block);
  }

  if (byte_100B6D387 < 0)
  {
    sub_100008904(a2, xmmword_100B6D370, *(&xmmword_100B6D370 + 1));
  }

  else
  {
    *a2 = xmmword_100B6D370;
    *(a2 + 16) = unk_100B6D380;
  }
}

uint64_t sub_10005ACF0(uint64_t a1)
{
  v2 = *(sub_10000C7D0() + 800);
  if ((v2 - 3000) < 0x3E8)
  {
    return 0;
  }

  if ((v2 - 1) <= 0x7CE)
  {
    (*(*a1 + 24))(v11, a1);
    if (v12 < 0)
    {
      if (v11[1] != 2)
      {
        goto LABEL_10;
      }

      v4 = v11[0];
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_10;
      }

      v4 = v11;
    }

    if (*v4 == 12355)
    {
      v6 = 0;
      if ((v12 & 0x80) == 0)
      {
LABEL_20:
        if (v6)
        {
          return 0;
        }

        goto LABEL_21;
      }

LABEL_19:
      operator delete(v11[0]);
      goto LABEL_20;
    }

LABEL_10:
    (*(*a1 + 24))(__p, a1);
    if (v10 < 0)
    {
      if (__p[1] != 2)
      {
        goto LABEL_16;
      }

      v5 = __p[0];
    }

    else
    {
      if (v10 != 2)
      {
        goto LABEL_16;
      }

      v5 = __p;
    }

    if (*v5 == 12867)
    {
      v6 = 0;
      if ((v10 & 0x80) == 0)
      {
LABEL_18:
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_17:
      operator delete(__p[0]);
      goto LABEL_18;
    }

LABEL_16:
    v6 = (*(*a1 + 40))(a1) ^ 1;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_21:
  v3 = 1;
  v7 = sub_1000271F0();
  if ((v7 - 258 > 0x24 || ((1 << (v7 - 2)) & 0x1FFFFFF6FDLL) == 0) && (v7 - 119 > 0x12 || ((1 << (v7 - 119)) & 0x7EF0F) == 0) && (v7 > 0x37 || ((1 << v7) & 0xE3F00000000000) == 0))
  {
    return 0;
  }

  return v3;
}

void sub_10005AEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_10005AF1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_100B6D3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6D3B0))
  {
    sub_100007E30(&xmmword_100B6D398, "");
    __cxa_atexit(&std::string::~string, &xmmword_100B6D398, &_mh_execute_header);
    __cxa_guard_release(&qword_100B6D3B0);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003D220C;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D3B8 != -1)
  {
    dispatch_once(&qword_100B6D3B8, block);
  }

  if (byte_100B6D3AF < 0)
  {
    sub_100008904(a2, xmmword_100B6D398, *(&xmmword_100B6D398 + 1));
  }

  else
  {
    *a2 = xmmword_100B6D398;
    *(a2 + 16) = unk_100B6D3A8;
  }
}

uint64_t sub_10005B070()
{
  if (off_100B60538)
  {
    v0 = off_100B60538();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_10005B0FC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x123u);
}

uint64_t sub_10005B14C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x122u);
}

void sub_10005B19C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kMessageArgs");
  if (value)
  {
    v4 = value;
    uint64 = xpc_dictionary_get_uint64(value, "kWCMAntennaRequestInterval");
    v6 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "void BT::PurpleCoexManager::SetAntennaRequest(xpc_object_t)";
      v27 = 1024;
      v28 = uint64;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s, AntennaRequestInterval = %d", buf, 0x12u);
    }

    v7 = sub_10000C7D0();
    if (!sub_10005B59C(v7))
    {
      goto LABEL_40;
    }

    v8 = xpc_dictionary_get_BOOL(v4, "kWCMAntennaRequestUnii1Enabled");
    v9 = xpc_dictionary_get_BOOL(v4, "kWCMAntennaRequestUnii3Enabled");
    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v10;
    if (xpc_dictionary_get_BOOL(v4, "kWCMAntennaRequestUnii5aEnabled"))
    {
      v13 = 16;
    }

    else
    {
      v13 = 0;
    }

    if (xpc_dictionary_get_BOOL(v4, "kWCMAntennaRequestUnii5bEnabled"))
    {
      v14 = 32;
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 | v13 | v14;
    if (xpc_dictionary_get_BOOL(v4, "kWCMAntennaRequestUnii5cEnabled"))
    {
      v16 = 64;
    }

    else
    {
      v16 = 0;
    }

    if (xpc_dictionary_get_BOOL(v4, "kWCMAntennaRequestUnii5dEnabled"))
    {
      v17 = 0x80;
    }

    else
    {
      v17 = 0;
    }

    v18 = v15 | v16 | v17;
    v19 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "void BT::PurpleCoexManager::SetAntennaRequest(xpc_object_t)";
      v27 = 1024;
      v28 = v18;
      v29 = 1024;
      v30 = uint64;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s, Bitmap Sent to VSG MGS 53 = %d and AntennaRequestInterval = %d", buf, 0x18u);
    }

    v20 = sub_10000C7D0();
    if ((*(*v20 + 3536))(v20, v18, uint64, 1))
    {
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
      {
        sub_10087CA14();
      }
    }

    else
    {
LABEL_40:
      if (*(a1 + 294) == 1)
      {
        v21 = sub_10000C7D0();
        if (sub_1004107E8(v21))
        {
          *buf = 520093727;
          buf[1] = xpc_dictionary_get_uint64(v4, "kWCMBTConditionIdUnii1");
          buf[2] = xpc_dictionary_get_uint64(v4, "kWCMBTConditionIdUnii3");
          buf[4] = xpc_dictionary_get_uint64(v4, "kWCMBTConditionIdUnii5a");
          buf[5] = xpc_dictionary_get_uint64(v4, "kWCMBTConditionIdUnii5b");
          buf[6] = xpc_dictionary_get_uint64(v4, "kWCMBTConditionIdUnii5c");
          buf[7] = xpc_dictionary_get_uint64(v4, "kWCMBTConditionIdUnii5d");
          v22 = *sub_10000C7D0();
          v23 = (*(v22 + 3544))();
          v24 = qword_100BCE8E0;
          if (v23)
          {
            if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
            {
              sub_10087CA84();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SPMI Type 60 config was called", v25, 2u);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087CAF4();
  }
}

uint64_t sub_10005B5A4(uint64_t a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005B914;
  v5[3] = &unk_100AF2610;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 291, a4, v5, 0);
}

uint64_t sub_10005B628(char a1, char a2, uint64_t (*a3)())
{
  v19 = 0;
  v20 = 0;
  result = sub_10001FFD8(&v19);
  if (!result)
  {
    if (HIBYTE(v20))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v10 = WORD2(v20);
      if (WORD1(v20) > WORD2(v20))
      {
        if (BYTE6(v20) == 2)
        {
          ++WORD2(v20);
          *(v19 + v10) = 4;
          if (HIBYTE(v20))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v20) - WORD2(v20) > 2)
          {
            if (BYTE6(v20) == 2)
            {
              v11 = v19 + WORD2(v20);
              *(v11 + 2) = 0;
              *v11 = 0;
              v12 = WORD2(v20);
              v13 = WORD2(v20) + 3;
              WORD2(v20) += 3;
              if (HIBYTE(v20))
              {
                sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
              }

              else if (WORD1(v20) > v13)
              {
                if (BYTE6(v20) == 2)
                {
                  WORD2(v20) = v12 + 4;
                  *(v19 + v13) = a1;
                  if (HIBYTE(v20))
                  {
                    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
                  }

                  else
                  {
                    v14 = WORD2(v20);
                    if (WORD1(v20) > WORD2(v20))
                    {
                      if (BYTE6(v20) == 2)
                      {
                        ++WORD2(v20);
                        *(v19 + v14) = a2;
                        return sub_100020078(383, v19, BYTE4(v20), a3, sub_100022AD0, v7, v8, v9);
                      }

                      v18 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_31:
                      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6877, v18);
                    }
                  }

                  v18 = "ByteStream_NumReadBytesAvail(bs) >= 1";
                  goto LABEL_31;
                }

                v17 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_27:
                sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6876, v17);
              }

              v17 = "ByteStream_NumReadBytesAvail(bs) >= 1";
              goto LABEL_27;
            }

            v16 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_23:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6875, v16);
          }

          v16 = "ByteStream_NumReadBytesAvail(bs) >= (3)";
          goto LABEL_23;
        }

        v15 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_19:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 6874, v15);
      }
    }

    v15 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10005B888()
{
  if (off_100B60BE0)
  {
    v0 = off_100B60BE0();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

void *sub_10005B93C(uint64_t a1, unint64_t *a2)
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

void sub_10005BAA8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = sub_10000C798();
  if ((*(*v3 + 520))(v3))
  {
    xpc_dictionary_set_BOOL(v2, "kCBMsgArgSupportsExtendedAdvertising", 1);
  }

  v4 = sub_10000C798();
  if ((*(*v4 + 608))(v4))
  {
    v5 = sub_10000C798();
    if ((*(*v5 + 616))(v5))
    {
      xpc_dictionary_set_BOOL(v2, "kCBMsgArgSupportsExtendedScanAndConnect", 1);
    }
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v6, "kCBMsgArgSupportedFeatures", v2);
  sub_10004DFB8(a1, 35, v6, 1);

  xpc_release(v2);
}

void sub_10005BBF4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 984);
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *(v2 + 984);
    *(v2 + 984) = v4;

    v3 = *(v2 + 984);
  }

  v9 = [v3 objectForKey:*(a1 + 32)];
  v6 = [v9 mutableCopy];

  v7 = v6;
  if (!v6)
  {
    v7 = objc_opt_new();
  }

  v10 = v7;
  v8 = sub_10005BD04(*(a1 + 48));
  [v10 setObject:&__kCFBooleanTrue forKey:v8];
  [v10 setObject:*(a1 + 32) forKey:@"BundleID"];
  [*(v2 + 984) setObject:v10 forKeyedSubscript:*(a1 + 32)];
}

const __CFString *sub_10005BD04(int a1)
{
  if ((a1 - 1) > 9)
  {
    return @"CBCentralManager_scan";
  }

  else
  {
    return off_100AF77C8[a1 - 1];
  }
}

void sub_10005BD68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 232);
  if (!v4)
  {
    goto LABEL_51;
  }

  v7 = a1 + 232;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == a1 + 232 || *(v7 + 32) > a2)
  {
LABEL_51:
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10082475C();
    }

    return;
  }

  (*(**(v7 + 40) + 24))(*(v7 + 40), a3);
  if (v3 == 16 || v3 == 8)
  {
    *(*(v7 + 40) + 28) = 1;
  }

  if (v3 == 16)
  {
    v11 = sub_10000EE80();
    (*(*v11 + 104))(v11, a2);
    *__p = 0;
    sub_100016250(__p);
    v12 = *&__p[4];
    v13 = *(v7 + 40);
    *(v13 + 8) = *__p;
    *(v13 + 16) = v12;
  }

  sub_100018384(*(v7 + 32), __p);
  if (v52 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = *__p;
  }

  v15 = [NSString stringWithUTF8String:v14];
  v39 = a1;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(*__p);
  }

  v16 = &qword_100BCE988;
  v17 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138543618;
    *&__p[4] = v15;
    *&__p[12] = 1024;
    *&__p[14] = v3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AppSession state changed for %{public}@ to state %d", __p, 0x12u);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(v39 + 352);
  v43 = v15;
  v18 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (!v18)
  {
    goto LABEL_48;
  }

  v19 = *v47;
  v41 = v3;
  v40 = *v47;
  while (2)
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v47 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = [*(*(&v46 + 1) + 8 * i) isEqualToString:v15] ^ 1;
      if (v3 != 16)
      {
        LOBYTE(v21) = 1;
      }

      if (v21)
      {
        v27 = *v16;
        if (!os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        *__p = 138543362;
        *&__p[4] = v15;
        v28 = v27;
        v29 = "AppSession not found in list  %{public}@.";
        goto LABEL_41;
      }

      v22 = (*(**(v7 + 40) + 16))(*(v7 + 40));
      v23 = *(v7 + 40);
      if (v22)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
      }

      else
      {
        v26 = sub_10005EDD8(*(v7 + 40));
        v23 = *(v7 + 40);
        v25 = *(v23 + 481);
        v24 = *(v23 + 482);
      }

      v30 = v16;
      v31 = *v16;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(v23 + 120) != 0;
        *__p = 138544386;
        *&__p[4] = v43;
        *&__p[12] = 1024;
        *&__p[14] = v32;
        v51 = 1024;
        v52 = v26;
        v53 = 1024;
        v54 = v25;
        v55 = 1024;
        v56 = v24;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "TCC pending for %{public}@. Remove from tccPendingBundleList, sessionIsLive %d isDeviceAccessSession:%d isDeviceAccessMediaExtensionSession:%d isDeviceAccessPerAccessoryExtensionSession:%d", __p, 0x24u);
        v23 = *(v7 + 40);
      }

      v33 = *(v23 + 120);
      v3 = v41;
      v16 = v30;
      if (v33)
      {
        v15 = v43;
        v35 = sub_10005EC28([*(v39 + 352) removeObject:v43], *(v7 + 40)) ^ 1;
        v36 = *v30;
        v37 = os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          *__p = 67109378;
          *&__p[4] = v35;
          *&__p[8] = 2114;
          *&__p[10] = v43;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Calling readyForTCC with %d for %{public}@", __p, 0x12u);
        }

        v38 = *(v7 + 40);
        sub_10004E450(v37, v38, a2, 5, 1);
        sub_10005F024(v38);
        goto LABEL_48;
      }

      v34 = *v30;
      v15 = v43;
      v19 = v40;
      if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 138543362;
        *&__p[4] = v43;
        v28 = v34;
        v29 = "%{public}@ not alive";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, __p, 0xCu);
        continue;
      }
    }

    v18 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_48:

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10005CDC4;
  v44[3] = &unk_100AF0580;
  v44[4] = a2;
  v45 = v3;
  sub_10005CCF8(v39 + 192, v44);
}

void sub_10005C31C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v9 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = [NSString stringWithUTF8String:v6];
  [v5 cancelAppLaunchAlert:v7];

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10005C3DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10005C410(uint64_t a1, unint64_t a2, int a3)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 64);
  v6 = *(a1 + 16920);
  if (v6)
  {
    v7 = a1 + 16920;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != a1 + 16920 && *(v7 + 32) <= a2 && *(a1 + 49) == 1)
    {
      if (qword_100B512F8 != -1)
      {
        sub_10086ACE4();
      }

      v11 = sub_100070518(off_100B512F0, a2);
      v12 = os_log_type_enabled(qword_100BCE9B0, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v12)
        {
          sub_100018384(a2, v17);
          sub_10086BAF8();
        }

        v15 = *(v7 + 48);
        sub_10000C69C(v15);
        *(v15 + 336) |= a3 == 16;
        if (a3 == 8 || a3 == 4)
        {
          sub_10072B31C(a1, a2);
        }

        else
        {
          sub_100068D34(a1, a2);
        }

        if (v15)
        {
          sub_10000C808(v15);
        }
      }

      else
      {
        if (v12)
        {
          sub_100018384(a2, v17);
          sub_10086BA9C();
        }

        v13 = *(a1 + 56);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10072CF9C;
        v16[3] = &unk_100ADF8F8;
        v16[4] = a1;
        sub_10000CA94(v13, v16);
      }
    }
  }

  return sub_1000088CC(v18);
}

void sub_10005C644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10005C688(id a1, NSDictionary *a2)
{
  v3 = a2;
  v2 = +[BTAppInteraction instance];
  [v2 applicationStateChanged:v3];
}

uint64_t sub_10005C77C(uint64_t a1, uint64_t a2, char a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 8);
  v6 = sub_10000EEB8(a1 + 96, a2);
  if (a1 + 104 != v6)
  {
    if (*(a1 + 72))
    {
      v7 = *(v6 + 56);
      v8 = (v6 + 64);
      if (v7 != (v6 + 64))
      {
        do
        {
          v9 = v7[4];
          v10 = sub_100007EE8();
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10005BD34;
          v15[3] = &unk_100AEAF08;
          v15[4] = a1;
          v15[5] = v9;
          v16 = a3;
          sub_10000CA94(v10, v15);
          v11 = v7[1];
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
              v12 = v7[2];
              v13 = *v12 == v7;
              v7 = v12;
            }

            while (!v13);
          }

          v7 = v12;
        }

        while (v12 != v8);
      }
    }
  }

  return sub_1000088CC(v17);
}

void sub_10005C8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005C8C0(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v9 = a2;
  v6 = a3;
  switch(a4)
  {
    case 3:
      operator new();
    case 1:
      operator new();
    case 0:
      operator new();
  }

  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100018384(a2, v8);
    sub_100823BFC();
  }

  if (a4 == 2 && os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100823C54();
  }

  return 1;
}

void sub_10005CCF8(uint64_t a1, void *a2)
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

uint64_t sub_10005CDF8(uint64_t result, unint64_t a2, int a3)
{
  v3 = *(result + 2072);
  if (v3)
  {
    v6 = result;
    v7 = result + 2072;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != result + 2072 && *(v7 + 32) <= a2)
    {
      v11 = *(v7 + 40);
      sub_100026A8C(v11);
      *(v11 + 81) = a3;
      if (a3 == 16)
      {
        v12 = *(*(v11 + 8) + 172);
        v13 = qword_100BCE918;
        v14 = os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO);
        if (v12 == 1)
        {
          if (v14)
          {
            sub_100018384(*(v7 + 32), __p);
            if (v18 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            *buf = 136446210;
            v20 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Session %{public}s does not need a scan level bump since its doing ContactTracing", buf, 0xCu);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else
        {
          if (v14)
          {
            sub_100018384(a2, __p);
            v16 = v18 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v20 = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Session %{public}s is now back at scan level 1", buf, 0xCu);
            if (v18 < 0)
            {
              operator delete(__p[0]);
            }
          }

          *(v11 + 96) = 1;
        }

        sub_10007088C(v14, a2, v11);
      }

      return sub_100017DE0(v6, 0);
    }
  }

  return result;
}

void sub_10005CFE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10005CFE4(a1, *a2);
    sub_10005CFE4(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_10005D040(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v7 = *(a1 + 232);
  v5 = a1 + 232;
  v6 = v7;
  if (v7)
  {
    v8 = v5;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 != v5 && *(v8 + 32) <= a2)
    {
      v12 = (*(**(v8 + 40) + 16))(*(v8 + 40));
      if (a3 == 2 || v12 == a3)
      {
        return *(v8 + 40);
      }
    }
  }

  if (qword_100B50B88 != -1)
  {
    sub_100823C90();
  }

  v13 = sub_100618524(qword_100B50B80, a2);
  v14 = qword_100BCE988;
  if (v13)
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
    {
      if (a3 > 3)
      {
        v15 = @"Unknown";
      }

      else
      {
        v15 = *(&off_100AF09F0 + a3);
      }

      sub_100018384(a2, __p);
      if (v19 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 138543618;
      v21 = v15;
      v22 = 2082;
      v23 = v17;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Couldn't find a registered %{public}@ app for session %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100823CA4(a3, a2, v14);
  }

  return 0;
}

uint64_t sub_10005D234()
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  sub_100008760(&v17);
  *(&v18[-1] + *(v17 - 24) + 8) &= ~1u;
  sub_100007774(&v17);
  sub_100007774(&v17);
  v0 = std::ostream::operator<<();
  sub_100007774(v0);
  sub_100007774(&v17);
  v1 = std::ostream::operator<<();
  sub_100007774(v1);
  sub_100007774(&v17);
  v2 = std::ostream::operator<<();
  sub_100007774(v2);
  sub_100007774(&v17);
  v3 = std::ostream::operator<<();
  sub_100007774(v3);
  sub_100007774(&v17);
  v4 = std::ostream::operator<<();
  sub_100007774(v4);
  sub_100007774(&v17);
  v5 = std::ostream::operator<<();
  sub_100007774(v5);
  sub_100007774(&v17);
  v6 = std::ostream::operator<<();
  sub_100007774(v6);
  sub_100007774(&v17);
  v7 = std::ostream::operator<<();
  sub_100007774(v7);
  sub_100007774(&v17);
  v8 = std::ostream::operator<<();
  sub_100007774(v8);
  sub_100007774(&v17);
  v9 = std::ostream::operator<<();
  sub_100007774(v9);
  sub_100007774(&v17);
  v10 = std::ostream::operator<<();
  sub_100007774(v10);
  sub_100007774(&v17);
  v11 = std::ostream::operator<<();
  sub_100007774(v11);
  sub_100007774(&v17);
  v12 = std::ostream::operator<<();
  sub_100007774(v12);
  sub_100007774(&v17);
  v13 = std::ostream::operator<<();
  sub_100007774(v13);
  sub_100007774(&v17);
  v14 = std::ostream::operator<<();
  sub_100007774(v14);
  std::ios_base::getloc((&v18[-1] + *(v17 - 24)));
  v15 = std::locale::use_facet(&v32, &std::ctype<char>::id);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10005D6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 40));
  sub_1003B8618(&a9);
  _Unwind_Resume(a1);
}

void sub_10005D710(uint64_t a1)
{
  v22 = objc_opt_new();
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 40);
    *buf = 138412290;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reconfigureRunningBoardProcessMonitor %@", buf, 0xCu);
  }

  v30 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v4 = [*(*(a1 + 32) + 40) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v7 = *v28;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(a1 + 32) + 40) objectForKey:{*(*(&v27 + 1) + 8 * v8), v21}];
        if ([v9 pid] && objc_msgSend(v9, "isExtension"))
        {
          v10 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v33 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reconfigureRunningBoardProcessMonitor adding to RBS monitor %@", buf, 0xCu);
          }

          v11 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v9 pid]);
          v12 = [RBSProcessPredicate predicateMatchingIdentifier:v11];
          [v22 addObject:v12];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);
  }

  v13 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "reconfigureRunningBoardProcessMonitor: predicates %@", buf, 0xCu);
  }

  if (v22 && [v22 count])
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 128);
    if (v15)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1007DC3D0;
      v23[3] = &unk_100B0E2D8;
      v24 = v22;
      [v15 updateConfiguration:v23];
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1007DC250;
      v25[3] = &unk_100B0E2B0;
      v25[4] = v14;
      v26 = v22;
      v18 = [RBSProcessMonitor monitorWithConfiguration:v25];
      v19 = *(a1 + 32);
      v20 = *(v19 + 128);
      *(v19 + 128) = v18;
    }
  }

  else
  {
    [*(*(a1 + 32) + 128) invalidate];
    v16 = *(a1 + 32);
    v17 = *(v16 + 128);
    *(v16 + 128) = 0;
  }
}

uint64_t sub_10005DB70(uint64_t a1)
{
  v2 = sub_10005DEBC(a1);
  *v2 = off_100AFA978;
  *(v2 + 248) = v2 + 256;
  *(v2 + 264) = 0;
  *(v2 + 272) = 0;
  *(v2 + 256) = 0;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 279) = 0;
  *(v2 + 288) = v2 + 296;
  v3 = (v2 + 312);
  *(v2 + 360) = 0;
  *(v2 + 368) = 0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 343) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 384) = 0;
  *(v2 + 392) = v2 + 400;
  *(v2 + 432) = 0;
  *(v2 + 440) = 0;
  *(v2 + 424) = v2 + 432;
  *(v2 + 479) = 0;
  *(v2 + 472) = 0;
  v4 = +[NSMutableDictionary dictionary];
  v5 = *(a1 + 224);
  *(a1 + 224) = v4;

  v6 = +[NSMutableDictionary dictionary];
  v7 = *(a1 + 232);
  *(a1 + 232) = v6;

  v8 = +[NSMutableDictionary dictionary];
  v9 = *(a1 + 384);
  *(a1 + 384) = v8;

  v10 = objc_opt_new();
  v11 = *v3;
  *v3 = v10;

  v12 = objc_opt_new();
  v13 = *(a1 + 320);
  *(a1 + 320) = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = *(a1 + 240);
  *(a1 + 240) = v14;

  v16 = +[NSMutableSet set];
  v17 = *(a1 + 272);
  *(a1 + 272) = v16;

  *(a1 + 376) = 0;
  *(a1 + 456) = 0;
  *(a1 + 416) = 0;
  v32 = 0;
  v18 = sub_10000E92C();
  sub_100007E30(v30, "BTUCM");
  sub_100007E30(__p, "DefaultWifiCoexPriority");
  v19 = (*(*v18 + 88))(v18, v30, __p, &v32);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  v20 = v32;
  if (!v19)
  {
    v20 = -1;
  }

  *(a1 + 464) = v20;
  v21 = *(a1 + 192);
  *(a1 + 192) = 0;

  v22 = *(a1 + 200);
  *(a1 + 200) = 0;

  v23 = *(a1 + 208);
  *(a1 + 208) = 0;

  v24 = *(a1 + 216);
  *(a1 + 216) = 0;

  v25 = objc_opt_new();
  v26 = *(a1 + 368);
  *(a1 + 368) = v25;

  return a1;
}

void sub_10005DDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1000794B4(v21 + 424, *(v21 + 432));
  sub_10005CFE4(v21 + 392, *(v21 + 400));

  sub_100079450(v21 + 288, *(v21 + 296));
  sub_100079510(v22, *(v21 + 256));

  sub_10007956C(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_10005DEBC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100AFA8C0;
  *(a1 + 21) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 257;
  *(a1 + 144) = 0;
  v2 = a1 + 144;
  *(a1 + 136) = a1 + 144;
  v3 = a1 + 136;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  v4 = a1 + 168;
  *(a1 + 160) = a1 + 168;
  v5 = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  v6 = +[NSMutableArray array];
  v7 = *(a1 + 112);
  *(a1 + 112) = v6;

  v8 = +[NSMutableDictionary dictionary];
  v9 = *(a1 + 80);
  *(a1 + 80) = v8;

  sub_10005CFE4(v3, *(a1 + 144));
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = v2;
  sub_10005CFE4(v5, *(a1 + 168));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = v4;
  return a1;
}

void sub_10005DFD0(_Unwind_Exception *a1)
{
  sub_10005CFE4(v3, *(v1 + 168));
  sub_10005CFE4(v2, *(v1 + 144));

  _Unwind_Resume(a1);
}

uint64_t sub_10005E020(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      *a4 = [v13 intValue];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v7);
  return isKindOfClass & 1;
}

void *sub_10005E16C(uint64_t a1, unint64_t *a2)
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

id sub_10005E23C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = +[BTAppInteraction instance];
  sub_1000454F0(a1, a2, __p);
  if (v11 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = [v5 applicationStateForProcess:v7];

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_10005E304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10005E338(uint64_t a1, unsigned int a2)
{
  sub_10005E388(a1, a2);
  result = *(a1 + 376);
  if (result)
  {

    return sub_10042B7E0(result, (a2 >> 4) & 1);
  }

  return result;
}

uint64_t sub_10005E388(uint64_t result, int a2)
{
  *(result + 129) = a2;
  if (*(result + 73) != 1)
  {
    return result;
  }

  v2 = result;
  if (a2 == 4)
  {
    v3 = 0;
  }

  else
  {
    if (qword_100B512C8 != -1)
    {
      sub_10083BC04();
    }

    v3 = sub_10000EE78(off_100B512C0);
  }

  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 129);
    if (v6 <= 7)
    {
      if (v6 == 2)
      {
        v7 = "terminated";
        goto LABEL_20;
      }

      if (v6 == 4)
      {
        v7 = "suspended";
        goto LABEL_20;
      }
    }

    else
    {
      switch(v6)
      {
        case 8u:
          v7 = "background-running";
          goto LABEL_20;
        case 0x10u:
          v7 = "foreground-running";
          goto LABEL_20;
        case 0x20u:
          v7 = "daemon";
LABEL_20:
          v8 = 138412802;
          v9 = v5;
          v10 = 2080;
          v11 = v7;
          v12 = 1024;
          v13 = v3;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session %@ new state %s updating power state for extension to %d", &v8, 0x1Cu);
          goto LABEL_21;
      }
    }

    v7 = "unknown";
    goto LABEL_20;
  }

LABEL_21:
  if (qword_100B512F8 != -1)
  {
    sub_10083AC60();
  }

  return sub_1003ABF1C(off_100B512F0, v2, v3);
}

uint64_t sub_10005E540(uint64_t a1, __int128 *a2, char a3, char a4)
{
  *a1 = 0;
  v7 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  return a1;
}

uint64_t sub_10005E5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v7 = qword_100BCE9F8;
    if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BundleID is allowed - bundleID is not available", &v17, 2u);
    }

    goto LABEL_9;
  }

  v4 = sub_10000E92C();
  if (((*(*v4 + 8))(v4) & 1) == 0)
  {
LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  if (([v3 hasPrefix:@"com.apple."] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"com.Apple."))
  {
    v5 = CBGenerateObfuscatedSHA256HashedString();
    if (([qword_100BCED40 containsObject:v5] & 1) == 0)
    {
      if (*(a1 + 152))
      {
        v6 = 0;
        goto LABEL_13;
      }

      v16 = qword_100BCE9F8;
      if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = v3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ is NOT in the CB allowed list but is allowed with overriding.", &v17, 0xCu);
      }
    }

    v6 = 1;
LABEL_13:

    goto LABEL_15;
  }

  v6 = 1;
LABEL_15:
  v9 = *(a1 + 153);
  v10 = qword_100BCE9F8;
  v11 = os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT);
  if (v9 == 1)
  {
    if (v11)
    {
      v12 = CBGenerateObfuscatedSHA256HashedString();
      v13 = v12;
      v14 = "N";
      v17 = 138543874;
      v18 = v3;
      if (v6)
      {
        v14 = "Y";
      }

      v19 = 2114;
      v20 = v12;
      v21 = 2082;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BundleID %{public}@ hash %{public}@ is in the allowed CBSession list:%{public}s", &v17, 0x20u);
    }
  }

  else if (v11)
  {
    v15 = "N";
    if (v6)
    {
      v15 = "Y";
    }

    v17 = 138543618;
    v18 = v3;
    v19 = 2082;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BundleID %{public}@ is in the allowed CBSession list:%{public}s", &v17, 0x16u);
  }

LABEL_10:

  return v6;
}

void sub_10005E880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6)
{
  v11 = a4;
  v12 = sub_10000EE80();
  v13 = (*(*v12 + 56))(v12, a3);
  v14 = sub_10005EBC0(a1, *(a2 + 88));
  v15 = qword_100BCE988;
  v16 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    v17 = *(a2 + 28);
    *buf = 138544386;
    v31 = v11;
    v32 = 1024;
    v33 = v13 == 8;
    v34 = 1024;
    v35 = a6;
    v36 = 1024;
    v37 = v17;
    v38 = 1024;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "getReadyForTCC %{public}@, appIsBackgroundRunning: %d, isBeingRestored: %d, isApp : %d, appAuthorizationHasBeenChecked: %d", buf, 0x24u);
  }

  if (((a5 | v14) & 1) == 0 && v13 == 8 && ((*(a2 + 28) & 1) != 0 || a6))
  {
    v24 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a2 + 24);
      *buf = 138543618;
      v31 = v11;
      v32 = 1024;
      v33 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Add %{public}@ to tccPendingBundleList, session support backgrounding %d", buf, 0x12u);
    }

    [*(a1 + 352) addObject:v11];
    if (*(a2 + 24) == 1 && !*(a1 + 360))
    {
      v26 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Create FBSDisplayLayoutMonitor", buf, 2u);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1003AD790;
      v29[3] = &unk_100AF0538;
      v29[4] = a1;
      v27 = [[FBSDisplayLayoutMonitor alloc] initWithDisplayType:0 handler:v29];
      v28 = *(a1 + 360);
      *(a1 + 360) = v27;
    }
  }

  else
  {
    v18 = *(a2 + 129);
    v19 = sub_10005EC28(v16, a2);
    if (v18 == 32)
    {
      v20 = 1;
    }

    else
    {
      v20 = a5;
    }

    v21 = (v19 | v20) ^ 1;
    v22 = qword_100BCE988;
    v23 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      *buf = 138543618;
      v31 = v11;
      v32 = 1024;
      v33 = v21 & 1;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Session %{public}@ tccRequired : %d", buf, 0x12u);
    }

    sub_10004E450(v23, a2, a3, 5, 1);
    sub_10005F024(a2);
  }
}

uint64_t sub_10005EBC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 336) containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 344) containsObject:v3];
  }

  return v4;
}

uint64_t sub_10005EC28(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2))
  {
    return 0;
  }

  v3 = sub_10005EDD8(a2);
  if (v3)
  {
    v4 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 88);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding TCC requirement for %@ (DeviceAccess CBManager)", &v11, 0xCu);
    }
  }

  if (*(a2 + 481) == 1)
  {
    v6 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 88);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding TCC requirement for %@ (DeviceAccess for Media extension)", &v11, 0xCu);
    }

    v3 = 1;
  }

  if (*(a2 + 482) == 1)
  {
    v8 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 88);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding TCC requirement for %@ (DeviceAccess Per Accessory extension)", &v11, 0xCu);
    }

    return 1;
  }

  return v3;
}

uint64_t sub_10005EDD8(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return *(a1 + 472) != 0;
  }

  return result;
}

void sub_10005EE1C(void *a1, _BOOL4 a2)
{
  v4 = a1[14];
  a1[14] = &stru_100B0F9E0;

  v5 = objc_opt_new();
  v6 = a1[15];
  a1[15] = v5;

  if (a2 && sub_100668E78(a1) == 2)
  {
    if (qword_100B512C8 != -1)
    {
      sub_10085B2C8();
    }

    if (sub_10000EE78(off_100B512C0) == 1)
    {
      if (qword_100B512F8 != -1)
      {
        sub_1000C10B4();
      }

      if ((*(off_100B512F0 + 179) & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        v7 = sub_100795AEC(off_100B508C8, 0);
        v8 = a1[15];
        a1[15] = v7;

        if (qword_100B508D0 != -1)
        {
          sub_100856AE8();
        }

        v9 = off_100B508C8;
        v10 = sub_1007922A8(off_100B508C8, 0);
        v11 = sub_1007934C0(v9, v10, 0);
        v12 = a1[14];
        a1[14] = v11;
      }
    }
  }

  v13 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[12];
    v16[0] = 67109378;
    v16[1] = a2;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ReadyForTCC. TCC required:%d %@", v16, 0x12u);
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v15, "kCBMsgArgRequiresTCC", a2);
  sub_10004DFB8(a1, 3, v15, 1);
}

uint64_t sub_10005F024(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    v3 = *(result - 144);
    *(a1 + 38) = 1;
    return (*(v3 + 384))();
  }

  return result;
}

uint64_t sub_10005F068(uint64_t a1, uint64_t *a2, uint64_t *a3, char *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  v10 = CFPreferencesCopyAppValue(v9, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    v12 = [NSString stringWithUTF8String:v11];
    v13 = [v10 objectForKey:v12];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      if ([v14 isEqualToString:@"TRUE"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"YES"))
      {
        v15 = 1;
LABEL_12:
        *a4 = v15;

LABEL_16:
        v16 = 1;
LABEL_22:

        goto LABEL_23;
      }

      if ([v14 isEqualToString:@"FALSE"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"NO"))
      {
        v15 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *a4 = [v13 BOOLValue];
        goto LABEL_16;
      }
    }

    v16 = 0;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_23:

  objc_autoreleasePoolPop(v7);
  return v16;
}

BOOL sub_10005F254(uint64_t a1)
{
  if ([*(a1 + 96) containsString:@"com.apple.deviceaccessd"])
  {
    v2 = [*(a1 + 232) containsString:@"com.apple.deviceaccessd"] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 232);
    *buf = 138412802;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    v24 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XpcLeAttConnection::refreshPlistLimitations fBundleIdentifier:%@ fDataAccessClient:%@ onBehalfOfASKApp:%d", buf, 0x1Cu);
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  if (v2)
  {
    if ((*(a1 + 176) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (*(a1 + 176))
  {
LABEL_11:
    memset(buf, 0, sizeof(buf));
    sub_10066969C(*(a1 + 232), @"NSBluetoothServices", buf);
    sub_10067C898(a1 + 240, *(a1 + 248), *buf, *&buf[8], 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 2));
    __p = 0;
    v20 = 0;
    v21 = 0;
    sub_10066998C(*(a1 + 232), @"NSBluetoothCompanyIdentifiers", &__p);
    sub_10067CCB4(a1 + 264, *(a1 + 272), __p, v20, (v20 - __p) >> 1);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_16;
  }

  if ((*(a1 + 178) & 1) == 0)
  {
    return 1;
  }

LABEL_16:
  if (*(a1 + 177) & 1) != 0 || ((*(a1 + 178) | v2))
  {
    memset(buf, 0, sizeof(buf));
    sub_10066969C(*(a1 + 232), @"NSAccessorySetupBluetoothServices", buf);
    sub_10067C898(a1 + 240, *(a1 + 248), *buf, *&buf[8], 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 2));
    __p = 0;
    v20 = 0;
    v21 = 0;
    sub_10066998C(*(a1 + 232), @"NSAccessorySetupBluetoothCompanyIdentifiers", &__p);
    sub_10067CCB4(a1 + 264, *(a1 + 272), __p, v20, (v20 - __p) >> 1);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_100669CC8(*(a1 + 232), @"NSAccessorySetupBluetoothNames", &v16);
    sub_10067CED8((a1 + 288), *(a1 + 296), v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
    v22 = &v16;
    sub_1000161FC(&v22);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  if (*(a1 + 248) != *(a1 + 240) || *(a1 + 272) != *(a1 + 264))
  {
    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v6 = off_100B512F0;
    v7 = *(a1 + 128);
    sub_10000CB74(v15, (a1 + 240));
    sub_1003C0528(v6, v7, v15);
    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v8 = off_100B512F0;
    v9 = *(a1 + 128);
    sub_1003C4640(v14, (a1 + 264));
    sub_1003C07A4(v8, v9, v14);
    if (v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    v10 = off_100B512F0;
    v11 = *(a1 + 128);
    memset(v13, 0, sizeof(v13));
    sub_10003E428(v13, *(a1 + 288), *(a1 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 296) - *(a1 + 288)) >> 3));
    sub_1003C09C4(v10, v11, v13);
    *buf = v13;
    sub_1000161FC(buf);
    return 1;
  }

  if (*(a1 + 176) & 1) == 0 && (*(a1 + 178) & 1) == 0 && ([*(a1 + 96) isEqualToString:*(a1 + 232)])
  {
    return 1;
  }

  result = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10085AD0C();
    return 0;
  }

  return result;
}

void sub_10005F68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  v24 = *(v22 - 96);
  if (v24)
  {
    *(v22 - 88) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10005F730(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      DataValue = IOHIDEventGetDataValue();
      v10 = [v6 integerValueForField:65539];
      if (DataValue && (v11 = v10) != 0)
      {
        v12 = sub_10000E92C();
        if ((*(*v12 + 160))(v12))
        {
          v13 = qword_100BCEA68;
          if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
          {
            v14 = sub_1000ADD80(DataValue, v11);
            *buf = 138412290;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handleHIDEvent:forService: received: %@", buf, 0xCu);
          }
        }

        v52 = 0;
        v51 = 0u;
        v50 = 0u;
        v48 = *DataValue;
        v15 = *(DataValue + 1);
        v49 = v15;
        if (v48 != 225)
        {
          if (v48 == 227)
          {
            if (v11 > 0x1A)
            {
              v17 = *(DataValue + 9);
              LOWORD(v51) = *(DataValue + 25);
              v50 = v17;
              v18 = SHIBYTE(v17);
              if (HIBYTE(v17))
              {
                v19 = qword_100BCEA68;
                if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67110656;
                  *&buf[4] = WORD6(v50);
                  *&buf[8] = 1024;
                  *&buf[10] = SBYTE14(v50);
                  *&buf[14] = 1024;
                  *&buf[16] = v18;
                  *&buf[20] = 1024;
                  *&buf[22] = v51;
                  *&buf[26] = 1024;
                  *&buf[28] = 0;
                  LOWORD(v66) = 1024;
                  *(&v66 + 2) = SBYTE4(v50);
                  WORD3(v66) = 1024;
                  DWORD2(v66) = BYTE1(v51);
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "handleHIDEvent (rssiDetectReport) onSendRSSI: notifying listeners. Connection Handle 0x%04X RSSI avg:%d max:%d median:%d var:%d orig:%d state:%d", buf, 0x2Cu);
                }

                v53[0] = _NSConcreteStackBlock;
                v53[1] = 3221225472;
                v53[2] = sub_10048773C;
                v53[3] = &unk_100AF7C00;
                v53[4] = 0;
                v54 = 31;
                v55 = WORD6(v50);
                v56 = BYTE14(v50);
                v57 = v18;
                v58 = v51;
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v62 = BYTE1(v51);
                v63 = *(&v50 + 4);
                v64 = 0;
                sub_100487610(a1, v53);
              }

              else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
              {
                sub_10082E940();
              }
            }

            else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
            {
              sub_10082E97C();
            }
          }

          else if (v48 == 226)
          {
            if (v11 > 0x19)
            {
              v37 = *(DataValue + 9);
              LOBYTE(v51) = *(DataValue + 25);
              v50 = v37;
              v38 = qword_100BCEA68;
              if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
              {
                v39 = CUPrintAddress();
                v40 = CUPrintHex();
                *buf = 138412802;
                *&buf[4] = v39;
                *&buf[12] = 2112;
                *&buf[14] = v40;
                *&buf[22] = 1024;
                *&buf[24] = SBYTE10(v50);
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "handleHIDEvent:forService Nearby Action Wake Event : Address [%@] AuthTag [%@] RSSI %d", buf, 0x1Cu);
              }

              v41 = +[NSMutableData data];
              [v41 appendBytes:&v50 + 11 length:1];
              [v41 appendBytes:&v50 + 12 length:1];
              [v41 appendBytes:&v50 + 13 length:3];
              [v41 appendBytes:&v51 length:1];
              if (qword_100B50C68 != -1)
              {
                sub_10082EAB8();
              }

              v42 = sub_10072C9A0(off_100B50C60, 0, 26, v41);
              memset(buf, 0, sizeof(buf));
              v43 = v42;
              v44 = [v42 bytes];
              buf[31] = [v42 length];
              BYTE6(v66) = BYTE10(v50);
              BYTE7(v66) = 40;
              *(&v66 + 1) = 0;
              LODWORD(v66) = DWORD1(v50);
              WORD2(v66) = WORD4(v50);
              memcpy(buf, v44, buf[31]);
              v91[0] = _NSConcreteStackBlock;
              v91[1] = 3221225472;
              v92 = *buf;
              v91[2] = sub_1004876DC;
              v91[3] = &unk_100AF7BC0;
              v91[4] = 0;
              v93 = *&buf[16];
              v94 = v66;
              sub_100487610(a1, v91);
            }

            else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
            {
              sub_10082EAE0();
            }
          }

          goto LABEL_20;
        }

        if (v11 <= 0x30)
        {
          if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
          {
            sub_10082EA38();
          }

          goto LABEL_20;
        }

        v20 = *(DataValue + 9);
        v21 = *(DataValue + 25);
        v52 = *(DataValue + 41);
        v51 = v21;
        v50 = v20;
        v22 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134222592;
          *&buf[4] = v15 / 1000000.0;
          *&buf[12] = 1024;
          *&buf[14] = v50;
          *&buf[18] = 1024;
          *&buf[20] = DWORD1(v50);
          *&buf[24] = 1024;
          *&buf[26] = BYTE8(v50);
          *&buf[30] = 1024;
          LODWORD(v66) = BYTE9(v50);
          WORD2(v66) = 1024;
          *(&v66 + 6) = BYTE10(v50);
          WORD5(v66) = 1024;
          HIDWORD(v66) = BYTE11(v50);
          v67 = 1024;
          v68 = BYTE12(v50);
          v69 = 1024;
          v70 = BYTE13(v50);
          v71 = 1024;
          v72 = BYTE14(v50);
          v73 = 1024;
          v74 = HIBYTE(v50);
          v75 = 1024;
          v76 = v51;
          v77 = 1024;
          v78 = BYTE1(v51);
          v79 = 1024;
          v80 = BYTE2(v51);
          v81 = 1024;
          v82 = BYTE3(v51);
          v83 = 1024;
          v84 = BYTE4(v51);
          v85 = 1024;
          v86 = BYTE5(v51);
          v87 = 1024;
          v88 = BYTE6(v51);
          v89 = 1024;
          v90 = BYTE7(v51);
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "handleHIDEvent (Telemetry) time %.3f intervalSeconds %u spmiXactions %u hist %u:%u %u:%u %u:%u %u:%u %u:%u %u:%u %u:%u %u:%u", buf, 0x78u);
        }

        v23 = v50;
        if (v50)
        {
          for (i = *(a1 + 128); i; i = *i)
          {
            if ((i[7] & 1) == 0)
            {
              v25 = i[5];
              if (v25 > i[8])
              {
                i[5] = v25 + -1.0;
              }
            }
          }

          v26 = v23;
          v27 = &v50 + 9;
          v28 = 16;
          while (1)
          {
            v47 = *(v27 - 1);
            if (!v47)
            {
              goto LABEL_20;
            }

            if (sub_1000C0430((a1 + 112), &v47))
            {
              *buf = &v47;
              if (*(sub_1000C04E8((a1 + 112), &v47) + 28) == 1)
              {
                v29 = qword_100BCEA68;
                if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67109120;
                  *&buf[4] = v47;
                  v30 = v29;
                  v31 = "handleHIDEvent (Telemetry) type %d previous RSSI threshold not yet committed, continue";
                  v32 = 8;
LABEL_60:
                  _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, buf, v32);
                }
              }

              else
              {
                *buf = &v47;
                v33 = *(sub_1000C04E8((a1 + 112), &v47) + 5);
                LOBYTE(v3) = *v27;
                *buf = &v47;
                v34 = sub_1000C04E8((a1 + 112), &v47);
                v3 = LODWORD(v3) / v26;
                if ((v3 + -10.0) <= 0.0)
                {
                  v35 = v33 + ((v3 + -10.0) * 0.25);
                }

                else
                {
                  v35 = v33 + (v3 + -10.0);
                }

                if (v35 < *(v34 + 8))
                {
                  *buf = &v47;
                  v35 = *(sub_1000C04E8((a1 + 112), &v47) + 8);
                }

                *buf = &v47;
                if (v35 > *(sub_1000C04E8((a1 + 112), &v47) + 9))
                {
                  *buf = &v47;
                  v35 = *(sub_1000C04E8((a1 + 112), &v47) + 9);
                }

                *buf = &v47;
                *(sub_1000C04E8((a1 + 112), &v47) + 5) = v35;
                *buf = &v47;
                *(sub_1000C04E8((a1 + 112), &v47) + 6) = v3;
                *buf = &v47;
                *(sub_1000C04E8((a1 + 112), &v47) + 28) = 1;
                v36 = qword_100BCEA68;
                if (v3 > 20.0)
                {
                  if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218496;
                    *&buf[4] = v3;
                    *&buf[12] = 1024;
                    *&buf[14] = v47;
                    *&buf[18] = 2048;
                    *&buf[20] = v35;
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "handleHIDEvent (Telemetry) msgPerSecond %.3f, type %d change RSSI threshold %.1f, notify immediately!", buf, 0x1Cu);
                  }

                  v45[0] = _NSConcreteStackBlock;
                  v45[1] = 3221225472;
                  v45[2] = sub_10048770C;
                  v45[3] = &unk_100AF7BE0;
                  v46 = v47;
                  sub_100487610(a1, v45);
                  goto LABEL_57;
                }

                if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134218496;
                  *&buf[4] = v3;
                  *&buf[12] = 1024;
                  *&buf[14] = v47;
                  *&buf[18] = 2048;
                  *&buf[20] = v35;
                  v30 = v36;
                  v31 = "handleHIDEvent (Telemetry) msgPerSecond %.3f, type %d change RSSI threshold %.1f, not urgent";
                  v32 = 28;
                  goto LABEL_60;
                }
              }
            }

LABEL_57:
            v27 += 2;
            if (!--v28)
            {
              goto LABEL_20;
            }
          }
        }

        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
        {
          sub_10082E9FC();
        }
      }

      else
      {
        v16 = qword_100BCEA68;
        if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "handleHIDEvent:forService: Empty Packet Received", buf, 2u);
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
    {
      sub_10082EB60();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA68, OS_LOG_TYPE_ERROR))
  {
    sub_10082EB9C();
  }

LABEL_20:
}

uint64_t sub_100060354(_BYTE *a1)
{
  if (a1[241])
  {
    v1 = 1;
  }

  else if ((*(*a1 + 8))(a1))
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[89];
  }

  return v1 & 1;
}

uint64_t sub_1000603C0(char a1, char a2, uint64_t (*a3)())
{
  v14 = 0;
  v15 = 0;
  result = sub_10001FFD8(&v14);
  if (((a2 - 2) & 0xFC) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0x16141311u >> (8 * (a2 - 2));
  }

  if (!result)
  {
    if (HIBYTE(v15))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v11 = WORD2(v15);
      if (WORD1(v15) > WORD2(v15))
      {
        if (BYTE6(v15) == 2)
        {
          ++WORD2(v15);
          *(v14 + v11) = v10;
          if (HIBYTE(v15))
          {
            sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
          }

          else if (WORD1(v15) - WORD2(v15) > 3)
          {
            if (BYTE6(v15) == 2)
            {
              *(v14 + WORD2(v15)) = a1;
              *(v14 + WORD2(v15) + 1) = 0;
              *(v14 + WORD2(v15) + 3) = 0;
              WORD2(v15) += 4;
              return sub_100020078(496, v14, BYTE4(v15), a3, sub_100060574, v7, v8, v9);
            }

            v13 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_20:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2828, v13);
          }

          v13 = "ByteStream_NumReadBytesAvail(bs) >= 4";
          goto LABEL_20;
        }

        v12 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_16:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2827, v12);
      }
    }

    v12 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100060574(uint64_t a1, uint64_t (*a2)(uint64_t, _DWORD *), uint64_t *a3)
{
  if (a1)
  {
    result = sub_10000C240();
    if (result && (sub_10000AF54("EnhancedProfilingStats VSC failed with status %!", v5, v6, v7, v8, v9, v10, v11, a1), v12 = sub_10000C050(0x54u), result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR), result))
    {
      sub_10080F604();
      v13 = 0;
      v14 = 0;
      result = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = 0;
    v71 = 0;
    v16 = 0;
    v72 = 0;
    v76 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v81 = 0;
    v26 = 0;
    v87 = 0;
    v88 = 0;
    v27 = 0;
    v75 = 0;
    v74 = 0;
    v73 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_80;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_86;
  }

  v40 = *(a3 + 5);
  v41 = *(a3 + 6);
  if (v40 <= v41)
  {
LABEL_86:
    v68 = "ByteStream_NumReadBytesAvail(*pBs) >= 1";
    goto LABEL_88;
  }

  if (*(a3 + 14) != 1)
  {
    v68 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_88:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 180, v68);
  }

  v42 = *a3;
  *(a3 + 6) = v41 + 1;
  if ((v40 - (v41 + 1)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 183, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v39 = *(v42 + v41);
  v38 = *(v42 + v41 + 1);
  *(a3 + 6) = v41 + 3;
  if ((v40 - (v41 + 3)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 186, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v70 = *(v42 + (v41 + 3));
  *(a3 + 6) = v41 + 5;
  if ((v40 - (v41 + 5)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 189, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v69 = *(v42 + (v41 + 5));
  *(a3 + 6) = v41 + 7;
  if ((v40 - (v41 + 7)) <= 1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 192, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
  }

  v43 = *(v42 + (v41 + 7));
  *(a3 + 6) = v41 + 9;
  if ((v40 - (v41 + 9)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 195, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v44 = *(v42 + (v41 + 9));
  *(a3 + 6) = v41 + 13;
  if ((v40 - (v41 + 13)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 196, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v45 = *(v42 + (v41 + 13));
  *(a3 + 6) = v41 + 17;
  if ((v40 - (v41 + 17)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 197, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v46 = *(v42 + (v41 + 17));
  *(a3 + 6) = v41 + 21;
  if ((v40 - (v41 + 21)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 198, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v47 = *(v42 + (v41 + 21));
  *(a3 + 6) = v41 + 25;
  if ((v40 - (v41 + 25)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 199, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v48 = *(v42 + (v41 + 25));
  *(a3 + 6) = v41 + 29;
  if ((v40 - (v41 + 29)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 200, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v49 = *(v42 + (v41 + 29));
  *(a3 + 6) = v41 + 33;
  if ((v40 - (v41 + 33)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 201, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v17 = *(v42 + (v41 + 33));
  *(a3 + 6) = v41 + 37;
  if ((v40 - (v41 + 37)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 202, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v18 = *(v42 + (v41 + 37));
  *(a3 + 6) = v41 + 41;
  if ((v40 - (v41 + 41)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 203, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v19 = *(v42 + (v41 + 41));
  *(a3 + 6) = v41 + 45;
  if ((v40 - (v41 + 45)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 204, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v20 = *(v42 + (v41 + 45));
  *(a3 + 6) = v41 + 49;
  if ((v40 - (v41 + 49)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 205, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v21 = *(v42 + (v41 + 49));
  *(a3 + 6) = v41 + 53;
  if ((v40 - (v41 + 53)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 206, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v22 = *(v42 + (v41 + 53));
  *(a3 + 6) = v41 + 57;
  if ((v40 - (v41 + 57)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 207, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v23 = *(v42 + (v41 + 57));
  *(a3 + 6) = v41 + 61;
  if ((v40 - (v41 + 61)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 208, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v24 = *(v42 + (v41 + 61));
  *(a3 + 6) = v41 + 65;
  if ((v40 - (v41 + 65)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 209, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v25 = *(v42 + (v41 + 65));
  *(a3 + 6) = v41 + 69;
  if ((v40 - (v41 + 69)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 210, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v50 = *(v42 + (v41 + 69));
  *(a3 + 6) = v41 + 73;
  if ((v40 - (v41 + 73)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 211, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v51 = *(v42 + (v41 + 73));
  *(a3 + 6) = v41 + 77;
  if ((v40 - (v41 + 77)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 212, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v52 = *(v42 + (v41 + 77));
  *(a3 + 6) = v41 + 81;
  if ((v40 - (v41 + 81)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 213, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v53 = *(v42 + (v41 + 81));
  *(a3 + 6) = v41 + 85;
  if ((v40 - (v41 + 85)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 214, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v85) = *(v42 + (v41 + 85));
  *(a3 + 6) = v41 + 89;
  if ((v40 - (v41 + 89)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 215, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  LODWORD(v85) = *(v42 + (v41 + 89));
  *(a3 + 6) = v41 + 93;
  if ((v40 - (v41 + 93)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 216, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v84) = *(v42 + (v41 + 93));
  *(a3 + 6) = v41 + 97;
  if ((v40 - (v41 + 97)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 217, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  LODWORD(v84) = *(v42 + (v41 + 97));
  *(a3 + 6) = v41 + 101;
  if ((v40 - (v41 + 101)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 218, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v83) = *(v42 + (v41 + 101));
  *(a3 + 6) = v41 + 105;
  if ((v40 - (v41 + 105)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 219, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  LODWORD(v83) = *(v42 + (v41 + 105));
  *(a3 + 6) = v41 + 109;
  if ((v40 - (v41 + 109)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 220, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v82) = *(v42 + (v41 + 109));
  *(a3 + 6) = v41 + 113;
  if ((v40 - (v41 + 113)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 221, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  LODWORD(v82) = *(v42 + (v41 + 113));
  *(a3 + 6) = v41 + 117;
  if ((v40 - (v41 + 117)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 222, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v81) = *(v42 + (v41 + 117));
  *(a3 + 6) = v41 + 121;
  if ((v40 - (v41 + 121)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 223, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  LODWORD(v81) = *(v42 + (v41 + 121));
  *(a3 + 6) = v41 + 125;
  if ((v40 - (v41 + 125)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 224, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v80) = *(v42 + (v41 + 125));
  *(a3 + 6) = v41 + 129;
  if ((v40 - (v41 + 129)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 225, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  LODWORD(v80) = *(v42 + (v41 + 129));
  *(a3 + 6) = v41 + 133;
  if ((v40 - (v41 + 133)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 226, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  HIDWORD(v78) = v53;
  v79 = __PAIR64__(v51, v52);
  LODWORD(v78) = *(v42 + (v41 + 133));
  *(a3 + 6) = v41 + 137;
  if ((v40 - (v41 + 137)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 227, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v26 = 0;
  LODWORD(v77) = *(v42 + (v41 + 137));
  HIDWORD(v77) = v50;
  v54 = v41 + 141;
  *(a3 + 6) = v41 + 141;
  if (v39 > 0x16)
  {
    v88 = 0;
    v87 = 0;
  }

  else
  {
    v88 = 0;
    v87 = 0;
    if (((1 << v39) & 0x5A0000) != 0)
    {
      if ((v40 - v54) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 233, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v26 = *(v42 + (v41 + 141));
      *(a3 + 6) = v41 + 143;
      if ((v40 - (v41 + 143)) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 235, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v55 = *(v42 + (v41 + 143));
      *(a3 + 6) = v41 + 145;
      if ((v40 - (v41 + 145)) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 237, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      LODWORD(v88) = *(v42 + (v41 + 145));
      HIDWORD(v88) = v55;
      *(a3 + 6) = v41 + 147;
      if ((v40 - (v41 + 147)) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 239, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      v56 = (v42 + (v41 + 147));
      v57 = *v56;
      v58 = v56[1];
      *(a3 + 6) = v41 + 149;
      if ((v40 - (v41 + 149)) <= 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 241, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
      }

      LODWORD(v87) = *(v42 + (v41 + 149));
      HIDWORD(v87) = v57 | (v58 << 8);
      v54 = v41 + 151;
      *(a3 + 6) = v41 + 151;
    }
  }

  v27 = 0;
  v76 = v49;
  if (v39 <= 0x16 && ((1 << v39) & 0x580000) != 0)
  {
    if ((v40 - v54) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 247, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v27 = *(v42 + v54);
    *(a3 + 6) = v54 + 2;
    if ((v40 - (v54 + 2)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 249, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v75 = *(v42 + (v54 + 2));
    *(a3 + 6) = v54 + 4;
    if ((v40 - (v54 + 4)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 251, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    HIDWORD(v74) = *(v42 + (v54 + 4));
    *(a3 + 6) = v54 + 6;
    if ((v40 - (v54 + 6)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 253, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v59 = (v42 + (v54 + 6));
    v60 = *v59;
    v61 = v59[1];
    *(a3 + 6) = v54 + 8;
    if ((v40 - (v54 + 8)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 255, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v62 = v48;
    v63 = v47;
    v16 = v46;
    v73 = *(v42 + (v54 + 8));
    LODWORD(v74) = v60 | (v61 << 8);
    v54 += 10;
    *(a3 + 6) = v54;
  }

  else
  {
    v62 = v48;
    v63 = v47;
    v16 = v46;
    v75 = 0;
    v73 = 0;
    v74 = 0;
  }

  v64 = v45;
  if ((v39 | 2) == 0x16)
  {
    if ((v40 - v54) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 263, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v65 = (v42 + v54);
    v66 = *v65;
    v67 = v65[1];
    *(a3 + 6) = v54 + 2;
    if ((v40 - (v54 + 2)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 265, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v15 = v44;
    result = v43;
    v28 = v66 | (v67 << 8);
    v29 = *(v42 + (v54 + 2));
    v54 += 4;
    *(a3 + 6) = v54;
  }

  else
  {
    v15 = v44;
    result = v43;
    v28 = 0;
    v29 = 0;
  }

  v72 = v63;
  v71 = __PAIR64__(v62, v64);
  if (v39 == 22)
  {
    if ((v40 - v54) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 275, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v30 = *(v42 + v54);
    *(a3 + 6) = v54 + 4;
    if ((v40 - (v54 + 4)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 277, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v31 = *(v42 + (v54 + 4));
    *(a3 + 6) = v54 + 8;
    if ((v40 - (v54 + 8)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 279, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v32 = *(v42 + (v54 + 8));
    *(a3 + 6) = v54 + 10;
    if ((v40 - (v54 + 10)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 281, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v33 = *(v42 + (v54 + 10));
    *(a3 + 6) = v54 + 12;
    if ((v40 - (v54 + 12)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 283, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v34 = *(v42 + (v54 + 12));
    *(a3 + 6) = v54 + 14;
    if ((v40 - (v54 + 14)) <= 1)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 285, "ByteStream_NumReadBytesAvail(*pBs) >= 2");
    }

    v35 = *(v42 + (v54 + 14));
    *(a3 + 6) = v54 + 16;
    if ((v40 - (v54 + 16)) <= 7)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 287, "ByteStream_NumReadBytesAvail(*pBs) >= 8");
    }

    v36 = *(v42 + (v54 + 16));
    *(a3 + 6) = v54 + 24;
    if ((v40 - (v54 + 24)) <= 7)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 289, "ByteStream_NumReadBytesAvail(*pBs) >= 8");
    }

    v37 = *(v42 + (v54 + 24));
    *(a3 + 6) = v54 + 32;
    v39 = 22;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v14 = v69;
  v13 = v70;
LABEL_80:
  if (a2)
  {
    v90[0] = v39;
    v90[1] = v38;
    v90[2] = v13;
    v90[3] = v14;
    v90[4] = result;
    v90[5] = v15;
    v90[6] = v71;
    v90[7] = v16;
    v90[8] = v72;
    v90[9] = HIDWORD(v71);
    v90[10] = v76;
    v90[11] = v17;
    v90[12] = v18;
    v90[13] = v19;
    v90[14] = v20;
    v90[15] = v21;
    v90[16] = v22;
    v90[17] = v23;
    v90[18] = v24;
    v90[19] = v25;
    v90[20] = HIDWORD(v77);
    v90[21] = HIDWORD(v79);
    v90[22] = v79;
    v90[23] = HIDWORD(v78);
    v90[24] = HIDWORD(v85);
    v90[25] = v85;
    v90[26] = HIDWORD(v84);
    v90[27] = v84;
    v90[28] = HIDWORD(v83);
    v90[29] = v83;
    v90[30] = HIDWORD(v82);
    v90[31] = v82;
    v90[32] = HIDWORD(v81);
    v90[33] = v81;
    v90[34] = HIDWORD(v80);
    v90[35] = v80;
    v90[36] = v78;
    v90[37] = v77;
    v90[38] = v26;
    v90[39] = HIDWORD(v88);
    v90[40] = v88;
    v90[41] = HIDWORD(v87);
    v90[42] = v87;
    v90[43] = v27;
    v90[44] = v75;
    v90[45] = HIDWORD(v74);
    v90[46] = v74;
    v90[47] = v73;
    v90[48] = v28;
    v90[49] = v29;
    v90[50] = v30;
    v90[51] = v31;
    v90[52] = v32;
    v90[53] = v33;
    v90[54] = v34;
    v90[55] = v35;
    v91 = v36;
    v92 = v37;
    return a2(a1, v90);
  }

  return result;
}

uint64_t sub_10006156C(int a1, int *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *a2;
    LODWORD(v5) = a2[1];
    LODWORD(v6) = a2[2];
    LODWORD(v7) = a2[3];
    LODWORD(v8) = a2[4];
    v15 = a2[38] / 100.0;
    LODWORD(v9) = a2[42];
    v16 = a2[41] / 100.0;
    LODWORD(v10) = a2[43];
    LODWORD(v11) = a2[44];
    LODWORD(v12) = a2[45];
    LODWORD(v13) = a2[46];
    v40 = 67112192;
    v17 = a2[47];
    *v41 = v14;
    *&v41[4] = 2048;
    *&v41[6] = v5 / 100.0;
    *&v41[14] = 2048;
    *&v41[16] = v6 / 100.0;
    *&v41[24] = 2048;
    *&v41[26] = v7 / 100.0;
    *&v41[34] = 2048;
    *&v41[36] = v8 / 100.0;
    *&v41[44] = 2048;
    *&v41[46] = v15;
    *&v41[54] = 2048;
    *&v41[56] = v16;
    *&v41[64] = 2048;
    *&v41[66] = v9 / 100.0;
    v42 = 2048;
    v43 = v10 / 100.0;
    v44 = 2048;
    v45 = v11 / 100.0;
    v46 = 2048;
    v47 = v12 / 100.0;
    v48 = 2048;
    v49 = v13 / 100.0;
    v50 = 2048;
    v51 = v17 / 100.0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): commandType %d, txPct %0.1f%%, rxPct %0.1f%%, sleepPct %0.1f%%, idlePct %0.1f%% LP:%0.1f%% EPA:%0.1f%% TxBfEPA:%0.1f%% RxScan%0.1f%%, MainCore:%0.1f%%:%0.1f%%, ScanCore:%0.1f%%: %0.1f%%", &v40, 0x80u);
    v4 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18) = a2[48];
    LODWORD(v19) = a2[49];
    v40 = 134218240;
    *v41 = v18 / 100.0;
    *&v41[8] = 2048;
    *&v41[10] = v19 / 100.0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): m154Tx %0.1f%%,m154Rx %0.1f%%", &v40, 0x16u);
    v4 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a2[50];
    v24 = a2[51];
    LODWORD(v20) = a2[52];
    LODWORD(v21) = a2[53];
    v40 = 67110912;
    LODWORD(v22) = a2[55];
    v25 = a2[54] / 100.0;
    v26 = *(a2 + 28);
    v27 = *(a2 + 29);
    *v41 = v23;
    *&v41[4] = 1024;
    *&v41[6] = v24;
    *&v41[10] = 2048;
    *&v41[12] = v20 / 100.0;
    *&v41[20] = 2048;
    *&v41[22] = v21 / 100.0;
    *&v41[30] = 2048;
    *&v41[32] = v25;
    *&v41[40] = 2048;
    *&v41[42] = v22 / 100.0;
    *&v41[50] = 2048;
    *&v41[52] = v26;
    *&v41[60] = 2048;
    *&v41[62] = v27;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): ipa5g %u, epa5g %u, txbf5gTxPct %0.1f%%, mrc5gRxPct %0.1f%%, epa5gTxPct %0.1f%%, txbf5gEpaRxPct %0.1f%%, duration5gTx %llu, duration5gRx %llu", &v40, 0x4Au);
  }

  v28 = *a2;
  v29 = *(a2 + 2);
  xmmword_100B6D540 = *(a2 + 1);
  xmmword_100B6D550 = v29;
  xmmword_100B6D530 = v28;
  v30 = *(a2 + 3);
  v31 = *(a2 + 4);
  v32 = *(a2 + 6);
  xmmword_100B6D580 = *(a2 + 5);
  xmmword_100B6D590 = v32;
  xmmword_100B6D560 = v30;
  xmmword_100B6D570 = v31;
  v33 = *(a2 + 7);
  v34 = *(a2 + 8);
  v35 = *(a2 + 10);
  xmmword_100B6D5C0 = *(a2 + 9);
  *&dword_100B6D5D0 = v35;
  xmmword_100B6D5A0 = v33;
  xmmword_100B6D5B0 = v34;
  v36 = *(a2 + 11);
  v37 = *(a2 + 12);
  v38 = *(a2 + 14);
  xmmword_100B6D600 = *(a2 + 13);
  *&qword_100B6D610 = v38;
  xmmword_100B6D5E0 = v36;
  *&dword_100B6D5F0 = v37;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0xBFu);
}

uint64_t sub_1000618B8()
{
  if (off_100B60540)
  {
    v0 = off_100B60540();
    if (!v0)
    {
      return v0;
    }
  }

  else
  {
    v0 = 3601;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("VSC failed %!", v1, v2, v3, v4, v5, v6, v7, v0);
    v8 = sub_10000C050(0x54u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }

  return v0;
}

uint64_t sub_100061944(char a1, uint64_t (*a2)())
{
  v10 = 0;
  v11 = 0;
  result = sub_10001FFD8(&v10);
  if (!result)
  {
    if (HIBYTE(v11))
    {
      sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    }

    else
    {
      v8 = WORD2(v11);
      if (WORD1(v11) > WORD2(v11))
      {
        if (BYTE6(v11) == 2)
        {
          ++WORD2(v11);
          *(v10 + v8) = a1;
          return sub_100020078(528, v10, BYTE4(v11), a2, sub_100061A1C, v5, v6, v7);
        }

        v9 = "(bs).__RWFlag == BYTESTREAM_WRITE";
LABEL_10:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 2843, v9);
      }
    }

    v9 = "ByteStream_NumReadBytesAvail(bs) >= 1";
    goto LABEL_10;
  }

  return result;
}

void sub_100061A1C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("status %!, iPACounter %d, ePACounter %d, iPAThreadCounter %d, ePAThreadCounter %d", v5, v6, v7, v8, v9, v10, v11, a1);
      v12 = sub_10000C050(0x54u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }

    return;
  }

  if (*(a3 + 15))
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c");
    goto LABEL_20;
  }

  v17 = *(a3 + 5);
  v18 = *(a3 + 6);
  if (v17 - v18 <= 3)
  {
LABEL_20:
    v21 = "ByteStream_NumReadBytesAvail(*pBs) >= 4";
    goto LABEL_22;
  }

  if (*(a3 + 14) != 1)
  {
    v21 = "(*pBs).__RWFlag == BYTESTREAM_READ";
LABEL_22:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 318, v21);
  }

  v19 = *a3;
  v16 = *(*a3 + v18);
  *(a3 + 6) = v18 + 4;
  if ((v17 - (v18 + 4)) <= 3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 319, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
  }

  v15 = *(v19 + (v18 + 4));
  *(a3 + 6) = v18 + 8;
  if (v17 - (v18 + 8) == 8)
  {
    v20 = (v18 + 8);
    if (v17 - v20 <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 323, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v13 = *(v19 + v20);
    *(a3 + 6) = v18 + 12;
    if ((v17 - (v18 + 12)) <= 3)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/vsc/bcm/bcm_vsc.c", 324, "ByteStream_NumReadBytesAvail(*pBs) >= 4");
    }

    v14 = *(v19 + (v18 + 12));
    *(a3 + 6) = v18 + 16;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if (a2)
    {
LABEL_6:
      a2(a1, v16, v15, v13, v14);
    }
  }
}

uint64_t sub_100061C00(int a1, int a2, int a3, int a4, int a5)
{
  LODWORD(xmmword_100B6D420) = a2;
  DWORD1(xmmword_100B6D420) = a3;
  DWORD2(xmmword_100B6D420) = a4;
  HIDWORD(xmmword_100B6D420) = a5;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109888;
    v12[1] = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    v17 = 1024;
    v18 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): iPACount: %u, ePACount: %u, iPAThreadCount: %u, ePAThreadCount: %u", v12, 0x1Au);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0xC0u);
}

void sub_100061D10(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830190();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100061DFC(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgDiscoverable", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_100061DFC(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_100061EC8(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_100061E78(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 160);
  *a2 = *(a1 + 228);
  sub_1000088CC(v5);
  return 0;
}

uint64_t sub_100061EC8(uint64_t a1, _BYTE *a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_100061E78(v3, a2);
}

void sub_100061F1C(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830330();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_100062008(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgConnected", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_100062008(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_100062084(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_100062084(uint64_t a1, _BYTE *a2)
{
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  *a2 = sub_100062100(off_100B50F60);
  if (qword_100B508B0 != -1)
  {
    sub_100844458();
  }

  *a2 |= sub_10006217C(off_100B508A8);
  return 0;
}

uint64_t sub_100062100(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 56);
  for (i = *(a1 + 120); ; i += 8)
  {
    if (i == *(a1 + 128))
    {
      v3 = 0;
      goto LABEL_8;
    }

    if (**i == 2 || *(*i + 24))
    {
      break;
    }
  }

  v3 = 1;
LABEL_8:
  sub_1000088CC(v5);
  return v3;
}

BOOL sub_10006217C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 120);
  v2 = *(a1 + 400) != 0;
  sub_1000088CC(v4);
  return v2;
}

void sub_1000621CC(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgLocalDeviceID");
  LODWORD(value) = 0;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100830260();
    if (uint64)
    {
      goto LABEL_3;
    }
  }

  else if (uint64)
  {
LABEL_3:
    v6 = sub_1000622B8(uint64, &value);
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgResult", v6);
    xpc_dictionary_set_uint64(v8, "kCBMsgArgConnectable", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

uint64_t sub_1000622B8(uint64_t a1, _DWORD *a2)
{
  if (qword_100B508A0 != -1)
  {
    sub_1000AD694();
  }

  v4 = sub_100059CB8(off_100B50898, a1);
  if (!v4)
  {
    return 7;
  }

  v6 = 0;
  result = sub_100062384(v4, &v6);
  if (!result)
  {
    *a2 = -v6;
  }

  return result;
}

uint64_t sub_100062334(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 160);
  *a2 = *(a1 + 231);
  sub_1000088CC(v5);
  return 0;
}

uint64_t sub_100062384(uint64_t a1, _BYTE *a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_100062334(v3, a2);
}

uint64_t sub_1000623D8(uint64_t a1, unsigned int a2, int a3)
{
  if ((a3 - 9) >= 0xFFFFFFF8)
  {
    v3 = a3;
  }

  else
  {
    v3 = 8;
  }

  v4 = &v7;
  v7 = 0;
  HIBYTE(v6) = 0;
  do
  {
    *--v4 = a0123456789abcd_0[a2 & 0xF];
    a2 >>= 4;
    --v3;
  }

  while (v3);
  return sub_100062468(a1, v4);
}

uint64_t sub_100062468(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = a2 + 1;
  while (1)
  {
    if (*(a1 + 2))
    {
      v5 = *(a1 + 4);
      if (*(a1 + 2) - 1 > v5)
      {
        goto LABEL_9;
      }
    }

    if (*a1 != 1)
    {
      return 0;
    }

    if (!sub_1000D5E38(a1))
    {
      return 106;
    }

    v2 = *(v4 - 1);
    v5 = *(a1 + 4);
LABEL_9:
    v6 = *(a1 + 8);
    *(a1 + 4) = v5 + 1;
    *(v6 + v5) = v2;
    v7 = *v4++;
    v2 = v7;
    if (!v7)
    {
      return 0;
    }
  }
}

uint64_t *sub_100062500(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 25);
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

uint64_t sub_1000625CC(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100062668(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100062668(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
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
    if (*(v10 + 25) < v15)
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
          v18 = *(v16 + 25);
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

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
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

void sub_10006291C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100066098();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C10C8;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_100062A7C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100062A98(void *a1, uint64_t a2, const void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100086A74(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1000629E8();
  }

  return result;
}

void sub_100062B28(uint64_t a1)
{
  v2 = sub_100007EE8();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100062BDC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a1;
  sub_10000CA94(v2, v3);
}

BOOL sub_100062BA4(uint64_t a1, unsigned int a2)
{
  result = 1;
  if (a2 > 0x2F || ((1 << a2) & 0x800000000C00) == 0)
  {
    return a2 == 220;
  }

  return result;
}

void sub_100062BDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 128))
  {
    return;
  }

  if (!sub_10006301C())
  {
LABEL_19:
    sub_1000634AC(v1);
    return;
  }

  v2 = *(v1 + 96);
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v3 = (v1 + 56);
  if (*(v1 + 79) < 0)
  {
    v3 = *v3;
  }

  v4 = off_100B512F0;
  v5 = [NSString stringWithUTF8String:v3];
  sub_100063030(v4, v5, v2);

  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v6 = sub_1000632DC(off_100B512F0, *(v1 + 128));
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(*(v1 + 128), __p);
    v8 = v29 >= 0 ? __p : __p[0];
    v9 = *(v1 + 175);
    v10 = *(v1 + 176);
    v11 = *(v1 + 177);
    v12 = *(v1 + 178);
    *buf = 136316418;
    *v31 = v8;
    *&v31[8] = 1024;
    *v32 = v9;
    *&v32[4] = 1024;
    *v33 = v10;
    *&v33[4] = 1024;
    *v34 = v11;
    *&v34[4] = 1024;
    *v35 = v12;
    *&v35[4] = 1024;
    *v36 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TCC Done session:%s fDeviceAccessForMediaSession:%d fDeviceAccessForMediaExtension:%d fDeviceAccessPerAccessorySession:%d fDeviceAccessPerAccessoryExtension:%d sessionType:%d", buf, 0x2Au);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B512F8 != -1)
  {
    sub_1008565BC();
  }

  v13 = sub_10006E254(off_100B512F0, *(v1 + 128));
  if (*(v1 + 80) > 0 || (*(v1 + 186) & 1) != 0 || v13 == 32)
  {
    goto LABEL_18;
  }

  if (*(v1 + 175) & 1) != 0 || *(v1 + 176) == 1 && !v6 || (*(v1 + 177))
  {
    v14 = 1;
  }

  else
  {
    v14 = v6 ? 0 : *(v1 + 178);
  }

  if (((sub_100013E74(v13, v2) | v14) & 1) != 0 || *(v1 + 89) == 1)
  {
    v15 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v31 = v2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Overriding TCC for bundleIdentifier %@", buf, 0xCu);
    }

    v16 = 1;
  }

  else
  {
    v17 = sub_100668E78(v1);
    v18 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "unknown";
      if (v17 == 1)
      {
        v19 = "denied";
      }

      if (!v17)
      {
        v19 = "granted";
      }

      *buf = 136315138;
      *v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Bluetooth user permission alwaysAuth: %s", buf, 0xCu);
    }

    v16 = sub_100669184(v1, 0);
  }

  v20 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v1 + 196);
    v22 = *(v1 + 197);
    v23 = *(v1 + 175);
    v24 = *(v1 + 176);
    v25 = *(v1 + 177);
    v26 = *(v1 + 178);
    *buf = 67111168;
    *v31 = v16;
    *&v31[4] = 1024;
    *&v31[6] = v21;
    *v32 = 1024;
    *&v32[2] = v22;
    *v33 = 1024;
    *&v33[2] = v14;
    *v34 = 1024;
    *&v34[2] = v23;
    *v35 = 1024;
    *&v35[2] = v24;
    *v36 = 1024;
    *&v36[2] = v25;
    v37 = 1024;
    v38 = v26;
    v39 = 1024;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BluetoothUserPrivacy: alwaysAccess: %d, isCBPrivacySupported: %d, medicalDeviceOrStateRestorationAppPendingTCC:%d deviceAccessExempt:%d fDeviceAccessForMediaSession:%d fDeviceAccessForMediaExtension:%d fDeviceAccessPerAccessorySession:%d fDeviceAccessPerAccessoryExtension:%d sessionType:%d", buf, 0x38u);
  }

  *(v1 + 197) = 0;
  *(v1 + 195) = v16;
  if (v16)
  {
LABEL_18:

    goto LABEL_19;
  }

  if (*(v1 + 196))
  {
    v27 = 3;
  }

  else
  {
    v27 = 4;
  }

  sub_100063710(v1, v27);
}

void sub_100063030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 224);
  if (v7 != (a1 + 232))
  {
    do
    {
      v8 = v7[5];
      sub_100018384(v7[4], __p);
      if (v22 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      v10 = [NSString stringWithUTF8String:v9];
      if (v22 < 0)
      {
        operator delete(*__p);
      }

      if ([v10 isEqualToString:v5])
      {
        *(v8 + 39) = 1;
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v13 = *v12 == v7;
          v7 = v12;
        }

        while (!v13);
      }

      v7 = v12;
    }

    while (v12 != (a1 + 232));
  }

  if ([*(a1 + 352) containsObject:v5])
  {
    v14 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138543362;
      *&__p[4] = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remove %{public}@ from tccPendingBundleList", __p, 0xCu);
    }

    [*(a1 + 352) removeObject:v5];
  }

  v17 = *(a1 + 248);
  v15 = (a1 + 248);
  v16 = v17;
  if (v17 != v15 + 1)
  {
    while (![*(v16 + 32) isEqualToString:v6])
    {
      v18 = *(v16 + 8);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v16 + 16);
          v13 = *v19 == v16;
          v16 = v19;
        }

        while (!v13);
      }

      v16 = v19;
      if (v19 == v15 + 1)
      {
        goto LABEL_31;
      }
    }

    v20 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 138543362;
      *&__p[4] = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Erasing %{public}@ from fBundleCheckinMap", __p, 0xCu);
    }

    sub_1003C4E3C(v15, v16);
  }

LABEL_31:
}

uint64_t sub_1000632DC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 232);
  v2 = a1 + 232;
  v3 = v4;
  if (!v4)
  {
    return 4;
  }

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
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return (*(**(v5 + 40) + 16))();
  }

  else
  {
    return 4;
  }
}

uint64_t sub_100063344(uint64_t a1, unint64_t a2, int *a3, _BYTE *a4)
{
  *a3 = 0;
  v4 = *(a1 + 232);
  if (v4)
  {
    v8 = a1 + 232;
    do
    {
      v9 = *(v4 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v4;
      }

      v4 = *(v4 + 8 * v11);
    }

    while (v4);
    if (v8 != a1 + 232 && *(v8 + 32) <= a2)
    {
      v12 = *(v8 + 40);
      *a4 = 0;
      if (v12[36] != 1)
      {
        goto LABEL_15;
      }

      if (qword_100B512C8 != -1)
      {
        sub_100823644();
      }

      if (sub_10000EE78(off_100B512C0) == 1)
      {
        *a4 = *(a1 + 179);
        v13 = 1;
LABEL_25:
        *a3 = v13;
        return 0;
      }

      if ((v12[36] & 1) == 0)
      {
LABEL_15:
        if (*(a1 + 179))
        {
          goto LABEL_24;
        }
      }

      if (qword_100B512C8 != -1)
      {
        sub_100823644();
      }

      *a3 = sub_10000EE78(off_100B512C0);
      if (!(*(*v12 + 16))(v12) && sub_10005EDD8(v12) && (sub_1004FFBCC(v12) & 1) == 0)
      {
        *a3 = 0;
      }

      if (v12[73] == 1 && v12[129] == 4)
      {
LABEL_24:
        v13 = 0;
        goto LABEL_25;
      }
    }
  }

  return 0;
}

void sub_1000634AC(uint64_t a1)
{
  v13 = 0;
  v12 = 0;
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  sub_100063344(off_100B512F0, *(a1 + 128), &v13, &v12);
  if (*(a1 + 187) == 1 && v13 == 1)
  {
    if (v12 == 1)
    {
      v3 = *(a1 + 188) ^ 1;
    }

    else
    {
      v3 = 0;
    }

    (*(*a1 + 328))(a1, v3 & 1);
  }

  else
  {
    (*(*a1 + 320))(a1, *(a1 + 128));
  }

  if (v13 == 1 || v12 == 1)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v4 = *(off_100B508A8 + 37);
    v5 = *(off_100B508A8 + 39);
    v6 = *(a1 + 128);
    v11[0] = *(off_100B508A8 + 36);
    v11[1] = v4;
    v11[2] = v5;
    (*(*a1 + 184))(a1, v6, v11);
    if (*(a1 + 169) == 1)
    {
      v7 = sub_100007EE8();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1006695F4;
      v10[3] = &unk_100ADF8F8;
      v10[4] = a1;
      sub_10000CA94(v7, v10);
    }

    if (qword_100B512F8 != -1)
    {
      sub_1008565BC();
    }

    sub_10006576C(off_100B512F0, *(a1 + 128));
    if (*(a1 + 104) == 1)
    {
      v8 = sub_100007EE8();
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100669648;
      v9[3] = &unk_100ADF8F8;
      v9[4] = a1;
      sub_10000CA94(v8, v9);
    }
  }
}

void sub_100063710(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  if (v2 != 2 && v2 != a2)
  {
    v4 = a2;
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      if (v4 - 1 > 9)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_100AFF570[v4 - 1];
      }

      v9 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v9 = *v9;
      }

      v10 = 136446466;
      v11 = v8;
      v12 = 2082;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending 'state updated' event with state %{public}s to session %{public}s", &v10, 0x16u);
    }

    *(a1 + 136) = v4;
    if (v4 == 5)
    {
      (*(*a1 + 64))(a1);
      v4 = *(a1 + 136);
    }

    xpc_dictionary_set_int64(v6, "kCBMsgArgState", v4);
    sub_10004DFB8(a1, 6, v6, 1);
  }
}

uint64_t sub_100063884(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100496500;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E3D8 != -1)
  {
    dispatch_once(&qword_100B6E3D8, block);
  }

  return byte_100B6E3D0;
}

uint64_t sub_100063914(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10049B000;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6E550 != -1)
  {
    dispatch_once(&qword_100B6E550, block);
  }

  return byte_100B6E548;
}

void sub_1000639A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100063D0C();
    v7 = sub_100063D0C();
    v8 = a3[2] & 0xFFFFFFFFFFFFLL;
    v9 = &stru_100B0F9E0;
    if (v8)
    {
      v10 = @" non-connectable secondary:";
    }

    else
    {
      v10 = &stru_100B0F9E0;
    }

    if (v8)
    {
      v9 = sub_100063D0C();
    }

    *buf = 138413058;
    v25 = v6;
    v26 = 2112;
    *v27 = v7;
    *&v27[8] = 2112;
    *&v27[10] = v10;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "advertisingAddressDidChange connectable:%@ non-connectable:%@%@%@", buf, 0x2Au);
    if (v8)
    {
    }
  }

  v11 = *(a1 + 80);
  if (v11 >= 1 && ((v12 = *(a1 + 136), v12 != 5) ? (v13 = v12 == 10) : (v13 = 1), v13))
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = *a3;
    buf[0] = WORD2(*a3) >> 8;
    buf[1] = BYTE4(v15);
    buf[2] = BYTE3(v15);
    buf[3] = BYTE2(v15);
    LOBYTE(v25) = BYTE1(v15);
    BYTE1(v25) = v15;
    v16 = a3[1];
    bytes[0] = BYTE5(v16);
    bytes[1] = BYTE4(v16);
    bytes[2] = BYTE3(v16);
    bytes[3] = BYTE2(v16);
    bytes[4] = BYTE1(v16);
    v17 = a3[2];
    bytes[5] = v16;
    v22[0] = BYTE5(v17);
    v22[1] = BYTE4(v17);
    v22[2] = BYTE3(v17);
    v22[3] = BYTE2(v17);
    v22[4] = BYTE1(v17);
    v22[5] = v17;
    xpc_dictionary_set_data(v14, "kCBConnectableAdvertisingAddress", buf, 6uLL);
    xpc_dictionary_set_int64(v14, "kCBConnectableAdvertisingAddressType", *(a3 + 6));
    xpc_dictionary_set_data(v14, "kCBNonConnectableAdvertisingAddress", bytes, 6uLL);
    xpc_dictionary_set_int64(v14, "kCBNonConnectableAdvertisingAddressType", *(a3 + 14));
    xpc_dictionary_set_data(v14, "kCBNonConnectableSecondaryAdvertisingAddress", v22, 6uLL);
    xpc_dictionary_set_int64(v14, "kCBNonConnectableSecondaryAdvertisingAddressType", *(a3 + 22));
    sub_10004DFB8(a1, 65, v14, 1);
  }

  else
  {
    v18 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v19 = *v19;
      }

      v20 = *(a1 + 136);
      *buf = 136315650;
      if (v20 == 5)
      {
        v21 = "";
      }

      else
      {
        v21 = "not ";
      }

      v25 = v19;
      v26 = 1024;
      *v27 = v11;
      *&v27[4] = 2080;
      *&v27[6] = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignore advertisingAddressDidChange for session %s with access level : %d and manager state %spowered on", buf, 0x1Cu);
    }
  }
}

id sub_100063D0C()
{
  sub_10004D9B0();
  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v1 = [NSString stringWithUTF8String:p_p];
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_100063D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100063DA4(uint64_t a1, void *a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3020000000;
  v15[5] = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v4 = sub_10000F034();
  (*(*v4 + 664))(v4, *(a1 + 96), 0);
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgUUIDs");
  *(v21 + 6) = v12;
  if (!v12)
  {
    if (!sub_1000661A4(v16, "kCBScanOptionReadADVBuffersNow"))
    {
      operator new();
    }

    if (*(a1 + 192) == 1)
    {
      v13 = sub_100007EE8();
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1006706BC;
      v14[3] = &unk_100AE1120;
      v14[4] = &v20;
      sub_10000D334(v13, v14);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008574E4();
    }
  }

  _Block_object_dispose(v15, 8);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  _Block_object_dispose(&v20, 8);
}

void sub_1000644AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v49 - 128), 8);
  _Block_object_dispose(&a49, 8);
  v51 = *(v49 - 232);
  if (v51)
  {
    *(v49 - 224) = v51;
    operator delete(v51);
  }

  _Block_object_dispose((v49 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006458C(uint64_t a1, void *a2, uint64_t a3)
{
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v6 = sub_100066200(a2, "kCBScanOptionPeers");
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v80 = 1;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v7 = sub_10003ED64(a2, "kCBManagerListOfClients");
  v8 = [NSMutableSet setWithArray:v7];

  objc_storeStrong((a3 + 176), v8);
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v15 = sub_100013CA4(a2, 0, v9, v10, v11, v12, v13, v14, "kCBScanOptionAllowDuplicates");
  if (v15)
  {
    v16 = 0;
    goto LABEL_130;
  }

  if (*(a1 + 80) < 1)
  {
    v16 = 0;
  }

  else
  {
    *(a3 + 192) = v72;
    objc_storeStrong((a3 + 200), 0);
    v17 = sub_10006638C(a2, "kCBOptionUseCaseList");
    v18 = v17;
    if (v17)
    {
      if ([v17 count])
      {
        v19 = [NSSet setWithArray:v18];
        v20 = [v19 allObjects];

        v18 = [v20 sortedArrayUsingSelector:"compare:"];
      }

      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong((a3 + 216), v16);
    if (v16 && [v16 count])
    {
      v21 = sub_100670768(v16);
      v22 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v21 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v99 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "scanUseCaseList: %@", buf, 0xCu);
      }

      if (!v72)
      {
        v24 = [v16 firstObject];
        v25 = v24;
        if (v24)
        {
          *(a3 + 192) = [v24 longLongValue];
          v26 = *(a3 + 200);
          *(a3 + 200) = 0;

          v27 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v28 = sub_10002C70C([v25 longLongValue]);
            *buf = 136315138;
            v99 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "default scanUseCase derived from scanUseCaseList: %s", buf, 0xCu);
          }
        }
      }
    }
  }

  *(a3 + 241) = *(a1 + 192);
  v29 = sub_10000C7D0();
  if ((*(*v29 + 4136))(v29) >= 0x20)
  {
    if (*(a1 + 193))
    {
      v30 = 32;
    }

    else
    {
      v30 = 8;
    }

    *(a3 + 243) = v30;
  }

  if (WORD1(v72) << 16 == 0x10000 && (_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B2DC();
    }

    goto LABEL_78;
  }

  if (sub_1000661A4(a2, "kCBScanOptionScanRxDuration"))
  {
    *(a3 + 228) = v73;
  }

  if (sub_1000661A4(a2, "kCBScanOptionAllowDuplicates"))
  {
    *a3 = v97 != 0;
  }

  if (sub_1000661A4(a2, "kCBScanOptionRequiresActive"))
  {
    *(a3 + 2) = v87 != 0;
  }

  if (sub_1000661A4(a2, "kCBScanOptionSolicitedServiceUUIDs"))
  {
    sub_10000CB74(&__p, &v94);
    if ((a3 + 56) != &__p)
    {
      sub_10003A598((a3 + 56), __p, v68, 0xCCCCCCCCCCCCCCCDLL * ((v68 - __p) >> 2));
    }

    if (__p)
    {
      v68 = __p;
      operator delete(__p);
    }
  }

  if (sub_1000661A4(a2, "kCBMsgArgIsPrivilegedDaemon"))
  {
    *(a3 + 1) = v93 != 0;
  }

  if (sub_1000661A4(a2, "kCBScanOptionPeers"))
  {
    objc_storeStrong((a3 + 80), v6);
  }

  if (sub_1000661A4(a2, "kCBScanOptionPriorityCritical"))
  {
    *(a3 + 165) = v78 != 0;
  }

  if (sub_1000661A4(a2, "kCBScanOptionRange"))
  {
    *(a3 + 164) = v79 != 0;
  }

  *(a3 + 145) = v88 != 0;
  *(a3 + 163) = v80;
  *(a3 + 224) = v71 != 0;
  if (*(a1 + 80) == 2)
  {
    *(a3 + 239) = v70 != 0;
    if (!v72)
    {
      v38 = sub_1000661A4(a2, "kCBScanOptionHWObjectDiscovery");
      if (v83)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      if (v39 == 1)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10085B318();
        }

        v81 = 1;
      }

      v40 = sub_1000661A4(a2, "kCBScanOptionHWObjectDiscoveryWild");
      v41 = v81;
      v42 = sub_1000661A4(a2, "kCBScanOptionHWObjectDiscoveryNearOwner");
      v43 = v41 ? v40 : 0;
      v44 = (v42 & (v82 != 0)) != 0 ? v43 | 2 : v43;
      if (v44)
      {
        if (_os_feature_enabled_impl())
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10085B398();
          }

          goto LABEL_78;
        }

        v61 = sub_10000C798();
        if (!(*(*v61 + 744))(v61))
        {
          goto LABEL_81;
        }

        *(a3 + 146) = v44;
      }
    }

    *(a3 + 3) = v86 != 0;
    if (v77)
    {
      v31 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        v32 = (a1 + 56);
        if (*(a1 + 79) < 0)
        {
          v32 = *v32;
        }

        *buf = 136315138;
        v99 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Session %s requested to hold a scan power assertion", buf, 0xCu);
      }

      *(a3 + 171) = 1;
    }

    *(a3 + 173) = v75 != 0;
    if (sub_1000661A4(a2, "kCBScanOptionPriorityConfiguration"))
    {
      *(a3 + 174) = v74;
    }
  }

  if (!v76)
  {
    goto LABEL_61;
  }

  v33 = sub_10000C798();
  if (((*(*v33 + 384))(v33) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085AFDC();
    }

LABEL_81:
    v15 = 11;
    goto LABEL_130;
  }

  if (*(a1 + 80) >= 1)
  {
    *a3 = 0;
    *(a3 + 172) = 1;
    *(a1 + 173) = 1;
  }

LABEL_61:
  if (sub_100066F68())
  {
    *(a1 + 173) = 1;
  }

  if (*(a1 + 186) == 1)
  {
    *(a3 + 161) = v92;
  }

  v35 = v90;
  v34 = v91;
  if (v90)
  {
    v36 = v91 == 0;
  }

  else
  {
    v36 = 1;
  }

  if (!v36 || v83)
  {
    if (v91 == 0xFFFF || v90 == 0xFFFF)
    {
      v90 = 0;
      v91 = 0;
    }

    else if (v91 && v90)
    {
      v37 = v89 != 0;
      *(a3 + 144) = 1;
      *(a3 + 152) = v35;
      *(a3 + 156) = v34;
      *(a3 + 160) = v37;
    }
  }

  if (v85)
  {
    v45 = *(a1 + 171);
    *(a3 + 162) = v45;
    if ((v45 & 1) == 0 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085B3D4();
    }
  }

  else
  {
    *(a3 + 162) = 0;
  }

  v46 = sub_10000C7D0();
  if ((*(*v46 + 2776))(v46))
  {
    value = xpc_dictionary_get_value(a2, "kCBScanOptionZone");
    if (*(a1 + 170) == 1)
    {
      v48 = value;
      if (value)
      {
        if (xpc_get_type(value) == &_xpc_type_array)
        {
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_10067A474;
          applier[3] = &unk_100AEE500;
          applier[4] = a3;
          if (!xpc_array_apply(v48, applier))
          {
LABEL_78:
            v15 = 3;
            goto LABEL_130;
          }
        }
      }
    }
  }

  v49 = *(a1 + 96);
  v50 = _os_feature_enabled_impl();
  if (v8)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  if (v51 == 1)
  {
    v52 = [v8 allObjects];
    v53 = [v52 firstObject];

    if ([v53 length])
    {
      objc_storeStrong((a1 + 232), v53);
      if (!sub_10005F254(a1))
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008566EC();
        }

        goto LABEL_128;
      }
    }
  }

  v54 = xpc_dictionary_get_value(a2, "kCBScanOptionAppleFilter");
  v55 = v54;
  if (!v54 || xpc_get_type(v54) != &_xpc_type_array || (v62[0] = _NSConcreteStackBlock, v62[1] = 3221225472, v62[2] = sub_10067A5E4, v62[3] = &unk_100B04E60, v64 = a1, v63 = v49, v65 = a3, v56 = xpc_array_apply(v55, v62), v63, v56))
  {
    v57 = *(a3 + 176);
    v58 = [NSMutableSet setWithSet:v57];

    if (![v58 count])
    {
      [v58 addObject:*(a1 + 96)];
    }

    v59 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v99 = v58;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Setting client list to %@", buf, 0xCu);
    }

    objc_storeStrong((a3 + 176), v58);
    sub_1000665CC(a3);
    v15 = 0;
    v8 = v58;
    goto LABEL_129;
  }

LABEL_128:
  v15 = 3;
LABEL_129:

LABEL_130:
  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  return v15;
}

void sub_100065388(_Unwind_Exception *a1)
{
  v9 = *(v7 - 160);
  if (v9)
  {
    *(v7 - 152) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_100065498(uint64_t a1, uint64_t a2, int a3)
{
  v5 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = 4;
    }
  }

  else if (a3 == 2 || a3 == 4)
  {
    v5 = *(a1 + 136);
  }

  else if (a3 == 3)
  {
    v5 = 2;
  }

  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v6 = sub_10006E254(off_100B512F0, *(a1 + 128));
  if (qword_100B512F8 != -1)
  {
    sub_1000C10B4();
  }

  v7 = sub_1000632DC(off_100B512F0, *(a1 + 128));
  v8 = *(a1 + 175);
  if (v8 & 1) != 0 || *(a1 + 176) == 1 && !v7 || (*(a1 + 177))
  {
    v9 = 1;
  }

  else if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + 178);
  }

  v10 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 195);
    v12 = *(a1 + 197);
    v13 = *(a1 + 176);
    v14 = *(a1 + 177);
    v15 = *(a1 + 178);
    LODWORD(v19) = 67111424;
    HIDWORD(v19) = a3;
    LOWORD(v20) = 1024;
    *(&v20 + 2) = v5;
    HIWORD(v20) = 1024;
    *v21 = v11;
    *&v21[4] = 1024;
    *&v21[6] = v12;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v6;
    v32 = 1024;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Power state changed. PowerState:%d managerState:%d fUserAuthorization: %d\t medicalDeviceorStateRestorationAppPendingTCC:%d fDeviceAccessForMediaSession:%d fDeviceAccessForMediaExtension:%d fDeviceAccessPerAccessorySession:%d fDeviceAccessPerAccessoryExtension:%d appState:%02X deviceAccessExempt:%d", &v19, 0x3Eu);
  }

  if (*(a1 + 80) <= 0 && (*(a1 + 186) & 1) == 0 && v6 != 32 && (*(a1 + 195) & 1) == 0 && ((*(a1 + 197) | v9) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085ADA0();
    }

    if (*(a1 + 196))
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  sub_100063710(a1, v5);
  if (a3 == 1)
  {
    if (qword_100B508B0 != -1)
    {
      sub_10085681C();
    }

    v16 = *(off_100B508A8 + 37);
    v17 = *(off_100B508A8 + 39);
    v18 = *(a1 + 128);
    v19 = *(off_100B508A8 + 36);
    v20 = v16;
    *v21 = v17;
    (*(*a1 + 184))(a1, v18, &v19);
  }
}

void sub_10006576C(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  sub_100063344(a1, a2, &v14, &v13);
  if (v14)
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      v5 = a1 + 232;
      do
      {
        v6 = *(v4 + 32);
        v7 = v6 >= a2;
        v8 = v6 < a2;
        if (v7)
        {
          v5 = v4;
        }

        v4 = *(v4 + 8 * v8);
      }

      while (v4);
      if (v5 != a1 + 232 && *(v5 + 32) <= a2)
      {
        v9 = *(v5 + 40);
        v10 = sub_100007EE8();
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100065B24;
        v12[3] = &unk_100AEC130;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = v9;
        sub_10000CA94(v10, v12);
      }
    }
  }

  else
  {
    v11 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      buf = 67109120;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not sending enqueued messages. powerState :%d", &buf, 8u);
    }
  }
}

void sub_1000658D0(void *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = 0;
  *&v4 = 134218242;
  v16 = v4;
  while (1)
  {
    v5 = sub_100065BF0(a1);

    if (!v5)
    {
      break;
    }

    v6 = a1[15];
    v3 = v5;
    if (v2 == 3)
    {
      if (v6)
      {
        v7 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100052E80(a1);
          v9 = a1[11];
          *buf = v16;
          v18 = v8 + 1;
          v19 = 2114;
          v20 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(CBSR) Sending classic %lu queued messages to application %{public}@", buf, 0x16u);
        }

        v10 = [v5 msgId];
        v11 = [v5 arguments];
        sub_100052EE4(v6, v10, v11);
        goto LABEL_12;
      }
    }

    else if (v6)
    {
      v12 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_100052E80(a1);
        v14 = a1[11];
        *buf = v16;
        v18 = v13 + 1;
        v19 = 2114;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(CBSR) Sending %lu queued messages to application %{public}@", buf, 0x16u);
      }

      v15 = [v5 msgId];
      v11 = [v5 arguments];
      sub_100052EE4(v6 - 144, v15, v11);
LABEL_12:

      v3 = v5;
    }
  }
}

void sub_100065B24(void *a1)
{
  v1 = a1[4];
  v4 = *(v1 + 232);
  v2 = v1 + 232;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1[5];
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 != v2 && v5 >= *(v6 + 32))
  {
    v11 = a1[6];

    sub_1000658D0(v11);
  }

  else
  {
LABEL_9:
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Dropping enqueued messages as session has been terminated", v12, 2u);
    }
  }
}

id sub_100065BF0(uint64_t a1)
{
  v2 = *(a1 + 112);
  objc_sync_enter(v2);
  if ([*(a1 + 112) count])
  {
    v3 = [*(a1 + 112) objectAtIndex:0];
    [*(a1 + 112) removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

void sub_100065C88(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

BOOL sub_100065CA4(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = 0uLL;
  v26 = 0;
  sub_10003A364(&v25);
  sub_100065E5C(a3, &v25);
  v6 = v5;
  if (!v5)
  {
    v7 = *(a1 + 32);
    for (i = *v7; ; i += 20)
    {
      v9 = v7[1];
      if (i == v9)
      {
        break;
      }

      if (sub_10004E15C(i, &v25))
      {
        return v6 == 0;
      }

      v7 = *(a1 + 32);
    }

    v10 = v7[2];
    if (v9 >= v10)
    {
      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *v7) >> 2);
      v14 = v13 + 1;
      if (v13 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_1000C7698();
      }

      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - *v7) >> 2);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x666666666666666)
      {
        v16 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_100018404(v7, v16);
      }

      v17 = 20 * v13;
      v18 = v25;
      *(v17 + 16) = v26;
      *v17 = v18;
      v12 = 20 * v13 + 20;
      v19 = *v7;
      v20 = v7[1];
      v21 = v17 + *v7 - v20;
      if (*v7 != v20)
      {
        v22 = v21;
        do
        {
          v23 = *v19;
          *(v22 + 16) = *(v19 + 4);
          *v22 = v23;
          v22 += 20;
          v19 += 20;
        }

        while (v19 != v20);
        v19 = *v7;
      }

      *v7 = v21;
      v7[1] = v12;
      v7[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      v11 = v25;
      *(v9 + 4) = v26;
      *v9 = v11;
      v12 = (v9 + 20);
    }

    v7[1] = v12;
  }

  return v6 == 0;
}

double sub_100065E5C(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    sub_100065F40(&v7, bytes_ptr, length);
    result = *&v7;
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100820B00(a1);
  }

  return result;
}

uint64_t sub_100065F40(uint64_t a1, int8x16_t *a2, uint64_t a3)
{
  sub_10006A0FC(a2, a3, 0, &v5);
  *a1 = v5;
  *(a1 + 16) = v6;
  return a1;
}

void sub_100065FC4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_100066098();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005BBF4;
  v8[3] = &unk_100AE1228;
  v10 = a1;
  v7 = v5;
  v9 = v7;
  v11 = a3;
  sub_10000CA94(v6, v8);
}

uint64_t sub_100066098()
{
  if (qword_100B6F058 != -1)
  {
    sub_100843F08();
  }

  return qword_100B6F050;
}

uint64_t sub_1000660D0(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100065CA4;
    applier[3] = &unk_100AEE500;
    applier[4] = a2;
    if (xpc_array_apply(a1, applier))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100820B78(a1);
    }

    return 3;
  }
}

void *sub_1000661A4(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    if (xpc_get_type(result) == &_xpc_type_dictionary)
    {
      return (xpc_dictionary_get_value(v3, a2) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_100066200(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v4 = +[NSMutableArray array];
      for (i = 0; ; ++i)
      {
        if (i >= xpc_array_get_count(v3))
        {
          v3 = v4;
          goto LABEL_16;
        }

        v6 = xpc_array_get_value(v3, i);
        v7 = v6;
        if (!v6)
        {
          break;
        }

        if (xpc_get_type(v6) != &_xpc_type_uuid)
        {
          break;
        }

        v8 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v7)];
        if (!v8)
        {
          break;
        }

        [v4 addObject:v8];
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820DB0();
      }

      v3 = 0;
LABEL_16:
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820D40();
      }

      v3 = 0;
    }
  }

  return v3;
}

id sub_10006638C(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  v3 = value;
  if (value)
  {
    if (xpc_get_type(value) == &_xpc_type_array)
    {
      v4 = +[NSMutableArray array];
      count = xpc_array_get_count(v3);
      if (count)
      {
        v6 = 0;
        while (1)
        {
          v7 = xpc_array_get_value(v3, v6);
          v8 = v7;
          if (!v7)
          {
            break;
          }

          if (xpc_get_type(v7) != &_xpc_type_int64)
          {
            break;
          }

          v9 = [NSNumber numberWithLongLong:xpc_int64_get_value(v8)];
          if (!v9)
          {
            break;
          }

          [v4 addObject:v9];

          if (count == ++v6)
          {
            goto LABEL_12;
          }
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100820E28();
        }

        v3 = 0;
      }

      else
      {
LABEL_12:
        v3 = v4;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100820D40();
      }

      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_100066524(_DWORD *a1)
{
  v1 = a1[200];
  if (!v1)
  {
    return 8;
  }

  if (v1 > 0x7CF)
  {
    goto LABEL_9;
  }

  if (v1 - 22 < 2)
  {
    return 32;
  }

  if (v1 != 25)
  {
    return 8;
  }

  if ((*(*a1 + 40))(a1))
  {
    return 64;
  }

  v1 = a1[200];
  if (v1 < 0x7D0)
  {
    return 8;
  }

LABEL_9:
  if (v1 <= 0xBB7)
  {
    v4 = 8;
  }

  else
  {
    v4 = 40;
  }

  if (v1 <= 0xF9F)
  {
    return v4;
  }

  else
  {
    return 8;
  }
}

void sub_1000665CC(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v2 = *(a1 + 152);
    v3 = *(a1 + 156);
    if (v2 && v3 != 0 && 100 * v3 / v2 >= 0x1F)
    {
      v5 = *(a1 + 88);
      for (i = *(a1 + 96); v5 != i; v5 += 96)
      {
        if (*(v5 + 8) - 15 <= 1)
        {
          v7 = *(v5 + 72);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            v10 = *v15;
            do
            {
              for (j = 0; j != v9; j = j + 1)
              {
                if (*v15 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = [*(*(&v14 + 1) + 8 * j) longLongValue];
                v13 = v12 - 131078 > 9 || ((1 << (v12 - 6)) & 0x203) == 0;
                if (!v13 && ((*(v5 + 84) - 1) < 0x12B || (*(v5 + 88) - 1) <= 0x12A))
                {
                  *(a1 + 240) = 1;
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
            }

            while (v9);
          }
        }
      }
    }
  }
}

uint64_t sub_1000667A0(uint64_t a1, unsigned __int8 **a2)
{
  if (*(a1 + 80) <= 1)
  {
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      while (1)
      {
        *buf = xmmword_1008A4DDC;
        v13 = 0;
        if (sub_10004E15C(v4, buf))
        {
          break;
        }

        v4 += 20;
        if (v4 == v5)
        {
          v4 = v5;
          break;
        }
      }

      v5 = a2[1];
    }

    if (v4 != v5)
    {
      v6 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Contact tracing UUID scanning is not allowed.", buf, 2u);
      }

      return 3;
    }

    v8 = *a2;
    if (v8 != v5)
    {
      while (1)
      {
        if (qword_100B50900 != -1)
        {
          sub_10085771C();
        }

        if ((sub_100066E24(qword_100B508F8, v8, *(a1 + 184), *(a1 + 200), 0) & 1) == 0)
        {
          v9 = qword_100BCE950;
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 96);
            sub_10003B85C(v8, buf);
            v11 = buf;
            if (v14 < 0)
            {
              v11 = *buf;
            }

            *v15 = 138412546;
            v16 = v10;
            v17 = 2080;
            v18 = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ wants to scan for restricted service (%s)", v15, 0x16u);
            if (v14 < 0)
            {
              operator delete(*buf);
            }
          }

          *buf = xmmword_1008A4DB4;
          v13 = -1171415960;
          if (sub_10004E15C(v8, buf))
          {
            break;
          }

          *buf = xmmword_1008A4F34;
          v13 = 0;
          if (sub_10004E15C(v8, buf))
          {
            break;
          }
        }

        v8 += 20;
        if (v8 == v5)
        {
          return 0;
        }
      }

      return 3;
    }
  }

  return 0;
}

void sub_100066A00(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = +[BTAppInteraction instance];
  [v4 updateApplicationState:a2];

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100066A74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100066F74(15, a2);
  v6 = sub_10005D040(a1, a2, 0);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  result = sub_100066AFC(v6, a2, a3);
  if (!result)
  {
    if (*(v7 + 24) == 1)
    {
      if (*(v7 + 96))
      {
        sub_100078BCC(a1);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100066AFC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 128))
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
    {
      sub_10083AD0C();
    }

    v6 = *(a1 + 120);
    if (v6 && *(v6 - 64) >= 1)
    {
      if (qword_100B54208 != -1)
      {
        sub_10083AD7C();
      }

      if (sub_100067048(qword_100B54200, 0, *(a1 + 88)))
      {
        v7 = *(a3 + 192);
        v8 = *(a3 + 216);
        v9 = v8;
        if (v8 && [v8 count])
        {
          if ([v9 count] == 1)
          {
            v10 = [v9 objectAtIndexedSubscript:0];
            v11 = [v10 longLongValue] != 0;

            if (!v11 && v7 == 0)
            {
LABEL_13:
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
              {
                sub_10083ADA4();
              }

              return 348;
            }
          }
        }

        else if (!v7)
        {
          goto LABEL_13;
        }
      }
    }

    *(a1 + 357) = *(a3 + 239);
    *(a1 + 360) = *(a3 + 192);
    if (qword_100B51078 != -1)
    {
      sub_10083AE14();
    }

    result = sub_10006E2A0(off_100B51070, a2, a3);
    *(a1 + 356) = *(a3 + 224);
    if (!result)
    {
      *(a1 + 344) = 0;
      [*(a1 + 320) removeAllObjects];
      v13 = *(a3 + 8);
      for (i = *(a3 + 16); v13 != i; v13 = (v13 + 20))
      {
        v15 = *v13;
        v25 = *(v13 + 4);
        *buf = v15;
        v23[0] = 0;
        v23[1] = 0;
        v16 = sub_10007A930(buf, v23);
        if (v16 == 16 || v16 == 2)
        {
          v18 = *(a1 + 320);
          v19 = [NSData dataWithBytes:v23 length:v16];
          [v18 addObject:v19];
        }
      }

      *(a1 + 282) = *(a3 + 172);
      *(a1 + 280) = 1;
      if (sub_100067238())
      {
        CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
        v21 = CTGreenTeaOsLogHandle;
        if (CTGreenTeaOsLogHandle)
        {
          result = os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO);
          if (!result)
          {
            return result;
          }

          v22 = *(a1 + 88);
          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "LE start scanning for application '%{public}@'", buf, 0xCu);
        }
      }

      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
    {
      sub_10083AC9C();
    }

    return 341;
  }

  return result;
}

uint64_t sub_100066E24(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = sub_10007C324(a1 + 72, a2);
  v10 = sub_10007C324(a1 + 96, a2);
  if (v8)
  {
    v11 = sub_10070BD80(a1, a2, v8);
  }

  else
  {
    v11 = 0;
  }

  v16 = xmmword_1008A4D28;
  v17 = 0;
  v12 = sub_10004E15C(a2, &v16) && v11;
  v13 = a1 + 104 != v10 || a1 + 80 != v9;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = (!v13 && !v11) | (a1 + 80 != v9) & a3 | v11 & a3;
  }

  return v14 & 1;
}

void sub_100066F74(uint64_t a1, uint64_t a2)
{
  if (qword_100B6D2F0 != -1)
  {
    sub_10081E3B8();
  }

  if (byte_100B6D2E8 == 1)
  {
    if (a2)
    {
      sub_100018384(a2, __p);
      sub_10050DFDC(__p);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a1 - 15) < 8 && ((0xC3u >> (a1 - 15)))
    {
      kdebug_trace();
    }
  }
}

void sub_10006702C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100067048(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_10000E92C();
    if (((*(*v6 + 8))(v6) & 1) != 0 && (([v5 hasPrefix:@"com.apple."] & 1) != 0 || objc_msgSend(v5, "hasPrefix:", @"com.Apple.")))
    {
      v7 = CBGenerateObfuscatedSHA256HashedString();
      v8 = v7;
      if (a2 < 3)
      {
        if ([*(&off_100B0EA98)[a2] containsObject:v7])
        {
          if (*(a1 + 154))
          {
            v9 = 1;
LABEL_17:

            goto LABEL_13;
          }

          v12 = qword_100BCE9F8;
          if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138543618;
            v14 = v5;
            v15 = 2048;
            v16 = a2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ is required to provide the use case for operation type %ld but check is bypassed due to overriding", &v13, 0x16u);
          }
        }

        v9 = 0;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v10 = qword_100BCE9F8;
    if (os_log_type_enabled(qword_100BCE9F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BundleID is not available.", &v13, 2u);
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

void sub_1000676A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, atomic_uint *a33)
{
  if (a33)
  {
    sub_10000C808(a33);
  }

  _Unwind_Resume(a1);
}

void sub_1000677B8(uint64_t *a1)
{
  if (*a1)
  {
    sub_10003A9EC(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1000677F8(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006787C;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10006787C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10000C798();
  v4 = (*(*v3 + 744))(v3);
  v5 = qword_100BCE918;
  if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(v2 + 1867);
    if (*(v2 + 144))
    {
      v8 = "On";
    }

    else
    {
      v8 = "Off";
    }

    v9 = [*(v2 + 2136) count];
    v10 = sub_10002529C(v2);
    v11 = *(v2 + 172);
    v12 = *(v2 + 171);
    v13 = *(v2 + 715);
    v14 = *(v2 + 1869);
    v27 = 67111426;
    v28 = v6;
    v29 = 1024;
    v30 = v7;
    v31 = 2082;
    v32 = v8;
    v33 = 1024;
    v34 = v9;
    v35 = 1024;
    v36 = v4;
    v37 = 1024;
    v38 = v10;
    v39 = 1024;
    v40 = v11;
    v41 = 1024;
    v42 = v12;
    v43 = 1024;
    v44 = v13;
    v45 = 1024;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TryReadMatchAndADVBuffers reason:%d fMatchBufferExpectedEntries:0x%d fScreenState:%{public}s fMatchActionTableRulesCount:%d supportedADVBuffers:%d haveAnyHwObjectDiscoveryRequests:%d fADVBufferExpectedEntries:%d readInProgress[Wild]:%d readInProgress[NearOwner]:%d fMatchBufferReadInProgress:%d", &v27, 0x42u);
  }

  if ((*(v2 + 1869) & 1) != 0 || *(v2 + 171) == 1 && (*(v2 + 167) & 1) != 0 || *(v2 + 715) == 1 && *(v2 + 711) == 1)
  {
    v15 = qword_100BCE918;
    if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Already reading buffers, skipping", &v27, 2u);
    }
  }

  else
  {
    sub_100067CB0(v2);
    if (*(v2 + 1867) == 255)
    {
      if ([*(v2 + 2136) count])
      {
        v20 = sub_10000C798();
        if ((*(*v20 + 744))(v20))
        {
          *(v2 + 1869) = 1;
          v21 = qword_100BCE918;
          if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Match Buffer Reading ADV Buff", &v27, 2u);
          }

          v22 = sub_1007A2D08(v2, 0);
          v23 = qword_100BCE918;
          if (v22)
          {
            v24 = v22;
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
            {
              v27 = 67109120;
              v28 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Failed to pause match buffers with result %d", &v27, 8u);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_DEBUG))
            {
              sub_100875510(v2, v2 + 1867, v23);
            }

            if (*(v2 + 1867) == 255)
            {
              v26 = qword_100BCE918;
              if (os_log_type_enabled(qword_100BCE918, OS_LOG_TYPE_INFO))
              {
                LOWORD(v27) = 0;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Buffer is empty, we need to re-enable the match tables now", &v27, 2u);
                v26 = qword_100BCE918;
              }

              *(v2 + 1869) = 0;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                sub_1008755AC(v2, v26);
              }
            }
          }
        }
      }
    }

    *(v2 + 1795) = 0;
    *(v2 + 1793) = 0;
    if (sub_10002529C(v2))
    {
      v16 = objc_opt_new();
      v17 = *(v2 + 152);
      *(v2 + 152) = v16;

      v18 = *(a1 + 40);
      if (v18 <= 4)
      {
        [*(v2 + 152) setObject:*(&off_100B0D688 + v18) forKeyedSubscript:@"DrainReason"];
      }

      if (*(v2 + 172) == 255)
      {
        v19 = *(v2 + 167);
      }

      else
      {
        v19 = 0;
      }

      *(v2 + 1793) = v19 & 1;
      if (*(v2 + 716) == 255)
      {
        v25 = *(v2 + 711);
      }

      else
      {
        v25 = 0;
      }

      *(v2 + 1794) = v25 & 1;
    }

    sub_100067D48(v2);
  }
}