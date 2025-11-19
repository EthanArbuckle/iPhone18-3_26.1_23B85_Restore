void sub_1004D464C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1004D46A8(uint64_t a1, uint64_t a2, int a3)
{
  v12 = 0;
  sub_1000216B4(&v12);
  v11 = 0;
  if ((sub_1001F4528(a2 + 128, &v11) || !v11) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, v10);
    sub_100837AF0();
  }

  sub_100022214(&v12);
  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, v9);
      sub_100837B44();
    }

    sub_1000618AC(&v12);
    sub_1001F6464(v11, 0);
  }

  else
  {
    v7 = sub_10057DFAC(a1, a2);
    sub_1000618AC(&v12);
    v8 = sub_1001F6464(v11, v7);
    sub_100022214(&v12);
    if (v8)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837B94();
      }
    }

    else if (v7)
    {
      sub_10057D9B0(a1, a2);
    }
  }

  return sub_10002249C(&v12);
}

uint64_t sub_1004D487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 552);
  if (qword_100B508F0 != -1)
  {
    sub_100837854();
  }

  v6 = sub_1000504C8(off_100B508E8, a2, 1);
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v18 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v21 = v8;
    v22 = 1024;
    LODWORD(v23) = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ConnectInd from device %{public}s on a2dpHandle %d", buf, 0x12u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!sub_10053C3E8(v6))
  {
    v14 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v15 = v18 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Delaying incoming connection attempt for device %{public}s as SDP is missing", buf, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B54670 != -1)
    {
      sub_100837C04();
    }

    sub_100587D6C(qword_100B54668, v6);
  }

  v9 = sub_10057DFAC(a1, v6);
  v10 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v11 = "Rejecting";
    if (v9)
    {
      v11 = "Accepting";
    }

    if (v18 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136446466;
    v21 = v11;
    v22 = 2082;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s incoming connection attempt from device %{public}s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v13 = sub_1001F6464(a3, v9);
  sub_100022214(__p);
  if (v13)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837B94();
    }
  }

  else if (v9)
  {
    sub_10057D9B0(a1, v6);
  }

  sub_10002249C(__p);
  sub_1000088CC(v19);
  return v13;
}

void sub_1004D4BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004D4BE4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v10 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 552);
  if (qword_100B508F0 != -1)
  {
    sub_100837854();
  }

  v7 = sub_1000504C8(off_100B508E8, a2, 1);
  if (a4)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v7, &__p);
      sub_100837C2C();
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100837C80();
    }

    v8 = sub_1000DD584(off_100B50A98, a4, 20000);
    sub_10057DA84(a1, v7, v8);
  }

  sub_10057DA84(a1, v7, 0);
}

void sub_1004D5334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_10002249C(&a18);
  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D53B4(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(__p, "SampleRate");
  v4 = (*(*v3 + 128))(v3, buf, __p, &v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  else if (!v4)
  {
    goto LABEL_16;
  }

  v5 = qword_100BCE8B8;
  if (v18 == 48000)
  {
    v6 = 0;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 48000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Bad48KHzCodecs: Setting user defined A2DP Sample Rate for our endpoints to %d Hz", buf, 8u);
      return 0;
    }
  }

  else
  {
    if (v18 != 44100)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837D98();
      }

LABEL_16:
      v27 = 0;
      v26 = 0u;
      memset(v25, 0, sizeof(v25));
      v23 = 0u;
      *v24 = 0u;
      v21 = 0u;
      *v22 = 0u;
      *buf = 0u;
      v20 = 0u;
      sub_1000DE474(&buf[1]);
      BYTE2(v20) = 0;
      BYTE4(v20) = 0;
      BYTE2(v22[0]) = 0;
      BYTE4(v22[0]) = 0;
      DWORD1(v25[1]) = 0;
      v21 = 0uLL;
      *(&v20 + 1) = 0;
      LOBYTE(v22[0]) = 0;
      v23 = 0uLL;
      v22[1] = 0;
      LOBYTE(v24[0]) = 0;
      memset(v25, 0, 19);
      v24[1] = 0;
      BYTE8(v25[1]) = 1;
      *(&v25[1] + 14) = 0;
      *(&v25[1] + 9) = 0;
      v26 = 0uLL;
      *(&v25[2] + 1) = 0;
      LOBYTE(v27) = 0;
      *(&v27 + 2) = 0;
      sub_100536A18(a2, buf);
      v15 = 0;
      v7 = sub_10000E92C();
      sub_100007E30(__p, "A2DP");
      sub_100007E30(v13, "Default48KHz");
      (*(*v7 + 72))(v7, __p, v13, &v15);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 == 1)
      {
        v8 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Warning: Bad48KHzCodecs: Defaulting to 48 KHz based on defaults write - using denylist instead of allowlist", __p, 2u);
        }

        if (BYTE8(v26) == 1)
        {
          v9 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            v6 = 2;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Bad48KHzCodecs: Disabling 48 KHz - Device is in 48 KHz AAC denylist", __p, 2u);
          }

          else
          {
            v6 = 2;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if ((BYTE9(v26) & 1) == 0 && !sub_100539FE8(a2))
        {
          v12 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bad48KHzCodecs: Disabling 48 KHz - Device is NOT in 48 KHz AAC allowlist", __p, 2u);
          }

          v6 = 0xFFFFFFFFLL;
          goto LABEL_31;
        }

        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bad48KHzCodecs: Device is in 48 KHz AAC allowlist", __p, 2u);
        }
      }

      v6 = 0;
LABEL_31:
      if (SHIBYTE(v25[0]) < 0)
      {
        operator delete(v24[1]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[1]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(*(&v20 + 1));
      }

      nullsub_21(&buf[1]);
      return v6;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 44100;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Bad48KHzCodecs: Setting user defined A2DP Sample Rate for our endpoints to %d Hz", buf, 8u);
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

void sub_1004D5820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100320BE8(&a23);
  _Unwind_Resume(a1);
}

_BYTE *sub_1004D58A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798();
  if (((*(*v3 + 104))(v3) & 1) != 0 || (v4 = sub_10000E92C(), result = (*(*v4 + 312))(v4), result))
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "3EDR packet types are disabled on this platform", buf, 2u);
    }

    v14 = 0;
    v13 = 0;
    sub_1000216B4(&v13);
    if (!sub_10023DB58(a2 + 128, &v14) && v14 && (*(v14 + 278) & 1) == 0)
    {
      sub_10024DD74(v14, 60956, v7, v8, v9, v10, v11, v12);
    }

    sub_100022214(&v13);
    return sub_10002249C(&v13);
  }

  return result;
}

uint64_t sub_1004D59D0(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 536);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = result + 536;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result + 536 && *(v5 + 32) <= v4)
    {
      return sub_1004D435C(result, v4);
    }
  }

  return result;
}

uint64_t sub_1004D5A20(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  *v9 = 0u;
  v6 = 0u;
  *v7 = 0u;
  sub_1000DE474(&v6 + 1);
  BYTE2(v7[0]) = 0;
  BYTE4(v7[0]) = 0;
  BYTE2(v9[0]) = 0;
  BYTE4(v9[0]) = 0;
  DWORD1(v12[1]) = 0;
  v8 = 0uLL;
  v7[1] = 0;
  LOBYTE(v9[0]) = 0;
  v10 = 0uLL;
  v9[1] = 0;
  LOBYTE(__p[0]) = 0;
  memset(v12, 0, 19);
  __p[1] = 0;
  BYTE8(v12[1]) = 1;
  *(&v12[1] + 14) = 0;
  *(&v12[1] + 9) = 0;
  v13 = 0uLL;
  *(&v12[2] + 1) = 0;
  LOBYTE(v14) = 0;
  *(&v14 + 2) = 0;
  v3 = sub_100536A18(a2, &v6);
  v4 = BYTE14(v12[2]);
  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
  }

  nullsub_21(&v6 + 1);
  return v3 & v4;
}

uint64_t sub_1004D5B68(void *a1, uint64_t a2, unsigned int a3)
{
  v24 = a3;
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, (a1 + 69));
  if (qword_100B508F0 != -1)
  {
    sub_100837854();
  }

  v6 = sub_1000504C8(off_100B508E8, a2, 1);
  v7 = a1[67];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = a1 + 67;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= a3;
    v11 = v9 < a3;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == a1 + 67 || *(v8 + 16) > a3)
  {
    goto LABEL_11;
  }

  sub_1004D0FAC(a1, a3);
  v13 = v8[5];
  if (*(v13 + 723) == 1)
  {
    if (*(v6 + 1016) == 1)
    {
      *(v6 + 1036) = 1;
    }

    sub_1005484E8(v6, 0);
    sub_1004D4440(a1);
  }

  sub_1003A2794(v13);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v28 = sub_1004CF858;
  v29 = &unk_100AF9CC8;
  v30 = v6;
  v31 = a3;
  v32 = 0;
  sub_1004CEEC4((a1 + 54), &buf);
  sub_100480E04((a1 + 66), &v24);
  v14 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[68];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current number of A2DP devices: %lu", &buf, 0xCu);
  }

  v16 = a1[64];
  if (!v16)
  {
    goto LABEL_41;
  }

  v17 = a1 + 64;
  do
  {
    v18 = *(v16 + 32);
    v10 = v18 >= v24;
    v19 = v18 < v24;
    if (v10)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * v19);
  }

  while (v16);
  if (v17 == a1 + 64 || v24 < *(v17 + 16))
  {
LABEL_41:
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_FAULT))
    {
      sub_100837E08();
    }
  }

  v20 = sub_100480E04((a1 + 63), &v24);
  if (sub_1004D5A20(v20, v6))
  {
    v21 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, &buf);
      if (SHIBYTE(v28) >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v25 = 136446210;
      v26 = p_buf;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Device %{public}s that requires a workaround for AVDTP start disconnected", v25, 0xCu);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(buf);
      }
    }

    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v28 = sub_1004CFBB4;
    v29 = &unk_100AF9D48;
    v30 = v6;
    sub_1004CFAB8((a1 + 58), &buf);
  }

  if (v6)
  {
LABEL_11:
    sub_10057E710(a1, v6, 0);
  }

  sub_1000088CC(v23);
  return 0;
}

void sub_1004D5ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D5F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 552);
  v11 = sub_1004D03D4(a1, a3);
  v12 = sub_1004CEE18(a1, a3);
  v13 = qword_100BCE8B8;
  if (!a6)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(v12, v29), (v35 & 0x8000) == 0) ? (v14 = v29) : (v14 = *v29), *buf = 67109378, v39 = a5, v40 = 2082, v41 = v14, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Endpoint discovery succeeded - found %d stream endpoint(s) for device %{public}s", buf, 0x12u), SBYTE1(v35) < 0))
    {
      operator delete(*v29);
      if (!a5)
      {
        goto LABEL_38;
      }
    }

    else if (!a5)
    {
      goto LABEL_38;
    }

    v27 = v12;
    v15 = 0;
    v16 = qword_100BCE8B8;
    v17 = (a4 + 3);
    do
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v17 - 3);
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v21 = *v17;
        *v29 = 67110144;
        *&v29[4] = v15;
        v30 = 1024;
        v31 = v18;
        v32 = 1024;
        v33 = v19;
        v34 = 1024;
        v35 = v20;
        v36 = 1024;
        v37 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Endpoint[%d]: mediaType = %d, endpointType = %d, seid = %d, inUse = %d", v29, 0x20u);
        v16 = qword_100BCE8B8;
      }

      ++v15;
      v17 += 4;
    }

    while (a5 != v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 67109120;
      *&v29[4] = a3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Saving discovered peer endpoints for a2dp handle %d", v29, 8u);
    }

    sub_10050B310(v11 + 400, a4, a5);
    v22 = sub_10050BD58(v11 + 400);
    v23 = qword_100BCE8B8;
    if (v22 == 255)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v27, v29);
        sub_100837FC4();
      }

      goto LABEL_21;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v27, v29);
      v25 = (v35 & 0x8000) == 0 ? v29 : *v29;
      *buf = 67109378;
      v39 = v22;
      v40 = 2082;
      v41 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Querying stream capabilities of endpoint %u on device %{public}s", buf, 0x12u);
      if (SBYTE1(v35) < 0)
      {
        operator delete(*v29);
      }
    }

    v29[0] = 0;
    sub_1000216B4(v29);
    if (sub_10050922C(v11 + 400) < 0x103)
    {
      if (sub_1001F6C3C(a3, v22, 0) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837EE4();
      }
    }

    else if (sub_1001F6D74(a3, v22, 0) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100837F54();
    }

    sub_10002249C(v29);
LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    if (v12)
    {
      sub_1000E5A58(v12, v29);
      sub_100837E48();
    }

    else
    {
      sub_100837E98(buf, a6);
    }
  }

LABEL_21:
  sub_1004CFE18(a1, a3);
  v24 = 1;
LABEL_39:
  sub_1000088CC(v28);
  return v24;
}

void sub_1004D6320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D6368(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 552);
  v13 = sub_1004D03D4(a1, a3);
  v14 = v13;
  if (a7)
  {
    v15 = qword_100BCE8B8;
    if (*(v13 + 728) < 3)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v24 = a7;
        v25 = 1024;
        v26 = a4;
        v27 = 1024;
        v28 = a3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received get capability failure with error %d for stream endpoint ID %u on a2dp handle %d - disconnecting", buf, 0x14u);
      }

      sub_1004CFE18(a1, a3);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v24 = a7;
      v25 = 1024;
      v26 = a4;
      v27 = 1024;
      v28 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GetCaps rejected with error %d, but already in >= open state for stream endpoint ID %u on a2dp handle %d", buf, 0x14u);
    }
  }

  else
  {
    v16 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v14 + 728);
      *buf = 67109632;
      v24 = a4;
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "GetCapsCfm: Successfully retrieved capabilities for stream endpoint %u on a2dp handle %d, stream state 0x%d", buf, 0x14u);
    }

    if (*(v14 + 728) == 1)
    {
      sub_100509868(v14 + 400, a6, a5, a4);
      v18 = sub_10050BD58(v14 + 400);
      if (v18 == 255)
      {
        sub_1004D21B8(a1, a3);
      }

      else
      {
        v19 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v24 = v18;
          v25 = 1024;
          v26 = a3;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Querying stream capabilities of endpoint %u on a2dpHandle %d", buf, 0xEu);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        v20 = sub_1001F6C3C(a3, v18, 0);
        sub_100022214(buf);
        if (v20 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100837EE4();
        }

        sub_10002249C(buf);
      }
    }
  }

  sub_1000088CC(v22);
  return 0;
}

uint64_t sub_1004D667C(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 552);
  v16 = sub_1004D03D4(a1, a3);
  v27 = sub_1004CEE18(a1, a3);
  v17 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v33 = a4;
    v34 = 1024;
    v35 = a5;
    v36 = 1024;
    *v37 = a3;
    *&v37[4] = 1024;
    *&v37[6] = a6;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received set stream configuration request for local SEID %u and remote SEID %u from a2dpHandle %d, stream handle %d", buf, 0x1Au);
  }

  v18 = sub_10050DCE8(a1 + 280, a4);
  if (sub_100509C38(v16 + 400, a4, a5, a6, a7, a8, v18))
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838020();
    }

    buf[0] = 0;
    sub_1000216B4(buf);
    v19 = sub_1001F90AC(a6, a2, 0, 41);
    sub_100022214(buf);
    if (v19 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838090();
    }

    v20 = buf;
  }

  else
  {
    v30 = 0;
    sub_1000216B4(&v30);
    v21 = sub_1001F90AC(a6, a2, 0, 0);
    sub_100022214(&v30);
    if (v21)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838100();
      }
    }

    else
    {
      v22 = sub_100509144(v16 + 400);
      v23 = *(v16 + 592);
      v24 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v27, __p);
        v25 = v29 >= 0 ? __p : __p[0];
        *buf = 67110146;
        v33 = a4;
        v34 = 1024;
        v35 = a5;
        v36 = 2082;
        *v37 = v25;
        *&v37[8] = 1024;
        v38 = v22;
        v39 = 1024;
        v40 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Approved and configured incoming stream configuration for local SEID %d and remote SEID %d on device %{public}s, remote delay reporting %d, local delay reporting %d", buf, 0x24u);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v16 + 728) = 2;
    }

    v20 = &v30;
  }

  sub_10002249C(v20);
  sub_1000088CC(v31);
  return 0;
}

void sub_1004D697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_10002249C(&a17);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D69D0(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7, unsigned int a8)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 552);
  v15 = sub_1004D03D4(a1, a3);
  v16 = sub_1004CEE18(a1, a3);
  if (!v16)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838170();
    }

    goto LABEL_14;
  }

  v17 = sub_100508ED0(v15 + 400);
  if (v17)
  {
    v18 = *(v15 + 728);
    if (v18 <= 6 && ((1 << v18) & 0x68) != 0)
    {
      v19 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8((v16 + 128), __p);
        if (v29 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 136446210;
        v32[0] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Rejecting incoming set config from device %{public}s", buf, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1001F90AC(a6, a2, 0, 19);
      sub_100022214(__p);
      sub_10002249C(__p);
LABEL_14:
      v21 = 1;
      goto LABEL_26;
    }

    log = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((v16 + 128), __p);
      v22 = __p;
      if (v29 < 0)
      {
        v22 = __p[0];
      }

      *buf = 67109378;
      LODWORD(v32[0]) = v17;
      WORD2(v32[0]) = 2082;
      *(v32 + 6) = v22;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "SetConfigInd, there already exists stream handle %d for device %{public}s, but accepting since we are not in streaming state", buf, 0x12u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v23 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8((v16 + 128), __p);
    v24 = __p;
    if (v29 < 0)
    {
      v24 = __p[0];
    }

    *buf = 67109378;
    LODWORD(v32[0]) = a6;
    WORD2(v32[0]) = 2082;
    *(v32 + 6) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SetConfigInd setting a2dp stream handle to %d for device %{public}s", buf, 0x12u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_100508F20(v15 + 400, a6);
  sub_1004D667C(a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = 0;
LABEL_26:
  sub_1000088CC(v30);
  return v21;
}

void sub_1004D6CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 552);
  v8 = sub_1004D05C4(a1, a3);
  v9 = sub_1004CEE18(a1, v8);
  v10 = qword_100BCE8B8;
  if (a5)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      if (v9)
      {
        sub_1000E5A58(v9, __p);
        sub_1008381AC();
      }

      else
      {
        sub_1008381FC(buf, a5);
      }
    }

    sub_1004CFE18(a1, v8);
LABEL_14:
    v12 = 1;
    goto LABEL_31;
  }

  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      sub_1000E5A58(v9, __p);
      if (v20 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received set stream configuration success from device %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v22 = "null";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received set stream configuration success from device %{public}s", buf, 0xCu);
    }
  }

  v13 = qword_100BCE8B8;
  v14 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v14)
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Set stream configuration returned an unknown stream handle %d, stream handle was likely reconfigured. Not moving to open AVDTP", __p, 8u);
    }

    goto LABEL_14;
  }

  if (v14)
  {
    if (v9)
    {
      sub_1000E5A58(v9, __p);
      if (v20 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v22 = v15;
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s on handle %d", buf, 0x12u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446466;
      v22 = "null";
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s on handle %d", buf, 0x12u);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v16 = sub_1001F7534(a3, 0);
  sub_100022214(__p);
  if (v16 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838248();
  }

  sub_10002249C(__p);
  v12 = 0;
LABEL_31:
  sub_1000088CC(v18);
  return v12;
}

uint64_t sub_1004D70B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 552);
  v9 = sub_1004D05C4(a1, a3);
  v10 = sub_1004CEE18(a1, v9);
  v11 = qword_100BCE8B8;
  if (a6)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      if (v10)
      {
        sub_1000E5A58(v10, __p);
        sub_1008382B8();
      }

      else
      {
        sub_100838308(buf, a6);
      }
    }

    sub_1004CFE18(a1, v9);
    v13 = 1;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        sub_1000E5A58(v10, __p);
        if (v19 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136446210;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received get stream configuration success from device %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v22 = "null";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received get stream configuration success from device %{public}s", buf, 0xCu);
      }
    }

    if (*(a1 + 616) == 1)
    {
      v14 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        if (v10)
        {
          sub_1000E5A58(v10, __p);
          if (v19 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *buf = 136446210;
          v22 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446210;
          v22 = "null";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to open streaming channel to device %{public}s", buf, 0xCu);
        }
      }

      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v16 = sub_1001F7534(a3, 0);
      sub_100022214(__p);
      if (v16 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838248();
      }

      sub_10002249C(__p);
    }

    v13 = 0;
  }

  sub_1000088CC(v20);
  return v13;
}

void sub_1004D73A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D73E4(uint64_t a1, uint64_t a2, int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 552);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  v8 = sub_1004CEE18(a1, v6);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000E5A58(v8, __p);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446466;
      v17 = v10;
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received open streaming channel request from device %{public}s on stream handle %d", buf, 0x12u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446466;
      v17 = "null";
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received open streaming channel request from device %{public}s on stream handle %d", buf, 0x12u);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v11 = sub_1001F76F0(a2, a3, 0);
  sub_100022214(__p);
  if (v11 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838354();
  }

  *(v7 + 728) = 3;
  sub_10002249C(__p);
  sub_1000088CC(v15);
  return 0;
}

void sub_1004D75DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D7618(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, (a1 + 69));
  v9 = sub_1004D05C4(a1, a3);
  v10 = sub_1004CEE18(a1, v9);
  v11 = sub_1004D03D4(a1, v9);
  v12 = qword_100BCE8B8;
  if (a5 || !v10)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      if (v10)
      {
        sub_1000E5A58(v10, __p);
        sub_100838410();
      }

      else
      {
        sub_1008383C4(buf, a5);
      }
    }

    goto LABEL_32;
  }

  v13 = v11;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, __p);
    v14 = v24 >= 0 ? __p : *__p;
    *buf = 136446466;
    v26 = v14;
    v27 = 1024;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Successfully opened streaming channel to device %{public}s on stream handle %d", buf, 0x12u);
    if (v24 < 0)
    {
      operator delete(*__p);
    }
  }

  if (*(v13 + 728) == 7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(v10, __p);
      sub_100838460();
    }

LABEL_32:
    sub_1004CFE18(a1, v9);
    goto LABEL_33;
  }

  *(v13 + 728) = 3;
  if (sub_1000E2140(v10, 13) && (v15 = sub_10000C798(), (*(*v15 + 840))(v15, 0)) && sub_1005095A4(v13 + 400) == 33023)
  {
    v16 = 1;
    *(v13 + 704) = 1;
    *(v13 + 706) = 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v13 + 704))
    {
      v18 = "supported";
    }

    else
    {
      v18 = "not supported";
    }

    *__p = 136315138;
    *&__p[4] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Dynamic Latency is %s", __p, 0xCu);
  }

  if (*(v13 + 704) == 1)
  {
    v19 = sub_10050BE78(v13 + 400);
    sub_1007036D8(v13, v19);
  }

  if ((v16 & 1) != 0 || (v20 = sub_10000E92C(), ((*(*v20 + 536))(v20) & 1) == 0))
  {
    *(v13 + 712) = 1;
  }

  sub_1004D79A8(a1, v10);
  sub_1004D2658(a1, 0, v9, a4, v10);
LABEL_33:
  sub_1000088CC(v22);
  return 0;
}

void sub_1004D79A8(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (a2 && (v6 = v5) != 0)
  {
    v31 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(&buf, "A2DP");
    sub_100007E30(__p, "WirelessSplitter");
    (*(*v7 + 72))(v7, &buf, __p, &v31);
    if (v39 < 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v31)
    {
      v8 = sub_1000E2140(a2, 12);
      v31 = v8;
      if (v8)
      {
        v9 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is enabled via defaults writes", &buf, 2u);
        }
      }
    }

    if (sub_1000E2140(a2, 27) || v31)
    {
      v10 = sub_10000C798();
      if ((*(*v10 + 512))(v10))
      {
        *(v6 + 722) = 1;
        v11 = sub_100702ABC(v6);
        v12 = sub_1004D06D4(a1, v11);
        if (v12)
        {
          v13 = sub_1004CEE18(a1, v12);
          v14 = sub_1004D03D4(a1, v12);
          if (v14 && v13)
          {
            if (v31 || (*(a2 + 1016) & 1) != 0 || (*(v13 + 1016) & 1) != 0 || *(a2 + 1041) == 1)
            {
              v15 = qword_100BCE8B8;
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(a2, __p);
                v16 = v39;
                v17 = *__p;
                v18 = *(a2 + 1016);
                sub_1000E5A58(v13, v29);
                v19 = __p;
                if (v16 < 0)
                {
                  v19 = v17;
                }

                v20 = "owner";
                v21 = *(v13 + 1016);
                if (v18)
                {
                  v22 = "guest";
                }

                else
                {
                  v22 = "owner";
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136446978;
                *(buf.__r_.__value_.__r.__words + 4) = v19;
                if (v30 >= 0)
                {
                  v23 = v29;
                }

                else
                {
                  v23 = v29[0];
                }

                WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
                if (v21)
                {
                  v20 = "guest";
                }

                *(&buf.__r_.__value_.__r.__words[1] + 6) = v22;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
                v33 = v23;
                v34 = 2082;
                v35 = v20;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is enabled on device %{public}s which is %{public}s and device %{public}s which is %{public}s", &buf, 0x2Au);
                if (v30 < 0)
                {
                  operator delete(v29[0]);
                }

                if (v39 < 0)
                {
                  operator delete(*__p);
                }
              }

              sub_1003A3C54(v14, 1);
              sub_1003A3C54(v6, 1);
              (*(*a1 + 192))(a1, v6, 1, 0);
              (*(*a1 + 192))(a1, v14, 1, 0);
              sub_1004CF9B8(a1, v6, 1);
              sub_1004CF9B8(a1, v14, 1);
            }
          }

          else
          {
            memset(&buf, 0, sizeof(buf));
            v24 = sub_100007E30(&buf, "WS_ERROR_START_FAILED_TO_FIND_LAST_CONNECTED");
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              v24 = sub_100008904(&v28, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
            }

            else
            {
              v28 = buf;
            }

            sub_1004E11F0(v24, &v28);
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v28.__r_.__value_.__l.__data_);
            }

            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
            {
              sub_1008384F8();
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    v25 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 722))
      {
        v26 = "supported";
      }

      else
      {
        v26 = "not supported";
      }

      sub_1000E5A58(a2, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *__p = 136446466;
      *&__p[4] = v26;
      v37 = 2082;
      v38 = p_buf;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Wireless Splitter is %{public}s on device %{public}s", __p, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008384BC();
  }
}

void sub_1004D7ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004D7F3C(uint64_t a1, unsigned int a2, __int16 a3, const void *a4, unsigned int a5)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 552);
  v11 = 0;
  sub_1000216B4(&v11);
  v9 = sub_1001F94C8(a3, a2, a4, a5, 0);
  sub_100022214(&v11);
  if (v9 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838534();
  }

  sub_10002249C(&v11);
  sub_1000088CC(v12);
  return 0;
}

void sub_1004D8000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8024(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 552);
  if (*(a1 + 616) == 1)
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1001F7840(&v8, 1u, 0);
    sub_100022214(&v6);
    if (v4 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008385A4();
    }

    sub_10002249C(&v6);
  }

  sub_1000088CC(v7);
  return 0;
}

void sub_1004D80D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D80FC(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 552);
  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838614();
    }

    v8 = 0;
  }

  v9 = sub_1004D05C4(a1, v8);
  v10 = sub_1004D03D4(a1, v9);
  v11 = sub_1004CEE18(a1, v9);
  if (v11)
  {
    v12 = qword_100BCE8B8;
    v13 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      sub_1000E5A58(v11, __p);
      v14 = SHIBYTE(v27) >= 0 ? __p : __p[0];
      *buf = 136446210;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received start streaming command from device %{public}s", buf, 0xCu);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_1004D5A20(v13, v11))
    {
      v15 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v11, __p);
        v16 = SHIBYTE(v27) >= 0 ? __p : __p[0];
        *buf = 136446210;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "StartInd, forwarding play command to RemoteClient for device %{public}s", buf, 0xCu);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = _NSConcreteStackBlock;
      __p[1] = 3221225472;
      v27 = sub_1004CFBE4;
      v28 = &unk_100AF9D48;
      v29 = v11;
      sub_1004CFAB8(a1 + 464, __p);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    if (!atomic_load((a1 + 752)))
    {
      v20 = sub_10024DEFC(sub_1004D25B0, v11 + 128);
      atomic_store(mach_absolute_time(), (a1 + 744));
      if (v20)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100838650();
        }
      }
    }

    sub_1002429D4(v11 + 128);
    v18 = sub_1001F7ABC(a2, a3, a4, 0, 0);
    sub_100022214(__p);
    if (v18)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1008386C0();
      }
    }

    else
    {
      *(v10 + 728) = 5;
      if ((sub_100703628(v10) & 1) == 0)
      {
        v21 = sub_1000DAB84();
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1004D84DC;
        v23[3] = &unk_100AEB940;
        v23[4] = a1;
        v24 = v9;
        sub_10008E008(v21, 12000, v23);
      }
    }

    sub_10002249C(__p);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1000088CC(v25);
  return v19;
}

void sub_1004D8498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D84DC(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 536);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = result + 536;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= v4;
      v8 = v6 < v4;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != result + 536 && *(v5 + 32) <= v4)
    {
      return sub_1004D1A9C(result, v4);
    }
  }

  return result;
}

uint64_t sub_1004D852C(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, int a6)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 552);
  if (a3 && a4)
  {
    v10 = sub_1004D05C4(a1, *a3);
    v11 = sub_1004D03D4(a1, v10);
    v12 = sub_1004CEE18(a1, v10);
    if (v12)
    {
      v13 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(v12, __p), v20 >= 0) ? (v14 = __p) : (v14 = __p[0]), *buf = 136446210, v23 = v14, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received confirm from %{public}s to start streaming", buf, 0xCu), v20 < 0))
      {
        operator delete(__p[0]);
        if (a6)
        {
LABEL_10:
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v12, __p);
            sub_1008387A4();
          }

          sub_10057E984();
        }
      }

      else if (a6)
      {
        goto LABEL_10;
      }

      if (*(v11 + 728) == 5)
      {
        v16 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v12, __p);
          v17 = v20 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v23 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device %{public}s was already in streaming state", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      *(v11 + 728) = 5;
      sub_1004D0A0C(a1, v10);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838730();
    }

    v15 = 7;
  }

  sub_1000088CC(v21);
  return v15;
}

void sub_1004D88E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8924(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 552);
  if (a3 && a4)
  {
    v8 = sub_1004D05C4(a1, *a3);
    v9 = sub_1004CEE18(a1, v8);
    v10 = sub_1004D03D4(a1, v8);
    v11 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        sub_1000E5A58(v9, __p);
        if (v17 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136446210;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received suspend streaming request from device %{public}s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v20 = "null";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received suspend streaming request from device %{public}s", buf, 0xCu);
      }
    }

    if (!sub_1004D0FAC(a1, v8) || *(v10 + 728) != 3)
    {
      *(v10 + 728) = 3;
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1001F889C(a2, a3, a4, 0, 0);
      sub_100022214(__p);
      sub_10002249C(__p);
      goto LABEL_19;
    }

    v14 = qword_100BCE8B8;
    v13 = 0;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "streaming already suspended, racing transaction", __p, 2u);
LABEL_19:
      v13 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838614();
    }

    v13 = 7;
  }

  sub_1000088CC(v18);
  return v13;
}

void sub_1004D8B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8BC8(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, int a6)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 552);
  if (a3 && a4)
  {
    v10 = sub_1004D05C4(a1, *a3);
    v11 = sub_1004D03D4(a1, v10);
    v12 = sub_1004CEE18(a1, v10);
    v13 = v12;
    if (a6)
    {
      v14 = *(v11 + 728);
      v15 = qword_100BCE8B8;
      if (v14 == 3)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v13, __p);
          if (v29 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *buf = 67109378;
          LODWORD(v32[0]) = a6;
          WORD2(v32[0]) = 2082;
          *(v32 + 6) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stream is already in open state, ignoring with suspend error %u on device %{public}s", buf, 0x12u);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v13, __p);
          sub_10083881C();
        }

        sub_1004CFE18(a1, v10);
      }
    }

    else
    {
      v18 = *(v12 + 132);
      v19 = *(v12 + 128);
      v20 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v13, __p);
        v21 = v29 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v32[0] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Successfully suspended stream to device %{public}s", buf, 0xCu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *(v11 + 728) = 3;
      if (*(v11 + 732) != 1)
      {
        goto LABEL_34;
      }

      *(v11 + 732) = 0;
      v22 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Checking if HAL still thinks we are streaming, if so, start up A2DP stream if not done so already", __p, 2u);
      }

      if (sub_100703628(v11))
      {
        v23 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v13, __p);
          v24 = v29 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v32[0] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Pending start stream, connecting media stream for %{public}s", buf, 0xCu);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1004D1E24(a1, v10);
      }

      else
      {
LABEL_34:
        v25 = sub_10000C7D0();
        v26 = sub_1000DEB14(v13);
        (*(*v25 + 56))(v25, (v19 | (v18 << 32)) & 0xFFFFFFFFFFFFLL, v26, 2, 0, 1, 1, 0);
      }
    }

    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838614();
    }

    v17 = 7;
  }

  sub_1000088CC(v30);
  return v17;
}

void sub_1004D8F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D8FAC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, int a6)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 552);
  if (a4)
  {
    v10 = sub_1004D05C4(a1, *a3);
    v11 = sub_1004CEE18(a1, v10);
    v12 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        sub_1000E5A58(v11, __p);
        if (v17 >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0];
        }

        *buf = 136446210;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received transition confirm from device %{public}s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446210;
        v20 = "null";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received transition confirm from device %{public}s", buf, 0xCu);
      }
    }

    v14 = sub_1004D8BC8(a1, 0, a3, a4, 0, a6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083886C();
    }

    v14 = 7;
  }

  sub_1000088CC(v18);
  return v14;
}

void sub_1004D9170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D9194(uint64_t a1, unsigned int a2, int a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 552);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004CEE18(a1, v6);
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      sub_1000E5A58(v7, __p);
      if (v13 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136446210;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received reconfigure stream request from device %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v16 = "null";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received reconfigure stream request from device %{public}s", buf, 0xCu);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v10 = sub_1001F9384(a3, a2, 1, 25);
  sub_100022214(__p);
  if (v10 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008388A8();
  }

  sub_10002249C(__p);
  sub_1000088CC(v14);
  return 0;
}

void sub_1004D9354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D938C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 552);
  if (*(a1 + 616) == 1)
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1001F7840(&v8, 1u, 0);
    sub_100022214(&v6);
    if (v4 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008385A4();
    }

    sub_10002249C(&v6);
  }

  sub_1000088CC(v7);
  return 0;
}

void sub_1004D9440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D9464(uint64_t a1, uint64_t a2, int a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 552);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  v8 = sub_1004CEE18(a1, v6);
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      sub_1000E5A58(v8, __p);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received close stream request from device %{public}s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136446210;
      v16 = "null";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received close stream request from device %{public}s", buf, 0xCu);
    }
  }

  sub_1004D0FAC(a1, v6);
  *(v7 + 728) = 0;
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  sub_1001F7EA8(a2, a3, 0);
  sub_100022214(__p);
  sub_10002249C(__p);
  sub_1000088CC(v14);
  return 0;
}

void sub_1004D9628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D9664(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 552);
  v1 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully closed stream", v3, 2u);
  }

  sub_1000088CC(v4);
  return 0;
}

uint64_t sub_1004D96EC(uint64_t a1, uint64_t a2, int a3)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 552);
  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  v8 = sub_1004CEE18(a1, v6);
  v9 = qword_100BCE8B8;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      if (v14 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446210;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received abort stream request from device %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(v7 + 728) = 7;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1001F7FF4(a2, a3);
    sub_100022214(__p);
    sub_1004D0FAC(a1, v6);
    sub_1004CFE18(a1, v6);
    sub_10002249C(__p);
    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838918();
    }

    v11 = 1;
  }

  sub_1000088CC(v15);
  return v11;
}

void sub_1004D9898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004D98D4(uint64_t a1, uint64_t a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 552);
  v5 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stream aborted on handle %d.", buf, 8u);
  }

  v6 = sub_1004D05C4(a1, a3);
  v7 = sub_1004D03D4(a1, v6);
  if (v7)
  {
    sub_1004D0FAC(a1, v6);
    *(v7 + 728) = 0;
  }

  sub_1000088CC(v9);
  return 0;
}

uint64_t sub_1004D99F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 552);
  v13 = sub_1004D03D4(a1, a3);
  v14 = v13;
  if (a7)
  {
    v15 = qword_100BCE8B8;
    if (*(v13 + 728) < 3)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        *&buf[4] = a7;
        v26 = 1024;
        v27 = a4;
        v28 = 1024;
        v29 = a3;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Received get all capability failure with error %d for stream endpoint ID %u on a2dp handle %d - disconnecting", buf, 0x14u);
      }

      sub_1004CFE18(a1, a3);
      if (qword_100B53FE8 != -1)
      {
        sub_100838954();
      }

      v18 = qword_100B53FE0;
      sub_100007E30(buf, "A2DPClient::GetAllCapsCfm");
      sub_100007E30(__p, "A2DP Get All Capabilities Error");
      sub_1005780BC(v18, buf, __p, 0.0);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v30 < 0)
      {
        operator delete(*buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = a7;
      v26 = 1024;
      v27 = a4;
      v28 = 1024;
      v29 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GetAllCaps rejected with error %d, but already in >= open state for stream endpoint ID %u on a2dp handle %d", buf, 0x14u);
    }
  }

  else
  {
    v16 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = a4;
      v26 = 1024;
      v27 = a3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "GetAllCapsCfm: Successfully retrieved capabilities for stream endpoint %u on a2dp handle %d", buf, 0xEu);
    }

    sub_100509868(v14 + 400, a6, a5, a4);
    v17 = sub_10050BD58(v14 + 400);
    if (v17 == 255)
    {
      sub_1004D21B8(a1, a3);
    }

    else
    {
      v19 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v17;
        v26 = 1024;
        v27 = a3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Querying stream capabilities of endpoint %u on a2dp handle %d", buf, 0xEu);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v20 = sub_1001F6D74(a3, v17, 0);
      sub_100022214(buf);
      if (v20 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100837EE4();
      }

      sub_10002249C(buf);
    }
  }

  sub_1000088CC(v24);
  return 0;
}

uint64_t sub_1004D9D98(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 552);
  v8 = sub_1004D05C4(a1, a2);
  v9 = sub_1004CEE18(a1, v8);
  v10 = sub_1004D03D4(a1, v8);
  if (v10)
  {
    v11 = sub_10000C798();
    if ((*(*v11 + 760))(v11))
    {
      v12 = 5000;
    }

    else
    {
      v12 = a4;
    }

    v13 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        sub_1000E5A58(v9, __p);
        if (v19 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 136446466;
        v22 = v14;
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", buf, 0x12u);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v22 = "null";
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", buf, 0x12u);
      }
    }

    if (*(v10 + 728) == 5 && *(v10 + 705) == 1)
    {
      dispatch_block_cancel(*(a1 + 496));
      sub_1007036D8(v10, 100 * v12);
      sub_1004DA09C(a1, v10, v9);
      sub_1004DA4B0(a1, v10, (52429 * v12) >> 19);
    }

    else
    {
      sub_10050C108(v10 + 400, 100 * v12);
      v16 = sub_10050BE78(v10 + 400);
      sub_1003A34D0(v10, v16);
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1001F9554(a2, a3, 1, 0);
    sub_100022214(__p);
    sub_10002249C(__p);
    v15 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083897C();
    }

    v15 = 1;
  }

  sub_1000088CC(v20);
  return v15;
}

void sub_1004DA05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DA09C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 708);
    v22 = 67109120;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Current Dynamic latency JBL: %d", &v22, 8u);
  }

  v8 = *(a2 + 708);
  if (v8 > 0x77)
  {
    if (*(a2 + 708) > 0x95u)
    {
      if (v8 == 150)
      {
        if (qword_100B50940 != -1)
        {
          sub_100837504();
        }

        if (sub_1006315B8(off_100B50938, 1))
        {
          if (qword_100B50940 != -1)
          {
            sub_100837504();
          }

          if (sub_10062D330(off_100B50938, a3))
          {
            v11 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v22) = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adaptive Latency prevent disable LLM, set flush to 200ms", &v22, 2u);
            }

            LOBYTE(v22) = 0;
            sub_1000216B4(&v22);
            v12 = sub_10023DF34(a3 + 128);
            sub_100022214(&v22);
            if (v12 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
            {
              sub_1008389EC();
            }

            goto LABEL_44;
          }
        }

        v9 = 0;
        v8 = 200;
      }

      else
      {
        if (v8 != 300)
        {
          goto LABEL_30;
        }

        v9 = 0;
      }

      v10 = 1;
      goto LABEL_35;
    }

    if (v8 == 120 || v8 == 140)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (*(a2 + 708) <= 0x4Fu)
    {
      if (v8 == 30)
      {
        v9 = 1;
        v8 = 60;
        v10 = 3;
        goto LABEL_35;
      }

      if (v8 != 60)
      {
        goto LABEL_30;
      }

LABEL_14:
      v9 = 1;
      v10 = 2;
LABEL_35:
      sub_1007036C8(a2, v10);
      sub_1004D1518(a1, *(a2 + 600), v9);
      v13 = v9 ^ 1;
      if (*(a2 + 728) == 5)
      {
        v13 = 1;
      }

      if ((v13 & 1) == 0)
      {
        v14 = sub_10000C7D0();
        v15 = *(a3 + 132);
        v16 = *(a3 + 128);
        v17 = sub_1000DEB14(a3);
        (*(*v14 + 56))(v14, (v16 | (v15 << 32)) & 0xFFFFFFFFFFFFLL, v17, 2, 1, 1, 1, 0);
        v18 = sub_10000C7D0();
        (*(*v18 + 944))(v18, 1, 1);
      }

      v19 = sub_10000C7D0();
      (*(*v19 + 80))(v19, a3, v9);
      v20 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 67109120;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Dynamic Latency settting flush timeout to %d ms", &v22, 8u);
      }

      LOBYTE(v22) = 0;
      sub_1000216B4(&v22);
      v21 = sub_10023DF34(a3 + 128);
      sub_100022214(&v22);
      if (v21 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838A5C();
      }

LABEL_44:
      sub_10002249C(&v22);
      return;
    }

    if (v8 == 80 || v8 == 100)
    {
      goto LABEL_14;
    }
  }

LABEL_30:
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838ACC();
  }

  *(a2 + 705) = 0;
  sub_1004CF0E0(a1, a2, 0);
}

void sub_1004DA4B0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a2 + 708);
  v7 = fabs((a3 - v6));
  if (a3 >= v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (v7 <= 0xAu || v6 == 150)
  {
    v10 = v7;
  }

  else
  {
    v10 = v7 - 10;
  }

  v11 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Down";
    if (v6 > a3)
    {
      v12 = "Up";
    }

    v13 = 136315394;
    v14 = v12;
    v15 = 1024;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Latency: Request JBL  %s by %dMsec", &v13, 0x12u);
  }

  if (v10)
  {
    sub_1004D1688(a1, a2, v8, v10);
  }

  else
  {
    (*(*a1 + 224))(a1, a2, 1);
  }
}

uint64_t sub_1004DA620(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5, unint64_t a6)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 552);
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838B08();
    }
  }

  else
  {
    v11 = a4 * 312.5;
    atomic_store(0, (a1 + 760));
    v12 = atomic_load((a1 + 744));
    atomic_store(v11 + (a6 - v12) * *(a1 + 620) / *(a1 + 624) / 0x3E8, (a1 + 752));
    atomic_store(a6, (a1 + 744));
    *(a1 + 776) = a4;
    if (*(a1 + 780) == 1)
    {
      v13 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
      {
        v14 = atomic_load((a1 + 752));
        *buf = 67109888;
        v18 = 0;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = a5;
        v23 = 1024;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "status %d, clock %uus, accuracy %u, adjusted clock %uus", buf, 0x1Au);
      }
    }
  }

  return sub_1000088CC(v16);
}

void sub_1004DA7C8(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = atomic_load((a1 + 760));
  v4 = sub_1004D03D4(a1, a2);
  kdebug_trace();
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838B78();
  }

  v5 = *(v4 + 720);
  if (qword_100B50940 != -1)
  {
    sub_100837504();
  }

  sub_10063AA70(off_100B50938, v2, v5, v3);
}

uint64_t sub_1004DA8A4(void *a1, uint64_t a2, int a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, (a1 + 69));
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  v8 = v7;
  if (v7)
  {
    sub_10050C1BC(v7 + 400, a3);
    sub_1003A32D0(v8, a3);
  }

  sub_1000088CC(v10);
  return 0;
}

BOOL sub_1004DA948(float a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = !sub_1000E2140(a3, 12) && (v7 = sub_10000C798(), ((*(*v7 + 416))(v7) & 1) == 0) && !sub_1000E2140(a3, 26) || a4 != 9 && a4 != 15;
  v10 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "No";
    if (v9)
    {
      v11 = "Yes";
    }

    v13 = 134218242;
    v14 = (a1 * 100.0);
    v15 = 2082;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "REMOTE DEVICE Volume : Should send volume %f to driver = %{public}s", &v13, 0x16u);
  }

  return v9;
}

uint64_t sub_1004DAA9C(void *a1, uint64_t a2, int a3, float a4)
{
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = (a4 * 100.0);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AVRCP REMOTE DEVICE: Volume changed to %f", &v13, 0xCu);
  }

  v9 = sub_1000E04A4(a1, a2);
  v10 = sub_1004D03D4(a1, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_1004DA948(a4, v10, a2, a3))
    {
      sub_1003A2788(v11, a4);
    }
  }

  return 0;
}

uint64_t sub_1004DABB0(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (!v5)
  {
    return 312;
  }

  v6 = v5;
  v11 = 0;
  if (qword_100B50950 != -1)
  {
    sub_100838BFC();
  }

  v7 = sub_10033C1E4(off_100B50948, a2, &v11 + 1, &v11);
  sub_1003A35C4(v6, BYTE4(v11), v11);
  v10 = 3;
  if (qword_100B50950 != -1)
  {
    sub_1008373EC();
  }

  sub_10033C47C(off_100B50948, a2, &v10);
  sub_1003A35D4(v6, v10);
  v8 = sub_1000E3314(a2);
  sub_1003A35E4(v6, v8);
  return v7;
}

uint64_t sub_1004DACA4(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    if (qword_100B50950 != -1)
    {
      sub_100838BFC();
    }

    v7 = sub_10033C0B8(off_100B50948, a2);
    sub_1003A359C(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DAD18(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (v6)
  {
    sub_1003A35F4(v6, a3);
  }

  return 0;
}

uint64_t sub_1004DAD5C(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000E3284(a2);
    sub_1003A3614(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DADB0(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_10054B04C(a2);
    sub_1003A3BF4(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DAE04(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1005493C4(a2);
    sub_1003A3950(v6, v7);
  }

  return 0;
}

uint64_t sub_1004DAE58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 528);
  if (v4 != (a1 + 536))
  {
    do
    {
      v5 = *(v4 + 16);
      v6 = sub_1004D03D4(a1, v5);
      if (v6)
      {
        v7 = sub_1004CEE18(a1, v5);
        if (v7)
        {
          if (sub_1000E012C(v7, 64))
          {
            v8 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v14 = v3;
              v15 = 1024;
              v16 = v5;
              _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Notify Foreground App Chanbed to BTHAL: %@, a2dpHandle:%u", buf, 0x12u);
            }

            sub_1003A3698(v6, v3);
          }
        }
      }

      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != (a1 + 536));
  }

  return 0;
}

uint64_t sub_1004DAFF4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (v7)
  {
    (*(*v7 + 136))(v7, v5);
    v8 = 0;
  }

  else
  {
    v8 = 7;
  }

  return v8;
}

uint64_t sub_1004DB094(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A2DPClient::notifyPersonalizedVolumeDRCInfoChanged  called", v9, 2u);
  }

  if (!v6)
  {
    return 7;
  }

  (*(*v6 + 144))(v6, a3);
  return 0;
}

uint64_t sub_1004DB15C(uint64_t a1, int a2)
{
  v2 = *(a1 + 528);
  v3 = (a1 + 536);
  if (v2 != (a1 + 536))
  {
    v6 = "Off";
    if (a2)
    {
      v6 = "On";
    }

    v17 = v6;
    do
    {
      v7 = *(v2 + 16);
      v8 = sub_1004D03D4(a1, v7);
      if (v8)
      {
        v9 = v8;
        v10 = sub_1004CEE18(a1, v7);
        if (v10)
        {
          v11 = v10;
          if (sub_1000E012C(v10, 64))
          {
            v12 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v19 = v17;
              v20 = 1024;
              v21 = v7;
              _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Notify AccessHeadTrack Change to BTHAL: %s, a2dpHandle:%u", buf, 0x12u);
            }

            sub_1003A3670(v9, a2);
            if (qword_100B508E0 != -1)
            {
              sub_1008372B0();
            }

            sub_10051774C(off_100B508D8, v11);
          }
        }
      }

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
  }

  return 0;
}

uint64_t sub_1004DB318(uint64_t a1)
{
  v1 = *(a1 + 528);
  v2 = (a1 + 536);
  if (v1 != (a1 + 536))
  {
    do
    {
      v4 = *(v1 + 16);
      v5 = sub_1004D03D4(a1, v4);
      if (v5)
      {
        v6 = v5;
        v7 = sub_1004CEE18(a1, v4);
        if (sub_1000E012C(v7, 64))
        {
          v8 = sub_10000C798();
          v9 = (*(*v8 + 840))(v8, 3);
          if (v7)
          {
            if (v9)
            {
              if (qword_100B50940 != -1)
              {
                sub_100837ADC();
              }

              v10 = sub_100639CE0(off_100B50938);
              sub_1003A3D44(v6, v10);

              if (qword_100B50940 != -1)
              {
                sub_100837ADC();
              }

              v11 = sub_100639FCC(off_100B50938, v7);
              sub_100703728(v6, v11);
            }
          }
        }
      }

      v12 = v1[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v1[2];
          v14 = *v13 == v1;
          v1 = v13;
        }

        while (!v14);
      }

      v1 = v13;
    }

    while (v13 != v2);
  }

  return 0;
}

uint64_t sub_1004DB488(void *a1, uint64_t a2)
{
  v4 = sub_1000E04A4(a1, a2);
  v5 = sub_1004D03D4(a1, v4);
  if (v5)
  {
    v6 = v5;
    v9 = 0;
    if (qword_100B508F0 != -1)
    {
      sub_100836E24();
    }

    sub_10056C0AC(off_100B508E8, a2, &v9);
    v7 = *sub_10000C798();
    if ((*(v7 + 848))() != 1)
    {
      sub_1003A3648(v6, v9 == 1);
      if (qword_100B508E0 != -1)
      {
        sub_1008372B0();
      }

      sub_100519738(off_100B508D8, a2);
    }
  }

  return 0;
}

uint64_t sub_1004DB580(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (v7)
  {
    v8 = v7;
    if (sub_1000E012C(a2, 64))
    {
      v9 = sub_10000C798();
      if ((*(*v9 + 840))(v9, 3))
      {
        v10 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = "NO";
          if (a3)
          {
            v11 = "YES";
          }

          v13 = 136315138;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Personalized HRTF enhanced Tuning %s", &v13, 0xCu);
        }

        sub_100703738(v8, a3);
      }
    }
  }

  return 0;
}

uint64_t sub_1004DB6BC(void *a1, uint64_t a2, void *a3, int a4, int a5)
{
  v9 = a3;
  v10 = sub_1000E04A4(a1, a2);
  v11 = sub_1004D03D4(a1, v10);
  v22 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100836E24();
  }

  sub_10056C0AC(off_100B508E8, a2, &v22);
  v12 = sub_10000C798();
  if ((*(*v12 + 848))(v12) == 1)
  {
    v13 = a1[66];
    if (v13 != a1 + 67)
    {
      do
      {
        v14 = *(v13 + 16);
        v15 = sub_1004D03D4(a1, v14);
        if (v15)
        {
          v16 = sub_1004CEE18(a1, v14);
          v17 = v16;
          if (v16)
          {
            if (sub_1000E012C(v16, 64))
            {
              if (v9)
              {
                sub_1003A3788(v15, a4, v9, a5);
              }

              if (qword_100B508E0 != -1)
              {
                sub_1008372B0();
              }

              sub_100519738(off_100B508D8, v17);
            }
          }
        }

        v18 = v13[1];
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
            v19 = v13[2];
            v20 = *v19 == v13;
            v13 = v19;
          }

          while (!v20);
        }

        v13 = v19;
      }

      while (v19 != a1 + 67);
    }
  }

  else if (v9 && v11)
  {
    sub_1003A3788(v11, a4, v9, a5);
  }

  return 0;
}

uint64_t sub_1004DB8A8(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  result = sub_1000E2140(a2, 26);
  if (result)
  {
    v10 = sub_10000E92C();
    if (((*(*v10 + 784))(v10) & 1) == 0)
    {
      sub_1003A33C8(v8, a3);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004DB94C(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  sub_1003A3F6C(v6, a3);
  return 0;
}

uint64_t sub_1004DB998(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (a3)
  {
    v8 = sub_10000C7D0();
    v9 = sub_1000E01B4(v8, 2u);
  }

  else
  {
    v9 = 0;
  }

  sub_1003A3EF4(v7, v9);
  return 0;
}

uint64_t sub_1004DBA04(void *a1, uint64_t a2, int *a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (a3)
  {
    v8 = v7;
    if (v7)
    {
      if (sub_1000E2140(a2, 16))
      {
        *a3 |= 1u;
      }

      v9 = sub_1000E2140(a2, 17);
      v10 = *a3;
      if (v9)
      {
        v10 |= 2u;
        *a3 = v10;
      }

      sub_100540FDC(a2, v10);
      sub_1003A3638(v8, *a3);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838C10();
    }

    return 3;
  }
}

uint64_t sub_1004DBAD8(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (a3)
  {
    v9 = sub_10000C7D0();
    v10 = sub_1000E01B4(v9, 0);
  }

  else
  {
    v10 = 0;
  }

  sub_1003A3E94(v8, v10);
  v12 = sub_1000E00E4(a2);
  sub_1004DBB68(a1, a2, v12);
  return 0;
}

uint64_t sub_1004DBB68(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  sub_1003A3EBC(v6, a3);
  return 0;
}

uint64_t sub_1004DBBB4(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  v6 = sub_1004D03D4(a1, v5);
  if (!v6)
  {
    return 7;
  }

  v7 = v6;
  if (a3)
  {
    v8 = sub_10000C7D0();
    v9 = sub_1000E01B4(v8, 1u);
  }

  else
  {
    v9 = 0;
  }

  sub_1003A3ECC(v7, v9);
  return 0;
}

uint64_t sub_1004DBC20(void *a1, __n128 *a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  v7 = sub_1004D03D4(a1, v6);
  if (!v7)
  {
    return 7;
  }

  v8 = v7;
  if (a3)
  {
    v9 = sub_10000C798();
    if ((*(*v9 + 840))(v9, 1))
    {
      v10 = sub_10000C798();
      a3 = (*(*v10 + 840))(v10, 3);
      v11 = 1;
    }

    else
    {
      v11 = 0;
      a3 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v21 = 0;
  sub_1003A3CF4(v8, v11);
  sub_1003A3E6C(v8, a3);
  if (v11)
  {
    if (a3)
    {
      if (qword_100B50940 != -1)
      {
        sub_100837ADC();
      }

      v13 = sub_100639CE0(off_100B50938);
      sub_1003A3D44(v8, v13);

      if (qword_100B50940 != -1)
      {
        sub_100837ADC();
      }

      v14 = sub_100639FCC(off_100B50938, a2);
      sub_100703728(v8, v14);
    }

    if (qword_100B508F0 != -1)
    {
      sub_100836E24();
    }

    sub_10056C0AC(off_100B508E8, a2, &v21);
    v15 = v21;
    if (!v21)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100837854();
      }

      v15 = 1;
      sub_10056C1D8(off_100B508E8, a2, 1);
      v21 = 1;
    }

    sub_1003A3648(v8, v15 == 1);
    if (qword_100B50940 != -1)
    {
      sub_100837504();
    }

    v16 = sub_100639508(off_100B50938);
    (*(*v8 + 128))(v8, v16);
    v17 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v18 = "YES";
      }

      else
      {
        v18 = "NO";
      }

      if (qword_100B50940 != -1)
      {
        sub_100837504();
      }

      v19 = sub_100639FCC(off_100B50938, a2);
      v20 = " NO ";
      *buf = 136446722;
      v23 = "YES ";
      v24 = 2082;
      v25 = v18;
      if (v19)
      {
        v20 = " YES ";
      }

      v26 = 2082;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AudioDevice. Spatial Audio :  SpatialSupport  %{public}s Custom HRTF Support %{public}s Custom HRTF Allowed %{public}s", buf, 0x20u);
    }
  }

  return 0;
}

uint64_t sub_1004DBF5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E45E8(a2);
  v4 = qword_100BCE8B8;
  result = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v10 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected device type is hearing aid. Returning user selected device type as kBluetoothAudioDeviceCategoryHearingAid for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 4;
      case 4:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v13 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v13;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategorySpeaker for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 3;
      case 5:
        if (result)
        {
          sub_1000E5A58(a2, __p);
          v7 = v15 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User selected device type is other. Returning user selected device type as kBluetoothAudioDeviceCategoryOther for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 5;
      default:
LABEL_34:
        if (!result)
        {
          return result;
        }

        sub_1000E5A58(a2, __p);
        if (v15 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v17 = v11;
        v9 = "Returning user selected device type as kBluetoothAudioDeviceCategoryUnknown for device %{public}s.";
        goto LABEL_39;
    }
  }

  else
  {
    if (!v3)
    {
      if (!result)
      {
        return result;
      }

      sub_1000E5A58(a2, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v17 = v8;
      v9 = "User selected device type is unknown. Returning user selected device type as kBluetoothAudioDeviceCategoryUnknown for device %{public}s.";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        if (result)
        {
          sub_1000E5A58(a2, __p);
          if (v15 >= 0)
          {
            v6 = __p;
          }

          else
          {
            v6 = __p[0];
          }

          *buf = 136446210;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategoryHeadphone for device %{public}s.", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 1;
      }

      goto LABEL_34;
    }

    if (result)
    {
      sub_1000E5A58(a2, __p);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Returning user selected device type as kBluetoothAudioDeviceCategoryCarkit for device %{public}s.", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 2;
  }
}

uint64_t sub_1004DC2F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, v2 + 552);
  v3 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Software Volume: Initialize software volume enabled", v5, 2u);
  }

  if (qword_100B50950 != -1)
  {
    sub_1008373EC();
  }

  if (sub_1003349D4(off_100B50948, *(a1 + 40), 2, 1) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100838C4C();
  }

  return sub_1000088CC(v6);
}

void sub_1004DC3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DC3F4(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = sub_1000DAB84();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004DC4D8;
    v7[3] = &unk_100AEB940;
    v7[4] = a1;
    v8 = v4;
    sub_10000CA94(v5, v7);
  }

  else
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamWillStart", buf, 2u);
    }
  }
}

uint64_t sub_1004DC4D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, (v2 + 69));
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received system 'audio started' notification from HAL on a2dpHandle %d", buf, 8u);
  }

  atomic_store(0, v2 + 93);
  atomic_store(0, v2 + 94);
  atomic_store(0, v2 + 95);
  if (v3)
  {
    *buf = 0;
    v17 = 0;
    v16 = 0;
    sub_1000C2364(v3, buf, &v17 + 1, &v17, &v16);
    v6 = sub_10000C798();
    if ((*(*v6 + 760))(v6) && (v17 - 8202) <= 0x25 && ((1 << (v17 - 10)) & 0x200020033FLL) != 0)
    {
      if (qword_100B50950 != -1)
      {
        sub_1008373EC();
      }

      if (sub_100331844(off_100B50948, v3, 11, 500, 1u) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838CBC();
      }
    }

    sub_1004D1E24(v2, *(a1 + 40));
    v7 = v3[8].n128_u32[0];
    v8 = v3[8].n128_u16[2];
    v9 = sub_10000C7D0();
    v10 = sub_1000DEB14(v3);
    (*(*v9 + 56))(v9, (v7 | (v8 << 32)) & 0xFFFFFFFFFFFFLL, v10, 2, 1, 1, 1, 0);
    v11 = sub_10000C7D0();
    (*(*v11 + 944))(v11, 1, 1);
    v15 = 0;
    sub_1000216B4(&v15);
    v12 = sub_1001F969C(&v3[8]);
    sub_100022214(&v15);
    if (!v12)
    {
      v13 = sub_10000C7D0();
      (*(*v13 + 296))(v13, v3, 1, 1);
    }

    sub_10002249C(&v15);
  }

  return sub_1000088CC(v18);
}

void sub_1004DC7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004DC818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  result = sub_100702ABC(a2);
  if (result)
  {
    v10 = result;
    if (*(a1 + 780) == 1)
    {
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134218496;
        v13 = a4;
        v14 = 1024;
        v15 = v10;
        v16 = 1024;
        v17 = a5;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Sending data of length %lu to a2dpHandle %d with frameCount %d", &v12, 0x18u);
      }
    }

    return sub_1004D3E74(a1, a3, a4, a5, v10);
  }

  return result;
}

void sub_1004DC92C(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = sub_1000DAB84();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004DCA10;
    v7[3] = &unk_100AEB940;
    v7[4] = a1;
    v8 = v4;
    sub_10000CA94(v5, v7);
  }

  else
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidStop", buf, 2u);
    }
  }
}

uint64_t sub_1004DCA10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 67109120;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received system 'audio stop' notification from HAL on a2dpHandle %d", buf, 8u);
  }

  if (v3)
  {
    sub_1004D17C8(v2, *(a1 + 40));
    v6 = sub_10000C7D0();
    (*(*v6 + 944))(v6, 0, 1);
    buf[0] = 0;
    sub_1000216B4(buf);
    v7 = sub_1001F969C(v3 + 128);
    sub_100022214(buf);
    if (!v7)
    {
      v8 = sub_10000C7D0();
      (*(*v8 + 296))(v8, v3, 0, 1);
    }

    sub_10002249C(buf);
  }

  return sub_1000088CC(v10);
}

void sub_1004DCBD4(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = sub_1000DAB84();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004DCCB8;
    v7[3] = &unk_100AEB940;
    v7[4] = a1;
    v8 = v4;
    sub_10000CA94(v5, v7);
  }

  else
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidReset", buf, 2u);
    }
  }
}

uint64_t sub_1004DCCB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = sub_1004CEE18(v2, *(a1 + 40));
  if (result)
  {
    sub_1004D17C8(v2, *(a1 + 40));
    v4 = *(a1 + 40);

    return sub_1004D1C40(v2, v4);
  }

  return result;
}

void sub_1004DCD24(uint64_t a1, uint64_t a2, float a3)
{
  if (sub_1003A42E4(a2))
  {
    v6 = sub_100702ABC(a2);
    v7 = sub_1000DAB84();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1004DCE18;
    v9[3] = &unk_100AF9DB0;
    v9[4] = a1;
    v11 = v6;
    v10 = a3;
    sub_10000CA94(v7, v9);
  }

  else
  {
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling volumeDidUpdate", buf, 2u);
    }
  }
}

uint64_t sub_1004DCE18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 44));
  if (v3)
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_INFO))
    {
      v5 = (*(a1 + 40) * 100.0);
      *buf = 67109120;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending volume %d", buf, 8u);
    }

    if (qword_100B541D0 != -1)
    {
      sub_100837804();
    }

    sub_1006CCF18(*(a1 + 40), off_100B541C8, v3);
  }

  return sub_1000088CC(v7);
}

uint64_t sub_1004DCF58(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (!v6)
  {
    return 1;
  }

  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838D40();
    }

    return 1;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = __p[0];
    v11 = "No";
    if (v14 >= 0)
    {
      v10 = __p;
    }

    if (a3)
    {
      v11 = "Yes";
    }

    *buf = 136446466;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAllowsAutoRoute: %{public}s, allows %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1003A4008(v9, a3);
  return 0;
}

uint64_t sub_1004DD0C0(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (!v6)
  {
    return 1;
  }

  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838DB0();
    }

    return 1;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = __p[0];
    v11 = "No";
    if (v14 >= 0)
    {
      v10 = __p;
    }

    if (a3)
    {
      v11 = "Yes";
    }

    *buf = 136446466;
    v16 = v10;
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAudioRouteHidden: %{public}s, %{public}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1003A407C(v9, a3);
  return 0;
}

uint64_t sub_1004DD228(void *a1, uint64_t a2, int a3)
{
  v5 = sub_1000E04A4(a1, a2);
  if (v5)
  {
    v6 = sub_1004D03D4(a1, v5);
    if (v6)
    {
      sub_1003A3F94(v6, a3);
      return 0;
    }

    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838E20();
    }
  }

  return 1;
}

uint64_t sub_1004DD2B0(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (!v6)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838E90();
    }

    goto LABEL_10;
  }

  v9 = v7;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "No";
    if (a3)
    {
      v10 = "Yes";
    }

    v13 = 136315138;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Smart Route: [A2DP] Tipi Connection status : %s", &v13, 0xCu);
  }

  sub_1003A325C(v9, a3);
  v11 = 0;
LABEL_11:
  if (qword_100B50940 != -1)
  {
    sub_100837504();
  }

  sub_10063AD60(off_100B50938, a2, a3);
  return v11;
}

void sub_1004DD40C(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000E04A4(a1, a2);
  if (v6)
  {
    v7 = sub_1004D03D4(a1, v6);
    if (v7)
    {
      v8 = v7;
      if ((a3 - 1) > 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = dword_1008A9BE8[a3 - 1];
      }

      v10 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        if (v14 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 67109634;
        v16 = a3;
        v17 = 1024;
        v18 = v9;
        v19 = 2082;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "User selected device type is %d. Setting category as %d for device %{public}s.", buf, 0x18u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10069BFD4(v8, v9);
      v12 = sub_100509234(v8 + 400);
      sub_10069BD7C(v8, v12);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838F00();
    }
  }
}

uint64_t sub_1004DD59C(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 552);
  v8 = sub_1004D03D4(a1, a2);
  if (!v8)
  {
    goto LABEL_5;
  }

  if (qword_100B50940 != -1)
  {
    sub_100837504();
  }

  if ((sub_10062CF3C(off_100B50938, a2) & 1) == 0)
  {
    sub_1004D1688(a1, v8, a3, a4);
    v9 = 0;
    if (a4)
    {
      *(v8 + 710) = 1;
    }
  }

  else
  {
LABEL_5:
    if (a4)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838F70();
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1004CF890;
      v12[3] = &unk_100AF9CA8;
      v13 = a2;
      v14 = 0;
      sub_1004CEEC4(a1 + 432, v12);
    }

    v9 = 1;
  }

  sub_1000088CC(v11);
  return v9;
}

void sub_1004DD6F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DD70C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency ExpanseStateChanged to: %d", v7, 8u);
  }

  sub_1004CF36C(a1, a2, a3);
}

void sub_1004DD7D8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency gameStateChanged to: %d", v8, 8u);
  }

  sub_1004CF43C(a1, a2, a3);
  if ((a3 & 1) == 0)
  {
    v7 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Latency ExpanseState disabled", v8, 2u);
    }

    sub_1004CF36C(a1, a2, 0);
  }
}

void sub_1004DD8FC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency aggregationStateChanged to: %d", v7, 8u);
  }

  sub_1004CF50C(a1, a2, a3);
}

void sub_1004DD9C8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency voiceOverChanged to: %d", v7, 8u);
  }

  sub_1004CF5E8(a1, a2, a3);
}

void sub_1004DDA94(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency MUSIC spatial changed to: %d", v7, 8u);
  }

  sub_1004CF6B8(a1, a2, a3);
}

void sub_1004DDB60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dynamic Latency VIDEO spatial changed to: %d", v7, 8u);
  }

  sub_1004CF788(a1, a2, a3);
}

void sub_1004DDC2C(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, unsigned __int8 a5)
{
  v9 = a4;
  v10 = sub_100702ABC(a2);
  v11 = sub_1004CEE18(a1, v10);
  if (v11)
  {
    v12[0] = 2;
    v12[1] = a3;
    v12[2] = sub_1003A2B68(a2, v9);
    v12[3] = a5;
    if (qword_100B50950 != -1)
    {
      sub_100838BFC();
    }

    if (sub_10033FD88(off_100B50948, v11, 4u, v12) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100838FE4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839054();
  }
}

void sub_1004DDD68(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v11 = a4;
  v12 = sub_100702ABC(a2);
  v13 = sub_1004CEE18(a1, v12);
  if (v13)
  {
    v14[0] = 3;
    v14[1] = sub_1003A2B68(a2, v11);
    v14[2] = a3;
    v14[3] = a5;
    v14[4] = a6;
    if (qword_100B50950 != -1)
    {
      sub_100838BFC();
    }

    if (sub_10033FD88(off_100B50948, v13, 5u, v14) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100839090();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839100();
  }
}

void sub_1004DDEAC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a2 + 723) != a3)
  {
    *(a2 + 723) = a3;
    v8 = sub_100702ABC(a2);
    v9 = sub_1004CEE18(a1, v8);
    if (v9)
    {
      v10 = v9;
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a3 ? "enabled" : "disabled";
        sub_1000BE6F8((v10 + 128), __p);
        v13 = v18 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v20 = v12;
        v21 = 2082;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: %{public}s for device %{public}s", buf, 0x16u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_1000E2140(v10, 13) && sub_1005095A4(a2 + 400) == 33023)
      {
        *(a2 + 704) = a3 ^ 1;
        sub_1007036B8(a2, a3 ^ 1);
      }

      if (a3)
      {
        if (sub_1000E2140(v10, 26))
        {
          v14 = sub_10000E92C();
          if (((*(*v14 + 776))(v14) & 1) == 0)
          {
            v15 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000BE6F8((v10 + 128), __p);
              v16 = v18 >= 0 ? __p : __p[0];
              *buf = 136446210;
              v20 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter: Disable Software volume for %{public}s", buf, 0xCu);
              if (v18 < 0)
              {
                operator delete(__p[0]);
              }
            }

            if (qword_100B50950 != -1)
            {
              sub_1008373EC();
            }

            if (sub_1003349D4(off_100B50948, v10, 2, 2))
            {
              if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
              {
                sub_100838C4C();
              }
            }
          }
        }

        sub_1004CF9B8(a1, a2, 1);
      }

      else
      {
        sub_1004CF9B8(a1, a2, 0);
        if (a4 && *(v10 + 1016) == 1)
        {
          *(v10 + 1036) = 3;
          if (qword_100B50F88 != -1)
          {
            sub_10083913C();
          }

          sub_1006E0DBC(off_100B50F80, v10);
        }
      }
    }
  }
}

uint64_t sub_1004DE1B8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_100702ABC(a2);
  result = sub_1004CEE18(a1, v5);
  if (result)
  {
    v7 = result;
    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((v7 + 128), __p);
      v9 = v11 >= 0 ? __p : __p[0];
      *buf = 67109378;
      v13 = a3;
      v14 = 2082;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Spatial Audio Active(via BTHAL) is : %d for device %{public}s", buf, 0x12u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_1008372B0();
    }

    return sub_1005199DC(off_100B508D8, v7, a3);
  }

  return result;
}

void sub_1004DE2F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v9 = a3;
  v10 = sub_100702ABC(a2);
  v11 = sub_1004CEE18(a1, v10);
  v12 = qword_100BCE8B8;
  if (v11)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8((v11 + 128), __p);
      v13 = @"None";
      if (v9)
      {
        v13 = v9;
      }

      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 138412802;
      v18 = v13;
      v19 = 1024;
      v20 = a4;
      v21 = 2082;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Spatial Audio: Spatial Audio mode for App: %@ From User(via BTHAL) is : %d for device %{public}s", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508E0 != -1)
    {
      sub_1008372B0();
    }

    sub_100519AF8(off_100B508D8, v11, v9, a4, a5);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839164();
  }
}

void sub_1004DE4A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100702ABC(a2);
  v6 = sub_1000DAB84();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004DE544;
  v7[3] = &unk_100AF5948;
  v7[4] = a1;
  v8 = v5;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1004DE544(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  if (v3)
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 42))
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PME On Buds: %s", buf, 0xCu);
    }

    *buf = 1;
    if (*(a1 + 42))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    buf[1] = v6;
    if (qword_100B50950 != -1)
    {
      sub_1008373EC();
    }

    if (sub_10033FFAC(off_100B50948, v3, 2u, buf) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008391A0();
    }
  }

  return sub_1000088CC(v8);
}

void sub_1004DE6D4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_100702ABC(a2);
  v7 = sub_1000DAB84();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1004DE774;
  v8[3] = &unk_100AEDA40;
  v9 = v6;
  v10 = a3;
  v8[4] = a1;
  v8[5] = a2;
  sub_10000CA94(v7, v8);
}

uint64_t sub_1004DE774(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 48));
  if (v3)
  {
    v4 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 50))
      {
        v5 = "enabled";
      }

      else
      {
        v5 = "disabled";
      }

      *buf = 136315138;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Software Volume: %s", buf, 0xCu);
    }

    *(*(a1 + 40) + 726) = *(a1 + 50);
    v6 = sub_1000E012C(v3, 32);
    if (*(a1 + 50))
    {
      v7 = 0;
    }

    else
    {
      v7 = (*(*(a1 + 40) + 723) | v6) ^ 1;
    }

    v8 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "No";
      if (v7)
      {
        v9 = "Yes";
      }

      *buf = 136315138;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Software Volume: Drop software volume enabled command : %s", buf, 0xCu);
    }

    if ((v7 & 1) == 0)
    {
      if (*(a1 + 50))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      if (qword_100B50950 != -1)
      {
        sub_1008373EC();
      }

      if (sub_1003349D4(off_100B50948, v3, 2, v10) && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100838C4C();
      }
    }
  }

  return sub_1000088CC(v12);
}

void sub_1004DE9A4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 3 && (*(a2 + 704) & 1) != 0)
  {
    v5 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AAC-ELD frame count update notification from BTHALPlugIn received: %d", v6, 8u);
    }

    *(a2 + 660) = a3;
  }
}

void sub_1004DEA6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (sub_1005095A4(a2 + 400) == 33023)
  {
    v6 = sub_10000E92C();
    if (((*(*v6 + 448))(v6) & 1) == 0)
    {
      v7 = a3 / (10 * *(a2 + 660));
      v8 = *(a2 + 720) + v7;
      *(a2 + 720) = v8;
      v9 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134218240;
        v11 = v7;
        v12 = 1024;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AudioSkywalkReadLoop Skip A2DP sequence number Skipped = %llu, current seq Num = %d", &v10, 0x12u);
      }
    }
  }

  sub_1004CF8F8(a1, a2, a3);
}

uint64_t sub_1004DEBB4(uint64_t a1, uint64_t a2, int a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 552);
  v6 = sub_100702ABC(a2);
  v7 = sub_1004D03D4(a1, v6);
  v8 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v6;
    LOWORD(v12) = 1024;
    *(&v12 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dynamic Latency received system 'audio speed change complete' notification from HAL on a2dpHandle %d, status %d", buf, 0xEu);
  }

  if (v7)
  {
    if (*(v7 + 705) == 1)
    {
      sub_1004D1688(a1, v7, 0, 0);
      *(v7 + 705) = 0;
      sub_1004CF0E0(a1, a2, 1);
    }

    else if (*(v7 + 710) == 1)
    {
      *(v7 + 710) = 0;
      *buf = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_1004CF890;
      v14 = &unk_100AF9CA8;
      v15 = v6;
      v16 = 1;
      sub_1004CEEC4(a1 + 432, buf);
    }

    else
    {
      sub_1004D1688(a1, v7, 0, 0);
    }
  }

  return sub_1000088CC(v10);
}

void sub_1004DED98(uint64_t a1, uint64_t a2)
{
  v3 = sub_100702ABC(a2);
  v4 = sub_1000DAB84();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004DEE24;
  v5[3] = &unk_100AEB940;
  v5[4] = a1;
  v6 = v3;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1004DEE24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 40));
  v4 = os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v4)
    {
      sub_1000E5A58(v3, v9);
      sub_100839210();
    }

    v8 = 0;
    sub_1000216B4(&v8);
    v5 = sub_10023BA68(v3 + 128);
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forced disconnect with return status %{bluetooth:OI_STATUS}u", buf, 8u);
    }

    sub_10002249C(&v8);
  }

  else if (v4)
  {
    sub_10083926C();
  }

  return sub_1000088CC(v10);
}

void sub_1004DEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DEFA0(uint64_t a1, uint64_t a2)
{
  if (sub_1003A42E4(a2))
  {
    v4 = sub_100702ABC(a2);
    v5 = sub_1000DAB84();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1004DF08C;
    v7[3] = &unk_100AE0EF8;
    v8 = v4;
    v7[4] = a1;
    v7[5] = a2;
    sub_10000CA94(v5, v7);
  }

  else
  {
    v6 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling uni to bi transition", buf, 2u);
    }
  }
}

uint64_t sub_1004DF08C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, v2 + 552);
  v3 = sub_1004CEE18(v2, *(a1 + 48));
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received system 'uni to bi' notification from HAL on a2dpHandle %d", buf, 8u);
  }

  if (*(*(a1 + 40) + 728) == 5)
  {
    sub_1004D0FAC(v2, *(a1 + 48));
    v6 = sub_10000C7D0();
    (*(*v6 + 944))(v6, 0, 1);
    v10 = 0;
    sub_1000216B4(&v10);
    v7 = sub_1001F969C(v3 + 128);
    *buf = sub_100508ED0(*(a1 + 40) + 400);
    sub_1001F8B80(buf, 1u, 0);
    sub_100022214(&v10);
    if (!v7)
    {
      v8 = sub_10000C7D0();
      (*(*v8 + 296))(v8, v3, 0, 1);
    }

    sub_10002249C(&v10);
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008392A8();
  }

  return sub_1000088CC(v11);
}

void sub_1004DF270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1004DF2AC(uint64_t a1, unsigned int a2, int a3)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 552);
  v6 = sub_1004D03D4(a1, a2);
  v7 = sub_1004CEE18(a1, a2);
  if (v6 && (v8 = v7) != 0)
  {
    if (*(v6 + 705) != 1)
    {
      *(v6 + 705) = 1;
      v10 = sub_1004D14B4(v7, v7, a3);
      *(v6 + 708) = v10;
      v11 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v6 + 728);
        *buf = 67109376;
        v22 = v10;
        v23 = 1024;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dynamic Latency trying to set jitter buffer to %d Current Stream state %d", buf, 0xEu);
      }

      sub_10000801C(v20);
      if (qword_100B50950 != -1)
      {
        sub_1008373EC();
      }

      v13 = sub_100331844(off_100B50948, v8, 11, *(v6 + 708), 1u);
      sub_100007FB8(v20);
      if (v13)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839388();
        }
      }

      else
      {
        if (*(v6 + 728) == 5)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1004DF5C0;
          block[3] = &unk_100AE0EF8;
          v19 = a2;
          block[4] = a1;
          block[5] = v6;
          v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
          v15 = *(a1 + 496);
          *(a1 + 496) = v14;

          v16 = sub_1000DAB84();
          sub_10008E008(v16, 2000, *(a1 + 496));
          return sub_1000088CC(v20);
        }

        sub_1004DA09C(a1, v6, v8);
      }

      *(v6 + 705) = 0;
      sub_1004CF0E0(a1, v6, 0);
      return sub_1000088CC(v20);
    }

    v9 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dynamic Latency change already in progress", buf, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839318();
  }

  sub_1004CF0E0(a1, v6, 0);
  return sub_1000088CC(v20);
}

void sub_1004DF598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004DF5C0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, v2 + 552);
  v3 = sub_1004D03D4(v2, *(a1 + 48));
  v4 = sub_1004CEE18(v2, *(a1 + 48));
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && *(v3 + 728) == 5)
  {
    v7 = qword_100BCE8B8;
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dynamic Latency did not receive Delay Report from accessory assuming audio modification is not needed", v9, 2u);
    }

    *(v3 + 705) = 0;
    sub_1004DA09C(v2, v3, v5);
    sub_1004CF0E0(v2, *(a1 + 40), 0);
  }

  return sub_1000088CC(v10);
}

void sub_1004DF6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004DF6CC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = sub_1004D03D4(a1, a2);
  v7 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v6 + 728);
    v9 = *(v6 + 705);
    v10 = *(v6 + 708);
    v12[0] = 67109888;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adaptive Latency speed modify stream:%d, inprogress:%d, curr:%d, delay:%d", v12, 0x1Au);
  }

  if (*(v6 + 728) == 5 && (*(v6 + 705) & 1) == 0)
  {
    v11 = sub_1004D03D4(a1, a2);
    if (v11)
    {
      *(v11 + 705) = 1;
      sub_1004DA4B0(a1, v11, a3);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_10083940C();
    }
  }
}

uint64_t sub_1004DF814(uint64_t a1, unsigned int a2)
{
  result = sub_1004D03D4(a1, a2);
  if (result)
  {
    return *(result + 720);
  }

  return result;
}

void sub_1004DF868(uint64_t a1, unsigned int a2, int a3)
{
  v4 = sub_1004D03D4(a1, a2);
  if (v4)
  {

    sub_1007036F8(v4, a3);
  }
}

void sub_1004DF8B0(uint64_t a1, unsigned int a2, int a3)
{
  v4 = sub_1004D03D4(a1, a2);
  if (v4)
  {

    sub_100703708(v4, a3);
  }
}

uint64_t sub_1004DF8F8(uint64_t a1, uint64_t a2, __int16 *a3, _WORD *a4)
{
  v4 = sub_1001FF024(a2, xmmword_1008A9BB0, &unk_100B54648, a3, a4);
  if (v4 && os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_100839448();
  }

  return v4;
}

uint64_t sub_1004DF968(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  sub_10057C6D0(a2, 3);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 102);
  sub_10057C6D0(a2, 16);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 103);
  v7 = sub_100007618(0x1F4uLL, 0xA5B8AE77uLL);
  if (v7)
  {
    v8 = v7;
    __src = v7;
    v17 = 0x2000001F401F4;
    v9 = sub_1001FFC7C(&__src);
    v10 = v9;
    v11 = WORD2(v17);
    if (BYTE6(v17) == 2)
    {
      WORD1(v17) = WORD2(v17);
    }

    BYTE6(v17) = 15;
    if (v9)
    {
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_100839484();
      }
    }

    else
    {
      if (!__src || !v17)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/a2dp/A2DPClient.cpp", 5183, "((bs).__data != NULL) && ((bs).__trueSize > 0)");
      }

      BYTE6(v17) = 1;
      *(&v17 + 2) = v17;
      if (v11 < 0x100)
      {
        sub_10057C6D0(a2, 17);
        sub_10057C6D0(a2, v11);
      }

      else
      {
        sub_10057C6D0(a2, 145);
        sub_10057C70C(a2, v11);
      }

      sub_10057C6B8(a2, __src, v11);
      v15 = 0;
      v14 = 0;
      v13 = 0;
      if (sub_1000C0D40(*a3, &v13, &v15, &v14))
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1008394C0();
        }
      }

      else
      {
        sub_10057C6D0(a2, 1);
        sub_10057C6D0(a2, 7);
        sub_10057C70C(a2, *a3);
        sub_10057C70C(a2, v13);
        sub_10057C70C(a2, v15);
        sub_10057C6D0(a2, v14);
      }

      v10 = sub_1000C0D40(*a4, &v13, &v15, &v14);
      if (v10)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_1008394FC();
        }
      }

      else
      {
        sub_10057C6D0(a2, 19);
        sub_10057C6D0(a2, 7);
        sub_10057C70C(a2, *a4);
        sub_10057C70C(a2, v13);
        sub_10057C70C(a2, v15);
        sub_10057C6D0(a2, v14);
      }
    }

    sub_10000C1E8(v8);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100839538();
    }

    return 106;
  }

  return v10;
}

uint64_t sub_1004DFC48(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v46 = a4;
  v45[0] = 0;
  v45[1] = 0;
  sub_100007F88(v45, a1 + 552);
  v44 = 0;
  v8 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  if (v8 < 1)
  {
    goto LABEL_63;
  }

  do
  {
    v9 = sub_10057C548(a2);
    if (v9 < 0)
    {
      v10 = sub_10057C598(a2);
      v11 = -3;
    }

    else
    {
      v10 = sub_10057C548(a2);
      v11 = -2;
    }

    v12 = v9 & 0x7F;
    if (v12 <= 16)
    {
      if (v12 != 1)
      {
        if (v12 == 3)
        {
          if (v10 == 2)
          {
LABEL_10:
            sub_10057C598(a2);
            goto LABEL_52;
          }

          v29 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v10;
            v18 = v29;
            v19 = "parseA2DPDescriptor Error FC_COMMON_VERSION size wrong %d";
LABEL_41:
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 8u);
          }
        }

        else if (v12 == 16)
        {
          if (v10 == 2)
          {
            goto LABEL_10;
          }

          v27 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v10;
            v18 = v27;
            v19 = "parseA2DPDescriptor Error FC_A2DP_AVDTP_VERSION size wrong %d";
            goto LABEL_41;
          }
        }

        else
        {
LABEL_23:
          v17 = qword_100BCE8B8;
          if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v12;
            v18 = v17;
            v19 = "parseA2DPDescriptor Key not recognized %d";
            goto LABEL_41;
          }
        }

        goto LABEL_42;
      }

      if (v10 < 7)
      {
        v26 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v10;
          v18 = v26;
          v19 = "parseA2DPDescriptor Error FC_COMMON_L2CAP_CONFIG size wrong %d";
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      v15 = sub_10057C598(a2);
      sub_10057C598(a2);
      v16 = sub_10057C598(a2);
      sub_10057C548(a2);
      *buf = 0;
      v49[0] = 0;
      sub_1000216B4(v49);
      if (sub_1000ABC7C(a4, buf) || !sub_1000B12AC(*buf))
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839574(&v42, v43);
        }
      }

      else
      {
        *(sub_1000B12AC(*buf) + 8) = v15;
        *(sub_1000B12AC(*buf) + 32) = v16;
      }

      sub_100022214(v49);
      v30 = v10 - 7;
      if (v10 == 7)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v12 == 17)
    {
      sub_1004E02AC(a1, a2, a3, &v46, a6);
      goto LABEL_52;
    }

    if (v12 != 18)
    {
      if (v12 != 19)
      {
        goto LABEL_23;
      }

      if (v10 < 7)
      {
        v28 = qword_100BCE8B8;
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v10;
          v18 = v28;
          v19 = "parseA2DPDescriptor Error FC_A2DP_L2CAP_MEDIA size wrong %d";
          goto LABEL_41;
        }

LABEL_42:
        sub_10057C660(a2, v10);
        goto LABEL_52;
      }

      v13 = sub_10057C598(a2);
      sub_10057C598(a2);
      v14 = sub_10057C598(a2);
      sub_10057C548(a2);
      *buf = 0;
      v49[0] = 0;
      sub_1000216B4(v49);
      if (sub_1000ABC7C(a5, buf) || !sub_1000B12AC(*buf))
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839574(&v40, v41);
        }
      }

      else
      {
        *(sub_1000B12AC(*buf) + 8) = v13;
        *(sub_1000B12AC(*buf) + 32) = v14;
      }

      sub_100022214(v49);
      v30 = v10 - 7;
      if (v10 == 7)
      {
        goto LABEL_51;
      }

LABEL_50:
      sub_10057C660(a2, v30);
LABEL_51:
      sub_10002249C(v49);
      goto LABEL_52;
    }

    v20 = sub_10057C598(a2);
    v21 = v44;
    if (v44)
    {
      v22 = v20;
      v23 = sub_10000C798();
      if ((*(*v23 + 760))(v23))
      {
        v24 = 5000;
      }

      else
      {
        v24 = v22;
      }

      v25 = qword_100BCE8B8;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEBUG))
      {
        if (a3)
        {
          sub_1000E5A58(a3, buf);
          v31 = buf;
          if (v48 < 0)
          {
            v31 = *buf;
          }

          *v49 = 136446466;
          v50 = v31;
          v51 = 1024;
          v52 = v24;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Fast Connect: Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", v49, 0x12u);
          if (v48 < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          *v49 = 136446466;
          v50 = "null";
          v51 = 1024;
          v52 = v24;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Fast Connect: Received delay report stream request from device %{public}s, delay in 1/10th of milliseconds %d", v49, 0x12u);
        }
      }

      sub_10050C108(v21 + 400, 100 * v24);
    }

LABEL_52:
    LOWORD(v8) = v8 + v11 - v10;
  }

  while (v8 > 0);
  v32 = v44;
  if (v44)
  {
    v33 = sub_10050BE78(v44 + 400);
    sub_1003A34D0(v32, v33);
    if (*(v32 + 704) == 1)
    {
      v34 = sub_10050BE78(v32 + 400);
      sub_1007036D8(v32, v34);
    }
  }

LABEL_63:
  sub_1000088CC(v45);
  return 0;
}

void sub_1004E024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004E02AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v9 = sub_10057C548(a2);
  if (v9)
  {
    if (sub_100007618(4 * v9, 0x100004052888210uLL))
    {
      *a5 = 0;
      v25 = 0;
      sub_1000216B4(&v25);
      if (!sub_1001F4454(*a4, a5))
      {
        v10 = *(a1 + 512);
        if (v10)
        {
          v11 = *a5;
          v12 = a1 + 512;
          do
          {
            v13 = *(v10 + 32);
            v14 = v13 >= v11;
            v15 = v13 < v11;
            if (v14)
            {
              v12 = v10;
            }

            v10 = *(v10 + 8 * v15);
          }

          while (v10);
          if (v12 != a1 + 512 && v11 >= *(v12 + 32))
          {
            v16 = qword_100BCE8B8;
            if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_FAULT))
            {
              sub_100837CA8(v16, v17, v18, v19, v20, v21, v22, v23);
            }
          }
        }

        sub_1003750BC(a1 + 504, a5)[5] = a3;
        operator new();
      }

      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1008395A8();
      }

      sub_10002249C(&v25);
    }

    else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008396C0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
  {
    sub_1008396FC();
  }

  return 129;
}

uint64_t sub_1004E08E4(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, unsigned __int16 *a5, unsigned int a6)
{
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 552);
  v12 = sub_1004D03D4(a1, a2);
  v13 = *(v12 + 728);
  v14 = sub_10050A6F0(v12 + 400);
  v15 = sub_10050DCAC(a1 + 280, v14);
  v16 = sub_10050B61C(v12 + 400, v15);
  v17 = sub_1004CEE18(a1, a2);
  *a5 = 0;
  if (v13 < 2)
  {
    if (v16)
    {
      v29 = a6;
      v19 = *(v12 + 556);
      v20 = *(v12 + 552);
      v21 = sub_100509098(v12 + 400);
      v28 = *(v21 + 32);
      v22 = sub_100509144(v12 + 400);
      v23 = *(v12 + 592);
      *a3 = v20;
      *a4 = v19;
      v24 = *(v21 + 44);
      v30[0] = 0;
      sub_1000216B4(v30);
      v25 = sub_1001FFF7C(a2, v19, v20, v28, (v24 - (v23 & (v22 ^ 1))), a5, v29);
      sub_100022214(v30);
      if (v25)
      {
        if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
        {
          sub_100839738();
        }
      }

      else
      {
        sub_100508F20(v12 + 400, *a5);
      }

      sub_10002249C(v30);
    }

    else
    {
      v26 = v17;
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v26, v30);
        sub_1008397A8();
      }
    }

    v18 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_100839804();
    }

    v18 = 1;
  }

  sub_1000088CC(v31);
  return v18;
}

void sub_1004E0B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004E0B64(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fast Connect A2DP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2);
}

void sub_1004E0C60(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v9 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v13) = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fast Connect A2DP Setup Complete result %d", buf, 8u);
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 552);
  sub_1004D03D4(a1, a3);
  if (a5)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100837C80();
    }

    v10 = sub_1000DD584(off_100B50A98, a5, 20000);
    sub_10057DA84(a1, a2, v10);
  }

  sub_10057DA84(a1, a2, 0);
}

uint64_t sub_1004E0FE4(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, int a6)
{
  v24 = a5;
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 552);
  if (a5)
  {
    sub_1004D0FAC(a1, a5);
    v12 = *(a1 + 512);
    if (v12)
    {
      v13 = a1 + 512;
      do
      {
        v14 = *(v12 + 32);
        v15 = v14 >= a5;
        v16 = v14 < a5;
        if (v15)
        {
          v13 = v12;
        }

        v12 = *(v12 + 8 * v16);
      }

      while (v12);
      if (v13 != a1 + 512 && *(v13 + 32) <= a5)
      {
        sub_100480E04(a1 + 504, &v24);
      }
    }

    v17 = *(a1 + 536);
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = a1 + 536;
    do
    {
      v19 = *(v17 + 32);
      v15 = v19 >= v24;
      v20 = v19 < v24;
      if (v15)
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * v20);
    }

    while (v17);
    if (v18 != a1 + 536 && v24 >= *(v18 + 32))
    {
      v22 = *sub_1004D0684(a1 + 528, &v24);
      if (v22)
      {
        sub_100480E04(a1 + 528, &v24);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1004CF858;
        v25[3] = &unk_100AF9CC8;
        v25[4] = a2;
        v26 = v24;
        v27 = 0;
        sub_1004CEEC4(a1 + 432, v25);
        sub_1003A2794(v22);
      }
    }

    else
    {
LABEL_26:
      if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
      {
        sub_10083991C();
      }
    }
  }

  LOBYTE(v25[0]) = 0;
  sub_1000216B4(v25);
  sub_1001FFA6C(a2 + 128, a3, a4, a6);
  sub_10002249C(v25);
  return sub_1000088CC(v23);
}

void sub_1004E11C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1004E11F0(uint64_t a1, const std::string *a2)
{
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  *v10 = 0u;
  *v7 = 0u;
  *v8 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_1004E4528(v6);
  std::string::operator=(&__p[1], a2);
  v3 = qword_100BCE8B8;
  if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v12 >= 0)
    {
      v4 = &__p[1];
    }

    else
    {
      v4 = __p[1];
    }

    *buf = 136315138;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter submitting following error metric: fErrorCode %s", buf, 0xCu);
  }

  v5 = sub_10000F034();
  (*(*v5 + 176))(v5, v6);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[1]);
  }

  if (SHIBYTE(v8[0]) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1004E1364(unsigned __int8 *a1, __int16 a2)
{
  v3 = (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
  v4 = sub_1000DAB84();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004E24F0;
  v5[3] = &unk_100AEB940;
  v5[4] = v3;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_1004E1414(unsigned __int8 *a1, __int16 a2, int a3)
{
  v5 = (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
  v6 = sub_1000DAB84();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004E25B0;
  v7[3] = &unk_100AF9DB0;
  v7[4] = v5;
  v9 = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_1004E14D4(unsigned __int8 *a1, __int16 a2, int a3)
{
  v5 = (*a1 << 40) | (a1[1] << 32) | (a1[2] << 24) | (a1[3] << 16) | (a1[4] << 8) | a1[5];
  v6 = sub_1000DAB84();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004E260C;
  v7[3] = &unk_100AF9DB0;
  v7[4] = v5;
  v9 = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_1004E2474(__int16 a1)
{
  v2 = sub_1000DAB84();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1004E4408;
  v3[3] = &unk_100AF59D0;
  v4 = a1;
  sub_10000CA94(v2, v3);
}

uint64_t sub_1004E24F0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004D487C(v2, v3, v4);
}

void sub_1004E25B0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);
  v5 = *(a1 + 40);

  sub_1004D4BE4(v2, v3, v4, v5);
}

uint64_t sub_1004E260C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 44);

  return sub_1004D5B68(v2, v3, v4);
}

uint64_t sub_1004E2668(uint64_t a1, char a2, __int16 a3, const void *a4, unsigned int a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9E00;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  if (a4)
  {
    v10 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    *(a1 + 16) = v10;
    memcpy(v10, a4, 4 * a5);
  }

  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  return a1;
}

void *sub_1004E2718(void *a1)
{
  *a1 = off_100AF9E00;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E2764(void *a1)
{
  *a1 = off_100AF9E00;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E27D0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);

  return sub_1004D5F00(v2, 0, v3, v4, v5, v6);
}

uint64_t sub_1004E2834(uint64_t a1, char a2, __int16 a3, char a4, const void **a5, unsigned int a6, char a7)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9E38;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 14) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  *(a1 + 25) = a7;
  if (a5)
  {
    LODWORD(v8) = a6;
    v10 = 16 * a6;
    v11 = malloc_type_malloc(v10, 0x105204037B82EA9uLL);
    *(a1 + 16) = v11;
    memcpy(v11, a5, v10);
    if (v8)
    {
      v12 = a5 + 1;
      v13 = 8;
      v8 = v8;
      do
      {
        v14 = *(v12 - 8);
        v15 = v14 == 7 || v14 == 4;
        if (v15 && *v12 && *(v12 - 5))
        {
          *(*(a1 + 16) + v13) = malloc_type_malloc(*(v12 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v13), *v12, *(v12 - 5));
        }

        v12 += 2;
        v13 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return a1;
}

void sub_1004E2954(uint64_t a1)
{
  sub_1004E29F4(a1);

  operator delete();
}

uint64_t sub_1004E298C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  return sub_1004D6368(v2, 0, v3, v4, v5, v6, v7);
}

uint64_t sub_1004E29F4(uint64_t a1)
{
  *a1 = off_100AF9E38;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E2A9C(uint64_t a1, char a2, __int16 a3, char a4, char a5, __int16 a6, const void **a7, unsigned int a8)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9E70;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 14) = a4;
  *(a1 + 15) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = a8;
  if (a7)
  {
    LODWORD(v9) = a8;
    v11 = 16 * a8;
    v12 = malloc_type_malloc(v11, 0x105204037B82EA9uLL);
    *(a1 + 24) = v12;
    memcpy(v12, a7, v11);
    if (v9)
    {
      v13 = a7 + 1;
      v14 = 8;
      v9 = v9;
      do
      {
        v15 = *(v13 - 8);
        v16 = v15 == 7 || v15 == 4;
        if (v16 && *v13 && *(v13 - 5))
        {
          *(*(a1 + 24) + v14) = malloc_type_malloc(*(v13 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 24) + v14), *v13, *(v13 - 5));
        }

        v13 += 2;
        v14 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return a1;
}

void sub_1004E2BC0(uint64_t a1)
{
  sub_1004E2C64(a1);

  operator delete();
}

uint64_t sub_1004E2BF8(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);

  return sub_1004D69D0(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1004E2C64(uint64_t a1)
{
  *a1 = off_100AF9E70;
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 32))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 24);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 32);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 24);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E2D24(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 15);

  return sub_1004D6D40(v2, 0, v3, 0, v4);
}

uint64_t sub_1004E2D84(uint64_t a1, char a2, __int16 a3, const void **a4, unsigned int a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9EE0;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  *(a1 + 25) = a6;
  if (a4)
  {
    LODWORD(v7) = a5;
    v9 = 16 * a5;
    v10 = malloc_type_malloc(v9, 0x105204037B82EA9uLL);
    *(a1 + 16) = v10;
    memcpy(v10, a4, v9);
    if (v7)
    {
      v11 = a4 + 1;
      v12 = 8;
      v7 = v7;
      do
      {
        v13 = *(v11 - 8);
        v14 = v13 == 7 || v13 == 4;
        if (v14 && *v11 && *(v11 - 5))
        {
          *(*(a1 + 16) + v12) = malloc_type_malloc(*(v11 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v12), *v11, *(v11 - 5));
        }

        v11 += 2;
        v12 += 16;
        --v7;
      }

      while (v7);
    }
  }

  return a1;
}

void sub_1004E2EA0(uint64_t a1)
{
  sub_1004E2F38(a1);

  operator delete();
}

uint64_t sub_1004E2ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v5 = qword_100B50AD8;
  v6 = *(a1 + 12);
  v7 = *(a1 + 25);

  return sub_1004D70B8(v5, 0, v6, a4, 0, v7);
}

uint64_t sub_1004E2F38(uint64_t a1)
{
  *a1 = off_100AF9EE0;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E2FF8(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  v5 = *(a1 + 16);

  return sub_1004D7618(v2, 0, v3, v4, v5);
}

uint64_t sub_1004E3070(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D73E4(v2, v3, v4);
}

uint64_t sub_1004E30E0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D9464(v2, v3, v4);
}

uint64_t sub_1004E3150()
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v1 = qword_100B50AD8;

  return sub_1004D9664(v1);
}

uint64_t sub_1004E31A0(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AF9FF8;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  if (a3 && a4)
  {
    v6 = 2 * a4;
    v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v7;
    memcpy(v7, a3, v6);
  }

  return a1;
}

void *sub_1004E3234(void *a1)
{
  *a1 = off_100AF9FF8;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3280(void *a1)
{
  *a1 = off_100AF9FF8;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E32EC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return sub_1004D80FC(v2, v3, v4, v5);
}

uint64_t sub_1004E3348(uint64_t a1, char a2, const void *a3, unsigned int a4, __int16 a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA030;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  *(a1 + 28) = a6;
  if (a3 && a4)
  {
    v8 = 2 * a4;
    v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a3, v8);
  }

  return a1;
}

void *sub_1004E33E4(void *a1)
{
  *a1 = off_100AFA030;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3430(void *a1)
{
  *a1 = off_100AFA030;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E349C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  return sub_1004D852C(v2, 0, v3, v4, 0, v5);
}

uint64_t sub_1004E3500(uint64_t a1, char a2, const void *a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA068;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  if (a3 && a4)
  {
    v6 = 2 * a4;
    v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v7;
    memcpy(v7, a3, v6);
  }

  return a1;
}

void *sub_1004E3594(void *a1)
{
  *a1 = off_100AFA068;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E35E0(void *a1)
{
  *a1 = off_100AFA068;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E364C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return sub_1004D8924(v2, v3, v4, v5);
}

uint64_t sub_1004E36A8(uint64_t a1, char a2, const void *a3, unsigned int a4, __int16 a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA0A0;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  *(a1 + 28) = a6;
  if (a3 && a4)
  {
    v8 = 2 * a4;
    v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a3, v8);
  }

  return a1;
}

void *sub_1004E3744(void *a1)
{
  *a1 = off_100AFA0A0;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3790(void *a1)
{
  *a1 = off_100AFA0A0;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E37FC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  return sub_1004D8BC8(v2, 0, v3, v4, 0, v5);
}

uint64_t sub_1004E3860(uint64_t a1, char a2, const void *a3, unsigned int a4, __int16 a5, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA0D8;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a4;
  *(a1 + 26) = a5;
  *(a1 + 28) = a6;
  if (a3 && a4)
  {
    v8 = 2 * a4;
    v9 = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a3, v8);
  }

  return a1;
}

void *sub_1004E38FC(void *a1)
{
  *a1 = off_100AFA0D8;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3948(void *a1)
{
  *a1 = off_100AFA0D8;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E39B4(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);

  return sub_1004D8FAC(v2, 0, v3, v4, 0, v5);
}

uint64_t sub_1004E3A18(uint64_t a1, char a2, __int16 a3, const void **a4, unsigned int a5)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA110;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a5;
  if (a4)
  {
    LODWORD(v6) = a5;
    v8 = 16 * a5;
    v9 = malloc_type_malloc(v8, 0x105204037B82EA9uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a4, v8);
    if (v6)
    {
      v10 = a4 + 1;
      v11 = 8;
      v6 = v6;
      do
      {
        v12 = *(v10 - 8);
        v13 = v12 == 7 || v12 == 4;
        if (v13 && *v10 && *(v10 - 5))
        {
          *(*(a1 + 16) + v11) = malloc_type_malloc(*(v10 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v11), *v10, *(v10 - 5));
        }

        v10 += 2;
        v11 += 16;
        --v6;
      }

      while (v6);
    }
  }

  return a1;
}

void sub_1004E3B30(uint64_t a1)
{
  sub_1004E3BC4(a1);

  operator delete();
}

uint64_t sub_1004E3B68(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D9194(v2, v3, v4);
}

uint64_t sub_1004E3BC4(uint64_t a1)
{
  *a1 = off_100AFA110;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E3C84(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);

  return sub_1004D938C(v2, 0, v3);
}

uint64_t sub_1004E3CE4(uint64_t a1, char a2, __int16 a3, const void *a4, size_t size)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA180;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = size;
  if (a4 && size)
  {
    v7 = size;
    v8 = malloc_type_malloc(size, 0x100004077774924uLL);
    *(a1 + 16) = v8;
    memcpy(v8, a4, v7);
  }

  return a1;
}

void *sub_1004E3D7C(void *a1)
{
  *a1 = off_100AFA180;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3DC8(void *a1)
{
  *a1 = off_100AFA180;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E3E34(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  return sub_1004D7F3C(v2, v3, v4, v5, v6);
}

uint64_t sub_1004E3E94(uint64_t a1, char a2, __int16 a3, const void *a4, size_t size, char a6)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA1B8;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = size;
  *(a1 + 26) = a6;
  if (a4 && size)
  {
    v8 = size;
    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
    *(a1 + 16) = v9;
    memcpy(v9, a4, v8);
  }

  return a1;
}

void *sub_1004E3F30(void *a1)
{
  *a1 = off_100AFA1B8;
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1004E3F7C(void *a1)
{
  *a1 = off_100AFA1B8;
  v1 = a1[2];
  if (v1)
  {
    free(v1);
  }

  operator delete();
}

uint64_t sub_1004E3FE8(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);

  return sub_1004D8024(v2, 0, v3);
}

uint64_t sub_1004E4060(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 10);
  v4 = *(a1 + 12);

  return sub_1004D96EC(v2, v3, v4);
}

uint64_t sub_1004E40D0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);

  return sub_1004D98D4(v2, 0, v3);
}

uint64_t sub_1004E412C(uint64_t a1, char a2, __int16 a3, char a4, const void **a5, unsigned int a6, char a7)
{
  *(a1 + 8) = 1;
  *a1 = off_100AFA260;
  *(a1 + 10) = a2;
  *(a1 + 12) = a3;
  *(a1 + 14) = a4;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  *(a1 + 25) = a7;
  if (a5)
  {
    LODWORD(v8) = a6;
    v10 = 16 * a6;
    v11 = malloc_type_malloc(v10, 0x105204037B82EA9uLL);
    *(a1 + 16) = v11;
    memcpy(v11, a5, v10);
    if (v8)
    {
      v12 = a5 + 1;
      v13 = 8;
      v8 = v8;
      do
      {
        v14 = *(v12 - 8);
        v15 = v14 == 7 || v14 == 4;
        if (v15 && *v12 && *(v12 - 5))
        {
          *(*(a1 + 16) + v13) = malloc_type_malloc(*(v12 - 5), 0x100004077774924uLL);
          memcpy(*(*(a1 + 16) + v13), *v12, *(v12 - 5));
        }

        v12 += 2;
        v13 += 16;
        --v8;
      }

      while (v8);
    }
  }

  return a1;
}

void sub_1004E424C(uint64_t a1)
{
  sub_1004E42EC(a1);

  operator delete();
}

uint64_t sub_1004E4284(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 14);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  return sub_1004D99F4(v2, 0, v3, v4, v5, v6, v7);
}

uint64_t sub_1004E42EC(uint64_t a1)
{
  *a1 = off_100AFA260;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    if (*(a1 + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 == 7 || v7 == 4)
        {
          v9 = v6 + v4;
          v10 = *(v9 + 8);
          if (v10)
          {
            if (*(v9 + 3))
            {
              free(v10);
              v3 = *(a1 + 24);
            }
          }
        }

        ++v5;
        v4 += 16;
      }

      while (v5 < v3);
      v2 = *(a1 + 16);
    }

    free(v2);
  }

  return a1;
}

uint64_t sub_1004E43AC(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 12);
  v4 = *(a1 + 10);
  v5 = *(a1 + 14);

  return sub_1004D9D98(v2, v3, v4, v5);
}

void sub_1004E4408(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_100839990();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);

  sub_1004DA7C8(v2, v3);
}

_BYTE *sub_1004E445C(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  v5 = 0;
  sub_1000216B4(&v5);
  v2 = sub_10023DC00(*(a1 + 32), &v6);
  sub_100022214(&v5);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8B8, OS_LOG_TYPE_ERROR))
    {
      sub_1008399A4();
    }
  }

  else
  {
    if (qword_100B50AE0 != -1)
    {
      sub_1008399E0();
    }

    sub_1004DA620(qword_100B50AD8, *(a1 + 48), v3, *(a1 + 52), *(a1 + 56), *(a1 + 40));
  }

  return sub_10002249C(&v5);
}

uint64_t sub_1004E4528(uint64_t a1)
{
  *(a1 + 60) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  sub_100007E30((a1 + 80), "");
  sub_100007E30((a1 + 104), "");
  sub_100007E30((a1 + 128), "");
  sub_100007E30((a1 + 152), "");
  return a1;
}

void sub_1004E4598(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004E45E4(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

uint64_t sub_1004E4C74(uint64_t result, int a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  *(result + 8) = 2082;
  return result;
}

uint64_t sub_1004E4C88(uint64_t a1)
{
  v2 = a1 + 24;
  *a1 = off_100AFA470;
  *(a1 + 8) = off_100AFA4C8;
  *(a1 + 16) = off_100AFA4F0;
  *(a1 + 24) = &off_100AFA520;
  *(a1 + 32) = 0;
  sub_100044BBC(a1 + 40);
  *(a1 + 240) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 256) = a1 + 264;
  *(a1 + 288) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 280) = a1 + 288;
  *(a1 + 296) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 384) = a1 + 392;
  *(a1 + 312) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 432) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = a1 + 520;
  *(a1 + 544) = 0u;
  *(a1 + 536) = a1 + 544;
  v16 = xmmword_1008A4BC0;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4B48;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4B5C;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D28;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D14;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4CEC;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D50;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D64;
  v17 = -805294830;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D78;
  v17 = -587704915;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D8C;
  v17 = -1765695659;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4DA0;
  v17 = -601477452;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4EA8;
  v17 = 1880579407;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4DB4;
  v17 = -1171415960;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4EE4;
  v17 = -815610143;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4EF8;
  v17 = 1323364242;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4F0C;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4D3C;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4E18;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4E40;
  v17 = 1729713604;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4F34;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4F5C;
  v17 = -1079296166;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4E94;
  v17 = -2130188885;
  sub_10000D03C(&v18, &v16);
  sub_100051F7C(a1 + 232, &v18);
  v16 = xmmword_1008A4E04;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  *&v16 = &v18;
  v3 = sub_1004F27E4(a1 + 280, &v18);
  v14 = xmmword_1008A4EBC;
  v15 = 295542594;
  sub_10000D03C(&v16, &v14);
  sub_100051F7C(v3 + 56, &v16);
  v16 = xmmword_1008A4E04;
  v17 = 0;
  sub_10000D03C(&v18, &v16);
  *&v16 = &v18;
  v4 = sub_1004F27E4(a1 + 280, &v18);
  v14 = xmmword_1008A4ED0;
  v15 = 312319810;
  sub_10000D03C(&v16, &v14);
  sub_100051F7C(v4 + 56, &v16);
  v5 = sub_100017E6C();
  sub_1004F0F04(v5 + 224, v2);
  v6 = sub_100017E6C();
  (*(*v6 + 24))(v6, a1 + 304);
  v7 = +[NSMutableSet set];
  v8 = *(a1 + 488);
  *(a1 + 488) = v7;

  v9 = +[NSMutableSet set];
  v10 = *(a1 + 496);
  *(a1 + 496) = v9;

  v11 = [[NSMapTable alloc] initWithKeyOptions:0x10000 valueOptions:256 capacity:0];
  v12 = *(a1 + 504);
  *(a1 + 504) = v11;

  return a1;
}

void sub_1004E5428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10000CEDC(v18 + 296, *(v12 + 544));
  sub_1004F2784(v18 + 272, *(v12 + 520));

  sub_1004F26D8(v17);
  sub_10008E0A0(a10, *(v12 + 416));
  sub_10000CEDC(a11, *(v12 + 392));
  v20 = *(v12 + 360);
  if (v20)
  {
    *(v12 + 368) = v20;
    operator delete(v20);
  }

  v21 = *(v18 + 96);
  if (v21)
  {
    *(v12 + 344) = v21;
    operator delete(v21);
  }

  if (*(v12 + 327) < 0)
  {
    operator delete(*(v18 + 64));
  }

  sub_1004F2678(v15, *v16);
  sub_10000CEDC(a12, *v13);
  sub_10000CEDC(v14, *v18);
  sub_10007A068(v12 + 40);
  _Unwind_Resume(a1);
}

void sub_1004E5554()
{
  v7 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "GATT");
  sub_100007E30(__p, "DUMMY_DIS");
  v1 = (*(*v0 + 72))(v0, buf, __p, &v7);
  v2 = v7;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = v1 & v2;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  v4 = qword_100BCE910;
  v5 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Creating Dumy DIS entry, with dummy data", buf, 2u);
    }

    operator new();
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating real DIS entry", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  v11 = 0;
  v6 = sub_10000C798();
  (**v6)(v6, buf);
  operator new();
}

void sub_1004E6B50(void *a1, uint64_t a2)
{
  v5 = a1[18];
  v4 = a1[19];
  if (v5 >= v4)
  {
    v7 = a1[17];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_1000C7698();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      sub_100008108((a1 + 17), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[17];
    v14 = a1[18] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[17];
    a1[17] = v15;
    a1[18] = v6;
    a1[19] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[18] = v6;
}

void sub_1004E6C1C(uint64_t a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_100839C78();
  }

  sub_100580E68(qword_100B50F70, a1);
  if (qword_100B508C0 != -1)
  {
    sub_100839C8C();
  }

  sub_1007BF384(off_100B508B8, a1 + 8);
  if (qword_100B50AA0 != -1)
  {
    sub_100839CA0();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 16);
  operator new();
}

_BYTE *sub_1004E73FC(uint64_t a1)
{
  v34 = 0;
  sub_1000216B4(&v34);
  if (sub_1002D359C())
  {
    if (sub_1002D9264())
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100839CE8();
      }
    }

    else
    {
      *__p = *&off_100AFA528;
      v31 = *&off_100AFA538;
      v32 = *&off_100AFA548;
      v33 = sub_1004E7F50;
      sub_1002B926C(__p);
      sub_100022214(&v34);
      v29[0] = 0;
      v29[1] = 0;
      sub_100007F88(v29, a1 + 40);
      __p[0] = 0;
      __p[1] = 0;
      *&v31 = 0;
      sub_100007F20(__p, (a1 + 360));
      *(a1 + 368) = *(a1 + 360);
      *(a1 + 32) = 1;
      v2 = __p[0];
      if (__p[0] != __p[1])
      {
        v3 = 0;
        v4 = 0;
        while (1)
        {
          v5 = *v2;
          if (sub_1004E7FE0(a1, *v2, 0))
          {
            if (v5 == *(a1 + 112) || v5 == *(a1 + 128))
            {
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
              {
                sub_100839D1C();
              }

              *(a1 + 32) = 0;
              goto LABEL_68;
            }

            v6 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              sub_1006E3698(v5, &src);
              v7 = (src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &src : src.__r_.__value_.__r.__words[0];
              LODWORD(buf) = 136446210;
              *(&buf + 4) = v7;
              _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to publish service %{public}s!", &buf, 0xCu);
              if (SHIBYTE(src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(src.__r_.__value_.__l.__data_);
              }
            }
          }

          else if (v2 == __p[0])
          {
            v3 = **(v5 + 8);
          }

          else
          {
            v4 = *(v5 + 48);
          }

          if (++v2 == __p[1])
          {
            goto LABEL_22;
          }
        }
      }

      v4 = 0;
      v3 = 0;
LABEL_22:
      v28 = 0;
      v8 = sub_10000E92C();
      if ((*(*v8 + 8))(v8))
      {
        v9 = sub_10000E92C();
        sub_100007E30(&src, "CATT");
        sub_100007E30(&buf, "DisableSdp");
        (*(*v9 + 72))(v9, &src, &buf, &v28);
        if (v42 < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(src.__r_.__value_.__l.__data_);
        }
      }

      if ((v28 & 1) == 0)
      {
        sub_1000618AC(&v34);
        sub_1001BCEBC(v3, v4);
        sub_100022214(&v34);
      }

      if (*(*(a1 + 128) + 48) <= *(*(a1 + 112) + 48) && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        sub_100839DA8();
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      if (qword_100B508C0 != -1)
      {
        sub_100839DE4();
      }

      v10 = sub_10009DA04(off_100B508B8);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v39 count:16];
      if (v11)
      {
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v24 + 1) + 8 * v13);
            if (qword_100B508D0 != -1)
            {
              sub_100839E0C();
            }

            if (sub_100787304(off_100B508C8, v14))
            {
              memset(&src, 0, 20);
              sub_10004DFB4(&src, v14);
              LOWORD(src.__r_.__value_.__r.__words[2]) = *(*(a1 + 128) + 48) + 1;
              WORD1(src.__r_.__value_.__r.__words[2]) = -1;
              sub_1004E8F80((a1 + 336), &src);
              v15 = qword_100BCE910;
              if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v14;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Queueing services changed notification for LE device %{public}@", &buf, 0xCu);
              }
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v24 objects:v39 count:16];
        }

        while (v11);
      }

      memset(&src, 0, sizeof(src));
      if (qword_100B50F88 != -1)
      {
        sub_100839E34();
      }

      sub_10009DB3C(off_100B50F80, &src.__r_.__value_.__l.__data_);
      size = src.__r_.__value_.__l.__size_;
      for (i = src.__r_.__value_.__r.__words[0]; i != size; ++i)
      {
        v18 = *i;
        if (sub_1005399A0(*i))
        {
          *uu = 0;
          v38 = 0;
          if (qword_100B508D0 != -1)
          {
            sub_100839E0C();
          }

          sub_1000498D4(off_100B508C8, (v18[128] << 40) | (v18[129] << 32) | (v18[130] << 24) | (v18[131] << 16) | (v18[132] << 8) | v18[133], 1u, 0, 0, 0, uu);
          if (uuid_is_null(uu))
          {
            v19 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
            {
              sub_1000E5A58(v18, &buf);
              v22 = v42 >= 0 ? &buf : buf;
              *v35 = 136446210;
              v36 = v22;
              _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Failed to start tracking tracking a UUID for device %{public}s", v35, 0xCu);
              if (v42 < 0)
              {
                operator delete(buf);
              }
            }
          }

          buf = 0uLL;
          v41 = 0;
          uuid_copy(&buf, uu);
          LOWORD(v41) = *(*(a1 + 128) + 48) + 1;
          HIWORD(v41) = -1;
          sub_1004E8F80((a1 + 336), &buf);
          v20 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_10004DF60(uu);
            *v35 = 138543362;
            v36 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Queueing services changed notification for Classic device %{public}@", v35, 0xCu);
          }
        }
      }

      sub_1004E8FF0(a1);
      if (src.__r_.__value_.__r.__words[0])
      {
        src.__r_.__value_.__l.__size_ = src.__r_.__value_.__r.__words[0];
        operator delete(src.__r_.__value_.__l.__data_);
      }

LABEL_68:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      sub_1000088CC(v29);
    }
  }

  return sub_10002249C(&v34);
}

void sub_1004E7B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 137) < 0)
  {
    operator delete(*(v35 - 160));
  }

  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  sub_1000088CC(&a23);
  sub_10002249C(&a35);
  _Unwind_Resume(a1);
}

BOOL sub_1004E7BD4(__n128 *a1)
{
  v4 = 0uLL;
  v5 = 0;
  v2 = *a1;
  v3 = a1[1].n128_u32[0];
  sub_10000D03C(&v4, &v2);
  v2 = xmmword_1008A4A80;
  v3 = 0;
  if (sub_10004E15C(&v4, &v2))
  {
    return 1;
  }

  v2 = xmmword_1008A4A94;
  v3 = 0;
  return sub_10004E15C(&v4, &v2);
}

uint64_t sub_1004E7FE0(uint64_t a1, uint64_t a2, int a3)
{
  v82 = 0;
  v83 = a2;
  v80 = 0;
  v81 = 0;
  sub_100007F20(&v80, (a2 + 104));
  __p = 0;
  v78 = 0;
  v79 = 0;
  sub_100007F20(&__p, (a2 + 136));
  v6 = (v81 - v80) >> 3;
  for (i = __p; i != v78; i += 8)
  {
    sub_100007F20(&buf, (*i + 104));
    v8 = buf;
    if (buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    v6 += ((v8.n128_u64[1] - v8.n128_u64[0]) >> 3) + 2;
  }

  v76[0] = 0;
  v76[1] = 0;
  sub_100007F88(v76, a1 + 40);
  v75 = 0;
  v9 = sub_10000E92C();
  sub_100007E30(&buf, "GATT");
  sub_100007E30(&v92, "DUMMY_DIS");
  if ((*(*v9 + 72))(v9, &buf, &v92, &v75) && (v75 & 1) == 0)
  {
    v98 = *(v83 + 72);
    v99 = *(v83 + 88);
    sub_10000D03C(&v91, &v98);
    v98 = xmmword_1008A4BC0;
    v99 = 0;
    v11 = sub_10004E15C(v10, &v98);
    if (v94 < 0)
    {
      operator delete(v92);
    }

    if (v97 < 0)
    {
      operator delete(buf);
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else if (!v11)
    {
      goto LABEL_20;
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100839E5C();
    }

    v12 = 905;
    goto LABEL_36;
  }

  if (v94 < 0)
  {
    operator delete(v92);
  }

  if (v97 < 0)
  {
    operator delete(buf);
  }

LABEL_20:
  if ((*(a1 + 32) & 1) == 0)
  {
    v16 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "publish";
      if (a3)
      {
        v17 = "republish";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stack not started during attempt to %{public}s LE service", &buf, 0xCu);
    }

    if (a3)
    {
      v12 = 111;
    }

    else
    {
      sub_1000C2484(a1 + 360, &v83);
      v12 = 0;
    }

LABEL_36:
    sub_1000088CC(v76);
    goto LABEL_37;
  }

  v74 = 0;
  sub_1000216B4(&v74);
  v13 = *(v83 + 8);
  v14 = *(v83 + 96);
  buf = *(v83 + 72);
  v96 = *(v83 + 88);
  sub_10000D03C(&v92, &buf);
  buf = v92;
  v96 = v93;
  if (sub_1002D92E0(v13, v14, &buf, v6))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100839E90();
    }

    v15 = 0;
    goto LABEL_25;
  }

  for (j = v80; j != v81; j += 8)
  {
    v20 = sub_1004E98F0(a1, *(*j + 104));
    if (!v20)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100839F70();
      }

      v12 = 904;
      goto LABEL_122;
    }

    if (sub_1002D9470(*(*j + 8), **(v83 + 8), *(v20 + 8)))
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100839F00();
      }

      v12 = 1;
LABEL_122:
      sub_1002D945C(*(v83 + 8));
      v15 = 0;
      goto LABEL_26;
    }

    if (*(*j + 72) == **(v20 + 8))
    {
      *(*j + 96) = v20;
    }
  }

  v21 = __p;
  if (__p == v78)
  {
    v15 = 0;
LABEL_113:
    sub_100022214(&v74);
    if ((a3 & 1) == 0)
    {
      sub_1000C2484(a1 + 360, &v83);
    }

    sub_1004E9DB8(a1, 0, **(v83 + 8), *(*(v83 + 8) + 24));
    sub_10002249C(&v74);
    v12 = 0;
    goto LABEL_27;
  }

  v15 = 0;
  v71 = a3;
  while (1)
  {
    v22 = *v21;
    v23 = *(*v21 + 96);
    sub_100007F20(&buf, (*v21 + 104));
    v72 = v21;
    if (v15)
    {
      operator delete(v15);
    }

    v24 = *(&buf + 1);
    v15 = buf;
    buf = *(v22 + 76);
    v96 = *(v22 + 92);
    sub_10000D03C(&v92, &buf);
    buf = xmmword_1008A4A80;
    v96 = 0;
    if (sub_10004E15C(v25, &buf) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v98, &buf), buf = xmmword_1008A4A94, v96 = 0, sub_10004E15C(v26, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v91, &buf), buf = xmmword_1008A4AA8, v96 = 0, sub_10004E15C(v27, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v90, &buf), buf = xmmword_1008A4ABC, v96 = 0, sub_10004E15C(&v90, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v89, &buf), buf = xmmword_1008A4AD0, v96 = 0, sub_10004E15C(&v89, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v88, &buf), buf = xmmword_1008A4AE4, v96 = 0, sub_10004E15C(&v88, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v87, &buf), buf = xmmword_1008A4AF8, v96 = 0, sub_10004E15C(&v87, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v86, &buf), buf = xmmword_1008A4B0C, v96 = 0, sub_10004E15C(&v86, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v85, &buf), buf = xmmword_1008A4B20, v96 = 0, sub_10004E15C(&v85, &buf)) || (buf = *(v22 + 76), v96 = *(v22 + 92), sub_10000D03C(&v84, &buf), buf = xmmword_1008A4B34, v96 = 0, sub_10004E15C(&v84, &buf)))
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        buf = *(v22 + 76);
        v96 = *(v22 + 92);
        sub_10000D03C(&v92, &buf);
        sub_10003B85C(v70, &buf);
        sub_10083A248();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 905;
      goto LABEL_26;
    }

    if (!sub_10000D26C(v23 + 72))
    {
      if (*(v22 + 72) != 2)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_100839FA4();
        }

        sub_1002D945C(*(v83 + 8));
        v12 = 910;
        goto LABEL_26;
      }

      if ((*(*(v23 + 8) + 26) & 0x2A) != 0)
      {
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_100839FD8();
        }

        sub_1002D945C(*(v83 + 8));
        v12 = 911;
        goto LABEL_26;
      }
    }

    if (v15 == v24)
    {
      v37 = *(v22 + 72);
      if (v37 < 0)
      {
LABEL_85:
        v38 = v15;
        goto LABEL_86;
      }

      if ((*(v22 + 72) & 1) == 0)
      {
        if ((*(v22 + 72) & 0x30) == 0)
        {
          goto LABEL_103;
        }

LABEL_101:
        v46 = v15;
        goto LABEL_102;
      }

LABEL_93:
      v42 = v15;
      goto LABEL_94;
    }

    v28 = 0;
    v29 = 0;
    v30 = v15;
    do
    {
      v31 = *(*v30 + 8);
      v32 = *(v31 + 20);
      buf = *(v31 + 4);
      v96 = v32;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4AE4;
      v96 = 0;
      if (sub_10004E15C(v33, &buf))
      {
        if (!v28)
        {
          v28 = *v30;
          goto LABEL_74;
        }

        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_10083A040();
        }

LABEL_133:
        sub_1002D945C(*(v83 + 8));
        v12 = 906;
        goto LABEL_26;
      }

      v34 = *(*v30 + 8);
      v35 = *(v34 + 20);
      buf = *(v34 + 4);
      v96 = v35;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4B20;
      v96 = 0;
      if (sub_10004E15C(v36, &buf))
      {
        if (v29)
        {
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
          {
            sub_10083A00C();
          }

          goto LABEL_133;
        }

        v29 = *v30;
      }

LABEL_74:
      v30 += 8;
    }

    while (v30 != v24);
    v37 = *(v22 + 72);
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    if (v15 == v24)
    {
      goto LABEL_85;
    }

    v38 = v15;
    while (1)
    {
      v39 = *(*v38 + 8);
      v40 = *(v39 + 20);
      buf = *(v39 + 4);
      v96 = v40;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4AD0;
      v96 = 0;
      if (sub_10004E15C(v41, &buf))
      {
        break;
      }

      v38 += 8;
      if (v38 == v24)
      {
        v38 = v24;
        break;
      }
    }

LABEL_86:
    if (v38 == v24)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A074();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 907;
      goto LABEL_26;
    }

LABEL_87:
    if ((v37 & 1) == 0)
    {
      goto LABEL_95;
    }

    if (v15 == v24)
    {
      goto LABEL_93;
    }

    v42 = v15;
    while (1)
    {
      v43 = *(*v42 + 8);
      v44 = *(v43 + 20);
      buf = *(v43 + 4);
      v96 = v44;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4B0C;
      v96 = 0;
      if (sub_10004E15C(v45, &buf))
      {
        break;
      }

      v42 += 8;
      if (v42 == v24)
      {
        v42 = v24;
        break;
      }
    }

LABEL_94:
    if (v42 == v24)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A0A8();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 908;
      goto LABEL_26;
    }

LABEL_95:
    if ((v37 & 0x30) == 0)
    {
      goto LABEL_103;
    }

    if (v15 == v24)
    {
      goto LABEL_101;
    }

    v46 = v15;
    while (1)
    {
      v47 = *(*v46 + 8);
      v48 = *(v47 + 20);
      buf = *(v47 + 4);
      v96 = v48;
      sub_10000D03C(&v92, &buf);
      buf = xmmword_1008A4AF8;
      v96 = 0;
      if (sub_10004E15C(v49, &buf))
      {
        break;
      }

      v46 += 8;
      if (v46 == v24)
      {
        v46 = v24;
        break;
      }
    }

LABEL_102:
    if (v46 == v24)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A0DC();
      }

      sub_1002D945C(*(v83 + 8));
      v12 = 909;
      goto LABEL_26;
    }

LABEL_103:
    v73 = v15;
    v50 = **(v83 + 8);
    v51 = *(v22 + 8);
    v52 = *(v22 + 72);
    v53 = *(*(v22 + 96) + 8);
    buf = *(v22 + 76);
    v96 = *(v22 + 92);
    sub_10000D03C(&v92, &buf);
    buf = v92;
    v96 = v93;
    if (sub_1002D95A0(v50, v51, v52, (((v24 - v73) >> 3) + 1), v53, &buf, sub_1004E9960, sub_1004E9A18))
    {
      v15 = v73;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_10083A168();
      }

      goto LABEL_128;
    }

    v54 = v73;
    if (v73 != v24)
    {
      break;
    }

LABEL_110:
    v15 = v73;
    v21 = v72 + 8;
    LOBYTE(a3) = v71;
    if (v72 + 8 == v78)
    {
      goto LABEL_113;
    }
  }

  while (1)
  {
    v55 = *v54;
    v56 = *(*v54 + 8);
    v57 = *(v56 + 20);
    buf = *(v56 + 4);
    v96 = v57;
    sub_10000D03C(&v92, &buf);
    buf = xmmword_1008A4AF8;
    v96 = 0;
    if (sub_10004E15C(v58, &buf) || (v59 = *(v55 + 8), v60 = *(v59 + 20), buf = *(v59 + 4), v96 = v60, sub_10000D03C(&v98, &buf), buf = xmmword_1008A4B0C, v96 = 0, v62 = sub_10004E15C(v61, &buf), v63 = sub_1004E9A18, v64 = sub_1004E9960, v62))
    {
      v63 = sub_1004E9C44;
      v64 = sub_1004E9B8C;
    }

    v65 = v64;
    v66 = *(v55 + 8);
    v67 = **(v22 + 8);
    v68 = *(v66 + 26);
    v69 = *(v66 + 4);
    v96 = *(v66 + 20);
    buf = v69;
    sub_10000D03C(&v92, &buf);
    buf = v92;
    v96 = v93;
    if (sub_1002D9808(v66, v67, v68, &buf, v65, v63))
    {
      break;
    }

    v54 += 8;
    if (v54 == v24)
    {
      goto LABEL_110;
    }
  }

  v15 = v73;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10083A1D8();
  }

LABEL_128:
  sub_1002D945C(*(v83 + 8));
LABEL_25:
  v12 = 1;
LABEL_26:
  sub_10002249C(&v74);
LABEL_27:
  sub_1000088CC(v76);
  if (v15)
  {
    operator delete(v15);
  }

LABEL_37:
  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  return v12;
}

void sub_1004E8E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  sub_10002249C(&a14);
  sub_1000088CC(&a16);
  if (v22)
  {
    operator delete(v22);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004E8F80(uint64_t *a1, unsigned __int8 *src)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_1004F2A38(a1, src);
  }

  else
  {
    uuid_copy(a1[1], src);
    *(v4 + 16) = *(src + 4);
    result = v4 + 20;
    a1[1] = v4 + 20;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1004E8FF0(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 40);
  v1 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Local database:", &buf, 2u);
  }

  for (i = *(a1 + 360); i != *(a1 + 368); ++i)
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1006E3698(*i, &buf);
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v25.__r_.__value_.__l.__data_) = 136446210;
      *(v25.__r_.__value_.__r.__words + 4) = p_buf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v25, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    memset(&buf, 0, sizeof(buf));
    sub_100007F20(&buf, *i + 13);
    size = buf.__r_.__value_.__l.__size_;
    for (j = buf.__r_.__value_.__r.__words[0]; j != size; ++j)
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        sub_1006E3698(*j, &v25);
        v8 = &v25;
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v8 = v25.__r_.__value_.__r.__words[0];
        }

        LODWORD(v24.__r_.__value_.__l.__data_) = 136446210;
        *(v24.__r_.__value_.__r.__words + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v24, 0xCu);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        size = buf.__r_.__value_.__l.__size_;
      }
    }

    memset(&v25, 0, sizeof(v25));
    sub_100007F20(&v25, *i + 17);
    v9 = v25.__r_.__value_.__r.__words[0];
    if (v25.__r_.__value_.__r.__words[0] != v25.__r_.__value_.__l.__size_)
    {
      do
      {
        v10 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          sub_1006E3698(*v9, &v24);
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = &v24;
          }

          else
          {
            v11 = v24.__r_.__value_.__r.__words[0];
          }

          LODWORD(v21.__r_.__value_.__l.__data_) = 136446210;
          *(v21.__r_.__value_.__r.__words + 4) = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v21, 0xCu);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          v10 = qword_100BCE910;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_1006E3698((*v9)[12], &v24);
          v12 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
          LODWORD(v21.__r_.__value_.__l.__data_) = 136446210;
          *(v21.__r_.__value_.__r.__words + 4) = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", &v21, 0xCu);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }

        memset(&v24, 0, sizeof(v24));
        sub_100007F20(&v24, *v9 + 13);
        v13 = v24.__r_.__value_.__l.__size_;
        v14 = v24.__r_.__value_.__r.__words[0];
        if (v24.__r_.__value_.__r.__words[0] != v24.__r_.__value_.__l.__size_)
        {
          do
          {
            v15 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
            {
              sub_1006E3698(*v14, &v21);
              if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v21;
              }

              else
              {
                v16 = v21.__r_.__value_.__r.__words[0];
              }

              *v22 = 136446210;
              v23 = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", v22, 0xCu);
              if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v21.__r_.__value_.__l.__data_);
              }

              v13 = v24.__r_.__value_.__l.__size_;
            }

            ++v14;
          }

          while (v14 != v13);
          v14 = v24.__r_.__value_.__r.__words[0];
        }

        if (v14)
        {
          v24.__r_.__value_.__l.__size_ = v14;
          operator delete(v14);
        }

        ++v9;
      }

      while (v9 != v25.__r_.__value_.__l.__size_);
      v9 = v25.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      v25.__r_.__value_.__l.__size_ = v9;
      operator delete(v9);
    }

    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  return sub_1000088CC(v20);
}

_BYTE *sub_1004E947C(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GattServer::stackWillStop enter", buf, 2u);
  }

  v22 = 0;
  sub_1000216B4(&v22);
  if (sub_1002D359C())
  {
    sub_1002D92DC();
    sub_100022214(&v22);
    *buf = 0;
    v21 = 0;
    sub_100007F88(buf, a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 344) = *(a1 + 336);
    sub_10000CEDC(a1 + 384, *(a1 + 392));
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = a1 + 392;
    sub_10008E0A0(a1 + 408, *(a1 + 416));
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 408) = a1 + 416;
    v3 = *(a1 + 464);
    v4 = *(a1 + 440);
    v5 = *(a1 + 448);
    v6 = &v4[v3 >> 8];
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v6 + 16 * v3;
    }

    while (1)
    {
      v8 = v5 - v4;
      if (v8)
      {
        v9 = *(a1 + 472) + *(a1 + 464);
        v10 = *(v4 + ((v9 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v9;
      }

      else
      {
        v10 = 0;
      }

      if (v7 == v10)
      {
        break;
      }

      v11 = *(v7 + 8);
      if (v11)
      {
        *(v11 + 24) = &off_100AE0A78;
        v12 = *(v11 + 32);
        if (v12)
        {
          sub_10000C808(v12);
        }

        operator delete();
      }

      v7 += 16;
      if (v7 - *v6 == 4096)
      {
        v13 = v6[1];
        ++v6;
        v7 = v13;
      }

      v4 = *(a1 + 440);
      v5 = *(a1 + 448);
    }

    *(a1 + 472) = 0;
    v14 = v8 >> 3;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v4);
        v15 = *(a1 + 448);
        v4 = (*(a1 + 440) + 8);
        *(a1 + 440) = v4;
        v14 = (v15 - v4) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 128;
    }

    else
    {
      if (v14 != 2)
      {
LABEL_25:
        *(a1 + 480) = 0;
        [*(a1 + 488) removeAllObjects];
        [*(a1 + 496) removeAllObjects];
        [*(a1 + 504) removeAllObjects];
        sub_1004F2784(a1 + 512, *(a1 + 520));
        *(a1 + 512) = a1 + 520;
        *(a1 + 520) = 0u;
        sub_10000CEDC(a1 + 536, *(a1 + 544));
        *(a1 + 536) = a1 + 544;
        *(a1 + 544) = 0u;
        v17 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "GattServer::stackWillStop exit", v19, 2u);
        }

        sub_1000088CC(buf);
        return sub_10002249C(&v22);
      }

      v16 = 256;
    }

    *(a1 + 464) = v16;
    goto LABEL_25;
  }

  return sub_10002249C(&v22);
}

uint64_t sub_1004E9758(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 40);
  *(a1 + 104) = a2;
  return sub_1000088CC(v5);
}

void sub_1004E97A0(uint64_t a1, __int128 *a2)
{
  __dst = 0uLL;
  v8 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v8 = *(a2 + 2);
  }

  v3 = sub_100007EE8();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1004E98D4;
  v4[3] = &unk_100AF6BE0;
  v4[4] = a1;
  if (SHIBYTE(v8) < 0)
  {
    sub_100008904(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v6 = v8;
  }

  sub_10000CA94(v3, v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst);
  }
}

void sub_1004E98A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 25) < 0)
  {
    operator delete(*(v19 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004E98F0(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 40);
  v4 = *(a1 + 360);
  v5 = *(a1 + 368);
  while (v4 != v5)
  {
    v6 = *v4;
    if (*(*v4 + 16) == a2)
    {
      goto LABEL_6;
    }

    ++v4;
  }

  v6 = 0;
LABEL_6:
  sub_1000088CC(v8);
  return v6;
}

void sub_1004E9DB8(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = a2;
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 40);
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  while (v8 != v9)
  {
    memset(dst, 0, sizeof(dst));
    v25 = 0;
    uuid_copy(dst, v8);
    v10 = *(v8 + 16);
    v25 = v10;
    if (v7)
    {
      v11 = sub_10004DF60(dst);
      v12 = [v7 isEqual:v11];

      if (!v12)
      {
        goto LABEL_20;
      }

      LOWORD(v10) = v25;
      v13 = HIWORD(v25);
    }

    else
    {
      v13 = HIWORD(v10);
    }

    v14 = v10;
    if (v10 >= a3)
    {
      v14 = a3;
    }

    if (v10)
    {
      v15 = v14;
    }

    else
    {
      v15 = a3;
    }

    LOWORD(v25) = v15;
    if (v13 <= a4)
    {
      v16 = a4;
    }

    else
    {
      v16 = v13;
    }

    HIWORD(v25) = v16;
    if (*(a1 + 32) == 1)
    {
      if (qword_100B50F78 != -1)
      {
        sub_10083A29C();
      }

      v17 = qword_100B50F70;
      v18 = sub_10004DF60(dst);
      LODWORD(v17) = sub_100052A90(v17, v18);

      if (v17)
      {
        *__p = 0u;
        v21 = 0u;
        sub_10057C6A8(__p, 0);
        sub_10057C70C(__p, a3);
        sub_10057C70C(__p, a4);
        v19 = sub_10004DF60(dst);
        v23 = v19;
        [NSArray arrayWithObjects:&v23 count:1];
        objc_claimAutoreleasedReturnValue();

        operator new();
      }
    }

LABEL_20:
    v8 += 20;
  }

  sub_1000088CC(v22);
}

uint64_t sub_1004EA110(uint64_t a1, int *a2)
{
  v56[0] = 0;
  v56[1] = 0;
  sub_100007F88(v56, a1 + 40);
  v3 = sub_1004E98F0(a1, *a2);
  if (v3)
  {
    for (i = *(a1 + 360); i != *(a1 + 368); i += 8)
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v54 = 0;
      sub_100007F20(__p, (*i + 104));
      v5 = __p[0];
      v6 = __p[0];
      if (__p[0] != __p[1])
      {
        while (*(*v6 + 96) != v3)
        {
          v6 += 8;
          if (v6 == __p[1])
          {
            goto LABEL_7;
          }
        }

        v8 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
        {
          sub_1006E3698(v3, &v55);
          if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v51 = &v55;
          }

          else
          {
            v51 = v55.__r_.__value_.__r.__words[0];
          }

          *buf = 136446210;
          *&buf[4] = v51;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to unpublish service (%{public}s) as it is included by another service!", buf, 0xCu);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          v5 = __p[0];
          if (__p[0])
          {
LABEL_15:
            __p[1] = v5;
            operator delete(v5);
          }
        }

        else if (v5)
        {
          goto LABEL_15;
        }

        v7 = 904;
        goto LABEL_106;
      }

LABEL_7:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    v9 = *(a1 + 384);
    if (v9 != (a1 + 392))
    {
      do
      {
        __p[0] = 0;
        if (sub_1004EA89C(a1, *(v9 + 10), __p))
        {
          v10 = __p[0] == v3;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          if (*(a1 + 32) == 1)
          {
            v55.__r_.__value_.__s.__data_[0] = 0;
            sub_1000216B4(&v55);
            v13 = v9[6];
            v14 = *(v9 + 8);
            if (*(v9 + 44) == 1)
            {
              v13(v14, 242, 0);
            }

            else
            {
              (v13)(v14, 242, 0, 0);
            }

            sub_10002249C(&v55);
          }

          v15 = v9[1];
          v16 = v9;
          if (v15)
          {
            do
            {
              v12 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v12 = v16[2];
              v10 = *v12 == v16;
              v16 = v12;
            }

            while (!v10);
          }

          sub_10002717C((a1 + 384), v9);
          operator delete(v9);
        }

        else
        {
          v11 = v9[1];
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
              v12 = v9[2];
              v10 = *v12 == v9;
              v9 = v12;
            }

            while (!v10);
          }
        }

        v9 = v12;
      }

      while (v12 != (a1 + 392));
    }

    v17 = *(a1 + 512);
    if (v17 != (a1 + 520))
    {
      do
      {
        v18 = v17[5];
        if (v18 != v17[6])
        {
          *__p = 0u;
          v54 = 0u;
          v19 = *v18;
          WORD2(__p[0]) = *(v18 + 2);
          LODWORD(__p[0]) = v19;
          v20 = *(v18 + 2);
          __p[1] = &off_100AE0A78;
          *&v54 = v20;
          if (v20)
          {
            sub_10000C69C(v20);
          }

          BYTE8(v54) = *(v18 + 24);
          v55.__r_.__value_.__r.__words[0] = 0;
          if (sub_1004EA89C(a1, __p[0], &v55) && v55.__r_.__value_.__r.__words[0] == v3)
          {
            sub_1004F2D24((a1 + 512), v17);
            __p[1] = &off_100AE0A78;
            if (v54)
            {
              sub_10000C808(v54);
            }

            break;
          }

          __p[1] = &off_100AE0A78;
          if (v54)
          {
            sub_10000C808(v54);
          }
        }

        v21 = v17[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = v17[2];
            v10 = *v22 == v17;
            v17 = v22;
          }

          while (!v10);
        }

        v17 = v22;
      }

      while (v22 != (a1 + 520));
    }

    sub_1004E9DB8(a1, 0, **(v3 + 8), *(*(v3 + 8) + 24));
    if (*(a1 + 32) == 1)
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1002D945C(*(v3 + 8));
      sub_10002249C(__p);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v54 = 0;
    sub_100007F20(__p, (v3 + 136));
    v23 = __p[0];
    if (__p[0] != __p[1])
    {
      v24 = (a1 + 416);
      do
      {
        v25 = *v23;
        memset(&v55, 0, sizeof(v55));
        sub_100007F20(&v55, (v25 + 104));
        v26 = v55.__r_.__value_.__r.__words[0];
        if (v55.__r_.__value_.__r.__words[0] != v55.__r_.__value_.__l.__size_)
        {
          do
          {
            v27 = *(*v26 + 8);
            v28 = *(v27 + 20);
            *buf = *(v27 + 4);
            v59 = v28;
            sub_10000D03C(&v57, buf);
            *buf = xmmword_1008A4AF8;
            v59 = 0;
            if (sub_10004E15C(&v57, buf))
            {
              v29 = *v24;
              if (*v24)
              {
                v30 = *v26;
                v31 = (a1 + 416);
                do
                {
                  v32 = v29[4];
                  v33 = v32 >= v30;
                  v34 = v32 < v30;
                  if (v33)
                  {
                    v31 = v29;
                  }

                  v29 = v29[v34];
                }

                while (v29);
                if (v31 != v24 && v30 >= v31[4])
                {
                  sub_1004F2D70((a1 + 408), v31);
                  v35 = *(a1 + 464);
                  v36 = *(a1 + 440);
                  v37 = *(a1 + 448);
                  v38 = (v36 + 8 * (v35 >> 8));
                  if (v37 == v36)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = *v38 + 16 * v35;
                  }

                  v40 = (v36 + 8 * (v35 >> 8));
LABEL_75:
                  v41 = v39;
                  while (1)
                  {
                    v42 = v37 == v36 ? 0 : *(v36 + (((*(a1 + 472) + v35) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 472) + v35);
                    if (v41 == v42)
                    {
                      break;
                    }

                    v43 = *(v41 + 8);
                    if (v30 == *(v43 + 16))
                    {
                      if (v37 == v36)
                      {
                        v45 = 0;
                      }

                      else
                      {
                        v45 = *v38 + 16 * v35;
                      }

                      if (v41 != v45)
                      {
                        *(v43 + 24) = &off_100AE0A78;
                        v46 = *(v43 + 32);
                        if (v46)
                        {
                          sub_10000C808(v46);
                        }

                        operator delete();
                      }

                      break;
                    }

                    v41 += 16;
                    v39 += 16;
                    if (*v40 + 4096 == v39)
                    {
                      v44 = v40[1];
                      ++v40;
                      v39 = v44;
                      goto LABEL_75;
                    }
                  }
                }
              }
            }

            v26 += 8;
          }

          while (v26 != v55.__r_.__value_.__l.__size_);
          v26 = v55.__r_.__value_.__r.__words[0];
        }

        if (v26)
        {
          v55.__r_.__value_.__l.__size_ = v26;
          operator delete(v26);
        }

        ++v23;
      }

      while (v23 != __p[1]);
    }

    v48 = *(a1 + 360);
    v47 = *(a1 + 368);
    if (v48 != v47)
    {
      v49 = v47 - v48 - 8;
      while (*(*v48 + 16) != *a2)
      {
        v48 += 8;
        v49 -= 8;
        if (v48 == v47)
        {
          goto LABEL_103;
        }
      }

      if (v48 + 8 != v47)
      {
        memmove(v48, (v48 + 8), v49);
      }

      *(a1 + 368) = v48 + v49;
    }

LABEL_103:
    (*(*v3 + 8))(v3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10083A2C4();
    }

    v7 = 1010;
  }

LABEL_106:
  sub_1000088CC(v56);
  return v7;
}