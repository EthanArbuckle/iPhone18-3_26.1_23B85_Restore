uint64_t sub_1003E2A7C(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000ABB80(a2);
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "HDR PPT = %d", v7, 8u);
  }

  if (sub_1000B8B5C(v4))
  {
    *(v4 + 289) = a3;
  }

  return 0;
}

uint64_t sub_1003E2B48(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = sub_1000ABB80(a3);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HDR Change connection Packet Type = %d", v8, 8u);
  }

  if (sub_1000B8B5C(v5))
  {
    *(v5 + 71) = a4;
  }

  return 0;
}

uint64_t sub_1003E2C14(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000ABB80(a2);
  v5 = sub_100255A78(v4);
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v10 = 67109120;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HRB Band changed band = %02X", &v10, 8u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_1008274AC();
  }

  v7 = *v5;
  LOWORD(v11) = *(v5 + 4);
  v10 = v7;
  v8 = sub_1000E6554(off_100B508E8, &v10, 0);
  if (qword_100B512B8 != -1)
  {
    sub_10082794C();
  }

  sub_10031A858(qword_100B512B0, v8, a3);
  if (sub_1000B8B5C(v4))
  {
    *(v4 + 291) = a3;
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_100B50B60 != -1)
    {
      sub_100827974();
    }

    sub_10037AC54(qword_100B50B58, v5, a3);
  }

  return 0;
}

uint64_t sub_1003E2D98(uint64_t a1, int a2, int a3, int a4)
{
  v6 = sub_1000ABB80(a2);
  v7 = sub_100255A78(v6);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109376;
    v10[1] = a3;
    v11 = 1024;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "HRB Band changed Failed, band = %02X, status = %d", v10, 0xEu);
  }

  if (sub_1000B8B5C(v6))
  {
    *(v6 + 291) = a3;
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_100B50B60 != -1)
    {
      sub_100827974();
    }

    sub_10037B4FC(qword_100B50B58, v7, a3, a4);
  }

  return 0;
}

uint64_t sub_1003E2ECC(uint64_t a1, int a2, int a3)
{
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "HRB Peripheral Allowed Bands Received, bands = %02X", v9, 8u);
  }

  v6 = sub_1000ABB80(a2);
  v7 = sub_100255A78(v6);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B50B60 != -1)
    {
      sub_100827974();
    }

    sub_10037B978(qword_100B50B58, v7, a3);
  }

  return 0;
}

uint64_t sub_1003E2FD4(uint64_t a1, int a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "HRB Band Classification Request band = %d", v5, 8u);
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_100B50B60 != -1)
    {
      sub_100827974();
    }

    nullsub_21(qword_100B50B58);
  }

  return 0;
}

uint64_t sub_1003E30BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67110912;
    *&buf[4] = a2;
    LOWORD(v32) = 1024;
    *(&v32 + 2) = a3;
    HIWORD(v32) = 1024;
    *v33 = a4;
    *&v33[4] = 1024;
    *&v33[6] = a5;
    v34 = 1024;
    v35 = a6;
    v36 = 1024;
    v37 = a7;
    v38 = 1024;
    v39 = a8;
    v40 = 1024;
    v41 = a9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Advanced Sniff Mode Change status = %d lmHandle=%x, mode=%d anchorPointHost=%d anchorPointController=%d maxAge=%d(ms), maxRetry=%d(frames), sniffInterval=%d(slots)", buf, 0x32u);
  }

  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 8);
  *buf = 0;
  v32 = 0;
  *v33 = 0;
  sub_1003F9BB4(buf, a1 + 136);
  sub_10000801C(v28);
  v18 = sub_1000ABB80(a3);
  if (sub_1000B8B5C(v18))
  {
    v19 = sub_100255A78(v18);
    v20 = *buf;
    if (*buf != &v32)
    {
      v21 = v19;
      do
      {
        LOWORD(v27) = a9;
        (*(*v20[4] + 88))(v20[4], a2, v21, a4, a5, a6, a7, a8, v27);
        v22 = v20[1];
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
            v23 = v20[2];
            v24 = *v23 == v20;
            v20 = v23;
          }

          while (!v24);
        }

        v20 = v23;
      }

      while (v23 != &v32);
    }
  }

  else
  {
    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *v29 = 67109120;
      v30 = a3;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "vseAdvancedSniffModeChange Bad lmHandle: %x", v29, 8u);
    }
  }

  sub_10000CEDC(buf, v32);
  sub_1000088CC(v28);
  return 0;
}

void sub_1003E3328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16)
{
  sub_10000CEDC(&a15, a16);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E3364(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109888;
    v11[1] = a2;
    v12 = 1024;
    v13 = a3;
    v14 = 1024;
    v15 = a4;
    v16 = 1024;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Advanced Sniff Anchor Point Timestamp Report lmHandle=%x sniffInterval=%x anchorPointHost=%d anchorPointController=%d", v11, 0x1Au);
  }

  return 0;
}

uint64_t sub_1003E3440(uint64_t a1, int a2, int a3)
{
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Flow Status lmHandle=%x flow=%d", v7, 0xEu);
  }

  return 0;
}

uint64_t sub_1003E3500(uint64_t a1, const void *a2, unsigned int a3)
{
  if (qword_100B51078 != -1)
  {
    sub_1008270D8();
  }

  sub_1007A02D4(off_100B51070, a2, a3);
  return 0;
}

uint64_t sub_1003E3554()
{
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "AdvRead Buffer Full VSE", v2, 2u);
  }

  if (qword_100B51078 != -1)
  {
    sub_10082799C();
  }

  nullsub_21(off_100B51070);
  return 0;
}

uint64_t sub_1003E35EC(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 6);
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Match Buffer Data Match Event VSE - payload = %d", v6, 8u);
  }

  return 0;
}

uint64_t sub_1003E3698(uint64_t a1, _OWORD *a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Match Buffer Read VSE - native clock = %d", v6, 8u);
  }

  if (qword_100B51078 != -1)
  {
    sub_10082799C();
  }

  sub_1007A2008(off_100B51070, a2);
  return 0;
}

uint64_t sub_1003E376C(uint64_t a1, uint64_t a2)
{
  if (qword_100B51078 != -1)
  {
    sub_1008270D8();
  }

  sub_1007A2F70(off_100B51070, a2);
  return 0;
}

uint64_t sub_1003E37B8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB8u);
}

uint64_t sub_1003E3808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 8);
  v13 = 0;
  v14[0] = 0;
  v14[1] = 0;
  sub_1003F9BB4(&v13, a1 + 136);
  v8 = v13;
  if (v13 != v14)
  {
    do
    {
      (*(*v8[4] + 56))(v8[4], a2, a3, a4);
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v14);
  }

  sub_10000CEDC(&v13, v14[0]);
  sub_1000088CC(v15);
  return 0;
}

void sub_1003E3908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E3930(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB3u);
}

uint64_t sub_1003E3980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 8);
  v17 = 0;
  v18[0] = 0;
  v18[1] = 0;
  sub_1003F9BB4(&v17, a1 + 136);
  v12 = v17;
  if (v17 != v18)
  {
    do
    {
      (*(*v12[4] + 64))(v12[4], a2, a3, a4, a5, a6);
      v13 = v12[1];
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
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
    }

    while (v14 != v18);
  }

  sub_10000CEDC(&v17, v18[0]);
  sub_1000088CC(v19);
  return 0;
}

void sub_1003E3A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E3AC0(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E3B38;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 179, a3, v4, 0);
}

uint64_t sub_1003E3B5C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB4u);
}

uint64_t sub_1003E3BAC(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E3C24;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 180, a3, v4, 0);
}

uint64_t sub_1003E3C60(int a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "power %d", v6, 8u);
  }

  LODWORD(xmmword_100B6D420) = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0);
}

uint64_t sub_1003E3D3C(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E3DCC;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a2;
  return sub_10002173C(a1, 0, 1, &stru_100AF2700, v3);
}

uint64_t sub_1003E3DE0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x17u);
}

uint64_t sub_1003E3E30(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E3EA8;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 23, a3, v4, 0);
}

uint64_t sub_1003E3ECC(int a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "isWbsSupported %d", v6, 8u);
  }

  LOBYTE(xmmword_100B6D420) = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0xB5u);
}

uint64_t sub_1003E3FA8(uint64_t a1, uint64_t a2, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E405C;
  v5[3] = &unk_100AF2270;
  v6 = a3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E4078;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a2;
  return sub_10002173C(a1, 181, a3, v5, v4);
}

uint64_t sub_1003E4094(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 8u);
}

uint64_t sub_1003E40E4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E4168;
  v5[3] = &unk_100AF2430;
  v5[4] = a2;
  v6 = a3;
  v7 = a4;
  return sub_10002173C(a1, 8, a4, v5, 0);
}

uint64_t sub_1003E4168(uint64_t a1)
{
  if (*(a1 + 41))
  {
    v1 = sub_1003E4094;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A3714(*(a1 + 40), *(a1 + 32) + 128, v1);
}

uint64_t sub_1003E4194(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB6u);
}

uint64_t sub_1003E41E4(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E4268;
  v5[3] = &unk_100AF2430;
  v5[4] = a2;
  v6 = a3;
  v7 = a4;
  return sub_10002173C(a1, 182, a4, v5, 0);
}

uint64_t sub_1003E4268(uint64_t a1)
{
  if (*(a1 + 41))
  {
    v1 = sub_1003E4194;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A0B2C(*(a1 + 40), *(a1 + 32) + 128, v1);
}

uint64_t sub_1003E4294(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xCFu);
}

uint64_t sub_1003E42E4(uint64_t a1, int a2, int a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E4364;
  v5[3] = &unk_100AF2210;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 207, a4, v5, 0);
}

uint64_t sub_1003E4388(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 1u);
}

uint64_t sub_1003E4408(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 6u);
}

uint64_t sub_1003E4458(uint64_t a1)
{
  v11 = 9;
  v10 = 134809857;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 72);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v3 = sub_100020304(a1, 1);
    v4 = sub_100020304(a1, 6);
    *buf = 136446466;
    v13 = v3;
    v14 = 2082;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sending: %{public}s and %{public}s", buf, 0x16u);
  }

  if (sub_100020164(a1, 1) && (sub_100020164(a1, 6) & 1) != 0)
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    v5 = sub_1002A387C(&v10);
    sub_100022214(buf);
    if (v5)
    {
      goto LABEL_9;
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100826FD0();
    }

    sub_100021BDC(off_100B50A98, 6u);
    sub_1000618AC(buf);
    v6 = sub_1002A37F0();
    sub_100022214(buf);
    if (v6)
    {
LABEL_9:
      v7 = 1;
    }

    else
    {
      if (qword_100B50AA0 != -1)
      {
        sub_100826FD0();
      }

      v7 = sub_100021BDC(off_100B50A98, 1u) != 0;
    }

    sub_100022684(a1, 1u);
    sub_100022684(a1, 6u);
    sub_10002249C(buf);
  }

  else
  {
    sub_100022684(a1, 1u);
    sub_100022684(a1, 6u);
    v7 = 2;
  }

  sub_1000088CC(v9);
  return v7;
}

void sub_1003E467C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E46B0(int a1, int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "connection handle %x rssi %d", v8, 0xEu);
  }

  LOBYTE(xmmword_100B6D420) = a3;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 3u);
}

uint64_t sub_1003E479C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E4854;
  v5[3] = &unk_100AF2390;
  v5[4] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E486C;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 3, 1, v5, v4);
}

uint64_t sub_1003E4888(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 1u);
}

uint64_t sub_1003E48D8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 7u);
}

uint64_t sub_1003E4928(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 9u);
}

uint64_t sub_1003E4978(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 72);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = sub_100020304(a1, 1);
    v6 = sub_100020304(a1, 7);
    v7 = sub_100020304(a1, 9);
    *buf = 136446722;
    v12 = v5;
    v13 = 2082;
    v14 = v6;
    v15 = 2082;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending: %{public}s, %{public}s, %{public}s", buf, 0x20u);
  }

  if (sub_100020164(a1, 1) && sub_100020164(a1, 7) && (sub_100020164(a1, 9) & 1) != 0)
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    v8 = sub_1002A37F0();
    sub_100022214(buf);
    if (!v8)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_100826FD0();
      }

      v8 = sub_100021BDC(off_100B50A98, 1u);
      if (!v8)
      {
        sub_1000618AC(buf);
        v8 = sub_1002A39C8();
        sub_100022214(buf);
        if (!v8)
        {
          if (qword_100B50AA0 != -1)
          {
            sub_100826FD0();
          }

          v8 = sub_100021BDC(off_100B50A98, 7u);
          if (!v8)
          {
            sub_1000618AC(buf);
            v8 = sub_1002A3A54(a2 + 128, sub_1003E4928);
            sub_100022214(buf);
            if (!v8)
            {
              if (qword_100B50AA0 != -1)
              {
                sub_100826FD0();
              }

              v8 = sub_100021BDC(off_100B50A98, 9u);
            }
          }
        }
      }
    }

    sub_100022684(a1, 1u);
    sub_100022684(a1, 7u);
    sub_100022684(a1, 9u);
    sub_10002249C(buf);
  }

  else
  {
    sub_100022684(a1, 1u);
    sub_100022684(a1, 7u);
    sub_100022684(a1, 9u);
    v8 = 3601;
  }

  sub_1000088CC(v10);
  return v8;
}

BOOL sub_1003E4C60(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 72);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "setScoRouteI2S16K", v7, 2u);
  }

  v5 = sub_1003E4978(a1, a2) != 0;
  sub_1000088CC(v8);
  return v5;
}

void sub_1003E4D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1003E4D20(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "setScoRouteI2S8K", v6, 2u);
  }

  return sub_1003E4978(a1, a2) != 0;
}

uint64_t sub_1003E4DB0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xFu);
}

uint64_t sub_1003E4E00(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E4E7C;
  v4[3] = &unk_100AF2430;
  v4[4] = a3;
  v5 = a2;
  return sub_10002173C(a1, 15, 1, v4, 0);
}

uint64_t sub_1003E4E9C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x10u);
}

uint64_t sub_1003E4EEC(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E4F68;
  v4[3] = &unk_100AF2430;
  v4[4] = a3;
  v5 = a2;
  return sub_10002173C(a1, 16, 1, v4, 0);
}

uint64_t sub_1003E4F88(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xEu);
}

uint64_t sub_1003E4FD8(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E5054;
  v4[3] = &unk_100AF2430;
  v4[4] = a3;
  v5 = a2;
  return sub_10002173C(a1, 14, 1, v4, 0);
}

uint64_t sub_1003E5074(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xDu);
}

uint64_t sub_1003E50C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E513C;
  v5[3] = &unk_100AF2590;
  v5[4] = a4;
  v5[5] = a3;
  return sub_10002173C(a1, 13, 1, v5, 0);
}

uint64_t sub_1003E513C(uint64_t a1)
{
  v2 = *(a1 + 32);
  *__p = 0u;
  v12 = 0u;
  sub_10057C6A8(__p, 0);
  sub_10057C70C(__p, **(a1 + 40));
  sub_10057C70C(__p, 0);
  sub_10057C6D0(__p, *(*(a1 + 40) + 2));
  sub_10057C70C(__p, *(*(a1 + 40) + 4));
  sub_10000C704(&v9, __p[1], v12 - __p[1]);
  v3 = sub_10000C5F8(&v9);
  sub_10000C704(&v7, __p[1], v12 - __p[1]);
  v4 = sub_10000C5E0(&v7);
  v5 = sub_1002A3CD0(v2 + 128, v3, v4, sub_1003E5074);
  v7 = &off_100AE0A78;
  if (v8)
  {
    sub_10000C808(v8);
  }

  v9 = &off_100AE0A78;
  if (v10)
  {
    sub_10000C808(v10);
  }

  if (__p[1])
  {
    *&v12 = __p[1];
    operator delete(__p[1]);
  }

  return v5;
}

void sub_1003E528C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a12)
  {
    sub_10000C808(a12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E5314(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xBBu);
}

uint64_t sub_1003E5364(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (sub_100413F44(a1, 0x7D2u))
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1003E5470;
    v14[3] = &unk_100AF2430;
    v14[4] = a4;
    v15 = a2;
    v16 = a3;
    v8 = v14;
    v9 = a1;
    v10 = 96;
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003E54E4;
    v12[3] = &unk_100AF2210;
    v12[4] = a4;
    v13 = a2;
    v8 = v12;
    v9 = a1;
    v10 = 187;
  }

  return sub_10002173C(v9, v10, 1, v8, 0);
}

uint64_t sub_1003E5494(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x60u);
}

uint64_t sub_1003E5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 128;
  if (sub_10041074C())
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003E5674;
    v13[3] = &unk_100AF2590;
    v13[4] = v6;
    v13[5] = a3;
    v7 = v13;
    v8 = a1;
    v9 = 184;
  }

  else if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003E5748;
    v11[3] = &unk_100AF2590;
    v11[4] = v6;
    v11[5] = a3;
    v7 = v11;
    v8 = a1;
    v9 = 183;
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003E56D0;
    v12[3] = &unk_100AF2590;
    v12[4] = a3;
    v12[5] = v6;
    v7 = v12;
    v8 = a1;
    v9 = 96;
  }

  return sub_10002173C(v8, v9, 1, v7, 0);
}

uint64_t sub_1003E56D0(uint64_t a1)
{
  v4 = 0;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 17) == 1)
  {
    result = sub_10023DB58(v1, &v4);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10023DBAC(v1, &v4);
    if (result)
    {
      return result;
    }
  }

  return sub_1002A50EC();
}

uint64_t sub_1003E5778(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB7u);
}

uint64_t sub_1003E57C8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 2u);
}

uint64_t sub_1003E5818(uint64_t a1, __int16 a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E5890;
  v3[3] = &unk_100AF2330;
  v4 = a2;
  return sub_10002173C(a1, 2, 1, v3, 0);
}

uint64_t sub_1003E58A8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xC8u);
}

uint64_t sub_1003E58F8(uint64_t a1, __int16 a2, int a3, uint64_t a4, char a5, char a6)
{
  if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu || *(sub_10000C7D0() + 800) < 0xBB8u)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003E5B4C;
    v18[3] = &unk_100AF2740;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    return sub_10002173C(a1, 200, 1, v18, &stru_100AF2760);
  }

  else if (a3 == 9)
  {
    v15 = sub_10000E92C();
    if ((*(*v15 + 8))(v15))
    {
      v16 = sub_10000E92C();
      (*(*v16 + 432))(v16);
    }

    v17 = *(*sub_10000C7D0() + 1664);

    return v17();
  }

  else if (a3 == 2)
  {
    for (i = 0; i != 3; ++i)
    {
      v13 = sub_10000C7D0();
      result = (*(*v13 + 1560))(v13, 0, a4, a4, i);
      if (result)
      {
        break;
      }
    }
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t sub_1003E5B4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 34);
  return sub_1002A0260(&v2);
}

uint64_t sub_1003E5B94(int a1, const void *a2, size_t __n)
{
  word_100B6D520 = __n;
  memcpy(&xmmword_100B6D420, a2, __n);
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x12u);
}

uint64_t sub_1003E5BF8(uint64_t a1, char a2, __int16 a3, char a4, uint64_t a5, char a6, __int16 a7, __int16 a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003E5CF0;
  v17[3] = &unk_100AF21F0;
  v18 = a3;
  v21 = a2;
  v22 = a4;
  v23 = a6;
  v19 = a7;
  v20 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003E5D64;
  v16[3] = &unk_100AE0860;
  v16[4] = a14;
  v16[5] = a15;
  return sub_10002173C(a1, 18, 1, v17, v16);
}

uint64_t sub_1003E5CF0(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  LOBYTE(v2) = *(a1 + 32);
  WORD1(v2) = *(a1 + 38);
  BYTE4(v2) = *(a1 + 39);
  BYTE6(v2) = *(a1 + 40);
  LODWORD(v3) = *(a1 + 34);
  HIDWORD(v3) = *(a1 + 41);
  LOBYTE(v4) = *(a1 + 45);
  return sub_1002A40B4(&v2);
}

void *sub_1003E5D64(void *result)
{
  v1 = *(result + 4);
  if (word_100B6D520 <= *v1)
  {
    *v1 = word_100B6D520;
    return memcpy(*(result + 5), &xmmword_100B6D420, word_100B6D520);
  }

  return result;
}

uint64_t sub_1003E5D98(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x13u);
}

uint64_t sub_1003E5DE8(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E5E64;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 19, 1, v4, 0);
}

uint64_t sub_1003E5E64(uint64_t a1)
{
  v7 = *(a1 + 40);
  v1 = *(a1 + 32);
  v8 = *v1;
  v2 = *(v1 + 1);
  v10 = v1[5];
  v9 = v2;
  v11 = *(v1 + 12);
  v12 = *(v1 + 13);
  v3 = *(v1 + 7);
  v14 = v1[11];
  v13 = v3;
  v15 = *(v1 + 24);
  v16 = *(v1 + 25);
  v4 = *(v1 + 13);
  v18 = v1[17];
  v17 = v4;
  v19 = *(v1 + 36);
  v20 = *(v1 + 37);
  v5 = *(v1 + 19);
  v22 = v1[23];
  v21 = v5;
  return sub_1002A414C(&v7);
}

uint64_t sub_1003E5F48(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x14u);
}

uint64_t sub_1003E5F98(uint64_t a1, char a2, int a3, char a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E601C;
  v6[3] = &unk_100AF21F0;
  v8 = a2;
  v7 = a3;
  v9 = a4;
  v6[4] = a5;
  return sub_10002173C(a1, 20, 1, v6, 0);
}

uint64_t sub_1003E601C(uint64_t a1)
{
  v5[0] = 1;
  v5[1] = *(a1 + 44);
  v1 = *(a1 + 40);
  v5[2] = v1 != 3;
  v5[3] = (v1 - 1) < 2;
  v5[4] = v1 == 2;
  v5[5] = *(a1 + 45);
  v2 = *(a1 + 32);
  v3 = *(v2 + 4);
  v6 = *v2;
  v7 = v3;
  return sub_1002A41E4(v5);
}

uint64_t sub_1003E60D4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xC4u);
}

uint64_t sub_1003E6124(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x1Au);
}

uint64_t sub_1003E6174(uint64_t a1, uint64_t a2, char a3)
{
  if (*(sub_10000C7D0() + 800) >= 6u && (v6 = sub_10000C798(), (*(*v6 + 128))(v6)))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003E62A8;
    v13[3] = &unk_100AF2210;
    v13[4] = a2;
    v14 = a3;
    v7 = v13;
    v8 = a1;
    v9 = 26;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003E62C8;
    v11[3] = &unk_100AF2210;
    v12 = a3;
    v11[4] = a2;
    v7 = v11;
    v8 = a1;
    v9 = 196;
  }

  return sub_10002173C(v8, v9, 1, v7, 0);
}

uint64_t sub_1003E62E8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x18u);
}

uint64_t sub_1003E6350(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x16u);
}

uint64_t sub_1003E63A0(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  if (qword_100B508B0 != -1)
  {
    sub_1008272AC();
  }

  v11 = 0;
  v6 = off_100B508A8;
  sub_10004DFB4(v12, v5);
  if (sub_1000C4FCC(v6, v12, &v11))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003E64E4;
    v9[3] = &unk_100AF2430;
    v9[4] = v11;
    v10 = a3;
    v7 = sub_10002173C(a1, 22, 1, v9, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003E6504(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xCu);
}

uint64_t sub_1003E6554(uint64_t a1, __int16 a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E65CC;
  v3[3] = &unk_100AF2330;
  v4 = a2;
  return sub_10002173C(a1, 12, 1, v3, 0);
}

uint64_t sub_1003E65E4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x119u);
}

uint64_t sub_1003E6634(uint64_t a1, __int16 a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E66AC;
  v3[3] = &unk_100AF2330;
  v4 = a2;
  return sub_10002173C(a1, 281, 1, v3, 0);
}

uint64_t sub_1003E66C4(int a1, const void *a2, size_t __n)
{
  word_100B6D520 = __n;
  memcpy(&xmmword_100B6D420, a2, __n);
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x11u);
}

uint64_t sub_1003E6728(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E67E0;
  v6[3] = &unk_100AF2270;
  v7 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E67F8;
  v5[3] = &unk_100AE0860;
  v5[4] = a3;
  v5[5] = a4;
  return sub_10002173C(a1, 17, 1, v6, v5);
}

void *sub_1003E67F8(void *result)
{
  v1 = *(result + 4);
  if (word_100B6D520 <= *v1)
  {
    *v1 = word_100B6D520;
    return memcpy(*(result + 5), &xmmword_100B6D420, word_100B6D520);
  }

  return result;
}

uint64_t sub_1003E682C(int a1, int a2, int a3, int a4, int a5)
{
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109888;
    v12[1] = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    v17 = 1024;
    v18 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "transmitting %d, receiving %d, sleep %d, others %d", v12, 0x1Au);
  }

  LOWORD(xmmword_100B6D420) = a2;
  WORD1(xmmword_100B6D420) = a3;
  WORD2(xmmword_100B6D420) = a4;
  WORD3(xmmword_100B6D420) = a5;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0xBEu);
}

uint64_t sub_1003E6944(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003E6A00;
  v8[3] = &unk_100AF2330;
  v9 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003E6A20;
  v7[3] = &unk_100AF2780;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  return sub_10002173C(a1, 190, 1, v8, v7);
}

uint64_t sub_1003E6A20(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = WORD1(xmmword_100B6D420);
  v2 = *(result + 56);
  **(result + 48) = WORD2(xmmword_100B6D420);
  *v2 = WORD3(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003E6A54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, unsigned int a14, unsigned int a15)
{
  v20 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67112448;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    v31 = 1024;
    v32 = a5;
    v33 = 1024;
    v34 = a6;
    v35 = 1024;
    v36 = a7;
    v37 = 1024;
    v38 = a8;
    v39 = 1024;
    v40 = a9;
    v41 = 1024;
    v42 = a10;
    v43 = 1024;
    v44 = a11;
    v45 = 1024;
    v46 = a12;
    v47 = 1024;
    v48 = a13;
    v49 = 1024;
    v50 = a14;
    v51 = 1024;
    v52 = a15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): durationTotal %d, durationActive %d, durationIdle %d, durationSleep %d disableCounter %d, iPATxBT %d, ePATxBT %d, iPATxLE %d, ePATxLE %d, connectedRxBT %d, connectedRxLE %d, scanRxBT %d scanRxLE %d, totalPHYCal %d", buf, 0x56u);
  }

  LODWORD(xmmword_100B6D420) = a2;
  DWORD1(xmmword_100B6D420) = a3;
  DWORD2(xmmword_100B6D420) = a4;
  HIDWORD(xmmword_100B6D420) = a5;
  LODWORD(xmmword_100B6D430) = a6;
  DWORD1(xmmword_100B6D430) = a7;
  DWORD2(xmmword_100B6D430) = a8;
  HIDWORD(xmmword_100B6D430) = a9;
  dword_100B6D440 = a10;
  dword_100B6D444 = a11;
  dword_100B6D448 = a12;
  dword_100B6D44C = a13;
  *&xmmword_100B6D450 = __PAIR64__(a15, a14);
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x30u);
}

uint64_t sub_1003E6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003E6CE0;
  v13[3] = &unk_100AF27C0;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v13[8] = a6;
  v13[9] = a7;
  v13[10] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  return sub_10002173C(a1, 48, 1, &stru_100AF27A0, v13);
}

uint64_t sub_1003E6CE0(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = DWORD1(xmmword_100B6D420);
  v2 = *(result + 56);
  **(result + 48) = DWORD2(xmmword_100B6D420);
  *v2 = HIDWORD(xmmword_100B6D420);
  v3 = *(result + 72);
  **(result + 64) = xmmword_100B6D430;
  *v3 = DWORD1(xmmword_100B6D430);
  v4 = *(result + 88);
  **(result + 80) = DWORD2(xmmword_100B6D430);
  *v4 = HIDWORD(xmmword_100B6D430);
  v5 = *(result + 104);
  **(result + 96) = dword_100B6D440;
  *v5 = dword_100B6D444;
  v6 = *(result + 120);
  **(result + 112) = dword_100B6D448;
  *v6 = dword_100B6D44C;
  v7 = *(result + 136);
  **(result + 128) = xmmword_100B6D450;
  *v7 = DWORD1(xmmword_100B6D450);
  return result;
}

uint64_t sub_1003E6D78(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x31u);
}

uint64_t sub_1003E6DF4(int a1, int a2, int a3, int a4, int a5)
{
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
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "total %d, successful %d, downgraded %d, involuntaryDowngraded %d", v12, 0x1Au);
  }

  LODWORD(xmmword_100B6D420) = a2;
  DWORD1(xmmword_100B6D420) = a3;
  DWORD2(xmmword_100B6D420) = a4;
  HIDWORD(xmmword_100B6D420) = a5;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x32u);
}

uint64_t sub_1003E6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E6F98;
  v6[3] = &unk_100AF2780;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return sub_10002173C(a1, 50, 1, &stru_100AF2800, v6);
}

uint64_t sub_1003E6F98(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = DWORD1(xmmword_100B6D420);
  v2 = *(result + 56);
  **(result + 48) = DWORD2(xmmword_100B6D420);
  *v2 = HIDWORD(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003E6FCC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x33u);
}

uint64_t sub_1003E7048(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xCAu);
}

uint64_t sub_1003E7098(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E7110;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 202, 1, v3, 0);
}

uint64_t sub_1003E7128(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x1Du);
}

uint64_t sub_1003E7178(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E71FC;
  v6[3] = &unk_100AF2230;
  v6[4] = a2;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return sub_10002173C(a1, 29, 1, v6, 0);
}

uint64_t sub_1003E7224(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x2Du);
}

uint64_t sub_1003E7274(uint64_t a1)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = byte_100B54210[i];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003E7338;
    v5[3] = &unk_100AF2270;
    v6 = v3;
    result = sub_10002173C(a1, 45, 1, v5, 0);
  }

  return result;
}

uint64_t sub_1003E7350(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x2Eu);
}

uint64_t sub_1003E73A0(uint64_t a1, int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 72);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = sub_100020304(a1, 46);
    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
  }

  if (sub_100020164(a1, 46))
  {
    v6 = qword_100BCE8D8;
    v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v8 = "Disabling";
      if (a2)
      {
        v8 = "Enabling";
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s FW Log Streaming", buf, 0xCu);
    }

    v10 = 0;
    IOBTDebug::create(v7);
  }

  sub_1000088CC(v11);
  return 2;
}

void sub_1003E76E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, IOBTDebug *);
  sub_1003E772C(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

IOBTDebug **sub_1003E772C(IOBTDebug **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    IOBTDebug::~IOBTDebug(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1003E7774(int a1, _DWORD *a2, unsigned int a3)
{
  if (!a1 && a2 && a3 >= 4)
  {
    LOBYTE(xmmword_100B6D420) = 4;
    *(&xmmword_100B6D420 + 1) = *a2;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xC5u);
}

uint64_t sub_1003E77EC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xC5u);
}

uint64_t sub_1003E783C(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10000C7D0();
  if (sub_1004136F0(v12))
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003E799C;
    v21[3] = &unk_100AF2610;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v13 = &stru_100AF2840;
    v14 = v21;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1003E79C4;
    v17[3] = &unk_100AF2610;
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1003E79E8;
    v16[3] = &unk_100AE0860;
    v16[4] = a6;
    v16[5] = a5;
    v14 = v17;
    v13 = v16;
  }

  return sub_10002173C(a1, 197, 1, v14, v13);
}

void *sub_1003E79E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = xmmword_100B6D420;
    **(a1 + 40) = xmmword_100B6D420;
    return memcpy(result, &xmmword_100B6D420 + 1, v3);
  }

  return result;
}

uint64_t sub_1003E7A10(int a1, uint64_t *a2, unsigned int a3)
{
  if (!a1 && a2 && a3 >= 9)
  {
    LOBYTE(xmmword_100B6D420) = 9;
    v4 = *a2;
    BYTE9(xmmword_100B6D420) = *(a2 + 8);
    *(&xmmword_100B6D420 + 1) = v4;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xC6u);
}

uint64_t sub_1003E7A90(_DWORD *a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, __int16 a9, uint64_t a10, uint64_t a11)
{
  if ((a1[200] - 3000) > 0x3E7)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003E7C04;
    v13[3] = &unk_100AF2740;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v19 = a7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003E7C34;
    v12[3] = &unk_100AE0860;
    v12[4] = a11;
    v12[5] = a10;
    return sub_10002173C(a1, 198, 1, v13, v12);
  }

  else
  {
    v20[3] = -1;
    v20[0] = a3;
    v20[1] = a5;
    v20[2] = a6;
    v20[4] = a7;
    v20[5] = a8;
    v21 = a9;
    return (*(*a1 + 1464))(a1, 0, v20, 8);
  }
}

void *sub_1003E7C34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    v3 = xmmword_100B6D420;
    **(a1 + 40) = xmmword_100B6D420;
    return memcpy(result, &xmmword_100B6D420 + 1, v3);
  }

  return result;
}

uint64_t sub_1003E7C5C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x2Fu);
}

uint64_t sub_1003E7CAC(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E7D24;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 47, 1, v3, 0);
}

uint64_t sub_1003E7D3C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x35u);
}

uint64_t sub_1003E7DB8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x2Bu);
}

uint64_t sub_1003E7E08(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E7E80;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 43, 1, v3, 0);
}

uint64_t sub_1003E7E98(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x2Cu);
}

uint64_t sub_1003E7EE8(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E7F60;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 44, 1, v3, 0);
}

uint64_t sub_1003E7F78(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x37u);
}

uint64_t sub_1003E7FC8(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003E8040;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 55, 1, v3, 0);
}

uint64_t sub_1003E8058(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x39u);
}

uint64_t sub_1003E80A8(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E8120;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 57, a3, v4, 0);
}

uint64_t sub_1003E8144(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xD0u);
}

uint64_t sub_1003E8194(uint64_t a1, char a2, char a3, __int16 a4, __int16 a5, __int16 a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003E821C;
  v7[3] = &unk_100AF2390;
  v11 = a2;
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  return sub_10002173C(a1, 208, 1, v7, 0);
}

uint64_t sub_1003E8248(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xD2u);
}

uint64_t sub_1003E8298(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E8318;
  v5[3] = &unk_100AF21F0;
  v5[4] = a2;
  v6 = a3;
  v7 = a4;
  return sub_10002173C(a1, 210, 1, v5, 0);
}

uint64_t sub_1003E833C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x3Au);
}

uint64_t sub_1003E838C(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E8404;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 58, a3, v4, 0);
}

uint64_t sub_1003E8404(uint64_t a1)
{
  result = sub_1002A56AC();
  BYTE10(xmmword_100BCE038) = *(a1 + 32);
  return result;
}

uint64_t sub_1003E8454(int a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Proprietary (HDR) Local Read Features=%d", v6, 8u);
  }

  dword_100BCE014 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x3Bu);
}

uint64_t sub_1003E8560(int a1, int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    LODWORD(v17) = 67109120;
    HIDWORD(v17) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Proprietary (HDR) Remote Read Features=%d", &v17, 8u);
  }

  v7 = sub_1000ABB80(a2);
  if (sub_1000B8B5C(v7))
  {
    *(v7 + 73) = a3;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Device disconnected during the name request. Ignoring event.", v8, v9, v10, v11, v12, v13, v14, v17);
    v15 = sub_10000C050(0x5Cu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100827AAC(v15);
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x3Cu);
}

uint64_t sub_1003E8694(uint64_t a1, __int16 a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E8708;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  return sub_10002173C(a1, 60, a3, v4, 0);
}

uint64_t sub_1003E8720(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x3Du);
}

uint64_t sub_1003E8770(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E87F0;
  v5[3] = &unk_100AF25D0;
  v6 = a2;
  v5[4] = a3;
  return sub_10002173C(a1, 61, a4, v5, 0);
}

uint64_t sub_1003E8810(int a1, int a2, uint64_t a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v10 = 67109120;
    LODWORD(v11) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Read Proprietary Local Features (OTA)   = 0x%04X", &v10, 8u);
    v6 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [NSData dataWithBytes:a3 length:32];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Read Proprietary Local Features (Local) = 0x%@", &v10, 0xCu);
  }

  v8 = 0;
  dword_100BCE014 = a2;
  do
  {
    *(&xmmword_100BCDFD8 + v8 + 72) = *(a3 + v8);
    ++v8;
  }

  while (v8 != 32);
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x3Eu);
}

uint64_t sub_1003E89AC(uint64_t a1, char a2, char a3, __int16 a4, int a5, int a6, __int16 a7, char a8, __int16 a9, int a10, unsigned __int8 a11)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003E8A4C;
  v12[3] = &unk_100AF24B0;
  v19 = a2;
  v20 = a3;
  v16 = a4;
  v13 = a5;
  v14 = a6;
  v17 = a7;
  v21 = a8;
  v18 = a9;
  v15 = a10;
  return sub_10002173C(a1, 63, a11, v12, 0);
}

uint64_t sub_1003E8A98(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x40u);
}

uint64_t sub_1003E8AE8(uint64_t a1, __int16 a2, int a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E8B6C;
  v5[3] = &unk_100AF2450;
  v7 = a2;
  v6 = a3;
  v8 = a4;
  return sub_10002173C(a1, 64, a4, v5, 0);
}

uint64_t sub_1003E8B94(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x41u);
}

uint64_t sub_1003E8BE4(uint64_t a1, __int16 a2, int a3, int a4, __int16 a5, __int16 a6, char a7, int a8, unsigned __int8 a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003E8C78;
  v10[3] = &unk_100AF25B0;
  v14 = a2;
  v11 = a3;
  v12 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v13 = a8;
  v18 = a9;
  return sub_10002173C(a1, 65, a9, v10, 0);
}

uint64_t sub_1003E8CB0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x42u);
}

uint64_t sub_1003E8D00(uint64_t a1, uint64_t a2, int a3, int a4, __int16 a5, __int16 a6, char a7, int a8, unsigned __int8 a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003E8D94;
  v10[3] = &unk_100AF28C0;
  v10[4] = a2;
  v11 = a3;
  v12 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v13 = a8;
  v17 = a9;
  return sub_10002173C(a1, 66, a9, v10, 0);
}

uint64_t sub_1003E8DCC(int a1, uint64_t a2, int a3, int a4)
{
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109632;
    v9[1] = a1;
    v10 = 1024;
    v11 = a3;
    v12 = 1024;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SCO Buffer Size Control callback status=%d controllerBufferSize=%d controllerNumBuffer=%d", v9, 0x14u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  result = sub_100022748(a1, 0x43u);
  if (!a1)
  {
    sub_100248A34(a3, 1);
    return sub_100248A8C();
  }

  return result;
}

uint64_t sub_1003E8ECC(uint64_t a1, char a2, __int16 a3, char a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003E8F50;
  v6[3] = &unk_100AF28E0;
  v8 = a2;
  v7 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 67, a5, v6, 0);
}

uint64_t sub_1003E8F7C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HBR Control callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x44u);
}

uint64_t sub_1003E9044(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E90BC;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 68, a3, v4, 0);
}

uint64_t sub_1003E90E0(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Allowed Bands callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x45u);
}

uint64_t sub_1003E91A8(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E9220;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 69, a3, v4, 0);
}

uint64_t sub_1003E9244(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Classification Bands callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x46u);
}

uint64_t sub_1003E930C(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E9384;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 70, a3, v4, 0);
}

uint64_t sub_1003E93A8(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, __int16 a6, char a7, char a8, char a9, int a10)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003E9448;
  v11[3] = &unk_100AF24B0;
  v11[4] = a2;
  v13 = a3;
  v15 = a4;
  v16 = a5;
  v14 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v12 = a10;
  return sub_10002173C(a1, 71, 1, v11, 0);
}

uint64_t sub_1003E9494(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "HRB Change Connection Band callback status=%d", v4, 8u);
  }

  if (_os_feature_enabled_impl())
  {
    if (qword_100B50B60 != -1)
    {
      sub_100827974();
    }

    sub_10037B7E0(qword_100B50B58, a1);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x48u);
}

uint64_t sub_1003E959C(uint64_t a1, __int16 a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E9620;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 72, a4, v5, 0);
}

uint64_t sub_1003E9648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10025585C(a2);
  v8 = *(*a1 + 1720);

  return v8(a1, v7, a3, a4);
}

uint64_t sub_1003E96C8(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Write Scan Enable callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x49u);
}

uint64_t sub_1003E9790(uint64_t a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E9814;
  v5[3] = &unk_100AF2610;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 73, a4, v5, 0);
}

uint64_t sub_1003E983C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Write Page Scan Activity callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x4Au);
}

uint64_t sub_1003E9904(uint64_t a1, __int16 a2, __int16 a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E9988;
  v5[3] = &unk_100AF28E0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 74, a4, v5, 0);
}

uint64_t sub_1003E99B0(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Set AFH Host Channle Classification callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x4Cu);
}

uint64_t sub_1003E9A78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003E9AFC;
  v7[3] = &unk_100AF28C0;
  v8 = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v9 = a6;
  return sub_10002173C(a1, 76, a6, v7, 0);
}

uint64_t sub_1003E9B28(int a1, int a2, int a3, char a4, int a5, int *a6, int *a7, int *a8, char a9)
{
  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v22[0] = 67109888;
    v22[1] = a1;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = a3;
    v27 = 1024;
    v28 = a5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Get Essential Power Database Entries status=%d vscVersion=%d, countryCode=%d, pCap=%d", v22, 0x1Au);
  }

  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  BYTE2(xmmword_100B6D420) = a4;
  BYTE3(xmmword_100B6D420) = a5;
  v18 = *a6;
  BYTE8(xmmword_100B6D420) = *(a6 + 4);
  DWORD1(xmmword_100B6D420) = v18;
  v19 = *a7;
  BYTE13(xmmword_100B6D420) = *(a7 + 4);
  *(&xmmword_100B6D420 + 9) = v19;
  v20 = *a8;
  BYTE2(xmmword_100B6D430) = *(a8 + 4);
  *(&xmmword_100B6D420 + 14) = v20;
  BYTE3(xmmword_100B6D430) = a9;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x4Du);
}

uint64_t sub_1003E9C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003E9D68;
  v12[3] = &unk_100AF2900;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v13 = a10;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003E9DA0;
  v11[3] = &unk_100AF2920;
  v11[4] = a2;
  v11[5] = a6;
  v11[6] = a3;
  v11[7] = a4;
  v11[8] = a7;
  v11[9] = a8;
  v11[10] = a9;
  v11[11] = a5;
  return sub_10002173C(a1, 77, a10, v12, v11);
}

uint64_t sub_1003E9DA0(uint64_t result)
{
  **(result + 32) = xmmword_100B6D420;
  **(result + 40) = BYTE1(xmmword_100B6D420);
  **(result + 48) = BYTE2(xmmword_100B6D420);
  **(result + 56) = BYTE3(xmmword_100B6D420);
  v1 = *(result + 64);
  v2 = DWORD1(xmmword_100B6D420);
  *(v1 + 4) = BYTE8(xmmword_100B6D420);
  *v1 = v2;
  v3 = *(result + 72);
  v4 = *(&xmmword_100B6D420 + 9);
  *(v3 + 4) = BYTE13(xmmword_100B6D420);
  *v3 = v4;
  v5 = *(result + 80);
  v6 = *(&xmmword_100B6D420 + 14);
  *(v5 + 4) = BYTE2(xmmword_100B6D430);
  *v5 = v6;
  **(result + 88) = BYTE3(xmmword_100B6D430);
  return result;
}

uint64_t sub_1003E9E24(int a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, int a9)
{
  v15 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v20 = a1;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "HRB Read Enhanced Transmit Power Level callback status=%d", buf, 8u);
  }

  LOWORD(xmmword_100B6D420) = a2;
  BYTE2(xmmword_100B6D420) = a3;
  BYTE3(xmmword_100B6D420) = a4;
  BYTE4(xmmword_100B6D420) = a5;
  BYTE5(xmmword_100B6D420) = a6;
  BYTE6(xmmword_100B6D420) = a7;
  BYTE7(xmmword_100B6D420) = a8;
  DWORD2(xmmword_100B6D420) = a9;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x50u);
}

uint64_t sub_1003E9F74(uint64_t a1, __int16 a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003EA054;
  v18[3] = &unk_100AF24D0;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EA07C;
  v13[3] = &unk_100AF2940;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v13[7] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  return sub_10002173C(a1, 80, a4, v18, v13);
}

uint64_t sub_1003EA07C(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = BYTE2(xmmword_100B6D420);
  **(result + 48) = BYTE3(xmmword_100B6D420);
  **(result + 56) = BYTE4(xmmword_100B6D420);
  **(result + 64) = BYTE5(xmmword_100B6D420);
  **(result + 72) = BYTE6(xmmword_100B6D420);
  **(result + 80) = BYTE7(xmmword_100B6D420);
  **(result + 88) = BYTE8(xmmword_100B6D420);
  **(result + 96) = BYTE9(xmmword_100B6D420);
  **(result + 104) = BYTE10(xmmword_100B6D420);
  **(result + 112) = BYTE11(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003EA108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = sub_10025585C(a2);
  v19 = *(*a1 + 1768);

  return v19(a1, v18, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_1003EA1D8(int a1, uint64_t *a2, __int128 *a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v16[0] = 67109120;
    v16[1] = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "HRB Read AFH Channel Map callback status=%d", v16, 8u);
  }

  if (!a1)
  {
    v7 = *a2;
    WORD4(xmmword_100B6D420) = *(a2 + 4);
    *&xmmword_100B6D420 = v7;
    v8 = a3[4];
    v9 = a3[5];
    v10 = a3[3];
    *(&dword_100B6D448 + 2) = a3[2];
    *(&dword_100B6D478 + 2) = v9;
    *(&dword_100B6D468 + 2) = v8;
    *(&xmmword_100B6D450 + 10) = v10;
    v11 = a3[8];
    v12 = a3[9];
    v13 = a3[7];
    *(&dword_100B6D488 + 2) = a3[6];
    *(&dword_100B6D4B8 + 2) = v12;
    *(&dword_100B6D4A8 + 2) = v11;
    *(&dword_100B6D498 + 2) = v13;
    v14 = *a3;
    *(&xmmword_100B6D430 + 10) = a3[1];
    *(&xmmword_100B6D420 + 10) = v14;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x4Bu);
}

uint64_t sub_1003EA308(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003EA3C8;
  v7[3] = &unk_100AF2610;
  v8 = a2;
  v9 = a5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EA3EC;
  v6[3] = &unk_100AE0860;
  v6[4] = a3;
  v6[5] = a4;
  return sub_10002173C(a1, 75, a5, v7, v6);
}

__n128 sub_1003EA3EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xmmword_100B6D420;
  *(v1 + 8) = WORD4(xmmword_100B6D420);
  *v1 = v2;
  v3 = *(a1 + 40);
  v4 = *(&xmmword_100B6D430 + 10);
  *v3 = *(&xmmword_100B6D420 + 10);
  *(v3 + 16) = v4;
  v5 = *(&dword_100B6D448 + 2);
  v6 = *(&xmmword_100B6D450 + 10);
  v7 = *(&dword_100B6D478 + 2);
  *(v3 + 64) = *(&dword_100B6D468 + 2);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  result = *(&dword_100B6D488 + 2);
  v9 = *(&dword_100B6D498 + 2);
  v10 = *(&dword_100B6D4B8 + 2);
  *(v3 + 128) = *(&dword_100B6D4A8 + 2);
  *(v3 + 144) = v10;
  *(v3 + 96) = result;
  *(v3 + 112) = v9;
  return result;
}

uint64_t sub_1003EA44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_10025585C(a2);
  if (a6)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1003EA5B0;
    v16[3] = &unk_100AF2610;
    v17 = v12;
    v18 = a5;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003EA5D4;
    v15[3] = &unk_100AEC130;
    v15[4] = a3;
    v15[5] = a4;
    v15[6] = a2;
    return sub_10002173C(a1, 75, a5, v16, v15);
  }

  else
  {
    v14 = *(*a1 + 1784);

    return v14(a1, v12, a3, a4, a5);
  }
}

_BYTE *sub_1003EA5D4(uint64_t *a1)
{
  v2 = a1[4];
  v3 = xmmword_100B6D420;
  *(v2 + 8) = WORD4(xmmword_100B6D420);
  *v2 = v3;
  v4 = a1[5];
  v5 = *(&xmmword_100B6D430 + 10);
  *v4 = *(&xmmword_100B6D420 + 10);
  v4[1] = v5;
  v6 = *(&dword_100B6D448 + 2);
  v7 = *(&xmmword_100B6D450 + 10);
  v8 = *(&dword_100B6D478 + 2);
  v4[4] = *(&dword_100B6D468 + 2);
  v4[5] = v8;
  v4[2] = v6;
  v4[3] = v7;
  v9 = *(&dword_100B6D488 + 2);
  v10 = *(&dword_100B6D498 + 2);
  v11 = *(&dword_100B6D4B8 + 2);
  v4[8] = *(&dword_100B6D4A8 + 2);
  v4[9] = v11;
  v4[6] = v9;
  v4[7] = v10;
  v18 = 0;
  sub_1000216B4(&v18);
  if (qword_100B508F0 != -1)
  {
    sub_1008274AC();
  }

  v12 = a1[6];
  v13 = *(v12 + 4);
  v16 = *v12;
  v17 = v13;
  v14 = sub_1000E6554(off_100B508E8, &v16, 0);
  if (v14)
  {
    if (qword_100B508A0 != -1)
    {
      sub_100827B44();
    }

    sub_100574034(off_100B50898, 0, v14, a1[4]);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100827B6C();
  }

  return sub_10002249C(&v18);
}

uint64_t sub_1003EA728(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Read Limit Channel Map callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x4Eu);
}

uint64_t sub_1003EA7F0(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EA868;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 78, a3, v4, 0);
}

uint64_t sub_1003EA88C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "HRB Set Band Edges callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x4Fu);
}

uint64_t sub_1003EA954(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003EA9D8;
  v7[3] = &unk_100AF28C0;
  v8 = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v9 = a6;
  return sub_10002173C(a1, 79, a6, v7, 0);
}

uint64_t sub_1003EAA04(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Enhanced Tx Test callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x51u);
}

uint64_t sub_1003EAACC(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9, char a10, char a11, __int16 a12, char a13, char a14, unsigned __int8 a15)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003EAB98;
  v16[3] = &unk_100AF22F0;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v16[4] = a2;
  v16[5] = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v17 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  return sub_10002173C(a1, 81, a15, v16, 0);
}

uint64_t sub_1003EAC0C(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, __int16 a11, unsigned __int8 a12)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EACBC;
  v13[3] = &unk_100AF25B0;
  v13[4] = a2;
  v14 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v15 = a11;
  v23 = a12;
  return sub_10002173C(a1, 82, a12, v13, 0);
}

uint64_t sub_1003EAD2C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Enhanced Rx Test callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x53u);
}

uint64_t sub_1003EADF4(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, __int16 a12, unsigned __int8 a13)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003EAEAC;
  v14[3] = &unk_100AF2670;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v15 = a12;
  v26 = a13;
  return sub_10002173C(a1, 83, a13, v14, 0);
}

uint64_t sub_1003EAF1C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Advanced Sniff Mode callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x54u);
}

uint64_t sub_1003EAFE4(uint64_t a1, __int16 a2, __int16 a3, char a4, char a5, char a6, __int16 a7, __int16 a8, __int16 a9, __int16 a10, __int16 a11, __int16 a12, char a13, char a14, unsigned __int8 a15)
{
  v19 = a14;
  v20 = a13;
  if (*(a1 + 1644) == 1)
  {
    v24 = a6;
    v25 = a7;
    v26 = a8;
    v21 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      v22 = *(a1 + 1645);
      *buf = 67109120;
      v43 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Advanced Sniff Mode Override MaxRetryInFrames=%d", buf, 8u);
    }

    a5 = *(a1 + 1645);
    a7 = v25;
    a8 = v26;
    a6 = v24;
    v19 = a14;
    v20 = a13;
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1003EB190;
  v27[3] = &unk_100AF2960;
  v28 = a2;
  v29 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a11;
  v35 = a12;
  v39 = v20;
  v40 = v19;
  v41 = a15;
  return sub_10002173C(a1, 84, a15, v27, 0);
}

uint64_t sub_1003EB208(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Exit Advanced Sniff Mode callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x55u);
}

uint64_t sub_1003EB2D0(uint64_t a1, __int16 a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EB348;
  v4[3] = &unk_100AF2610;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 85, a3, v4, 0);
}

uint64_t sub_1003EB36C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Advanced Sniff Reconfigure callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x56u);
}

uint64_t sub_1003EB434(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, char a6, __int16 a7, int a8)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003EB4C4;
  v9[3] = &unk_100AF25D0;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v15 = a6;
  v14 = a7;
  v16 = a8;
  return sub_10002173C(a1, 86, a8, v9, 0);
}

uint64_t sub_1003EB4FC(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Set Peripheral Max Age callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x57u);
}

uint64_t sub_1003EB5C4(uint64_t a1, __int16 a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EB648;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 87, a4, v5, 0);
}

uint64_t sub_1003EB670(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "LMP Flow callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x58u);
}

uint64_t sub_1003EB738(uint64_t a1, __int16 a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EB7BC;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 88, a4, v5, 0);
}

uint64_t sub_1003EB7E4(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AoS Empty Packet Report callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x59u);
}

uint64_t sub_1003EB8AC(uint64_t a1, __int16 a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EB930;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 89, a4, v5, 0);
}

uint64_t sub_1003EB958(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Control AoS callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x5Au);
}

uint64_t sub_1003EBA20(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EBA98;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 90, a3, v4, 0);
}

uint64_t sub_1003EBABC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x5Bu);
}

uint64_t sub_1003EBB0C(uint64_t a1, void *a2, char a3, char a4, char a5)
{
  v9 = a2;
  if ((*(*a1 + 2920))(a1))
  {
    v17 = 0;
    if (qword_100B508B0 != -1)
    {
      sub_1008272AC();
    }

    v10 = off_100B508A8;
    sub_10004DFB4(v18, v9);
    if (sub_1000C4FCC(v10, v18, &v17))
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1003EBCA8;
      v13[3] = &unk_100AF2230;
      v13[4] = v17;
      v14 = a3;
      v15 = a4;
      v16 = a5;
      v11 = sub_10002173C(a1, 91, 1, v13, 0);
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1003EBCD4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x5Cu);
}

uint64_t sub_1003EBD24(uint64_t a1, char a2, char a3, char a4, int a5, char a6)
{
  result = (*(*a1 + 2928))(a1);
  if (result)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003EBE10;
    v13[3] = &unk_100AF2390;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v14 = a5;
    v18 = a6;
    return sub_10002173C(a1, 92, 1, v13, 0);
  }

  return result;
}

uint64_t sub_1003EBE3C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x5Fu);
}

uint64_t sub_1003EBE8C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003EBF04;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 95, 1, v3, 0);
}

uint64_t sub_1003EBF1C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x61u);
}

uint64_t sub_1003EBF6C(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EBFE4;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 97, a3, v4, 0);
}

uint64_t sub_1003EC008(int a1, int a2, int a3, int a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v10[0] = 67109632;
    v10[1] = a2;
    v11 = 1024;
    v12 = a3;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ePA GPIO state: enabled %d, num %d, sleep %d", v10, 0x14u);
  }

  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  BYTE2(xmmword_100B6D420) = a4;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x62u);
}

uint64_t sub_1003EC114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003EC1D4;
  v7[3] = &unk_100AF2270;
  v8 = a5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EC1F0;
  v6[3] = &unk_100AEC130;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  return sub_10002173C(a1, 98, a5, v7, v6);
}

_BYTE **sub_1003EC1F0(_BYTE **result)
{
  *result[4] = xmmword_100B6D420;
  *result[5] = BYTE1(xmmword_100B6D420);
  *result[6] = BYTE2(xmmword_100B6D420);
  return result;
}

uint64_t sub_1003EC220(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x11Fu);
}

uint64_t sub_1003EC270(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EC2F4;
  v6[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 287, 1, v6, 0);
}

uint64_t sub_1003EC31C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x63u);
}

uint64_t sub_1003EC36C(uint64_t a1, uint64_t a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EC3E8;
  v4[3] = &unk_100AF2210;
  v4[4] = a2;
  v5 = a3;
  return sub_10002173C(a1, 99, 1, v4, 0);
}

uint64_t sub_1003EC408(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xD1u);
}

uint64_t sub_1003EC458(uint64_t a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EC4DC;
  v5[3] = &unk_100AF2610;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 209, a4, v5, 0);
}

uint64_t sub_1003EC504(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB0u);
}

uint64_t sub_1003EC554(uint64_t a1, char a2, int a3, char a4)
{
  if (sub_1004106D0(a1, 0xBB8u))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003EC634;
    v9[3] = &unk_100AF2740;
    v11 = a2;
    v10 = a3;
    v12 = a4;
    return sub_10002173C(a1, 176, 1, v9, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100827BA8();
    }

    return 1;
  }
}

uint64_t sub_1003EC658(int a1, const void *a2, size_t __n)
{
  *(&xmmword_100B6D420 + 9) = 0;
  *(&xmmword_100B6D420 + 1) = 0;
  LOBYTE(xmmword_100B6D420) = __n;
  if (!a1 && __n <= 0xC)
  {
    memcpy(&xmmword_100B6D420 + 1, a2, __n);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xD3u);
}

uint64_t sub_1003EC6D8(int a1, const void *a2, size_t __n)
{
  unk_100B6D50C = 0u;
  *(&dword_100B6D500 + 1) = 0u;
  *(&dword_100B6D4F0 + 1) = 0u;
  *(&dword_100B6D4E0 + 1) = 0u;
  *(&dword_100B6D4D0 + 1) = 0u;
  *(&dword_100B6D4C0 + 1) = 0u;
  *(&dword_100B6D4B0 + 1) = 0u;
  *(&dword_100B6D4A0 + 1) = 0u;
  *(&dword_100B6D490 + 1) = 0u;
  *(&dword_100B6D480 + 1) = 0u;
  *(&dword_100B6D470 + 1) = 0u;
  *(&dword_100B6D460 + 1) = 0u;
  *(&xmmword_100B6D450 + 1) = 0u;
  *(&dword_100B6D440 + 1) = 0u;
  *(&xmmword_100B6D430 + 1) = 0u;
  *(&xmmword_100B6D420 + 1) = 0u;
  LOBYTE(xmmword_100B6D420) = __n;
  if (!a1 && __n <= 0xFB)
  {
    memcpy(&xmmword_100B6D420 + 1, a2, __n);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xD4u);
}

uint64_t sub_1003EC794(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003EC854;
  v7[3] = &unk_100AF2610;
  v8 = a2;
  v9 = a5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EC878;
  v6[3] = &unk_100AE0860;
  v6[4] = a3;
  v6[5] = a4;
  return sub_10002173C(a1, 211, a5, v7, v6);
}

void sub_1003EC878(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (xmmword_100B6D420 > 0xCu)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100827BE4();
      }
    }

    else
    {
      **(a1 + 40) = xmmword_100B6D420;
      v1 = *(a1 + 32);
      v2 = xmmword_100B6D420;

      memcpy(v1, &xmmword_100B6D420 + 1, v2);
    }
  }
}

uint64_t sub_1003EC90C(uint64_t a1, __int16 a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003EC9D0;
  v8[3] = &unk_100AF25D0;
  v8[4] = a1;
  v9 = a2;
  v10 = a3;
  v11 = a6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003ECA74;
  v7[3] = &unk_100AE0860;
  v7[4] = a4;
  v7[5] = a5;
  return sub_10002173C(a1, 212, a6, v8, v7);
}

uint64_t sub_1003EC9D0(uint64_t a1)
{
  if ((*(**(a1 + 32) + 3000))(*(a1 + 32)))
  {

    return sub_1002A07E4();
  }

  else
  {

    return sub_1002A8E74();
  }
}

void sub_1003ECA74(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (xmmword_100B6D420 > 0xFBu)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100827C54();
      }
    }

    else
    {
      **(a1 + 40) = xmmword_100B6D420;
      v1 = *(a1 + 32);
      v2 = xmmword_100B6D420;

      memcpy(v1, &xmmword_100B6D420 + 1, v2);
    }
  }
}

uint64_t sub_1003ECB08(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x139u);
}

uint64_t sub_1003ECB58(uint64_t a1, __int16 a2, __int16 a3, char a4, char a5, char a6, char a7, uint64_t a8, unsigned __int8 a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003ECBF0;
  v10[3] = &unk_100AF2250;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v10[4] = a8;
  v17 = a9;
  return sub_10002173C(a1, 313, a9, v10, 0);
}

uint64_t sub_1003ECC2C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x139u);
}

uint64_t sub_1003ECC7C(uint64_t a1, char a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, __int16 a12, __int16 a13, __int16 a14, __int16 a15, __int16 a16, __int16 a17, __int16 a18, __int16 a19, char a20, unsigned __int8 a21)
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003ECD94;
  v22[3] = &unk_100AF22F0;
  v32 = a2;
  v23 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v41 = a20;
  v42 = a21;
  return sub_10002173C(a1, 314, a21, v22, 0);
}

uint64_t sub_1003ECE0C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x17u);
}

uint64_t sub_1003ECE5C(uint64_t a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003ECEE0;
  v5[3] = &unk_100AF2610;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 23, a4, v5, 0);
}

uint64_t sub_1003ECF10(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x65u);
}

uint64_t sub_1003ECF60(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003ECFD8;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 101, 1, v3, 0);
}

uint64_t sub_1003ECFF0(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  if ((atomic_load_explicit(&qword_100B6D630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6D630))
  {
    *&qword_100B6D628 = CFAbsoluteTimeGetCurrent() + 3600.0;
    __cxa_guard_release(&qword_100B6D630);
  }

  v6 = *(a1 + 800);
  if (v6 - 2000 > 0x7CF)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (a3 >= 2 && v6 >= 0xBB8)
    {
      v8 = *a2++;
      v7 = v8;
      LOBYTE(a3) = a3 - 2;
    }
  }

  v19 = 0;
  v20 = 0;
  sub_10000C704(&v19, a2, a3);
  if (a3 >= 3u)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      v11 = __rev16(*(a2 + 1));
      *buf = 67109632;
      v22 = v7;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HostwakeReport: version(%d), type(%d), reasonCode(%d)", buf, 0x14u);
    }
  }

  v12 = sub_100017F4C();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_1003ED2A8;
  v14[3] = &unk_100AF2980;
  v14[4] = a1;
  v15 = &off_100AE0A78;
  v16 = v20;
  if (v20)
  {
    sub_10000C69C(v20);
  }

  v18 = a3;
  v17 = a2;
  sub_10000CA94(v12, v14);
  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }

  v19 = &off_100AE0A78;
  if (v20)
  {
    sub_10000C808(v20);
  }

  return 0;
}

void sub_1003ED2A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100432718();
  v4 = *(a1 + 48);
  v11 = &off_100AE0A78;
  v12 = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  (*(*v3 + 32))(v3, &v11, 0, "", "", "");
  v11 = &off_100AE0A78;
  if (v12)
  {
    sub_10000C808(v12);
  }

  if ((*(v2 + 800) - 3000) <= 0x3E7 && *(a1 + 64) >= 3u)
  {
    v5 = *(a1 + 56);
    if (*v5 == 5 && !v5[1])
    {
      v6 = ++word_100B6D620;
      if (word_100B6D620 >= 0x32u)
      {
        v7 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v5[2];
          *buf = 67109376;
          v14 = v6;
          v15 = 1024;
          v16 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unexpected frequent VSE caused AP wakeup counter %d reasonCode %d", buf, 0xEu);
        }

        v9 = sub_10000E92C();
        if ((*(*v9 + 8))(v9))
        {
          sub_10057930C("FrequentAPWakeup", "WakePacketTypeVSE", 60.0);
        }

        word_100B6D620 = 0;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current >= *&qword_100B6D628)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          sub_100827CC4();
        }

        *&qword_100B6D628 = Current + 3600.0;
        word_100B6D620 = 0;
      }
    }
  }
}

void sub_1003ED50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_1003ED540(uint64_t a1)
{
  *(a1 + 40) = &off_100AE0A78;
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

uint64_t sub_1003ED570(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x66u);
}

uint64_t sub_1003ED5C0(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003ED638;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 102, 1, v3, 0);
}

uint64_t sub_1003ED650(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x67u);
}

uint64_t sub_1003ED6A0(uint64_t a1, int a2, char a3, __int16 a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003ED720;
  v5[3] = &unk_100AF2450;
  v6 = a2;
  v8 = a3;
  v7 = a4;
  return sub_10002173C(a1, 103, 1, v5, 0);
}

uint64_t sub_1003ED744(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x68u);
}

uint64_t sub_1003ED794(uint64_t a1, __int16 a2, __int16 a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003ED810;
  v4[3] = &unk_100AF24D0;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 104, 1, v4, 0);
}

uint64_t sub_1003ED830(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x69u);
}

uint64_t sub_1003ED880(uint64_t a1, __int16 a2, char a3, char a4, char a5, uint64_t a6, char a7, char a8, __int16 a9, __int16 a10, char a11, __int16 a12, __int16 a13)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003ED938;
  v14[3] = &unk_100AF29B0;
  v15 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v14[4] = a6;
  v23 = a7;
  v24 = a8;
  v16 = a9;
  v17 = a10;
  v25 = a11;
  v18 = a12;
  v19 = a13;
  return sub_10002173C(a1, 105, 1, v14, 0);
}

uint64_t sub_1003ED9A4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x6Bu);
}

uint64_t sub_1003ED9F4(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003EDA6C;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 107, 1, v3, 0);
}

uint64_t sub_1003EDA84(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "enable2MBPHYForDenylistedDevicesCB status %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x6Au);
}

uint64_t sub_1003EDB4C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003EDBC4;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 106, 1, v3, 0);
}

uint64_t sub_1003EDBDC(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "enableWirelessSplitterCB status %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x6Cu);
}

uint64_t sub_1003EDCA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003EDD30;
  v9[3] = &unk_100AF2570;
  v9[4] = a3;
  v9[5] = a4;
  v14 = a2;
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = a8;
  return sub_10002173C(a1, 108, 1, v9, 0);
}

uint64_t sub_1003EDD30(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  result = sub_10023DB58(*(a1 + 32), &v4);
  if (!result)
  {
    result = sub_10023DB58(*(a1 + 40), &v3);
    if (!result)
    {
      return sub_1002A91DC();
    }
  }

  return result;
}

uint64_t sub_1003EDDA8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x6Du);
}

uint64_t sub_1003EDDF8(uint64_t a1, __int16 a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9)
{
  v16 = a1;
  if ((*(a1 + 800) - 3000) > 0x3E7)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1003EE0C0;
    v20[3] = &unk_100AF2250;
    v21 = a2;
    v23 = a3;
    v20[4] = a4;
    v24 = a5;
    v22 = a6;
    v25 = a7;
    v26 = a8;
    v27 = a9;
    v18 = v20;
    v19 = 109;
  }

  else
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1003EDFBC;
    v35[3] = &unk_100AF2610;
    v36 = a2;
    v37 = a9;
    result = sub_10002173C(a1, 109, 1, v35, 0);
    if (result)
    {
      return result;
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1003EE010;
    v28[3] = &unk_100AF2590;
    v29 = a2;
    v31 = a3;
    v28[4] = a4;
    v32 = a5;
    v30 = a6;
    v33 = a7;
    v34 = a8;
    v18 = v28;
    a1 = v16;
    v19 = 119;
  }

  return sub_10002173C(a1, v19, 1, v18, 0);
}

uint64_t sub_1003EE070(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x77u);
}

uint64_t sub_1003EE114(uint64_t a1, __int16 a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003EE1C4;
  v14[3] = &unk_100AF29D0;
  v15 = a2;
  v17 = a3;
  v18 = a5;
  v16 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v14[4] = a4;
  v14[5] = a12;
  v14[6] = a13;
  return sub_10002173C(a1, 119, 1, v14, 0);
}

uint64_t sub_1003EE230(uint64_t a1, __int16 a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003EE2E0;
  v14[3] = &unk_100AF29D0;
  v15 = a2;
  v17 = a3;
  v18 = a5;
  v16 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v14[4] = a4;
  v14[5] = a12;
  v14[6] = a13;
  return sub_10002173C(a1, 119, 1, v14, 0);
}

uint64_t sub_1003EE34C(uint64_t a1, __int16 a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003EE3C4;
  v3[3] = &unk_100AF2330;
  v4 = a2;
  return sub_10002173C(a1, 119, 1, v3, 0);
}

uint64_t sub_1003EE3C4(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  return sub_1002A72A0(*(a1 + 32), 2, 0, &v2);
}

uint64_t sub_1003EE428(int a1, char a2, char a3, char a4, char a5)
{
  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  BYTE2(xmmword_100B6D420) = a4;
  BYTE3(xmmword_100B6D420) = a5;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x6Eu);
}

uint64_t sub_1003EE490(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, _WORD *a5)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 72);
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v10 = sub_100020304(a1, 110);
    *buf = 136446210;
    *v22 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending: %{public}s", buf, 0xCu);
  }

  if (sub_100020164(a1, 110))
  {
    v18 = 0;
    sub_1000216B4(&v18);
    v11 = sub_1002A6F00();
    sub_100022214(&v18);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      if (qword_100B50AA0 != -1)
      {
        sub_100826FD0();
      }

      v13 = sub_100021BDC(off_100B50A98, 0x6Eu);
      *a3 = BYTE1(xmmword_100B6D420);
      *a4 = BYTE2(xmmword_100B6D420);
      *a5 = BYTE3(xmmword_100B6D420);
      v12 = v13 != 0;
    }

    memset(v20, 0, sizeof(v20));
    if (BYTE1(xmmword_100B6D420) <= 0x64u)
    {
      if (BYTE1(xmmword_100B6D420))
      {
        v14 = BYTE1(xmmword_100B6D420) / 0x14u;
        if (BYTE1(xmmword_100B6D420) % 0x14u)
        {
          ++v14;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 6;
    }

    *&v20[4 * v14] = 1;
    if (*a4)
    {
      if (BYTE3(xmmword_100B6D420) <= 0x64u)
      {
        if (BYTE3(xmmword_100B6D420))
        {
          if (BYTE3(xmmword_100B6D420) % 0x14u)
          {
            v15 = BYTE3(xmmword_100B6D420) / 0x14u + 1;
          }

          else
          {
            v15 = BYTE3(xmmword_100B6D420) / 0x14u;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 6;
      }

      *&v20[4 * v15 + 28] = 1;
    }

    *buf = 1;
    *v22 = *v20;
    *&v22[12] = *&v20[12];
    v23[0] = *&v20[28];
    *(v23 + 12) = *&v20[40];
    if (sub_10000F034())
    {
      v16 = sub_10000F034();
      (*(*v16 + 208))(v16, buf);
    }

    sub_100022684(a1, 0x6Eu);
    sub_10002249C(&v18);
  }

  else
  {
    v12 = 2;
  }

  sub_1000088CC(v19);
  return v12;
}

void sub_1003EE748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003EE7FC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x71u);
}

uint64_t sub_1003EE8A8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x70u);
}

uint64_t sub_1003EE8F8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x73u);
}

uint64_t sub_1003EE948(uint64_t a1, __int16 a2, char a3, char a4, __int16 a5, __int16 a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, char a11)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003EE9E8;
  v12[3] = &unk_100AF2410;
  v13 = a2;
  v16 = a3;
  v17 = a4;
  v14 = a5;
  v15 = a6;
  v18 = a8;
  v12[4] = a7;
  v12[5] = a9;
  v12[6] = a10;
  v19 = a11;
  return sub_10002173C(a1, 115, 1, v12, 0);
}

uint64_t sub_1003EEA48(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x75u);
}

uint64_t sub_1003EEA98(uint64_t a1, __int16 a2, char a3, char a4, char a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EEB1C;
  v6[3] = &unk_100AF28E0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 117, 1, v6, 0);
}

uint64_t sub_1003EEB44(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x76u);
}

uint64_t sub_1003EEB94(uint64_t a1, __int16 a2, __int16 a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EEC10;
  v4[3] = &unk_100AF24D0;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 118, 1, v4, 0);
}

uint64_t sub_1003EEC30(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x79u);
}

uint64_t sub_1003EEC80(uint64_t a1, __int16 a2, char a3, char a4, char a5, char a6)
{
  if (!sub_10006CDA4(a1))
  {
    return 2;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003EED4C;
  v13[3] = &unk_100AF2740;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  return sub_10002173C(a1, 121, 1, v13, 0);
}

uint64_t sub_1003EED78(int a1, int a2, int a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109376;
    v8[1] = a2;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Match Buffer Read : subOpcode %d, numEntries %d", v8, 0xEu);
  }

  LOBYTE(xmmword_100B6D420) = a2;
  BYTE1(xmmword_100B6D420) = a3;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x7Au);
}

uint64_t sub_1003EEE6C(uint64_t a1, __int16 a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EEF24;
  v5[3] = &unk_100AF2330;
  v6 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EEF3C;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 122, 1, v5, v4);
}

uint64_t sub_1003EEF50(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x7Bu);
}

uint64_t sub_1003EEFA0(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EF018;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 123, a3, v4, 0);
}

uint64_t sub_1003EF03C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x7Cu);
}

uint64_t sub_1003EF08C(uint64_t a1, __int16 a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EF110;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 124, a4, v5, 0);
}

uint64_t sub_1003EF138(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x7Du);
}

uint64_t sub_1003EF188(uint64_t a1, char a2, char a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EF20C;
  v5[3] = &unk_100AF2610;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 125, a4, v5, 0);
}

uint64_t sub_1003EF234(int a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Read Connection Event Counter : connEventCounter %d", v6, 8u);
  }

  LOWORD(xmmword_100B6D420) = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x7Eu);
}

uint64_t sub_1003EF310(uint64_t a1, __int16 a2, uint64_t a3, int a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EF3D0;
  v6[3] = &unk_100AF2610;
  v7 = a2;
  v8 = a4;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EF3F4;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a3;
  return sub_10002173C(a1, 126, a4, v6, v5);
}

uint64_t sub_1003EF408(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x7Fu);
}

uint64_t sub_1003EF458(uint64_t a1, uint64_t a2, __int16 a3, char a4, char a5, int a6)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003EF524;
  v9[3] = &unk_100AF24B0;
  v9[4] = a1;
  v9[5] = a2;
  v11 = a5;
  v10 = a3;
  v12 = a4;
  v13 = a6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003EF5E4;
  v7[3] = &unk_100AE15D8;
  v7[4] = a2;
  v8 = a5;
  return sub_10002173C(a1, 127, a6, v9, v7);
}

uint64_t sub_1003EF524(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (sub_1000ABD24(*(a1 + 40)))
  {
    if (*(*(a1 + 40) + 252) == *(a1 + 50))
    {
      sub_100022684(v2, 0x7Fu);
      return 408;
    }

    else
    {

      return sub_1002A769C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100827D44();
    }

    return 414;
  }
}

_BYTE *sub_1003EF5E4(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_1000ABD24(*(a1 + 32)))
  {
    *(*(a1 + 32) + 252) = *(a1 + 40) != 0;
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100827D80();
  }

  return sub_10002249C(&v3);
}

uint64_t sub_1003EF680(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x80u);
}

uint64_t sub_1003EF6D0(uint64_t a1, char a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EF748;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 128, a3, v4, 0);
}

uint64_t sub_1003EF76C(int a1, __int128 *a2)
{
  xmmword_100B6D420 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[4];
  xmmword_100B6D450 = a2[3];
  *&dword_100B6D460 = v5;
  xmmword_100B6D430 = v3;
  *&dword_100B6D440 = v4;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x120u);
}

uint64_t sub_1003EF7DC(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EF898;
  v5[3] = &unk_100AF2270;
  v6 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EF8B4;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 288, a2, v5, v4);
}

__n128 sub_1003EF8B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = xmmword_100B6D420;
  result = xmmword_100B6D430;
  v3 = *&dword_100B6D440;
  v4 = *&dword_100B6D460;
  *(v1 + 48) = xmmword_100B6D450;
  *(v1 + 64) = v4;
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1003EF8DC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EF994;
  v6[3] = &unk_100AF28E0;
  v7 = a2;
  v8 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EF9B8;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a4;
  return sub_10002173C(a1, 288, a3, v6, v5);
}

__n128 sub_1003EF9B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = xmmword_100B6D420;
  result = xmmword_100B6D430;
  v3 = *&dword_100B6D440;
  v4 = *&dword_100B6D460;
  *(v1 + 48) = xmmword_100B6D450;
  *(v1 + 64) = v4;
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1003EF9E0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x121u);
}

uint64_t sub_1003EFA30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EFAB0;
  v6[3] = &unk_100AF24B0;
  v7 = a2;
  v6[4] = a3;
  v6[5] = a4;
  v8 = a5;
  return sub_10002173C(a1, 289, a5, v6, 0);
}

uint64_t sub_1003EFAD8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x124u);
}

uint64_t sub_1003EFB28(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003EFBA0;
  v4[3] = &unk_100AF2210;
  v4[4] = a2;
  v5 = a3;
  return sub_10002173C(a1, 292, a3, v4, 0);
}

uint64_t sub_1003EFBC4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x11Au);
}

uint64_t sub_1003EFC14(uint64_t a1, char a2, char a3, char a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EFC98;
  v6[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 282, a5, v6, 0);
}

uint64_t sub_1003EFCC4(_DWORD *a1)
{
  v2 = a1[200];
  if (v2 >= 0x7D0)
  {
    if (v2 <= 0xF9F)
    {
      v3 = sub_10000C798();
      v4 = (*(*v3 + 416))(v3);
      v5 = (*(*a1 + 2328))(a1);
      if (v4)
      {
        v6 = v5 == 0;
        v7 = 5;
        goto LABEL_32;
      }

LABEL_31:
      v6 = v5 == 0;
      v7 = 4;
LABEL_32:
      if (!v6)
      {
        ++v7;
      }

      return v7;
    }

    if (v2 - 5000 < 0x3E9)
    {
      return 5;
    }

    goto LABEL_10;
  }

  if (!v2)
  {
LABEL_10:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100827DBC();
    }

    return 0;
  }

  v8 = sub_10000C798();
  if ((*(*v8 + 368))(v8))
  {
    return 1;
  }

  v9 = sub_10000C798();
  if (!(*(*v9 + 416))(v9))
  {
    v5 = (*(*a1 + 2328))(a1);
    goto LABEL_31;
  }

  v10 = a1[200];
  v11 = v10 - 9;
  v12 = v10 >= 0x14;
  if (v10 == 20)
  {
    v13 = 6;
  }

  else
  {
    v13 = 8;
  }

  if (!v12)
  {
    v13 = 16;
  }

  if (v11 <= 0x7C6)
  {
    v14 = v13;
  }

  else
  {
    v14 = 4;
  }

  v15 = (*(*a1 + 3128))(a1);
  v16 = qword_100BCE8D8;
  if (v15)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109376;
      v19 = v14;
      v20 = 1024;
      v21 = 5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SWUP: numInstances: %d, max %d", &v18, 0xEu);
    }

    if (v11 < 0x7C7)
    {
      return 5;
    }

    v16 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 67109376;
    v19 = v14;
    v20 = 1024;
    v21 = 5;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SWUP: default numInstances: %d, max %d", &v18, 0xEu);
  }

  return 3;
}

uint64_t sub_1003EFFDC(uint64_t a1)
{
  if ((*(*a1 + 2928))(a1))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F0028(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x82u);
}

uint64_t sub_1003F0078(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F00F0;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 130, 1, v3, 0);
}

uint64_t sub_1003F0108(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x8Eu);
}

uint64_t sub_1003F0158(uint64_t a1, int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F01D0;
  v3[3] = &unk_100AF24D0;
  v4 = a2;
  return sub_10002173C(a1, 142, 1, v3, 0);
}

uint64_t sub_1003F01E8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x83u);
}

uint64_t sub_1003F0238(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F02B0;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 131, 1, v3, 0);
}

uint64_t sub_1003F02C8(uint64_t a1, char a2, char a3, __int16 a4, __int16 a5)
{
  v9 = sub_100017F4C();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F0368;
  v11[3] = &unk_100AE0ED8;
  v14 = a2;
  v15 = a3;
  v12 = a4;
  v13 = a5;
  sub_10000CA94(v9, v11);
  return 0;
}

uint64_t sub_1003F0368()
{
  v0 = *(*sub_100432718() + 56);

  return v0();
}

uint64_t sub_1003F03CC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x8Bu);
}

uint64_t sub_1003F041C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, __int16 a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F049C;
  v7[3] = &unk_100AF28C0;
  v8 = a3;
  v9 = a4;
  v7[4] = a2;
  v7[5] = a5;
  v10 = a6;
  return sub_10002173C(a1, 139, 1, v7, 0);
}

uint64_t sub_1003F04C0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x8Cu);
}

uint64_t sub_1003F0510(uint64_t a1, __int16 a2, int a3, __int16 a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F0590;
  v5[3] = &unk_100AF2390;
  v7 = a2;
  v6 = a3;
  v8 = a4;
  return sub_10002173C(a1, 140, 1, v5, 0);
}

uint64_t sub_1003F05B4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x92u);
}

uint64_t sub_1003F0604(uint64_t a1, char a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, __int16 a11, __int16 a12, __int16 a13, char a14, int a15, int a16, int a17, char a18, int a19)
{
  v27 = sub_10000C798();
  if ((*(*v27 + 792))(v27))
  {
    v28 = sub_10000C7D0();
    v29 = (*(*v28 + 3056))(v28);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1003F0834;
    v34[3] = &unk_100AF2410;
    v30 = a13 & 0xFF7F;
    v43 = a2;
    if (v29)
    {
      v30 = a13;
    }

    v39 = a3;
    v44 = a4;
    v45 = a5;
    v46 = a6;
    v47 = a7;
    v48 = a8;
    v49 = a9;
    v50 = a10;
    v40 = a11;
    v41 = a12;
    v42 = v30;
    v51 = a14;
    v35 = a15;
    v36 = a16;
    v52 = a18;
    v37 = a17;
    v38 = a19;
    return sub_10002173C(a1, 146, 1, v34, 0);
  }

  else
  {
    v32 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = 2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "isRssiStatisticAndDetectionEnabled is not supported", buf, 2u);
    }

    else
    {
      return 2;
    }
  }

  return v31;
}

uint64_t sub_1003F08C4(uint64_t a1, int a2, int a3, int a4)
{
  v8 = sub_10000C798();
  if ((*(*v8 + 816))(v8))
  {
    *(a1 + 1622) = a2;
    *(a1 + 1624) = a3;
    *(a1 + 1626) = a4 != 0;
    v9 = qword_100BCE8D8;
    v10 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109376;
      v13[1] = a2;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "configureMinMaxUsageNotification is now : max:%d min:%d", v13, 0xEu);
      return 0;
    }
  }

  else
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      v10 = 2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "isBluetoothUsageEnabled is not supported", v13, 2u);
    }

    else
    {
      return 2;
    }
  }

  return v10;
}

uint64_t sub_1003F0A30(uint64_t a1, char a2, int a3)
{
  v6 = sub_10000C798();
  if ((*(*v6 + 824))(v6))
  {
    *(a1 + 1627) = a2;
    *(a1 + 1630) = 0;
    *(a1 + 1628) = a3;
    v7 = qword_100BCE8D8;
    v8 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "configurePhyStatisticsUsageNotification is now : subrate Factor:%d", v11, 8u);
      return 0;
    }
  }

  else
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      v8 = 2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "isBluetoothPhyStatisticsUsageEnabled is not supported", v11, 2u);
    }

    else
    {
      return 2;
    }
  }

  return v8;
}

uint64_t sub_1003F0B84(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x8Du);
}

uint64_t sub_1003F0BD4(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F0C4C;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 141, 1, v3, 0);
}

uint64_t sub_1003F0C64(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9)
{
  v17 = sub_10000C7D0();
  v18 = sub_10008215C(v17, 5);
  v19 = *sub_10000C7D0();
  v20 = (*(v19 + 3040))();
  result = 3;
  if (a2)
  {
    if (v18)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    if (v20)
    {
      v23 = 3;
    }

    else
    {
      v23 = v22;
    }

    if (v23 == 3)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1003F0F44;
      v32[3] = &unk_100AF2A10;
      v32[4] = a2;
      v33 = a3;
      v34 = a4;
      v35 = a5;
      v36 = a6;
      v37 = a7;
      v38 = a8;
      v39 = a9;
      v24 = v32;
      v25 = a1;
      v26 = 272;
    }

    else if (v23 == 1)
    {
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1003F0E90;
      v40[3] = &unk_100AF2230;
      v40[4] = a2;
      v41 = a3;
      v42 = a4;
      v43 = a5;
      v24 = v40;
      v25 = a1;
      v26 = 266;
    }

    else
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1003F0FFC;
      v27[3] = &unk_100AF25D0;
      v27[4] = a2;
      v28 = a3;
      v29 = a4;
      v30 = a5;
      v31 = a6;
      v24 = v27;
      v25 = a1;
      v26 = 268;
    }

    return sub_10002173C(v25, v26, 1, v24, 0);
  }

  return result;
}

uint64_t sub_1003F0E90(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v4 = 1;
  v1 = *(a1 + 32);
  v2 = *v1;
  v5 = v1 + 1;
  LOBYTE(v6) = v2;
  BYTE1(v6) = *(a1 + 40);
  WORD1(v6) = *(a1 + 41);
  return sub_1002A30D8(&v4);
}

uint64_t sub_1003F0EF4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x10Au);
}

uint64_t sub_1003F0F44(uint64_t a1)
{
  v4[0] = 3;
  v1 = *(a1 + 32);
  v2 = *v1;
  v4[1] = v1 + 1;
  v5 = v2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 45);
  return sub_1002A30D8(v4);
}

uint64_t sub_1003F0FAC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x110u);
}

uint64_t sub_1003F0FFC(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v4 = 2;
  v1 = *(a1 + 32);
  v2 = *v1;
  v5 = v1 + 1;
  LOBYTE(v6) = v2;
  *(&v6 + 1) = *(a1 + 40);
  return sub_1002A30D8(&v4);
}

uint64_t sub_1003F1058(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x10Cu);
}

uint64_t sub_1003F10A8(int a1, int a2, int a3, int a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109888;
    v10[1] = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pollStatsForDevicesAddedToFilterAcceptListWithOptionsCB: status %d, numAdvs %u, rssi %d, lastRssiTimeDifference %u msec", v10, 0x1Au);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x10Bu);
}

uint64_t sub_1003F11A4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3;
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F122C;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 267, 1, v3, 0);
}

uint64_t sub_1003F122C(uint64_t a1)
{
  v5 = 0;
  v1 = *(a1 + 32);
  v2 = *v1;
  v4 = v1 + 1;
  LOBYTE(v5) = v2;
  return sub_1002A3174(&v4);
}

uint64_t sub_1003F1274(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x8Fu);
}

uint64_t sub_1003F12C4(uint64_t a1, char a2, __int16 a3, __int16 a4, char a5, char a6, char a7, char a8, char a9, char a10)
{
  if (*(a1 + 800) > 0x16u)
  {
    v10 = a7;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) == 0)
  {
    a8 = 0;
    a9 = 0;
    a10 = 0;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003F1384;
  v14[3] = &unk_100AF2230;
  v17 = a2;
  v15 = a3;
  v16 = a4;
  v18 = a5;
  v19 = a6;
  v20 = v10;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  return sub_10002173C(a1, 143, 1, v14, 0);
}

uint64_t sub_1003F13E0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x90u);
}

uint64_t sub_1003F1430(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, char a32)
{
  *&v59[104] = a30;
  *&v59[96] = a29;
  *&v59[88] = a28;
  *&v59[80] = a27;
  *&v59[72] = a26;
  *&v59[64] = a25;
  *&v59[56] = a24;
  *&v59[48] = a23;
  *&v59[40] = a22;
  *&v59[32] = a21;
  *&v59[24] = a20;
  *&v59[16] = a19;
  *&v59[8] = a18;
  *v59 = a17;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1003F155C;
  v33[3] = &unk_100AF2A30;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  v48 = a8;
  v49 = a9;
  v50 = a10;
  v51 = a11;
  v52 = a12;
  v53 = a13;
  v54 = a14;
  v55 = a15;
  v56 = a16;
  v57 = v59[0];
  v34 = *&v59[4];
  v35 = *&v59[20];
  v36 = *&v59[36];
  v37 = *&v59[52];
  v38 = *&v59[68];
  v39 = *&v59[84];
  v40 = *&v59[100];
  v41 = a31;
  v58 = a32;
  return sub_10002173C(a1, 144, 1, v33, 0);
}

uint64_t sub_1003F15F4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x91u);
}

uint64_t sub_1003F1644(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F16BC;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 145, 1, v3, 0);
}

uint64_t sub_1003F16D4(uint64_t a1, int a2, int a3)
{
  if (qword_100B54220 != -1)
  {
    sub_100827E30();
  }

  v6 = sub_1003C62F8(qword_100B54218, 2);
  if (a3)
  {
    if (a2 == 1)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      sub_100703E9C(v6, &v18);
      v7 = *(a1 + 800);
      if (v7 - 1 <= 0x7CE)
      {
        LODWORD(__p[0]) = v7 > 0xC;
LABEL_7:
        v16[0] = __p;
        v8 = sub_1003FA174(&v18, __p);
LABEL_29:
        v10 = *(v8 + 32);
        sub_10000CEDC(&v18, v19);
        return v10;
      }

      goto LABEL_15;
    }

    return 100;
  }

  switch(a2)
  {
    case 131091:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      sub_100703F48(v6, &v18);
      if (GestaltGetDeviceClass() != 7)
      {
        v10 = 100;
LABEL_33:
        sub_10004B61C(&v18, v19);
        return v10;
      }

      sub_1004BFA4C(v16);
      v11 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v11 = v16[1];
      }

      if (v11)
      {
        sub_1004BFA4C(__p);
        v12 = &v19 != sub_1000463C8(&v18, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v17 & 0x80) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v12 = 0;
        if ((v17 & 0x80) == 0)
        {
LABEL_24:
          if (v12)
          {
            sub_1004BFA4C(v16);
            __p[0] = v16;
            v10 = *(sub_1003C5428(&v18, v16) + 56);
            if (v17 < 0)
            {
              operator delete(v16[0]);
            }
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100827E44();
            }

            v10 = 5;
          }

          goto LABEL_33;
        }
      }

      operator delete(v16[0]);
      goto LABEL_24;
    case 4:
      return sub_100703F00(v6);
    case 3:
      v18 = 0;
      v19 = 0;
      v20 = 0;
      sub_100703E9C(v6, &v18);
      v9 = *(a1 + 800);
      if (v9 - 1 <= 0x7CE)
      {
        LODWORD(__p[0]) = v9 > 0xC;
        goto LABEL_7;
      }

LABEL_15:
      LODWORD(__p[0]) = 2;
      v16[0] = __p;
      v8 = sub_1003FA174(&v18, __p);
      goto LABEL_29;
  }

  return 100;
}

void sub_1003F1A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, char *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10004B61C(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F1A80(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x10Du);
}

uint64_t sub_1003F1AD0(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v10 = *(a1 + 1395);
  if (v10 == a2 && (!a2 || *(a1 + 1398) == a3 && *(a1 + 1396) == a4))
  {
    v11 = qword_100BCE8D8;
    result = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v13 = "No";
      *buf = 136315650;
      if (a2)
      {
        v13 = "Yes";
      }

      v29 = v13;
      v30 = 1024;
      *v31 = a3;
      *&v31[4] = 1024;
      *&v31[6] = a4;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "btscLeSetConnectionScan: same as current ScanCore config enable %s interval %d window %d", buf, 0x18u);
      return 0;
    }
  }

  else
  {
    v14 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "No";
      v16 = *(a1 + 1398);
      v17 = *(a1 + 1396);
      if (v10)
      {
        v18 = "Yes";
      }

      else
      {
        v18 = "No";
      }

      *buf = 136316418;
      if (a2)
      {
        v15 = "Yes";
      }

      v29 = v18;
      v30 = 2080;
      *v31 = v15;
      *&v31[8] = 1024;
      v32 = v16;
      v33 = 1024;
      v34 = a3;
      v35 = 1024;
      v36 = v17;
      v37 = 1024;
      v38 = a4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "btscLeSetConnectionScan: ScanCore Connection Scan Params to be updated enabled %s -> %s interval %d -> %d window %d -> %d", buf, 0x2Eu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1003F1D58;
    v23[3] = &unk_100AF2740;
    v26 = a2;
    v24 = a3;
    v25 = a4;
    v27 = a5;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1003F1D80;
    v19[3] = &unk_100AF2A50;
    v19[4] = a1;
    v22 = a2;
    v20 = a3;
    v21 = a4;
    return sub_10002173C(a1, 269, 1, v23, v19);
  }

  return result;
}

uint64_t sub_1003F1D80(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 1395) = *(result + 44);
  *(v1 + 1398) = *(result + 40);
  *(v1 + 1396) = *(result + 42);
  return result;
}

uint64_t sub_1003F1DC0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x11Bu);
}

uint64_t sub_1003F1E10(uint64_t a1, char a2)
{
  if ((*(*a1 + 4040))(a1))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003F1F5C;
    v6[3] = &unk_100AF2270;
    v7 = a2;
    return sub_10002173C(a1, 283, 1, v6, 0);
  }

  else
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v9 = sub_100020304(a1, 283);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "setAGCTableOverrideCB %{public}s is not implemented on this platform", buf, 0xCu);
    }

    return 2;
  }
}

void sub_1003F1F74(int a1, __int128 *a2, int a3)
{
  if (a3 == 32)
  {
    v4 = a2[1];
    xmmword_100B6D420 = *a2;
    xmmword_100B6D430 = v4;
    if (qword_100B50AA0 != -1)
    {
      sub_100093618();
    }

    sub_100022748(a1, 0x11Cu);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100827E80();
  }
}

uint64_t sub_1003F2010(uint64_t a1, uint64_t a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F20A4;
  v4[3] = &unk_100AE15D8;
  v4[4] = a2;
  v5 = a3;
  return sub_10002173C(a1, 284, 1, &stru_100AF2A70, v4);
}

void *sub_1003F20A4(uint64_t a1)
{
  if (*(a1 + 40) >= 0x20u)
  {
    v1 = 32;
  }

  else
  {
    v1 = *(a1 + 40);
  }

  return memcpy(*(a1 + 32), &xmmword_100B6D420, v1);
}

uint64_t sub_1003F20C8(uint64_t a1, const void *a2, size_t __n)
{
  v3 = __n;
  if (a1)
  {
    v4 = a1;
    byte_100B6D51B = 0;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100827EFC(v3, v4, v5);
    }
  }

  else if (__n > 0xFB)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100827F78();
    }

    byte_100B6D51B = 0;
    LODWORD(v4) = 114;
  }

  else
  {
    byte_100B6D51B = __n;
    memcpy(&xmmword_100B6D420, a2, __n);
    LODWORD(v4) = 0;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(v4, 0x11Du);
}

uint64_t sub_1003F21B0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if ((a3 - 252) > 0xFFFFFF05)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003F22BC;
    v7[3] = &unk_100AF28E0;
    v8 = a2;
    v9 = a3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003F22DC;
    v5[3] = &unk_100AE15D8;
    v6 = a3;
    v5[4] = a4;
    return sub_10002173C(a1, 285, 1, v7, v5);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100827FF4();
    }

    return 3;
  }
}

void sub_1003F22DC(uint64_t a1)
{
  if (byte_100B6D51B == *(a1 + 40))
  {
    v1 = *(a1 + 32);
    v2 = byte_100B6D51B;

    memcpy(v1, &xmmword_100B6D420, v2);
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100828064();
  }
}

uint64_t sub_1003F2364(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 800) - 2000) <= 0x7CF)
  {
    return (171 * a2) >> 10;
  }

  else
  {
    return a2 >> 1;
  }
}

uint64_t sub_1003F2388()
{
  v0 = *(sub_10000C7D0() + 800);
  v1 = v0 - 1;
  if (v0 <= 0x15)
  {
    v2 = 28;
  }

  else
  {
    v2 = 102;
  }

  if (v1 >= 0x7CF)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003F23C0()
{
  v0 = *(sub_10000C7D0() + 800);
  v1 = v0 - 1;
  if (v0 <= 0x15)
  {
    v2 = 63;
  }

  else
  {
    v2 = -38;
  }

  if (v1 >= 0x7CF)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_1003F23FC(uint64_t a1, _OWORD *a2, void *a3)
{
  *a2 = *(a1 + 1416);
  v3 = *(a1 + 1432);
  v4 = *(a1 + 1448);
  v5 = *(a1 + 1480);
  a2[3] = *(a1 + 1464);
  a2[4] = v5;
  a2[1] = v3;
  a2[2] = v4;
  v6 = *(a1 + 1496);
  v7 = *(a1 + 1512);
  v8 = *(a1 + 1544);
  a2[7] = *(a1 + 1528);
  a2[8] = v8;
  a2[5] = v6;
  a2[6] = v7;
  v9 = *(a1 + 1560);
  v10 = *(a1 + 1576);
  v11 = *(a1 + 1592);
  *(a2 + 190) = *(a1 + 1606);
  a2[10] = v10;
  a2[11] = v11;
  a2[9] = v9;
  *a3 = *(a1 + 1408);
  return 0;
}

uint64_t sub_1003F2450(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x93u);
}

uint64_t sub_1003F24A0(uint64_t a1, char a2, char a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, char a11)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003F2538;
  v12[3] = &unk_100AF23B0;
  v20 = a2;
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v22 = a11;
  return sub_10002173C(a1, 147, 1, v12, 0);
}

uint64_t sub_1003F2590(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x94u);
}

uint64_t sub_1003F25E0(uint64_t a1, char a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F265C;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 148, 1, v4, 0);
}

uint64_t sub_1003F267C()
{
  v0 = *(sub_10000C7D0() + 800);
  result = 1;
  if ((v0 - 5000) >= 0x3E8)
  {
    v2 = v0 - 2001;
    v3 = (v0 - 21) < 5;
    return v2 < 0x7CF || v3;
  }

  return result;
}

uint64_t sub_1003F26C4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x10Fu);
}

uint64_t sub_1003F2714(uint64_t a1, __int16 a2, char a3, char a4, char a5, char a6, char a7)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003F27A0;
  v8[3] = &unk_100AF2450;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  return sub_10002173C(a1, 271, 1, v8, 0);
}

BOOL sub_1003F27D0(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = (*(a1 + 800) - 5000) < 0x3E8;
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "supportsLpmHostWakeOffloadScan supported = %d", v5, 8u);
  }

  return v2;
}

uint64_t sub_1003F28AC(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return (*(a1 + 800) - 5000) < 0x3E8;
  }

  return result;
}

uint64_t sub_1003F28F8(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "setLpmHostWakeScanParameterCB: status = %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x12Fu);
}

uint64_t sub_1003F29C0(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F2A38;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 303, 1, v3, 0);
}

uint64_t sub_1003F2A50(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "setLpmHostWakeTxAdvDiagParametersCB: status = %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x130u);
}

uint64_t sub_1003F2B18(uint64_t a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003F2BEC;
    v5[3] = &unk_100AF2390;
    v5[4] = a2;
    return sub_10002173C(a1, 304, 1, v5, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008280D4();
    }

    return 1405;
  }
}

uint64_t sub_1003F2C04(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "setLpmEnableCB: status = %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x12Eu);
}

uint64_t sub_1003F2CCC(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {

    return sub_10002173C(a1, 302, 1, &stru_100AF2A90, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008280D4();
    }

    return 1405;
  }
}

uint64_t sub_1003F2D78(int a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "loadMSFFileCB: status = %d", v6, 8u);
  }

  if ((a1 || a2) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100828110();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x126u);
}

uint64_t sub_1003F2E78(uint64_t a1, char a2, __int16 a3, uint64_t a4, __int16 a5, int a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F2EFC;
  v7[3] = &unk_100AF2670;
  v10 = a2;
  v8 = a3;
  v7[4] = a4;
  v9 = a5;
  return sub_10002173C(a1, 294, a6, v7, 0);
}

uint64_t sub_1003F2F24(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "loadPwrRegulatoryFileCB: status = %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x127u);
}

uint64_t sub_1003F2FEC(uint64_t a1, uint64_t a2, __int16 a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F306C;
  v5[3] = &unk_100AF2430;
  v5[4] = a2;
  v6 = a3;
  return sub_10002173C(a1, 295, a4, v5, 0);
}

uint64_t sub_1003F308C(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "loadPwrRegulatoryFileA3CB: status = %d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x128u);
}

uint64_t sub_1003F3154(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4, int a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F31D4;
  v6[3] = &unk_100AF25D0;
  v7 = a2;
  v6[4] = a3;
  v8 = a4;
  return sub_10002173C(a1, 296, a5, v6, 0);
}

uint64_t sub_1003F31F8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x129u);
}

uint64_t sub_1003F3248(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F32C0;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 297, 1, v3, 0);
}

uint64_t sub_1003F3304(uint64_t a1)
{
  if (_os_feature_enabled_impl() && (*(a1 + 800) - 5000) < 0x3E8 || _os_feature_enabled_impl() && sub_1004106D0(a1, 0xBB8u))
  {
    return 1;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return (*(a1 + 800) - 21) < 5;
  }

  return result;
}

uint64_t sub_1003F33A8(uint64_t a1)
{
  v1 = (*(a1 + 800) - 3000) < 0x3E8;
  v14 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "SupportsChannelSoundingBasedOnRegion");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
  }

  if (v3)
  {
    v1 = v14;
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding Channel sounding (including region) support to : %d", buf, 8u);
    }
  }

  v5 = sub_1004327A0();
  v6 = (**v5)(v5);
  if (([v6 isEqualToString:@"KR"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"CN"))
  {
    v7 = qword_100BCE8D8;
    v1 = 0;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Channel sounding not support for country code: %{public}@", buf, 0xCu);
      v1 = 0;
    }
  }

  v8 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "SupportsChannelSounding");
  v9 = (*(*v8 + 72))(v8, buf, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else if (!v9)
  {
    goto LABEL_20;
  }

  v1 = v14;
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Overriding Channel sounding support to : %d", buf, 8u);
  }

LABEL_20:

  return v1;
}

void sub_1003F3670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003F36EC(uint64_t a1)
{
  v1 = (*(a1 + 800) - 3000) < 0x3E8;
  v8 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "SupportsChannelSoundingPhyLog");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return v1;
    }
  }

  else if (!v3)
  {
    return v1;
  }

  v1 = v8;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding Channel sounding Phy Log support to : %d", buf, 8u);
  }

  return v1;
}

void sub_1003F3834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL sub_1003F3888(uint64_t a1)
{
  v1 = *(a1 + 800);
  v2 = v1 - 22;
  v3 = v1 - 3000;
  return v2 < 4 || v3 < 0x3E8;
}

uint64_t sub_1003F38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 72);
  *v14 = *a2;
  v14[4] = *(a2 + 4);
  *&v14[5] = *a3;
  v14[9] = *(a3 + 4);
  v15[0] = a4;
  v15[1] = *v14;
  v16 = *&v14[8];
  v8 = sub_1003FA248(a1 + 1344, v15);
  if ((v9 & 1) == 0)
  {
    v10 = 0;
    v11 = v8 + 45;
    do
    {
      *(v11 - 5) |= *(a3 + v10) & *(a2 + v10);
      *v11++ |= *(a3 + v10++);
    }

    while (v10 != 5);
  }

  v12 = sub_1003F39C4(a1, (v8 + 5), v8 + 45, a4);
  sub_1000088CC(v17);
  return v12;
}

void sub_1003F39AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F39C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a1 + 800) - 2001) > 0x7CE)
  {
    return 11;
  }

  v7[7] = v4;
  v7[8] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F3C38;
  v7[3] = &unk_100AF29B0;
  v7[4] = a2;
  v7[5] = a3;
  v7[6] = a4;
  return sub_10002173C(a1, 39, 1, v7, 0);
}

uint64_t sub_1003F3A5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24[1] = 0;
  v25 = a4;
  v24[0] = 0;
  sub_100007F88(v24, a1 + 72);
  v8 = *(a1 + 1352);
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = a1 + 1352;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a4;
    v12 = v10 < a4;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 1352 && *(v9 + 32) <= a4)
  {
    v15 = 0;
    v16 = v9 + 40;
    do
    {
      v17 = *(v16 + v15) & ~*(a3 + v15);
      *(v16 + v15) = v17;
      *(v16 + v15) = *(a3 + v15) & ~*(a2 + v15) | v17;
      ++v15;
    }

    while (v15 != 5);
    v18 = (v9 + 45);
    v13 = sub_1003F39C4(a1, v16, v9 + 45, a4);
    v19 = 0;
    v20 = 1;
    do
    {
      *(v18 - 5) &= ~*(a2 + v19);
      v21 = *v18;
      v22 = (v21 & (*(a3 + v19) ^ 0xFF)) == 0;
      *v18++ = v21 & ~*(a3 + v19);
      v23 = v22;
      v20 &= v23;
      ++v19;
    }

    while (v19 != 5);
    if (v20)
    {
      sub_100075DC4((a1 + 1344), &v25);
    }
  }

  else
  {
LABEL_24:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828180();
    }

    v13 = 1;
  }

  sub_1000088CC(v24);
  return v13;
}

void sub_1003F3BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F3BE8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x27u);
}

uint64_t sub_1003F3C58(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x28u);
}

uint64_t sub_1003F3CA8(uint64_t a1, unint64_t a2)
{
  v7 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 72);
  if ((*(a1 + 800) - 2001) > 0x7CE)
  {
    v3 = 11;
  }

  else
  {
    sub_100075DC4((a1 + 1344), &v7);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003F3D90;
    v5[3] = &unk_100AF2390;
    v5[4] = v7;
    v3 = sub_10002173C(a1, 40, 1, v5, 0);
  }

  sub_1000088CC(v6);
  return v3;
}

void sub_1003F3D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F3DA8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x111u);
}

uint64_t sub_1003F3DF8(unsigned __int8 *a1, uint64_t a2, char a3, int a4, uint64_t a5)
{
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_100063D0C();
    v12 = a1[1636];
    *buf = 138412802;
    v20 = v11;
    v21 = 1024;
    v22 = a4;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FastLEConnection:writeStoredLTKForDevice %@ length:%d fStoredLTKCount:%d", buf, 0x18u);
  }

  if (!(*(*a1 + 3256))(a1))
  {
    return 11;
  }

  v13 = a1[1636];
  if ((*(*a1 + 3264))(a1))
  {
    v14 = 16;
  }

  else
  {
    v14 = 8;
  }

  if (v14 <= v13)
  {
    return 23;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003F3FEC;
  v16[3] = &unk_100AF28C0;
  v16[4] = a1;
  v16[5] = a2;
  v17 = a3;
  v18 = a4;
  v16[6] = a5;
  return sub_10002173C(a1, 273, 1, v16, 0);
}

uint64_t sub_1003F3FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1002A9AEC();
  if (!result)
  {
    ++*(v1 + 1636);
  }

  return result;
}

uint64_t sub_1003F4040(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x112u);
}

uint64_t sub_1003F4090(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100063D0C();
    v8 = a1[1636];
    *buf = 138412546;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FastLEConnection:removeStoredLTKForDevice %@ fStoredLTKCount:%d", buf, 0x12u);
  }

  if (!a1[1636])
  {
    return 0;
  }

  if (!(*(*a1 + 3256))(a1))
  {
    return 11;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F4220;
  v10[3] = &unk_100AF2250;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a3;
  return sub_10002173C(a1, 274, 1, v10, 0);
}

uint64_t sub_1003F4220(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1002A9C04();
  if (!result)
  {
    --*(v1 + 1636);
  }

  return result;
}

uint64_t sub_1003F426C(int a1, int a2, size_t size, const void *a4)
{
  v4 = a1;
  if (!a1)
  {
    v6 = a2;
    v4 = 105;
    if (a2)
    {
      v7 = size;
      if (size)
      {
        if (a4)
        {
          v9 = malloc_type_malloc(size, 0x100004077774924uLL);
          *(&xmmword_100B6D420 + 1) = v9;
          if (v9)
          {
            LOBYTE(xmmword_100B6D420) = v6;
            WORD1(xmmword_100B6D420) = v7;
            memcpy(v9, a4, v7);
            v4 = 0;
          }

          else
          {
            v4 = 106;
          }
        }
      }
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(v4, 0x113u);
}

uint64_t sub_1003F4338(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a3;
    *buf = 67109120;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FastLEConnection:readLocalControllerCachedInfo maxLen:%d", buf, 8u);
  }

  if (!(*(*a1 + 3256))(a1))
  {
    return 11;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F44B4;
  v11[3] = &unk_100AEC130;
  v11[4] = a3;
  v11[5] = a2;
  v11[6] = a4;
  return sub_10002173C(a1, 275, 1, &stru_100AF2AB0, v11);
}

void sub_1003F44B4(uint64_t a1)
{
  v2 = *(&xmmword_100B6D420 + 1);
  v3 = WORD1(xmmword_100B6D420);
  if (*(&xmmword_100B6D420 + 1))
  {
    v4 = WORD1(xmmword_100B6D420) == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    **(a1 + 32) = 0;
    **(a1 + 40) = 0;
  }

  else
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = xmmword_100B6D420;
      v8 = [NSData dataWithBytes:v2 length:v3];
      v12[0] = 67109378;
      v12[1] = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FastLEConnection:readLocalControllerCachedInfo version:%d data:%@", v12, 0x12u);
    }

    v9 = **(a1 + 32);
    **(a1 + 40) = xmmword_100B6D420;
    if (WORD1(xmmword_100B6D420) < v9)
    {
      LOBYTE(v9) = BYTE2(xmmword_100B6D420);
    }

    **(a1 + 32) = v9;
    v10 = *(a1 + 48);
    v11 = *(&xmmword_100B6D420 + 1);
    memcpy(v10, *(&xmmword_100B6D420 + 1), WORD1(xmmword_100B6D420));
    free(v11);
  }
}

uint64_t sub_1003F4614(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x114u);
}

uint64_t sub_1003F4664(unsigned __int8 *a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6)
{
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_100063D0C();
    v14 = a1[1637];
    *buf = 138413314;
    v24 = v13;
    v25 = 1024;
    v26 = a3;
    v27 = 1024;
    v28 = a4;
    v29 = 1024;
    v30 = a5;
    v31 = 1024;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FastLEConnection:writePeerControllerCachedInfo %@ resolvedAddress:%d version:%d length:%d fStoredPeerControllerCachedInfo:%d", buf, 0x24u);
  }

  if (!(*(*a1 + 3256))(a1))
  {
    return 11;
  }

  v15 = a1[1637];
  if ((*(*a1 + 3264))(a1))
  {
    v16 = 16;
  }

  else
  {
    v16 = 8;
  }

  result = 23;
  if (v16 > v15)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1003F487C;
    v19[3] = &unk_100AF2AD0;
    if (a5 >= 0x17)
    {
      v18 = 23;
    }

    else
    {
      v18 = a5;
    }

    v19[4] = a1;
    v19[5] = a2;
    v21 = a3;
    v22 = a4 != 0;
    v20 = v18;
    v19[6] = a6;
    return sub_10002173C(a1, 276, 1, v19, 0);
  }

  return result;
}

uint64_t sub_1003F487C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1002A9DA8();
  if (!result)
  {
    ++*(v1 + 1637);
  }

  return result;
}

uint64_t sub_1003F48D4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x114u);
}

uint64_t sub_1003F4924(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100063D0C();
    v8 = a1[1637];
    *buf = 138412546;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FastLEConnection:removePeerControllerCachedInfo %@ fStoredPeerControllerCachedInfo:%d", buf, 0x12u);
  }

  if (!a1[1637])
  {
    return 0;
  }

  if (!(*(*a1 + 3256))(a1))
  {
    return 11;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F4AB4;
  v10[3] = &unk_100AF2250;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a3;
  return sub_10002173C(a1, 276, 1, v10, 0);
}

uint64_t sub_1003F4AB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1002A9DA8();
  if (!result)
  {
    --*(v1 + 1637);
  }

  return result;
}

uint64_t sub_1003F4B0C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x115u);
}

uint64_t sub_1003F4B5C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FastLEConnection:setMaxInstantUpdateForFastLEConnection %d", buf, 8u);
  }

  if (!(*(*a1 + 3256))(a1))
  {
    return 11;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F4CA8;
  v6[3] = &unk_100AF2270;
  v7 = a2;
  return sub_10002173C(a1, 277, 1, v6, 0);
}

uint64_t sub_1003F4CC0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x133u);
}

uint64_t sub_1003F4D10(uint64_t a1, int a2, char a3, int a4, char a5, char a6)
{
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FastLEConnection:setLEAdvTxPowerIncrease %d", buf, 8u);
  }

  if (!(*(*a1 + 3032))(a1))
  {
    return 11;
  }

  if ((a4 - 21) <= 0xAEu)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = a4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "TxPowerDesired is not supported (%d dBm)", buf, 8u);
    }

    return 11;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003F4EE4;
  v15[3] = &unk_100AF28E0;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  return sub_10002173C(a1, 307, 1, v15, 0);
}

BOOL sub_1003F4F10(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_6;
  }

  v2 = *(a1 + 800);
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 > 0x7CF)
  {
    v3 = v2 < 0xFA0 && v2 != 2000;
    goto LABEL_7;
  }

  v3 = 1;
  if (v2 <= 0x14 && v2 != 19)
  {
LABEL_6:
    v3 = 0;
  }

LABEL_7:
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supportsIncomingLEConnectionsDenyList %d", v7, 8u);
  }

  return v3;
}

uint64_t sub_1003F500C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x97u);
}

uint64_t sub_1003F505C(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "LEHardwareModel::enableIncomingLEConnectionDenyList %d", buf, 8u);
  }

  if (byte_100B6D638 == a2)
  {
    return 0;
  }

  if (!(*(*a1 + 3280))(a1))
  {
    return 11;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F51C0;
  v6[3] = &unk_100AF2270;
  v7 = a2;
  return sub_10002173C(a1, 151, 1, v6, 0);
}

uint64_t sub_1003F51E0(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x95u);
}

uint64_t sub_1003F5230(_DWORD *a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = sub_100063D0C();
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "LEHardwareModel::addAddressToIncomingLEConnectionDenyList %@", buf, 0xCu);
  }

  if (!(*(*a1 + 3280))(a1))
  {
    return 11;
  }

  v6 = sub_1003F505C(a1, 1);
  if (!v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003F53D0;
    v9[3] = &unk_100AF2390;
    v9[4] = a2;
    v6 = sub_10002173C(a1, 149, 1, v9, 0);
    v7 = a1[408];
    if (!v6 || v7)
    {
      a1[408] = v7 + 1;
    }

    else
    {
      sub_1003F505C(a1, 0);
    }
  }

  return v6;
}

uint64_t sub_1003F53E8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x96u);
}

uint64_t sub_1003F5438(_DWORD *a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v5 = sub_100063D0C();
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "LEHardwareModel::removeAddressFromIncomingLEConnectionDenyList %@", buf, 0xCu);
  }

  if (!(*(*a1 + 3280))(a1))
  {
    return 11;
  }

  if (!a1[408])
  {
    return 12;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003F55CC;
  v8[3] = &unk_100AF2390;
  v8[4] = a2;
  result = sub_10002173C(a1, 150, 1, v8, 0);
  if (!result)
  {
    v7 = a1[408] - 1;
    a1[408] = v7;
    if (!v7)
    {
      sub_1003F505C(a1, 0);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1003F55E4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x98u);
}

uint64_t sub_1003F5634(_DWORD *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "LEHardwareModel::clearIncomingLEConnectionDenyList()", v4, 2u);
  }

  if (!(*(*a1 + 3280))(a1))
  {
    return 11;
  }

  a1[408] = 0;
  result = sub_10002173C(a1, 152, 1, &stru_100AF2AF0, 0);
  if (!result)
  {
    sub_1003F505C(a1, 0);
    return 0;
  }

  return result;
}

uint64_t sub_1003F5724(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x132u);
}

uint64_t sub_1003F5774(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x134u);
}

uint64_t sub_1003F57C4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned __int16 a9, uint64_t a10, unsigned __int8 a11, char a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, char a17, unsigned __int8 a18, char a19, char a20)
{
  v24 = sub_10000C7D0();
  if (sub_100082218(v24))
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1003F5A1C;
    v40[3] = &unk_100AF2B10;
    v40[4] = a1;
    v40[5] = a2;
    v47 = a14;
    v48 = a3;
    v41 = a4;
    v42 = a5;
    v43 = a6;
    v44 = a7;
    v45 = a8;
    v46 = a9;
    v40[6] = a10;
    v49 = a11;
    v50 = a12;
    v51 = a13;
    v52 = a16;
    v53 = a17;
    v54 = a18;
    v55 = a19;
    v56 = a20;
    return sub_10002173C(a1, 306, 1, v40, 0);
  }

  else
  {
    v26 = a6;
    v27 = a7;
    v28 = a18;
    v29 = a8;
    v30 = *a1;
    if (!a3 || a18)
    {
      v31 = *(v30 + 2152);
      v32 = a1;
      v33 = a2;
      v34 = a11;
      v35 = a12;
      v26 = a13;
      v27 = a14;
      v29 = a16;
    }

    else
    {
      v31 = *(v30 + 1168);
      v32 = a1;
      v33 = a2;
      v34 = a4;
      v35 = a5;
      v28 = a9;
    }

    return v31(v32, v33, v34, v35, v26, v27, v29, v28);
  }
}

uint64_t sub_1003F5A1C(uint64_t a1)
{
  v17 = 0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *v1;
  *(&v12 + 1) = v1 + 1;
  BYTE1(v12) = v3;
  v4 = *(a1 + 68);
  BYTE3(v15) = *(a1 + 68);
  v5 = *(a1 + 69);
  if (*(a1 + 69))
  {
    *(&v13 + 4) = *(a1 + 56);
    HIDWORD(v13) = *(a1 + 64);
    v5 = 1;
    LODWORD(v13) = 1;
  }

  v6 = *(a1 + 48);
  if (!v6 || (v16 == *(v6 + 1) ? (v7 = v17 == *(v6 + 5)) : (v7 = 0), v7))
  {
    LOBYTE(v14) = -1;
    *(&v14 + 1) = &v16;
  }

  else
  {
    LOBYTE(v14) = *v6;
    *(&v14 + 1) = v6 + 1;
    v5 |= 2u;
    LODWORD(v13) = v5;
  }

  if (*(a1 + 70))
  {
    LOBYTE(v15) = *(a1 + 70);
    v5 |= 4u;
    LODWORD(v13) = v5;
  }

  if (*(a1 + 71))
  {
    BYTE1(v15) = *(a1 + 71);
    v5 |= 8u;
    LODWORD(v13) = v5;
  }

  if (*(a1 + 72))
  {
    BYTE2(v15) = *(a1 + 72);
    v5 |= 0x10u;
    LODWORD(v13) = v5;
  }

  if (v4)
  {
    v5 |= 0x20u;
    LODWORD(v13) = v5;
  }

  if ((*(v2 + 800) - 2001) <= 0x7CE)
  {
    v8 = *(a1 + 73);
    if (v8)
    {
      LOBYTE(v12) = 1;
      BYTE4(v15) = v8;
      BYTE5(v15) = *(a1 + 74);
      v5 |= 0x80u;
      LODWORD(v13) = v5;
    }

    v9 = *(a1 + 75);
    if (v9)
    {
      LOBYTE(v12) = 1;
      BYTE6(v15) = v9;
      BYTE7(v15) = *(a1 + 76);
      v5 |= 0x100u;
      LODWORD(v13) = v5;
    }

    v10 = *(a1 + 77);
    if (v10)
    {
      LOBYTE(v12) = 1;
      BYTE8(v15) = v10;
      LODWORD(v13) = v5 | 0x200;
    }
  }

  return sub_1002AA3A0(&v12);
}

uint64_t sub_1003F5BA8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x12Au);
}

uint64_t sub_1003F5BF8(uint64_t a1, char a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F5C74;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 298, 1, v4, 0);
}

uint64_t sub_1003F5C94(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x12Bu);
}

uint64_t sub_1003F5D10(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x12Du);
}

uint64_t sub_1003F5D60(uint64_t a1, char a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F5DDC;
  v4[3] = &unk_100AF2330;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 301, 1, v4, 0);
}

uint64_t sub_1003F5DFC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x131u);
}

uint64_t sub_1003F5E4C(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F5EC4;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 305, 1, v3, 0);
}

uint64_t sub_1003F5EDC(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4, uint64_t (*a5)(void, void, void, void), uint64_t a6)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 72);
  v16 = 0;
  sub_1000216B4(&v16);
  v14 = sub_1002AA7BC(a2, a3, a4, a5, a6, v11, v12, v13);
  sub_10002249C(&v16);
  sub_1000088CC(v17);
  return v14;
}

void sub_1003F5F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1003F5F98(uint64_t a1, __int16 a2, __int16 a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F6014;
  v4[3] = &unk_100AF24D0;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 308, 1, v4, 0);
}

uint64_t sub_1003F6034(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x136u);
}

uint64_t sub_1003F6084(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F6100;
  v4[3] = &unk_100AF2210;
  v5 = a2;
  v4[4] = a3;
  return sub_10002173C(a1, 310, 1, v4, 0);
}

uint64_t sub_1003F6120(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Init Done callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x9Au);
}

uint64_t sub_1003F6214(int a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Set Random Seed callback status=%d", v4, 8u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x9Bu);
}

uint64_t sub_1003F62DC(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F6354;
  v3[3] = &unk_100AF2390;
  v3[4] = a2;
  return sub_10002173C(a1, 155, 1, v3, 0);
}

uint64_t sub_1003F636C(int a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, __int16 a8, __int16 a9)
{
  v17 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    v19[0] = 67109120;
    v19[1] = a1;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Get FW Versions callback status=%d", v19, 8u);
  }

  LOWORD(xmmword_100B6D420) = a2;
  WORD1(xmmword_100B6D420) = a3;
  WORD2(xmmword_100B6D420) = a4;
  WORD3(xmmword_100B6D420) = a5;
  WORD4(xmmword_100B6D420) = a6;
  WORD5(xmmword_100B6D420) = a7;
  WORD6(xmmword_100B6D420) = a8;
  HIWORD(xmmword_100B6D420) = a9;
  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0x99u);
}

uint64_t sub_1003F649C(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F652C;
  v3[3] = &unk_100ADF8F8;
  v3[4] = a2;
  return sub_10002173C(a1, 153, 1, &stru_100AF2B70, v3);
}

double sub_1003F652C(uint64_t a1)
{
  result = *&xmmword_100B6D420;
  **(a1 + 32) = xmmword_100B6D420;
  return result;
}

uint64_t sub_1003F6540(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x9Cu);
}

uint64_t sub_1003F6590(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  LOBYTE(v10) = a4;
  v28 = 1;
  v14 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "AllowDramWake");
  v15 = (*(*v14 + 72))(v14, buf, __p, &v28);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v30 < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else if (!v15)
  {
    goto LABEL_11;
  }

  v10 = v28;
  v16 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = "True";
    if (!v10)
    {
      v17 = "False";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Overriding AllowDramWake to : %s", buf, 0xCu);
  }

LABEL_11:
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003F67C4;
  v19[3] = &unk_100AF2740;
  v20 = a2;
  v21 = a3;
  v22 = v10;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  return sub_10002173C(a1, 156, 1, v19, 0);
}

void sub_1003F6788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F67F4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x9Du);
}

uint64_t sub_1003F6844(uint64_t a1, __int16 a2, char a3, uint64_t a4, char a5, __int16 a6, char a7, char a8, char a9)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003F68DC;
  v10[3] = &unk_100AF2250;
  v11 = a2;
  v13 = a3;
  v10[4] = a4;
  v14 = a5;
  v12 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  return sub_10002173C(a1, 157, 1, v10, 0);
}

uint64_t sub_1003F6930(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x9Eu);
}

uint64_t sub_1003F6980(uint64_t a1, __int16 a2, char a3, char a4, uint64_t a5)
{
  if (!sub_10006CDA4(a1))
  {
    return 2;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003F6A44;
  v11[3] = &unk_100AF25D0;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v11[4] = a5;
  return sub_10002173C(a1, 158, 1, v11, 0);
}

uint64_t sub_1003F6A6C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x9Fu);
}

uint64_t sub_1003F6ABC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F6B3C;
  v5[3] = &unk_100AF2430;
  v6 = a2;
  v5[4] = a3;
  v7 = a4;
  return sub_10002173C(a1, 159, 1, v5, 0);
}

uint64_t sub_1003F6B60(int a1, uint64_t *a2, unsigned int a3)
{
  if (!a1 && a2 && a3 >= 9)
  {
    LOBYTE(xmmword_100B6D420) = 9;
    v4 = *a2;
    BYTE9(xmmword_100B6D420) = *(a2 + 8);
    *(&xmmword_100B6D420 + 1) = v4;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA0u);
}

uint64_t sub_1003F6BE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F6C98;
  v6[3] = &unk_100AF2270;
  v7 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F6CB0;
  v5[3] = &unk_100AE0860;
  v5[4] = a4;
  v5[5] = a3;
  return sub_10002173C(a1, 160, 1, v6, v5);
}

void *sub_1003F6CB0(void *result)
{
  if (*(result + 4))
  {
    v1 = xmmword_100B6D420;
    **(result + 5) = xmmword_100B6D420;
    return memcpy(*(result + 4), &xmmword_100B6D420 + 1, v1);
  }

  return result;
}

uint64_t sub_1003F6CD8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA1u);
}

uint64_t sub_1003F6D28(uint64_t a1, __int16 a2, char a3, char a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F6DA8;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v7 = a3;
  v8 = a4;
  return sub_10002173C(a1, 161, 1, v5, 0);
}

uint64_t sub_1003F6DCC(int a1, __int16 a2, char a3, char a4, char a5)
{
  LOWORD(xmmword_100B6D420) = a2;
  BYTE2(xmmword_100B6D420) = a3;
  BYTE3(xmmword_100B6D420) = a4;
  BYTE4(xmmword_100B6D420) = a5;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA2u);
}

uint64_t sub_1003F6E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F6EF0;
  v7[3] = &unk_100AF2390;
  v7[4] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F6F0C;
  v6[3] = &unk_100AF2780;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  return sub_10002173C(a1, 162, 1, v7, v6);
}

uint64_t sub_1003F6F0C(uint64_t result)
{
  v1 = *(result + 40);
  **(result + 32) = xmmword_100B6D420;
  *v1 = BYTE2(xmmword_100B6D420);
  **(result + 48) = BYTE3(xmmword_100B6D420);
  **(result + 56) = BYTE4(xmmword_100B6D420);
  return result;
}

const __CFString *sub_1003F6F44(char a1)
{
  if ((a1 + 1) > 6u)
  {
    return @"Unknown";
  }

  else
  {
    return off_100AF2E88[(a1 + 1)];
  }
}

uint64_t sub_1003F6F74(int a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!a1 && a2)
  {
    if (!a3)
    {
      goto LABEL_29;
    }

    v6 = *a2;
    v7 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v19 = 0;
      *&v19[4] = 1024;
      *&v19[6] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TASGetPowerTableInfo callback status=%d tableCount %d", buf, 0xEu);
    }

    v8 = 3 * v6;
    if (v8 < a3)
    {
      v9 = qword_100BCE8D8;
      if (v6)
      {
        v10 = v6;
        v11 = a2 + 3;
        do
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v12 = sub_1003F6F44(*(v11 - 2));
            v13 = *(v11 - 1);
            v14 = *v11;
            *buf = 138412802;
            *v19 = v12;
            *&v19[8] = 1024;
            v20 = v13;
            v21 = 1024;
            v22 = v14;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "TASGetPowerTableInfo Table Type : %@, Major version: %d, Minor version: %d\n", buf, 0x18u);

            v9 = qword_100BCE8D8;
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *v19 = &a2[v8 + 1];
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TASGetPowerTableInfo Build String %{public}s", buf, 0xCu);
      }

      v15 = [NSString stringWithFormat:@"%s", &a2[v8 + 1]];
      if (sub_10000F034())
      {
        v16 = sub_10000F034();
        (*(*v16 + 800))(v16, v15);
      }

      if (qword_100B54220 != -1)
      {
        sub_1008281F0();
      }

      sub_1003C8DD0(qword_100B54218, v15);
    }

    else
    {
LABEL_29:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100828218();
      }

      v15 = 0;
    }

    LOBYTE(xmmword_100B6D420) = a3;
    memcpy(&xmmword_100B6D420 + 1, a2, a3);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100826FD0();
  }

  return sub_100022748(a1, 0xA3u);
}

uint64_t sub_1003F7268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F72F8;
  v4[3] = &unk_100AE0860;
  v4[4] = a3;
  v4[5] = a2;
  return sub_10002173C(a1, 163, 1, &stru_100AF2B90, v4);
}

void *sub_1003F72F8(void *result)
{
  if (*(result + 4))
  {
    v1 = xmmword_100B6D420;
    **(result + 5) = xmmword_100B6D420;
    return memcpy(*(result + 4), &xmmword_100B6D420 + 1, v1);
  }

  return result;
}

uint64_t sub_1003F7320(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA4u);
}

uint64_t sub_1003F7370(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F73E8;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 164, 1, v3, 0);
}

uint64_t sub_1003F7400(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB1u);
}

uint64_t sub_1003F7450(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F74D4;
  v6[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return sub_10002173C(a1, 177, 1, v6, 0);
}

uint64_t sub_1003F74FC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xB2u);
}

uint64_t sub_1003F754C(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F75D4;
  v7[3] = &unk_100AF28E0;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  return sub_10002173C(a1, 178, 1, v7, 0);
}

uint64_t sub_1003F7600(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA6u);
}

uint64_t sub_1003F7670(uint64_t a1, __int16 a2)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F7650;
  v5[3] = &unk_100AF2430;
  v6 = a2;
  v5[4] = v3;
  return sub_10002173C(a1, 166, 1, v5, 0);
}

uint64_t sub_1003F76F8(uint64_t a1, __int16 a2, unsigned __int8 a3)
{
  v6 = 0;
  v4 = 1;
  v5 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F7650;
  v7[3] = &unk_100AF2430;
  v8 = a2;
  v7[4] = &v4;
  return sub_10002173C(a1, 166, 1, v7, 0);
}

uint64_t sub_1003F7788(uint64_t a1, __int16 a2, unsigned __int8 a3, char a4, char a5)
{
  v10 = sub_10000C7D0();
  if ((*(*v10 + 2984))(v10))
  {
    v14 = 0;
    v12 = 2;
    v13 = a3;
    BYTE1(v13) = a4;
    BYTE2(v13) = a5;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1003F7650;
    v15[3] = &unk_100AF2430;
    v16 = a2;
    v15[4] = &v12;
    return sub_10002173C(a1, 166, 1, v15, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828288();
    }

    return 11;
  }
}

uint64_t sub_1003F78B4(uint64_t a1, __int16 a2)
{
  v4 = 0;
  v5 = 0;
  v3 = 3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F7650;
  v6[3] = &unk_100AF2430;
  v7 = a2;
  v6[4] = &v3;
  return sub_10002173C(a1, 166, 1, v6, 0);
}

uint64_t sub_1003F7940(uint64_t a1, __int16 a2, char a3, char a4, char a5, char a6)
{
  v13 = 0;
  v12 = 0;
  v7 = 4;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003F7650;
  v14[3] = &unk_100AF2430;
  v15 = a2;
  v14[4] = &v7;
  return sub_10002173C(a1, 166, 1, v14, 0);
}

uint64_t sub_1003F79E0(uint64_t a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17)
{
  v18 = 5;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  *(&v31 + 1) = __PAIR16__(a17, a16);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1003F7650;
  v32[3] = &unk_100AF2430;
  v33 = a2;
  v32[4] = &v18;
  return sub_10002173C(a1, 166, 1, v32, 0);
}

uint64_t sub_1003F7ACC(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA5u);
}

uint64_t sub_1003F7B3C(uint64_t a1, __int16 a2)
{
  v3 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F7B1C;
  v4[3] = &unk_100AF2430;
  v5 = a2;
  v4[4] = &v3;
  return sub_10002173C(a1, 165, 1, v4, 0);
}

uint64_t sub_1003F7BBC(uint64_t a1, __int16 a2, char a3)
{
  v4 = 1;
  BYTE4(v4) = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F7B1C;
  v5[3] = &unk_100AF2430;
  v6 = a2;
  v5[4] = &v4;
  return sub_10002173C(a1, 165, 1, v5, 0);
}

uint64_t sub_1003F7C48(uint64_t a1, __int16 a2, char a3, char a4, char a5)
{
  v10 = sub_10000C7D0();
  if ((*(*v10 + 2984))(v10))
  {
    v12 = 2;
    BYTE4(v12) = a3;
    BYTE5(v12) = a4;
    BYTE6(v12) = a5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003F7B1C;
    v13[3] = &unk_100AF2430;
    v14 = a2;
    v13[4] = &v12;
    return sub_10002173C(a1, 165, 1, v13, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828288();
    }

    return 11;
  }
}

uint64_t sub_1003F7D70(uint64_t a1, __int16 a2)
{
  v3 = 3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F7B1C;
  v4[3] = &unk_100AF2430;
  v5 = a2;
  v4[4] = &v3;
  return sub_10002173C(a1, 165, 1, v4, 0);
}

uint64_t sub_1003F7DF8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA7u);
}

uint64_t sub_1003F7E48(uint64_t a1, __int16 a2, char a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F7EC4;
  v4[3] = &unk_100AF2610;
  v5 = a2;
  v6 = a3;
  return sub_10002173C(a1, 167, 1, v4, 0);
}

uint64_t sub_1003F7EE4(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA8u);
}

uint64_t sub_1003F7F34(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003F7FC4;
  v9[3] = &unk_100AF2450;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  return sub_10002173C(a1, 168, 1, v9, 0);
}

uint64_t sub_1003F7FF8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xA9u);
}

uint64_t sub_1003F8048(uint64_t a1, __int16 a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F80C0;
  v3[3] = &unk_100AF2330;
  v4 = a2;
  return sub_10002173C(a1, 169, 1, v3, 0);
}

uint64_t sub_1003F80D8(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xAAu);
}

uint64_t sub_1003F8128(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1003F81A0;
  v3[3] = &unk_100AF2270;
  v4 = a2;
  return sub_10002173C(a1, 170, 1, v3, 0);
}

uint64_t sub_1003F81B8(int a1, __int16 a2, char a3, char a4, char a5, int a6, int a7)
{
  LOWORD(xmmword_100B6D420) = a2;
  BYTE2(xmmword_100B6D420) = a3;
  BYTE3(xmmword_100B6D420) = a4;
  BYTE4(xmmword_100B6D420) = a5;
  DWORD2(xmmword_100B6D420) = a6;
  HIDWORD(xmmword_100B6D420) = a7;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xABu);
}

uint64_t sub_1003F8224(uint64_t a1, __int16 a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F82DC;
  v5[3] = &unk_100AF2330;
  v6 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F82F4;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 171, 1, v5, v4);
}

double sub_1003F82F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = xmmword_100B6D420;
  *(v1 + 4) = BYTE4(xmmword_100B6D420);
  result = *(&xmmword_100B6D420 + 1);
  *(v1 + 5) = *(&xmmword_100B6D420 + 1);
  return result;
}

uint64_t sub_1003F832C(int a1, uint64_t a2)
{
  qword_100B6D640 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xACu);
}

uint64_t sub_1003F8384(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F843C;
  v5[3] = &unk_100AF24D0;
  v6 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003F8454;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a3;
  return sub_10002173C(a1, 172, 1, v5, v4);
}

__n128 sub_1003F8454(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(qword_100B6D640 + 32);
  v3 = *(qword_100B6D640 + 48);
  v5 = *qword_100B6D640;
  v4 = *(qword_100B6D640 + 16);
  *(v1 + 32) = result;
  *(v1 + 48) = v3;
  *v1 = v5;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_1003F8474(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 2 * (a2 == 1);
  if (!a2)
  {
    v3 = 1;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003F8540;
  v6[3] = &unk_100AF2270;
  v7 = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F8558;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a3;
  return sub_10002173C(a1, 192, 1, v6, v5);
}

double sub_1003F8558(uint64_t a1)
{
  result = *&xmmword_100B6D420;
  **(a1 + 32) = xmmword_100B6D420;
  return result;
}

uint64_t sub_1003F856C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xADu);
}

uint64_t sub_1003F85BC(uint64_t a1, char a2, char a3, __int16 a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F863C;
  v5[3] = &unk_100AF24D0;
  v7 = a2;
  v8 = a3;
  v6 = a4;
  return sub_10002173C(a1, 173, 1, v5, 0);
}

uint64_t sub_1003F8660(int a1, __int128 *a2)
{
  v3 = a2[1];
  xmmword_100B6D648 = *a2;
  unk_100B6D658 = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  *(&xmmword_100B6D688 + 12) = *(a2 + 76);
  xmmword_100B6D678 = v5;
  xmmword_100B6D688 = v6;
  xmmword_100B6D668 = v4;
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xAEu);
}

uint64_t sub_1003F86D8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10000C7D0();
  if ((*(*v6 + 2992))(v6))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003F8814;
    v9[3] = &unk_100AF24D0;
    v10 = a2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003F882C;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a3;
    return sub_10002173C(a1, 174, 1, v9, v8);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008282C4();
    }

    return 11;
  }
}

__n128 sub_1003F882C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = unk_100B6D658;
  *v1 = xmmword_100B6D648;
  *(v1 + 16) = v2;
  result = xmmword_100B6D668;
  v4 = xmmword_100B6D678;
  v5 = xmmword_100B6D688;
  *(v1 + 76) = *(&xmmword_100B6D688 + 12);
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = result;
  return result;
}

uint64_t sub_1003F885C(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xAFu);
}

uint64_t sub_1003F88AC(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F892C;
  v5[3] = &unk_100AF2670;
  v7 = a2;
  v5[4] = a3;
  v6 = a4;
  return sub_10002173C(a1, 175, 1, v5, 0);
}

uint64_t sub_1003F8950(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0x138u);
}

uint64_t sub_1003F89A0(uint64_t a1, uint64_t a2, char a3, unsigned int *a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a4;
  if (v9 > 127)
  {
    if (v9 != 128)
    {
      if (v9 != 129)
      {
        goto LABEL_8;
      }

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1003F8EC4;
      v21[3] = &unk_100AF2250;
      v21[4] = a4;
      v21[5] = a2;
      v22 = a3;
      v9 = 1;
      sub_10002173C(a1, 271, 1, v21, 0);
      return v9;
    }

    if (*(a4 + 27) && *(a4 + 27) != *(a2 + 324))
    {
      v17 = *(a4 + 20) != 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1003F8E78;
      v24[3] = &unk_100AF2590;
      v24[4] = a2;
      v24[5] = a4;
      v18 = v24;
      v19 = 42;
    }

    else
    {
      if (*(a4 + 28) == *(a2 + 323))
      {
        return 1;
      }

      v17 = *(a4 + 20) != 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1003F8E98;
      v23[3] = &unk_100AF2590;
      v23[4] = a2;
      v23[5] = a4;
      v18 = v23;
      v19 = 32;
    }

    return sub_10002173C(a1, v19, v17, v18, 0);
  }

  if (!v9)
  {
    if (*(a4 + 21))
    {
      v11 = *(a4 + 20) != 0;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1003F8DA4;
      v30[3] = &unk_100AF2250;
      v30[4] = a5;
      v30[5] = a4;
      v31 = a3;
      v10 = sub_10002173C(a1, 4, v11, v30, 0);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v12 = v10 == 3603;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12;
    v9 = v13 ^ 1u;
    v14 = a4[1];
    if ((v14 & 1) != 0 && v13 && *(a4 + 16) == 1)
    {
      v15 = *(a4 + 20) != 0;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1003F8DFC;
      v29[3] = &unk_100AF2390;
      v29[4] = a4;
      v9 = sub_10002173C(v8, 206, v15, v29, 0);
      v14 = a4[1];
    }

    if ((v14 & 4) != 0)
    {
      v16 = *(a4 + 20) != 0;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1003F8E20;
      v27[3] = &unk_100AF2210;
      v28 = a3;
      v27[4] = a4;
      v9 = sub_10002173C(v8, 201, v16, v27, 0);
    }

    if ((*(a4 + 21) & 2) == 0)
    {
      return v9;
    }

    v17 = *(a4 + 20) != 0;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1003F8E50;
    v25[3] = &unk_100AF2210;
    v25[4] = a2;
    v26 = a3;
    v18 = v25;
    a1 = v8;
    v19 = 5;
    return sub_10002173C(a1, v19, v17, v18, 0);
  }

  if (v9 != 1)
  {
LABEL_8:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100828300();
    }

    return 1;
  }

  return v9;
}

uint64_t sub_1003F8DA4(uint64_t a1)
{
  v4 = 0;
  v1 = *(a1 + 40);
  if (*(v1 + 20))
  {
    v2 = sub_1003DE750;
  }

  else
  {
    v2 = 0;
  }

  return sub_1002A32C4(*(a1 + 32), *(v1 + 12), *(a1 + 48) != 0, &v4, v2);
}

uint64_t sub_1003F8EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *a4;
  v9 = 1;
  if (*a4 <= 127)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return v9;
      }

      v10 = a4 + 23;
      v11 = 4;
      goto LABEL_12;
    }

    v21 = 0;
    sub_1000216B4(&v21);
    if (!sub_1000B8B5C(a2) || (v15 = *(a2 + 248), (v15 - 1) <= 1) && (*(a4 + 12) - 1) > 1)
    {
      v9 = 101;
      goto LABEL_34;
    }

    if (a3)
    {
      v9 = 0;
      *(a2 + 248) = *(a4 + 12) | v15;
    }

    else
    {
      v16 = *(a2 + 248);
      if (*(a4 + 21))
      {
        v16 = v15 & ~*(a4 + 12);
        *(a2 + 248) = v16;
      }

      if (!v15 || v16)
      {
        v17 = *(a4 + 21) == 2;
        if (*(a4 + 21) == 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = 3603;
        }

LABEL_32:
        sub_100022214(&v21);
        if (v17)
        {
          v10 = a4 + 21;
          sub_10002249C(&v21);
          goto LABEL_10;
        }

LABEL_34:
        sub_10002249C(&v21);
        return v9;
      }

      if (*(a2 + 144) == 1 && *(a2 + 197) == 1)
      {
        *(a2 + 197) = 0;
        sub_100247BFC(a2, 2);
      }

      v9 = 0;
    }

    v17 = 1;
    goto LABEL_32;
  }

  switch(v8)
  {
    case 128:
      v10 = a4 + 27;
LABEL_10:
      v11 = 2;
      break;
    case 129:
      v10 = a4 + 29;
      v11 = 3;
      break;
    case 192:
      v10 = a4 + 33;
      v11 = 13;
      break;
    default:
      return v9;
  }

LABEL_12:
  v12 = *(a4 + 20) == 0;
  v18[0] = _NSConcreteStackBlock;
  v13 = !v12;
  v18[1] = 3221225472;
  v18[2] = sub_1003F911C;
  v18[3] = &unk_100AF29D0;
  v18[4] = a1;
  v18[5] = a2;
  v20 = a3;
  v19 = v11;
  v18[6] = a4;
  v18[7] = v10;
  return sub_10002173C(a1, 312, v13, v18, 0);
}

uint64_t sub_1003F914C(uint64_t a1, unsigned __int8 *a2, int a3, char a4, uint64_t a5)
{
  if (!a5)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100828370(v10);
    }
  }

  v16 = 0;
  sub_1000216B4(&v16);
  if ((*a5 - 128) < 2)
  {
    v11 = sub_100255884((*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5]);
  }

  else if (*a5 > 1u)
  {
    v11 = sub_100255934(a2);
  }

  else
  {
    v11 = sub_1000E1FE8(a2);
  }

  v12 = v11;
  sub_100022214(&v16);
  if (v12)
  {
    *(a5 + 20) = a4;
    if ((*(*a1 + 2280))(a1))
    {
      v13 = sub_1003F8EFC(a1, v12, a3, a5);
    }

    else
    {
      v13 = sub_1003F89A0(a1, v12, a3, a5, a2);
    }

    v14 = v13;
  }

  else
  {
    v14 = 12;
  }

  sub_10002249C(&v16);
  return v14;
}

uint64_t sub_1003F9318(uint64_t a1, unsigned __int8 *a2, int a3, char a4, char a5, int a6, int a7, int a8, __int16 a9)
{
  v23[0] = 0;
  v24 = 0u;
  v25 = 0u;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  LOWORD(v24) = a9;
  BYTE5(v24) = a5;
  if ((a6 & 1) != 0 && a9)
  {
    if (a7 == 22 || a7 == 17)
    {
      v14 = 60;
    }

    else
    {
      v14 = 45;
    }

    v22 = 0;
    if (HIBYTE(a9))
    {
      LOBYTE(v15) = 75;
    }

    else
    {
      LOBYTE(v15) = v14;
    }

    v16 = sub_10000E92C();
    sub_100007E30(buf, "ePA");
    sub_100007E30(__p, "iPAMaxThreshold");
    v17 = (*(*v16 + 88))(v16, buf, __p, &v22);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(*buf);
      if (!v17)
      {
LABEL_20:
        BYTE6(v24) = v15;
        return sub_1003F914C(a1, a2, a3, a4, v23);
      }
    }

    else if (!v17)
    {
      goto LABEL_20;
    }

    v15 = -v22;
    v18 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: Setting user defined iPA-Max threshold to -%d dBm through defaults write", buf, 8u);
    }

    goto LABEL_20;
  }

  return sub_1003F914C(a1, a2, a3, a4, v23);
}

void sub_1003F94E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F951C(uint64_t a1, unsigned __int8 *a2, int a3, char a4, char a5, char a6)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 128;
  v9[8] = a6;
  v9[7] = a5;
  return sub_1003F914C(a1, a2, a3, a4, &v7);
}

uint64_t sub_1003F9560(uint64_t a1, unsigned __int8 *a2, int a3, char a4, __int16 a5, char a6, char a7)
{
  memset(v10, 0, sizeof(v10));
  v9 = 0u;
  v8 = 1;
  *&v10[3] = a5;
  v10[5] = a6;
  v10[6] = a7;
  return sub_1003F914C(a1, a2, a3, a4, &v8);
}

uint64_t sub_1003F95A8(uint64_t a1, unsigned __int8 *a2, int a3, char a4, char a5, __int16 a6)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 129;
  HIBYTE(v9[4]) = a5;
  v9[5] = a6;
  return sub_1003F914C(a1, a2, a3, a4, &v7);
}

uint64_t sub_1003F95EC(uint64_t a1, unsigned __int8 *a2, int a3, char a4, __int16 a5, char a6, char a7, char a8, uint64_t a9)
{
  v16 = 0;
  v12 = 0u;
  v11 = 0u;
  v10 = 192;
  *(&v12 + 13) = a5;
  HIBYTE(v12) = a6;
  v13 = a7;
  v14 = a8;
  v15 = a9;
  return sub_1003F914C(a1, a2, a3, a4, &v10);
}

uint64_t sub_1003F9644(_DWORD *a1)
{
  v2 = a1[200];
  v3 = sub_10000E92C();
  if (((*(*v3 + 8))(v3) & 1) == 0)
  {
    v4 = sub_10000E92C();
    if (!(*(*v4 + 24))(v4))
    {
      return sub_1004106D0(a1, 0xBB8u);
    }
  }

  if (v2 - 1 <= 0x7CE)
  {
    (*(*a1 + 16))(&v9, a1);
    v7 = (std::string::compare(&v9, "C3") >= 0 || v2 > 0x17) && v2 < 0x1A;
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (v7)
      {
        return 1;
      }

      return sub_1004106D0(a1, 0xBB8u) || (a1[200] - 5000) < 0x3E8;
    }

    operator delete(v9.__r_.__value_.__l.__data_);
    if (v7)
    {
      return 1;
    }
  }

  return sub_1004106D0(a1, 0xBB8u) || (a1[200] - 5000) < 0x3E8;
}

uint64_t sub_1003F9780(int a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100093618();
  }

  return sub_100022748(a1, 0xE4u);
}

uint64_t sub_1003F97D0(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  v17 = 0;
  sub_1000216B4(&v17);
  v10 = sub_1002565B0(a3);
  sub_100022214(&v17);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003F98C8;
  v13[3] = &unk_100AF2BB0;
  v14 = a2;
  v13[4] = a3;
  v13[5] = v10;
  v15 = a4;
  v16 = a5;
  v11 = sub_10002173C(a1, 228, 1, v13, 0);
  sub_10002249C(&v17);
  return v11;
}

uint64_t sub_1003F98F0(uint64_t a1)
{
  *a1 = off_100AF1088;
  sub_10000CEDC(a1 + 1344, *(a1 + 1352));

  return sub_1003D1F6C(a1);
}

void sub_1003F994C(uint64_t a1)
{
  *a1 = off_100AF1088;
  sub_10000CEDC(a1 + 1344, *(a1 + 1352));
  sub_1003D1F6C(a1);

  operator delete();
}

void *sub_1003F9BB4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100097C34(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1003FA134()
{
  v3 = *v2;
  if (*v2)
  {
    *(v0 + 48) = v3;
    operator delete(v3);
  }

  sub_1003C95E8(v1, *(v0 + 16));

  operator delete();
}

uint64_t *sub_1003FA174(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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