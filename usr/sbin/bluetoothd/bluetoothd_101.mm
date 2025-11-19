void sub_10074E910(int a1, uint64_t a2, char a3)
{
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10076C79C;
  v7[3] = &unk_100AF2A50;
  v8 = a1;
  v7[4] = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

BOOL sub_10074E9A4(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 440 != sub_10004E34C(a1 + 432, a2);
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10074EA18(uint64_t a1, const unsigned __int8 *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s requires low latency", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 824);
  v7 = sub_10004DF60(a2);
  [v6 addObject:v7];

  return sub_1000088CC(v11);
}

void sub_10074EB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10074EB78(uint64_t a1, const unsigned __int8 *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not require low latency", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(a1 + 824);
  v7 = sub_10004DF60(a2);
  [v6 removeObject:v7];

  return sub_1000088CC(v11);
}

void sub_10074ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

id sub_10074ECD8(uint64_t a1, const unsigned __int8 *a2)
{
  v2 = *(a1 + 824);
  v3 = sub_10004DF60(a2);
  v4 = [v2 containsObject:v3];

  return v4;
}

BOOL sub_10074ED30(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = a1 + 648 != sub_10004E34C(a1 + 640, a2);
  sub_1000088CC(v6);
  return v4;
}

BOOL sub_10074EDA4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v6 = *(sub_10004E34C(a1 + 640, a3) + 48) == a2;
  sub_1000088CC(v8);
  return v6;
}

BOOL sub_10074EE24(uint64_t a1, const unsigned __int8 *a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 120);
  v4 = *(a1 + 688);
  uuid_copy(dst, a2);
  v5 = (a1 + 696);
  if (v4 != v5)
  {
    while (uuid_compare(v4 + 40, dst))
    {
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
      if (v7 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  sub_1000088CC(v10);
  return v4 != v5;
}

void sub_10074EF10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10074EF30(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v6 = *(sub_10004E34C(a1 + 664, a3) + 48) == a2;
  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_10074EFB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = 0;
  if (sub_1000C4FCC(a1, a2, &v6))
  {
    v5 = 0;
    sub_1000216B4(&v5);
    sub_1002C2CD0(v6, a3);
    sub_10002249C(&v5);
  }

  return 1;
}

uint64_t sub_10074F028(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = 0;
  if (sub_1000C4FCC(a1, a2, &v6))
  {
    v5 = 0;
    sub_1000216B4(&v5);
    sub_1002C3D98(v6, a3);
    sub_10002249C(&v5);
  }

  return 1;
}

uint64_t sub_10074F0B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 120);
  v10 = 0;
  sub_10004DFB4(v12, v5);
  if (sub_1000C4FCC(a1, v12, &v10))
  {
    v12[0] = 0;
    sub_1000216B4(v12);
    v6 = sub_100196A3C(v10, sub_10074F204, a2);
    sub_100022214(v12);
    if (v6 == 414)
    {
      v7 = 409;
    }

    else
    {
      v7 = v6 != 0;
    }

    if (v6 == 116)
    {
      v8 = 10;
    }

    else
    {
      v8 = v7;
    }

    sub_10002249C(v12);
  }

  else
  {
    v8 = 312;
  }

  sub_1000088CC(v11);

  return v8;
}

void sub_10074F1C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10074F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v10 = __ROR8__(a2, 32);
  v11 = __ROR8__(a3, 32);
  v12 = __ROR8__(a4, 32);
  v13 = __ROR8__(a5, 32);
  v14 = sub_100007EE8();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10076CEFC;
  v15[3] = &unk_100B0BA80;
  v15[4] = a1;
  v15[5] = v10;
  v15[6] = v11;
  v15[7] = v12;
  v16 = a6;
  v15[8] = v13;
  v15[9] = a7;
  sub_10000CA94(v14, v15);
}

uint64_t sub_10074F2BC(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v8 = 0;
  v7 = 0;
  if (sub_1000C4FCC(a1, a2, &v8))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    sub_1002D007C(v8, &v7);
    sub_10002249C(&v6);
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v9);
  return v4;
}

void sub_10074F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, uint64_t a12, char a13)
{
  sub_10002249C(&a11);
  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10074F374(uint64_t a1, unsigned __int8 *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v8 = 0;
  v7 = 12;
  if (sub_1000C4FCC(a1, a2, &v8))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    sub_1002D00E4(v8, &v7);
    sub_10002249C(&v6);
    v4 = v7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F69C();
    }

    v4 = 12;
  }

  sub_1000088CC(v9);
  return v4;
}

void sub_10074F430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, uint64_t a12, char a13)
{
  sub_10002249C(&a11);
  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10074F458(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v7 = 0;
  if (sub_1000C4FCC(a1, a2, &v7))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1002D026C(v7);
    sub_10002249C(&v6);
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v8);
  return v4;
}

void sub_10074F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, char a14)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_10074F508(uint64_t a1, unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v7 = 0;
  if (sub_1000C4FCC(a1, a2, &v7))
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v4 = sub_1002D02B4(v7);
    sub_10002249C(&v6);
  }

  else
  {
    v4 = 0;
  }

  sub_1000088CC(v8);
  return v4;
}

void sub_10074F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, char a14)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_10074F5B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(v1 + 328);
  if (v3 != 0.0)
  {
    v4 = Current;
    if (Current - v3 > 1200.0)
    {
      v5 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "NO";
        if (*(v1 + 184))
        {
          v7 = "YES";
        }

        else
        {
          v7 = "NO";
        }

        v8 = *(v1 + 352);
        v9 = *(v1 + 864);
        if (v9 > 4)
        {
          v10 = "UNKNOWN";
        }

        else
        {
          v10 = (&off_100B0BF80)[v9];
        }

        if (*(v1 + 1066))
        {
          v6 = "YES";
        }

        v11 = 134219266;
        v12 = v4;
        v13 = 2048;
        v14 = v3;
        v15 = 2082;
        v16 = v7;
        v17 = 2048;
        v18 = v8;
        v19 = 2082;
        v20 = v10;
        v21 = 2082;
        v22 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Last address changed over 20 minutes ago (now:%f lastTime:%f fStarted:%{public}s fConnectingDevices.size():%zu fConnectionState:%{public}s fWaitForAddressChangeToComplete:%{public}s), forcing address change", &v11, 0x3Eu);
      }

      LOBYTE(v11) = 0;
      sub_1000216B4(&v11);
      sub_1002D2248();
      sub_100022214(&v11);
      sub_10002249C(&v11);
    }
  }
}

uint64_t sub_10074F748(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F8FC();
    }

    v14 = v59;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v15 = *(a4 + 1);
    v60 = *a4;
    v59[2] = sub_10075004C;
    v59[3] = &unk_100B0B4E8;
    v59[4] = 0;
    v61 = v15;
    v13 = 22;
    v62 = *(a4 + 8);
    v63 = 22;
    sub_10074063C(a1, v59);
    goto LABEL_14;
  }

  sub_10004DFB4(buf, v9);
  if (a1 + 392 == sub_10004E34C(a1 + 384, buf))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F88C();
    }

    v14 = v54;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1007500C0;
    v54[3] = &unk_100B0B4E8;
    v54[4] = v9;
    v16 = *(a4 + 1);
    v55 = *a4;
    v56 = v16;
    v13 = 312;
    v57 = *(a4 + 8);
    v58 = 312;
    sub_10074063C(a1, v54);
LABEL_14:
    v17 = (v14 + 4);
LABEL_54:

    goto LABEL_55;
  }

  if (*a4 == 1)
  {
    sub_10004DFB4(buf, v9);
    if (sub_10074ED30(a1, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F818();
      }

      v11 = v49;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_100750134;
      v49[3] = &unk_100B0B4E8;
      v49[4] = v9;
      v12 = *(a4 + 1);
      v50 = *a4;
      v51 = v12;
      v13 = 1500;
      v52 = *(a4 + 8);
      v53 = 1500;
      sub_10074063C(a1, v49);
LABEL_42:
      v17 = (v11 + 4);
      goto LABEL_54;
    }
  }

  else
  {
    sub_10004DFB4(buf, v9);
    if (!sub_10074ED30(a1, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F6D8();
      }

      v11 = v44;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1007501A8;
      v44[3] = &unk_100B0B4E8;
      v44[4] = v9;
      v20 = *(a4 + 1);
      v45 = *a4;
      v46 = v20;
      v13 = 1501;
      v47 = *(a4 + 8);
      v48 = 1501;
      sub_10074063C(a1, v44);
      goto LABEL_42;
    }
  }

  if (*a4 != 1)
  {
    sub_10004DFB4(buf, v9);
    if (!sub_10074EDA4(a1, a2, buf))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F6D8();
      }

      v11 = v39;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10075021C;
      v39[3] = &unk_100B0B4E8;
      v39[4] = v9;
      v23 = *(a4 + 1);
      v40 = *a4;
      v41 = v23;
      v13 = 1502;
      v42 = *(a4 + 8);
      v43 = 1502;
      sub_10074063C(a1, v39);
      goto LABEL_42;
    }

    sub_10004DFB4(buf, v9);
    v21 = sub_10004E34C(a1 + 640, buf);
    if (a1 + 648 != v21)
    {
      sub_10077519C((a1 + 640), v21);
    }

LABEL_29:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100750290;
    block[3] = &unk_100ADF820;
    v22 = v9;
    v38 = v22;
    if (qword_100BC7AF8 != -1)
    {
      dispatch_once(&qword_100BC7AF8, block);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_100788D8C(off_100B508C8, v22) == dword_100BC7AF0 && byte_100BC7AF4 == 1)
    {
      a4[28] = byte_100BC7AF4;
    }

    *uu1 = 0;
    sub_10004DFB4(buf, v22);
    if (sub_1000C4FCC(a1, buf, uu1))
    {
      v13 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F774();
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1007504A0;
      v31[3] = &unk_100B0B4E8;
      v32 = v22;
      v24 = *(a4 + 1);
      v33 = *a4;
      v34 = v24;
      v35 = *(a4 + 8);
      v36 = 7;
      sub_10074063C(a1, v31);

      v13 = 7;
    }

    if (a4[30])
    {
      if (qword_100B51098 != -1)
      {
        sub_10086F7F0();
      }

      sub_100488EA0(qword_100B51090, v22, **uu1, a4[1], a4[3], a4[6], a4[29], 0);
      a4[28] |= 2u;
      v25 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v26 = a4[3];
        v27 = a4[6];
        *buf = 138543874;
        *&buf[4] = v22;
        *&buf[12] = 1024;
        *&buf[14] = v26;
        *&buf[18] = 1024;
        *&buf[20] = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "RSSI Detection Enabled AOP Path  %{public}@. RSSI Further=%d Closer=%d", buf, 0x18u);
      }
    }

    if ((a4[30] & 2) != 0)
    {
      *(a4 + 2) = 2139654280;
      *(a4 + 3) = 32639;
    }

    v28 = sub_10000C7D0();
    DWORD2(v30) = *(a4 + 6);
    *&v30 = *(a4 + 2);
    (*(*v28 + 2112))(v28, *a4, **uu1, a4[1], a4[2], a4[3], a4[4], a4[5], *(a4 + 6), a4[14], *(&v30 + 4), a4[28]);
    v17 = &v38;
    goto LABEL_54;
  }

  if (qword_100B50B88 != -1)
  {
    sub_10086F74C();
  }

  if (sub_100618524(qword_100B50B80, a2))
  {
    *buf = a2;
    sub_100614BB8(a2, &buf[8]);
    sub_10004DFB4(uu1, v9);
    v64 = uu1;
    v18 = sub_100774FF8(a1 + 640, uu1);
    v19 = v18;
    *(v18 + 48) = *buf;
    if (*(v18 + 79) < 0)
    {
      operator delete(*(v18 + 56));
    }

    *(v19 + 56) = *&buf[8];
    *(v19 + 72) = v67;
    goto LABEL_29;
  }

  v13 = 1503;
LABEL_55:

  return v13;
}

uint64_t sub_10075004C(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_1007500C0(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_100750134(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_1007501A8(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_10075021C(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

void sub_100750290(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableRSSIDetectionDebuggingUseCase");
  (*(*v2 + 88))(v2, buf, __p, &dword_100BC7AF0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  v3 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "EnableRSSIDetectionDebugging");
  (*(*v3 + 72))(v3, buf, __p, &byte_100BC7AF4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543874;
    *&buf[4] = v5;
    v9 = 1024;
    v10 = dword_100BC7AF0;
    v11 = 1024;
    v12 = byte_100BC7AF4;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RSSI Detection Debugging enabled for %{public}@. %d:%d", buf, 0x18u);
  }
}

void sub_10075045C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_1007504A0(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = 0;
  LODWORD(v4) = *(a1 + 76);
  WORD2(v3) = 0;
  LODWORD(v3) = 0;
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 60), 0, 0, 0, v3, v4);
}

uint64_t sub_100750514(uint64_t a1, uint64_t a2, int a3, void *a4, int a5, uint64_t a6)
{
  v11 = a4;
  *src = 0;
  v32 = 0;
  sub_10004DFB4(src, v11);
  if (uuid_is_null(v12))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086F97C();
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3321888768;
    v27[2] = sub_1007508F0;
    v27[3] = &unk_100B0B508;
    uuid_copy(v30, src);
    v29 = a5;
    v13 = 7;
    v28 = 7;
    sub_10074063C(a1, v27);
  }

  else
  {
    v21[0] = 0;
    v21[1] = 0;
    sub_100007F88(v21, a1 + 120);
    if (a1 + 392 == sub_10004E34C(a1 + 384, src))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10004DF60(src);
        objc_claimAutoreleasedReturnValue();
        sub_10086FA5C();
      }

      sub_10000801C(v21);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3321888768;
      v22[2] = sub_100750994;
      v22[3] = &unk_100B0B508;
      uuid_copy(v25, src);
      v24 = a5;
      v13 = 312;
      v23 = 312;
      sub_10074063C(a1, v22);
    }

    else if (sub_10074EF30(a1, a2, src) || a1 + 672 == sub_10004E34C(a1 + 664, src))
    {
      if (a3)
      {
        v26 = src;
        *(sub_1007751E0(a1 + 664, src) + 48) = a2;
        v14 = sub_10000C7D0();
        (*(*v14 + 2120))(v14, a5, HIWORD(a5), a6);
      }

      else
      {
        v15 = sub_10004E34C(a1 + 664, src);
        if ((a1 + 672) != v15)
        {
          sub_10002717C((a1 + 664), v15);
          operator delete(v15);
        }
      }

      v13 = 0;
    }

    else
    {
      sub_10000801C(v21);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086F9EC();
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100750A38;
      v17[3] = &unk_100B0B540;
      v18 = v11;
      v20 = a5;
      v19 = 2100;
      sub_10074063C(a1, v17);

      v13 = 2100;
    }

    sub_1000088CC(v21);
  }

  return v13;
}

void sub_1007508A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1007508F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 40));
  (*(*a2 + 88))(a2);
}

void sub_100750994(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 40));
  (*(*a2 + 88))(a2);
}

void sub_100750A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DF60((a1 + 68));
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  (*(*a2 + 96))(a2, v4, v6, *(a1 + 64));
}

void sub_100750B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DF60((a1 + 68));
  v5 = *(a1 + 48);
  v6[0] = *(a1 + 32);
  v6[1] = v5;
  (*(*a2 + 96))(a2, v4, v6, *(a1 + 64));
}

void sub_100750BB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int16 a11, __int16 a12, unsigned __int8 a13, uint64_t a14, int a15)
{
  v19 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67113984;
    v25 = a1;
    v26 = 1024;
    v27 = a2;
    v28 = 1024;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = a5;
    v34 = 1024;
    v35 = a6;
    v36 = 1024;
    v37 = a7;
    v38 = 1024;
    v39 = a8;
    v40 = 1024;
    v41 = a9;
    v42 = 1024;
    v43 = a10;
    v44 = 1024;
    v45 = a11;
    v46 = 1024;
    v47 = a11;
    v48 = 1024;
    v49 = a13;
    v50 = 1024;
    v51 = a14;
    v52 = 1024;
    v53 = WORD1(a14);
    v54 = 1024;
    v55 = WORD2(a14);
    v56 = 1024;
    v57 = HIWORD(a14);
    v58 = 1024;
    v59 = a15;
    v60 = 1024;
    v61 = BYTE2(a15);
    v62 = 1024;
    v63 = HIBYTE(a15);
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cscb: csLeLocalSupportedCapabilitiesCB status=%{bluetooth:OI_STATUS}u numConfig:%d maxProc:%d numAnt:%d rolesSup:%d modeSup:%d rttCap:%d rttCoarseN:%d rttSoundingN:%d rttRandomPayloadN:%d NADM:%d:%d SyncPhy%d:%d:%d:%d FcsTime:%d %d:%d txSNR:%d", buf, 0x7Au);
  }

  BYTE14(xmmword_100BCE038) = a2;
  word_100BCE048 = a3;
  byte_100BCE04A = a4;
  byte_100BCE04B = a5;
  byte_100BCE04C = a6;
  byte_100BCE04D = a7;
  byte_100BCE04E = a8;
  byte_100BCE04F = a9;
  byte_100BCE050 = a10;
  word_100BCE052 = a11;
  word_100BCE054 = a11;
  byte_100BCE056 = a13;
  *&xmmword_100BCE058 = a14;
  DWORD2(xmmword_100BCE058) = a15;
  sub_10002286C(&stru_100BCECB0);
  byte_100BCED20 = 0;
}

uint64_t sub_100750E28()
{
  v19 = 0;
  sub_1000216B4(&v19);
  v6 = sub_100018960(260, sub_100750BB4, v0, v1, v2, v3, v4, v5, v18);
  sub_100022214(&v19);
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "csReadLocalSupportedCapabilities status:%d", buf, 8u);
  }

  byte_100BCED20 = 1;
  if (v6)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("CS read local capabilities failed with status %!", v8, v9, v10, v11, v12, v13, v14, v6);
      v15 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = sub_10000C0FC();
        sub_10086FB1C(v16, buf);
      }
    }

    byte_100BCED20 = 0;
  }

  else
  {
    *buf = 0;
    v21 = 0;
    sub_100007F88(buf, &unk_100BCECE0);
    if (byte_100BCED20 == 1)
    {
      sub_1003645F8(&stru_100BCECB0, buf);
    }

    sub_10000801C(buf);
    sub_1000088CC(buf);
  }

  sub_10002249C(&v19);
  return 0;
}

uint64_t sub_100750FDC(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_10004DFB4(v30, a3);
  if ((sub_10074738C(a1, v30) & 1) != 0 || sub_100050290(a1, v30))
  {
    v4 = 0;
  }

  else
  {
    v5 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FB5C(v30, v5);
    }

    v4 = 312;
  }

  v28 = 0;
  v6 = sub_1000C4FCC(a1, v30, &v28);
  v7 = v28;
  if (v28)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v27 = 0;
    sub_1000216B4(&v27);
    if (sub_1000ABD24(v7))
    {
      v16 = sub_1000D6178(0x105u, v9, v10, v11, v12, v13, v14, v15, v7);
      if (v16)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("CS read remote capabilities failed with status %!", v17, v18, v19, v20, v21, v22, v23, v16);
          v24 = sub_10000C050(0x5Cu);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = sub_10000C0FC();
            sub_10086FB1C(v25, v29);
          }
        }
      }
    }

    sub_10002249C(&v27);
  }

  return v4;
}

uint64_t sub_100751160(void *a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  *src = 0;
  v18 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v7 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    if (v7)
    {
      v14 = 0;
      sub_1000216B4(&v14);
      v13 = 0;
      v8 = sub_1000C4FCC(a1, src, &v13);
      if (v13)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = a4[1];
        *dst = *a4;
        v16[0] = v10;
        *(v16 + 10) = *(a4 + 26);
        sub_100317AE0(v7, v13, dst);
      }

      sub_100022214(&v14);
      sub_10002249C(&v14);
    }

    return 0;
  }

  else
  {
    v12 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FBEC(src, v12);
    }

    return 312;
  }
}

uint64_t sub_1007512C8(uint64_t a1, unint64_t a2, unsigned __int8 *uu)
{
  v12 = a2;
  v5 = *(a1 + 1408);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 1408;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == a1 + 1408 || *(v6 + 32) > a2)
  {
LABEL_9:
    v13 = 0u;
    memset(v14, 0, sizeof(v14));
    operator new();
  }

  v10 = *(v6 + 40);
  if (!uuid_is_null(uu) && a1 + 1432 == sub_10004E34C(a1 + 1424, uu))
  {
    *&v13 = uu;
    *(sub_100775454(a1 + 1424, uu) + 48) = v10;
  }

  return v10;
}

uint64_t sub_100751474(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v19 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v5 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    if (v5)
    {
      v16 = 0;
      sub_1000216B4(&v16);
      *dst = 0;
      v6 = sub_1000C4FCC(a1, src, dst);
      if (*dst)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sub_100317AB8(v5, *dst, v7, v8, v9, v10, v11, v12);
      }

      sub_100022214(&v16);
      sub_10002249C(&v16);
    }

    return 0;
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FC7C(src, v15);
    }

    return 312;
  }
}

uint64_t sub_1007515BC(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v19 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v5 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    if (v5)
    {
      v16 = 0;
      sub_1000216B4(&v16);
      *dst = 0;
      v6 = sub_1000C4FCC(a1, src, dst);
      if (*dst)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sub_100317AB8(v5, *dst, v7, v8, v9, v10, v11, v12);
      }

      sub_100022214(&v16);
      sub_10002249C(&v16);
    }

    return 0;
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FD0C(src, v15);
    }

    return 312;
  }
}

uint64_t sub_100751704(void *a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  *src = 0;
  v30 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v7 = sub_1007512C8(a1, a2, dst);
  if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

    goto LABEL_8;
  }

  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10086FD9C(src, v9);
  }

  v8 = 312;
  if (v7)
  {
LABEL_8:
    v10 = a4[1];
    *dst = *a4;
    v28[0] = v10;
    *(v28 + 10) = *(a4 + 26);
    sub_100318DA0(v7, dst);
    v11 = *a4;
    if (v11 > 3)
    {
      v20 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(src, dst);
        v22 = (SBYTE7(v28[0]) & 0x80u) == 0 ? dst : *dst;
        *buf = 67109378;
        *&buf[4] = v11;
        v25 = 2082;
        v26 = v22;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unsupported ConfigID:%d for   %{public}s ", buf, 0x12u);
        if (SBYTE7(v28[0]) < 0)
        {
          operator delete(*dst);
        }
      }

      return 312;
    }

    else
    {
      v23 = 0;
      sub_1000216B4(&v23);
      *buf = 0;
      v12 = sub_1000C4FCC(a1, src, buf);
      if (*buf)
      {
        v18 = v12;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        v19 = a4[1];
        *dst = *a4;
        v28[0] = v19;
        *(v28 + 10) = *(a4 + 26);
        sub_100317928(v7, *buf, dst, v13, v14, v15, v16, v17);
      }

      sub_100022214(&v23);
      sub_10002249C(&v23);
    }
  }

  return v8;
}

uint64_t sub_10075193C(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *uu = 0;
  v34 = 0;
  sub_10004DFB4(uu, v7);
  v8 = a1[176];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 176;
  do
  {
    v10 = v8[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != a1 + 176 && v9[4] <= a2)
  {
    v18 = v9[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, __p);
        sub_10086F3F8();
      }

      v16 = 312;
    }

    v27 = 0;
    sub_1000216B4(&v27);
    *buf = 0;
    v19 = sub_1000C4FCC(a1, uu, buf);
    if (*buf)
    {
      v25 = v19;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      sub_100317A20(v18, *buf, a4, v20, v21, v22, v23, v24);
    }

    sub_100022214(&v27);
    sub_10002249C(&v27);
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v36[7] >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((v36[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v36, 0, sizeof(v36));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v28, __p);
      if (v29 >= 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v28[0];
      }

      *buf = 138543618;
      *&buf[4] = v14;
      v31 = 2082;
      v32 = v26;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }
    }

    v16 = 2300;
  }

  return v16;
}

uint64_t sub_100751C14(void *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  *uu = 0;
  v27 = 0;
  sub_10004DFB4(uu, v5);
  v6 = a1[176];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 176;
  do
  {
    v8 = v6[4];
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != a1 + 176 && v7[4] <= a2)
  {
    v16 = v7[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      __p[0] = 0;
      v17 = sub_1000C4FCC(a1, uu, __p);
      if (__p[0])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        sub_100317A48(v16, __p[0]);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, __p);
        sub_10086F3F8();
      }

      v14 = 312;
    }
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v29[7] >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [NSString stringWithUTF8String:v11];
    if ((v29[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v29, 0, sizeof(v29));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v20, __p);
      if (v21 >= 0)
      {
        v19 = v20;
      }

      else
      {
        v19 = v20[0];
      }

      *buf = 138543618;
      v23 = v12;
      v24 = 2082;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }

    v14 = 2300;
  }

  return v14;
}

uint64_t sub_100751EC8(void *a1, unint64_t a2, void *a3, _OWORD *a4)
{
  v7 = a3;
  *uu = 0;
  v31 = 0;
  sub_10004DFB4(uu, v7);
  v8 = a1[176];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 176;
  do
  {
    v10 = v8[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != a1 + 176 && v9[4] <= a2)
  {
    v18 = v9[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, v24);
        sub_10086F3F8();
      }

      v16 = 312;
    }

    v23 = 0;
    v19 = sub_1000C4FCC(a1, uu, &v23);
    if (v23)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      v21 = a4[1];
      *__p = *a4;
      *v33 = v21;
      sub_100317B90(v18, v23, __p);
    }
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v33[7] >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((v33[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v33, 0, sizeof(v33));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v24, __p);
      if (v25 >= 0)
      {
        v22 = v24;
      }

      else
      {
        v22 = v24[0];
      }

      *buf = 138543618;
      v27 = v14;
      v28 = 2082;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    v16 = 2300;
  }

  return v16;
}

uint64_t sub_10075217C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  uuid_clear(__p);
  v6 = sub_1007512C8(a1, a2, __p);
  if (v6)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v7 = sub_10000C5F8(a3);
    sub_100317CEC(v6, v7, v8, v9, v10, v11, v12, v13);
    sub_100022214(__p);
    sub_10002249C(__p);
    return 0;
  }

  else
  {
    sub_100018384(a2, __p);
    if (v18 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v16 = [NSString stringWithUTF8String:v15];
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FE2C();
    }

    return 2300;
  }
}

void sub_1007522B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007522E4(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v16 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(__p, src);
  v5 = sub_1007512C8(a1, a2, __p);
  if (v5)
  {
    if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
    {
      v6 = 0;
    }

    else
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086FE9C(src, v9);
      }

      v6 = 312;
    }

    __p[0] = 0;
    v10 = sub_1000C4FCC(a1, src, __p);
    if (__p[0])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      sub_100317DC8(v5, __p[0]);
    }
  }

  else
  {
    sub_100018384(a2, __p);
    if (v14 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [NSString stringWithUTF8String:v7];
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FE2C();
    }

    return 2300;
  }

  return v6;
}

void sub_10075249C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007524C0(uint64_t a1, unint64_t a2)
{
  uuid_clear(__p);
  v4 = sub_1007512C8(a1, a2, __p);
  if (v4)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_10031816C(v4, v5, v6, v7, v8, v9, v10, v11);
    sub_100022214(__p);
    sub_10002249C(__p);
    return 0;
  }

  else
  {
    sub_100018384(a2, __p);
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_10086FF2C();
    }

    return 2300;
  }
}

void sub_1007525E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100752618(void *a1, unint64_t a2, uint64_t a3)
{
  *src = 0;
  v27 = 0;
  sub_10004DFB4(src, a3);
  uuid_copy(dst, src);
  v5 = sub_1007512C8(a1, a2, dst);
  if (v5)
  {
    if ((sub_10074738C(a1, src) & 1) != 0 || sub_100050290(a1, src))
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      *dst = 0;
      v6 = sub_1000C4FCC(a1, src, dst);
      if (*dst)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        sub_1003182A0(v5, *dst, v7, v8, v9, v10, v11, v12);
      }

      sub_100022214(__p);
      sub_10002249C(__p);
      return 0;
    }

    else
    {
      v18 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_10086FF9C(src, v18);
      }

      return 312;
    }
  }

  else
  {
    sub_100018384(a2, dst);
    if (v29[7] >= 0)
    {
      v15 = dst;
    }

    else
    {
      v15 = *dst;
    }

    v16 = [NSString stringWithUTF8String:v15];
    if ((v29[7] & 0x80000000) != 0)
    {
      operator delete(*dst);
    }

    v17 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *dst = 0u;
      memset(v29, 0, sizeof(v29));
      uuid_unparse_upper(src, dst);
      sub_100007E30(__p, dst);
      v19 = v21 >= 0 ? __p : __p[0];
      *buf = 138543618;
      v23 = v16;
      v24 = 2082;
      v25 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 2300;
  }
}

void sub_100752848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100752890(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v8 = off_100B508A8;
  sub_10004DFB4(&v17, v7);
  if (sub_100050290(v8, &v17))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v9 = sub_100046458(off_100B508C8, v7, 0);
    if (qword_100B508F0 != -1)
    {
      sub_10087002C();
    }

    v10 = sub_1000504C8(off_100B508E8, v9, 1);
    v11 = sub_10000C7D0();
    v12 = (*(*v11 + 136))(v11, a4, v10, a5);
    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_100063D0C();
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MRC LE Address :    %@ ", &v17, 0xCu);
    }
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MRC needs to have device connected   %@ ", &v17, 0xCu);
    }

    v12 = 312;
  }

  return v12;
}

uint64_t sub_100752ABC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  uu[0] = 0;
  uu[1] = 0;
  sub_10004DFB4(uu, v7);
  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  v8 = off_100B508A8;
  sub_10004DFB4(out, v7);
  if (!sub_100050290(v8, out))
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *out = 138412290;
      *&out[4] = v7;
      v14 = "Get range for peripheral needs to have device connected   %@ ";
      v16 = v15;
      v17 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v14, out, v17);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if ((v2[26098] & 1) == 0)
  {
    v9 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      v10 = v26 >= 0 ? __p : __p[0];
      buf = 136446210;
      v29 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Get Range for Peripheral: %{public}s ", &buf, 0xCu);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100750E28();
    v12 = sub_100750FDC(v5, v11, v7);
    if (v12)
    {
      v13 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *out = 138412546;
        *&out[4] = v7;
        *&out[12] = 1024;
        *&out[14] = v12;
        v14 = "csReadRemoteSupportedCapabilities error returned   %@. %d ";
LABEL_19:
        v16 = v13;
        v17 = 18;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v18 = sub_100751474(v5, v4, v7);
    if (v18)
    {
      v13 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *out = 138412546;
        *&out[4] = v7;
        *&out[12] = 1024;
        *&out[14] = v18;
        v14 = "csSecurityEnable error returned   %@. %d ";
        goto LABEL_19;
      }

LABEL_21:
      v19 = 312;
      goto LABEL_22;
    }
  }

  sub_10004DFB4(out, v7);
  v21 = sub_1007512C8(v5, v4, out);
  if ((sub_10074738C(v5, uu) & 1) != 0 || sub_100050290(v5, uu))
  {
    v19 = 0;
    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_1000D67B4(uu, __p);
    sub_10086F3F8();
  }

  v19 = 312;
  if (v21)
  {
LABEL_30:
    v24 = 0;
    v22 = sub_1000C4FCC(v5, uu, &v24);
    if (v24)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      memcpy(out, v2, 0xCBE8uLL);
      sub_100317F1C(v21, v24, out);
    }
  }

LABEL_22:

  return v19;
}

uint64_t sub_100752E78(void *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *uu = 0;
  v36 = 0;
  sub_10004DFB4(uu, v7);
  v8 = a1[176];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 176;
  do
  {
    v10 = v8[4];
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 != a1 + 176 && v9[4] <= a2)
  {
    v18 = v9[5];
    if ((sub_10074738C(a1, uu) & 1) != 0 || sub_100050290(a1, uu))
    {
      v16 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1000D67B4(uu, __p);
        sub_10086F3F8();
      }

      v16 = 312;
    }

    v29 = 0;
    sub_1000216B4(&v29);
    *buf = 0;
    v19 = sub_1000C4FCC(a1, uu, buf);
    v20 = *buf;
    if (*buf)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = sub_10000C5F8(a4);
      sub_1003182C8(v18, v20, v22, v23, v24, v25, v26, v27);
    }

    sub_100022214(&v29);
    sub_10002249C(&v29);
  }

  else
  {
LABEL_9:
    sub_100018384(a2, __p);
    if (v38[7] >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [NSString stringWithUTF8String:v13];
    if ((v38[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      *__p = 0u;
      memset(v38, 0, sizeof(v38));
      uuid_unparse_upper(uu, __p);
      sub_100007E30(v30, __p);
      if (v31 >= 0)
      {
        v28 = v30;
      }

      else
      {
        v28 = v30[0];
      }

      *buf = 138543618;
      *&buf[4] = v14;
      v33 = 2082;
      v34 = v28;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Session %{public}@ for %{public}s is not found", buf, 0x16u);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    v16 = 2300;
  }

  return v16;
}

void sub_10075315C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1136);
  v3 = (a1 + 1144);
  if (v2 != (a1 + 1144))
  {
    do
    {
      if ((a2 - v2[5]) < 0x6FC23AC01)
      {
        v9 = v2[1];
        if (v9)
        {
          do
          {
            v8 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v2[2];
            v10 = *v8 == v2;
            v2 = v8;
          }

          while (!v10);
        }
      }

      else
      {
        v6 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v7 = sub_1007774DC();
          *buf = 138543362;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing expired ExpectedIncomingAddress:%{public}@", buf, 0xCu);
        }

        v8 = sub_10002717C((a1 + 1136), v2);
        operator delete(v2);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

void sub_1007532C8(uint64_t a1, unint64_t a2)
{
  v7 = a2;
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  sub_10075315C(a1, v3);
  *buf = &v7;
  sub_1007755E4(a1 + 1136, &v7)[5] = v3;
  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1007774DC();
    v6 = *(a1 + 1152);
    *buf = 138543618;
    *&buf[4] = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding address %{public}@ to fAddressForIncomingConnectionPrioritizationMap[%lu]", buf, 0x16u);
  }
}

void sub_1007533DC(uint64_t a1)
{
  v2 = *(a1 + 400);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = sub_100029630(a1);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v26 count:16];
  if (v4)
  {
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v8 = sub_1007876D8(off_100B508C8, v7);
        if (v8)
        {
          v10 = v7;

          v9 = v10;
          if (v10)
          {
            v11 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 1602);
              v2 = v2;
              *buf = 67109890;
              v19 = v12;
              v20 = 1024;
              v21 = v2;
              v22 = 2114;
              v23 = v9;
              v24 = 1024;
              v25 = v8;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - Analyzed (a2dp:%d, leConn:%d, candidate:%{public}@, optimizationState:%d)", buf, 0x1Eu);
            }

            else
            {
              v2 = v2;
            }

            v13 = *(a1 + 1602);
            if (v2 <= 2)
            {
              v13 = 0;
            }

            if (v13 == 1 && v8 == 1)
            {
              sub_1007489DC(a1, v9, -8, 0);
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              sub_10078764C(off_100B508C8, v9, 2);
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
              {
                sub_1008700C4();
              }
            }

            else
            {
              if (v8 != 2)
              {
                LOBYTE(v13) = 1;
              }

              if ((v13 & 1) == 0)
              {
                sub_1007489DC(a1, v9, -7, 0);
                if (qword_100B508D0 != -1)
                {
                  sub_10086DE2C();
                }

                sub_10078764C(off_100B508C8, v9, 0);
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
                {
                  sub_100870054();
                }
              }
            }
          }

          goto LABEL_31;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v26 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_31:
}

void sub_1007536B0(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  if (sub_1007877F0(off_100B508C8, v4))
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v5 = sub_1007876D8(off_100B508C8, v4);
    v6 = v5;
    if (a3 == 12 && !v5)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086E034();
      }

      sub_10078764C(off_100B508C8, v4, 1);
    }

    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v4;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AudioQualityOptimizer - device:%{public}@, optimizationState:%d", &v8, 0x12u);
    }
  }
}

void sub_100753818(uint64_t a1, uint64_t a2, char a3, int a4, int a5)
{
  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Stream state changed, re-evaluating scan params", buf, 2u);
  }

  if (a4 == 2 && (*(a1 + 1603) & 1) != 0)
  {
    if (a5)
    {
      v10 = sub_100007EE8();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10075390C;
      v11[3] = &unk_100AE15D8;
      v11[4] = a1;
      v12 = a3;
      sub_10000CA94(v10, v11);
    }
  }
}

void sub_10075390C(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 1602) = *(a1 + 40);
  sub_1007533DC(v1);
}

uint64_t sub_100753928(uint64_t a1, __int128 *a2)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 120);
  v4 = sub_10000C798();
  v5 = (*(*v4 + 992))(v4);
  *(a1 + 288) = *a2;
  if (v5)
  {
    v6 = *(a2 + 2);
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 312) = v6;
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100063D0C();
    *buf = 138543362;
    *v22 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local LE Connectable address is now %{public}@", buf, 0xCu);

    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_100063D0C();
    *buf = 138543362;
    *v22 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local LE Non-Connectable address is now %{public}@", buf, 0xCu);

    v7 = qword_100BCE980;
  }

  if (v5 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_100063D0C();
    *buf = 138543362;
    *v22 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Local LE Non-Connectable Secondary address is now %{public}@", buf, 0xCu);

    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 184);
    v12 = *(a1 + 352);
    v13 = *(a1 + 864);
    if (v13 > 4)
    {
      v14 = "UNKNOWN";
    }

    else
    {
      v14 = (&off_100B0BF80)[v13];
    }

    *buf = 67109634;
    *v22 = v11;
    *&v22[4] = 2048;
    *&v22[6] = v12;
    v23 = 2082;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fStarted:%d, fConnectingDevices.size:%lu, fConnectionState:%{public}s", buf, 0x1Cu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100753CA0;
  v17[3] = &unk_100B0B590;
  v18 = *a2;
  v19 = *(a2 + 2);
  sub_10074063C(a1, v17);
  if (*(a1 + 1066) == 1)
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Address change complete, will process connecting devices now", buf, 2u);
    }

    *(a1 + 1066) = 0;
    if (!*(a1 + 864) && *(a1 + 352))
    {
      sub_100753CFC(a1);
    }
  }

  *(a1 + 328) = CFAbsoluteTimeGetCurrent();
  return sub_1000088CC(v20);
}

void sub_100753C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100753CA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return (*(*a2 + 112))(a2, &v3);
}

uint64_t sub_100753CFC(uint64_t a1)
{
  v85[0] = 0;
  v85[1] = 0;
  sub_100007F88(v85, a1 + 120);
  sub_100760A88(a1);
  if (*(a1 + 1067) != 1)
  {
    if (*(a1 + 928))
    {
      v6 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "We should not get here, this is for debug purposes", buf, 2u);
        v6 = qword_100BCE980;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100870134();
      }

      return sub_1000088CC(v85);
    }

    if (*(a1 + 1065) == 1)
    {
      v2 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v85);
      }

      *buf = 0;
      v3 = "Controller Connection List is full, waiting for something to disconnect first";
      goto LABEL_4;
    }

    v7 = *(a1 + 864);
    if (v7)
    {
      v8 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v85);
      }

      if (v7 > 4)
      {
        v9 = "UNKNOWN";
      }

      else
      {
        v9 = off_100B0BE30[v7 - 1];
      }

      *buf = 136446466;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v3 = "Busy doing something else %{public}s(%d).";
      v4 = v8;
      v5 = 18;
      goto LABEL_5;
    }

    if (!*(a1 + 352))
    {
      v10 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Connection list empty, skipping", buf, 2u);
      }

      sub_100745874(a1, 0);
      v11 = sub_1000154A8();
      (*(*v11 + 104))(v11, 0, 0, 0, 1, 0);
      return sub_1000088CC(v85);
    }

    if (*(a1 + 1066) == 1)
    {
      v2 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        return sub_1000088CC(v85);
      }

      *buf = 0;
      v3 = "Address change in progress, waiting for it to complete";
      goto LABEL_4;
    }

    v84 = 0;
    v83 = 0;
    v82 = 0;
    sub_100761EE8(a1, &v84 + 1, &v84, &v83, &v82 + 1, &v82);
    if (*(a1 + 1076) == 1)
    {
      v12 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 1080);
        v14 = *(a1 + 1078);
        *buf = 67109888;
        *&buf[4] = HIWORD(v84);
        *&buf[8] = 1024;
        *&buf[10] = v84;
        *&buf[14] = 1024;
        *&buf[16] = v13;
        *&buf[20] = 1024;
        *&buf[22] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Override MainCore Connection Scan: interval %d window %d by interval %d window %d", buf, 0x1Au);
      }

      v84 = *(a1 + 1078);
    }

    v15 = *(a1 + 336);
    v16 = (a1 + 344);
    v17 = 1;
    if (v15 != (a1 + 344))
    {
      do
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v18 = off_100B508C8;
        v19 = sub_10004DF60(v15 + 25);
        v20 = sub_100789A60(v18, v19);

        v21 = *(v15 + 1);
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
            v22 = *(v15 + 2);
            v23 = *v22 == v15;
            v15 = v22;
          }

          while (!v23);
        }

        v17 |= v20;
        v15 = v22;
      }

      while (v22 != v16);
    }

    v24 = sub_10000C798();
    v25 = (*(*v24 + 720))(v24);
    if ((v25 & 1) == 0)
    {
      v26 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "LELR is not enabled, disable coded PHY", buf, 2u);
      }

      v17 &= ~4u;
    }

    v27 = sub_10000C798();
    if ((*(*v27 + 728))(v27))
    {
      v28 = v17 | 2;
    }

    else
    {
      v28 = v17;
    }

    v29 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v84;
      *&buf[8] = 1024;
      *&buf[10] = HIWORD(v84);
      *&buf[14] = 1024;
      *&buf[16] = v25;
      *&buf[20] = 1024;
      *&buf[22] = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Next connection parameters are: window - 0x%x, interval - 0x%x enableLELR - %d initPHYs - %x", buf, 0x1Au);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 352);
      *buf = 134217984;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Starting auto connection for %lu devices", buf, 0xCu);
    }

    v31 = sub_10000C798();
    if ((*(*v31 + 688))(v31))
    {
      v32 = v83;
      v33 = v83 != 0;
      v34 = HIWORD(v84);
      if (v83)
      {
        v35 = HIWORD(v84);
      }

      else
      {
        v35 = 0;
      }

      if (*(a1 + 1124) != v33)
      {
        *(a1 + 1124) = v33;
        if (v32)
        {
          v36 = &stru_100B0B998;
        }

        else
        {
          v36 = &stru_100B0B9B8;
        }

        sub_10074063C(a1, v36);
      }

      v37 = qword_100BCE980;
      if (*(a1 + 1068) == 1)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v38 = "No";
          v39 = *(a1 + 1072);
          v40 = *(a1 + 1070);
          if (v32)
          {
            v41 = "Yes";
          }

          else
          {
            v41 = "No";
          }

          if (*(a1 + 1075))
          {
            v42 = "Yes";
          }

          else
          {
            v42 = "No";
          }

          if (*(a1 + 1074))
          {
            v38 = "Yes";
          }

          *buf = 136447746;
          *&buf[4] = v41;
          *&buf[12] = 1024;
          *&buf[14] = v35;
          *&buf[18] = 1024;
          *&buf[20] = v32;
          *&buf[24] = 2082;
          v87 = v42;
          v88 = 1024;
          v89 = v39;
          v90 = 1024;
          v91 = v40;
          v92 = 2080;
          v93 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Override ScanCore Connection Scan: enabled %{public}s interval %d window %d by enabled %{public}s interval %d window %d eLNA %s", buf, 0x38u);
          v37 = qword_100BCE980;
        }

        v35 = *(a1 + 1072);
        v32 = *(a1 + 1070);
        v83 = *(a1 + 1070);
        HIBYTE(v82) = *(a1 + 1074);
        LOBYTE(v33) = *(a1 + 1075);
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v43 = "No";
        if (v33)
        {
          v43 = "Yes";
        }

        *buf = 136447490;
        *&buf[4] = v43;
        v44 = "Y";
        *&buf[12] = 1024;
        *&buf[14] = v35;
        if (!HIBYTE(v82))
        {
          v44 = "N";
        }

        *&buf[18] = 1024;
        *&buf[20] = v32;
        *&buf[24] = 2080;
        v87 = v44;
        v88 = 1024;
        v89 = v34;
        v90 = 1024;
        v91 = v84;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "ScanCore Connection Scan Params enabled %{public}s interval %d window %d eLNA %s with MainCore interval %d window %d", buf, 0x2Eu);
      }

      v45 = sub_10000C7D0();
      v46 = (*(*v45 + 2160))(v45, v33 & 1, v35, v32, HIBYTE(v82));
      v47 = qword_100BCE980;
      if (v46)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v46;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Failed to execute btscLeSetConnectionScan with error %d", buf, 8u);
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_1008701C8();
      }
    }

    v81 = 0;
    sub_1000216B4(&v81);
    v48 = HIWORD(v84);
    v49 = v84;
    v50 = sub_1002D1A8C(HIWORD(v84), v84, v28, 0, 0, 0, 0xFFu, 0xFFu);
    v51 = sub_1002D20C4();
    sub_100022214(&v81);
    if (v50 > 757)
    {
      if (v50 == 758)
      {
        if (qword_100B508B0 != -1)
        {
          sub_10086DE54();
        }

        sub_100745874(off_100B508A8, 4u);
        goto LABEL_111;
      }

      if (v50 == 1319 && v51)
      {
        v52 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v53 = "We're busy disconnecting another device, lets wait before we issue another connection command";
          goto LABEL_93;
        }

LABEL_111:
        v77 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Failure, setting new connectionState", buf, 2u);
        }

        sub_100745874(a1, 0);
LABEL_114:
        sub_10002249C(&v81);
        return sub_1000088CC(v85);
      }
    }

    else
    {
      if (!v50)
      {
        v74 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Success, setting new connectionState", buf, 2u);
        }

        sub_100745874(a1, 1u);
        v75 = sub_1000154A8();
        (*(*v75 + 104))(v75, v48, v49, v82, 1, (*(a1 + 560) * 1000.0));
        memset(buf, 0, 24);
        *&buf[8] = CFAbsoluteTimeGetCurrent();
        buf[0] = 1;
        v76 = sub_10000F034();
        (*(*v76 + 816))(v76, buf);
        goto LABEL_114;
      }

      if (v50 == 133)
      {
        v52 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v53 = "Already connected - we should be getting a connection event imminently";
LABEL_93:
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
          goto LABEL_111;
        }

        goto LABEL_111;
      }
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870204();
    }

    if (v50 == 1309)
    {
      v79 = sub_10000E92C();
      sub_100007E30(v80, "");
      sub_100693260(v79, 1309, v80, 1);
    }

    sub_1000618AC(&v81);
    sub_1002E9800(v54, v55, v56, v57, v58, v59, v60, v61);
    sub_10000CEDC(a1 + 360, *(a1 + 368));
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 360) = a1 + 368;
    sub_1002D0A0C(v62, v63, v64, v65, v66, v67, v68, v69);
    sub_100022214(&v81);
    v70 = *(a1 + 336);
    if (v70 != v16)
    {
      do
      {
        v71 = sub_10004DF60(v70 + 25);
        sub_10004DFB4(buf, v71);
        sub_100756884(a1, buf, 1, v50, 1);

        v72 = *(v70 + 1);
        if (v72)
        {
          do
          {
            v73 = v72;
            v72 = *v72;
          }

          while (v72);
        }

        else
        {
          do
          {
            v73 = *(v70 + 2);
            v23 = *v73 == v70;
            v70 = v73;
          }

          while (!v23);
        }

        v70 = v73;
      }

      while (v73 != v16);
    }

    sub_10000CEDC(a1 + 336, *(a1 + 344));
    *(a1 + 336) = v16;
    *(a1 + 344) = 0u;
    sub_10000CEDC(a1 + 608, *(a1 + 616));
    *(a1 + 608) = a1 + 616;
    *(a1 + 616) = 0u;
    goto LABEL_111;
  }

  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "Stack is shutting down, we should not even be here.";
LABEL_4:
    v4 = v2;
    v5 = 2;
LABEL_5:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
  }

  return sub_1000088CC(v85);
}

void sub_1007548F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a19);
  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_100754974(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 352);
    v5 = *(a1 + 864);
    if (v5 > 4)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF80)[v5];
    }

    *buf = 67109634;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "AddressWillChange event fStarted:%d, fConnectingDevices.size:%lu, fConnectionState:%{public}s", buf, 0x1Cu);
  }

  if (*(a1 + 184) == 1 && *(a1 + 352) && *(a1 + 864) == 1)
  {
    *(a1 + 1066) = 1;
    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling connections due to advertising address changed", buf, 2u);
    }

    sub_10074518C(a1, 0);
  }

  return sub_1000088CC(v9);
}

void sub_100754B04(uint64_t a1, void *a2)
{
  v3 = a2;
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 120);
  [*(a1 + 768) removeObject:v3];
  [*(a1 + 792) removeObject:v3];
  sub_10004DFB4(buf, v3);
  v4 = sub_1005FF344(a1 + 336, buf);
  v5 = qword_100BCE980;
  if ((a1 + 344) == v4)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870274();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing device %{public}@ from connection filter accept list, waiting for controller to complete.", buf, 0xCu);
    }

    v7 = *(a1 + 360);
    if (v7 != (a1 + 368))
    {
      *&v6 = 67109120;
      v25 = v6;
      do
      {
        sub_10004DFB4(buf, v3);
        v8 = uuid_compare(v7 + 40, buf);
        if (v8)
        {
          v9 = v7[1];
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
              v10 = v7[2];
              v14 = *v10 == v7;
              v7 = v10;
            }

            while (!v14);
          }
        }

        else
        {
          v11 = sub_1007564FC(v8, v7[4]);
          v12 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            *buf = v25;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "removeAddressFromBTController returned %d", buf, 8u);
          }

          v10 = sub_10002717C((a1 + 360), v7);
          operator delete(v7);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 368));
    }

    if (_os_feature_enabled_impl())
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v13 = sub_100788D8C(off_100B508C8, v3);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v14 = (v13 - 0x10000) > 0x1E || ((1 << v13) & 0x7F7800FF) == 0;
      if (!v14)
      {
        sub_10004DFB4(buf, v3);
        if (a1 + 616 != sub_1005FF344(a1 + 608, buf))
        {
          v15 = v3;
          *buf = v15;
          *&buf[8] = 0;
          *&buf[16] = 0;
          v33 = 0;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10076BF1C;
          v27[3] = &unk_100B0B978;
          v27[4] = a1;
          v34 = objc_retainBlock(v27);
          v16 = v29;
          if (v29 >= v30)
          {
            v20 = sub_100776854(&v28, buf);
          }

          else
          {
            v17 = *buf;
            *buf = 0;
            *v29 = v17;
            v18 = *&buf[8];
            *(v16 + 6) = v33;
            *(v16 + 1) = v18;
            v19 = v34;
            v34 = 0;
            v16[4] = v19;
            v20 = v16 + 5;
          }

          v29 = v20;

          sub_10004DFB4(buf, v15);
          sub_1005FF2F0((a1 + 608), buf);
        }
      }

      if (v28 != v29)
      {
        if (qword_100B50910 != -1)
        {
          sub_10086E454();
        }

        v21 = off_100B50908;
        memset(v26, 0, sizeof(v26));
        sub_100776B18(v26, v28, v29, 0xCCCCCCCCCCCCCCCDLL * (v29 - v28));
        sub_1005BE9B4(v21, v26);
        *buf = v26;
        sub_100776794(buf);
        sub_10076BFD8(&v28);
      }

      memset(buf, 0, sizeof(buf));
      v22 = [v3 UUIDString];
      v23 = v22;
      sub_100007E30(buf, [v22 UTF8String]);

      sub_100776C38((a1 + 1360), buf);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      *buf = &v28;
      sub_100776794(buf);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_10078B4E8(off_100B508C8, v3, 0);
    sub_10002717C((a1 + 336), v4);
    operator delete(v4);
    sub_1007440F4(a1, *(a1 + 352) != 0);
  }

  if (*(a1 + 1127) == 1)
  {
    v24 = sub_10000C7D0();
    if ((*(*v24 + 3144))(v24))
    {
      sub_100744178(a1, v3, *(a1 + 736), 0);
    }
  }

  sub_1000088CC(v31);
}

void sub_100755014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32)
{
  __p = &a20;
  sub_100776794(&__p);
  sub_1000088CC(&a23);

  _Unwind_Resume(a1);
}

void sub_1007550C4(uint64_t a1, void *a2, char a3)
{
  v39 = a2;
  v4 = sub_10000C7D0();
  if ((sub_10008215C(v4, 100) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008702E4();
    }

    goto LABEL_49;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v5 = sub_100788D8C(off_100B508C8, v39);
  v6 = sub_10000C798();
  v7 = (*(*v6 + 960))(v6);
  if (!v7)
  {
    goto LABEL_15;
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E05C();
  }

  v7 = sub_1005BC91C(off_100B50908);
  if (!v7)
  {
LABEL_15:
    v40 = 0;
    goto LABEL_16;
  }

  v40 = 1;
  if (v5 != 19 && v5 != 196608)
  {
    v8 = sub_10000C798();
    v7 = (*(*v8 + 968))(v8);
    if (v7)
    {
      v40 = 0;
      if ((v5 - 0x10000) <= 0x1D)
      {
        v40 = ((1 << v5) & 0x3C200011) != 0;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  v9 = sub_1007424C8(v7, v39);
  v10 = sub_10000C798();
  if ((*(*v10 + 976))(v10) && ((v11 = _os_feature_enabled_impl(), (v5 - 65562) < 4) ? (v12 = v11) : (v12 = 0), v12 == 1))
  {
    v13 = sub_10000C798();
    v14 = (*(*v13 + 392))(v13);
    v38 = v14 ^ 1;
    *(a1 + 1601) = v14 ^ 1;
    v15 = 1;
    v16 = 1;
  }

  else
  {
    v38 = 0;
    v15 = 0;
    v16 = 0;
  }

  v17 = sub_100742080(a1, v39);
  v42 = 0;
  v43[0] = 0;
  v43[1] = 0;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_100790344(off_100B508C8, v39, &v42);
  v18 = v42;
  if (v42 != v43)
  {
    if (v9)
    {
      v19 = 1;
    }

    else
    {
      v19 = a3;
    }

    v36 = v40 | v15 | v38;
    v37 = v19;
    while (1)
    {
      v20 = v18[4];
      v21 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_100063D0C();
        *buf = 138544642;
        v45 = v39;
        v46 = 2114;
        v47 = v22;
        v48 = 1024;
        *v49 = 0;
        *&v49[4] = 1024;
        *&v49[6] = v17;
        *v50 = 1024;
        *&v50[2] = v9;
        *v51 = 1024;
        *&v51[2] = v40;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "device %{public}@ with address %{public}@ filter accept list options: conn_cmpt_option=%d, minRSSI=%d, PHYs=%x conn_scan_pri=%d waiting for controller to complete. ", buf, 0x2Eu);
      }

      if (v37)
      {
        break;
      }

      if (v17)
      {
        if ((v36 | *(a1 + 1126)))
        {
          break;
        }
      }

      else if (v36)
      {
        break;
      }

LABEL_42:
      v29 = v18[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v18[2];
          v31 = *v30 == v18;
          v18 = v30;
        }

        while (!v31);
      }

      v18 = v30;
      if (v30 == v43)
      {
        goto LABEL_48;
      }
    }

    *(v41 + 3) = 0;
    v41[0] = 0;
    v23 = sub_10009A66C(v20);
    v41[0] = v23;
    BYTE2(v41[1]) = BYTE6(v23);
    LOWORD(v41[1]) = WORD2(v23);
    v24 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_100063D0C();
      *buf = 138545667;
      v45 = v39;
      v46 = 2160;
      v47 = 1752392040;
      v48 = 2113;
      *v49 = v25;
      *&v49[8] = 1024;
      *v50 = v17;
      *&v50[4] = 1024;
      *v51 = v9;
      *&v51[4] = 1024;
      v52 = v16;
      v53 = 1024;
      v54 = 0;
      v55 = 1024;
      v56 = v16;
      v57 = 1024;
      v58 = 0;
      v59 = 1024;
      v60 = v38;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Adding device %{public}@ with address %{private, mask.hash}@ to connection filter accept list with option RSSI:%d Phy:%x TxPwr:%d:%d:%d:%d MRC:%d", buf, 0x4Au);
    }

    v26 = sub_10000C7D0();
    BYTE4(v34) = v38;
    BYTE3(v34) = 0;
    BYTE2(v34) = v16;
    LOWORD(v34) = v16;
    HIBYTE(v33) = v40;
    BYTE2(v33) = v9;
    BYTE1(v33) = v17;
    LOBYTE(v33) = 0;
    LOWORD(v32) = 0;
    v27 = (*(*v26 + 4192))(v26, v41, 0, 0, 0, 0, 0, 0, v32, 0, v33, 0, v34, 0);
    if (v27)
    {
      v28 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v45) = v27;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "addFilterAcceptListWithOptions failed with error %d", buf, 8u);
      }
    }

    goto LABEL_42;
  }

LABEL_48:
  sub_10000CEDC(&v42, v43[0]);
LABEL_49:
}

void sub_1007556FC(uint64_t a1)
{
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v2 = *(a1 + 776);
  v3 = [v2 countByEnumeratingWithState:&v96 objects:v107 count:16];
  if (v3)
  {
    v4 = *v97;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v97 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v96 + 1) + 8 * i);
        v7 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "trying to remove %{public}@ from connecting list", buf, 0xCu);
        }

        sub_100754B04(a1, v6);
      }

      v3 = [v2 countByEnumeratingWithState:&v96 objects:v107 count:16];
    }

    while (v3);
  }

  [*(a1 + 776) removeAllObjects];
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v8 = *(a1 + 768);
  v9 = [v8 countByEnumeratingWithState:&v89 objects:v106 count:16];
  if (v9)
  {
    v10 = *v90;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v90 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v89 + 1) + 8 * j);
        v13 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "trying to add %{public}@ to the connecting list", buf, 0xCu);
        }

        if (sub_10074B0D4(a1, v12) == 8)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_10004DFB4(buf, v12);
          v14 = v94;
          if (v94 >= v95)
          {
            v15 = sub_10077571C(&v93, buf);
          }

          else
          {
            uuid_copy(v94, buf);
            v15 = v14 + 16;
          }

          v94 = v15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v89 objects:v106 count:16];
    }

    while (v9);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = *(a1 + 784);
  v16 = [obj countByEnumeratingWithState:&v85 objects:v105 count:16];
  if (v16)
  {
    v75 = *v86;
    v17 = (a1 + 368);
    v73 = &buf[8];
    p_info = &OBJC_METACLASS___BTVCDevice.info;
    v19 = &OBJC_METACLASS___BTVCDevice.info;
    do
    {
      v76 = v16;
      for (k = 0; k != v76; k = k + 1)
      {
        if (*v86 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v85 + 1) + 8 * k);
        v83 = 0;
        v84 = 0;
        __p = &v83;
        v22 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "processing %{public}@ from fDevicesToUpdateInFilterAcceptList", buf, 0xCu);
        }

        if (p_info[282] != -1)
        {
          sub_10086DE2C();
        }

        if (sub_100790420(v19[281], v21))
        {
          if (p_info[282] != -1)
          {
            sub_10086DE2C();
          }

          sub_1000AFD60(v19[281], v21, 2u, buf);
          sub_10000CEDC(&__p, v83);
          v23 = *&buf[8];
          __p = *buf;
          v83 = *&buf[8];
          v84 = *&buf[16];
          if (*&buf[16])
          {
            *(*&buf[8] + 16) = &v83;
            *buf = &buf[8];
            *&buf[8] = 0;
            *&buf[16] = 0;
            v23 = 0;
          }

          else
          {
            __p = &v83;
          }

          sub_10000CEDC(buf, v23);
          if (v84)
          {
            v27 = 0;
            goto LABEL_50;
          }

          v55 = qword_100BCE980;
          if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
LABEL_107:
            v56 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v21;
              _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Device %{public}@ has no addresses, disconnecting ", buf, 0xCu);
            }

            goto LABEL_109;
          }

          *buf = 138543362;
          *&buf[4] = v21;
          _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Device %{public}@ has no addresses, disconnecting ", buf, 0xCu);
          v27 = 101;
        }

        else
        {
          if (p_info[282] != -1)
          {
            sub_10086DE2C();
          }

          v24 = sub_100046458(v19[281], v21, 0);
          *v101 = v24;
          v25 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            v26 = sub_1007774DC();
            *buf = 138412290;
            *&buf[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updating connecting address to %@", buf, 0xCu);

            v24 = *v101;
          }

          if (v24)
          {
            sub_10005B93C(&__p, v101);
          }

          v27 = 0;
        }

        if (!v84)
        {
          goto LABEL_107;
        }

LABEL_50:
        v28 = *(a1 + 360);
        if (v28 != v17)
        {
          do
          {
            sub_10004DFB4(buf, v21);
            v29 = uuid_compare(v28 + 40, buf);
            if (v29)
            {
              v30 = v28[1];
              if (v30)
              {
                do
                {
                  v31 = v30;
                  v30 = *v30;
                }

                while (v30);
              }

              else
              {
                do
                {
                  v31 = v28[2];
                  v37 = *v31 == v28;
                  v28 = v31;
                }

                while (!v37);
              }
            }

            else
            {
              v32 = sub_1007564FC(v29, v28[4]);
              v33 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
              {
                sub_10004D9B0();
                v34 = buf;
                if ((buf[23] & 0x80u) != 0)
                {
                  v34 = *buf;
                }

                *v101 = 136446466;
                *&v101[4] = v34;
                v102 = 1024;
                LODWORD(v103) = v32;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "removeAddressFromBTController %{public}s returned %d", v101, 0x12u);
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }
              }

              v31 = sub_10002717C((a1 + 360), v28);
              operator delete(v28);
            }

            v28 = v31;
          }

          while (v31 != v17);
        }

        v35 = __p;
        if (__p == &v83)
        {
          if (!v27)
          {
            goto LABEL_115;
          }
        }

        else
        {
          while (1)
          {
            v81 = v35[4];
            v36 = sub_1007566C0(a1, v81);
            v27 = v36;
            v37 = !v36 || v36 == 4152;
            if (!v37)
            {
              break;
            }

            v38 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              sub_10004D9B0();
              v39 = buf;
              if ((buf[23] & 0x80u) != 0)
              {
                v39 = *buf;
              }

              *v101 = 136446466;
              *&v101[4] = v39;
              v102 = 2114;
              v103 = v21;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "setting fConnectingAddresses[%{public}s]=%{public}@", v101, 0x16u);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            sub_10004DFB4(buf, v21);
            *v101 = &v81;
            v40 = sub_100774770(a1 + 360, &v81);
            uuid_copy(v40 + 40, buf);
            v41 = v35[1];
            if (v41)
            {
              do
              {
                v42 = v41;
                v41 = *v41;
              }

              while (v41);
            }

            else
            {
              do
              {
                v42 = v35[2];
                v37 = *v42 == v35;
                v35 = v42;
              }

              while (!v37);
            }

            v35 = v42;
            if (v42 == &v83)
            {
              goto LABEL_115;
            }
          }
        }

        v43 = __p;
        if (__p != &v83)
        {
          do
          {
            v44 = *v17;
            if (*v17)
            {
              v45 = v43[4];
              v46 = (a1 + 368);
              do
              {
                v47 = v44[4];
                v48 = v47 >= v45;
                v49 = v47 < v45;
                if (v48)
                {
                  v46 = v44;
                }

                v44 = v44[v49];
              }

              while (v44);
              if (v46 != v17 && v45 >= v46[4])
              {
                v50 = qword_100BCE980;
                v51 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                if (v51)
                {
                  sub_10004D9B0();
                  v52 = v101;
                  if (v104 < 0)
                  {
                    v52 = *v101;
                  }

                  *buf = 136315650;
                  *&buf[4] = v52;
                  *&buf[12] = 2112;
                  *&buf[14] = v21;
                  *&buf[22] = 1024;
                  *&buf[24] = v27;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "removing address %s from controller for device %@ due to error %d", buf, 0x1Cu);
                  if (v104 < 0)
                  {
                    operator delete(*v101);
                  }
                }

                sub_1007564FC(v51, v45);
                sub_10002717C((a1 + 360), v46);
                operator delete(v46);
              }
            }

            v53 = v43[1];
            if (v53)
            {
              do
              {
                v54 = v53;
                v53 = *v53;
              }

              while (v53);
            }

            else
            {
              do
              {
                v54 = v43[2];
                v37 = *v54 == v43;
                v43 = v54;
              }

              while (!v37);
            }

            v43 = v54;
          }

          while (v54 != &v83);
        }

LABEL_109:
        sub_10004DFB4(buf, v21);
        if ((sub_10074AB80(a1, buf) & 1) == 0)
        {
          sub_10004DFB4(buf, v21);
          v57 = sub_1005FF344(a1 + 336, buf);
          if ((a1 + 344) != v57)
          {
            sub_10002717C((a1 + 336), v57);
            operator delete(v57);
            sub_1007440F4(a1, *(a1 + 352) != 0);
          }

          v58 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Sending device connection error for device %@", buf, 0xCu);
          }

          sub_10004DFB4(buf, v21);
          sub_100756884(a1, buf, 0, 8, 0);
        }

LABEL_115:
        sub_10000CEDC(&__p, v83);
        p_info = (&OBJC_METACLASS___BTVCDevice + 32);
        v19 = (&OBJC_METACLASS___BTVCDevice + 32);
      }

      v16 = [obj countByEnumeratingWithState:&v85 objects:v105 count:16];
    }

    while (v16);
  }

  [*(a1 + 784) removeAllObjects];
  [*(a1 + 768) removeAllObjects];
  v59 = v93;
  v60 = v94;
  if (v93 != v94)
  {
    do
    {
      v61 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v59, buf);
        sub_100007E30(&__p, buf);
        v62 = v84 >= 0 ? &__p : __p;
        *v101 = 136446210;
        *&v101[4] = v62;
        _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "Failed to connect to device %{public}s due to 0 address", v101, 0xCu);
        if (SHIBYTE(v84) < 0)
        {
          operator delete(__p);
        }
      }

      sub_100756884(a1, v59, 0, 8, 0);
      v59 += 16;
    }

    while (v59 != v60);
  }

  v63 = sub_10000C7D0();
  if (sub_10008215C(v63, 100))
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v64 = *(a1 + 792);
    v65 = [v64 countByEnumeratingWithState:&v77 objects:v100 count:16];
    if (!v65)
    {
      goto LABEL_144;
    }

    v66 = *v78;
    while (1)
    {
      for (m = 0; m != v65; m = m + 1)
      {
        if (*v78 != v66)
        {
          objc_enumerationMutation(v64);
        }

        v68 = *(*(&v77 + 1) + 8 * m);
        if (sub_100756A60(a1, v68))
        {
          v69 = qword_100BCE980;
          if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          *buf = 138543362;
          *&buf[4] = v68;
          v70 = v69;
          v71 = "Warning: LeConnectionDenyList: Device %{public}@ is currently blocked, ignoring request to add to filter accept list";
          goto LABEL_141;
        }

        sub_10004DFB4(buf, v68);
        if (a1 + 344 != sub_1005FF344(a1 + 336, buf))
        {
          sub_1007550C4(a1, v68, 1);
          continue;
        }

        v72 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v68;
          v70 = v72;
          v71 = "not connecting to Device Device %{public}@ any more, ignoring update filter accept list option";
LABEL_141:
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, v71, buf, 0xCu);
          continue;
        }
      }

      v65 = [v64 countByEnumeratingWithState:&v77 objects:v100 count:16];
      if (!v65)
      {
LABEL_144:

        break;
      }
    }
  }

  [*(a1 + 792) removeAllObjects];
  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_100756414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007564FC(uint64_t a1, unint64_t a2)
{
  v2 = sub_10009A66C(a2);
  v8 = v2;
  v10 = BYTE6(v2);
  v9 = WORD2(v2);
  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100063D0C();
    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2113;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing address %{private, mask.hash}@ from connection FilterAcceptList, waiting for controller to complete.", buf, 0x16u);
  }

  v7 = 0;
  sub_1000216B4(&v7);
  byte_100BCECA9 = 1;
  v5 = sub_1002E94CC(&v8);
  sub_100022214(&v7);
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870354();
    }

    byte_100BCECA9 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, &unk_100BCEC68);
    if (byte_100BCECA9 == 1)
    {
      sub_1003645F8(&stru_100BCEBF8, buf);
    }

    sub_10000801C(buf);
    sub_1000088CC(buf);
  }

  sub_10002249C(&v7);
  return v5;
}

uint64_t sub_1007566C0(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 184) != 1)
  {
    return 103;
  }

  v2 = sub_10009A66C(a2);
  v8 = v2;
  v10 = BYTE6(v2);
  v9 = WORD2(v2);
  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100063D0C();
    *buf = 138477827;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding address %{private}@ to connection FilterAcceptList, waiting for controller to complete.", buf, 0xCu);
  }

  v7 = 0;
  sub_1000216B4(&v7);
  byte_100BCECA8 = 1;
  v5 = sub_1002E9140(&v8);
  sub_100022214(&v7);
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008703C4();
    }

    byte_100BCECA8 = 0;
  }

  else
  {
    *buf = 0uLL;
    sub_100007F88(buf, &unk_100BCEC28);
    if (byte_100BCECA8 == 1)
    {
      sub_1003645F8(&stru_100BCEBC8, buf);
    }

    sub_10000801C(buf);
    sub_1000088CC(buf);
  }

  sub_10002249C(&v7);
  return v5;
}

void sub_100756884(uint64_t a1, const unsigned __int8 *a2, int a3, int a4, char a5)
{
  v10 = *(a1 + 400);
  v11 = sub_10004DF60(a2);
  v12 = sub_100017F4C();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10076046C;
  v21[3] = &unk_100B0B620;
  v23 = v10;
  v13 = v11;
  v22 = v13;
  v24 = a3;
  sub_10000CA94(v12, v21);
  if (qword_100B54208 != -1)
  {
    sub_10086E578();
  }

  v14 = qword_100B54200;
  v15 = sub_10004DF60(a2);
  if (a3)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  sub_1007F1548(v14, v15, v16);

  if (a4 != 305 && (a3 & 1) == 0)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100760694;
    v17[3] = &unk_100B0B648;
    v20 = a5;
    v18 = v13;
    v19 = a4;
    sub_10074063C(a1, v17);
  }
}

uint64_t sub_100756A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 1472);
  v5 = (a1 + 1480);
  if (v4 == v5)
  {
LABEL_11:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      sub_10004DFB4(uu2, v3);
      if (!uuid_compare(v4 + 32, uu2) && (*(v4 + 9) || *(v4 + 10)))
      {
        break;
      }

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
      if (v7 == v5)
      {
        goto LABEL_11;
      }
    }

    v9 = 1;
  }

  return v9;
}

uint64_t sub_100756B64(uint64_t a1, int a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 120);
  v4 = *(a1 + 384);
  if (v4 == (a1 + 392))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v6 = off_100B508C8;
      v7 = sub_10004DF60(v4 + 32);
      if (sub_100788D8C(v6, v7) == a2)
      {
        v8 = sub_10004DF60(v4 + 32);
        sub_10004DFB4(v15, v8);
        v9 = sub_10074AB80(a1, v15);

        v5 += (v9 ^ 1) & 1;
      }

      else
      {
      }

      v10 = *(v4 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != (a1 + 392));
  }

  sub_1000088CC(v14);
  return v5;
}

void sub_100756CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100756D10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v20[0] = 0;
  v20[1] = 0;
  v19 = a1;
  sub_100007F88(v20, a1 + 120);
  v6 = 0;
  if (v5 && a3)
  {
    if (![v5 length] || (v7 = *(a1 + 384), v7 == (v19 + 392)))
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v8 = off_100B508C8;
        v9 = sub_10004DF60(v7 + 32);
        v10 = sub_10078C3D4(v8, v9, v5);

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v11 = off_100B508C8;
        v12 = sub_10004DF60(v7 + 32);
        LODWORD(v11) = sub_10078C680(v11, v12, a3);

        if (v10 & v11)
        {
          v13 = sub_10004DF60(v7 + 32);
          sub_10004DFB4(v21, v13);
          v14 = sub_10074AB80(v19, v21);

          v6 += (v14 ^ 1) & 1;
        }

        v15 = *(v7 + 1);
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
            v16 = *(v7 + 2);
            v17 = *v16 == v7;
            v7 = v16;
          }

          while (!v17);
        }

        v7 = v16;
      }

      while (v16 != (v19 + 392));
    }
  }

  sub_1000088CC(v20);

  return v6;
}

void sub_100756EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100756F48(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, __int16 a5, unsigned int a6, uint64_t a7)
{
  v14 = sub_10000C7D0();
  if (!(*(*v14 + 2456))(v14))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870434();
    }

    return 11;
  }

  v54[0] = 0;
  if (sub_1000C4FCC(a1, a2, v54))
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    if (!a4)
    {
      v24 = sub_1007746F4(a1 + 800, a2);
      if ((a1 + 808) != v24)
      {
        v25 = v24;
        sub_10002717C((a1 + 800), v24);
        operator delete(v25);
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v21 = 0;
      v19 = 0;
      v17 = 0;
      goto LABEL_62;
    }

    v15 = sub_10000C7D0();
    if ((*(*v15 + 2464))(v15))
    {
      v54[2] = a2;
      *(sub_100775934(a1 + 800, a2) + 42) = a5;
      v16 = sub_10004DF60(a2);
      v17 = sub_1007424C8(v16, v16);

      v18 = sub_10004DF60(a2);
      v19 = sub_100742080(a1, v18);

      if (a6 && a7)
      {
        v20 = 0;
        if (a6 >= 5)
        {
          v21 = 5;
        }

        else
        {
          v21 = a6;
        }

        do
        {
          if (v20 >= a6)
          {
            v22 = 0;
          }

          else
          {
            v22 = *(a7 + 4 * v20);
          }

          *(&v55 + v20++) = v22;
        }

        while (v20 != 5);
      }

      else
      {
        v55 = 0x2FA000002C4;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v30 = off_100B508C8;
        v31 = sub_10004DF60(a2);
        sub_100007E30(v52, "A1603");
        if (sub_10004EB40(v30, v31, v52))
        {
          v32 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v33 = off_100B508C8;
          v34 = sub_10004DF60(a2);
          sub_100007E30(v50, "A2051");
          if (sub_10004EB40(v33, v34, v50))
          {
            v32 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v35 = off_100B508C8;
            v36 = sub_10004DF60(a2);
            sub_100007E30(v48, "A3085");
            if (sub_10004EB40(v35, v36, v48))
            {
              v32 = 1;
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v37 = off_100B508C8;
              v43 = sub_10004DF60(a2);
              sub_100007E30(v46, "A2538");
              if (sub_10004EB40(v37, v43, v46))
              {
                v32 = 1;
              }

              else
              {
                if (qword_100B508D0 != -1)
                {
                  sub_10086DE2C();
                }

                v38 = off_100B508C8;
                v39 = sub_10004DF60(a2);
                sub_100007E30(__p, "_HID_DEVICE_");
                v32 = sub_10004EB40(v38, v39, __p);
                if (v45 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (v47 < 0)
              {
                operator delete(v46[0]);
              }
            }

            if (v49 < 0)
            {
              operator delete(v48[0]);
            }
          }

          if (v51 < 0)
          {
            operator delete(v50[0]);
          }
        }

        if (v53 < 0)
        {
          operator delete(v52[0]);
        }

        if (v32)
        {
          v21 = 3;
          LODWORD(v56) = 719;
        }

        else
        {
          v21 = 2;
        }
      }

      v29 = 48;
      v28 = 6;
      v27 = 20;
      v26 = 480;
LABEL_62:
      v40 = v54[0];
      if (v54[0])
      {
        v41 = sub_10000C7D0();
        HIWORD(v42) = v26;
        BYTE4(v42) = v28;
        WORD1(v42) = v29;
        LOWORD(v42) = v29;
        (*(*v41 + 2080))(v41, *v40, a3, a4, v21, &v55, v19, v17, v42, v27);
      }

      return 0;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008704AC();
    }

    return 11;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100870470();
  }

  return 7;
}

void sub_10075749C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100757568(uint64_t a1, unsigned __int16 *a2)
{
  v64 = 0;
  v62 = -31;
  v63 = 1;
  v61 = -30;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionEnable");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v64);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  v4 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionEnable enable=(%d)", buf, 8u);
  }

LABEL_9:
  v5 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionWindow");
  v6 = (*(*v5 + 88))(v5, buf, __p, &v63);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v63;
  v8 = qword_100BCE980;
  if (v63 >= 3)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870558();
    }

    return 3;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionWindow (%d)", buf, 8u);
  }

LABEL_20:
  v9 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionFurther");
  v10 = (*(*v9 + 88))(v9, buf, __p, &v62);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v10)
    {
      goto LABEL_28;
    }
  }

  else if (!v10)
  {
    goto LABEL_28;
  }

  v11 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v62;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionFurther (%d)", buf, 8u);
  }

LABEL_28:
  v12 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCloser");
  v13 = (*(*v12 + 88))(v12, buf, __p, &v61);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  else if (!v13)
  {
    goto LABEL_36;
  }

  v14 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v61;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCloser (%d)", buf, 8u);
  }

LABEL_36:
  v15 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionVar1");
  v16 = (*(*v15 + 88))(v15, buf, __p, &v60 + 4);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  else if (!v16)
  {
    goto LABEL_44;
  }

  v17 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = HIDWORD(v60);
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionVar1 (%d)", buf, 8u);
  }

LABEL_44:
  v18 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionVar2");
  v19 = (*(*v18 + 88))(v18, buf, __p, &v60);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v19)
    {
      goto LABEL_52;
    }
  }

  else if (!v19)
  {
    goto LABEL_52;
  }

  v20 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v60;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionVar2 (%d)", buf, 8u);
  }

LABEL_52:
  v21 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionDebug");
  v22 = (*(*v21 + 88))(v21, buf, __p, &v59 + 4);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v22)
    {
      goto LABEL_64;
    }
  }

  else if (!v22)
  {
    goto LABEL_64;
  }

  v23 = HIDWORD(v59);
  v24 = qword_100BCE980;
  if (HIDWORD(v59) >= 2)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008704E8();
    }

    return 3;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionDebug (%d)", buf, 8u);
  }

LABEL_64:
  v26 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionMaskDecisionLogic");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v59);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_72;
    }
  }

  else if (!v27)
  {
    goto LABEL_72;
  }

  v28 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v59;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionMaskDecisionLogic (%d)", buf, 8u);
  }

LABEL_72:
  v29 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCMCheckLogic");
  v30 = (*(*v29 + 88))(v29, buf, __p, &v58 + 4);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v30)
    {
      goto LABEL_80;
    }
  }

  else if (!v30)
  {
    goto LABEL_80;
  }

  v31 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = HIDWORD(v58);
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionMCMCheckLogic (%d)", buf, 8u);
  }

LABEL_80:
  v32 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCM_AND_Mask");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v58);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_88;
    }
  }

  else if (!v33)
  {
    goto LABEL_88;
  }

  v34 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v58;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCM_AND_Mask (%d)", buf, 8u);
  }

LABEL_88:
  v35 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCM_XOR_Mask");
  v36 = (*(*v35 + 88))(v35, buf, __p, &v57 + 4);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v36)
    {
      goto LABEL_96;
    }
  }

  else if (!v36)
  {
    goto LABEL_96;
  }

  v37 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = HIDWORD(v57);
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCM_XOR_Mask (%d)", buf, 8u);
  }

LABEL_96:
  v38 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "ForceRSSIDetectionCM_AND_Mask2");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v57);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(*buf);
    if (!v39)
    {
      goto LABEL_104;
    }

LABEL_102:
    v40 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v57;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Using override value for  ForceRSSIDetectionCM_AND_Mask2 (%d)", buf, 8u);
    }

    goto LABEL_104;
  }

  if (v39)
  {
    goto LABEL_102;
  }

LABEL_104:
  if (v64 != 1)
  {
    return 1501;
  }

  v53 = v63;
  v41 = v62;
  v42 = v61;
  v44 = v60;
  v43 = WORD2(v60);
  v46 = BYTE4(v58);
  v45 = v59;
  v47 = HIDWORD(v57);
  v48 = v57;
  v49 = BYTE4(v59);
  v50 = sub_10000C7D0();
  LOBYTE(v52) = v49;
  HIWORD(v51) = v45;
  WORD2(v51) = v44;
  WORD1(v51) = v43;
  BYTE1(v51) = v42;
  LOBYTE(v51) = v42;
  return (*(*v50 + 2112))(v50, 1, *a2, v53, v41, v41, v41, v42, v51, v46, __PAIR64__(v48, v47), v52);
}

void sub_10075817C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_100758210(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = a2;
  sub_100007AD0(&v35);
  if (v26)
  {
    if (a4)
    {
      if (qword_100B512F8 != -1)
      {
        sub_1008705C8();
      }

      v7 = sub_1003ADE54(off_100B512F0, v26);
      v8 = [NSMutableSet setWithArray:v7];
    }

    else
    {
      if (qword_100B54208 != -1)
      {
        sub_10086E578();
      }

      v7 = sub_1007F1E20(qword_100B54200, v26);
      v8 = [NSMutableSet setWithSet:v7];
    }

    v9 = v8;

    if (qword_100B540F0 != -1)
    {
      sub_1008705F0();
    }

    v10 = sub_100369260(qword_100B540E8, v26);
    [v9 addObjectsFromArray:v10];

    if ([v9 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v31 objects:v54 count:16];
      if (v12)
      {
        v13 = *v32;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            v16 = v15;
            strlen([v15 UTF8String]);
            v17 = sub_100007774(&v36);
            sub_100007774(v17);
          }

          v12 = [v11 countByEnumeratingWithState:&v31 objects:v54 count:16];
        }

        while (v12);
      }

      v52 = 0;
      v53 = 0;
      std::ostream::sentry::sentry();
      v18 = &v36 + *(v36 - 24);
      if ((v18[32] & 5) == 0)
      {
        (*(**(v18 + 5) + 32))(v55);
        if (v57 == -1)
        {
          std::ios_base::clear((&v36 + *(v36 - 24)), *&v38[*(v36 - 24)] | 4);
        }
      }

      std::ostream::sentry::~sentry();
      LOBYTE(v55[0]) = 0;
      sub_100007774(&v36);
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v19 = off_100B508C8;
      sub_100007E30(__p, "HasTS");
      sub_10004EB40(v19, v26, __p);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100007774(&v36);
    }
  }

  else
  {
    sub_100007774(&v36);
  }

  if (a5)
  {
    v52 = &off_100AE0A78;
    v53 = 0;
    v20 = sub_100432718();
    std::stringbuf::str();
    if (v56 >= 0)
    {
      v21 = v55;
    }

    else
    {
      v21 = v55[0];
    }

    v27 = &off_100AE0A78;
    v28 = v53;
    if (v53)
    {
      sub_10000C69C(v53);
    }

    (*(*v20 + 40))(v20, a3, v21, v26, &v27);
    v27 = &off_100AE0A78;
    if (v28)
    {
      sub_10000C808(v28);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    v52 = &off_100AE0A78;
    if (v53)
    {
      sub_10000C808(v53);
    }
  }

  if (a3 == 5 || a3 == 3)
  {
    v22 = sub_100432718();
    std::stringbuf::str();
    v23 = v56 >= 0 ? v55 : v55[0];
    (*(*v22 + 8))(v22, v23, a3 == 3, v26);
    if (v56 < 0)
    {
      operator delete(v55[0]);
    }
  }

  *&v36 = v24;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(*(&v39 + 1));
  }

  std::locale::~locale(&v37);
  std::iostream::~basic_iostream();
  std::ios::~ios();
}

void sub_1007588AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::ostream::sentry::~sentry();

  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007589C8(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v7 = a2 > 2 || (a4 | a3) > 1 || a5 > 0x64 || a2 == 0;
  v8 = v7;
  if (v7)
  {
    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      v15 = "ok";
      v19[0] = 67110914;
      v16 = "VSC call not required";
      v19[1] = a2;
      if (a2)
      {
        v16 = "ok";
      }

      v20 = 2080;
      if (a2 > 2)
      {
        v16 = "Can't be >2";
      }

      v21 = v16;
      v22 = 1024;
      v23 = a3;
      v17 = "Can't be >1";
      v24 = 2080;
      if (a3 <= 1)
      {
        v18 = "ok";
      }

      else
      {
        v18 = "Can't be >1";
      }

      v25 = v18;
      if (a4 <= 1)
      {
        v17 = "ok";
      }

      v26 = 1024;
      v27 = a4;
      if (a5 > 0x64)
      {
        v15 = "Can't be >100";
      }

      v28 = 2080;
      v29 = v17;
      v30 = 1024;
      v31 = a5;
      v32 = 2080;
      v33 = v15;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "SetConnectionPrioritization argument out of range: {priority:%d (%s), protectWLAN:%d (%s), protectLEA:%d (%s), percentageWithCriticalPriority:%d (%s)}", v19, 0x42u);
    }
  }

  return v8 ^ 1u;
}

uint64_t sub_100758B40(uint64_t a1, unint64_t a2, int a3, unsigned __int16 *a4, int a5, int a6)
{
  v279[1] = 0;
  v279[0] = 0;
  sub_100007F88(v279, a1 + 120);
  v278 = 0;
  if (qword_100BC7B08 != -1)
  {
    sub_100870618();
  }

  v277 = 0;
  sub_1000216B4(&v277);
  v8 = sub_10009A66C(a2);
  v274 = v8;
  v276 = BYTE6(v8);
  v275 = WORD2(v8);
  v9 = sub_1000ABD24(a4);
  if (v9)
  {
    v10 = sub_100255698(a4);
    v11 = sub_1002D007C(a4, &v278);
    v12 = sub_1002D02B4(a4);
    v240 = v11 != 0;
  }

  else
  {
    v10 = 0;
    v240 = 0;
    v12 = 0;
  }

  sub_100022214(&v277);
  v242 = v9;
  v239 = v10;
  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100063D0C();
    v15 = sub_100063D0C();
    *buf = 138544642;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 1024;
    *&buf[24] = a5;
    *&buf[28] = 1024;
    *&buf[30] = v9;
    *&buf[34] = 1024;
    *&buf[36] = a6;
    *&buf[40] = 2112;
    *&buf[42] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "handleConnectionCompleteCallback address=%{public}@ handle=%p status=%d connectionIsActive=%d, wakeupEvent=%d bdAddr=%@", buf, 0x32u);
  }

  if (!a5 || *(a1 + 864) != 3)
  {
    if (*(a1 + 1067) == 1)
    {
      v17 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "Stack is shutting down, this is most likely an orphan event dispatched late, ignoring";
        goto LABEL_21;
      }

      goto LABEL_422;
    }

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    if (a5)
    {
      if (a5 > 710)
      {
        if (a5 != 713)
        {
          if (a5 != 711)
          {
LABEL_84:
            v58 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              v59 = sub_100063D0C();
              *buf = 138543618;
              *&buf[4] = v59;
              *&buf[12] = 1024;
              *&buf[14] = a5;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Failed to connect to device %{public}@ with result %{bluetooth:OI_STATUS}u", buf, 0x12u);
            }

            if (a3 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
            {
              sub_1008707E4();
            }

LABEL_92:
            sub_100745874(a1, 0);
LABEL_93:
            v47 = 1;
            goto LABEL_410;
          }

          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          sub_1000498D4(off_100B508C8, a2, 1u, 0, 0, 0, buf);
          uuid_copy(uu, buf);
          is_null = uuid_is_null(uu);
          v46 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
          if (is_null)
          {
            if (v46)
            {
              sub_100063D0C();
              objc_claimAutoreleasedReturnValue();
              sub_10087072C();
            }

            goto LABEL_422;
          }

          if (v46)
          {
            sub_1000D67B4(uu, buf);
            sub_100870778();
          }

          if (sub_10074738C(a1, uu))
          {
            v60 = sub_10004DF60(uu);
            sub_100754B04(a1, v60);

            if ([*(a1 + 752) count])
            {
              v61 = [*(a1 + 752) anyObject];
              [*(a1 + 752) removeObject:v61];
              v62 = qword_100BCE980;
              if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
              {
                *v280 = 138543362;
                v281 = v61;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Moving device %{public}@ off of the overflow list now that there's room", v280, 0xCu);
              }

              sub_10074B0D4(a1, v61);
            }
          }

          if (*(a1 + 864) == 1)
          {
            v63 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *v280 = 0;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Connection already exists", v280, 2u);
            }

            goto LABEL_92;
          }

LABEL_70:
          v47 = 0;
LABEL_410:
          v232 = sub_10004DF60(uu);
          sub_100758210(v232, v232, 3, a3, a6);

          v233 = *(a1 + 928);
          if (v233)
          {
            v43 = qword_100BCE980;
            if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_422;
            }

            if (v233 > 3)
            {
              v234 = "UNKNOWN";
            }

            else
            {
              v234 = off_100B0BE78[v233 - 1];
            }

            *v280 = 136446210;
            v281 = v234;
            v18 = "Skipping processConnectingDevices, current LE Connection Manager State is %{public}s";
            v19 = v280;
LABEL_420:
            v20 = v43;
            v21 = 12;
            goto LABEL_421;
          }

          if (!v47)
          {
            v235 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *v280 = 67109120;
              LODWORD(v281) = 0;
              v18 = "Skipping processConnectingDevices, reissueConnections=%d";
              v19 = v280;
              v20 = v235;
              v21 = 8;
              goto LABEL_421;
            }

            goto LABEL_422;
          }

LABEL_415:
          sub_1007556FC(a1);
          sub_100753CFC(a1);
          goto LABEL_422;
        }
      }

      else
      {
        if (a5 == 157)
        {
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_100870640();
          }

          if (a3)
          {
            goto LABEL_93;
          }

          goto LABEL_92;
        }

        if (a5 != 709)
        {
          goto LABEL_84;
        }
      }

      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1008706BC();
      }

      *(a1 + 1065) = 1;
      sub_100745874(a1, 0);
      goto LABEL_70;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    sub_1000498D4(off_100B508C8, a2, 1u, 0, 0, 0, buf);
    uuid_copy(uu, buf);
    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100063D0C();
        objc_claimAutoreleasedReturnValue();
        sub_100870864();
      }

      sub_1000618AC(&v277);
      sub_1002D1EAC(&v274);
      sub_100022214(&v277);
      if (a3)
      {
        goto LABEL_422;
      }

      if (!*(a1 + 352))
      {
        sub_100745874(a1, 0);
        goto LABEL_422;
      }

      sub_100745874(a1, 1u);
      goto LABEL_415;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v48 = off_100B508C8;
    v49 = sub_10004DF60(uu);
    sub_10078C720(v48, v49, 1, 2, 0);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v50 = off_100B508C8;
    v51 = sub_10004DF60(uu);
    sub_10078B574(v50, v51, 1, a2);

    v52 = sub_10074738C(a1, uu);
    if (!v52)
    {
      if ((a3 & 1) == 0)
      {
        v68 = *(a1 + 368);
        v69 = a2;
        if (!v68)
        {
          goto LABEL_137;
        }

        v70 = a1 + 368;
        do
        {
          v71 = *(v68 + 32);
          v72 = v71 >= a2;
          v73 = v71 < a2;
          if (v72)
          {
            v70 = v68;
          }

          v68 = *(v68 + 8 * v73);
        }

        while (v68);
        if (v70 == a1 + 368 || *(v70 + 32) > a2)
        {
LABEL_137:
          v79 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
          {
            sub_1000D67B4(uu, buf);
            v80 = buf[23];
            v81 = *buf;
            v82 = sub_100063D0C();
            v83 = v82;
            v84 = buf;
            if (v80 < 0)
            {
              v84 = v81;
            }

            *v284 = 136446466;
            *&v284[4] = v84;
            v285 = 2114;
            v286 = v82;
            _os_log_fault_impl(&_mh_execute_header, v79, OS_LOG_TYPE_FAULT, "We have a successful outgoing connection to device %{public}s(%{public}@) but we never asked to connect to it", v284, 0x16u);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v85 = sub_10000E92C();
          sub_100007E30(v255, "");
          sub_100693260(v85, 132, v255, 1);
        }

        v74 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR);
        if (v74)
        {
          sub_100063D0C();
          objc_claimAutoreleasedReturnValue();
          sub_1008708B0();
          v69 = a2;
        }

        sub_1007564FC(v74, v69);
        v75 = sub_1005FF344(a1 + 336, (v70 + 40));
        if ((a1 + 344) != v75)
        {
          sub_10002717C((a1 + 336), v75);
          operator delete(v75);
        }

        sub_10002717C((a1 + 360), v70);
        operator delete(v70);
        sub_100745874(a1, 0);
        sub_1000618AC(&v277);
        sub_1002D1EAC(&v274);
        sub_100022214(&v277);
        if (!*(a1 + 928))
        {
          sub_1007556FC(a1);
          sub_100753CFC(a1);
        }

        goto LABEL_422;
      }

      v47 = 0;
LABEL_244:
      sub_100757568(v52, a4);
      *buf = uu;
      *(sub_100773D48(a1 + 384, uu) + 48) = a4;
      if (!v9)
      {
        v175 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v176 = "Incoming";
          }

          else
          {
            v176 = "Outgoing";
          }

          if (a3)
          {
            v177 = "from";
          }

          else
          {
            v177 = "to";
          }

          sub_1000D67B4(uu, v284);
          v178 = v287;
          v179 = *v284;
          v180 = sub_100063D0C();
          if (v178 >= 0)
          {
            v181 = v284;
          }

          else
          {
            v181 = v179;
          }

          v182 = v180;
          *buf = 136447234;
          *&buf[4] = v176;
          *&buf[12] = 2082;
          *&buf[14] = v177;
          *&buf[22] = 2082;
          *&buf[24] = v181;
          *&buf[32] = 2114;
          *&buf[34] = v182;
          *&buf[42] = 2048;
          *&buf[44] = a4;
          _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "%{public}s connection %{public}s device %{public}s (%{public}@) with handle:%p was successful but already disconnected", buf, 0x34u);

          if (v287 < 0)
          {
            operator delete(*v284);
          }
        }

        goto LABEL_405;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v139 = off_100B508C8;
      v140 = sub_10004DF60(uu);
      sub_10078BCE4(v139, v140, a3 ^ 1);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v141 = off_100B508C8;
      v142 = sub_10004DF60(uu);
      sub_10078BD70(v141, v142, 0);

      v143 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v144 = "Incoming";
        }

        else
        {
          v144 = "Outgoing";
        }

        if (a3)
        {
          v145 = "from";
        }

        else
        {
          v145 = "to";
        }

        sub_1000D67B4(uu, v284);
        v146 = v287;
        v147 = *v284;
        v148 = sub_100063D0C();
        if (v146 >= 0)
        {
          v149 = v284;
        }

        else
        {
          v149 = v147;
        }

        v150 = v148;
        *buf = 136447746;
        *&buf[4] = v144;
        *&buf[12] = 2082;
        *&buf[14] = v145;
        *&buf[22] = 2082;
        *&buf[24] = v149;
        *&buf[32] = 2114;
        *&buf[34] = v150;
        *&buf[42] = 2048;
        *&buf[44] = a4;
        *&buf[52] = 1024;
        *&buf[54] = v278;
        *&buf[58] = 1024;
        *&buf[60] = 1;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%{public}s connection %{public}s device %{public}s (%{public}@) with handle:%p was successful with connection interval %d active=%d", buf, 0x40u);

        if (v287 < 0)
        {
          operator delete(*v284);
        }
      }

      v151 = 0.35;
      if (v278 < 0x308u)
      {
        v151 = 0.75;
      }

      v152 = (v151 * (10 * v12) / (v278 * 1.25));
      v153 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D67B4(uu, v284);
        v154 = v287 >= 0 ? v284 : *v284;
        *buf = 136446978;
        *&buf[4] = v154;
        *&buf[12] = 1024;
        *&buf[14] = v152;
        *&buf[18] = 1024;
        *&buf[20] = v278;
        *&buf[24] = 1024;
        *&buf[26] = v12;
        _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "Connection Complete: setting LE device %{public}s connection threshold to %d events with interval %d, LSTO %d", buf, 0x1Eu);
        if (v287 < 0)
        {
          operator delete(*v284);
        }
      }

      v155 = sub_10000C798();
      if (!(*(*v155 + 360))(v155))
      {
        goto LABEL_274;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v156 = off_100B508C8;
      v157 = sub_10004DF60(uu);
      LOBYTE(v156) = sub_1000D5D08(v156, v157);

      if (v156)
      {
LABEL_274:
        v158 = sub_10000C7D0();
        if (v152 >= 0xFF)
        {
          v159 = 255;
        }

        else
        {
          v159 = v152;
        }

        if ((*(*v158 + 1064))(v158, a4, v159) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_1008708FC();
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v160 = off_100B508C8;
      v161 = sub_10004DF60(uu);
      v162 = sub_100788D8C(v160, v161);

      if (qword_100B50910 != -1)
      {
        sub_10086E454();
      }

      v163 = *(off_100B50908 + 206);
      v164 = *(off_100B50908 + 205);
      v280[0] = *(off_100B50908 + 207);
      v254 = (v163 | v164) & 1;
      v165 = sub_10000C7D0();
      if (*(a1 + 1387) == 1)
      {
        v166 = *(v165 + 800);
        if (a3 && *(a1 + 1152))
        {
          v167 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
          v168 = v167;
          v169 = *(a1 + 1144);
          if (v169)
          {
            v170 = (a1 + 1144);
            do
            {
              v171 = v169[4];
              v72 = v171 >= a2;
              v172 = v171 < a2;
              if (v72)
              {
                v170 = v169;
              }

              v169 = v169[v172];
            }

            while (v169);
            if (v170 != (a1 + 1144) && v170[4] <= a2)
            {
              if (v167 - v170[5] < 0x6FC23AC01)
              {
                v183 = sub_10000C7D0();
                if ((v166 - 3000) >= 0x3E8)
                {
                  v184 = 0;
                }

                else
                {
                  v184 = 75;
                }

                (*(*v183 + 2312))(v183, &v274 + 1, 1, 1, v184, (4 * v254) | (2 * v280[0]));
                v185 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  v186 = sub_1007774DC();
                  v187 = *(a1 + 1152);
                  *buf = 138543618;
                  *&buf[4] = v186;
                  *&buf[12] = 2048;
                  *&buf[14] = v187;
                  _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "setConnectionPrioritization for matching incoming address:%{public}@ fAddressForIncomingConnectionPrioritizationMap:%lu", buf, 0x16u);
                }

                sub_10002717C((a1 + 1136), v170);
                operator delete(v170);
              }

              else
              {
                v173 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  v174 = sub_1007774DC();
                  *buf = 138543362;
                  *&buf[4] = v174;
                  _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "Ignoring expired incoming prioritized connection address:%{public}@", buf, 0xCu);
                }
              }
            }
          }

          sub_10075315C(a1, v168);
        }

        if (v162 == 196608)
        {
          v253 = *(a1 + 1387);
          v252 = 0;
          if ((((v166 - 3000) < 0x3E8) & v253) != 0)
          {
            v196 = 75;
          }

          else
          {
            v196 = 0;
          }

          v251 = v196;
          v197 = sub_10000E92C();
          v198 = (*(*v197 + 856))(v197, &v253, &v252, v280, &v254, &v251);
          v199 = qword_100BCE980;
          v200 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
          if (v200)
          {
            sub_1000D67B4(uu, v284);
            v201 = "";
            if (v198)
            {
              v201 = "(overridden)";
            }

            if (v287 >= 0)
            {
              v202 = v284;
            }

            else
            {
              v202 = *v284;
            }

            if (v253 > 2uLL)
            {
              v203 = "UNKNOWN";
            }

            else
            {
              v203 = off_100B0BE90[v253];
            }

            *buf = 136316418;
            *&buf[4] = v201;
            *&buf[12] = 2080;
            *&buf[14] = v202;
            *&buf[22] = 2080;
            *&buf[24] = v203;
            *&buf[32] = 1024;
            *&buf[34] = v252;
            *&buf[38] = 1024;
            *&buf[40] = v280[0];
            *&buf[44] = 1024;
            *&buf[46] = v251;
            _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "CBUseCaseDigitalIDTSA %sfor device %s setConnectionPrioritization{priority:%s, protectWLAN:%d, protectLEA:%d, percentageWithCriticalPriority:%d}", buf, 0x32u);
            if (v287 < 0)
            {
              operator delete(*v284);
            }
          }

          if (!sub_1007589C8(v200, v253, v252, v280[0], v251))
          {
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_100870938();
            }

            goto LABEL_355;
          }

LABEL_346:
          v204 = sub_10000C7D0();
          (*(*v204 + 2312))(v204, &v274 + 1, 1, 1, v251, v252 | (2 * v280[0]) | (4 * v254));
          goto LABEL_355;
        }

        if (v162 == 19)
        {
          v253 = *(a1 + 1387);
          v252 = 0;
          if ((((v166 - 3000) < 0x3E8) & v253) != 0)
          {
            v188 = 75;
          }

          else
          {
            v188 = 0;
          }

          v251 = v188;
          v189 = sub_10000E92C();
          v190 = (*(*v189 + 848))(v189, &v253, &v252, v280, &v254, &v251);
          v191 = qword_100BCE980;
          v192 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
          if (v192)
          {
            sub_1000D67B4(uu, v284);
            v193 = "";
            if (v190)
            {
              v193 = "(overridden)";
            }

            if (v287 >= 0)
            {
              v194 = v284;
            }

            else
            {
              v194 = *v284;
            }

            if (v253 > 2uLL)
            {
              v195 = "UNKNOWN";
            }

            else
            {
              v195 = off_100B0BE90[v253];
            }

            *buf = 136316418;
            *&buf[4] = v193;
            *&buf[12] = 2080;
            *&buf[14] = v194;
            *&buf[22] = 2080;
            *&buf[24] = v195;
            *&buf[32] = 1024;
            *&buf[34] = v252;
            *&buf[38] = 1024;
            *&buf[40] = v280[0];
            *&buf[44] = 1024;
            *&buf[46] = v251;
            _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "CBUseCaseDigitalID for %sdevice %s setConnectionPrioritization{priority:%s, protectWLAN:%d, protectLEA:%d, percentageWithCriticalPriority:%d}", buf, 0x32u);
            if (v287 < 0)
            {
              operator delete(*v284);
            }
          }

          if (!sub_1007589C8(v192, v253, v252, v280[0], v251))
          {
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_100870974();
            }

            goto LABEL_355;
          }

          goto LABEL_346;
        }
      }

LABEL_355:
      if (*(a1 + 1385) == 1)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v205 = off_100B508C8;
        v206 = sub_10004DF60(uu);
        v207 = sub_10078C0D0(v205, v206);

        v208 = sub_10075B9A8(a1, v162, v207);
        if (v208)
        {
          v209 = sub_10000C7D0();
          (*(*v209 + 2072))(v209, v239, v208);
        }
      }

      if (((v240 | a3) & 1) == 0)
      {
        v210 = sub_10074ECD8(a1, uu);
        if (v278 > 0xCu)
        {
          v211 = v210;
        }

        else
        {
          v211 = 0;
        }

        if (v211 == 1)
        {
          v212 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000D67B4(uu, buf);
            v213 = (buf[23] & 0x80u) == 0 ? buf : *buf;
            *v284 = 136446210;
            *&v284[4] = v213;
            _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "Boosting connection interval to iCloud paired device %{public}s", v284, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          v214 = sub_10004DF60(uu);
          sub_1007489DC(a1, v214, -4, 0);
        }

        if ((*(a1 + 1112) & 1) == 0 && (v162 & 0xFFFF0000) == 0x10000 && ((byte_100BC7B01 & 1) != 0 || v278 && v278 != 24))
        {
          v215 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000D67B4(uu, v284);
            v217 = v287 >= 0 ? v284 : *v284;
            LOWORD(v216) = v278;
            *buf = 136446722;
            *&buf[4] = v217;
            *&buf[12] = 2048;
            *&buf[14] = v216 * 1.25;
            *&buf[22] = 1024;
            *&buf[24] = byte_100BC7B01;
            _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "Adjusting connection interval to FindMy device %{public}s, current CI is :%fms sendFindMyConnectionUpdateAnyTime:%d", buf, 0x1Cu);
            if (v287 < 0)
            {
              operator delete(*v284);
            }
          }

          v218 = sub_10004DF60(uu);
          sub_1007489DC(a1, v218, -8, 0);
        }
      }

      if ((*(a1 + 632) & 1) == 0)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v219 = off_100B508C8;
        v220 = sub_10004DF60(uu);
        LODWORD(v219) = sub_100788ED8(v219, v220);

        if (v219)
        {
          v221 = sub_10000C798();
          if ((*(*v221 + 368))(v221))
          {
            sub_100748508(a1, a4);
          }

          else if ((a3 & 1) == 0)
          {
            if (qword_100B508B0 != -1)
            {
              sub_10086DE54();
            }

            v222 = off_100B508A8;
            v223 = sub_10004DF60(uu);
            sub_1007489DC(v222, v223, -2, 0);
          }
        }
      }

      if (sub_10074AB80(a1, uu))
      {
        v224 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D67B4(uu, buf);
          v225 = (buf[23] & 0x80u) == 0 ? buf : *buf;
          *v284 = 136446210;
          *&v284[4] = v225;
          _os_log_impl(&_mh_execute_header, v224, OS_LOG_TYPE_DEFAULT, "Device was already disconnecting, disconnect connected device %{public}s", v284, 0xCu);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_1000618AC(&v277);
        *buf = 0;
        if (sub_1000C4FCC(a1, uu, buf))
        {
          sub_1002CDF48(*buf);
        }

        sub_100022214(&v277);
      }

LABEL_405:
      v283 = 0;
      memset(buf, 0, sizeof(buf));
      v226 = sub_10004DF60(uu);
      sub_100740410(a1, v226, buf);

      v227 = sub_10004DF60(uu);
      v228 = *buf;
      *buf = v227;

      *&buf[24] = CFAbsoluteTimeGetCurrent();
      buf[49] = 1;
      buf[51] = a6;
      if (qword_100B508C0 != -1)
      {
        sub_10086F454();
      }

      buf[48] = sub_10004EE74(off_100B508B8, *buf);
      buf[50] = a3 ^ 1;
      v229 = objc_opt_new();
      v230 = *&buf[8];
      *&buf[8] = v229;

      v231 = sub_10004DF60(uu);
      v246[0] = *buf;
      v246[1] = *&buf[8];
      v247 = *&buf[16];
      v248 = *&buf[32];
      v249 = *&buf[48];
      v250 = v283;
      sub_100740538(a1, v231, v246);

      if ((sub_10074AB80(a1, uu) & 1) == 0)
      {
        sub_100756884(a1, uu, 1, 0, 1);
      }

      goto LABEL_410;
    }

    if (a3)
    {
      v53 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Cancelling outgoing connection to same device", buf, 2u);
      }

      v54 = sub_10074518C(a1, 1);
      v55 = qword_100BCE980;
      v56 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v54 == 1302)
      {
        if (v56)
        {
          *buf = 0;
          v57 = "Failed to cancel the connection because its already connected, waiting for event";
          goto LABEL_132;
        }

LABEL_133:
        sub_100749FCC(a1, uu);
        v77 = 0;
LABEL_221:
        v125 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v126 = sub_10004DF60(uu);
          v127 = sub_10002DC3C(v77);
          v128 = v126;
          *buf = 136446466;
          *&buf[4] = v127;
          *&buf[12] = 2114;
          *&buf[14] = v128;
          _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "BLE Connection Completed %{public}s %{public}@", buf, 0x16u);

          v125 = qword_100BCE980;
          v9 = v242;
        }

        if (os_signpost_enabled(v125))
        {
          v129 = sub_10004DF60(uu);
          v130 = sub_10002DC3C(v77);
          v131 = v129;
          *buf = 136446466;
          *&buf[4] = v130;
          *&buf[12] = 2114;
          *&buf[14] = v131;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v125, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE Connection Completed %{public}s %{public}@", buf, 0x16u);

          v9 = v242;
        }

        v132 = _os_feature_enabled_impl();
        if (v77 - 65562 < 4)
        {
          v133 = v132;
        }

        else
        {
          v133 = 0;
        }

        if (v133 == 1)
        {
          sub_1002D2088(a4, 1);
        }

        v52 = [*(a1 + 752) count];
        v47 = a3 ^ 1;
        if (v52)
        {
          v134 = [*(a1 + 752) anyObject];
          [*(a1 + 752) removeObject:v134];
          v135 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v134;
            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "Moving device %{public}@ off of the overflow list now that there's room", buf, 0xCu);
          }

          v136 = *(a1 + 864);
          if (v136 == 4 || v136 == 2)
          {
            v137 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000D67B4(uu, buf);
              v138 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              *v284 = 136446210;
              *&v284[4] = v138;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Adding %{public}s to AddToFilterAcceptList list", v284, 0xCu);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            sub_100749E70(a1, uu);
          }

          else
          {
            sub_10074B0D4(a1, v134);
          }

          v9 = v242;
        }

        goto LABEL_244;
      }

      if (!v54)
      {
        if (v56)
        {
          *buf = 0;
          v57 = "Canceled pending connection successfuly, waiting for event";
LABEL_132:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v57, buf, 2u);
          goto LABEL_133;
        }

        goto LABEL_133;
      }

      if (v56)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No pending event.", buf, 2u);
      }

      v78 = sub_10004DF60(uu);
      sub_100754B04(a1, v78);
      v77 = 0;
    }

    else
    {
      v64 = sub_10004DF60(uu);
      sub_100754B04(a1, v64);

      v65 = *(a1 + 864);
      v66 = qword_100BCE980;
      v67 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
      if (v65 == 1)
      {
        if (v67)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Successful outgoing connection", buf, 2u);
        }

        sub_100745874(a1, 0);
      }

      else if (v67)
      {
        if (v65 > 4)
        {
          v76 = "UNKNOWN";
        }

        else
        {
          v76 = off_100B0BE50[v65];
        }

        *buf = 136446466;
        *&buf[4] = v76;
        *&buf[12] = 1024;
        *&buf[14] = v65;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Current state when connection completed is %{public}s(%d), lets wait for the controller.", buf, 0x12u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v86 = off_100B508C8;
      v87 = sub_10004DF60(uu);
      v77 = sub_100788D8C(v86, v87);

      if (qword_100B54208 != -1)
      {
        sub_10086E578();
      }

      v88 = v9;
      v89 = sub_1007F024C(qword_100B54200, v77);
      v90 = *(a1 + 384);
      if (v90 != (a1 + 392))
      {
        do
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v91 = off_100B508C8;
          v92 = sub_10004DF60(v90 + 32);
          v93 = sub_100788D8C(v91, v92) == v77;

          v94 = *(v90 + 1);
          if (v94)
          {
            do
            {
              v95 = v94;
              v94 = *v94;
            }

            while (v94);
          }

          else
          {
            do
            {
              v95 = *(v90 + 2);
              v28 = *v95 == v90;
              v90 = v95;
            }

            while (!v28);
          }

          v88 += v93;
          v90 = v95;
        }

        while (v95 != (a1 + 392));
      }

      v96 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *&buf[4] = v77;
        *&buf[8] = 1024;
        *&buf[10] = v89;
        *&buf[14] = 1024;
        *&buf[16] = v88;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "deviceUseCase:%d maxUseCaseConnections:%d currentlyConnectedForUseCase:%d", buf, 0x14u);
      }

      if (v89 > v88)
      {
        goto LABEL_220;
      }

      v238 = objc_alloc_init(NSMutableArray);
      v97 = *(a1 + 336);
      if (v97 != (a1 + 344))
      {
        do
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v98 = off_100B508C8;
          v99 = sub_10004DF60(v97 + 25);
          LODWORD(v98) = sub_100788D8C(v98, v99) == v77;

          if (v98)
          {
            v100 = sub_10004DF60(v97 + 25);
            [v238 addObject:v100];
          }

          v101 = *(v97 + 1);
          if (v101)
          {
            do
            {
              v102 = v101;
              v101 = *v101;
            }

            while (v101);
          }

          else
          {
            do
            {
              v102 = *(v97 + 2);
              v28 = *v102 == v97;
              v97 = v102;
            }

            while (!v28);
          }

          v97 = v102;
        }

        while (v102 != (a1 + 344));
      }

      v103 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v238;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "devicesToDisconnect from fConnectingDevices: %{public}@", buf, 0xCu);
      }

      v237 = v12;
      v272 = 0u;
      v273 = 0u;
      v270 = 0u;
      v271 = 0u;
      v104 = v238;
      v105 = [v104 countByEnumeratingWithState:&v270 objects:v291 count:16];
      if (v105)
      {
        v106 = *v271;
        do
        {
          for (i = 0; i != v105; i = i + 1)
          {
            if (*v271 != v106)
            {
              objc_enumerationMutation(v104);
            }

            v108 = *(*(&v270 + 1) + 8 * i);
            if (*(a1 + 864))
            {
              sub_100749FCC(a1, uu);
            }

            else
            {
              sub_100754B04(a1, *(*(&v270 + 1) + 8 * i));
            }

            v269[0] = _NSConcreteStackBlock;
            v269[1] = 3221225472;
            v269[2] = sub_10075B940;
            v269[3] = &unk_100B0B5D8;
            v269[4] = v108;
            sub_10074063C(a1, v269);
          }

          v105 = [v104 countByEnumeratingWithState:&v270 objects:v291 count:16];
        }

        while (v105);
      }

      [v104 removeAllObjects];
      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      v109 = *(a1 + 752);
      v110 = [v109 countByEnumeratingWithState:&v265 objects:v290 count:16];
      if (v110)
      {
        v111 = *v266;
        do
        {
          v112 = 0;
          do
          {
            if (*v266 != v111)
            {
              objc_enumerationMutation(v109);
            }

            v113 = *(*(&v265 + 1) + 8 * v112);
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            if (sub_100788D8C(off_100B508C8, v113) == v77)
            {
              [v104 addObject:v113];
            }

            v112 = v112 + 1;
          }

          while (v110 != v112);
          v110 = [v109 countByEnumeratingWithState:&v265 objects:v290 count:16];
        }

        while (v110);
      }

      v114 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v104;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "devicesToDisconnect from fConnectingOverflowDevices: %{public}@", buf, 0xCu);
      }

      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v115 = *(a1 + 760);
      v116 = [v115 countByEnumeratingWithState:&v261 objects:v289 count:16];
      if (v116)
      {
        v117 = *v262;
        do
        {
          v118 = 0;
          do
          {
            if (*v262 != v117)
            {
              objc_enumerationMutation(v115);
            }

            v119 = *(*(&v261 + 1) + 8 * v118);
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            if (sub_100788D8C(off_100B508C8, v119) == v77)
            {
              [v104 addObject:v119];
            }

            v118 = v118 + 1;
          }

          while (v116 != v118);
          v116 = [v115 countByEnumeratingWithState:&v261 objects:v289 count:16];
        }

        while (v116);
      }

      v120 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v104;
        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: devicesToDisconnect from fDevicesBlockedFromOutgoingConnections: %{public}@", buf, 0xCu);
      }

      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v78 = v104;
      v121 = [v78 countByEnumeratingWithState:&v257 objects:v288 count:16];
      if (v121)
      {
        v122 = *v258;
        do
        {
          for (j = 0; j != v121; j = j + 1)
          {
            if (*v258 != v122)
            {
              objc_enumerationMutation(v78);
            }

            v124 = *(*(&v257 + 1) + 8 * j);
            [*(a1 + 752) removeObject:v124];
            [*(a1 + 760) removeObject:v124];
            v256[0] = _NSConcreteStackBlock;
            v256[1] = 3221225472;
            v256[2] = sub_10075B974;
            v256[3] = &unk_100B0B5D8;
            v256[4] = v124;
            sub_10074063C(a1, v256);
          }

          v121 = [v78 countByEnumeratingWithState:&v257 objects:v288 count:16];
        }

        while (v121);
      }

      v12 = v237;
    }

LABEL_220:
    v9 = v242;
    goto LABEL_221;
  }

  v16 = qword_100BCE980;
  if (a5 != 702 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = a5;
    _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Unexpected connection complete result (%{bluetooth:OI_STATUS}u) after cancellation!", buf, 8u);
    v16 = qword_100BCE980;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received connection complete event after successful cancellation. Parsing pending operations and processing pending connections", buf, 2u);
  }

  if (byte_100BC7B00 == 1)
  {
    v17 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "Warning: Ignoring connection complete after succesful cancellation for debug only";
LABEL_21:
      v19 = buf;
      v20 = v17;
      v21 = 2;
LABEL_421:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v18, v19, v21);
      goto LABEL_422;
    }

    goto LABEL_422;
  }

  if (*(a1 + 928) == 1)
  {
    v22 = *(a1 + 336);
    v23 = (a1 + 344);
    if (v22 != (a1 + 344))
    {
      do
      {
        v24 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v25 = sub_10004DF60(v22 + 25);
          *buf = 138543362;
          *&buf[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Moving %{public}@ out of the filter accept list and into the pending list", buf, 0xCu);
        }

        sub_100749E70(a1, v22 + 25);
        v26 = *(v22 + 1);
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = *(v22 + 2);
            v28 = *v27 == v22;
            v22 = v27;
          }

          while (!v28);
        }

        v22 = v27;
      }

      while (v27 != v23);
    }

    sub_10000CEDC(a1 + 336, *(a1 + 344));
    *(a1 + 344) = 0;
    *(a1 + 352) = 0;
    *(a1 + 336) = v23;
    v29 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "calling LE_ClearFilterAcceptList", buf, 2u);
    }

    sub_10000CEDC(a1 + 608, *(a1 + 616));
    *(a1 + 608) = a1 + 616;
    *(a1 + 616) = 0u;
    v284[0] = 0;
    v30 = sub_1000216B4(v284);
    v38 = sub_1002E9800(v30, v31, v32, v33, v34, v35, v36, v37);
    v39 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "LE_ClearFilterAcceptList returned %d", buf, 8u);
    }

    sub_10000CEDC(a1 + 360, *(a1 + 368));
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 360) = a1 + 368;
    sub_10002249C(v284);
  }

  v40 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Connection complete after successful connection cancelation", buf, 2u);
  }

  sub_100745874(a1, 0);
  if (*(a1 + 1067) == 1)
  {
    v41 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Stack is shutting down, we're done here.", buf, 2u);
    }

    *(a1 + 1064) = 0;
    sub_100364600((a1 + 1016));
    goto LABEL_422;
  }

  v42 = *(a1 + 928);
  if (!v42)
  {
    sub_1007556FC(a1);
    sub_100753CFC(a1);
    goto LABEL_422;
  }

  v43 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    if (v42 > 3)
    {
      v44 = "UNKNOWN";
    }

    else
    {
      v44 = off_100B0BE78[v42 - 1];
    }

    *buf = 136446210;
    *&buf[4] = v44;
    v18 = "Not updating connection list, current LE Connection Manager State is %{public}s";
    v19 = buf;
    goto LABEL_420;
  }

LABEL_422:
  sub_10002249C(&v277);
  return sub_1000088CC(v279);
}

void sub_10075B4F0(_Unwind_Exception *a1)
{
  sub_10002249C(&STACK[0x20D]);
  sub_1000088CC(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void sub_10075B7E0(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v5, "LE");
  sub_100007E30(__p, "IgnoreControllerConnectionCompleteOnCancel");
  (*(*v1 + 72))(v1, v5, __p, &byte_100BC7B00);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v5, "LE");
  sub_100007E30(__p, "sendFindMyConnectionUpdateAnyTime");
  (*(*v2 + 72))(v2, v5, __p, &byte_100BC7B01);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10075B904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_10075B9A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 131075)
  {
    v7 = *(a1 + 1392);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if ([v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) longLongValue] == 131075)
          {
            v12 = *(a1 + 1392);
          }

          else
          {
            v12 = 0;
          }

          if (v12 <= v7)
          {
            v7 = v7;
          }

          else
          {
            v7 = v12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

LABEL_20:

  return v7;
}

uint64_t sub_10075BB38(uint64_t a1, int a2)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 120);
  v4 = *(a1 + 864);
  if (v4 == 2)
  {
LABEL_2:
    v5 = qword_100BCE980;
    if (a2)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100870A48();
      }

      if (a2 == 758)
      {
        sub_100745874(a1, 4u);
      }

      else if (a2 == 621)
      {
        v6 = sub_10000E92C();
        sub_100693F74(v6, 1);
      }

      v19 = *(a1 + 928);
      if (v19 == 1)
      {
        sub_100745874(a1, 0);
      }

      else if (v19)
      {
        v20 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "UNKNOWN";
          if (v19 == 2)
          {
            v21 = "Paused";
          }

          if (v19 == 3)
          {
            v21 = "Resuming";
          }

          *buf = 136446210;
          *&buf[4] = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "handleConnectionCancelledCallback skipping processConnectingDevices, current Le Connection Manager state is %{public}s", buf, 0xCu);
        }
      }

      else
      {
        sub_100745874(a1, 0);
        sub_1007556FC(a1);
        sub_100753CFC(a1);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Pending connection(s) canceled successfully", buf, 2u);
      }

      sub_100745874(a1, 3u);
      if (*(a1 + 1126) == 1)
      {
        v8 = *(a1 + 336);
        if (v8 != (a1 + 344))
        {
          do
          {
            v9 = sub_10004DF60(v8 + 25);
            v10 = sub_100742080(a1, v9) == 0;

            if (!v10)
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v11 = off_100B508C8;
              v12 = sub_10004DF60(v8 + 25);
              v13 = sub_100046458(v11, v12, 0);

              *&buf[3] = 0;
              *buf = 0;
              v14 = sub_10009A66C(v13);
              *buf = v14;
              buf[6] = BYTE6(v14);
              *&buf[4] = WORD2(v14);
              v15 = sub_10000C7D0();
              (*(*v15 + 2144))(v15, buf);
            }

            v16 = *(v8 + 1);
            if (v16)
            {
              do
              {
                v17 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v17 = *(v8 + 2);
                v18 = *v17 == v8;
                v8 = v17;
              }

              while (!v18);
            }

            v8 = v17;
          }

          while (v17 != (a1 + 344));
        }
      }
    }

    return sub_1000088CC(v23);
  }

  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Received cancel callback outside of cancel state (%d)", buf, 8u);
    if (*(a1 + 864) == 2)
    {
      goto LABEL_2;
    }

    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1008709B0();
  }

  return sub_1000088CC(v23);
}

void sub_10075BEF8(uint64_t a1, void *a2, unsigned int a3, int a4, double a5)
{
  v9 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v10 = sub_100786C44(off_100B508C8, v9);
  if (v10 != 0.0)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v11 = sub_100786DF8(off_100B508C8, v9);
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v12 = sub_100786F18(off_100B508C8, v9);
    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v13 = sub_100787038(off_100B508C8, v9);
    if (v10 < a5 && v10 > 0.0)
    {
      v14 = a5 - v10;
    }

    else
    {
      v14 = 0.0;
    }

    if (v10 > 0.0 && v11 > v10)
    {
      v15 = v11 - v10;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = v13 > v12;
    v17 = v12 > 0.0;
    v18 = v13 - v12;
    if (v17 && v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    if (v12 < a5 && v17)
    {
      v20 = a5 - v12;
    }

    else
    {
      v20 = 0.0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086E034();
    }

    v21 = sub_100787158(off_100B508C8, v9);
    v84 = objc_alloc_init(NSDateFormatter);
    [v84 setDateFormat:@"yyyy-MM-dd H:mm:ss"];
    v76 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
    v22 = [v84 stringFromDate:?];
    v23 = &unk_1008A2000;
    LODWORD(v23) = llround((v10 - floor(v10)) * 1000.0);
    v78 = v22;
    v86 = [NSString stringWithFormat:@"%@.%000d", v22, v23];
    v24 = 0.0;
    v25 = 0.0;
    if (v19 > 0.0)
    {
      v25 = v21 / v19;
    }

    if (v20 > 0.0)
    {
      v24 = v21 / v20;
    }

    v81 = a1;
    v26 = *(a1 + 1387);
    if (a4 == 196608 || a4 == 19)
    {
      v28 = 75;
    }

    else
    {
      v28 = 0;
    }

    if (!*(a1 + 1387))
    {
      v28 = 0;
    }

    v79 = a4;
    v80 = v28;
    v29 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ DigitalID Transaction -------------------", buf, 2u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v86;
      v31 = [v86 UTF8String];
      *buf = 136446210;
      v88 = *&v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Start: %{public}s", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v88 = v14;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Connection Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v88 = v15;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Connection Set-up Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v88 = v19;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Data Transfer Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v88 = v20;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Presentment Data Transfer Duration: %.3f (secs)", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v88) = v21;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Data Bytes: %d", buf, 8u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v88 = v25;
      v89 = 2048;
      *v90 = v25 * 8.0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Data Transfer Throughput: %.3f (bytes/sec) %.3f (bits/sec)", buf, 0x16u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v88 = v24;
      v89 = 2048;
      *v90 = v24 * 8.0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Presentment Data Transfer Throughput: %.3f (bytes/sec) %.3f (bits/sec)", buf, 0x16u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v88) = a3;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Disconnection Reason: %d", buf, 8u);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v32 = "No";
      if (v26)
      {
        v32 = "Yes";
      }

      *buf = 136315138;
      v88 = *&v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Is Connection Prioritization Supported: %s", buf, 0xCu);
      v29 = qword_100BCE980;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v88) = v80;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Prioritized Connection Intervals Percent: %d", buf, 8u);
    }

    v82 = a3;
    v83 = v21;
    if (qword_100B50910 != -1)
    {
      sub_10086E454();
    }

    v33 = *(off_100B50908 + 41);
    v34 = *(off_100B50908 + 42);
    v35 = *(off_100B50908 + 204);
    v36 = *(off_100B50908 + 205);
    v37 = *(off_100B50908 + 206);
    v38 = *(off_100B50908 + 207);
    v85 = *(off_100B50908 + 212);
    v39 = sub_1000154A8();
    v40 = (*(*v39 + 120))(v39);
    if (v38)
    {
      v77 = *(v81 + 1387);
    }

    else
    {
      v77 = 0;
    }

    v41 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: ---------- DigitalID Concurrent Usages Statistics ----------", buf, 2u);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v88) = v33;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Num Classic Connections: %d", buf, 8u);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v88) = v34;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Num LE Connections: %d", buf, 8u);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = "No";
      if (v35)
      {
        v42 = "Yes";
      }

      *buf = 136446210;
      v88 = *&v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - Watch Connected: %{public}s", buf, 0xCu);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v43 = "No";
      if (v36)
      {
        v43 = "Yes";
      }

      *buf = 136446210;
      v88 = *&v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - A2DP Streaming: %{public}s", buf, 0xCu);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v44 = "No";
      if (v37)
      {
        v44 = "Yes";
      }

      *buf = 136446210;
      v88 = *&v44;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - HFP Streaming: %{public}s", buf, 0xCu);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v45 = "No";
      if (v38)
      {
        v45 = "Yes";
      }

      *buf = 136446210;
      v88 = *&v45;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - LEA Streaming: %{public}s", buf, 0xCu);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v46 = "No";
      if (v85)
      {
        v46 = "Yes";
      }

      *buf = 136446210;
      v88 = *&v46;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - ISO Pipe Streaming: %{public}s", buf, 0xCu);
      v41 = qword_100BCE980;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v47 = "No";
      if (v40)
      {
        v47 = "Yes";
      }

      *buf = 136446210;
      v88 = *&v47;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "statedump: DigitalID - WiFi on 2.4GHz: %{public}s", buf, 0xCu);
      v41 = qword_100BCE980;
    }

    if (os_signpost_enabled(v41))
    {
      v48 = v86;
      v49 = [v86 UTF8String];
      *buf = 138545154;
      v88 = *&v9;
      v89 = 2082;
      *v90 = v49;
      *&v90[8] = 2048;
      *v91 = v14;
      *&v91[8] = 2048;
      *v92 = v15;
      *&v92[8] = 2048;
      *v93 = v19;
      *&v93[8] = 1024;
      *v94 = v83;
      *&v94[4] = 2048;
      *&v94[6] = v25;
      *&v94[14] = 1024;
      *&v94[16] = v82;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE DigitalID Stat for %{public}@ start %{public}s duration total %.3f set-up %.3f data_transfer %.3f bytes %d throughput %.3f (bytes/sec) disconnect_reason %d", buf, 0x4Au);
      v41 = qword_100BCE980;
    }

    if (os_signpost_enabled(v41))
    {
      v50 = "No";
      *buf = 138545410;
      v88 = *&v9;
      v89 = 1024;
      if (v35)
      {
        v51 = "Yes";
      }

      else
      {
        v51 = "No";
      }

      *v90 = v33;
      if (v36)
      {
        v52 = "Yes";
      }

      else
      {
        v52 = "No";
      }

      *&v90[4] = 1024;
      if (v37)
      {
        v53 = "Yes";
      }

      else
      {
        v53 = "No";
      }

      *&v90[6] = v34;
      if (v38)
      {
        v54 = "Yes";
      }

      else
      {
        v54 = "No";
      }

      *v91 = 2082;
      if (v85)
      {
        v55 = "Yes";
      }

      else
      {
        v55 = "No";
      }

      *&v91[2] = v51;
      if (v40)
      {
        v50 = "Yes";
      }

      *v92 = 2082;
      *&v92[2] = v52;
      *v93 = 2082;
      *&v93[2] = v53;
      *v94 = 2082;
      *&v94[2] = v54;
      *&v94[10] = 2082;
      *&v94[12] = v55;
      v95 = 2082;
      v96 = v50;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BTSignPost", "BLE DigitalID Condition for %{public}@ Classic %d LE %d Watch %{public}s A2DP %{public}s HFP %{public}s LEA %{public}s ISO %{public}s WiFi 2.4GHz %{public}s", buf, 0x54u);
    }

    v56 = +[NSMutableDictionary dictionary];
    v57 = [NSNumber numberWithDouble:v14];
    [v56 setObject:v57 forKeyedSubscript:@"ConnectionDurationInSec"];

    v58 = [NSNumber numberWithDouble:v15];
    [v56 setObject:v58 forKeyedSubscript:@"ConnectionSetupDurationInSec"];

    v59 = [NSNumber numberWithDouble:v19];
    [v56 setObject:v59 forKeyedSubscript:@"DataTransferDurationInSec"];

    v60 = [NSNumber numberWithUnsignedInt:v83];
    [v56 setObject:v60 forKeyedSubscript:@"DataBytes"];

    v61 = [NSNumber numberWithDouble:v25];
    [v56 setObject:v61 forKeyedSubscript:@"ThroughputBytesPerSec"];

    v62 = [NSNumber numberWithUnsignedInt:v82];
    [v56 setObject:v62 forKeyedSubscript:@"DisconnectionReason"];

    v63 = [NSNumber numberWithBool:v35];
    [v56 setObject:v63 forKeyedSubscript:@"IsWatchConnected"];

    v64 = [NSNumber numberWithBool:v36];
    [v56 setObject:v64 forKeyedSubscript:@"IsA2DPSessionActive"];

    v65 = [NSNumber numberWithBool:v37];
    [v56 setObject:v65 forKeyedSubscript:@"IsHFPSessionActive"];

    v66 = [NSNumber numberWithBool:v38];
    [v56 setObject:v66 forKeyedSubscript:@"IsLEASessionActive"];

    v67 = [NSNumber numberWithBool:v85];
    [v56 setObject:v67 forKeyedSubscript:@"IsISOPipeStreamingActive"];

    v68 = [NSString stringWithUTF8String:sub_10002DC3C(v79)];
    [v56 setObject:v68 forKeyedSubscript:@"UseCase"];

    v69 = [NSNumber numberWithBool:*(v81 + 1387)];
    [v56 setObject:v69 forKeyedSubscript:@"IsConnPrioritizationSupported"];

    v70 = [NSNumber numberWithUnsignedInt:v80];
    [v56 setObject:v70 forKeyedSubscript:@"PrioritizedConnIntervalsPercentage"];

    v71 = [NSNumber numberWithBool:v77 & 1];
    [v56 setObject:v71 forKeyedSubscript:@"ProtectLEA"];

    v72 = [NSNumber numberWithDouble:v20];
    [v56 setObject:v72 forKeyedSubscript:@"PresentmentDuration"];

    v73 = [NSNumber numberWithDouble:v24];
    [v56 setObject:v73 forKeyedSubscript:@"PresentmentThroughputBytesPerSec"];

    v74 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v88 = *&v56;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Sending DigitalIDMetric :%{public}@", buf, 0xCu);
    }

    v75 = sub_10000F034();
    (*(*v75 + 296))(v75, v56);
  }
}

void sub_10075CF88(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_100786FAC(off_100B508C8, v2, 0.0);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_1007870CC(off_100B508C8, v2, 0.0);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  sub_1007871E4(off_100B508C8, v2, 0);
}

void sub_10075D050(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (qword_100B508C0 != -1)
  {
    sub_100870AC0();
  }

  v8 = sub_10004EE74(off_100B508B8, v7);
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v9 = sub_100786C44(off_100B508C8, v7);
  v10 = 0.0;
  if (CFAbsoluteTimeGetCurrent() > v9)
  {
    v10 = CFAbsoluteTimeGetCurrent() - v9;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v11 = sub_10078B3C8(off_100B508C8, v7);
  v12 = +[NSMutableDictionary dictionary];
  v13 = [NSNumber numberWithBool:v8];
  [v12 setObject:v13 forKeyedSubscript:@"Paired"];

  v14 = [NSNumber numberWithDouble:v10];
  [v12 setObject:v14 forKeyedSubscript:@"DurationInSeconds"];

  v15 = [NSNumber numberWithUnsignedInt:a4];
  [v12 setObject:v15 forKeyedSubscript:@"DisconnectReasonCode"];

  v16 = [NSNumber numberWithBool:a3 == 0];
  [v12 setObject:v16 forKeyedSubscript:@"Initiator"];

  v17 = [NSNumber numberWithShort:v11];
  [v12 setObject:v17 forKeyedSubscript:@"ConnectionEstablishedRSSI"];

  sub_10004DFB4(buf, v7);
  v18 = [NSNumber numberWithUnsignedShort:*(sub_100775BB4(a1 + 480, buf) + 42)];
  [v12 setObject:v18 forKeyedSubscript:@"PreviousConnectRetries"];

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v19 = sub_10078C174(off_100B508C8, v7);
  [v12 setObject:v19 forKeyedSubscript:@"UseCase"];

  v20 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Sending LeConnectRetry metric :%{public}@", buf, 0xCu);
  }

  v21 = sub_10000F034();
  (*(*v21 + 288))(v21, v12);
}

void sub_10075D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  v16 = sub_10000F034();
  (*(*v16 + 592))(v16, a3, a4);
  v17 = *sub_10000F034();
  (*(v17 + 568))();
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v18 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v19 = sub_100063D0C();
    v20 = v19;
    *buf = 67110402;
    v21 = "Peripheral";
    *&buf[4] = a6;
    *&buf[8] = 2114;
    if (!a5)
    {
      v21 = "Central";
    }

    *&buf[10] = v19;
    v25 = 2082;
    v26 = v21;
    v22 = "Yes";
    v27[0] = 2082;
    if (!a7)
    {
      v22 = "No";
    }

    *&v27[1] = v22;
    v27[5] = 1024;
    v28 = a8;
    v29 = 1024;
    v30 = a9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LE ConnManager disconnection complete reason %d address=%{public}@ localRole=%{public}s wakeUp=%{public}s encrypted:%d timeOffsetInMs:%d", buf, 0x32u);
  }

  sub_100007EE8();
  operator new();
}

void sub_10075F5C8(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  v8 = sub_10000C7D0();
  if ((*(*v8 + 3280))(v8))
  {
    v9 = sub_100007EE8();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10076F554;
    v10[3] = &unk_100AE2880;
    v12 = a1;
    v11 = v7;
    v14 = a4;
    v13 = a3;
    sub_10000CA94(v9, v10);
  }
}

void sub_10075F6DC(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  if (a3 == 4833 && _os_feature_enabled_impl())
  {
    v8 = sub_100007EE8();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1007704F4;
    v9[3] = &unk_100AE2880;
    v11 = a1;
    v10 = v7;
    v13 = a4;
    v12 = 4833;
    sub_10000CA94(v8, v9);
  }
}

void sub_10075F7DC(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 1184) = Current;
  if (Current + -172800.0 <= 0.0)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100870F70();
    }
  }

  else
  {
    v3 = *(a1 + 1176);
    sub_10076A908(a1, Current + -172800.0);
    if (v3 > 0x20)
    {
      sub_10076AD20(a1);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_100870FF4();
      }
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_10087106C();
    }
  }
}

void sub_10075F8D8(uint64_t a1, char *a2, int a3, double a4)
{
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a2;
    if (a2[23] < 0)
    {
      v9 = *a2;
    }

    *buf = 136446722;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "upsertDisconnectionHistoryElement %{public}s time %d reason %d", buf, 0x18u);
  }

  v10 = sub_1000463C8(a1 + 1160, a2);
  if (a1 + 1168 != v10)
  {
    memset(buf, 0, sizeof(buf));
    sub_10077608C(buf, v10 + 56);
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_1008710E8();
    }

    if (*&buf[16] >= 0x60uLL)
    {
      if (*&buf[16] != 95)
      {
        v11 = *&buf[8];
        v12 = (*&buf[16] - 95) + 1;
        v13 = *&buf[8];
        do
        {
          v13 = v13[1];
          --v12;
        }

        while (v12 > 1);
        if (*&buf[8] != v13)
        {
          v14 = *(*v13 + 8);
          v15 = **&buf[8];
          *(v15 + 8) = v14;
          *v14 = v15;
          do
          {
            v16 = v11[1];
            --*&buf[16];
            operator delete(v11);
            v11 = v16;
          }

          while (v16 != v13);
        }
      }

      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_100871160();
      }
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_1008711D4();
  }

  if (*(a1 + 1176) >= 0x21uLL)
  {
    sub_10075F7DC(a1);
  }

  *buf = buf;
  *&buf[8] = buf;
  operator new();
}

void sub_10075FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_10075FC10(uint64_t a1, void *a2, int a3)
{
  v42 = a2;
  sub_10004DFB4(buf, v42);
  if (a1 + 1568 != sub_10004E34C(a1 + 1560, buf))
  {
    sub_10004DFB4(buf, v42);
    v50 = buf;
    v5 = sub_100776CC8(a1 + 1560, buf);
    v43 = *(v5 + 48);
    v6 = *(v5 + 56);
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);
    v39 = *(v5 + 88);
    v9 = *(v5 + 97);
    v10 = *(v5 + 98);
    v44 = *(v5 + 99);
    v40 = *(v5 + 100);
    v36 = *(v5 + 104);
    v37 = *(v5 + 108);
    v38 = *(v5 + 112);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v11 = sub_100788D8C(off_100B508C8, v42);
    if (qword_100B508C0 != -1)
    {
      sub_10086F454();
    }

    v12 = sub_10004EE74(off_100B508B8, v43);
    if (v9)
    {
      v13 = v12;
      Current = CFAbsoluteTimeGetCurrent();
      v15 = +[NSMutableDictionary dictionary];
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v16 = sub_10078B3C8(off_100B508C8, v43);
      v17 = [NSNumber numberWithBool:v13];
      [v15 setObject:v17 forKeyedSubscript:@"Paired"];

      v18 = [NSNumber numberWithDouble:Current - v7];
      [v15 setObject:v18 forKeyedSubscript:@"Duration"];

      v19 = [NSNumber numberWithInteger:a3];
      [v15 setObject:v19 forKeyedSubscript:@"DisconnectReason"];

      v20 = [NSNumber numberWithBool:v10 & 1];
      [v15 setObject:v20 forKeyedSubscript:@"Initiator"];

      v21 = [NSNumber numberWithBool:v8 & 1];
      [v15 setObject:v21 forKeyedSubscript:@"RemoteDisconnected"];

      if (v10)
      {
        v22 = [NSNumber numberWithShort:v16];
        [v15 setObject:v22 forKeyedSubscript:@"ConnectionEstablishedRSSI"];
      }

      if (v11 == 655360)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"DigitalKey"];
        v23 = [NSNumber numberWithUnsignedInt:v37];
        [v15 setObject:v23 forKeyedSubscript:@"KeyRSSIEventCount"];

        v24 = [NSNumber numberWithUnsignedInt:v36];
        [v15 setObject:v24 forKeyedSubscript:@"KeyRSSIEventWakeCount"];
      }

      if (v44)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"KeyWakeOnConnect"];
      }

      if (v40)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"KeyWakeOnDisconnect"];
      }

      if (v39 > 5)
      {
        v25 = @"PeerTypeOther";
      }

      else
      {
        v25 = *(&off_100B0BEE8 + v39);
      }

      [v15 setObject:v25 forKeyedSubscript:@"PeerType"];
      v26 = [NSNumber numberWithUnsignedInt:v38];
      [v15 setObject:v26 forKeyedSubscript:@"DASessionType"];

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v27 = [NSNumber numberWithUnsignedInt:sub_10078BB40(off_100B508C8, v43)];
      [v15 setObject:v27 forKeyedSubscript:@"LinkReadyDuration"];

      LOBYTE(v50) = 0;
      v49 = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      sub_10078B86C(off_100B508C8, v43, &v49, &v50, &v49 + 1);
      v28 = [NSNumber numberWithBool:v50];
      [v15 setObject:v28 forKeyedSubscript:@"FastLeConnectionConfigured"];

      v29 = [NSNumber numberWithBool:v49];
      [v15 setObject:v29 forKeyedSubscript:@"FastLeConnectionUsed"];

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v30 = [NSNumber numberWithUnsignedShort:sub_10078BC58(off_100B508C8, v43)];
      [v15 setObject:v30 forKeyedSubscript:@"LinkReadyConnectionInterval"];

      if (HIBYTE(v49) == 1)
      {
        [v15 setObject:0 forKeyedSubscript:@"DASessionType"];
      }

      if (![v6 count])
      {

        v6 = &off_100B34678;
      }

      v41 = a1;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v6 = v6;
      v31 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v31)
      {
        v32 = *v46;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v46 != v32)
            {
              objc_enumerationMutation(v6);
            }

            [v15 setObject:*(*(&v45 + 1) + 8 * i) forKeyedSubscript:@"BundleIdentifier"];
            v34 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v15;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Sending LESessionEndedMetric %@", buf, 0xCu);
            }

            v35 = sub_10000F034();
            (*(*v35 + 280))(v35, v15);
          }

          v31 = [v6 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v31);
      }

      sub_1007603DC(v41, v43);
    }
  }
}

void sub_1007603DC(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(v4, v3);
  sub_100776E74((a1 + 1560), v4);
}

void sub_10076046C(uint64_t a1)
{
  if (qword_100B50910 != -1)
  {
    sub_10086E05C();
  }

  sub_1005BBC80(off_100B50908, *(a1 + 40));
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v2 = sub_10078C5DC(off_100B508C8, *(a1 + 32));
  v3 = [v2 cuFilteredArrayUsingBlock:&stru_100B0B5F8];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (qword_100B50910 != -1)
        {
          sub_10086E454();
        }

        sub_1005BFECC(off_100B50908, *(a1 + 32), [v8 integerValue], *(a1 + 44));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

id sub_100760644(id a1, NSNumber *a2)
{
  v2 = a2;
  if ([(NSNumber *)v2 integerValue]<= 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_100760694(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *a2;
  if (*(a1 + 44) == 1)
  {
    return (*(v5 + 16))(a2, v3, v4);
  }

  else
  {
    return (*(v5 + 136))(a2, v3, v4);
  }
}

uint64_t sub_1007606FC(uint64_t result)
{
  if (!*(result + 896))
  {
    sub_100088DD4();
  }

  return result;
}

void sub_1007607F0(uint64_t a1, double a2)
{
  if (*(a1 + 552))
  {
    v4 = qword_100BCE980;
    if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT) || !sub_10087124C(v4, (a1 + 552)))
    {
      sub_100745EFC(a1);
    }
  }

  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Arming Fast connection scan Timer with interval %f seconds", buf, 0xCu);
  }

  *(a1 + 560) = a2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100760998;
  v9[3] = &unk_100AEC260;
  v9[4] = a1;
  v6 = [NSTimer timerWithTimeInterval:0 repeats:v9 block:a2];
  v7 = *(a1 + 552);
  *(a1 + 552) = v6;

  v8 = +[NSRunLoop mainRunLoop];
  [v8 addTimer:*(a1 + 552) forMode:NSDefaultRunLoopMode];
}

void sub_100760998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fast connection scan Timer expired !", buf, 2u);
  }

  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100760A80;
  v7[3] = &unk_100ADF8F8;
  v7[4] = v4;
  sub_10000CA94(v6, v7);
}

uint64_t sub_100760A88(uint64_t a1)
{
  *&v67 = 0;
  sub_100016250(&v67);
  v56 = SWORD2(v67);
  v57 = v67;
  v83[0] = 0;
  v83[1] = 0;
  sub_100007F88(v83, a1 + 120);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v67 = 0u;
  sub_100007AD0(&v67);
  sub_100745EFC(a1);
  v66 = 0;
  v2 = sub_1000154A8();
  (*(*v2 + 48))(v2, &v66 + 1, &v66);
  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  v3 = *(off_100B50908 + 205);
  v4 = *(off_100B50908 + 206);
  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = HIBYTE(v66);
    *&buf[8] = 1024;
    *&buf[10] = v66;
    *&buf[14] = 1024;
    LODWORD(v85) = v3;
    WORD2(v85) = 1024;
    *(&v85 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "checkIfFastConnectionScanIsRequired reason:%d state%d isA2DPStreaming:%d isHFPStreaming:%d", buf, 0x1Au);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  *buf = 0u;
  sub_100007AD0(buf);
  v6 = *(a1 + 336);
  if (v6 != (a1 + 344))
  {
    v7 = 0;
    if ((v3 | v4))
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    v55 = v8;
    v9 = 0.0;
    while (1)
    {
      v65 = 0uLL;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v10 = off_100B508C8;
      v11 = sub_10004DF60(v6 + 25);
      sub_10078CCAC(v10, v11, &v65);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v12 = off_100B508C8;
      v13 = sub_10004DF60(v6 + 25);
      v14 = sub_10078FD20(v12, v13);

      if (v65 == 0 || v14 == 6)
      {
        goto LABEL_42;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v15 = off_100B508C8;
      v16 = sub_10004DF60(v6 + 25);
      LOWORD(v15) = sub_10078FD20(v15, v16);

      v64 = v15;
      if (HIBYTE(v66) == 2)
      {
        if (v66 == 1)
        {
          v18 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v100[0]) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Extending host scan request to DefaultExtended while in AirPlay critical buffering state", v100, 2u);
          }

          v17 = 1;
          goto LABEL_26;
        }
      }

      else if (HIBYTE(v66) == 1 && v66 == 1)
      {
        v17 = v55;
LABEL_26:
        v64 = v17;
      }

      v63 = 0;
      v19 = sub_10004DF60(v6 + 25);
      sub_100761750(a1, v19, &v64, &v63, &v65);

      v20 = sub_100007774(&v85);
      memset(v100, 0, 37);
      uuid_unparse_upper(v6 + 25, v100);
      sub_100007E30(&v61, v100);
      v21 = sub_100007774(v20);
      v22 = sub_100007774(v21);
      v101 = 0u;
      memset(v100, 0, sizeof(v100));
      snprintf(v100, 0x3FuLL, "%0llu.%0llu", v65, *(&v65 + 1));
      sub_100007E30(__p, v100);
      if (v60 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      strlen(v23);
      v24 = sub_100007774(v22);
      sub_100007774(v24);
      v100[0] = v65;
      v100[1] = WORD4(v65);
      sub_100306E3C(v100);
      std::ostream::operator<<();
      if (v60 < 0)
      {
        operator delete(__p[0]);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      v100[0] = v65;
      v100[1] = WORD4(v65);
      if (!sub_100306E3C(v100))
      {
        v25 = *(&v65 + 1) - v56 + 1000 * (v65 - v57);
        v26 = v25 / 0x3E8;
        v27 = (v25 % 0x3E8) / 1000.0;
        if (v9 >= v27 + (v25 / 0x3E8))
        {
          v28 = v27 + v26;
        }

        else
        {
          v28 = v9;
        }

        if (v9 == 0.0)
        {
          v9 = v27 + v26;
        }

        else
        {
          v9 = v28;
        }

        v29 = sub_100007774(&v85);
        LOBYTE(v100[0]) = 48;
        v30 = sub_10004DE98(v29, v100);
        *(v30 + *(*v30 - 24) + 16) = 3;
        v31 = std::ostream::operator<<();
        sub_100007774(v31);
        v7 = 1;
      }

LABEL_42:
      v32 = *(v6 + 1);
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = *(v6 + 2);
          v34 = *v33 == v6;
          v6 = v33;
        }

        while (!v34);
      }

      v6 = v33;
      if (v33 == (a1 + 344))
      {
        goto LABEL_50;
      }
    }
  }

  v7 = 0;
  v9 = 0.0;
LABEL_50:
  v35 = sub_100007774(&v68);
  v101 = 0u;
  memset(v100, 0, sizeof(v100));
  snprintf(v100, 0x3FuLL, "%0llu.%0llu", v57, v56);
  v36 = &v61;
  sub_100007E30(&v61, v100);
  if (v62 < 0)
  {
    v36 = v61;
  }

  strlen(v36);
  v37 = sub_100007774(v35);
  sub_100007774(v37);
  v38 = std::ostream::operator<<();
  sub_100007774(v38);
  if (v62 < 0)
  {
    operator delete(v61);
  }

  v39 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    std::stringbuf::str();
    v40 = v62;
    v41 = v61;
    std::stringbuf::str();
    v42 = &v61;
    if (v40 < 0)
    {
      v42 = v41;
    }

    if (v60 >= 0)
    {
      v43 = __p;
    }

    else
    {
      v43 = __p[0];
    }

    v100[0] = 67109634;
    v100[1] = v7 & 1;
    LOWORD(v100[2]) = 2082;
    *(&v100[2] + 2) = v42;
    HIWORD(v100[4]) = 2082;
    *&v100[5] = v43;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "shouldEnableFastConnectionScan:%d %{public}s%{public}s", v100, 0x1Cu);
    if (v60 < 0)
    {
      operator delete(__p[0]);
    }

    if (v62 < 0)
    {
      operator delete(v61);
    }
  }

  if (*(a1 + 864) != 1 || !*(a1 + 352))
  {
    goto LABEL_68;
  }

  LOWORD(v61) = 0;
  LOWORD(__p[0]) = 0;
  LOWORD(v65) = 0;
  LOBYTE(v64) = 0;
  v63 = 0;
  sub_100761EE8(a1, &v61, __p, &v65, &v64, &v63);
  v58 = 0;
  sub_1000216B4(&v58);
  v44 = v61;
  v45 = LOWORD(__p[0]);
  v46 = sub_1002BF904(v61, __p[0]);
  sub_100022214(&v58);
  if (v46)
  {
    sub_10002249C(&v58);
LABEL_68:
    if (v7)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_100871348();
      }

      if (*(a1 + 352) && *(a1 + 184) == 1 && v9 > 0.0)
      {
        sub_1007606FC(a1);
        v47 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v100[0] = 134217984;
          *&v100[1] = v9;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Setting scan level expiration %f ms from now", v100, 0xCu);
        }

        sub_1007607F0(a1, v9);
      }
    }

    else if (*(a1 + 896))
    {
      sub_100745DEC(a1);
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        sub_1008712A0();
      }

      if (*(a1 + 864) == 1 && *(a1 + 352))
      {
        v48 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v100[0]) = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Reducing connection timing for current connections", v100, 2u);
        }

        sub_10074518C(a1, 0);
      }
    }

    goto LABEL_88;
  }

  v49 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v100[0] = 67109376;
    v100[1] = v45;
    LOWORD(v100[2]) = 1024;
    *(&v100[2] + 2) = v44;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Cancelling connections due to connection scan params: window - 0x%x, interval - 0x%x", v100, 0xEu);
  }

  sub_10074518C(a1, 0);
  sub_10002249C(&v58);
LABEL_88:
  v53 = v51;
  *&v85 = v51;
  if (SHIBYTE(v88) < 0)
  {
    operator delete(*(&v87 + 1));
  }

  std::locale::~locale(v86);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v67 = v50;
  *(&v67 + *(v50 - 24)) = v52;
  *&v68 = v53;
  if (SHIBYTE(v71) < 0)
  {
    operator delete(*(&v70 + 1));
  }

  std::locale::~locale(v69);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return sub_1000088CC(v83);
}

void sub_100761660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, char a63)
{
  sub_1007FC91C(&a63);
  sub_1007FC91C(&a25);
  sub_1000088CC(&a61);
  _Unwind_Resume(a1);
}

void sub_100761750(uint64_t a1, void *a2, unsigned __int16 *a3, char *a4, void *a5)
{
  v9 = a2;
  v10 = sub_1000154A8();
  v11 = (*(*v10 + 56))(v10);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *__p = 0u;
  v49 = 0u;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v45 = 0u;
  sub_100007AD0(&v45);
  v12 = sub_100007774(&v46);
  v13 = sub_10004DFB4(v61, v9);
  memset(out, 0, 37);
  uuid_unparse_upper(v13, out);
  sub_100007E30(buf, out);
  v14 = sub_100007774(v12);
  sub_100007774(v14);
  std::ostream::operator<<();
  if (v63 < 0)
  {
    operator delete(*buf);
  }

  v15 = *a3;
  if (!v11 || v15 > 2)
  {
    LODWORD(v23) = *(a1 + 4 * v15 + 568);
    sub_100007774(&v46);
    v28 = 0;
LABEL_21:
    *a4 = v28;
    goto LABEL_22;
  }

  sub_100007774(&v46);
  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v16 = a3;
  v17 = sub_10078FF50(off_100B508C8, v9);
  v18 = sub_100007774(&v46);
  v19 = "Low";
  if (v17 == 1)
  {
    v19 = "Medium";
  }

  if (v17 == 2)
  {
    v20 = "High";
  }

  else
  {
    v20 = v19;
  }

  strlen(v20);
  sub_100007774(v18);
  if (!v17)
  {
    LODWORD(v23) = *(a1 + 600);
    *v16 = 8;
    v28 = 1;
    goto LABEL_21;
  }

  if (v17 == 2)
  {
    LODWORD(v23) = *(a1 + 4 * *v16 + 568);
    v28 = 2;
    goto LABEL_21;
  }

  if (v17 == 1 && *(a1 + 112))
  {
    v44 = v16;
    v21 = 0;
    v22 = 0;
    LODWORD(v23) = 0;
    while (1)
    {
      v23 = (*(*(a1 + 104) + v21) + v23);
      v24 = a5[1] + v23;
      v25 = *a5 + v24 / 0x3E8;
      v26 = v24 % 0x3E8;
      LODWORD(out[0]) = *a5 + v24 / 0x3E8;
      DWORD1(out[0]) = v24 % 0x3E8;
      if (!sub_100306E3C(out))
      {
        break;
      }

      *v44 = 8;
      v27 = *(a1 + 600);
      *a4 = 1;
      ++v22;
      v21 += 8;
      if (v22 >= *(a1 + 112))
      {
        LODWORD(v23) = v27;
        goto LABEL_22;
      }
    }

    sub_100007774(&v46);
    v39 = std::ostream::operator<<();
    v40 = sub_100007774(v39);
    memset(out, 0, sizeof(out));
    snprintf(out, 0x3FuLL, "%0llu.%0llu", v25, v26);
    sub_100007E30(buf, out);
    v41 = sub_100007774(v40);
    sub_100007774(v41);
    v42 = std::ostream::operator<<();
    sub_100007774(v42);
    std::ostream::operator<<();
    if (v63 < 0)
    {
      operator delete(*buf);
    }

    v43 = *(*(a1 + 104) + v21 + 4);
    if (v43 == 9)
    {
      LOWORD(v43) = 8;
    }

    *v44 = v43;
    if (v43 == 8)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    goto LABEL_21;
  }

  LODWORD(v23) = 0;
LABEL_22:
  v29 = a5[1] + v23;
  *a5 += v29 / 0x3E8;
  a5[1] = v29 % 0x3E8;
  v30 = sub_100007774(&v46);
  sub_1004F5248(a5, out);
  v31 = sub_100007774(v30);
  sub_100007774(v31);
  v32 = std::ostream::operator<<();
  v33 = sub_100007774(v32);
  sub_100007774(v33);
  v34 = std::ostream::operator<<();
  sub_100007774(v34);
  v35 = std::ostream::operator<<();
  sub_100007774(v35);
  std::ostream::operator<<();
  if (SBYTE7(out[1]) < 0)
  {
    operator delete(*&out[0]);
  }

  v36 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v37 = (SBYTE7(out[1]) & 0x80u) == 0 ? out : *&out[0];
    *buf = 136446210;
    *&buf[4] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%{public}s", buf, 0xCu);
    if (SBYTE7(out[1]) < 0)
    {
      operator delete(*&out[0]);
    }
  }

  *&v46 = v38;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v47);
  std::iostream::~basic_iostream();
  std::ios::~ios();
}

void sub_100761E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1007FC91C(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100761EE8(uint64_t a1, _WORD *a2, unsigned __int16 *a3, _WORD *a4, _BYTE *a5, char *a6)
{
  v6 = a4;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  if (*(a1 + 896))
  {
    v101 = 0;
    if (qword_100B50910 != -1)
    {
      sub_10086E05C();
    }

    sub_1005BC904(off_100B50908, 2);
    v7 = sub_1000154A8();
    (*(*v7 + 48))(v7, &v101, &v101 + 1);
    *a3 = 48;
    *a2 = 480;
    if (v101 == 1)
    {
      v8 = a1;
      if (HIBYTE(v101) == 1)
      {
        if (qword_100B50910 != -1)
        {
          sub_10086E454();
          v8 = a1;
        }

        LODWORD(v89) = *(off_100B50908 + 205);
        HIDWORD(v89) = *(off_100B50908 + 206);
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = 0;
      v8 = a1;
    }

    v37 = *(v8 + 336);
    v38 = (v8 + 344);
    if (v37 == (v8 + 344))
    {
      v39 = 0;
    }

    else
    {
      v39 = 0;
      if ((v89 | BYTE4(v89)))
      {
        v40 = 8;
      }

      else
      {
        v40 = 7;
      }

      v90 = v40;
      v91 = v8 + 256;
      do
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v41 = off_100B508C8;
        v42 = sub_10004DF60(v37 + 25);
        LODWORD(v41) = sub_10078FD20(v41, v42);

        v100 = v41;
        v43 = v41 == 1;
        if (v101 == 1 && HIBYTE(v101) == 1)
        {
          v100 = v90;
        }

        v98 = 0;
        v99 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v44 = off_100B508C8;
        v45 = sub_10004DF60(v37 + 25);
        sub_10078CCAC(v44, v45, &v98);

        v46 = sub_10004DF60(v37 + 25);
        sub_100761750(a1, v46, &v100, a6, &v98);

        v47 = v100;
        if (v100 < 9uLL)
        {
          *&buf_4[2] = 0;
          buf = v98;
          *buf_4 = v99;
          v50 = sub_100306E3C(&buf);
          v51 = *a2;
          if (!v50 && v51 >= *(v91 + 2 * v47))
          {
            LOWORD(v51) = *(v91 + 2 * v47);
          }

          *a2 = v51;
          v52 = sub_10000C798();
          if ((*(*v52 + 688))(v52))
          {
            v53 = *v6;
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v54 = off_100B508C8;
            v55 = sub_10004DF60(v37 + 25);
            if (v53 <= sub_10078A2E0(v54, v55))
            {
              if (qword_100B508D0 != -1)
              {
                sub_10086DE2C();
              }

              v56 = off_100B508C8;
              v57 = sub_10004DF60(v37 + 25);
              *v6 = sub_10078A2E0(v56, v57);
            }

            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v58 = off_100B508C8;
            v59 = sub_10004DF60(v37 + 25);
            LODWORD(v58) = sub_10078A3F8(v58, v59);

            if (v58)
            {
              *a5 = 1;
            }
          }

          v60 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            v61 = sub_10004DF60(v37 + 25);
            v62 = v100;
            v63 = *(v91 + 2 * v100);
            v64 = *a3;
            v102[0] = v98;
            v102[1] = v99;
            v65 = sub_100306E3C(v102);
            v66 = *a3;
            v67 = "NO";
            if (v65)
            {
              v67 = "YES";
            }

            v68 = *a2;
            v69 = *a4;
            v70 = "N";
            if (*a5)
            {
              v70 = "Y";
            }

            buf = 138545410;
            *buf_4 = v61;
            *&buf_4[8] = 1024;
            *v105 = v64;
            *&v105[4] = 1024;
            *v106 = v63;
            v6 = a4;
            *&v106[4] = 1024;
            *v107 = v62;
            *&v107[4] = 2082;
            v108 = v67;
            v109 = 1024;
            v110 = v66;
            v111 = 1024;
            v112 = v68;
            v113 = 1024;
            v114 = v69;
            v115 = 2080;
            v116 = v70;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "device %{public}@ Connection scans [0x%x/0x%x(level:%d)] ignored:%{public}s [aggregated 0x%x/0x%x/0x%x/eLNA%s]", &buf, 0x44u);
          }
        }

        else
        {
          v48 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
          {
            v73 = sub_10004DF60(v37 + 25);
            buf = 138543618;
            *buf_4 = v73;
            *&buf_4[8] = 1024;
            *v105 = v100;
            _os_log_fault_impl(&_mh_execute_header, v48, OS_LOG_TYPE_FAULT, "device %{public}@ connection scan duty cycle %d is invalid", &buf, 0x12u);

            v48 = qword_100BCE980;
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = sub_10004DF60(v37 + 25);
            buf = 138543618;
            *buf_4 = v49;
            *&buf_4[8] = 1024;
            *v105 = v100;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "device %{public}@ connection scan duty cycle %d is invalid", &buf, 0x12u);
          }
        }

        v71 = *(v37 + 1);
        if (v71)
        {
          do
          {
            v72 = v71;
            v71 = *v71;
          }

          while (v71);
        }

        else
        {
          do
          {
            v72 = *(v37 + 2);
            v23 = *v72 == v37;
            v37 = v72;
          }

          while (!v23);
        }

        v39 |= v43;
        v37 = v72;
      }

      while (v72 != v38);
    }

    v36 = a2;
    if (v101 == 1 && HIBYTE(v101) == 1)
    {
      v74 = sub_10000C798();
      v75 = (*(*v74 + 1032))(v74);
      v76 = v75;
      v36 = a2;
      v77 = *a2;
      if ((v89 | HIDWORD(v89)))
      {
        if (v77 <= *(a1 + 272))
        {
          LOWORD(v77) = *(a1 + 272);
        }

        *a2 = v77;
        if (v75)
        {
          v36 = a2;
          if (_os_feature_enabled_impl())
          {
            v78 = *a2;
            if (v78 == *(a1 + 272))
            {
              v79 = v78 - *a3;
              if (v79 < *v6)
              {
                LOWORD(v79) = *v6;
              }

              *v6 = v79;
            }
          }
        }
      }

      else
      {
        if (v39)
        {
          v80 = *(a1 + 272);
        }

        else
        {
          v80 = *(a1 + 270);
        }

        if (v77 <= v80)
        {
          LOWORD(v77) = v80;
        }

        *a2 = v77;
      }

      v81 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
      {
        v82 = *a3;
        v83 = *v36;
        v84 = *v6;
        buf = 67110400;
        *buf_4 = v89 & 1;
        *&buf_4[4] = 1024;
        *&buf_4[6] = BYTE4(v89) & 1;
        *v105 = 1024;
        *&v105[2] = v76;
        *v106 = 1024;
        *&v106[2] = v82;
        *v107 = 1024;
        *&v107[2] = v83;
        LOWORD(v108) = 1024;
        *(&v108 + 2) = v84;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_INFO, "CarPlay is on, isA2DPStreaming:%d isHFPStreaming:%d highDutySC:%d Connection scans updated [0x%x/0x%x/0x%x]", &buf, 0x26u);
      }
    }

    v25 = a1;
  }

  else
  {
    if (qword_100B50910 != -1)
    {
      sub_10086E05C();
    }

    sub_1005BC904(off_100B50908, 1);
    LOBYTE(v98) = 0;
    LOBYTE(v102[0]) = 0;
    LOBYTE(v100) = 0;
    v9 = sub_100017E6C();
    if (((*(*v9 + 160))(v9, &v98) || (v98 & 1) == 0) && ((v10 = sub_100017E6C(), (*(*v10 + 104))(v10, v102, &v100)) || LOBYTE(v102[0]) != 1))
    {
      *a2 = 480;
      *a3 = *(a1 + 274);
      v11 = *(a1 + 336);
      if (v11 != (a1 + 344))
      {
        do
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v12 = off_100B508C8;
          v13 = sub_10004DF60(v11 + 25);
          v14 = sub_10078FE38(v12, v13);

          if (v14 >= 7)
          {
            v17 = qword_100BCE980;
            v15 = a3;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
            {
              buf = 67109120;
              *buf_4 = v14;
              _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "scanDutyCycle cannot be %d", &buf, 8u);
            }
          }

          else
          {
            v15 = a3;
            v16 = *a3;
            if (v16 <= *(a1 + 274 + 2 * v14))
            {
              LOWORD(v16) = *(a1 + 274 + 2 * v14);
            }

            *a3 = v16;
          }

          v18 = *v15;
          v19 = *a2;
          if (v18 > v19)
          {
            v20 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
            {
              buf = 67109376;
              *buf_4 = v18;
              *&buf_4[4] = 1024;
              *&buf_4[6] = v19;
              _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "scanWindow (0x%x), scanInterval (0x%x)", &buf, 0xEu);
            }
          }

          v21 = *(v11 + 1);
          v6 = a4;
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
              v22 = *(v11 + 2);
              v23 = *v22 == v11;
              v11 = v22;
            }

            while (!v23);
          }

          v11 = v22;
        }

        while (v22 != (a1 + 344));
      }
    }

    else
    {
      *a2 = 480;
      *a3 = 48;
    }

    v24 = sub_10000C798();
    v25 = a1;
    if ((*(*v24 + 688))(v24))
    {
      v26 = *(a1 + 336);
      if (v26 != (a1 + 344))
      {
        do
        {
          v27 = *v6;
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v28 = off_100B508C8;
          v29 = sub_10004DF60(v26 + 25);
          if (v27 <= sub_10078A2E0(v28, v29))
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v30 = off_100B508C8;
            v31 = sub_10004DF60(v26 + 25);
            *v6 = sub_10078A2E0(v30, v31);
          }

          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v32 = off_100B508C8;
          v33 = sub_10004DF60(v26 + 25);
          LODWORD(v32) = sub_10078A3F8(v32, v33);

          if (v32)
          {
            *a5 = 1;
          }

          v34 = *(v26 + 1);
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = *(v26 + 2);
              v23 = *v35 == v26;
              v26 = v35;
            }

            while (!v23);
          }

          v26 = v35;
          v25 = a1;
        }

        while (v35 != (a1 + 344));
      }
    }

    *a6 = 0;
    v36 = a2;
  }

  if (*(v25 + 1076) == 1)
  {
    *a3 = *(v25 + 1078);
    v85 = *(v25 + 1080);
    *v36 = v85;
    v86 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v87 = *a3;
      buf = 67109376;
      *buf_4 = v87;
      *&buf_4[4] = 1024;
      *&buf_4[6] = v85;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Overriding Connection Scan Parameters on MainCore. window=%d: interval=%d ", &buf, 0xEu);
    }
  }

  result = sub_10076C024(v25, *v36, *a3, *v6);
  if ((result & 1) == 0)
  {
    *v6 = 0;
    *a5 = 0;
  }

  return result;
}