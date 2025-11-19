uint64_t sub_100762BD8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && *(a1 + 184) == 1)
  {
    if (*(a1 + 352))
    {
      return sub_100760A88(a1);
    }
  }

  return a1;
}

void sub_100762BF8(uint64_t a1, void *a2)
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

uint64_t sub_100762CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 120);
  v5 = sub_1000ACEE4(a1, a3);
  if (v5)
  {
    sub_10004DFB4(uu2, v5);
    v6 = sub_10004E34C(a1 + 936, uu2);
    if (a1 + 944 != v6)
    {
      *uu2 = 0;
      v10 = 0;
      v11 = 0;
      sub_100775D84(uu2, v6 + 48);
      sub_10000CEDC(v6 + 48, *(v6 + 56));
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = v6 + 56;
      sub_100007EE8();
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008713BC();
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10087142C();
  }

  return sub_1000088CC(v8);
}

void sub_100762FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
{
  sub_10000CEDC(&a21, a22);

  sub_1000088CC(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100763050(uint64_t a1, unsigned __int8 *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 120);
  v4 = sub_10004E34C(a1 + 936, a2);
  if (a1 + 944 != v4)
  {
    if (*(v4 + 64))
    {
      sub_10074E868(a1, a2);
    }

    else
    {
      sub_10067D88C((a1 + 936), v4);
    }
  }

  return sub_1000088CC(v6);
}

uint64_t sub_1007630E4(uint64_t a1, uint64_t a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 120);
  v6 = sub_1000ACEE4(a1, a2);
  if (v6)
  {
    v7 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "asleep";
      if (a3)
      {
        v8 = "awake";
      }

      *buf = 138543618;
      v15 = v6;
      v16 = 2082;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is now %{public}s", buf, 0x16u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100763288;
    v10[3] = &unk_100B0B698;
    v11 = v6;
    v12 = a3;
    sub_10074063C(a1, v10);
  }

  return sub_1000088CC(v13);
}

void sub_100763258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007632BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, a1 + 120);
  v16 = sub_1000ACEE4(a1, a2);
  v17 = qword_100BCE980;
  v18 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = a3 == 1 || a3 == 10;
      *buf = 138545154;
      v20 = "LE_SET_PHY";
      v32 = v16;
      v33 = 2082;
      if (v19)
      {
        v20 = "ConnectionComplete";
      }

      v34 = v20;
      v35 = 1024;
      v36 = a3;
      v37 = 2048;
      v38 = a4;
      v39 = 1024;
      v40 = a5;
      v41 = 1024;
      v42 = a6;
      v43 = 1024;
      v44 = a7;
      v45 = 1024;
      v46 = a8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a timestamp %{public}s EventType=%d with value %llu %d eventCnt=%d, sec:%d ms:%d", buf, 0x3Eu);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100763510;
    v22[3] = &unk_100B0B6C0;
    v29 = a3;
    v23 = v16;
    v24 = a4;
    v28 = a6;
    v25 = a5;
    v26 = a7;
    v27 = a8;
    sub_10074063C(a1, v22);
  }

  else if (v18)
  {
    *buf = 134217984;
    v32 = a2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
  }

  return sub_1000088CC(v30);
}

void sub_1007634E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100763550(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 120);
  v18 = sub_1000ACEE4(a1, a2);
  v19 = qword_100BCE980;
  v20 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      *buf = 138545410;
      v34 = v18;
      v35 = 1024;
      v36 = a3;
      v37 = 1024;
      v38 = a4;
      v39 = 1024;
      v40 = a5;
      v41 = 1024;
      v42 = a6;
      v43 = 2048;
      v44 = a7;
      v45 = 1024;
      v46 = a8;
      v47 = 1024;
      v48 = a9;
      v49 = 2048;
      v50 = a10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LE synchronization Event for Device %{public}@ exceptionStatus %d connInterval=%d with eventCnt=%d CEOffset=%d hostTime:%llu BTCLK:%d:%d:%llu", buf, 0x44u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1007637AC;
    v22[3] = &unk_100B0B6E8;
    v31 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v23 = v18;
    v24 = a7;
    v26 = a8;
    v27 = a9;
    v25 = a10;
    sub_10074063C(a1, v22);
  }

  else if (v20)
  {
    *buf = 134217984;
    v34 = a2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
  }

  return sub_1000088CC(v32);
}

void sub_10076377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100763818(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, v2 + 120);
  v8 = sub_1000ACEE4(v7, v6);
  v9 = qword_100BCE980;
  v10 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = v4[26094];
      buf = 138543618;
      v18 = v8;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@ has completed a procedure of %d stetps", &buf, 0x12u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100763A24;
    v14[3] = &unk_100B0B710;
    v15 = v8;
    memcpy(v16, v4, sizeof(v16));
    sub_10074063C(v7, v14);
  }

  else if (v10)
  {
    buf = 134217984;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", &buf, 0xCu);
  }

  return sub_1000088CC(v13);
}

uint64_t sub_100763A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  memcpy(__dst, (a1 + 40), sizeof(__dst));
  return (*(*a2 + 72))(a2, v3, __dst);
}

uint64_t sub_100763AD0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, char a8, char a9, char a10, char a11, char a12, unsigned __int16 a13, int a14, char a15, char a16)
{
  v58[0] = 0;
  v58[1] = 0;
  sub_100007F88(v58, a1 + 120);
  v24 = sub_1000ACEE4(a1, a2);
  if (v24)
  {
    sub_10004DFB4(buf, v24);
    if (sub_10074ED30(a1, buf))
    {
      v25 = qword_100BCE980;
      if (a9 > 20 || a10 >= 21)
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          v30 = "";
          *buf = 138545666;
          *&buf[4] = v24;
          *&buf[12] = 1024;
          if (a15)
          {
            v30 = " wakeUp";
          }

          *&buf[14] = a9;
          *&buf[18] = 1024;
          *&buf[20] = a10;
          *&buf[24] = 1024;
          *&buf[26] = a11;
          *&buf[30] = 1024;
          LODWORD(v62) = a12;
          WORD2(v62) = 1024;
          *(&v62 + 6) = a13;
          WORD5(v62) = 1024;
          HIDWORD(v62) = a3;
          *v63 = 1024;
          *&v63[2] = a4;
          *&v63[6] = 1024;
          *&v63[8] = a5;
          *&v63[12] = 2082;
          *&v63[14] = v30;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Device %{public}@ is receiving a Rssi Detection Rssi [Avg|Max|median|min] var = %d:%d:%d:%d %d unreliable due to COEX(27) or saturation CoreMotion=%x:%x:%x %{public}s", buf, 0x46u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v26 = "";
          *buf = 138545666;
          *&buf[4] = v24;
          if (a15)
          {
            v26 = " wakeUp";
          }

          *&buf[12] = 1024;
          *&buf[14] = a9;
          *&buf[18] = 1024;
          *&buf[20] = a10;
          *&buf[24] = 1024;
          *&buf[26] = a11;
          *&buf[30] = 1024;
          LODWORD(v62) = a12;
          WORD2(v62) = 1024;
          *(&v62 + 6) = a13;
          WORD5(v62) = 1024;
          HIDWORD(v62) = a3;
          *v63 = 1024;
          *&v63[2] = a4;
          *&v63[6] = 1024;
          *&v63[8] = a5;
          *&v63[12] = 2082;
          *&v63[14] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a Rssi Detection Rssi [Avg|Max|median|min] var = %d:%d:%d:%d %d  CoreMotion=%x:%x:%x %{public}s", buf, 0x46u);
        }

        v62 = 0u;
        memset(v63, 0, sizeof(v63));
        memset(buf, 0, sizeof(buf));
        sub_100740410(a1, v24, buf);
        if (*buf)
        {
          ++*&v63[12];
          if (a15)
          {
            ++*&v63[8];
          }

          v53[0] = *buf;
          v53[1] = *&buf[8];
          v54 = *&buf[16];
          v55 = v62;
          v56 = *v63;
          v57 = *&v63[16];
          sub_100740538(a1, v24, v53);
        }

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1007640E8;
        v38[3] = &unk_100B0B738;
        v41 = a3;
        v42 = a4;
        v43 = a5;
        v44 = a6;
        v27 = v24;
        v39 = v27;
        v40 = a7;
        v47 = a8;
        v48 = a9;
        v49 = a10;
        v50 = a11;
        v51 = a12;
        v46 = a13;
        v45 = a14;
        v52 = a16;
        sub_10074063C(a1, v38);
        if (a15)
        {
          v36 = &off_100AE0A78;
          v37 = 0;
          sub_10004DFB4(&uu2, v27);
          v28 = sub_10004E34C(a1 + 640, &uu2);
          if (a1 + 648 != v28)
          {
            uu2 = 0uLL;
            v60 = 0;
            if (*(v28 + 79) < 0)
            {
              sub_100008904(&uu2, *(v28 + 56), *(v28 + 64));
            }

            else
            {
              uu2 = *(v28 + 56);
              v60 = *(v28 + 72);
            }

            v31 = sub_100432718();
            if (v60 >= 0)
            {
              p_uu2 = &uu2;
            }

            else
            {
              p_uu2 = uu2;
            }

            v34 = &off_100AE0A78;
            v35 = v37;
            (*(*v31 + 40))(v31, 6, p_uu2, v27, &v34);
            v34 = &off_100AE0A78;
            if (v35)
            {
              sub_10000C808(v35);
            }

            if (SHIBYTE(v60) < 0)
            {
              operator delete(uu2);
            }
          }

          v36 = &off_100AE0A78;
          if (v37)
          {
            sub_10000C808(v37);
          }
        }
      }
    }
  }

  else
  {
    v29 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
    }
  }

  return sub_1000088CC(v58);
}

void sub_100764040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a15)
  {
    sub_10000C808(a15);
  }

  sub_1000088CC(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_1007640E8(uint64_t a1, uint64_t a2)
{
  BYTE4(v4) = *(a1 + 75);
  LODWORD(v4) = *(a1 + 64);
  WORD2(v3) = *(a1 + 68);
  LODWORD(v3) = *(a1 + 71);
  return (*(*a2 + 80))(a2, *(a1 + 32), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 40), *(a1 + 70), v3, v4);
}

uint64_t sub_1007641A0(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 120);
  v8 = sub_1000ACEE4(a1, a2);
  if (v8)
  {
    sub_10004DFB4(buf, v8);
    if (sub_10074EE24(a1, buf))
    {
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        v11 = *(a3 + 1);
        v12 = *(a3 + 2);
        v13 = *(a3 + 5);
        v14 = *(a3 + 6);
        *buf = 138544642;
        v25 = v8;
        v26 = 1024;
        v27 = v10;
        v28 = 1024;
        v29 = v11;
        v30 = 1024;
        v31 = v12;
        v32 = 1024;
        v33 = v13;
        v34 = 1024;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is receiving a Phy statistc Bluetooth Usage Event Rssi:%d TxPER:%d:%d RxPER:%d:%d ", buf, 0x2Au);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1007643EC;
      v18[3] = &unk_100B0B738;
      v19 = v8;
      v15 = *(a3 + 1);
      v20 = *a3;
      v21 = v15;
      v22 = a4;
      sub_10074063C(a1, v18);
    }
  }

  else
  {
    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = a2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device is not connected for %p", buf, 0xCu);
    }
  }

  return sub_1000088CC(v23);
}

void sub_1007643B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007643EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  return (*(*a2 + 96))(a2, v3, v6, *(a1 + 72));
}

void sub_10076444C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_1000ACEE4(a1, a2);
  v8 = qword_100BCE980;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "high";
      *buf = 136446722;
      if (a3)
      {
        v9 = "low";
      }

      v15 = v9;
      v16 = 2114;
      v17 = v7;
      v18 = 1024;
      v19 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Crossed the %{public}s LE RSSI threshold for device %{public}@: %d", buf, 0x1Cu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1007645F0;
    v10[3] = &unk_100B0B788;
    v11 = v7;
    v12 = a3;
    v13 = a4;
    sub_10074063C(a1, v10);
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_10087149C();
  }
}

uint64_t sub_100764628(uint64_t a1, unint64_t a2, unsigned int a3, __int16 a4, int a5, __int16 a6, __int16 a7, unsigned __int8 a8)
{
  v90[1] = 0;
  v91 = a2;
  v90[0] = 0;
  sub_100007F88(v90, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v14 = *(a1 + 384);
  if (v14 != (a1 + 392))
  {
    while (*(v14 + 6) != a2)
    {
      v15 = *(v14 + 1);
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
          v16 = *(v14 + 2);
          v70 = *v16 == v14;
          v14 = v16;
        }

        while (!v70);
      }

      v14 = v16;
      if (v16 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v14 + 32);
  }

LABEL_11:
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008714D8();
    }

    return sub_1000088CC(v90);
  }

  v17 = sub_10000C798();
  if (!(*(*v17 + 1008))(v17))
  {
    v83 = 0;
    goto LABEL_40;
  }

  v18 = *(a1 + 536);
  if (!v18)
  {
    goto LABEL_23;
  }

  v19 = a1 + 536;
  do
  {
    v20 = *(v18 + 32);
    v21 = v20 >= v91;
    v22 = v20 < v91;
    if (v21)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v22);
  }

  while (v18);
  if (v19 != a1 + 536 && v91 >= *(v19 + 32))
  {
    v65 = *(v19 + 46);
    v66 = *(v19 + 48);
    v67 = *(v19 + 50);
    v68 = *(v19 + 52);
    *__p = *(v19 + 61);
    __p[2] = *(v19 + 63);
    *buf = &v91;
    v69 = sub_10077444C(a1 + 528, &v91);
    if (v66)
    {
      v70 = 0;
    }

    else
    {
      v70 = v65 == 1;
    }

    if (v70)
    {
      v71 = 0;
    }

    else
    {
      v71 = v68;
    }

    *(v69 + 20) = a3;
    *(v69 + 21) = a4;
    *(v69 + 22) = a5;
    LOWORD(v83) = v65;
    WORD2(v83) = v66;
    *(v69 + 23) = v65;
    *(v69 + 24) = v66;
    *(v69 + 25) = v67;
    *(v69 + 13) = v71;
    *(v69 + 28) = a6;
    *(v69 + 29) = a7;
    *(v69 + 60) = a8;
    *(v69 + 61) = *__p;
    *(v69 + 63) = __p[2];
    v72 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v91;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Updated previously stored connection parameters for handle %p.", buf, 0xCu);
    }
  }

  else
  {
LABEL_23:
    v23 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No previously stored connection parameters. Saving new parameters now. Subrate factor & Continuation number initialized to 0.", buf, 2u);
    }

    *buf = &v91;
    v24 = sub_10077444C(a1 + 528, &v91);
    v83 = 0;
    *(v24 + 20) = a3;
    *(v24 + 21) = a4;
    *(v24 + 22) = a5;
    *(v24 + 46) = 0;
    *(v24 + 27) = 0;
    *(v24 + 28) = a6;
    *(v24 + 29) = a7;
    *(v24 + 60) = a8;
    *(v24 + 61) = 0;
    *(v24 + 63) = 0;
  }

  v25 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v80 = a7;
    v81 = a8;
    v79 = v91;
    *__p = &v91;
    v78 = *(sub_10077444C(a1 + 528, &v91) + 20);
    *__p = &v91;
    v77 = *(sub_10077444C(a1 + 528, &v91) + 21);
    *__p = &v91;
    v26 = *(sub_10077444C(a1 + 528, &v91) + 22);
    *__p = &v91;
    v27 = *(sub_10077444C(a1 + 528, &v91) + 23);
    *__p = &v91;
    v28 = *(sub_10077444C(a1 + 528, &v91) + 24);
    *__p = &v91;
    v29 = *(sub_10077444C(a1 + 528, &v91) + 13);
    *__p = &v91;
    v30 = *(sub_10077444C(a1 + 528, &v91) + 28);
    *__p = &v91;
    v31 = *(sub_10077444C(a1 + 528, &v91) + 29);
    *__p = &v91;
    v32 = *(sub_10077444C(a1 + 528, &v91) + 60);
    *buf = 134220288;
    *&buf[4] = v79;
    *&buf[12] = 1024;
    *&buf[14] = v78;
    *&buf[18] = 1024;
    *&buf[20] = v77;
    *&buf[24] = 1024;
    *&buf[26] = v26;
    *&buf[30] = 1024;
    *&buf[32] = v27;
    *&buf[36] = 1024;
    v113 = v28;
    v114 = 1024;
    v115 = v29;
    v116 = 1024;
    v117 = v30;
    v118 = 1024;
    v119 = v31;
    v120 = 1024;
    v121 = v32;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "handleConnectionParametersUpdatedCallback: Connection parameters for handle %p. Connection Interval:%d Peripheral latency:%d Supervision Timeout=%d Subrate Factor: %d Continuation Number: %d. Subrating Status: %d, minCELength:%d, maxCELength:%d, localRole:%d", buf, 0x42u);
    a7 = v80;
    a8 = v81;
  }

  v33 = *(a1 + 512);
  if (v33)
  {
    v34 = v91;
    v35 = a1 + 512;
    do
    {
      v36 = *(v33 + 32);
      v21 = v36 >= v91;
      v37 = v36 < v91;
      if (v21)
      {
        v35 = v33;
      }

      v33 = *(v33 + 8 * v37);
    }

    while (v33);
    if (v35 != a1 + 512 && v91 >= *(v35 + 32))
    {
      v73 = *(v35 + 40);
      v82 = *(v35 + 48);
      v74 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110144;
        *&buf[4] = WORD1(v73);
        *&buf[8] = 1024;
        *&buf[10] = WORD2(v73);
        *&buf[14] = 1024;
        *&buf[16] = v73;
        *&buf[20] = 1024;
        *&buf[22] = HIWORD(v73);
        *&buf[26] = 1024;
        *&buf[28] = v82;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Locally initiated connection parameter update is now complete. Proceeding with sending connection subrating parameters: subrateMin:%d subrateMax:%d maxLatency:%d continuationNumber=%d supervisionTimeout=%d", buf, 0x20u);
        v34 = v91;
      }

      v75 = sub_10074E270(a1, v34, v73, v82);
      v76 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 67109120;
      *&buf[4] = v75;
      v39 = "Sent LE Connection Subrating Request with status: %d";
      v40 = v76;
      v41 = OS_LOG_TYPE_DEFAULT;
      v42 = 8;
      goto LABEL_38;
    }
  }

  v38 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v39 = "No connection subrating requests pending for this handle";
    v40 = v38;
    v41 = OS_LOG_TYPE_INFO;
    v42 = 2;
LABEL_38:
    _os_log_impl(&_mh_execute_header, v40, v41, v39, buf, v42);
  }

LABEL_40:
  if (a3 >= 0x308)
  {
    v43 = 0.35;
  }

  else
  {
    v43 = 0.75;
  }

  v44 = sub_10000C798();
  if ((*(*v44 + 456))(v44))
  {
    v45 = sub_10004DF60(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    if (sub_10078DEFC(off_100B508C8, v45))
    {
      if (a3 > 0xB)
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v49 = off_100B508C8;
        sub_100007E30(v86, "HIDDevicePoorBehavior");
        v50 = sub_10004EB40(v49, v45, v86);
        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (v50)
        {
          v51 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            sub_1000D67B4(uu, buf);
            v52 = buf[23] >= 0 ? buf : *buf;
            *__p = 136446210;
            *&__p[4] = v52;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Connection Update: Unsetting tag for LE_HID %{public}s.", __p, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          sub_10078380C(off_100B508C8, v45, @"HIDDevicePoorBehavior");
        }
      }

      else
      {
        v46 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          memset(buf, 0, 37);
          uuid_unparse_upper(uu, buf);
          sub_100007E30(__p, buf);
          v47 = v109 >= 0 ? __p : *__p;
          *v101 = 136446466;
          *&v101[4] = v47;
          v102 = 1024;
          v103 = a3;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Connection Update: LE HID %{public}s has interval less than 15ms: %d. Setting tag.", v101, 0x12u);
          if (SHIBYTE(v109) < 0)
          {
            operator delete(*__p);
          }
        }

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v48 = off_100B508C8;
        sub_100007E30(v88, "HIDDevicePoorBehavior");
        sub_10078787C(v48, v45, v88);
        if (v89 < 0)
        {
          operator delete(v88[0]);
        }
      }
    }
  }

  v53 = (v43 * (10 * a5) / (a3 * 1.25));
  v54 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, 37);
    uuid_unparse_upper(uu, buf);
    sub_100007E30(v101, buf);
    v55 = v104 >= 0 ? v101 : *v101;
    *__p = 136446978;
    *&__p[4] = v55;
    v106 = 1024;
    v107 = (v43 * (10 * a5) / (a3 * 1.25));
    v108 = 1024;
    v109 = a3;
    v110 = 1024;
    v111 = a5;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Connection Update: setting LE device %{public}s connection threshold to %d events with interval %d, LSTO %d", __p, 0x1Eu);
    if (v104 < 0)
    {
      operator delete(*v101);
    }
  }

  v56 = sub_10000C798();
  if (!(*(*v56 + 360))(v56))
  {
    goto LABEL_83;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v57 = off_100B508C8;
  v58 = sub_10004DF60(uu);
  LOBYTE(v57) = sub_1000D5D08(v57, v58);

  if (v57)
  {
LABEL_83:
    v59 = sub_10000C7D0();
    if (v53 >= 0xFF)
    {
      v60 = 255;
    }

    else
    {
      v60 = v53;
    }

    if ((*(*v59 + 1064))(v59, v91, v60) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008708FC();
    }
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v61 = off_100B508C8;
  v62 = sub_10004DF60(uu);
  sub_10078D60C(v61, v62, a3);

  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3321888768;
  v92[2] = sub_10076530C;
  v92[3] = &unk_100B0B7A8;
  uuid_copy(v100, uu);
  v93 = a3;
  v94 = a4;
  v95 = a5;
  v96 = v83;
  v97 = WORD2(v83);
  v98 = a6;
  v99 = a7;
  v100[16] = a8;
  sub_10074063C(a1, v92);
  if (*(a1 + 1603) == 1)
  {
    v63 = sub_10004DF60(uu);
    sub_1007536B0(v63, v63, a3);

    sub_1007533DC(a1);
  }

  return sub_1000088CC(v90);
}

void sub_10076530C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 46));
  (*(*a2 + 32))(a2);
}

uint64_t sub_1007653D4(uint64_t a1, unint64_t a2, int a3, int a4, __int16 a5, __int16 a6, __int16 a7)
{
  v65[1] = 0;
  v66 = a2;
  v65[0] = 0;
  sub_100007F88(v65, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v14 = *(a1 + 384);
  if (v14 != (a1 + 392))
  {
    while (*(v14 + 6) != a2)
    {
      v15 = *(v14 + 1);
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
          v16 = *(v14 + 2);
          v17 = *v16 == v14;
          v14 = v16;
        }

        while (!v17);
      }

      v14 = v16;
      if (v16 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v14 + 32);
  }

LABEL_11:
  if (uuid_is_null(uu))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008714D8();
    }
  }

  else if (a3 == 742)
  {
    v18 = *(a1 + 512);
    if (v18)
    {
      v19 = v66;
      v20 = a1 + 512;
      do
      {
        v21 = *(v18 + 32);
        v22 = v21 >= v66;
        v23 = v21 < v66;
        if (v22)
        {
          v20 = v18;
        }

        v18 = *(v18 + 8 * v23);
      }

      while (v18);
      if (v20 != a1 + 512 && v66 >= *(v20 + 32))
      {
        v24 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219264;
          *&buf[4] = v19;
          *&buf[12] = 1024;
          *&buf[14] = WORD1(v24);
          v71 = 1024;
          v72 = WORD2(v24);
          v73 = 1024;
          v74 = v24;
          v75 = 1024;
          v76 = HIWORD(v24);
          v77 = 1024;
          v78 = v25;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Due to OI_HCIERR_DIFFERENT_TRANS_COLLISION re-requesting subrating change to handle %p. Connection subrating parameters requested: subrateMin:%d subrateMax:%d maxLatency:%d continuationNumber=%d supervisionTimeout=%d", buf, 0x2Au);
          v19 = v66;
        }

        sub_10074E270(a1, v19, v24, v25);
      }
    }
  }

  else
  {
    v27 = *(a1 + 536);
    if (!v27)
    {
      goto LABEL_34;
    }

    v28 = v66;
    v29 = a1 + 536;
    do
    {
      v30 = *(v27 + 32);
      v22 = v30 >= v66;
      v31 = v30 < v66;
      if (v22)
      {
        v29 = v27;
      }

      v27 = *(v27 + 8 * v31);
    }

    while (v27);
    if (v29 != a1 + 536 && v66 >= *(v29 + 32))
    {
      v33 = *(v29 + 40);
      v87[0] = *(v29 + 50);
      *(v87 + 6) = *(v29 + 56);
      v61 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v28;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Updated previously stored connection parameters for handle %p.", buf, 0xCu);
      }
    }

    else
    {
LABEL_34:
      v32 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No previously stored connection parameters. Saving new parameters now. Connection Interval initialized to 0.", buf, 2u);
      }

      v33 = 0;
      *(v87 + 6) = 0;
      v87[0] = 0;
    }

    *buf = &v66;
    v34 = sub_10077444C(a1 + 528, &v66);
    *(v34 + 20) = v33;
    *(v34 + 21) = a5;
    *(v34 + 22) = a7;
    *(v34 + 23) = a4;
    *(v34 + 24) = a6;
    *(v34 + 50) = v87[0];
    v34[7] = *(v87 + 6);
    if (a4 == 1 && (*buf = &v66, *(sub_10077444C(a1 + 528, &v66) + 13) <= 1))
    {
      v35 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        v67 = &v66;
        v63 = *(sub_10077444C(a1 + 528, &v66) + 13);
        *buf = 67109376;
        *&buf[4] = v63;
        *&buf[8] = 2048;
        *&buf[10] = v66;
        _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Connection subrating status was %d to handle %p. Setting status to OFF.", buf, 0x12u);
      }

      *buf = &v66;
      v36 = sub_10077444C(a1 + 528, &v66);
      v37 = 0;
    }

    else
    {
      v38 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
      {
        v67 = &v66;
        v62 = *(sub_10077444C(a1 + 528, &v66) + 13);
        *buf = 67109376;
        *&buf[4] = v62;
        *&buf[8] = 2048;
        *&buf[10] = v66;
        _os_log_debug_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Connection subrating status was %d to handle %p. Setting status to ON.", buf, 0x12u);
      }

      *buf = &v66;
      v36 = sub_10077444C(a1 + 528, &v66);
      v37 = 2;
    }

    *(v36 + 13) = v37;
    v39 = *(a1 + 512);
    if (v39)
    {
      v40 = v66;
      v41 = a1 + 512;
      do
      {
        v42 = *(v39 + 32);
        v22 = v42 >= v66;
        v43 = v42 < v66;
        if (v22)
        {
          v41 = v39;
        }

        v39 = *(v39 + 8 * v43);
      }

      while (v39);
      if (v41 != a1 + 512 && v66 >= *(v41 + 32))
      {
        v44 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(v41 + 48);
          v46 = *(v41 + 46);
          v47 = *(v41 + 44);
          v48 = *(v41 + 42);
          v49 = *(v41 + 40);
          *buf = 134219264;
          *&buf[4] = v40;
          *&buf[12] = 1024;
          *&buf[14] = v48;
          v71 = 1024;
          v72 = v47;
          v73 = 1024;
          v74 = v49;
          v75 = 1024;
          v76 = v46;
          v77 = 1024;
          v78 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Locally initiated connection subrating update to handle %p is now complete. Connection subrating parameters requested: subrateMin:%d subrateMax:%d maxLatency:%d continuationNumber=%d supervisionTimeout=%d", buf, 0x2Au);
        }

        sub_100075DC4((a1 + 504), &v66);
      }
    }

    v50 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v66;
      v67 = &v66;
      v51 = *(sub_10077444C(a1 + 528, &v66) + 20);
      v67 = &v66;
      v52 = *(sub_10077444C(a1 + 528, &v66) + 21);
      v67 = &v66;
      v53 = *(sub_10077444C(a1 + 528, &v66) + 22);
      v67 = &v66;
      v54 = *(sub_10077444C(a1 + 528, &v66) + 23);
      v67 = &v66;
      v55 = *(sub_10077444C(a1 + 528, &v66) + 24);
      v67 = &v66;
      v56 = *(sub_10077444C(a1 + 528, &v66) + 13);
      v67 = &v66;
      v57 = *(sub_10077444C(a1 + 528, &v66) + 28);
      v67 = &v66;
      v58 = *(sub_10077444C(a1 + 528, &v66) + 29);
      v67 = &v66;
      v59 = *(sub_10077444C(a1 + 528, &v66) + 60);
      *buf = 134220288;
      *&buf[4] = v64;
      *&buf[12] = 1024;
      *&buf[14] = v51;
      v71 = 1024;
      v72 = v52;
      v73 = 1024;
      v74 = v53;
      v75 = 1024;
      v76 = v54;
      v77 = 1024;
      v78 = v55;
      v79 = 1024;
      v80 = v56;
      v81 = 1024;
      v82 = v57;
      v83 = 1024;
      v84 = v58;
      v85 = 1024;
      v86 = v59;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "handleConnectionSubratingCompleted: Updated previously stored connection parameters for handle %p. Connection Interval:%d Peripheral latency:%d Supervision Timeout=%d Subrate Factor: %d Continuation Number: %d. Subrating Status set to %d, minCELength:%d, maxCELength:%d, localRole:%d", buf, 0x42u);
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3321888768;
    v68[2] = sub_100765C90;
    v68[3] = &unk_100B0B7D8;
    v68[4] = a1;
    uuid_copy(v69, uu);
    v68[5] = v66;
    sub_10074063C(a1, v68);
  }

  return sub_1000088CC(v65);
}

void sub_100765C54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100765C90(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = sub_10004DF60((a1 + 48));
  v6 = (v3 + 40);
  v13 = *(sub_10077444C(v4 + 528, (v3 + 40)) + 20);
  v7 = *(sub_10077444C(v4 + 528, (v3 + 40)) + 21);
  v8 = *(sub_10077444C(v4 + 528, (v3 + 40)) + 22);
  v9 = *(sub_10077444C(v4 + 528, (v3 + 40)) + 23);
  v10 = *(sub_10077444C(v4 + 528, (v3 + 40)) + 24);
  v11 = *(sub_10077444C(v4 + 528, (v3 + 40)) + 28);
  LOWORD(v3) = *(sub_10077444C(v4 + 528, (v3 + 40)) + 29);
  BYTE2(v12) = *(sub_10077444C(v4 + 528, v6) + 60);
  LOWORD(v12) = v3;
  (*(*a2 + 32))(a2, v5, v13, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100765E78(uint64_t a1, unint64_t a2, int a3, int a4, char a5, int a6, int a7, __int16 a8, __int16 a9, unsigned __int16 a10, __int16 a11, __int16 a12, __int16 a13)
{
  v72[1] = 0;
  v73 = a2;
  v72[0] = 0;
  sub_100007F88(v72, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v21 = *(a1 + 384);
  if (v21 != (a1 + 392))
  {
    while (*(v21 + 6) != a2)
    {
      v22 = *(v21 + 1);
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
          v23 = *(v21 + 2);
          v24 = *v23 == v21;
          v21 = v23;
        }

        while (!v24);
      }

      v21 = v23;
      if (v23 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v21 + 32);
  }

LABEL_11:
  is_null = uuid_is_null(uu);
  v26 = qword_100BCE980;
  if (is_null)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008714D8();
    }
  }

  else if (a3)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1000D67B4(uu, out);
      sub_100871548();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      v27 = v86 >= 0 ? __p : __p[0];
      *buf = 136446466;
      v88 = v27;
      v89 = 1024;
      v90 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Le link %{public}s is ready with status %{bluetooth:OI_STATUS}u", buf, 0x12u);
      if (v86 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v28 = sub_10004DF60(uu);
    sub_100746D6C(a1, v28);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v29 = off_100B508C8;
    v30 = sub_10004DF60(uu);
    sub_10078B7E0(v29, v30, a5);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v31 = off_100B508C8;
    v32 = sub_10004DF60(uu);
    sub_10078BAB0(v31, v32, a6);

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v33 = off_100B508C8;
    v34 = sub_10004DF60(uu);
    sub_10078BBCC(v33, v34, (a10 * 1.25));

    v35 = sub_10000C798();
    if ((*(*v35 + 776))(v35))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v36 = off_100B508C8;
      v37 = sub_10004DF60(uu);
      LODWORD(v36) = sub_100789CFC(v36, v37);

      if (v36)
      {
        v38 = sub_10004DF60(uu);
        sub_10004DFB4(out, v38);
        sub_1007667D8(a1, out);
      }
    }

    v39 = sub_10000C798();
    if ((*(*v39 + 784))(v39))
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v40 = off_100B508C8;
      v41 = sub_10004DF60(uu);
      LODWORD(v40) = sub_100789E40(v40, v41);

      if (v40)
      {
        v42 = sub_10004DF60(uu);
        sub_10004DFB4(out, v42);
        sub_10076684C(a1, out);
      }
    }

    if (a10)
    {
      v43 = v73;
      *out = uu;
      *(sub_100773D48(a1 + 408, uu) + 48) = v43;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v44 = off_100B508C8;
      v45 = sub_10004DF60(uu);
      sub_10078C908(v44, v45, a7);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v46 = off_100B508C8;
      v47 = sub_10004DF60(uu);
      sub_10078CB20(v46, v47);

      v48 = sub_10000C798();
      v49 = a13;
      if ((*(*v48 + 1008))(v48))
      {
        v50 = *(a1 + 536);
        if (!v50)
        {
          goto LABEL_53;
        }

        v51 = v73;
        v52 = a1 + 536;
        do
        {
          v53 = *(v50 + 32);
          v54 = v53 >= v73;
          v55 = v53 < v73;
          if (v54)
          {
            v52 = v50;
          }

          v50 = *(v50 + 8 * v55);
        }

        while (v50);
        if (v52 != a1 + 536 && v73 >= *(v52 + 32))
        {
          v59 = *(v52 + 46);
          v58 = *(v52 + 48);
          v69 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *out = 134217984;
            *&out[4] = v51;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Updated previously stored connection parameters for handle %p.", out, 0xCu);
          }

          v49 = a13;
        }

        else
        {
LABEL_53:
          v56 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            *out = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "No previously stored connection parameters. Saving new parameters now. Subrate factor & Continuation number initialized to 0.", out, 2u);
          }

          *out = &v73;
          v57 = sub_10077444C(a1 + 528, &v73);
          v49 = a13;
          v58 = 0;
          v59 = 0;
          *(v57 + 20) = a10;
          *(v57 + 21) = a11;
          *(v57 + 22) = a12;
          *(v57 + 46) = 0;
          *(v57 + 27) = 0;
          *(v57 + 28) = a8;
          *(v57 + 29) = a13;
          *(v57 + 60) = a9;
          *(v57 + 61) = 0;
          *(v57 + 63) = 0;
        }
      }

      else
      {
        v58 = 0;
        v59 = 0;
      }

      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3321888768;
      v74[2] = sub_1007668D0;
      v74[3] = &unk_100B0B808;
      uuid_copy(v84, uu);
      v75 = 0;
      v76 = a10;
      v77 = a11;
      v78 = a12;
      v79 = v59;
      v80 = v58;
      v81 = a8;
      v82 = v49;
      v83 = a9;
      sub_10074063C(a1, v74);
      if (*(a1 + 1603) == 1)
      {
        v60 = sub_10004DF60(uu);
        sub_1007536B0(v60, v60, a10);

        sub_1007533DC(a1);
      }
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_1008715AC();
    }

    if (a4)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v61 = off_100B508C8;
      v62 = sub_10004DF60(uu);
      sub_100007E30(v70, "requiresCTOFix");
      sub_10078787C(v61, v62, v70);
      if (v71 < 0)
      {
        operator delete(v70[0]);
      }
    }

    v63 = v73;
    v64 = sub_10004DF60(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v65 = off_100B508C8;
    v66 = sub_10004DF60(uu);
    v67 = sub_100788D8C(v65, v66);
    sub_1007669E4(a1, v63, v64, v67);
  }

  return sub_1000088CC(v72);
}

uint64_t sub_1007667D8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = 0;
  result = sub_1000C4FCC(a1, a2, &v5);
  if (result)
  {
    v4 = 0;
    v3 = sub_10000C7D0();
    return (*(*v3 + 2096))(v3, v5, 1, 0, &v4, 33);
  }

  return result;
}

uint64_t sub_10076684C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  result = sub_1000C4FCC(a1, a2, &v4);
  if (result)
  {
    v3 = *(*sub_10000C7D0() + 2104);

    return v3();
  }

  return result;
}

void sub_1007668D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DF60((a1 + 52));
  (**a2)(a2);

  v5 = sub_10004DF60((a1 + 52));
  (*(*a2 + 32))(a2);
}

void sub_1007669E4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = sub_100007EE8();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10076B2AC;
  v10[3] = &unk_100B047E0;
  v14 = a4;
  v12 = a1;
  v13 = a2;
  v9 = v7;
  v11 = v9;
  sub_10000CA94(v8, v10);
}

uint64_t sub_100766AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v16 = *(a1 + 384);
  if (v16 != (a1 + 392))
  {
    while (*(v16 + 6) != a2)
    {
      v17 = *(v16 + 1);
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
          v18 = *(v16 + 2);
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      v16 = v18;
      if (v18 == (a1 + 392))
      {
        goto LABEL_11;
      }
    }

    uuid_copy(uu, v16 + 32);
  }

LABEL_11:
  if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_FAULT))
  {
    sub_1008715E8();
  }

  if (!uuid_is_null(uu))
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3321888768;
    v22[2] = sub_100766CAC;
    v22[3] = &unk_100B0B838;
    v22[4] = a8;
    uuid_copy(v24, uu);
    v22[5] = a3;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = a6;
    v23 = a7;
    sub_10074063C(a1, v22);
  }

  return sub_1000088CC(v21);
}

void sub_100766C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100766CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_10004DF60((a1 + 76));
  (*(*a2 + 40))(a2, v3);
}

uint64_t sub_100766D68(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 120);
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "All devices have been disconnected", v4, 2u);
  }

  *(a1 + 1008) = 0;
  sub_100364600((a1 + 960));
  return sub_1000088CC(v5);
}

void sub_100766DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100766E0C(uint64_t a1)
{
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 120);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = sub_100029630(a1);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v2)
  {
    v17 = *v25;
LABEL_3:
    v3 = 0;
    while (1)
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v24 + 1) + 8 * v3);
      sub_10004DFB4(buf, v4);
      v5 = sub_10004E34C(a1 + 384, buf);
      if (a1 + 392 == v5)
      {
        break;
      }

      v6 = *(v5 + 48);
      v23 = 0;
      sub_1000216B4(&v23);
      v7 = sub_1000ABD24(v6);
      v22 = 0;
      sub_1002D007C(v6, &v22);
      v8 = sub_1002D02B4(v6);
      sub_100022214(&v23);
      if (v7)
      {
        v9 = v22;
        if (v22 >= 0x308u)
        {
          v10 = 0.35;
        }

        else
        {
          v10 = 0.75;
        }

        v11 = (v10 * (10 * v8) / (v22 * 1.25));
        v12 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          v30 = v4;
          v31 = 1024;
          v32 = v11;
          v33 = 1024;
          v34 = v9;
          v35 = 1024;
          v36 = v8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setVoicePrioritizationThreshold: setting LE device %{public}@ connection threshold to %d events with interval %d, LSTO %d", buf, 0x1Eu);
        }

        v13 = sub_10000C7D0();
        if (v11 >= 0xFF)
        {
          v14 = 255;
        }

        else
        {
          v14 = v11;
        }

        if ((*(*v13 + 1064))(v13, v6, v14) && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_100871694(&v20, v21);
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871658(&v18, v19);
      }

      sub_10002249C(&v23);
      if (v2 == ++v3)
      {
        v2 = [obj countByEnumeratingWithState:&v24 objects:v37 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return sub_1000088CC(v28);
}

void sub_100767108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100767160(uint64_t result, unsigned __int8 *a2, int a3, int a4, uint64_t a5, __int16 a6, unsigned int a7, float a8, float a9, float a10)
{
  if (a8 != 0.0 && a10 != 0.0 && a7 != 0)
  {
    v20 = result;
    v68[0] = 0;
    v68[1] = 0;
    sub_100007F88(v68, result + 120);
    *buf = a2;
    v21 = *(sub_100775DDC(v20 + 840, a2) + 58);
    v22 = sub_10004E34C(v20 + 384, a2);
    if (v20 + 392 != v22)
    {
      v55 = *(v22 + 48);
      if (v20 + 848 == sub_100774BCC(v20 + 840, a2))
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v54 = v23;
      *buf = a2;
      v24 = sub_100775DDC(v20 + 840, a2);
      *(v24 + 44) = 0x5010100000002;
      *(v24 + 52) = a9;
      *(v24 + 54) = a3;
      *(v24 + 56) = a4;
      *(v24 + 58) = a5;
      *(v24 + 60) = a6;
      *(v24 + 62) = a7;
      *(v24 + 64) = a8;
      *(v24 + 68) = a9;
      *(v24 + 72) = a10;
      *(v24 + 76) = 0;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v25 = off_100B508C8;
      v26 = sub_10004DF60(a2);
      sub_100007E30(v66, "A2051");
      if (sub_10004EB40(v25, v26, v66))
      {
        v27 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v28 = off_100B508C8;
        v29 = sub_10004DF60(a2);
        sub_100007E30(v64, "A1603");
        if (sub_10004EB40(v28, v29, v64))
        {
          v27 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10086DE2C();
          }

          v30 = off_100B508C8;
          v53 = sub_10004DF60(a2);
          sub_100007E30(v62, "A3085");
          if (sub_10004EB40(v30, v53, v62))
          {
            v27 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10086DE2C();
            }

            v31 = off_100B508C8;
            v52 = sub_10004DF60(a2);
            sub_100007E30(__p, "A2538");
            v27 = sub_10004EB40(v31, v52, __p);
            if (v61 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (v63 < 0)
          {
            operator delete(v62[0]);
          }
        }

        if (v65 < 0)
        {
          operator delete(v64[0]);
        }
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (v27 && (*(sub_10000C7D0() + 800) - 5000) >= 0x3E8 && v54 != a5)
      {
        v32 = sub_10000C7D0();
        v33 = sub_10004DF60(a2);
        v34 = v54 + 2;
        if (v54 < 6)
        {
          v34 = 6;
        }

        (*(*v32 + 992))(v32, v33, v34);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v35 = off_100B508C8;
      v36 = sub_10004DF60(a2);
      sub_100007E30(v58, "BluetoothTVRemote");
      v37 = sub_10004EB40(v35, v36, v58);
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (v37)
      {
        a4 = 6;
        a3 = 6;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v38 = off_100B508C8;
      v39 = sub_10004DF60(a2);
      sub_100007E30(v56, "requiresCTOFix");
      if (sub_10004EB40(v38, v39, v56))
      {
        v40 = 3000;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v41 = off_100B508C8;
        v42 = sub_10004DF60(a2);
        LODWORD(v41) = sub_100788D8C(v41, v42) == 131103;

        if (v41)
        {
          v40 = 3000;
        }

        else
        {
          v40 = a7;
        }
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      v43 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *&buf[4] = a8;
        v70 = 1024;
        v71 = a10;
        v72 = 1024;
        v73 = a3;
        v74 = 1024;
        v75 = a4;
        v76 = 1024;
        v77 = a5;
        v78 = 1024;
        v79 = v40;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Got a profile request to update parameters to %dms->%dms, %d min CE length, %d max CE length, %d latency, and %d timeout", buf, 0x26u);
      }

      buf[0] = 0;
      sub_1000216B4(buf);
      v44 = v40 / 10.0;
      LODWORD(v45) = vcvtps_s32_f32(v44);
      v46 = sub_1002D1C8C(v55, (a8 / 1.25), (a9 / 1.25), a5, v45, a3, a4);
      sub_100022214(buf);
      if (v46 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1008716D0();
      }

      v47 = sub_10000C7D0();
      (*(*v47 + 1048))(v47, v55, 1, 0);
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v48 = off_100B508C8;
      v49 = sub_10004DF60(a2);
      sub_10078BD70(v48, v49, 1);

      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v50 = off_100B508C8;
      v51 = sub_10004DF60(a2);
      sub_10078BE88(v50, v51, a9);

      sub_10002249C(buf);
    }

    return sub_1000088CC(v68);
  }

  return result;
}

void sub_100767818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_1000088CC(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_100767968(uint64_t a1, unsigned __int8 *a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6, _WORD *a7)
{
  if (sub_10074E724(a1, a2))
  {
    *out = 0;
    if (sub_1000C4FCC(a1, a2, out))
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_1002C39C0(*out, a3, a4, a5, a6, a7, 0, 0);
      sub_100022214(__p);
      sub_10002249C(__p);
      return 0;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    v15 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *out = 136446210;
      *&out[4] = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Device %{public}s is not ready, cannot get connection parameters", out, 0xCu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 12;
  }
}

void sub_100767AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100767B18(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100767B88(off_100B508A8, *(a1 + 32), *(a1 + 52), *(a1 + 44), *(a1 + 46), *(a1 + 48), *(a1 + 50), *(a1 + 40), *(a1 + 53), HIBYTE(*(a1 + 53)));
}

uint64_t sub_100767B88(uint64_t a1, __int128 *a2, unsigned int a3, int a4, int a5, unsigned int a6, int a7, unsigned int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v71 = a4;
  v70 = a5;
  v69 = 0;
  v68 = 12;
  v16 = sub_10000C7D0();
  v17 = sub_1004106D0(v16, 0xBB8u);
  v18 = a4 == a5 && v17;
  v52 = v18;
  v67[0] = 0;
  v67[1] = 0;
  sub_100007F88(v67, a1 + 120);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (byte_100BC7AE0)
  {
    v19 = 1;
  }

  else
  {
    v20 = sub_10000E92C();
    sub_100007E30(buf, "LE");
    sub_100007E30(__p, "DisableConnectionParameterUpdates");
    (*(*v20 + 72))(v20, buf, __p, &v69);
    if (v66 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v76) < 0)
    {
      operator delete(*buf);
    }

    if (v69 == 1)
    {
      v21 = qword_100BCE980;
      v19 = 0;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Warning: Rejecting parameter updates due to override", buf, 2u);
        v19 = 0;
      }
    }

    else
    {
      if (sub_100748908(a1, a2, uu))
      {
        v22 = sub_100774BCC(a1 + 840, uu);
        if (a1 + 848 == v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22 + 44;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = sub_10004DF60(uu);
      v19 = sub_1007683C8(v24, &v71, &v70, a6, a7, v23, &v68, a9, v24);
    }
  }

  if (sub_10074ECD8(a1, uu))
  {
    v25 = 0;
LABEL_21:
    v26 = 6;
LABEL_22:
    v68 = v26;
    goto LABEL_23;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v31 = off_100B508C8;
  v32 = sub_10004DF60(uu);
  sub_100007E30(v63, "FastConnection");
  v33 = sub_10004EB40(v31, v32, v63);
  if (v64 < 0)
  {
    operator delete(v63[0]);
  }

  if (v33)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v34 = off_100B508C8;
    v35 = sub_10004DF60(uu);
    sub_100007E30(v61, "A2051");
    if (sub_10004EB40(v34, v35, v61))
    {
      v36 = 1;
    }

    else
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v39 = off_100B508C8;
      v40 = sub_10004DF60(uu);
      sub_100007E30(v59, "A2538");
      v36 = sub_10004EB40(v39, v40, v59);
      if (v60 < 0)
      {
        operator delete(v59[0]);
      }
    }

    if (v62 < 0)
    {
      operator delete(v61[0]);
    }

    if (v36)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v41 = off_100B508C8;
      v42 = sub_10004DF60(uu);
      v25 = sub_10078BF14(v41, v42);

      if (v25)
      {
        v71 = v25;
        v70 = v25;
      }
    }

    else
    {
      v25 = 0;
    }

    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v49 = off_100B508C8;
    v50 = sub_10004DF60(uu);
    sub_100007E30(v57, "BluetoothTVRemote");
    v51 = sub_10004EB40(v49, v50, v57);
    if (v58 < 0)
    {
      operator delete(v57[0]);
    }

    if (!v51)
    {
      v26 = 4;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v37 = off_100B508C8;
  v38 = sub_10004DF60(uu);
  LODWORD(v37) = sub_100788ED8(v37, v38);

  if (v37)
  {
    v25 = 0;
    v26 = 12;
    goto LABEL_22;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v43 = off_100B508C8;
  v44 = sub_10004DF60(uu);
  sub_100007E30(v55, "_HID_DEVICE_");
  v45 = sub_10004EB40(v43, v44, v55);
  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v45)
  {
    goto LABEL_73;
  }

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v46 = off_100B508C8;
  v47 = sub_10004DF60(uu);
  LODWORD(v46) = sub_10078D580(v46, v47);

  if (!v46)
  {
    goto LABEL_73;
  }

  if (qword_100B50910 != -1)
  {
    sub_10086E454();
  }

  if (*(off_100B50908 + 226) == 1)
  {
    v48 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = 2;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "MIDI: Rejecting connection parameter request due low latency HID devices connected", buf, 2u);
      v25 = 0;
      v19 = 0;
      goto LABEL_23;
    }

    v25 = 0;
    v19 = 0;
  }

  else
  {
LABEL_73:
    v25 = 0;
  }

  v26 = 2;
LABEL_23:
  v27 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v28 = "Rejecting";
    if (v19)
    {
      v28 = "Accepting";
    }

    *buf = 136447746;
    *&buf[4] = v28;
    v73 = 1024;
    v74 = v71;
    v75 = 1024;
    v76 = v70;
    v77 = 1024;
    v78 = a6;
    v79 = 1024;
    v80 = a7;
    v81 = 1024;
    v82 = v68;
    v83 = 1024;
    v84 = v25;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s following parameters: min=%u, max=%u, lat=%u, mul=%u, cel=%u, preferredLowLatencyInterval=%d", buf, 0x30u);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  sub_1002D0330(a2, a3, v19, v71, v70, a6, a7, v26, v68, a8, v52);
  v29 = sub_10004DF60(uu);
  sub_100758210(v29, v29, 4, a9 == 1, a10);

  sub_10002249C(buf);
  return sub_1000088CC(v67);
}

uint64_t sub_1007683C8(uint64_t a1, _WORD *a2, _WORD *a3, unsigned int a4, __int16 a5, uint64_t a6, _WORD *a7, int a8, void *a9)
{
  v16 = a9;
  v17 = *a2;
  if ((v17 - 3201) > 0xF384u)
  {
    v18 = *a3;
    if ((v18 - 3201) > 0xF384u)
    {
      if (v17 <= v18)
      {
        if (a4 < 0x1F5)
        {
          if ((a5 - 3201) > 0xF388u)
          {
            v19 = v17 * 1.25;
            v20 = v18 * 1.25;
            if (!a6)
            {
              if (v19 < 15.0)
              {
                v21 = qword_100BCE980;
                v22 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
                if (a8)
                {
                  if (v22)
                  {
                    v35 = 134218240;
                    *v36 = v19;
                    *&v36[8] = 1024;
                    *v37 = 15;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Remote side (central) wants a min interval (%.0f ms) smaller than %d ms.", &v35, 0x12u);
                  }
                }

                else
                {
                  if (v22)
                  {
                    v35 = 134218240;
                    *v36 = v19;
                    *&v36[8] = 1024;
                    *v37 = 15;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Remote side (peripheral) wants a min interval (%.0f ms) smaller than %d ms. Scaling up", &v35, 0x12u);
                  }

                  *a2 = 12;
                  v19 = 15.0;
                }
              }

              v23 = 7.5;
              if (!a8)
              {
                v23 = 15.0;
              }

              if ((v23 != v20 || v19 != v23) && (v20 - v19) < 15.0)
              {
                v26 = qword_100BCE980;
                if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v35) = 0;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Intervals should be 15 ms apart - increasing the gap", &v35, 2u);
                }

                v20 = v19 + 15.0;
                *a3 = ((v19 + 15.0) / 1.25);
              }
            }

            if (v20 <= 2000.0)
            {
              if ((v20 * (a4 + 1)) <= 6000.0)
              {
                if (a4 < 0x1F || a6)
                {
                  v27 = (10 * a5);
                  if (v27 >= 0x4651)
                  {
                    v28 = qword_100BCE980;
                    if (a8 != 1)
                    {
                      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                      {
                        sub_100871740();
                      }

                      goto LABEL_60;
                    }

                    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
                    {
                      v35 = 67109376;
                      *v36 = v27;
                      *&v36[4] = 1024;
                      *&v36[6] = 18000;
                      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Remote side (central) asks for a timeout (%u ms) of more than %d seconds.", &v35, 0xEu);
                    }
                  }

                  if ((v20 * (3 * (a4 + 1))) <= v27)
                  {
                    if (a6)
                    {
                      if (v19 < *(a6 + 20))
                      {
                        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                        {
                          sub_1008717BC();
                        }

                        goto LABEL_60;
                      }

                      v32 = *(a6 + 24);
                      if (v19 <= v32)
                      {
                        v33 = (v32 / 1.25);
                        *a3 = v33;
                        v34 = qword_100BCE980;
                        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
                        {
                          v35 = 67109120;
                          *v36 = v33;
                          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Using %u as the max interval", &v35, 8u);
                        }
                      }

                      *a7 = *(a6 + 12);
                    }

                    v30 = 1;
                    goto LABEL_61;
                  }

                  v29 = qword_100BCE980;
                  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                  {
                    v35 = 67109632;
                    *v36 = v27;
                    *&v36[4] = 1024;
                    *&v36[6] = a4;
                    *v37 = 2048;
                    *&v37[2] = v20;
                    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Remote sides asks for a timeout (%u ms) / latency (%u) / maxInterval (%f ms) that would cause link timeouts under bad conditions - refusing", &v35, 0x18u);
                  }
                }

                else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
                {
                  sub_100871844();
                }
              }

              else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
              {
                sub_1008718C0();
              }
            }

            else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
            {
              sub_1008718FC();
            }
          }

          else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_100871938();
          }
        }

        else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
        {
          sub_1008719A8();
        }
      }

      else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871A18();
      }
    }

    else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871A88();
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100871AFC();
  }

LABEL_60:
  v30 = 0;
LABEL_61:

  return v30;
}

void sub_1007689A4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, void *a5)
{
  if (a2 == 2)
  {
    v9 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = 2;
      *v27 = 2048;
      *&v27[2] = (a3 * 1.25);
      v28 = 2048;
      v29 = (a4 * 1.25);
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "autoReconnect caused resuming, state=%d, scan=%g/%g (ms)", buf, 0x1Cu);
    }

    v12 = *a5;
    v10 = a5 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = v11[4];
        *buf = 0;
        *v27 = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        sub_1000498D4(off_100B508C8, v13, 0, 1u, 0, 0, buf);
        if (uuid_is_null(buf))
        {
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
          {
            sub_100871B70(&v24, v13, &v25);
          }
        }

        else if (a1 + 392 == sub_10004E34C(a1 + 384, buf))
        {
          sub_100749CFC(a1, buf, v13);
        }

        else
        {
          v17 = sub_10009A66C(v13);
          v18 = v17 << 48;
          if (BYTE6(v13) == 3)
          {
            v18 = 0x1000000000000;
          }

          if (BYTE6(v13) == 2)
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          v20 = sub_1007564FC(v17, v17 & 0xFF000000 | BYTE6(v17) | (BYTE2(v17) << 32) & 0xFFFF00FFFFFFFFFFLL | (BYTE1(v17) << 40) | (v17 >> 16) & 0xFF0000 | HIDWORD(v17) & 0xFF00 | v19);
          v21 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
          {
            *v22 = 67109120;
            v23 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "autoReconnect to a device already connected, removeAddressFromBTController returned %d", v22, 8u);
          }
        }

        v14 = v11[1];
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
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v10);
    }

    if (*(a1 + 864) == 4)
    {
      sub_100768CC0(a1);
    }
  }

  else if (a2 == 1)
  {

    sub_100745874(a1, 4u);
  }
}

uint64_t sub_100768CC0(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 864);
    if (v3 > 4)
    {
      v4 = "UNKNOWN";
    }

    else
    {
      v4 = (&off_100B0BF80)[v3];
    }

    v5 = *(a1 + 928);
    if (v5 > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF60)[v5];
    }

    v14 = 136446466;
    v15 = v4;
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "resumeConnectionManager called, LeConnectionState=%{public}s LeConnectionManagerState=%{public}s", &v14, 0x16u);
  }

  v7 = *(a1 + 928);
  if (v7 < 2)
  {
    goto LABEL_12;
  }

  if (v7 != 2)
  {
    if (v7 == 3)
    {
LABEL_12:
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871BD8();
      }

      return 12;
    }

    return 0;
  }

  v9 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resuming LE Connection Manager", &v14, 2u);
  }

  sub_100745C6C(a1, 3u);
  v10 = *(a1 + 864);
  if ((v10 - 1) < 3)
  {
    v11 = qword_100BCE980;
    result = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We're doing something else right now, will resume when idle", &v14, 2u);
    return 0;
  }

  if (v10 != 4)
  {
    if (!v10)
    {
      v12 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We're idle, lets move on", &v14, 2u);
      }

      sub_100745C6C(a1, 0);
      sub_1007556FC(a1);
      sub_100753CFC(a1);
    }

    return 0;
  }

  v13 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "We're auto-reconnecting, lets move on", &v14, 2u);
  }

  sub_100745C6C(a1, 0);
  sub_100745874(a1, *(a1 + 352) != 0);
  if ([*(a1 + 768) count] || (result = objc_msgSend(*(a1 + 776), "count")) != 0)
  {
    sub_10074518C(a1, 0);
    return 0;
  }

  return result;
}

void sub_100768F84(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 60);
  v4 = *(a1 + 56);
  v5 = *(a1 + 58);
  sub_100775F10(v6, a1 + 32);
  sub_1007689A4(v2, v3, v4, v5, v6);
  sub_10000CEDC(v6, v6[1]);
}

double sub_100769048(uint64_t a1, int a2, unsigned __int16 *a3, uint64_t a4)
{
  v8 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v11[0]) = 67109120;
    HIDWORD(v11[0]) = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleCsReadRemoteFAETableCallback status=%{bluetooth:OI_STATUS}u", v11, 8u);
  }

  v11[0] = 0;
  v11[1] = 0;
  uuid_clear(v11);
  if (sub_100748908(a1, a3, v11))
  {
    v10 = sub_10004E34C(a1 + 1424, v11);
    if (a1 + 1432 != v10)
    {
      *&result = sub_1003183A4(*(v10 + 48), *a3, a4).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_100769150(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8[0]) = 67109120;
    HIDWORD(v8[0]) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleCsReadRemoteFAETableCallback status=%{bluetooth:OI_STATUS}u", v8, 8u);
  }

  v8[0] = 0;
  v8[1] = 0;
  uuid_clear(v8);
  result = sub_100748908(a1, a3, v8);
  if (result)
  {
    result = sub_10004E34C(a1 + 1424, v8);
    if (a1 + 1432 != result)
    {
      return sub_1003183CC(*(result + 48));
    }
  }

  return result;
}

void sub_100769248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleCsProcedureEnableCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v9 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a3, buf))
  {
    v7 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v7)
    {
      sub_1003183D8(*(v7 + 48), a2);
    }
  }
}

void sub_100769404(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "handleCsProcedureEnableCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v9 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a3, buf))
  {
    v7 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v7)
    {
      sub_1003184D8(*(v7 + 48), a2);
    }
  }
}

void sub_100769568(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, char a10, char a11, unsigned __int8 a12, size_t __n, const void *a14, unsigned __int8 *a15, const void *a16)
{
  v24 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a8;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "handleCsSubeventResultCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v27 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a2, buf))
  {
    v25 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v25)
    {
      sub_1003185AC(*(v25 + 48), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, __n, a14, a15, a16);
    }
  }
}

void sub_1007696D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, unsigned __int8 *a11, const void *a12)
{
  v20 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a4;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "handleCsSubeventResultCallback status=%{bluetooth:OI_STATUS}u", buf, 8u);
  }

  *buf = 0;
  v23 = 0;
  uuid_clear(buf);
  if (sub_100748908(a1, a2, buf))
  {
    v21 = sub_10004E34C(a1 + 1424, buf);
    if (a1 + 1432 != v21)
    {
      sub_1003189FC(*(v21 + 48), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
    }
  }
}

double sub_100769820(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return sub_100769048(v2, v3, v4, v5);
}

uint64_t sub_100769878(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  return sub_100769150(v2, v3, v4);
}

void sub_1007698D0(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_100769248(off_100B508A8, *(a1 + 48), *(a1 + 32));
}

void sub_100769958(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_100769404(off_100B508A8, *(a1 + 40), *(a1 + 32));
}

uint64_t sub_1007699D0(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_100769568(off_100B508A8, *(a1 + 32), *(a1 + 78), *(a1 + 72), *(a1 + 74), *(a1 + 76), *(a1 + 79), *(a1 + 80), *(a1 + 81), BYTE1(*(a1 + 81)), BYTE2(*(a1 + 81)), HIBYTE(*(a1 + 81)), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  result = *(a1 + 64);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

uint64_t sub_100769ABC(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  sub_1007696D4(off_100B508A8, *(a1 + 32), *(a1 + 72), *(a1 + 73), *(a1 + 74), *(a1 + 75), *(a1 + 76), *(a1 + 77), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 48))
  {
    operator delete[]();
  }

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  result = *(a1 + 64);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

void sub_100769BA0(void *a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[147];
    *buf = 67109120;
    *v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Disconnection History: %d entries", buf, 8u);
  }

  if (a1[147])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = objc_alloc_init(NSDateFormatter);
    [v5 setDateFormat:@"yyyy-MM-dd H:mm:ss"];
    v6 = a1[145];
    if (v6 != a1 + 146)
    {
      do
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_10077608C(&v22, (v6 + 7));
        v7 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v6 + 4;
          if (*(v6 + 55) < 0)
          {
            v8 = *v8;
          }

          *buf = 136446210;
          *v26 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:", buf, 0xCu);
        }

        for (i = v23; i != &v22; i = *(i + 8))
        {
          v10 = *(i + 16);
          v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v10];
          v12 = [v5 stringFromDate:v11];
          LODWORD(v13) = llround((v10 - floor(v10)) * 1000.0);
          v14 = [NSString stringWithFormat:@"%@.%000d", v12, v13];
          v15 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(i + 24);
            v17 = v14;
            v18 = [v14 UTF8String];
            *buf = 67109890;
            *v26 = v16;
            *&v26[4] = 2082;
            *&v26[6] = v18;
            v27 = 2048;
            v28 = v10;
            v29 = 2048;
            v30 = Current - v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump:       reason %d time:%{public}s %.3f secs(%-12.2f secs ago)", buf, 0x26u);
          }
        }

        sub_100028EB4(&v22);
        v19 = v6[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v6[2];
            v21 = *v20 == v6;
            v6 = v20;
          }

          while (!v21);
        }

        v6 = v20;
      }

      while (v20 != a1 + 146);
    }
  }
}

void sub_100769EEC(uint64_t a1, const void **a2)
{
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_100871C14();
  }

  v4 = sub_1000463C8(a1 + 1160, a2);
  if ((a1 + 1168) != v4)
  {
    v5 = v4;
    sub_10002717C((a1 + 1160), v4);
    sub_1003C473C((v5 + 4));
    operator delete(v5);
  }
}

double sub_100769F7C(uint64_t a1, const void **a2)
{
  v3 = sub_1000463C8(a1 + 1160, a2);
  v4 = 0.0;
  if (a1 + 1168 != v3)
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 0;
    sub_10077608C(v6, v3 + 56);
    if (v7)
    {
      v4 = *(v6[0] + 16);
    }

    sub_100028EB4(v6);
  }

  return v4;
}

void sub_100769FF8(void *a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[151];
    *buf = 67109120;
    LODWORD(v13) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: LeConnectionRSSIThresholdState History: %d entries", buf, 8u);
  }

  if (a1[151])
  {
    v4 = a1[149];
    v5 = a1 + 150;
    if (v4 != a1 + 150)
    {
      v6 = qword_100BCE980;
      do
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v4 + 4;
          if (*(v4 + 55) < 0)
          {
            v7 = *v7;
          }

          v8 = *(v4 + 14);
          *buf = 136446466;
          v13 = v7;
          v14 = 1024;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:%d", buf, 0x12u);
          v6 = qword_100BCE980;
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

      while (v10 != v5);
    }
  }
}

uint64_t sub_10076A184(uint64_t a1, const void **a2, int a3)
{
  if (*(a1 + 1208) >= 0x21uLL)
  {
    sub_10075F7DC(a1);
  }

  result = sub_100776440(a1 + 1192, a2);
  *(result + 56) = a3;
  return result;
}

uint64_t sub_10076A1F4(uint64_t a1, const void **a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current <= a3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = Current - a3;
  }

  v8 = sub_1000463C8(a1 + 1160, a2);
  if (a1 + 1168 == v8)
  {
    v10 = 0;
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    sub_10077608C(v14, v8 + 56);
    v9 = v14[1];
    if (v14[1] == v14)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = (*(v9 + 24) - 708) > 0x36 || ((1 << (*(v9 + 24) + 60)) & 0x40000004000001) == 0;
        if (!v11 && *(v9 + 16) > v7)
        {
          ++v10;
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v14);
    }

    sub_100028EB4(v14);
  }

  v12 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    LODWORD(v14[0]) = 136446722;
    *(v14 + 4) = a2;
    WORD2(v14[1]) = 2048;
    *(&v14[1] + 6) = a3;
    HIWORD(v14[2]) = 1024;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "getNumDisconnectionsBySignalQuality for %{public}s over time window %f count %d", v14, 0x1Cu);
  }

  return v10;
}

uint64_t sub_10076A398(uint64_t a1, int a2)
{
  v4 = sub_10000C798();
  if ((*(*v4 + 384))(v4) && (a2 == 16 || a2 == 267 || a2 == 23))
  {
    v5 = *(a1 + 1552) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10076A41C(uint64_t a1, void *a2)
{
  v3 = a2;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  v4 = [v3 UUIDString];
  sub_100007E30(v40, [v4 UTF8String]);

  if (qword_100B508D0 != -1)
  {
    sub_10086DE2C();
  }

  v5 = sub_100788D8C(off_100B508C8, v3);
  v39 = v5;
  v6 = *(a1 + 1216);
  v7 = *(a1 + 1220);
  v8 = *(a1 + 1224);
  v9 = *(a1 + 1228);
  v10 = *(a1 + 1240);
  if (v10)
  {
    v11 = a1 + 1240;
    do
    {
      v12 = *(v10 + 28);
      v13 = v12 >= v5;
      v14 = v12 < v5;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != a1 + 1240 && v5 >= *(v11 + 28))
    {
      v42 = &v39;
      v6 = *(sub_100773E70(a1 + 1232, &v39) + 16);
    }
  }

  v15 = *(a1 + 1264);
  if (v15)
  {
    v16 = a1 + 1264;
    do
    {
      v17 = *(v15 + 28);
      v13 = v17 >= v39;
      v18 = v17 < v39;
      if (v13)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v18);
    }

    while (v15);
    if (v16 != a1 + 1264 && v39 >= *(v16 + 28))
    {
      v42 = &v39;
      v7 = *(sub_100023DF0(a1 + 1256, &v39) + 8);
    }
  }

  v19 = *(a1 + 1288);
  if (v19)
  {
    v20 = a1 + 1288;
    do
    {
      v21 = *(v19 + 28);
      v13 = v21 >= v39;
      v22 = v21 < v39;
      if (v13)
      {
        v20 = v19;
      }

      v19 = *(v19 + 8 * v22);
    }

    while (v19);
    if (v20 != a1 + 1288 && v39 >= *(v20 + 28))
    {
      v42 = &v39;
      v8 = *(sub_100773E70(a1 + 1280, &v39) + 16);
    }
  }

  v23 = *(a1 + 1312);
  if (v23)
  {
    v24 = a1 + 1312;
    do
    {
      v25 = *(v23 + 28);
      v13 = v25 >= v39;
      v26 = v25 < v39;
      if (v13)
      {
        v24 = v23;
      }

      v23 = *(v23 + 8 * v26);
    }

    while (v23);
    if (v24 != a1 + 1312 && v39 >= *(v24 + 28))
    {
      v42 = &v39;
      v9 = *(sub_100023DF0(a1 + 1304, &v39) + 8);
    }
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_100008904(__p, v40[0], v40[1]);
  }

  else
  {
    *__p = *v40;
    v38 = v41;
  }

  v27 = sub_1000463C8(a1 + 1192, __p);
  if (a1 + 1200 == v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = *(v27 + 56);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
    if (v28)
    {
      goto LABEL_47;
    }
  }

  else if (v28)
  {
LABEL_47:
    if (v28 == 1)
    {
      if (SHIBYTE(v41) < 0)
      {
        sub_100008904(v33, v40[0], v40[1]);
      }

      else
      {
        *v33 = *v40;
        v34 = v41;
      }

      v30 = sub_10076A1F4(a1, v33, v9);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33[0]);
      }

      if (v30 > v8)
      {
        v29 = sub_10076A398(a1, v39) ^ 1;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871C8C();
    }

    v29 = 2;
    goto LABEL_67;
  }

  if (SHIBYTE(v41) < 0)
  {
    sub_100008904(__dst, v40[0], v40[1]);
  }

  else
  {
    *__dst = *v40;
    v36 = v41;
  }

  v31 = sub_10076A1F4(a1, __dst, v7);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v31 < v6 || (sub_10076A398(a1, v39) & 1) != 0)
  {
LABEL_66:
    v29 = 0;
    goto LABEL_67;
  }

  v29 = 1;
LABEL_67:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  return v29;
}

void sub_10076A808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10076A88C(uint64_t a1, const void **a2)
{
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
  {
    sub_100871CFC();
  }

  result = sub_1000463C8(a1 + 1192, a2);
  if ((a1 + 1200) != result)
  {
    return sub_100079DEC((a1 + 1192), result);
  }

  return result;
}

void sub_10076A908(uint64_t a1, double a2)
{
  if (a2 > 0.0)
  {
    v25 = &v25;
    v26 = &v25;
    v27 = 0;
    v3 = *(a1 + 1160);
    v4 = (a1 + 1168);
    if (v3 != (a1 + 1168))
    {
      do
      {
        v6 = v3 + 4;
        v7 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
        {
          if (*(v3 + 55) < 0)
          {
            v12 = v3[4];
            sub_100008904(__dst, v12, v3[5]);
          }

          else
          {
            *__dst = *v6;
            v24 = v3[6];
            v12 = v3 + 4;
          }

          v13 = sub_100769F7C(a1, __dst);
          *buf = 136446722;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *&buf[14] = v13;
          *&buf[22] = 2048;
          v31 = a2;
          _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "purgeStaleDisconnectionHistoryLeConnectionRSSIThresholdState: %{public}s last %f cutoff %f", buf, 0x20u);
          if (SHIBYTE(v24) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        if (*(v3 + 55) < 0)
        {
          sub_100008904(__p, v3[4], v3[5]);
        }

        else
        {
          *__p = *v6;
          v22 = v3[6];
        }

        v8 = sub_100769F7C(a1, __p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 < a2)
        {
          sub_100687DD0();
        }

        v9 = v3[1];
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
            v10 = v3[2];
            v11 = *v10 == v3;
            v3 = v10;
          }

          while (!v11);
        }

        v3 = v10;
      }

      while (v10 != v4);
      for (i = v26; i != &v25; i = i[1])
      {
        memset(buf, 0, sizeof(buf));
        if (*(i + 39) < 0)
        {
          sub_100008904(buf, i[2], i[3]);
        }

        else
        {
          *buf = *(i + 1);
          *&buf[16] = i[4];
        }

        v15 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          if ((buf[23] & 0x80u) == 0)
          {
            v16 = buf;
          }

          else
          {
            v16 = *buf;
          }

          *v28 = 136446210;
          v29 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "purgeStaleDisconnectionHistoryLeConnectionRSSIThresholdState: %{public}s deleted", v28, 0xCu);
        }

        if (buf[23] < 0)
        {
          sub_100008904(v19, *buf, *&buf[8]);
        }

        else
        {
          *v19 = *buf;
          v20 = *&buf[16];
        }

        sub_100769EEC(a1, v19);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }

        if (buf[23] < 0)
        {
          sub_100008904(v17, *buf, *&buf[8]);
        }

        else
        {
          *v17 = *buf;
          v18 = *&buf[16];
        }

        sub_10076A88C(a1, v17);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    sub_10043C768(&v25);
  }
}

void sub_10076AD20(uint64_t a1)
{
  v1 = *(a1 + 1176);
  if (v1 <= 0x20u)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
    {
      sub_100871D74();
    }

    return;
  }

  v18 = &v18;
  v19 = &v18;
  v20 = 0;
  v3 = *(a1 + 1160);
  if (v3 != a1 + 1168)
  {
    if (*(v3 + 55) < 0)
    {
      sub_100008904(__dst, *(v3 + 32), *(v3 + 40));
      if (*(v3 + 55) < 0)
      {
        sub_100008904(__p, *(v3 + 32), *(v3 + 40));
LABEL_9:
        v17 = sub_100769F7C(a1, __p);
        operator new();
      }
    }

    else
    {
      *__dst = *(v3 + 32);
      v16 = *(v3 + 48);
    }

    *__p = *(v3 + 32);
    v14 = *(v3 + 48);
    goto LABEL_9;
  }

  __dst[0] = sub_10076AD0C;
  sub_10077659C(&v18, &v18, 0, __dst);
  v4 = v19;
  if (v19 != &v18)
  {
    v5 = 0;
    v6 = (v1 - 32);
    do
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v16 = 0;
      if (*(v4 + 39) < 0)
      {
        sub_100008904(__dst, v4[2], v4[3]);
      }

      else
      {
        *__dst = *(v4 + 1);
        v16 = v4[4];
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_100008904(v11, __dst[0], __dst[1]);
      }

      else
      {
        *v11 = *__dst;
        v12 = v16;
      }

      sub_100769EEC(a1, v11);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }

      if (SHIBYTE(v16) < 0)
      {
        sub_100008904(v9, __dst[0], __dst[1]);
      }

      else
      {
        *v9 = *__dst;
        v10 = v16;
      }

      sub_10076A88C(a1, v9);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(v9[0]);
      }

      v7 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(v16) >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        *buf = 136446210;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "capDisconnectionHistoryLeConnectionRSSIThresholdState: delete %{public}s", buf, 0xCu);
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v6 <= ++v5)
      {
        break;
      }

      v4 = v4[1];
    }

    while (v4 != &v18);
  }

  sub_10043C768(&v18);
}

BOOL sub_10076B13C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 120);
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updatePhyRateForExtendedRange for device %{public}@", buf, 0xCu);
  }

  sub_10004DFB4(buf, v5);
  v7 = sub_10004E34C(a1 + 384, buf);
  if (a1 + 392 == v7 && os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100871DF0();
  }

  sub_1007669E4(a1, *(v7 + 48), v5, a3);
  sub_1000088CC(v9);

  return a1 + 392 == v7;
}

void sub_10076B280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10076B2AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if ((*(a1 + 56) - 65562) > 3)
  {
    *buf = a1 + 48;
    if (*(sub_10077444C(v2 + 528, v3) + 31))
    {
      *buf = v3;
      *(sub_10077444C(v2 + 528, v3) + 31) = 0;
      v9 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v10 = sub_10078C174(off_100B508C8, *(a1 + 32));
        *buf = 67109378;
        *&buf[4] = 0;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setPhy forced to LE2M (%d) for useCase : %@", buf, 0x12u);
      }

      sub_10004DFB4(buf, *(a1 + 32));
      v11 = sub_10076B5C8(v2, buf, 0);
      if (v11)
      {
        v12 = v11;
        v8 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v12;
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    *buf = a1 + 48;
    if (!*(sub_10077444C(v2 + 528, v3) + 31))
    {
      *buf = v3;
      *(sub_10077444C(v2 + 528, v3) + 31) = 1;
      v4 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v5 = sub_10078C174(off_100B508C8, *(a1 + 32));
        *buf = 67109378;
        *&buf[4] = 0;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setPhy forced to LE1M (%d) for useCase : %@", buf, 0x12u);
      }

      sub_10004DFB4(buf, *(a1 + 32));
      v6 = sub_10076B5C8(v2, buf, 0);
      if (v6)
      {
        v7 = v6;
        v8 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setPhy failed with error %d", buf, 8u);
        }
      }
    }
  }
}

uint64_t sub_10076B5C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10004DF60(a2);
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setPhy for device %{public}@", &v12, 0xCu);
  }

  v8 = sub_10004E34C(a1 + 384, a2);
  if (a1 + 392 == v8)
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871ED0(a2);
    }

    return 3;
  }

  else
  {
    v9 = *(v8 + 48);
    LOBYTE(v12) = 0;
    sub_1000216B4(&v12);
    v10 = sub_1002C3D98(v9, a3);
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871E60();
      }

      v10 = 1;
    }

    sub_10002249C(&v12);
  }

  return v10;
}

uint64_t sub_10076B770(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 864);
    if (v3 > 4)
    {
      v4 = "UNKNOWN";
    }

    else
    {
      v4 = (&off_100B0BF80)[v3];
    }

    v5 = *(a1 + 928);
    if (v5 > 3)
    {
      v6 = "UNKNOWN";
    }

    else
    {
      v6 = (&off_100B0BF60)[v5];
    }

    v14 = 136446466;
    v15 = v4;
    v16 = 2082;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "pauseConnectionManager called, LeConnectionState=%{public}s LeConnectionManagerState=%{public}s", &v14, 0x16u);
  }

  v7 = *(a1 + 928);
  if ((v7 - 1) >= 3)
  {
    if (v7)
    {
      return 0;
    }

    sub_100745C6C(a1, 1u);
    result = 0;
    v9 = *(a1 + 864);
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          return result;
        }

        v11 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "We're trying to connect - cancelling all connections, will pause when idle", &v14, 2u);
        }

        sub_10074518C(a1, 1);
        return 0;
      }

      v12 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      LOWORD(v14) = 0;
      v13 = "We're idle, lets move on";
    }

    else
    {
      if ((v9 - 2) < 2)
      {
        v10 = qword_100BCE980;
        result = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We're in the middle of connection cancellation - will pause when idle", &v14, 2u);
        return 0;
      }

      if (v9 != 4)
      {
        return result;
      }

      v12 = qword_100BCE980;
      if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      LOWORD(v14) = 0;
      v13 = "We're autoReconnect, lets pause";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 2u);
LABEL_29:
    sub_100745C6C(a1, 2u);
    return 0;
  }

  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100871BD8();
  }

  return 12;
}

uint64_t sub_10076BA6C(uint64_t a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  sub_100008760(&v12);
  v2 = sub_100007774(&v12);
  sub_100007774(v2);
  v3 = sub_100007774(&v12);
  v4 = *(a1 + 864);
  if (v4 > 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = (&off_100B0BF80)[v4];
  }

  strlen(v5);
  v6 = sub_100007774(v3);
  sub_100007774(v6);
  v7 = sub_100007774(&v12);
  v8 = *(a1 + 928);
  if (v8 > 3)
  {
    v9 = "UNKNOWN";
  }

  else
  {
    v9 = (&off_100B0BF60)[v8];
  }

  strlen(v9);
  v10 = sub_100007774(v7);
  sub_100007774(v10);
  std::stringbuf::str();
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10076BD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  sub_10076BE0C(v10, __p, a3, a4, a5, a6);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076BDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_100007EE8();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3321888768;
  v13[2] = sub_10076E4D4;
  v13[3] = &unk_100B0BAC0;
  v13[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  sub_10000CA94(v12, v13);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076BF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v12 = *(a2 + 16);
  }

  sub_10076BE0C(v10, __p, a3, a4, a5, a6);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076BFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10076BFD8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {

    v4 = *(i - 40);
  }

  a1[1] = v2;
}

uint64_t sub_10076C024(unsigned __int16 *a1, int a2, int a3, int a4)
{
  if (!a4)
  {
    return 1;
  }

  if (a1[132] == a2)
  {
    v7 = a4 == 24;
  }

  else if (a1[136] == a2)
  {
    v7 = a2 - 48 == a4;
  }

  else
  {
    v8 = a1[134];
    v7 = v8 != a2 || v8 - 48 == a4;
  }

  v9 = v7;
  if (a2 - a3 >= a4 && v9)
  {
    return 1;
  }

  v11 = qword_100BCE980;
  v12 = os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    v13[0] = 67109632;
    v13[1] = a2;
    v14 = 1024;
    v15 = a3;
    v16 = 1024;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "connectionScanParameters: Invalid combination of scan parameters interval %d window %d scancoreWindow %d  - do not use SC for connection scan.", v13, 0x14u);
    return 0;
  }

  return result;
}

__n128 sub_10076C1A8(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t sub_10076C1C0(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = sub_100063D0C();
    v4 = sub_100063D0C();
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = "";
    }

    else
    {
      v6 = " non-connectable-secondary:";
    }

    if (*(a1 + 40))
    {
      v7 = &stru_100B0F9E0;
    }

    else
    {
      v7 = sub_100063D0C();
    }

    *v10 = 138544130;
    *&v10[4] = v3;
    *&v10[12] = 2114;
    *&v10[14] = v4;
    *&v10[22] = 2080;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeConnectionManager::leAddressChangedCallback dispatched addresses connectable:%{public}@ non-connectable:%{public}@%s%{public}@", v10, 0x2Au);
    if ((v5 & 1) == 0)
    {
    }
  }

  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  v8 = *(*(a1 + 32) + 8);
  *v10 = *(v8 + 48);
  *&v10[16] = *(v8 + 64);
  return sub_100753928(off_100B508A8, v10);
}

void sub_10076C3A0(id a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  sub_100754974(v2);
}

uint64_t sub_10076C3E4(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 60))
    {
      v3 = "Incoming";
    }

    else
    {
      v3 = "Outgoing";
    }

    v4 = *(a1 + 32);
    v5 = sub_100063D0C();
    v6 = *(a1 + 56);
    v7 = *(a1 + 61);
    v9 = 136447234;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s LE Connection complete for handle %p address %{public}@ with status %d wakeEvent:%d", &v9, 0x2Cu);
  }

  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  return sub_100758B40(off_100B508A8, *(a1 + 40), *(a1 + 60), *(a1 + 32), *(a1 + 56), *(a1 + 61));
}

uint64_t sub_10076C534(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);

  return sub_10075BB38(v2, v3);
}

uint64_t sub_10076C588(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing ConnectionEventTrigger for device %lld", &v6, 0xCu);
  }

  v4 = sub_10000C7D0();
  return (*(*v4 + 3488))(v4, *(a1 + 40), 0xFFFFLL, 1, 0, 1);
}

void sub_10076C674(uint64_t a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = sub_100063D0C();
    v5 = *(a1 + 48);
    v6 = *(a1 + 58);
    *buf = 134218754;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE Link disconnected for handle %p address %{public}@ with reason %d encryptionPending %d", buf, 0x22u);
  }

  if (qword_100B508B0 != -1)
  {
    sub_10086DE54();
  }

  sub_10075D410(off_100B508A8, *(a1 + 40), *(a1 + 32), *(a1 + 56), *(a1 + 59), *(a1 + 48), *(a1 + 60), *(a1 + 61), *(a1 + 52));
}

uint64_t sub_10076C79C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);

  return sub_100762CC4(v2, v3, v4);
}

void sub_10076C7F8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076C87C;
  v6[3] = &unk_100AE15D8;
  v6[4] = a2;
  v7 = a3;
  sub_10000CA94(v5, v6);
}

uint64_t sub_10076C87C(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1007630E4(v2, v3, v4);
}

void sub_10076C8D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, __int16 a6, int a7, int a8)
{
  *(a2 + 280) = a3;
  *(a2 + 284) = a4;
  *(a2 + 288) = a5;
  *(a2 + 292) = a6;
  v15 = sub_100007EE8();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10076C9A0;
  v16[3] = &unk_100B02F90;
  v21 = a3;
  v16[4] = a2;
  v16[5] = a4;
  v20 = a6;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  sub_10000CA94(v15, v16);
}

uint64_t sub_10076C9A0(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 62);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 60);
  v7 = *(a1 + 48);
  v8 = *(a1 + 52);
  v9 = *(a1 + 56);

  return sub_1007632BC(v2, v4, v3, v5, v7, v6, v8, v9);
}

void sub_10076CA04(uint64_t a1, uint64_t a2, char a3, __int16 a4, __int16 a5, __int16 a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v17 = sub_100007EE8();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10076CAD8;
  v18[3] = &unk_100B0BA20;
  v24 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v18[4] = a2;
  v18[5] = a7;
  v19 = a8;
  v20 = a9;
  v18[6] = a10;
  sub_10000CA94(v17, v18);
}

uint64_t sub_10076CAD8(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100763550(off_100B508A8, *(a1 + 32), *(a1 + 70), *(a1 + 64), *(a1 + 66), *(a1 + 68), *(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 48));
}

uint64_t sub_10076CB48(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100763AD0(off_100B508A8, *(a1 + 32), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 40), *(a1 + 70), *(a1 + 71), BYTE1(*(a1 + 71)), BYTE2(*(a1 + 71)), HIBYTE(*(a1 + 71)), *(a1 + 68), *(a1 + 64), *(a1 + 75), HIBYTE(*(a1 + 75)));
}

void sub_10076CBC4(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v7 = sub_100007EE8();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v8 = a3[1];
  v10 = *a3;
  v9[2] = sub_10076CC60;
  v9[3] = &unk_100B0BA60;
  v9[4] = a2;
  v11 = v8;
  v12 = a4;
  sub_10000CA94(v7, v9);
}

uint64_t sub_10076CC60(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  return sub_1007641A0(off_100B508A8, v2, v5, *(a1 + 72));
}

void sub_10076CCC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_100007EE8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10076CD58;
  v8[3] = &unk_100AEB940;
  v8[4] = a2;
  v9 = a3;
  v10 = a4;
  sub_10000CA94(v7, v8);
}

void sub_10076CD58(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);

  sub_10076444C(v2, v3, v4, v5);
}

uint64_t sub_10076CDB4(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v6 = *(a1 + 44);
  v7 = *(a1 + 46);
  v8 = *(a1 + 48);
  v9 = *(a1 + 50);

  return sub_100764628(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10076CE20(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = *(a1 + 46);
  v7 = *(a1 + 48);
  v8 = *(a1 + 50);

  return sub_1007653D4(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10076CE88(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  return sub_100765E78(off_100B508A8, *(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 65), *(a1 + 44), *(a1 + 48), *(a1 + 52), *(a1 + 54), WORD1(*(a1 + 54)), WORD2(*(a1 + 54)), HIWORD(*(a1 + 54)), *(a1 + 62));
}

uint64_t sub_10076CEFC(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);

  return sub_100766AC4(v2, v3, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_10076CF5C()
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v1 = off_100B508A8;

  return sub_100766D68(v1);
}

void sub_10076CFA0(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v4[9];
    buf[0] = 67109120;
    buf[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "leCsProcedureCompleteCallback with status %d", buf, 8u);
  }

  v8 = sub_100007EE8();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10076D0E0;
  v9[3] = &unk_100B0BAA0;
  v9[4] = v5;
  memcpy(v10, v4, sizeof(v10));
  sub_10000CA94(v8, v9);
}

uint64_t sub_10076D0E0(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1, a2);
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v3 = *(v2 + 32);
  memcpy(__dst, (v2 + 40), sizeof(__dst));
  return sub_100763818(off_100B508A8, v3);
}

uint64_t sub_10076D19C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_10004DF60(a2);
    *buf = 138543874;
    v17 = v7;
    v18 = 1040;
    v19 = 5;
    v20 = 2096;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setConnectionAFHMap for device %{public}@ with map %.5P", buf, 0x1Cu);
  }

  if (a1 + 392 == sub_10004E34C(a1 + 384, a2))
  {
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
    {
      sub_100871FD0(a2);
    }

    return 3;
  }

  else
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    v14 = sub_100018960(180, sub_10076D344, v8, v9, v10, v11, v12, v13, a3);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_100871F60();
      }

      v14 = 1;
    }

    sub_10002249C(buf);
  }

  return v14;
}

void sub_10076D328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_10076D344(int a1)
{
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set AFH status=%{bluetooth:OI_STATUS}u", v3, 8u);
  }
}

uint64_t sub_10076D3E8(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_10000C798();
  v7 = (*(*v6 + 936))(v6);
  result = 0;
  switch(a2)
  {
    case 65536:
    case 65540:
    case 65555:
    case 65557:
    case 65562:
    case 65563:
    case 65564:
    case 65565:
    case 65566:
      v9 = 0;
      *(a3 + 1) = 1;
      *(a3 + 3) = 0;
      if (a2 == 65555)
      {
        v10 = 180000;
      }

      else
      {
        v10 = 10000;
      }

      v11 = a3 + 12;
      do
      {
        if ((v9 & 4) != 0)
        {
          v13 = sub_10000C798();
          if ((*(*v13 + 1056))(v13))
          {
            *(v11 + 8) = *(a1 + 262) - 48;
            *(v11 + 12) = 1;
          }

          v12 = 3;
        }

        else
        {
          v12 = 1;
        }

        *v11 = v12;
        *(v11 + 4) = v10;
        v14 = *(a1 + 1388);
        v15 = v10;
        if (v14 > 0.0)
        {
          v16 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            v18 = sub_10002DC3C(a2);
            *buf = 136315906;
            v53 = v18;
            v54 = 1024;
            v55 = v9;
            v56 = 1024;
            LODWORD(v57[0]) = v10;
            WORD2(v57[0]) = 2048;
            *(v57 + 6) = v14;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v14 = *(a1 + 1388);
            v17 = *(v11 + 4);
          }

          else
          {
            v17 = v10;
          }

          v15 = (((v14 + 100.0) / 100.0) * v17);
          *(v11 + 4) = v15;
        }

        if (*(a1 + 1384) == 1)
        {
          v15 = 48 * v15 / *(a1 + 256 + 2 * v12);
        }

        *(v11 - 8) = v15;
        *(v11 - 4) = v15;
        ++v9;
        v11 += 24;
      }

      while (v9 != 16);
      goto LABEL_40;
    case 65537:
    case 65541:
    case 65560:
      v51 = a2;
      v33 = 0;
      *(a3 + 1) = 257;
      *(a3 + 3) = 1;
      v34 = v7 & 0xFFFFFFFE;
      v35 = (a3 + 20);
      do
      {
        if ((v33 & 5) != 0)
        {
          *(v35 - 1) = 600000;
          if (v33 >= 8 && _os_feature_enabled_impl())
          {
            v36 = 0;
            *v35 = *(a1 + 268) - 48;
          }

          else
          {
            v36 = 0;
          }

          v37 = 6;
        }

        else if ((v33 & 2) != 0)
        {
          *(v35 - 1) = 0x1800004E20;
          v36 = 1;
          v37 = 4;
        }

        else
        {
          v36 = 0;
          *(v35 - 1) = 10000;
          v37 = 1;
        }

        *(v35 - 2) = v37;
        v38 = *(v35 - 1);
        if (*(a1 + 1384) == 1)
        {
          v39 = *(a1 + 256 + 2 * v37);
          v40 = 48 * v38 / v39;
          *(v35 - 3) = v40;
          if (v34 != 2)
          {
            v36 = 0;
          }

          if (v36 == 1)
          {
            v40 = (*v35 + 48) * v38 / v39;
          }
        }

        else
        {
          *(v35 - 3) = v38;
          v40 = v38;
        }

        *(v35 - 4) = v40;
        v41 = *(a1 + 1388);
        if (v41 > 0.0)
        {
          v42 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            v43 = sub_10002DC3C(v51);
            *buf = 136315906;
            v53 = v43;
            v54 = 1024;
            v55 = v33;
            v56 = 1024;
            LODWORD(v57[0]) = v38;
            WORD2(v57[0]) = 2048;
            *(v57 + 6) = v41;
            _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v41 = *(a1 + 1388);
            v38 = *(v35 - 1);
          }

          *(v35 - 1) = (((v41 + 100.0) / 100.0) * v38);
        }

        ++v33;
        v35 += 6;
      }

      while (v33 != 16);
      goto LABEL_40;
    case 65538:
    case 65542:
    case 65556:
    case 65558:
      v19 = 0;
      *(a3 + 1) = 1;
      *(a3 + 3) = 0;
      if (a2 == 65556)
      {
        v20 = 180000;
      }

      else
      {
        v20 = 60000;
      }

      v21 = a3 + 12;
      do
      {
        if ((v19 & 4) != 0)
        {
          v23 = sub_10000C798();
          if ((*(*v23 + 1056))(v23))
          {
            *(v21 + 8) = *(a1 + 262) - 48;
            *(v21 + 12) = 1;
          }

          v22 = 3;
        }

        else
        {
          v22 = 1;
        }

        *v21 = v22;
        *(v21 + 4) = v20;
        *(v21 - 8) = v20;
        *(v21 - 4) = v20;
        v24 = *(a1 + 1388);
        if (v24 > 0.0)
        {
          v25 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            v27 = sub_10002DC3C(a2);
            *buf = 136315906;
            v53 = v27;
            v54 = 1024;
            v55 = v19;
            v56 = 1024;
            LODWORD(v57[0]) = v20;
            WORD2(v57[0]) = 2048;
            *(v57 + 6) = v24;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v24 = *(a1 + 1388);
            v26 = *(v21 + 4);
          }

          else
          {
            v26 = v20;
          }

          *(v21 + 4) = (((v24 + 100.0) / 100.0) * v26);
        }

        ++v19;
        v21 += 24;
      }

      while (v19 != 16);
      goto LABEL_40;
    case 65539:
    case 65543:
    case 65561:
      *(a3 + 1) = 0;
      *(a3 + 3) = 0;
      *(a3 + 4) = xmmword_1008C5320;
      v28 = *(a1 + 1388);
      if (v28 > 0.0)
      {
        v29 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v53 = sub_10002DC3C(a2);
          v54 = 1024;
          v55 = 600000;
          v56 = 2048;
          v57[0] = v28;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Override %s Coex None connection  scan timeout %d extended by %f percent", buf, 0x1Cu);
          v28 = *(a1 + 1388);
          v30 = *(a3 + 16);
        }

        else
        {
          v30 = 600000.0;
        }

        *(a3 + 16) = (((v28 + 100.0) / 100.0) * v30);
      }

      goto LABEL_40;
    case 65544:
    case 65545:
    case 65546:
    case 65547:
    case 65548:
    case 65549:
    case 65550:
    case 65551:
    case 65552:
    case 65553:
    case 65554:
    case 65559:
      return result;
    default:
      if (a2 != 655360)
      {
        return result;
      }

      v44 = 0;
      *(a3 + 1) = 257;
      *(a3 + 3) = 0;
      v45 = (a3 + 16);
      do
      {
        if ((v44 & 5) != 0)
        {
          v46 = 6;
        }

        else
        {
          v46 = 1;
        }

        *(v45 - 1) = v46;
        *v45 = 10000;
        v47 = 10000;
        if (*(a1 + 1384) == 1)
        {
          v47 = 0x75300u / *(a1 + 256 + 2 * v46);
        }

        *(v45 - 3) = v47;
        *(v45 - 2) = v47;
        v48 = *(a1 + 1388);
        if (v48 > 0.0)
        {
          v49 = qword_100BCE980;
          if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v53 = "AccessDigitalHomeKey";
            v54 = 1024;
            v55 = v44;
            v56 = 1024;
            LODWORD(v57[0]) = 10000;
            WORD2(v57[0]) = 2048;
            *(v57 + 6) = v48;
            _os_log_debug_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEBUG, "Override %s Coex 0x%x connection  scan timeout %d extended by %f percent", buf, 0x22u);
            v48 = *(a1 + 1388);
            v50 = *v45;
          }

          else
          {
            v50 = 10000.0;
          }

          *v45 = (((v48 + 100.0) / 100.0) * v50);
        }

        ++v44;
        v45 += 6;
      }

      while (v44 != 16);
LABEL_40:
      if (*(a1 + 1520) == 1)
      {
        for (i = 16; i != 400; i += 24)
        {
          if (*(a3 + i))
          {
            *(a3 + i) = *(a1 + 1524);
          }
        }
      }

      if (*(a3 + 2) & 1) != 0 || (*(a3 + 1))
      {
        v32 = 1;
      }

      else
      {
        v32 = *(a3 + 3);
      }

      *a3 = v32 & 1;
      return 1;
  }
}

void sub_10076DBF0(uint64_t a1, void *a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_10086E034();
  }

  v12 = sub_100788D8C(off_100B508C8, v11);
  v57 = 0;
  v13 = 4;
  memset(v56, 0, sizeof(v56));
  do
  {
    v14 = (v56 + v13);
    *v14 = 0;
    v14[1] = 0;
    *(v14 + 13) = 0;
    v13 += 24;
  }

  while (v13 != 388);
  if (sub_10076D3E8(a1, v12, v56))
  {
    if (a1 + 1368 == sub_1000463C8(a1 + 1360, a3))
    {
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
      {
        sub_1008720E0();
      }
    }

    else
    {
      *buf = a3;
      v15 = sub_1007748BC(a1 + 1360, a3);
      v53 = v15[15];
      v54 = v15[14];
      v16 = v15[16];
      v55 = v15[17];
      v17 = +[NSMutableDictionary dictionary];
      [v17 setObject:@"Connection" forKeyedSubscript:@"ScanType"];
      v18 = [NSString stringWithUTF8String:sub_10002DC3C(v12)];
      v52 = a6;
      v51 = a5;
      [v17 setObject:v18 forKeyedSubscript:@"CBUseCase"];

      if (qword_100B54208 != -1)
      {
        sub_10086E578();
      }

      v50 = sub_1007F1E20(qword_100B54200, v11);
      v19 = [v50 allObjects];
      v20 = [NSArray arrayWithArray:v19];

      v21 = [v20 sortedArrayUsingSelector:"compare:"];

      v22 = [v21 componentsJoinedByString:{@", "}];
      [v17 setObject:v22 forKeyedSubscript:@"BundleID"];

      v23 = [NSNumber numberWithBool:*(a1 + 1384)];
      [v17 setObject:v23 forKeyedSubscript:@"IsFWBased"];

      v24 = [NSString stringWithUTF8String:sub_10076E4B0(a1, v16)];
      [v17 setObject:v24 forKeyedSubscript:@"InitialConnScanParamsType"];

      v25 = [NSNumber numberWithBool:BYTE3(v56[0])];
      [v17 setObject:v25 forKeyedSubscript:@"IsWiFiCoexCriticalProtected"];

      v26 = [NSNumber numberWithBool:BYTE2(v56[0])];
      [v17 setObject:v26 forKeyedSubscript:@"IsBTAudioProtected"];

      v27 = [NSNumber numberWithBool:BYTE3(v56[0])];
      [v17 setObject:v27 forKeyedSubscript:@"IsWiFi2_4GHzProtected"];

      if ((v12 & 0xFFFF0000) == 0x10000)
      {
        v28 = 63;
      }

      else
      {
        v28 = 0;
      }

      v29 = [NSNumber numberWithUnsignedLongLong:v28];
      [v17 setObject:v29 forKeyedSubscript:@"WiFiCriticalDefinition"];

      v30 = [NSNumber numberWithUnsignedInt:v55];
      [v17 setObject:v30 forKeyedSubscript:@"ScanDurationReqMsec"];

      v31 = [NSNumber numberWithUnsignedInt:v54];
      [v17 setObject:v31 forKeyedSubscript:@"ActualScanTimeReqMsec"];

      v32 = [NSNumber numberWithUnsignedInt:v53];
      [v17 setObject:v32 forKeyedSubscript:@"ActualScanTimeMCReqMsec"];

      v33 = [NSNumber numberWithUnsignedLongLong:v52];
      [v17 setObject:v33 forKeyedSubscript:@"ScanDurationMsec"];

      v34 = [NSNumber numberWithUnsignedLongLong:a4];
      [v17 setObject:v34 forKeyedSubscript:@"ActualScanTimeMsec"];

      v35 = [NSNumber numberWithUnsignedLongLong:v51];
      [v17 setObject:v35 forKeyedSubscript:@"ActualScanTimeMCMsec"];

      if (v55)
      {
        v36 = 100 * v52 / v55;
      }

      else
      {
        v36 = 0;
      }

      if (v36 <= 0x63)
      {
        v37 = v36;
      }

      else
      {
        v37 = 100;
      }

      if (v54)
      {
        v38 = 100 * a4 / v54;
      }

      else
      {
        v38 = 0;
      }

      if (v38 <= 0x63)
      {
        v39 = v38;
      }

      else
      {
        v39 = 100;
      }

      if (v53)
      {
        v40 = 100 * v51 / v53;
      }

      else
      {
        v40 = 0;
      }

      if (v40 <= 0x63)
      {
        v41 = v40;
      }

      else
      {
        v41 = 100;
      }

      v42 = [NSNumber numberWithUnsignedInt:v37];
      [v17 setObject:v42 forKeyedSubscript:@"ScanDurationMsecPercentage"];

      v43 = [NSNumber numberWithUnsignedInt:v39];
      [v17 setObject:v43 forKeyedSubscript:@"ActualScanTimeMsecPercentage"];

      v44 = [NSNumber numberWithUnsignedInt:v41];
      [v17 setObject:v44 forKeyedSubscript:@"ActualScanTimeMCMsecPercentage"];

      v45 = [NSNumber numberWithBool:v36 > 0x63];
      [v17 setObject:v45 forKeyedSubscript:@"HasScanDurationReqMet"];

      v46 = [NSNumber numberWithBool:v38 > 0x63];
      [v17 setObject:v46 forKeyedSubscript:@"HasActualScanTimeReqMet"];

      v47 = [NSNumber numberWithBool:v40 > 0x63];
      [v17 setObject:v47 forKeyedSubscript:@"HasActualScanTimeMCReqMet"];

      v48 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Sending CloseLoopScanningStats :%{public}@", buf, 0xCu);
      }

      v49 = sub_10000F034();
      (*(*v49 + 408))(v49, v17);
    }
  }

  else if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_ERROR))
  {
    sub_100872060(v12);
  }
}

const char *sub_10076E4B0(uint64_t a1, unsigned int a2)
{
  if (a2 > 8)
  {
    return "Unknown";
  }

  else
  {
    return (&off_100B0BF18)[a2];
  }
}

void sub_10076E4D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    v8 = *(a1 + 88);
    *buf = 136316162;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    *&buf[22] = 2048;
    *&buf[24] = v6;
    *&buf[32] = 2048;
    *&buf[34] = v7;
    v27 = 1024;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "handleConnScanRxStoppedCB: %s totalRx %llu btMCRx %llu totalTime %llu reason %d", buf, 0x30u);
  }

  if (*(a1 + 88) == 1)
  {
    v9 = *(v2 + 336);
    if (v9 != (v2 + 344))
    {
      v10 = (a1 + 40);
      while (1)
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v9 + 25, buf);
        sub_100007E30(__p, buf);
        v11 = v25;
        if ((v25 & 0x80u) == 0)
        {
          v12 = v25;
        }

        else
        {
          v12 = __p[1];
        }

        v13 = *(a1 + 63);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a1 + 48);
        }

        if (v12 != v13)
        {
          break;
        }

        if ((v25 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if (v14 >= 0)
        {
          v16 = (a1 + 40);
        }

        else
        {
          v16 = *v10;
        }

        v17 = memcmp(v15, v16, v12) == 0;
        if (v11 < 0)
        {
          goto LABEL_23;
        }

LABEL_24:
        if (v17)
        {
          v21 = sub_10004DF60(v9 + 25);
          if (*(a1 + 63) < 0)
          {
            sub_100008904(v22, *(a1 + 40), *(a1 + 48));
          }

          else
          {
            *v22 = *v10;
            v23 = *(a1 + 56);
          }

          sub_10076DBF0(v2, v21, v22, *(a1 + 64), *(a1 + 72), *(a1 + 80));
          if (SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }

          sub_10004DFB4(buf, v21);
          sub_10074CD90(v2, buf, 10);
          sub_10004DFB4(buf, v21);
          sub_100756884(v2, buf, 0, 344, 0);

          return;
        }

        v18 = *(v9 + 1);
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
            v19 = *(v9 + 2);
            v20 = *v19 == v9;
            v9 = v19;
          }

          while (!v20);
        }

        v9 = v19;
        if (v19 == (v2 + 344))
        {
          return;
        }
      }

      v17 = 0;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(__p[0]);
      goto LABEL_24;
    }
  }
}

void sub_10076E7B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076E884;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10076E894(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_10000C7D0();
  if (!(*(*v6 + 3280))(v6))
  {
    goto LABEL_26;
  }

  sub_10004DFB4(uu2, v5);
  if (a1 + 1456 == sub_10004E34C(a1 + 1448, uu2))
  {
    goto LABEL_26;
  }

  v57 = 0;
  __p = 0u;
  memset(uu2, 0, sizeof(uu2));
  sub_10004DFB4(__str, v5);
  *buf = __str;
  v7 = sub_100776F00(a1 + 1448, __str);
  *uu2 = *(v7 + 48);
  *&uu2[8] = *(v7 + 56);
  *&uu2[24] = *(v7 + 72);
  *&uu2[40] = *(v7 + 88);
  sub_1003A5D88(&__p, (v7 + 96));
  *__str = 0;
  sub_100016250(__str);
  v8 = *__str;
  v9 = *&__str[4];
  if (a3)
  {
    v10 = 1;
    v11 = 1;
  }

  else if (*&uu2[24] == 0)
  {
    v12 = *&__str[4] - *&uu2[16] + 1000 * (*__str - *&uu2[8]);
    v13 = *(a1 + 1496);
    *__str = v12 / 0x3E8;
    *&__str[4] = v12 % 0x3E8;
    *&buf[4] = 0;
    *buf = v13;
    v11 = 0;
    v10 = sub_100306C80(__str, buf) > 0;
  }

  else
  {
    v14 = *&__str[4] - *&uu2[32] + 1000 * (*__str - *&uu2[24]);
    v15 = *(a1 + 1500);
    *__str = v14 / 0x3E8;
    *&__str[4] = v14 % 0x3E8;
    *&buf[4] = 0;
    *buf = v15;
    v10 = sub_100306C80(__str, buf) > 0;
    v11 = v10;
  }

  v16 = qword_100BCE980;
  if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_17;
  }

  v59 = 0u;
  v60 = 0u;
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x3FuLL, "%0llu.%0llu", v8, v9);
  sub_100007E30(v42, __str);
  v17 = v43;
  v18 = v42[0];
  sub_10076FFA4(uu2);
  v19 = v42;
  if (v17 < 0)
  {
    v19 = v18;
  }

  if (__str[23] >= 0)
  {
    v20 = __str;
  }

  else
  {
    v20 = *__str;
  }

  *buf = 138413570;
  *&buf[4] = v5;
  v45 = 1024;
  v46 = a3;
  v47 = 1024;
  v48 = v10;
  v49 = 1024;
  v50 = v11;
  v51 = 2080;
  v52 = v19;
  v53 = 2080;
  v54 = v20;
  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateDenyListDevice incoming Device %@ forceUnblock=%d stopMonitoring=%d stopBlocking=%d TimeNow:%ssec entry:%s", buf, 0x32u);
  if (__str[23] < 0)
  {
    operator delete(*__str);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_17:
    if (v11)
    {
LABEL_18:
      v21 = sub_10000C7D0();
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v22 = sub_100046458(off_100B508C8, v5, 0);
      (*(*v21 + 4320))(v21, v22);
    }
  }

  if (v10)
  {
    sub_10004DFB4(__str, v5);
    sub_10077708C((a1 + 1448), __str);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

LABEL_26:
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_65;
  }

  sub_10004DFB4(uu2, v5);
  if (a1 + 1480 == sub_10004E34C(a1 + 1472, uu2))
  {
    goto LABEL_65;
  }

  v57 = 0;
  __p = 0u;
  memset(uu2, 0, sizeof(uu2));
  sub_10004DFB4(__str, v5);
  *buf = __str;
  v23 = sub_100776F00(a1 + 1472, __str);
  *uu2 = *(v23 + 48);
  *&uu2[8] = *(v23 + 56);
  *&uu2[24] = *(v23 + 72);
  *&uu2[40] = *(v23 + 88);
  sub_1003A5D88(&__p, (v23 + 96));
  *__str = 0;
  sub_100016250(__str);
  v24 = *__str;
  v25 = *&__str[4];
  if (a3)
  {
    v26 = 1;
    v27 = 1;
  }

  else if (*&uu2[24] == 0)
  {
    v28 = *&__str[4] - *&uu2[16] + 1000 * (*__str - *&uu2[8]);
    v29 = *(a1 + 1496);
    *&__str[6] = 0;
    *__str = v28 / 0x3E8;
    *&__str[4] = v28 % 0x3E8;
    *&buf[4] = 0;
    *buf = v29;
    v27 = 0;
    v26 = sub_100306C80(__str, buf) > 0;
  }

  else
  {
    v30 = *&__str[4] - *&uu2[32] + 1000 * (*__str - *&uu2[24]);
    v31 = *(a1 + 1500);
    *&__str[6] = 0;
    *__str = v30 / 0x3E8;
    *&__str[4] = v30 % 0x3E8;
    *&buf[4] = 0;
    *buf = v31;
    v26 = sub_100306C80(__str, buf) > 0;
    v27 = v26;
  }

  v32 = qword_100BCE980;
  if (!os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_42;
  }

  v59 = 0u;
  v60 = 0u;
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x3FuLL, "%0llu.%0llu", v24, v25);
  sub_100007E30(v42, __str);
  v33 = v43;
  v34 = v42[0];
  sub_10076FFA4(uu2);
  v35 = v42;
  if (v33 < 0)
  {
    v35 = v34;
  }

  if (__str[23] >= 0)
  {
    v36 = __str;
  }

  else
  {
    v36 = *__str;
  }

  *buf = 138413570;
  *&buf[4] = v5;
  v45 = 1024;
  v46 = a3;
  v47 = 1024;
  v48 = v26;
  v49 = 1024;
  v50 = v27;
  v51 = 2080;
  v52 = v35;
  v53 = 2080;
  v54 = v36;
  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateDenyListDevice outgoing Device %@ forceUnblock=%d stopMonitoring=%d stopBlocking=%d TimeNow:%ssec entry:%s", buf, 0x32u);
  if (__str[23] < 0)
  {
    operator delete(*__str);
  }

  if ((v43 & 0x80000000) == 0)
  {
LABEL_42:
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  operator delete(v42[0]);
  if (v26)
  {
LABEL_43:
    sub_10004DFB4(__str, v5);
    sub_10077708C((a1 + 1472), __str);
  }

LABEL_44:
  if (v27 && [*(a1 + 760) containsObject:v5])
  {
    [*(a1 + 760) removeObject:v5];
    if (*(a1 + 928))
    {
      v37 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 138543362;
        *&__str[4] = v5;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: Device %{public}@ setDeviceIntoConnectionPendingList ", __str, 0xCu);
      }

      sub_10004DFB4(__str, v5);
      sub_100749E70(a1, __str);
    }

    else
    {
      v38 = sub_10074518C(a1, 0);
      v39 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 138543618;
        *&__str[4] = v5;
        *&__str[12] = 1024;
        *&__str[14] = v38;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: Device %{public}@ cancelAllPendingConnections returned %d ", __str, 0x12u);
      }

      if (v38)
      {
        sub_10074B0D4(a1, v5);
        v40 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 138543362;
          *&__str[4] = v5;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: addToConnectingList %{public}@", __str, 0xCu);
        }

        sub_100753CFC(a1);
      }

      else
      {
        sub_10004DFB4(__str, v5);
        sub_100749E70(a1, __str);
        v41 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          *__str = 138543362;
          *&__str[4] = v5;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: setDeviceIntoConnectionPendingList %{public}@", __str, 0xCu);
        }
      }
    }
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

LABEL_65:
}

void sub_10076F130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10076FC28(&a26);

  _Unwind_Resume(a1);
}

void sub_10076F1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076F2A8;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10076F2BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076F388;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10076F398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076F464;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10076F478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10076F544;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_10076F554(uint64_t a1)
{
  v2 = *(a1 + 40);
  obj[0] = 0;
  sub_100016250(obj);
  v3 = SLODWORD(obj[0]);
  v4 = SWORD2(obj[0]);
  sub_10004DFB4(obj, *(a1 + 32));
  if (v2 + 1456 == sub_10004E34C(v2 + 1448, obj) || (*(a1 + 52) & 1) != 0)
  {
    v45 = 0;
    *v44 = 0u;
    memset(obj, 0, sizeof(obj));
    *__str = 0;
    sub_100016250(__str);
    obj[1] = *__str;
    obj[2] = *&__str[4];
    if (*(a1 + 52))
    {
      obj[3] = *__str;
      obj[4] = *&__str[4];
      LODWORD(obj[5]) = *(v2 + 1504);
      if (LODWORD(obj[5]))
      {
        v5 = 0;
        do
        {
          sub_10036F480(v44, (a1 + 48));
          ++v5;
        }

        while (v5 < LODWORD(obj[5]));
      }
    }

    else
    {
      memset(&obj[3], 0, 20);
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v6 = sub_100776F00(v2 + 1448, __str);
    objc_storeStrong((v6 + 48), obj[0]);
    if ((v6 + 48) == obj)
    {
      *(v6 + 88) = obj[5];
    }

    else
    {
      *(v6 + 56) = *&obj[1];
      *(v6 + 72) = *&obj[3];
      *(v6 + 88) = obj[5];
      sub_1003A5C5C((v6 + 96), v44[0], v44[1], (v44[1] - v44[0]) >> 2);
    }

    v17 = *(a1 + 52);
    v18 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v19 = " ";
      v20 = *(a1 + 32);
      if (v17)
      {
        v19 = "and blocking (forced)";
      }

      *__str = 138412546;
      *&__str[4] = v20;
      *&__str[12] = 2080;
      *&__str[14] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection Device %@ disconnected now, started monitoring %s", __str, 0x16u);
    }

    if (v44[0])
    {
      v44[1] = v44[0];
      operator delete(v44[0]);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v45 = 0;
  *v44 = 0u;
  memset(obj, 0, sizeof(obj));
  sub_10004DFB4(__str, *(a1 + 32));
  *__p = __str;
  v7 = sub_100776F00(v2 + 1448, __str);
  obj[0] = *(v7 + 48);
  *&obj[1] = *(v7 + 56);
  *&obj[3] = *(v7 + 72);
  LODWORD(obj[5]) = *(v7 + 88);
  sub_1003A5D88(v44, (v7 + 96));
  v8 = v4 - obj[2] + 1000 * (v3 - obj[1]);
  v9 = v8 / 0x3E8;
  v10 = *(v2 + 1496);
  *&__str[6] = 0;
  *__str = v8 / 0x3E8;
  v11 = v8 % 0x3E8;
  *&__str[4] = v8 % 0x3E8;
  *__p = v10;
  v12 = sub_100306C80(__str, __p);
  if (v12 < 0)
  {
    ++LODWORD(obj[5]);
    obj[1] = v3;
    obj[2] = v4;
    sub_10036F480(v44, (a1 + 48));
    v23 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v47 = 0u;
      v48 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(buf, __str);
      v25 = v35 >= 0 ? buf : *buf;
      v26 = *(a1 + 48);
      *__p = 138413058;
      *&__p[4] = v24;
      v37 = 2080;
      v38 = v25;
      v39 = 1024;
      v40 = obj[5];
      v41 = 1024;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection Device %@ disconnected %s seconds ago, increasing counter to %d, disconnectResult=%d", __p, 0x22u);
      if (v35 < 0)
      {
        operator delete(*buf);
      }
    }

    v27 = obj[5];
    v28 = *(v2 + 1504);
    v14 = LODWORD(obj[5]) >= v28;
    if (LODWORD(obj[5]) >= v28)
    {
      obj[3] = v3;
      obj[4] = v4;
      v29 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 32);
        *__str = 138412546;
        *&__str[4] = v30;
        *&__str[12] = 1024;
        *&__str[14] = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection Device %@ disconnected, counter:%d started blocking", __str, 0x12u);
      }
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v31 = sub_100776F00(v2 + 1448, __str);
    objc_storeStrong((v31 + 48), obj[0]);
    if ((v31 + 48) == obj)
    {
      *(v31 + 88) = obj[5];
    }

    else
    {
      *(v31 + 56) = *&obj[1];
      *(v31 + 72) = *&obj[3];
      *(v31 + 88) = obj[5];
      sub_1003A5C5C((v31 + 96), v44[0], v44[1], (v44[1] - v44[0]) >> 2);
    }
  }

  else
  {
    sub_10004DFB4(__str, *(a1 + 32));
    sub_10077708C((v2 + 1448), __str);
    v13 = qword_100BCE980;
    v14 = 0;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v47 = 0u;
      v48 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(__p, __str);
      if (v39 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      *buf = 138412546;
      *&buf[4] = v15;
      v33 = 2080;
      v34 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateIncomingDisconnection  Device %@ disconnected %s seconds ago, stop monitoring", buf, 0x16u);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(*__p);
      }

      v14 = 0;
    }
  }

  if (v44[0])
  {
    v44[1] = v44[0];
    operator delete(v44[0]);
  }

  if (v12 < 0)
  {
    if (!v14)
    {
LABEL_30:
      sub_10076FCD0(v2);
      return;
    }

LABEL_27:
    v21 = sub_10000C7D0();
    if (qword_100B508D0 != -1)
    {
      sub_10086DE2C();
    }

    v22 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
    (*(*v21 + 4312))(v21, v22);
    goto LABEL_30;
  }
}

void sub_10076FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10076FC28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10076FC28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10076FC64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  sub_1003A5D88((a1 + 48), (a2 + 48));
  return a1;
}

void sub_10076FCD0(uint64_t a1)
{
  v2 = sub_10000C7D0();
  if ((*(*v2 + 3280))(v2))
  {
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 1464);
      LODWORD(v16) = 134217984;
      *(&v16 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: LeConnectionManager::evaluateDenyListDevices incoming devices:%lu", &v16, 0xCu);
    }

    if (*(a1 + 1464))
    {
      v16 = 0uLL;
      v17 = 0;
      sub_1007770E8(&v16, a1 + 1448);
      v5 = v16;
      if (v16 != (&v16 + 8))
      {
        do
        {
          v6 = sub_10004DF60(v5 + 32);
          sub_10076E894(a1, v6, 0);

          v7 = *(v5 + 1);
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
              v8 = *(v5 + 2);
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          v5 = v8;
        }

        while (v8 != (&v16 + 8));
      }

      sub_1007702C0(a1);
      sub_100773BDC(&v16, *(&v16 + 1));
    }
  }

  if (_os_feature_enabled_impl())
  {
    v10 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 1488);
      LODWORD(v16) = 134217984;
      *(&v16 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: LeConnectionManager::evaluateDenyListDevices outgoing devices:%lu", &v16, 0xCu);
    }

    if (*(a1 + 1488))
    {
      v16 = 0uLL;
      v17 = 0;
      sub_1007770E8(&v16, a1 + 1472);
      v12 = v16;
      if (v16 != (&v16 + 8))
      {
        do
        {
          v13 = sub_10004DF60(v12 + 32);
          sub_10076E894(a1, v13, 0);

          v14 = *(v12 + 1);
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
              v15 = *(v12 + 2);
              v9 = *v15 == v12;
              v12 = v15;
            }

            while (!v9);
          }

          v12 = v15;
        }

        while (v15 != (&v16 + 8));
      }

      sub_1007702C0(a1);
      sub_100773BDC(&v16, *(&v16 + 1));
    }
  }
}

uint64_t sub_10076FFA4(void *a1)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  sub_100007AD0(&v17);
  v2 = std::ostream::operator<<();
  v3 = sub_100007774(v2);
  sub_1004F5248(a1 + 1, &v15);
  v4 = sub_100007774(v3);
  v5 = sub_100007774(v4);
  sub_1004F5248(a1 + 3, &__p);
  v6 = sub_100007774(v5);
  sub_100007774(v6);
  v7 = std::ostream::operator<<();
  sub_100007774(v7);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  v8 = a1[6];
  for (i = a1[7]; v8 != i; v8 += 4)
  {
    v10 = std::ostream::operator<<();
    sub_100007774(v10);
  }

  std::stringbuf::str();
  *&v18 = v11;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100770270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a21);
  _Unwind_Resume(a1);
}

void sub_1007702C0(uint64_t a1)
{
  if (*(a1 + 1512) || sub_10077048C(a1) && (sub_100770AEC(a1) & 1) != 0)
  {

    sub_100745F94(a1);
  }

  else
  {
    v2 = (1000 * *(a1 + 1500)) / 0xAuLL;
    v3 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: armPeriodicLeConnectionDenyListTimer %llu ms Armed!", buf, 0xCu);
    }

    v4 = sub_100007EE8();
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v4 + 8));
    *(a1 + 1512) = v5;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100770B54;
    handler[3] = &unk_100ADF8F8;
    handler[4] = a1;
    dispatch_source_set_event_handler(v5, handler);
    v6 = *(a1 + 1512);
    v7 = dispatch_time(0x8000000000000000, 1000000 * v2);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(*(a1 + 1512));
  }
}

uint64_t sub_10077048C(uint64_t a1)
{
  v1 = *(a1 + 1448);
  if (v1 == (a1 + 1456))
  {
    return 1;
  }

  while (!v1[9] && !v1[10])
  {
    v2 = v1[1];
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      do
      {
        v3 = v1[2];
        v4 = *v3 == v1;
        v1 = v3;
      }

      while (!v4);
    }

    v1 = v3;
    if (v3 == (a1 + 1456))
    {
      return 1;
    }
  }

  return 0;
}

void sub_1007704F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  obj[0] = 0;
  sub_100016250(obj);
  v3 = SLODWORD(obj[0]);
  v4 = SWORD2(obj[0]);
  sub_10004DFB4(obj, *(a1 + 32));
  if (v2 + 1480 == sub_10004E34C(v2 + 1472, obj) || (*(a1 + 52) & 1) != 0)
  {
    v37 = 0;
    *v36 = 0u;
    memset(obj, 0, sizeof(obj));
    *__str = 0;
    sub_100016250(__str);
    obj[1] = *__str;
    obj[2] = *&__str[4];
    if (*(a1 + 52))
    {
      obj[3] = *__str;
      obj[4] = *&__str[4];
      LODWORD(obj[5]) = *(v2 + 1504);
      if (LODWORD(obj[5]))
      {
        v5 = 0;
        do
        {
          sub_10036F480(v36, (a1 + 48));
          ++v5;
        }

        while (v5 < LODWORD(obj[5]));
      }
    }

    else
    {
      memset(&obj[3], 0, 20);
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v6 = sub_100776F00(v2 + 1472, __str);
    objc_storeStrong((v6 + 48), obj[0]);
    if ((v6 + 48) == obj)
    {
      *(v6 + 88) = obj[5];
    }

    else
    {
      *(v6 + 56) = *&obj[1];
      *(v6 + 72) = *&obj[3];
      *(v6 + 88) = obj[5];
      sub_1003A5C5C((v6 + 96), v36[0], v36[1], (v36[1] - v36[0]) >> 2);
    }

    v16 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = " ";
      if (*(a1 + 52))
      {
        v18 = "and blocking (forced)";
      }

      *__str = 138412546;
      *&__str[4] = v17;
      *&__str[12] = 2080;
      *&__str[14] = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateOutgoingDisconnection Device %@ disconnected now, started monitoring %s", __str, 0x16u);
    }

    if (v36[0])
    {
      v36[1] = v36[0];
      operator delete(v36[0]);
    }

LABEL_26:
    sub_10076FCD0(v2);
    return;
  }

  v37 = 0;
  *v36 = 0u;
  memset(obj, 0, sizeof(obj));
  sub_10004DFB4(__str, *(a1 + 32));
  *__p = __str;
  v7 = sub_100776F00(v2 + 1472, __str);
  obj[0] = *(v7 + 48);
  *&obj[1] = *(v7 + 56);
  *&obj[3] = *(v7 + 72);
  LODWORD(obj[5]) = *(v7 + 88);
  sub_1003A5D88(v36, (v7 + 96));
  v8 = v4 - obj[2] + 1000 * (v3 - obj[1]);
  v9 = v8 / 0x3E8;
  v10 = *(v2 + 1496);
  *__str = v8 / 0x3E8;
  v11 = v8 % 0x3E8;
  *&__str[4] = v8 % 0x3E8;
  *__p = v10;
  v12 = sub_100306C80(__str, __p);
  if (v12 < 0)
  {
    ++LODWORD(obj[5]);
    obj[1] = v3;
    obj[2] = v4;
    sub_10036F480(v36, (a1 + 48));
    v19 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v39 = 0u;
      v40 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(buf, __str);
      v21 = v27 >= 0 ? buf : *buf;
      v22 = *(a1 + 48);
      *__p = 138413058;
      *&__p[4] = v20;
      v29 = 2080;
      v30 = v21;
      v31 = 1024;
      v32 = obj[5];
      v33 = 1024;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateOutgoingDisconnection Device %@ disconnected %s seconds ago, increasing counter to %d, disconnectResult=%d", __p, 0x22u);
      if (v27 < 0)
      {
        operator delete(*buf);
      }
    }

    if (LODWORD(obj[5]) >= *(v2 + 1504))
    {
      obj[3] = v3;
      obj[4] = v4;
    }

    sub_10004DFB4(__str, *(a1 + 32));
    *__p = __str;
    v23 = sub_100776F00(v2 + 1472, __str);
    objc_storeStrong((v23 + 48), obj[0]);
    if ((v23 + 48) == obj)
    {
      *(v23 + 88) = obj[5];
    }

    else
    {
      *(v23 + 56) = *&obj[1];
      *(v23 + 72) = *&obj[3];
      *(v23 + 88) = obj[5];
      sub_1003A5C5C((v23 + 96), v36[0], v36[1], (v36[1] - v36[0]) >> 2);
    }
  }

  else
  {
    sub_10004DFB4(__str, *(a1 + 32));
    sub_10077708C((v2 + 1472), __str);
    v13 = qword_100BCE980;
    if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v39 = 0u;
      v40 = 0u;
      memset(__str, 0, sizeof(__str));
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v9, v11);
      sub_100007E30(__p, __str);
      v15 = v31 >= 0 ? __p : *__p;
      *buf = 138412546;
      *&buf[4] = v14;
      v25 = 2080;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: evaluateOutgoingDisconnection  Device %@ disconnected %s seconds ago, stop monitoring", buf, 0x16u);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  if (v12 < 0)
  {
    goto LABEL_26;
  }
}

void sub_100770A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10076FC28(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100770AEC(uint64_t a1)
{
  v1 = *(a1 + 1472);
  if (v1 == (a1 + 1480))
  {
    return 1;
  }

  while (!v1[9] && !v1[10])
  {
    v2 = v1[1];
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      do
      {
        v3 = v1[2];
        v4 = *v3 == v1;
        v1 = v3;
      }

      while (!v4);
    }

    v1 = v3;
    if (v3 == (a1 + 1480))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100770B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeConnectionDenyList: fLeConnectionDenyListMaintainTimer Timer expired!", v4, 2u);
  }

  sub_100745F94(v1);
  return sub_10076FCD0(v1);
}

void sub_100770BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100BC7B18 != -1)
  {
    sub_100872158();
  }

  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100770E38;
  v6[3] = &unk_100B0AC00;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_100770CB4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "FastLEConnectionForceFakeLocalControllerInfo");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100BC7B10);
  v3 = byte_100BC7B10;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100BC7B10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: FastLEConnection:FastLEConnectionForceFakeLocalControllerInfo fakeControllerInfo:%d", buf, 8u);
  }
}

void sub_100770DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100770E38(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 184) == 1 && (v3 = *(v2 + 1584)) != 0 && [v3 length] && *(v2 + 1592))
  {
    v4 = *(v2 + 1584);
    if (byte_100BC7B10 == 1)
    {
      v5 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: FastLEConnection:LeConnectionManager::readLocalControllerCachedInfo randomizing controller info", v9, 2u);
      }

      v6 = [*(v2 + 1584) length];
      v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
      memcpy(v7, [*(v2 + 1584) bytes], v6);
      arc4random_buf(&v7[v6 - 4], 4uLL);
      v8 = [NSData dataWithBytes:v7 length:v6];

      free(v7);
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100770FCC(uint64_t a1)
{
  buf[0].__locale_ = 0;
  sub_100016250(buf);
  v1 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ LE Connection Manager -------------------", buf, 2u);
    v1 = qword_100BCE980;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_100063D0C();
    LODWORD(buf[0].__locale_) = 138543362;
    *(&buf[0].__locale_ + 4) = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Local address %{public}@", buf, 0xCu);
  }

  buf[0].__locale_ = 0;
  sub_100016250(buf);
  locale_low = SLODWORD(buf[0].__locale_);
  v4 = SWORD2(buf[0].__locale_);
  v5 = *(a1 + 872);
  v6 = *(a1 + 880);
  v7 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 1000 * (locale_low - v5) - v6 + v4;
    v9 = *(a1 + 928);
    if (v9 > 3)
    {
      v10 = "UNKNOWN";
    }

    else
    {
      v10 = (&off_100B0BF60)[v9];
    }

    v11 = *(a1 + 864);
    if (v11 > 4)
    {
      v12 = "UNKNOWN";
    }

    else
    {
      v12 = (&off_100B0BF80)[v11];
    }

    memset(buf, 0, sizeof(buf));
    snprintf(buf, 0x3FuLL, "%0llu.%0llu", v8 / 0x3E8, v8 % 0x3E8);
    sub_100007E30(out, buf);
    if (out[23] >= 0)
    {
      v13 = out;
    }

    else
    {
      v13 = *out;
    }

    v14 = *(a1 + 888);
    if (*(a1 + 1065))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    LODWORD(buf[0].__locale_) = 136447746;
    *(&buf[0].__locale_ + 4) = v10;
    WORD2(buf[1].__locale_) = 1024;
    *(&buf[1].__locale_ + 6) = v9;
    WORD1(buf[2].__locale_) = 2082;
    *(&buf[2].__locale_ + 4) = v12;
    WORD2(buf[3].__locale_) = 1024;
    *(&buf[3].__locale_ + 6) = v11;
    WORD1(buf[4].__locale_) = 2082;
    *(&buf[4].__locale_ + 4) = v13;
    WORD2(buf[5].__locale_) = 1024;
    *(&buf[5].__locale_ + 6) = v14;
    WORD1(buf[6].__locale_) = 2082;
    *(&buf[6].__locale_ + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: state: %{public}s(%d),%{public}s(%d) for %{public}s seconds, %d errors, fControllerConnectionListFull=%{public}s", buf, 0x3Cu);
    if (out[23] < 0)
    {
      operator delete(*out);
    }

    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 896) != 0;
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v16;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: FastConnectionScanAssertionActive:%d", buf, 8u);
    v7 = qword_100BCE980;
  }

  if (*(a1 + 552) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 560);
    LODWORD(buf[0].__locale_) = 134217984;
    *(&buf[0].__locale_ + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: FastConnectionScanTimer interval:%f", buf, 0xCu);
    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 1067);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: stackIsShuttingDown:%d", buf, 8u);
    v7 = qword_100BCE980;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: Connected devices:", buf, 2u);
  }

  v19 = *(a1 + 384);
  if (v19 != (a1 + 392))
  {
    v20 = (a1 + 536);
    v21 = (a1 + 512);
    do
    {
      v260 = 0;
      v259 = 0u;
      v258 = 0u;
      v257 = 0u;
      v256 = 0u;
      v255 = 0u;
      v254 = 0u;
      v253 = 0u;
      v252 = 0u;
      v251 = 0u;
      v250 = 0u;
      v249 = 0u;
      *v248 = 0u;
      v247 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100007AD0(buf);
      if (a1 + 416 == sub_10004E34C(a1 + 408, v19 + 32))
      {
        v236[1] = 0;
        v236[0] = 0;
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v24 = off_100B508C8;
        v25 = sub_10004DF60(v19 + 32);
        sub_10078CCAC(v24, v25, v236);

        v26 = sub_100007774(&buf[2]);
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(v19 + 32, out);
        sub_100007E30(__p, out);
        v27 = sub_100007774(v26);
        v28 = sub_100007774(v27);
        sub_100773740(v236);
        v29 = sub_100007774(v28);
        sub_100007774(v29);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      else
      {
        v22 = sub_100007774(&buf[2]);
        memset(out, 0, sizeof(out));
        uuid_unparse_upper(v19 + 32, out);
        sub_100007E30(__p, out);
        v23 = sub_100007774(v22);
        sub_100007774(v23);
      }

      if (v245 < 0)
      {
        operator delete(__p[0]);
      }

      v30 = v19 + 6;
      v31 = *v20;
      if (*v20)
      {
        v32 = *v30;
        v33 = (a1 + 536);
        do
        {
          v34 = v31[4];
          v35 = v34 >= v32;
          v36 = v34 < v32;
          if (v35)
          {
            v33 = v31;
          }

          v31 = v31[v36];
        }

        while (v31);
        if (v33 != v20 && v32 >= v33[4])
        {
          sub_100007774(&buf[2]);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6);
          v37 = std::ostream::operator<<();
          sub_100007774(v37);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6);
          v38 = std::ostream::operator<<();
          sub_100007774(v38);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6);
          v39 = std::ostream::operator<<();
          sub_100007774(v39);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6);
          v40 = std::ostream::operator<<();
          sub_100007774(v40);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6);
          v41 = std::ostream::operator<<();
          sub_100007774(v41);
          *out = v19 + 6;
          sub_10077444C(a1 + 528, v19 + 6);
          std::ostream::operator<<();
        }
      }

      v42 = *v21;
      if (*v21)
      {
        v43 = *v30;
        v44 = (a1 + 512);
        do
        {
          v45 = v42[4];
          v35 = v45 >= v43;
          v46 = v45 < v43;
          if (v35)
          {
            v44 = v42;
          }

          v42 = v42[v46];
        }

        while (v42);
        if (v44 != v21 && v43 >= v44[4])
        {
          sub_100007774(&buf[2]);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6);
          v47 = std::ostream::operator<<();
          sub_100007774(v47);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6);
          v48 = std::ostream::operator<<();
          sub_100007774(v48);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6);
          v49 = std::ostream::operator<<();
          sub_100007774(v49);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6);
          v50 = std::ostream::operator<<();
          sub_100007774(v50);
          *out = v19 + 6;
          sub_100774D7C(a1 + 504, v19 + 6);
          v51 = std::ostream::operator<<();
          sub_100007774(v51);
        }
      }

      v52 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v53 = out;
        if (out[23] < 0)
        {
          v53 = *out;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v53;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", __p, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      buf[0].__locale_ = v204;
      *(&buf[0].__locale_ + *(v204 - 3)) = v203;
      buf[2].__locale_ = v202;
      if (SHIBYTE(v249) < 0)
      {
        operator delete(v248[1]);
      }

      std::locale::~locale(&buf[4]);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      v54 = v19[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v19[2];
          v56 = *v55 == v19;
          v19 = v55;
        }

        while (!v56);
      }

      v19 = v55;
    }

    while (v55 != (a1 + 392));
  }

  v57 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: UUIDToSessionMap :  fRSSIDetectionUUIDToSessionMap", buf, 2u);
    v57 = qword_100BCE980;
  }

  v58 = *(a1 + 640);
  if (v58 != (a1 + 648))
  {
    do
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v59 = sub_10004DF60(v58 + 32);
        v60 = v59;
        v61 = (v58 + 56);
        if (v58[79] < 0)
        {
          v61 = *v61;
        }

        LODWORD(buf[0].__locale_) = 138543618;
        *(&buf[0].__locale_ + 4) = v59;
        WORD2(buf[1].__locale_) = 2082;
        *(&buf[1].__locale_ + 6) = v61;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump:  Device%{public}@ : Session:%{public}s", buf, 0x16u);

        v57 = qword_100BCE980;
      }

      v62 = *(v58 + 1);
      if (v62)
      {
        do
        {
          v63 = v62;
          v62 = *v62;
        }

        while (v62);
      }

      else
      {
        do
        {
          v63 = *(v58 + 2);
          v56 = *v63 == v58;
          v58 = v63;
        }

        while (!v56);
      }

      v58 = v63;
    }

    while (v63 != (a1 + 648));
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: UUIDToSessionMap : fUsageNotificationUUIDToSessionMap", buf, 2u);
    v57 = qword_100BCE980;
  }

  v64 = *(a1 + 664);
  if (v64 != (a1 + 672))
  {
    do
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v65 = sub_10004DF60(v64 + 32);
        LODWORD(buf[0].__locale_) = 138543362;
        *(&buf[0].__locale_ + 4) = v65;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump:  Device%{public}@ : Session", buf, 0xCu);

        v57 = qword_100BCE980;
      }

      v66 = *(v64 + 1);
      if (v66)
      {
        do
        {
          v67 = v66;
          v66 = *v66;
        }

        while (v66);
      }

      else
      {
        do
        {
          v67 = *(v64 + 2);
          v56 = *v67 == v64;
          v64 = v67;
        }

        while (!v56);
      }

      v64 = v67;
    }

    while (v67 != (a1 + 672));
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: SessionToUUIDMap fUsagePhyStatisticsUUIDToSessionMap :  ", buf, 2u);
    v57 = qword_100BCE980;
  }

  v68 = *(a1 + 688);
  if (v68 != (a1 + 696))
  {
    do
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v69 = sub_10004DF60(v68 + 40);
        LODWORD(buf[0].__locale_) = 138543362;
        *(&buf[0].__locale_ + 4) = v69;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump:  Session:  : Device%{public}@", buf, 0xCu);

        v57 = qword_100BCE980;
      }

      v70 = *(v68 + 1);
      if (v70)
      {
        do
        {
          v71 = v70;
          v70 = *v70;
        }

        while (v70);
      }

      else
      {
        do
        {
          v71 = *(v68 + 2);
          v56 = *v71 == v68;
          v68 = v71;
        }

        while (!v56);
      }

      v68 = v71;
    }

    while (v71 != (a1 + 696));
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: SessionToUUIDMap fUsagePhyStatisticsSubratingToSessionMap :  ", buf, 2u);
    v57 = qword_100BCE980;
  }

  v72 = *(a1 + 712);
  if (v72 != (a1 + 720))
  {
    do
    {
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v73 = *(v72 + 20);
        LODWORD(buf[0].__locale_) = 67109120;
        HIDWORD(buf[0].__locale_) = v73;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump:  Session:  : %d", buf, 8u);
        v57 = qword_100BCE980;
      }

      v74 = v72[1];
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = v72[2];
          v56 = *v75 == v72;
          v72 = v75;
        }

        while (!v56);
      }

      v72 = v75;
    }

    while (v75 != (a1 + 720));
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v76 = *(a1 + 736);
    LODWORD(buf[0].__locale_) = 67109120;
    HIDWORD(buf[0].__locale_) = v76;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: fLastGLobalMinRSSIApplied : %d", buf, 8u);
    v57 = qword_100BCE980;
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "statedump: Ready devices:", buf, 2u);
  }

  v77 = *(a1 + 408);
  if (v77 != (a1 + 416))
  {
    do
    {
      v78 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v77 + 32, buf);
        sub_100007E30(out, buf);
        v79 = out[23] >= 0 ? out : *out;
        LODWORD(buf[0].__locale_) = 136446210;
        *(&buf[0].__locale_ + 4) = v79;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v80 = *(v77 + 1);
      if (v80)
      {
        do
        {
          v81 = v80;
          v80 = *v80;
        }

        while (v80);
      }

      else
      {
        do
        {
          v81 = *(v77 + 2);
          v56 = *v81 == v77;
          v77 = v81;
        }

        while (!v56);
      }

      v77 = v81;
    }

    while (v81 != (a1 + 416));
  }

  v82 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "statedump: Devices with CL Info:", buf, 2u);
  }

  v83 = *(a1 + 432);
  if (v83 != (a1 + 440))
  {
    do
    {
      v84 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v83 + 32, buf);
        sub_100007E30(out, buf);
        v85 = out[23] >= 0 ? out : *out;
        LODWORD(buf[0].__locale_) = 136446210;
        *(&buf[0].__locale_ + 4) = v85;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s", buf, 0xCu);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v86 = *(v83 + 1);
      if (v86)
      {
        do
        {
          v87 = v86;
          v86 = *v86;
        }

        while (v86);
      }

      else
      {
        do
        {
          v87 = *(v83 + 2);
          v56 = *v87 == v83;
          v83 = v87;
        }

        while (!v56);
      }

      v83 = v87;
    }

    while (v87 != (a1 + 440));
  }

  v88 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "statedump: Connecting devices:", buf, 2u);
  }

  v89 = a1;
  v90 = *(a1 + 336);
  v91 = (a1 + 344);
  if (v90 != (a1 + 344))
  {
    v92 = (a1 + 368);
    do
    {
      *__p = 0uLL;
      if (qword_100B508D0 != -1)
      {
        sub_10086DE2C();
      }

      v93 = off_100B508C8;
      v94 = sub_10004DF60(v90 + 25);
      sub_10078CCAC(v93, v94, __p);

      v95 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        v206 = sub_10004DF60(v90 + 25);
        sub_100773740(__p);
        if (out[23] >= 0)
        {
          v96 = out;
        }

        else
        {
          v96 = *out;
        }

        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v97 = off_100B508C8;
        v205 = sub_10004DF60(v90 + 25);
        v98 = sub_100788D8C(v97, v205);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v99 = off_100B508C8;
        v100 = sub_10004DF60(v90 + 25);
        v101 = v91;
        v102 = sub_10078FD20(v99, v100);
        if (qword_100B508D0 != -1)
        {
          sub_10086DE2C();
        }

        v103 = off_100B508C8;
        v104 = sub_10004DF60(v90 + 25);
        v105 = sub_10078FE38(v103, v104);
        LODWORD(buf[0].__locale_) = 138544386;
        *(&buf[0].__locale_ + 4) = v206;
        WORD2(buf[1].__locale_) = 2082;
        *(&buf[1].__locale_ + 6) = v96;
        HIWORD(buf[2].__locale_) = 1024;
        LODWORD(buf[3].__locale_) = v98;
        WORD2(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 6) = v102;
        WORD1(buf[4].__locale_) = 1024;
        HIDWORD(buf[4].__locale_) = v105;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ (added %{public}s ago) useCase:%d scanDutyCycle screenON:%d screenOFF:%d", buf, 0x28u);

        v91 = v101;
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v106 = *(a1 + 360);
      if (v106 != v92)
      {
        do
        {
          v107 = sub_10004DF60(v90 + 25);
          sub_10004DFB4(buf, v107);
          v108 = uuid_compare(v106 + 40, buf) == 0;

          if (v108)
          {
            v109 = qword_100BCE980;
            if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
            {
              sub_100777574();
              locale = buf;
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                locale = buf[0].__locale_;
              }

              *out = 136315138;
              *&out[4] = locale;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "statedump:       %s", out, 0xCu);
              if (SHIBYTE(buf[2].__locale_) < 0)
              {
                operator delete(buf[0].__locale_);
              }
            }
          }

          v111 = *(v106 + 1);
          if (v111)
          {
            do
            {
              v112 = v111;
              v111 = *v111;
            }

            while (v111);
          }

          else
          {
            do
            {
              v112 = *(v106 + 2);
              v56 = *v112 == v106;
              v106 = v112;
            }

            while (!v56);
          }

          v106 = v112;
        }

        while (v112 != v92);
      }

      v113 = *(v90 + 1);
      if (v113)
      {
        do
        {
          v114 = v113;
          v113 = *v113;
        }

        while (v113);
      }

      else
      {
        do
        {
          v114 = *(v90 + 2);
          v56 = *v114 == v90;
          v90 = v114;
        }

        while (!v56);
      }

      v90 = v114;
      v89 = a1;
    }

    while (v114 != v91);
  }

  v115 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "statedump: Disconnection reason map:", buf, 2u);
  }

  v116 = *(v89 + 456);
  v117 = (v89 + 464);
  if (v116 != v117)
  {
    do
    {
      v118 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v116 + 28, buf);
        sub_100007E30(out, buf);
        v119 = out[23] >= 0 ? out : *out;
        v120 = sub_10074D290(a1, *(v116 + 11));
        LODWORD(buf[0].__locale_) = 136446466;
        *(&buf[0].__locale_ + 4) = v119;
        WORD2(buf[1].__locale_) = 2082;
        *(&buf[1].__locale_ + 6) = v120;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s:%{public}s", buf, 0x16u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v121 = v116[1];
      if (v121)
      {
        do
        {
          v122 = v121;
          v121 = *v121;
        }

        while (v121);
      }

      else
      {
        do
        {
          v122 = v116[2];
          v56 = *v122 == v116;
          v116 = v122;
        }

        while (!v56);
      }

      v116 = v122;
    }

    while (v122 != v117);
  }

  v123 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "statedump: Devices pending to go into filter accept list:", buf, 2u);
  }

  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v124 = *(a1 + 768);
  v125 = [v124 countByEnumeratingWithState:&v232 objects:v243 count:16];
  if (v125)
  {
    v126 = *v233;
    do
    {
      for (i = 0; i != v125; i = i + 1)
      {
        if (*v233 != v126)
        {
          objc_enumerationMutation(v124);
        }

        v128 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v129 = *(*(&v232 + 1) + 8 * i);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v129;
          _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v125 = [v124 countByEnumeratingWithState:&v232 objects:v243 count:16];
    }

    while (v125);
  }

  v130 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "statedump: Devices pending to go out of filter accept list:", buf, 2u);
  }

  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v131 = *(a1 + 776);
  v132 = [v131 countByEnumeratingWithState:&v228 objects:v242 count:16];
  if (v132)
  {
    v133 = *v229;
    do
    {
      for (j = 0; j != v132; j = j + 1)
      {
        if (*v229 != v133)
        {
          objc_enumerationMutation(v131);
        }

        v135 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v136 = *(*(&v228 + 1) + 8 * j);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v136;
          _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v132 = [v131 countByEnumeratingWithState:&v228 objects:v242 count:16];
    }

    while (v132);
  }

  v137 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "statedump: Devices pending to get updated in FilterAcceptList:", buf, 2u);
  }

  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v138 = *(a1 + 784);
  v139 = [v138 countByEnumeratingWithState:&v224 objects:v241 count:16];
  if (v139)
  {
    v140 = *v225;
    do
    {
      for (k = 0; k != v139; k = k + 1)
      {
        if (*v225 != v140)
        {
          objc_enumerationMutation(v138);
        }

        v142 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v143 = *(*(&v224 + 1) + 8 * k);
          LODWORD(buf[0].__locale_) = 138412290;
          *(&buf[0].__locale_ + 4) = v143;
          _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "statedump:    %@", buf, 0xCu);
        }
      }

      v139 = [v138 countByEnumeratingWithState:&v224 objects:v241 count:16];
    }

    while (v139);
  }

  v144 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "statedump: Overflowed connecting devices:", buf, 2u);
  }

  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v145 = *(a1 + 752);
  v146 = [v145 countByEnumeratingWithState:&v220 objects:v240 count:16];
  if (v146)
  {
    v147 = *v221;
    do
    {
      for (m = 0; m != v146; m = m + 1)
      {
        if (*v221 != v147)
        {
          objc_enumerationMutation(v145);
        }

        v149 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v150 = *(*(&v220 + 1) + 8 * m);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v150;
          _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v146 = [v145 countByEnumeratingWithState:&v220 objects:v240 count:16];
    }

    while (v146);
  }

  v151 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "statedump: Blocked connecting devices:", buf, 2u);
  }

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v152 = *(a1 + 760);
  v153 = [v152 countByEnumeratingWithState:&v216 objects:v239 count:16];
  if (v153)
  {
    v154 = *v217;
    do
    {
      for (n = 0; n != v153; n = n + 1)
      {
        if (*v217 != v154)
        {
          objc_enumerationMutation(v152);
        }

        v156 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v157 = *(*(&v216 + 1) + 8 * n);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v157;
          _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v153 = [v152 countByEnumeratingWithState:&v216 objects:v239 count:16];
    }

    while (v153);
  }

  v158 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "statedump: Disconnecting devices:", buf, 2u);
  }

  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v159 = *(a1 + 744);
  v160 = [v159 countByEnumeratingWithState:&v212 objects:v238 count:16];
  if (v160)
  {
    v161 = *v213;
    do
    {
      for (ii = 0; ii != v160; ii = ii + 1)
      {
        if (*v213 != v161)
        {
          objc_enumerationMutation(v159);
        }

        v163 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v164 = *(*(&v212 + 1) + 8 * ii);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v164;
          _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v160 = [v159 countByEnumeratingWithState:&v212 objects:v238 count:16];
    }

    while (v160);
  }

  v165 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "statedump: Requiring low latency devices:", buf, 2u);
  }

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v166 = *(a1 + 824);
  v167 = [v166 countByEnumeratingWithState:&v208 objects:v237 count:16];
  if (v167)
  {
    v168 = *v209;
    do
    {
      for (jj = 0; jj != v167; jj = jj + 1)
      {
        if (*v209 != v168)
        {
          objc_enumerationMutation(v166);
        }

        v170 = qword_100BCE980;
        if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
        {
          v171 = *(*(&v208 + 1) + 8 * jj);
          LODWORD(buf[0].__locale_) = 138543362;
          *(&buf[0].__locale_ + 4) = v171;
          _os_log_impl(&_mh_execute_header, v170, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@", buf, 0xCu);
        }
      }

      v167 = [v166 countByEnumeratingWithState:&v208 objects:v237 count:16];
    }

    while (v167);
  }

  v172 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "statedump: Incoming LE Connection Deny List:", buf, 2u);
    v172 = qword_100BCE980;
  }

  v173 = *(a1 + 1448);
  if (v173 != (a1 + 1456))
  {
    do
    {
      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
      {
        v174 = sub_10004DF60(v173 + 32);
        sub_10076FFA4(v173 + 6);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v175 = buf;
        }

        else
        {
          v175 = buf[0].__locale_;
        }

        *out = 138543618;
        *&out[4] = v174;
        *&out[12] = 2082;
        *&out[14] = v175;
        _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ %{public}s", out, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v172 = qword_100BCE980;
      }

      v176 = *(v173 + 1);
      if (v176)
      {
        do
        {
          v177 = v176;
          v176 = *v176;
        }

        while (v176);
      }

      else
      {
        do
        {
          v177 = *(v173 + 2);
          v56 = *v177 == v173;
          v173 = v177;
        }

        while (!v56);
      }

      v173 = v177;
    }

    while (v177 != (a1 + 1456));
  }

  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "statedump: Outgoing LE Connection Deny List:", buf, 2u);
    v172 = qword_100BCE980;
  }

  v178 = *(a1 + 1472);
  if (v178 != (a1 + 1480))
  {
    do
    {
      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
      {
        v179 = sub_10004DF60(v178 + 32);
        sub_10076FFA4(v178 + 6);
        if (SHIBYTE(buf[2].__locale_) >= 0)
        {
          v180 = buf;
        }

        else
        {
          v180 = buf[0].__locale_;
        }

        *out = 138543618;
        *&out[4] = v179;
        *&out[12] = 2082;
        *&out[14] = v180;
        _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}@ %{public}s", out, 0x16u);
        if (SHIBYTE(buf[2].__locale_) < 0)
        {
          operator delete(buf[0].__locale_);
        }

        v172 = qword_100BCE980;
      }

      v181 = *(v178 + 1);
      if (v181)
      {
        do
        {
          v182 = v181;
          v181 = *v181;
        }

        while (v181);
      }

      else
      {
        do
        {
          v182 = *(v178 + 2);
          v56 = *v182 == v178;
          v178 = v182;
        }

        while (!v56);
      }

      v178 = v182;
    }

    while (v182 != (a1 + 1480));
  }

  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_DEFAULT, "statedump: Controller AutoReconnect map:", buf, 2u);
  }

  v183 = *(a1 + 800);
  if (v183 != (a1 + 808))
  {
    do
    {
      v184 = qword_100BCE980;
      if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, 37);
        uuid_unparse_upper(v183 + 26, buf);
        sub_100007E30(out, buf);
        v185 = out[23] >= 0 ? out : *out;
        v186 = *(v183 + 21);
        LODWORD(buf[0].__locale_) = 136446466;
        *(&buf[0].__locale_ + 4) = v185;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v186;
        _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}s timeout:%d", buf, 0x12u);
        if (out[23] < 0)
        {
          operator delete(*out);
        }
      }

      v187 = *(v183 + 1);
      if (v187)
      {
        do
        {
          v188 = v187;
          v187 = *v187;
        }

        while (v187);
      }

      else
      {
        do
        {
          v188 = *(v183 + 2);
          v56 = *v188 == v183;
          v183 = v188;
        }

        while (!v56);
      }

      v183 = v188;
    }

    while (v188 != (a1 + 808));
  }

  v189 = qword_100BCE980;
  if (os_log_type_enabled(qword_100BCE980, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0].__locale_) = 0;
    _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "statedump: LEConnection configured Parameters:", buf, 2u);
  }

  v190 = *(a1 + 528);
  if (v190 != (a1 + 536))
  {
    v191 = qword_100BCE980;
    do
    {
      if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
      {
        v192 = v190[4];
        v193 = *(v190 + 20);
        v194 = *(v190 + 21);
        v195 = *(v190 + 22);
        LODWORD(buf[0].__locale_) = 134349824;
        *(&buf[0].__locale_ + 4) = v192;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v193;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = v194;
        LOWORD(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 2) = v195;
        _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}p connInt:%d periLatency:%d supervisionTimeout:%d", buf, 0x1Eu);
        v191 = qword_100BCE980;
      }

      if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
      {
        v196 = v190[4];
        v197 = *(v190 + 23);
        v198 = *(v190 + 24);
        v199 = *(v190 + 31);
        LODWORD(buf[0].__locale_) = 134349824;
        *(&buf[0].__locale_ + 4) = v196;
        WORD2(buf[1].__locale_) = 1024;
        *(&buf[1].__locale_ + 6) = v197;
        WORD1(buf[2].__locale_) = 1024;
        HIDWORD(buf[2].__locale_) = v198;
        LOWORD(buf[3].__locale_) = 1024;
        *(&buf[3].__locale_ + 2) = v199;
        _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "statedump:    %{public}p subrate:%d contNum:%d LE1M:%d", buf, 0x1Eu);
        v191 = qword_100BCE980;
      }

      v200 = v190[1];
      if (v200)
      {
        do
        {
          v201 = v200;
          v200 = *v200;
        }

        while (v200);
      }

      else
      {
        do
        {
          v201 = v190[2];
          v56 = *v201 == v190;
          v190 = v201;
        }

        while (!v56);
      }

      v190 = v201;
    }

    while (v201 != (a1 + 536));
  }

  sub_100769BA0(a1);
  sub_100769FF8(a1);
}

uint64_t sub_100773740(unint64_t *a1)
{
  v1 = *a1;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  v13 = 0u;
  sub_100007AD0(&v12);
  if (v1 >> 7 >= 0x2A3)
  {
    v2 = std::ostream::operator<<();
    sub_100007774(v2);
  }

  v3 = v1 % 0x15180;
  if (v3 >= 0xE10)
  {
    v4 = std::ostream::operator<<();
    sub_100007774(v4);
  }

  if (v3 % 0xE10 >= 0x3C)
  {
    v5 = std::ostream::operator<<();
    sub_100007774(v5);
  }

  v6 = std::ostream::operator<<();
  v7 = sub_100007774(v6);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 3;
  *(v7 + *(v8 - 24) + 24) = 3;
  v11 = 48;
  sub_10004DE98(v7, &v11);
  std::ostream::operator<<();
  std::stringbuf::str();
  *&v13 = v9;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100773A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007FC91C(va);
  _Unwind_Resume(a1);
}

void sub_100773A64(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);

  sub_100740150(v2, v3, v4, v6, v5, v7);
}

uint64_t sub_100773ADC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100773B24(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_10086F3E4();
  }

  v2 = off_100B508A8;

  return sub_100763050(v2, (a1 + 24));
}

void sub_100773B78(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100773B78(a1, *a2);
    sub_100773B78(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

void sub_100773BDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100773BDC(a1, *a2);
    sub_100773BDC(a1, a2[1]);
    sub_100773C38(a2 + 4);

    operator delete(a2);
  }
}

void sub_100773C38(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
}

void sub_100773C7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100773C7C(a1, *a2);
    sub_100773C7C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_100773D48(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100773DEC();
  }

  return result;
}

void sub_100773E58(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100773E70(uint64_t a1, unsigned int *a2)
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

uint64_t sub_100773F44(uint64_t a1, unsigned int *a2)
{
  v4 = 0;
  v2 = *sub_100773FE4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_100773FE4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        v10 = *(v8 + 8);
        v11 = v7 < v10;
        if (v6 != v9)
        {
          v11 = v6 < v9;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      v12 = v10 < v7;
      if (v6 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < v6;
      }

      if (!v13)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_15:
  *a2 = v8;
  return result;
}

uint64_t sub_1007740CC(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 28);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 32) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 28);
  v13 = v6 < *(v7 + 32);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

void *sub_10077444C(uint64_t a1, unint64_t *a2)
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

char *sub_100774520(void *a1, char *__src, char *a3)
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

void sub_1007746BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007746F4(uint64_t a1, unsigned __int8 *uu2)
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
    v6 = uuid_compare((v3 + 26), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 26)) < 0)
  {
    return v2;
  }

  return v5;
}

void *sub_100774770(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_100774834();
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

void sub_1007748A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007748BC(uint64_t a1, const void **a2)
{
  v3 = 0;
  result = *sub_1000867EC(a1, &v3, a2);
  if (!result)
  {
    sub_100774960();
  }

  return result;
}

void sub_100774A00(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100774A1C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_100774AC0(a1, &v3, uu1);
  if (!result)
  {
    sub_100774B48();
  }

  return result;
}

const unsigned __int8 *sub_100774AC0(uint64_t a1, const unsigned __int8 **a2, unsigned __int8 *uu1)
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
        if ((uuid_compare(uu1, v4 + 28) & 0x80000000) == 0)
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

      if ((uuid_compare(v7 + 28, uu1) & 0x80000000) == 0)
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

void sub_100774BB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100774BCC(uint64_t a1, unsigned __int8 *uu2)
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
    v6 = uuid_compare((v3 + 28), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 28)) < 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_100774C48(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_100774AC0(a1, &v3, uu1);
  if (!result)
  {
    sub_100774CEC();
  }

  return result;
}

void sub_100774D64(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_100774D7C(uint64_t a1, unint64_t *a2)
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