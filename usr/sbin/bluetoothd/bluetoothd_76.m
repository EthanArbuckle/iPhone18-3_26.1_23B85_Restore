void sub_100567BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  nullsub_21(v18 - 128);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100567D2C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_1007B0D18(off_100B51070, *(*(a1 + 32) + 8) + 48);
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = (*(*(a1 + 32) + 8) + 48);

  return sub_1007C77C0(v2, v3);
}

void sub_100567DB8(uint64_t a1)
{
  v2 = sub_10000F034();
  (*(*v2 + 352))(v2, *(a1 + 32), *(a1 + 40));
  if (_os_feature_enabled_impl())
  {
    if (qword_100B543A8 != -1)
    {
      sub_100843440();
    }

    v3 = qword_100B543A0;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    sub_1007062CC(v3, v4, v5);
  }
}

uint64_t sub_100567E64(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, int a7)
{
  *(a1 + 88) = 0;
  v8 = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *a4;
  *(a1 + 72) = a7;
  *(a1 + 84) = 0;
  *(a1 + 40) = *a5;
  *(a1 + 56) = *a6;
  *(a1 + 77) = 0;
  v9 = *(a2 + 128);
  *(a1 + 82) = *(a2 + 132);
  *(a1 + 78) = v9;
  sub_1000C23E0(a2, &v11);
  if (*(a1 + 111) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v11;
  *(v8 + 16) = v12;
  return a1;
}

void sub_100567F18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567F34(uint64_t a1)
{
  if ((sub_1000E25D8() & 1) == 0)
  {
    v10 = qword_100BCE960;
    if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v11 = "upgradeToManatee, Magic Pairing not supported";
LABEL_17:
    v12 = v10;
    v13 = 2;
    goto LABEL_18;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100841AAC();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    v10 = qword_100BCE960;
    if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v11 = "upgradeToManatee System has not passed first unlock (or device prefs not read yet). Do not write DeviceList to Cloud";
    goto LABEL_17;
  }

  if (*(a1 + 49) != 0 && *(a1 + 65) != 0)
  {
    v15 = 0;
    v2 = sub_100017E6C();
    (*(*v2 + 80))(v2, &v15 + 1);
    v3 = sub_100017E6C();
    (*(*v3 + 88))(v3, &v15);
    v4 = *(a1 + 241);
    v5 = HIBYTE(v15);
    v6 = qword_100BCE960;
    v7 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1 && !v5)
    {
      if (v7)
      {
        v8 = (*(a1 + 184) - *(a1 + 176)) >> 3;
        buf = 134217984;
        *buf_4 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "upgradeToManatee information for %lu devices to cloud", &buf, 0xCu);
      }

      v9 = *(a1 + 184) - *(a1 + 176);
      if (v9)
      {
        is_mul_ok(v9 >> 3, 0x98uLL);
        operator new[]();
      }

      (*(**(a1 + 168) + 168))(*(a1 + 168), 0, 0, a1 + 49, a1 + 65);
      return;
    }

    if (!v7)
    {
      return;
    }

    if (*(a1 + 241))
    {
      v14 = "online";
    }

    else
    {
      v14 = "signed in";
    }

    buf = 136446210;
    *buf_4 = v14;
    v11 = "Warning: Device is not %{public}s";
    v12 = v6;
    v13 = 12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &buf, v13);
    return;
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843454();
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843490();
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843514();
  }
}

void sub_1005689CC(uint64_t a1, uint64_t a2)
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
    sub_100568A98((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100568A98(void *a1, char *__src, char *a3)
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

void sub_100568C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100568C6C(uint64_t a1, uint64_t a2)
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

void sub_10056921C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x22u);
}

BOOL sub_10056923C(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = *a1;
    while (*v5 != a2)
    {
      v5 += 8;
      v3 += 8;
      if (v5 == v4)
      {
        v3 = a1[1];
        break;
      }
    }
  }

  if (v4 != v3)
  {
    if (v4 != v3 + 8)
    {
      memmove(v3, v3 + 8, v4 - (v3 + 8));
    }

    a1[1] = v4 - 8;
  }

  return v4 != v3;
}

uint64_t sub_1005692C4(uint64_t a1)
{
  *a1 = off_100AFCB78;
  *(a1 + 8) = off_100AFCC08;
  *(a1 + 16) = off_100AFCC28;
  *(a1 + 24) = off_100AFCC60;
  *(a1 + 32) = &off_100AFCC88;
  *(a1 + 40) = off_100AFCCA0;
  sub_100044BBC(a1 + 48);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100044BBC(a1 + 168);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 305) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  return a1;
}

void sub_100569400(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 152) = v7;
    operator delete(v7);
  }

  sub_10000CEDC(v2, *v4);
  sub_10007A068(v1 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_100569438(uint64_t a1)
{
  *a1 = off_100AFCB78;
  *(a1 + 8) = off_100AFCC08;
  *(a1 + 16) = off_100AFCC28;
  *(a1 + 24) = off_100AFCC60;
  *(a1 + 32) = &off_100AFCC88;
  *(a1 + 40) = off_100AFCCA0;

  sub_10000CEDC(a1 + 272, *(a1 + 280));
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 168);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  sub_10000CEDC(a1 + 112, *(a1 + 120));
  sub_10007A068(a1 + 48);
  return a1;
}

void sub_100569574(uint64_t a1)
{
  sub_100569438(a1);

  operator delete();
}

void sub_1005695AC(uint64_t a1)
{
  sub_100569438(a1 - 16);

  operator delete();
}

uint64_t sub_1005695E8(uint64_t a1)
{
  v43[0] = 0;
  v43[1] = 0;
  sub_100007F88(v43, a1 + 168);
  if (qword_100B50B88 != -1)
  {
    sub_10084359C();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B512E8 != -1)
  {
    sub_1008435C4();
  }

  sub_1006E8870(off_100B512E0, a1 + 16);
  if (qword_100B50F68 != -1)
  {
    sub_1008435EC();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 24);
  if (qword_100B512C8 != -1)
  {
    sub_100843614();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1 + 32);
  if (qword_100B50AA0 != -1)
  {
    sub_10084363C();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 40);
  atomic_store(0, (a1 + 232));
  if (MKBDeviceUnlockedSinceBoot())
  {
    v2 = sub_1000BE4B4();
    (**v2)(v2);
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DeviceManager init, system already unlocked, allow read/write device settings", buf, 2u);
    }

    atomic_store(1u, (a1 + 232));
    v4 = *(a1 + 144);
    v5 = *(a1 + 152);
    while (v4 != v5)
    {
      sub_100533704(*v4++);
    }

    sub_100569EDC(a1);
    if (qword_100B508A0 != -1)
    {
      sub_100843664();
    }

    sub_100575548(off_100B50898);
  }

  else
  {
    out_token = 0;
    v8 = *(sub_100017F4C() + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10056A110;
    handler[3] = &unk_100AF0BA0;
    handler[4] = a1;
    v9 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v8, handler);
    if (v9)
    {
      if (IsAppleInternalBuild())
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        *buf = 0u;
        v24 = 0u;
        sub_100007AD0(buf);
        v10 = sub_100007774(&v24);
        std::to_string(&__p, v9);
        sub_100007774(v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::stringbuf::str();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_1001C4B04(p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v24 = v12;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(*(&v28 + 1));
        }

        std::locale::~locale(&v25);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_10084368C();
      }
    }

    else
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", buf, 2u);
      }
    }

    v21 = 0;
    v14 = *(sub_100017F4C() + 8);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10056A27C;
    v20[3] = &unk_100AF0BA0;
    v20[4] = a1;
    v15 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v21, v14, v20);
    if (v15)
    {
      if (IsAppleInternalBuild())
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        v25 = 0u;
        v26 = 0u;
        *buf = 0u;
        v24 = 0u;
        sub_100007AD0(buf);
        v16 = sub_100007774(&v24);
        std::to_string(&__p, v15);
        sub_100007774(v16);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::stringbuf::str();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &__p;
        }

        else
        {
          v17 = __p.__r_.__value_.__r.__words[0];
        }

        sub_1001C4B04(v17);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v24 = v18;
        if (SHIBYTE(v29) < 0)
        {
          operator delete(*(&v28 + 1));
        }

        std::locale::~locale(&v25);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_1008436FC();
      }
    }

    else
    {
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "DeviceManager Successfully registered for MKB first lockstatus unlock notification", buf, 2u);
      }
    }
  }

  *(a1 + 296) = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(&__p, "WirelessSplitterLinkKeyTimeout");
  (*(*v6 + 88))(v6, buf, &__p, a1 + 296);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v24) < 0)
  {
    operator delete(*buf);
  }

  *(a1 + 300) = 0;
  *(a1 + 304) = 1;
  return sub_1000088CC(v43);
}

void sub_100569E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a22);
  sub_1000088CC(v27 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_100569EDC(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device Database has been updated, update device info for all paired devices", buf, 2u);
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 168);
  *buf = 0;
  v12 = 0;
  v13 = 0;
  sub_100007F20(buf, (a1 + 144));
  sub_10000801C(v14);
  v4 = *buf;
  v3 = v12;
  if (*buf != v12)
  {
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v5, __p);
          v7 = v10 >= 0 ? __p : __p[0];
          *v15 = 136446210;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'name changed' event for device %{public}s", v15, 0xCu);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10056B15C(a1, v5, 6);
        if (qword_100B50AC0 != -1)
        {
          sub_10084376C();
        }

        sub_100594AA0(off_100B50AB8, v5, 0xFFFFFFFFLL, 0, 701, 0);
        v3 = v12;
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *buf;
  }

  if (v4)
  {
    v12 = v4;
    operator delete(v4);
  }

  return sub_1000088CC(v14);
}

void sub_10056A0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void sub_10056A118(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceManager: Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", buf, 8u);
  }

  if (MKBDeviceUnlockedSinceBoot() != 1 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_100843794();
  }

  v3 = sub_1000BE4B4();
  (**v3)(v3);
  v4 = sub_100017F4C();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10056E6F0;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_10008E008(v4, 2000, v5);
  *(a1 + 305) = 1;
}

uint64_t sub_10056A27C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MKBDeviceUnlockedSinceBoot();
    v6 = *(v3 + 305);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DeviceManager: kMobileKeyBagLockStatusNotificationID happened with MKBDeviceUnlockedSinceBoot() = %d and fFirstUnlockHappened =%d", v8, 0xEu);
  }

  if (MKBDeviceUnlockedSinceBoot() == 1 && (*(v3 + 305) & 1) == 0)
  {
    sub_10056A118(v3);
  }

  return notify_cancel(a2);
}

void sub_10056A364(void *a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_1008437D0();
  }

  sub_10007A3F0(off_100B50F60 + 24, (a1 + 3));
  if (qword_100B512E8 != -1)
  {
    sub_1008437E4();
  }

  sub_1006E89A0(off_100B512E0, (a1 + 2));
  if (qword_100B50B88 != -1)
  {
    sub_1008437F8();
  }

  sub_10007A3F0(qword_100B50B80 + 8, (a1 + 1));
  if (qword_100B50AA0 != -1)
  {
    sub_10084380C();
  }

  sub_10007A3F0(off_100B50A98 + 64, (a1 + 5));
  v2 = a1[14];
  v3 = a1 + 15;
  if (v2 != a1 + 15)
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_1008437F8();
      }

      sub_1006189DC(qword_100B50B80, v2[4]);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_10000CEDC((a1 + 14), a1[15]);
  a1[15] = 0;
  a1[16] = 0;
  a1[14] = v3;
}

unint64_t sub_10056A4C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 48);
  v6 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_23;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100843820();
  }

  v7 = sub_100076290(qword_100B50B80, a2);
  if (!v7)
  {
LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v10 = *(a1 + 112);
  v8 = a1 + 112;
  v9 = v10;
  if (v10 == (v8 + 8))
  {
LABEL_18:
    if (qword_100B50B88 != -1)
    {
      sub_100843820();
    }

    v15 = sub_1006185D8(qword_100B50B80, v7);
    if (v15)
    {
      v16[3] = &v15;
      sub_10005E16C(v8, &v15)[5] = a3;
      v6 = v15;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  while (1)
  {
    if (v9[5] == a3)
    {
      v6 = v9[4];
      if (v6 == a2)
      {
        break;
      }

      if (qword_100B50B88 != -1)
      {
        sub_100843820();
      }

      if (sub_100076290(qword_100B50B80, v6) == v7)
      {
        break;
      }
    }

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
        v13 = *v12 == v9;
        v9 = v12;
      }

      while (!v13);
    }

    v9 = v12;
    if (v12 == (v8 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_23:
  sub_1000088CC(v16);
  return v6;
}

void sub_10056A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056A684(uint64_t a1, unsigned __int8 *a2)
{
  sub_100536908(a2);
  result = sub_1000C0348(a2);
  if ((result & 1) == 0)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s is fully disconnected and now unpaired, resetting it", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return sub_10054E278(a2);
  }

  return result;
}

uint64_t sub_10056A780(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = 0;
  if (*(a2 + 1016) == 1)
  {
    sub_1005485C4(a2, &v6);
    result = sub_10056A818(v5, a2);
  }

  if (!a3)
  {
    sub_1000D42DC(&v6, 0);
    sub_10054D528(a2, &v6);
    result = sub_1000DEB14(a2);
    *(v5 + 300) |= 1 << result;
  }

  return result;
}

void *sub_10056A818(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  if (*(a1 + 288))
  {
    v4 = *(a1 + 272);
    v5 = *(v4 + 32);
    if (v5 == a2)
    {
      if (*(v4 + 40) == 1)
      {
        v7 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v5, &__p);
          v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wireless Splitter cancelling linkkey timeout for guest device %{public}s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_10056E7F0(a1, 0, 0);
        *(a2 + 1028) = 3;
      }
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
      v6 = sub_100007E30(&__p, "WS_ERROR_OTHER_DELETE_GUEST_ONLY_ONE_ALLOWED");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v6 = sub_100008904(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      sub_10056AE78(v6, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, buf);
        v10 = v21;
        v11 = *buf;
        sub_1000E5A58(a2, v15);
        v12 = buf;
        if (v10 < 0)
        {
          v12 = v11;
        }

        if (v16 >= 0)
        {
          v13 = v15;
        }

        else
        {
          v13 = v15[0];
        }

        *v22 = 136446466;
        v23 = v12;
        v24 = 2082;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter deleting guest device %{public}s, to only allow one guest at a time. New guest device will be %{public}s", v22, 0x16u);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        if (v21 < 0)
        {
          operator delete(*buf);
        }
      }

      if (qword_100B50F88 != -1)
      {
        sub_100843848();
      }

      sub_1006E0DBC(off_100B50F80, v5);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v19;
  result = sub_1005702E4(a1 + 272, &v19);
  *(result + 40) = 0;
  return result;
}

void sub_10056AAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056AB1C(uint64_t a1, unint64_t a2, int a3, int a4)
{
  result = sub_1000C0348(a2);
  if (result & 1) != 0 || (result = sub_1000295DC(a2), (result))
  {
    if (!a3)
    {
      v15 = 0;
      sub_1000D42DC(&v15, 0);
      sub_10054D528(a2, &v15);
      *(a1 + 300) &= ~(1 << sub_1000DEB14(a2));
      if (*(a2 + 1016) == 1)
      {
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device %{public}s disconnected with reason %u", &buf, 0x12u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        memset(&__p, 0, sizeof(__p));
        std::to_string(&__p, a4);
        memset(&buf, 0, sizeof(buf));
        v11 = std::operator+<char>();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          v11 = sub_100008904(&v14, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        }

        else
        {
          v14 = buf;
        }

        sub_10056AE78(v11, &v14);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        sub_1005485C4(a2, &v15);
        sub_10056AFEC(a1, a2);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_100007E30(&__p, "");
      *(a2 + 1499) = 0;
      std::string::operator=((a2 + 1544), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10053914C(a2, 0);
      result = _os_feature_enabled_impl();
      if (result)
      {
        if (!sub_100539FE8(a2))
        {
          return sub_10053F4E8(a2);
        }

        result = sub_10053E494(a2);
        if ((result & 1) == 0)
        {
          return sub_10053F4E8(a2);
        }
      }
    }
  }

  else
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}s is unpaired and now fully disconnected, resetting it", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return sub_10054E278(a2);
  }

  return result;
}

void sub_10056AE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056AE78(uint64_t a1, const std::string *a2)
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
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
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

void sub_10056AFEC(uint64_t a1, unint64_t a2)
{
  v14 = a2;
  v2 = *(a1 + 280);
  if (v2)
  {
    v4 = a1 + 280;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 != a1 + 280 && *(v4 + 32) <= a2)
    {
      *sub_10056E904(a1 + 272, &v14) = 1;
      v8 = *(a1 + 296);
      if (!v8)
      {
        v8 = 480000;
      }

      v9 = v8;
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(*(a1 + 272) + 32), __p);
        if (v13 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446466;
        v16 = v11;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Wireless Splitter starting linkkey timeout for guest device %{public}s with timeout %llums", buf, 0x16u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10056E7F0(a1, 1, v9);
    }
  }
}

uint64_t sub_10056B15C(uint64_t a1, __n128 *a2, int a3)
{
  if (a3 != 18 || (v6 = sub_10000C798(), !(*(*v6 + 416))(v6)) || (result = sub_10056C6F0(a1), result))
  {
    v8 = sub_10042FE9C();
    sub_100416F50(v8, a2);
    if (qword_100B50AC0 != -1)
    {
      sub_100843870();
    }

    sub_100598044(off_100B50AB8, a2);
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, a1 + 168);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10056C8D4;
    v9[3] = &unk_100AFCCE8;
    v9[4] = a2;
    v10 = a3;
    sub_1000E4E40(a1 + 240, v9);
    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10056B280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056B294(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  for (i = *(a1 + 144); ; ++i)
  {
    if (i == *(a1 + 152))
    {
      v5 = 0;
      goto LABEL_8;
    }

    v5 = *i;
    v6 = sub_10053FCFC(*i);
    v7 = v6;
    if (v6)
    {
      if ([v6 isEqualToString:v3])
      {
        break;
      }
    }
  }

LABEL_8:
  sub_1000088CC(v9);

  return v5;
}

__n128 *sub_10056B370(uint64_t a1, uint64_t a2, _OWORD *a3, BOOL *a4, char *a5)
{
  memset(__len, 0, sizeof(__len));
  *a4 = 0;
  *a5 = 0;
  v31[0] = 0;
  v31[1] = 0;
  sub_100007F88(v31, a1 + 168);
  LODWORD(v27) = *a2;
  WORD2(v27) = *(a2 + 4);
  v10 = sub_1000E6554(a1, &v27, 1);
  v11 = v10[40].n128_u8[9];
  sub_100538104(v10, a3);
  sub_1005381EC(v10, *(a2 + 13), a3);
  sub_10056B7FC(a1, v10, *(a2 + 8));
  if (sub_1000295DC(v10))
  {
    LODWORD(v27) = 0;
    sub_1000D42DC(&v27, 0);
    sub_10054D528(v10, &v27);
  }

  sub_10000801C(v31);
  v12 = *(a2 + 16);
  if (v12 && *v12)
  {
    v30 = 0;
    sub_1000216B4(&v30);
    v13 = sub_10024A908(*(a2 + 16), &__len[1], __len, a5);
    sub_100022214(&v30);
    *a4 = sub_10054B7C4(v10, *(a2 + 16), 0xF0u);
    if (v13 || !*&__len[1] || (v14 = __len[0]) == 0)
    {
LABEL_41:
      sub_10002249C(&v30);
      goto LABEL_42;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (__len[0] >= 0x17u)
    {
      operator new();
    }

    HIBYTE(v29) = __len[0];
    memmove(&v27, *&__len[1], __len[0]);
    *(&v27 + v14) = 0;
    if (*a5 != 1)
    {
      sub_100538354(v10, &v27, a3);
LABEL_39:
      if (SHIBYTE(v29) < 0)
      {
        operator delete(v27);
      }

      goto LABEL_41;
    }

    sub_1000DEEA4(v10, &__p);
    v15 = v36;
    if ((v36 & 0x80u) == 0)
    {
      v16 = v36;
    }

    else
    {
      v16 = *(&__p + 1);
    }

    v17 = HIBYTE(v29);
    if (v29 < 0)
    {
      v17 = v28;
    }

    if (v16 == v17)
    {
      if ((v36 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v29 >= 0)
      {
        v19 = &v27;
      }

      else
      {
        v19 = v27;
      }

      v20 = memcmp(p_p, v19, v16) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_29:
        if (v20)
        {
          sub_100538494(v10, &v27, a3);
          v21 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v10, &__p);
            v22 = (v36 & 0x80u) == 0 ? &__p : __p;
            *buf = 136446210;
            v34 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending 'name changed' event for device %{public}s", buf, 0xCu);
            if (v36 < 0)
            {
              operator delete(__p);
            }
          }

          if (qword_100B50AC0 != -1)
          {
            sub_10084376C();
          }

          sub_100594AA0(off_100B50AB8, v10, 0xFFFFFFFFLL, 0, 701, 0);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v20 = 1;
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(__p);
    goto LABEL_29;
  }

LABEL_42:
  v23 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, &v27);
    v24 = v29 >= 0 ? &v27 : v27;
    LODWORD(__p) = 136446210;
    *(&__p + 4) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Discovered device %{public}s", &__p, 0xCu);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10084376C();
  }

  sub_100598044(off_100B50AB8, v10);
  if (v11)
  {
    v25 = sub_10042FE9C();
    sub_100416F50(v25, v10);
  }

  sub_1000088CC(v31);
  return v10;
}

void sub_10056B79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a18);
  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void sub_10056B7FC(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v20 = 0;
  v21 = a3;
  v5 = sub_1005379CC(a2, &v20);
  v6 = sub_10056BEAC(v5, &v20, a2);
  v19 = v6;
  v7 = sub_10056BEAC(v6, &v21, a2);
  v18 = v7;
  *buf = 0;
  sub_100016250(buf);
  *&v17 = *buf;
  *(&v17 + 1) = *&buf[4];
  if (a3 && v7)
  {
    v8 = v20;
    if (v20 != a3)
    {
      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_10056CB30(&v18);
        v11 = sub_10056CB30(&v19);
        *buf = 67110146;
        *&buf[4] = a3;
        v23 = 2082;
        v24 = v10;
        v25 = 2082;
        v26 = "no";
        v27 = 1024;
        v28 = v8;
        v29 = 2082;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to set new class of device: %u, type: %{public}s, isBTDeviceTypeOverriden: %{public}s. Prior cached value is %u, %{public}s", buf, 0x2Cu);
      }

      sub_100538254(a2, v7, &v17);
      sub_10053C438(a2, a3, &v17);
      sub_10056C58C(v7, buf);
      sub_100538354(a2, buf, &v17);
      if (SBYTE3(v26) < 0)
      {
        operator delete(*buf);
      }

      sub_10053AD0C(a2, a3);
    }
  }

  else
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10056CB30(&v18);
      sub_1000E5A58(a2, __p);
      v14 = v16 >= 0 ? __p : __p[0];
      *buf = 67109634;
      *&buf[4] = a3;
      v23 = 2080;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not setting new class of %u, type %s for device %{public}s because it is invalid", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10056BA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056BA80(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  sub_1000DE474(&v19 + 1);
  BYTE2(v20) = 0;
  BYTE4(v20) = 0;
  BYTE2(v22) = 0;
  BYTE4(v22) = 0;
  HIDWORD(v25[2]) = 0;
  v21 = 0uLL;
  *(&v20 + 1) = 0;
  LOBYTE(v22) = 0;
  v23 = 0uLL;
  *(&v22 + 1) = 0;
  LOBYTE(v24) = 0;
  v25[0] = 0;
  v25[1] = 0;
  *(&v24 + 1) = 0;
  *(&v25[1] + 7) = 0;
  LOBYTE(v25[3]) = 1;
  *(&v25[3] + 6) = 0;
  *(&v25[3] + 1) = 0;
  v26 = 0uLL;
  v25[5] = 0;
  LOBYTE(v27) = 0;
  *(&v27 + 2) = 0;
  if (!sub_100536A18(a2, &v19) || BYTE7(v26) != 1)
  {
    sub_1000DEEA4(a2, buf);
    v4 = BYTE1(v18);
    if ((v18 & 0x8000) != 0)
    {
      v4 = v15;
    }

    if (v4)
    {
      sub_1000DEEA4(a2, &v13);
      if (!std::string::compare(&v13, 0, 0xBuLL, "FLEXSMART X"))
      {
        v5 = 1;
      }

      else
      {
        sub_1000DEEA4(a2, &v12);
        if (!std::string::compare(&v12, "Car Kit"))
        {
          v5 = 1;
        }

        else
        {
          sub_1000DEEA4(a2, &v11);
          if (!std::string::compare(&v11, 0, 5uLL, "BTC45"))
          {
            v5 = 1;
          }

          else
          {
            sub_1000DEEA4(a2, &v10);
            v5 = std::string::compare(&v10, "Land Rover") == 0;
            if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v10.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if ((v18 & 0x8000) == 0)
      {
LABEL_26:
        if (v5)
        {
          goto LABEL_27;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v5 = 0;
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_26;
      }
    }

    operator delete(*buf);
    if (v5)
    {
LABEL_27:
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, buf);
        v8 = (v18 & 0x8000) == 0 ? buf : *buf;
        LODWORD(v13.__r_.__value_.__l.__data_) = 136315138;
        *(v13.__r_.__value_.__r.__words + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Car Stereo Type override due to name match (%s)", &v13, 0xCu);
        if (SBYTE1(v18) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_33;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_34;
  }

  LODWORD(v13.__r_.__value_.__l.__data_) = 0;
  LODWORD(v12.__r_.__value_.__l.__data_) = 0;
  LODWORD(v11.__r_.__value_.__l.__data_) = 0;
  LODWORD(v10.__r_.__value_.__l.__data_) = 0;
  sub_1000C2364(a2, &v13, &v12, &v11, &v10);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v13.__r_.__value_.__l.__data_;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = v12.__r_.__value_.__l.__data_;
    HIWORD(v15) = 1024;
    data = v11.__r_.__value_.__l.__data_;
    v17 = 1024;
    v18 = v10.__r_.__value_.__l.__data_;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Car Stereo Type override due to VID/PID. [VidSrc 0x%x, VID 0x%x, PID 0x%x, version 0x%x]", buf, 0x1Au);
  }

LABEL_33:
  v6 = 22;
LABEL_34:
  if (SHIBYTE(v25[1]) < 0)
  {
    operator delete(*(&v24 + 1));
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(*(&v22 + 1));
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  nullsub_21(&v19 + 1);
  return v6;
}

void sub_10056BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100320BE8(&a39);
  _Unwind_Resume(a1);
}

uint64_t sub_10056BEAC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  result = sub_10056BA80(a1, a3);
  if (result)
  {
    return result;
  }

  v5 = v3 & 0xFC;
  v6 = ((v3 & 0x1F00u) - 256) >> 8;
  if (v6 > 3)
  {
    if (((v3 & 0x1F00u) - 256) >> 8 > 5)
    {
      if (v6 == 6)
      {
        v16 = v5 - 4;
        if (v16 < 0x14)
        {
          return (v16 >> 2) + 42;
        }
      }

      else if (v6 == 7)
      {
        v12 = v5 - 4;
        if (v12 == 16)
        {
          v13 = 40;
        }

        else
        {
          v13 = 6;
        }

        if (v12 == 12)
        {
          return 41;
        }

        else
        {
          return v13;
        }
      }
    }

    else
    {
      if (v6 == 4)
      {
        v14 = sub_10000C798();
        if ((*(*v14 + 416))(v14))
        {
          v15 = (v3 & 0x24) == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          return 49;
        }

        if ((v3 & 0x40) != 0)
        {
          return 24;
        }

        v7 = (v3 & 0x3C) - 4;
        if (v7 < 0x18)
        {
          v8 = &unk_1008A9FD0;
          return *&v8[v7];
        }

        if ((v3 & 0x80) != 0)
        {
          return 25;
        }

        else
        {
          return 4;
        }
      }

      if (v6 == 5)
      {
        if ((v3 & 0x10) != 0)
        {
          v9 = 35;
        }

        else
        {
          v9 = 5;
        }

        if ((v3 & 0x20) != 0)
        {
          v10 = 33;
        }

        else
        {
          v10 = v9;
        }

        if ((v3 & 0x40) != 0)
        {
          v11 = 32;
        }

        else
        {
          v11 = v10;
        }

        if ((v3 & 0x80) != 0)
        {
          return 31;
        }

        else
        {
          return v11;
        }
      }
    }

    return 0;
  }

  if (((v3 & 0x1F00u) - 256) >> 8 <= 1)
  {
    if (!v6)
    {
      v7 = v5 - 4;
      if (v7 < 0x18)
      {
        v8 = &unk_1008A9F5C;
        return *&v8[v7];
      }

      return 1;
    }

    if (v6 == 1)
    {
      v7 = v5 - 4;
      if (v7 < 0x14)
      {
        v8 = &unk_1008A9F74;
        return *&v8[v7];
      }

      return 2;
    }

    return 0;
  }

  if (v6 == 2)
  {
    return 15;
  }

  if (v6 != 3)
  {
    return 0;
  }

  v7 = v5 - 4;
  if (v7 < 0x48)
  {
    v8 = &unk_1008A9F88;
    return *&v8[v7];
  }

  return 3;
}

uint64_t sub_10056C0AC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  if (qword_100B512C8 != -1)
  {
    sub_100843984();
  }

  if (sub_10000EE78(off_100B512C0) != 1)
  {
    return 202;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100843998();
  }

  v5 = atomic_load(off_100B508E8 + 232);
  if (v5)
  {
    v6 = sub_10000C798();
    if ((*(*v6 + 848))(v6) == 1)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10084380C();
      }

      v7 = sub_10059A02C(off_100B50A98);
    }

    else
    {
      v7 = sub_1005491CC(a2);
    }

    v9 = v7;
    result = 0;
    *a3 = v9;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008439AC();
    }

    return 1;
  }

  return result;
}

uint64_t sub_10056C1D8(uint64_t a1, __n128 *a2, uint64_t a3)
{
  if (qword_100B512C8 != -1)
  {
    sub_100843984();
  }

  if (sub_10000EE78(off_100B512C0) != 1)
  {
    return 202;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100843998();
  }

  v5 = atomic_load(off_100B508E8 + 232);
  if (v5)
  {
    v6 = sub_10000C798();
    if ((*(*v6 + 848))(v6) == 1)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10084380C();
      }

      sub_1005A5F38(off_100B50A98, a3);
    }

    else
    {
      sub_100546748(a2, a3);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008439E8();
    }

    return 1;
  }
}

uint64_t sub_10056C300(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v22 = 0;
  v21 = 1;
  if (v8)
  {
    if (qword_100B50940 != -1)
    {
      sub_100843A24();
    }

    sub_1000E3788(off_100B50938, v8, &v21, &v22);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 1024;
      v26 = a4;
      v27 = 1024;
      v28 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeviceManager Set Spatial Mode: bundleID: %@, mode: %u head Tracking %d", buf, 0x18u);
    }

    if (qword_100B50940 != -1)
    {
      sub_100843A38();
    }

    sub_1006392D4(off_100B50938, v8, a4, a5);
    *buf = 0;
    v20 = 0;
    v19 = 0;
    sub_1000C2364(a2, buf, &v20 + 1, &v20, &v19);
    if (qword_100B50940 != -1)
    {
      sub_100843A38();
    }

    v10 = *(off_100B50938 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10056C528;
    v12[3] = &unk_100AFCCC8;
    v13 = v8;
    v14 = v22;
    v15 = a4;
    v17 = v21;
    v18 = a5;
    v16 = v20;
    dispatch_async(v10, v12);
  }

  return 0;
}

void sub_10056C528(uint64_t a1)
{
  if (qword_100B50940 != -1)
  {
    sub_100843A24();
  }

  v2 = off_100B50938;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = *(a1 + 52);
  v7 = *(a1 + 53);

  sub_100638C28(v2, v3, v4, v5, v6, v7);
}

std::string *sub_10056C58C@<X0>(int a1@<W1>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_100007E30(a2, "Misc");
  v4 = "Laptop";
  switch(a1)
  {
    case 1:
    case 7:
      v4 = "Computer";
      break;
    case 2:
      v4 = "Phone";
      break;
    case 3:
      v4 = "Audio";
      break;
    case 4:
      v4 = "Peripheral";
      break;
    case 5:
      v4 = "Imaging";
      break;
    case 6:
      v4 = "Toy";
      break;
    case 8:
      return std::string::assign(a2, v4);
    case 9:
    case 10:
    case 14:
    case 15:
    case 18:
    case 21:
    case 22:
    case 23:
      goto LABEL_5;
    case 11:
      v4 = "PDA";
      break;
    case 12:
      v4 = "Mobile Phone";
      break;
    case 13:
      v4 = "Cordless Phone";
      break;
    case 16:
      v4 = "Headset";
      break;
    case 17:
      v4 = "Handsfree";
      break;
    case 19:
      v4 = "Speaker";
      break;
    case 20:
      v4 = "Headphones";
      break;
    case 24:
      v4 = "Keyboard";
      break;
    case 25:
      v4 = "Mouse";
      break;
    default:
      if (a1 == 49)
      {
        v4 = "Trackpad";
      }

      else
      {
LABEL_5:
        v4 = "Misc";
      }

      break;
  }

  return std::string::assign(a2, v4);
}

void sub_10056C6D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10056C6F0(uint64_t a1)
{
  v2 = sub_10000C798();
  if (!(*(*v2 + 416))(v2))
  {
    return 0;
  }

  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 168);
  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v16);
  v3 = __p;
  v4 = v14;
  while (1)
  {
    if (v3 == v4)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = *v3;
    if (sub_1000295DC(*v3))
    {
      if (sub_10054E104(v5))
      {
        break;
      }
    }

    ++v3;
  }

  v7 = 1;
LABEL_10:
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 168);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 136);
    *buf = 67109376;
    v18 = v9;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DeviceManager:: compute Classic incompatible device: curr %u, new %u", buf, 0xEu);
  }

  v10 = *(a1 + 136);
  v6 = v10 != v7;
  if (v10 != v7)
  {
    *(a1 + 136) = v7;
  }

  sub_1000088CC(v12);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  sub_1000088CC(v16);
  return v6;
}

void sub_10056C898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10056C908(uint64_t a1)
{
  v2 = sub_10000C798();
  if ((*(*v2 + 416))(v2))
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 168);
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100843A60(a1, v3);
    }

    v4 = *(a1 + 136);
    sub_1000088CC(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10056C9B8(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  if (*(a1 + 304) != a2)
  {
    *(a1 + 304) = a2;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100007F20(&v7, (a1 + 144));
    sub_10000801C(v10);
    v4 = v7;
    if (v7 != v8)
    {
      do
      {
        v5 = *v4;
        if (sub_1000E2140(*v4, 32))
        {
          if (sub_1000E5DB8(v5) != 2)
          {
            sub_100546280(v5, 1);
          }

          sub_100546604(v5);
        }

        ++v4;
      }

      while (v4 != v8);
      v4 = v7;
    }

    if (v4)
    {
      v8 = v4;
      operator delete(v4);
    }
  }

  return sub_1000088CC(v10);
}

void sub_10056CA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10056CAC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6, int a7)
{
  sub_100540ADC(a2, a4);
  sub_100540C60(a2, a5);
  sub_100540CF0(a2, a6);
  sub_100540D80(a2, a7);
  sub_10053E630(a2);
  return 0;
}

const char *sub_10056CB30(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0x31)
  {
    return "Unknown";
  }

  else
  {
    return off_100AFCEC8[v1];
  }
}

void sub_10056CB60(uint64_t a1, void *a2)
{
  v2 = a2;
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
    if (!v4)
    {
      goto LABEL_64;
    }

    if (qword_100B508D0 != -1)
    {
      sub_100843ADC();
    }

    v5 = sub_100046458(off_100B508C8, v4, 0);
    if (qword_100B508F0 != -1)
    {
      sub_100843998();
    }

    v6 = sub_1000504C8(off_100B508E8, v5, 0);
    if (!v6)
    {
      goto LABEL_64;
    }

    CFDictionaryGetDouble();
    v8 = v7;
    CFDictionaryGetDouble();
    v10 = v9;
    if (v9 <= 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v8 / v9 * 100.0);
    }

    if (v11 >= 100)
    {
      v12 = 100;
    }

    else
    {
      v12 = v11;
    }

    CFStringGetTypeID();
    v34 = CFDictionaryGetTypedValue();
    v13 = CBPowerSourcePartIDFromString();
    if (v10 == v8 || CFDictionaryGetInt64())
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    Int64 = CFDictionaryGetInt64();
    v16 = CFDictionaryGetInt64();
    v17 = CFDictionaryGetInt64();
    v35 = v6;
    v18 = v12 & ~(v12 >> 31);
    if (Int64)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14;
    }

    if (v16)
    {
      v19 = 5;
    }

    if (v17)
    {
      v20 = 4;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v11 <= 0;
    }

    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 2;
    }

    if (v13 == 5)
    {
      v23 = v34;
      if (v11 <= 0)
      {
        goto LABEL_63;
      }

      v32 = 0;
      v33 = 0;
      LOBYTE(v20) = 0;
      v24 = 0;
    }

    else
    {
      v23 = v34;
      if (v13 == 3)
      {
        if (v11 > 0)
        {
          v33 = 0;
          LOBYTE(v20) = 0;
          v32 = v18;
          v25 = 1;
          v24 = v22;
          goto LABEL_42;
        }

LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      if (v13 == 2)
      {
        if (v11 > 0)
        {
          v33 = v18;
          LOBYTE(v20) = 0;
          LODWORD(v32) = 0;
          BYTE4(v32) = v22;
          v24 = 0;
          v25 = 1;
LABEL_42:
          v18 = 0;
          v22 = 0;
LABEL_51:
          v27 = sub_1000DEB14(v35);
          v28 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v29 = CBDeviceTypeToString();
            v30 = "no";
            *buf = 136315650;
            v37 = v29;
            if (v25)
            {
              v30 = "yes";
            }

            *v38 = 2112;
            *&v38[2] = v2;
            *&v38[10] = 2080;
            v39 = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received GATT %s battery update with details: %@, LR %s", buf, 0x20u);
          }

          if ((v27 & 0xFFFFFFFB) == 0x10)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }

          v23 = v34;
          if (v31 == 1)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100843B04();
            }

            sub_100787390(off_100B508C8, v4, 2369);
          }

          *buf = HIDWORD(v33);
          LOBYTE(v37) = v20;
          *(&v37 + 1) = 0;
          BYTE3(v37) = 0;
          HIDWORD(v37) = v33;
          v38[0] = BYTE4(v32);
          *&v38[1] = 0;
          v38[3] = 0;
          *&v38[4] = v32;
          v38[8] = v24;
          *&v38[9] = 0;
          v38[11] = 0;
          LODWORD(v39) = v18;
          BYTE4(v39) = v22;
          *(&v39 + 5) = 0;
          HIBYTE(v39) = 0;
          sub_10053F554(v35, buf);
          goto LABEL_63;
        }

        goto LABEL_63;
      }

      if (v11 > 0)
      {
        LODWORD(v33) = 0;
        HIDWORD(v33) = v18;
        v32 = 0;
        v24 = 0;
        v25 = 0;
        LOBYTE(v20) = v22;
        goto LABEL_42;
      }

      v26 = v35;
      if (sub_100540848(v35))
      {
        sub_100540800(v35, 0);
        if (qword_100B50AD0 != -1)
        {
          sub_100843AF0();
          v26 = v35;
        }

        HIDWORD(v33) = sub_1005E807C(off_100B50AC8, v26);
      }

      else
      {
        HIDWORD(v33) = 0;
      }

      LODWORD(v33) = 0;
      v32 = 0;
      v24 = 0;
      v18 = 0;
      v22 = 0;
    }

    v25 = 0;
    goto LABEL_51;
  }

LABEL_65:
}

uint64_t sub_10056D064(uint64_t result, int a2, int a3)
{
  if (a2 == 1)
  {
    v4 = result;
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, result + 168);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_100007F20(&v8, (v4 + 144));
    sub_10000801C(v11);
    v5 = v8;
    v6 = v9;
    if (v8 != v9)
    {
      do
      {
        v7 = *v5;
        if (!sub_100539FE8(*v5) && (sub_100543D44(v7) & 1) == 0)
        {
          v7[583] = a3 == 1;
        }

        if (v7[1016] == 1)
        {
          sub_10056D17C(v4, a3, v7);
        }

        ++v5;
      }

      while (v5 != v6);
      v5 = v8;
    }

    if (v5)
    {
      v9 = v5;
      operator delete(v5);
    }

    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10056D14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

void sub_10056D17C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v30 = a3;
  v29 = 0;
  sub_1000D42DC(&v29, 0);
  v6 = v29;
  v7 = sub_10054857C(a3);
  if (a2 == 1)
  {
    v8 = v7;
    v9 = a1 + 280;
    v10 = *(a1 + 280);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = a1 + 280;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a3;
      v14 = v12 < a3;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 == v9 || *(v11 + 32) > a3)
    {
LABEL_13:
      buf.__r_.__value_.__r.__words[0] = &v30;
      *(sub_1005702E4(a1 + 272, &v30) + 40) = 0;
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter repopulating fGuestDevices after boot up", &buf, 2u);
      }
    }

    v16 = v6 - v8;
    v17 = *(a1 + 296);
    if (v17)
    {
      v18 = v17 / 1000;
    }

    else
    {
      v18 = 480;
    }

    v19 = v18 - v16;
    if (v18 >= v16)
    {
      if (!sub_1000C0348(v30))
      {
        v22 = *(a1 + 272);
        if (v22 != v9)
        {
          v23 = *(v22 + 32);
          v24 = qword_100BCE8D8;
          if (v23)
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v23, &buf);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = buf.__r_.__value_.__r.__words[0];
              }

              v26 = 1000 * v19;
              *v31 = 136446466;
              v32 = p_buf;
              v33 = 2048;
              v34 = 1000 * v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Wireless Splitter starting linkkey timeout for guest device %{public}s with timeout %llums", v31, 0x16u);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v26 = 1000 * v19;
            }

            buf.__r_.__value_.__r.__words[0] = &v30;
            *(sub_1005702E4(a1 + 272, &v30) + 40) = 1;
            sub_10056E7F0(a1, 1, v26);
          }

          else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100843B2C();
          }
        }
      }
    }

    else
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Wireless Splitter bt powered on, guest device needs to be deleted", &buf, 2u);
      }

      memset(&buf, 0, sizeof(buf));
      v21 = sub_100007E30(&buf, "WS_ERROR_DISCONNECTION_GUEST_NEEDS_DELETION");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = sub_100008904(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf;
      }

      sub_10056AE78(v21, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100843848();
      }

      sub_1006E0DBC(off_100B50F80, v30);
      sub_100075DC4((a1 + 272), &v30);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (!a2 && sub_1000C0348(a3))
  {
    sub_1005485C4(v30, &v29);
  }
}

void sub_10056D50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_10056D550(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 144));
  sub_10000801C(v9);
  if (v6 == v7)
  {
    v2 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  LODWORD(v2) = 0;
  v3 = v6;
  do
  {
    v4 = *v3++;
    v2 = v2 + *(v4 + 1178);
  }

  while (v3 != v7);
  if (v6)
  {
LABEL_5:
    v7 = v6;
    operator delete(v6);
  }

LABEL_6:
  sub_1000088CC(v9);
  return v2;
}

void sub_10056D5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D61C(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 144));
  sub_10000801C(v9);
  if (v6 == v7)
  {
    v2 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  v3 = v6;
  do
  {
    v4 = *v3++;
    v2 += *(v4 + 1396);
  }

  while (v3 != v7);
  if (v6)
  {
LABEL_5:
    v7 = v6;
    operator delete(v6);
  }

LABEL_6:
  sub_1000088CC(v9);
  return v2;
}

void sub_10056D6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D6E8(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2) && sub_1000C0348(v5) && sub_1000E2C08(v5))
    {
      v4 = (v4 + sub_10053C974(v5));
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_9:
    v8 = v2;
    operator delete(v2);
  }

LABEL_10:
  sub_1000088CC(v10);
  return v4;
}

void sub_10056D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D7F0(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2) && sub_1000C0348(v5) && sub_1000E2C08(v5) && ((sub_10053C944(v5) & 1) != 0 || sub_10053C950(v5)))
    {
      v4 = (v4 + 1);
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_11:
    v8 = v2;
    operator delete(v2);
  }

LABEL_12:
  sub_1000088CC(v10);
  return v4;
}

void sub_10056D8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D908@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 168);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_100007F20(&v20, (a1 + 144));
  sub_10000801C(v23);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = v20;
  v7 = v21;
  if (v20 != v21)
  {
    do
    {
      v8 = *v6;
      v18 = 0;
      v19 = v8;
      v17 = 0;
      v9 = sub_1000C2364(v8, &v18 + 1, &v18, &v17 + 1, &v17);
      if (v18 == 76)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10 == 1 && HIDWORD(v17) == a2)
      {
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E5A58(v19, __p);
          v13 = v16 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v25 = v13;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "getDevicesForAppleProductID for CaseSerial adding %{public}s", buf, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1000C2484(a3, &v19);
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = v20;
  }

  if (v6)
  {
    v21 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v23);
}

void sub_10056DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a21);
  _Unwind_Resume(a1);
}

void sub_10056DB18(const void **a1@<X1>, void *a2@<X8>)
{
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007E30(v17, "Bluetooth Mouse M336/M337/M535");
  v25 = xmmword_1008A9F20;
  v26 = 325704422;
  sub_1000C90A0(v16, &v25, 20);
  sub_10056F694(__dst, v17, v16);
  sub_100007E30(v14, "Bluetooth Mouse M557");
  v23 = xmmword_1008A9F34;
  v24 = 601617057;
  sub_1000C90A0(v13, &v23, 20);
  sub_10056F694(v28, v14, v13);
  sub_100007E30(v11, "Microsoft Sculpt Comfort Mouse");
  v21 = xmmword_1008A9F48;
  v22 = 2014317364;
  sub_1000C90A0(__p, &v21, 20);
  sub_10056F694(v29, v11, __p);
  sub_10056FD58(&v19, __dst, 3);
  for (i = 0; i != -18; i -= 6)
  {
    v5 = &__dst[i];
    v6 = v29[i + 3];
    if (v6)
    {
      v5[16] = v6;
      operator delete(v6);
    }

    if (*(v5 + 119) < 0)
    {
      operator delete(v5[12]);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v7 = sub_1000463C8(&v19, a1);
  if (v20 == v7)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v9 = *(v7 + 56);
    v8 = *(v7 + 64);
    if (v8 != v9)
    {
      sub_1000C9104(a2, v8 - v9);
    }
  }

  sub_100570048(&v19, v20[0]);
}

void sub_10056DDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  v39 = -144;
  v40 = v37;
  do
  {
    v40 = sub_10056DECC(v40) - 48;
    v39 += 48;
  }

  while (v39);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10056DECC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_10056DF10(uint64_t a1, const void **a2)
{
  v18 = xmmword_1008A9F20;
  v19 = 325704422;
  sub_1000C90A0(v20, &v18, 20);
  v17 = 601617057;
  v16 = xmmword_1008A9F34;
  sub_1000C90A0(v21, &v16, 20);
  v15 = 2014317364;
  v14 = xmmword_1008A9F48;
  sub_1000C90A0(v22, &v14, 20);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_1005700A4(&v11, v20, &v23, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    v4 = v22[i];
    if (v4)
    {
      v22[i + 1] = v4;
      operator delete(v4);
    }
  }

  v5 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    v8 = a2;
    v7 = *a2;
    v9 = v8[1] - v7;
    while (*(v5 + 8) - *v5 != v9 || memcmp(*v5, v7, v9))
    {
      v5 += 24;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  v20[0] = &v11;
  sub_100570238(v20);
  return v5 != v6;
}

void sub_10056E0A0(_Unwind_Exception *exception_object)
{
  v3 = (v1 - 56);
  v4 = -72;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_10056E10C(uint64_t a1)
{
  if (sub_1005FD038() && (os_variant_is_darwinos() & 1) == 0)
  {
    v2 = +[AVSystemController sharedInstance];
    v3 = [v2 attributeForKey:AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteAttribute];
    v4 = [v3 BOOLValue] ^ 1;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting KeepAudioInHeadphones shouldMitigate to: %d", v6, 8u);
    }

    atomic_store(v4, (a1 + 320));
  }
}

uint64_t sub_10056E250(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Device Manager -------------------", &v6, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Devices:", &v6, 2u);
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 144));
  sub_10000801C(v9);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    do
    {
      sub_10054E600(*v3++);
    }

    while (v3 != v4);
    v3 = v6;
  }

  if (v3)
  {
    v7 = v3;
    operator delete(v3);
  }

  return sub_1000088CC(v9);
}

void sub_10056E368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10056E398(uint64_t a1)
{
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 168);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_100007F20(&v22, (a1 + 144));
  sub_10000801C(v25);
  v2 = v22;
  v3 = v23;
  if (v22 != v23)
  {
    while (1)
    {
      v4 = *v2;
      if (sub_1000C0348(*v2))
      {
        break;
      }

LABEL_29:
      if (++v2 == v3)
      {
        v2 = v22;
        goto LABEL_31;
      }
    }

    if (qword_100B50AD0 != -1)
    {
      sub_100843B68();
    }

    v5 = sub_1005D09A8(off_100B50AC8, v4);
    if (v5)
    {
      v6 = sub_100320F4C(v5 + 400);
    }

    else
    {
      v6 = 0;
    }

    v21 = 0;
    if (sub_10023DB58(v4 + 128, &v21))
    {
      v7 = 0;
    }

    else
    {
      v7 = *v21;
    }

    __chkstk_darwin();
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v20 = 0;
    v19 = 0;
    if (sub_10053A438(v4))
    {
      LODWORD(__src[0]) = 0;
      sub_1000C2364(v4, __src, &v20 + 1, &v20, &v19);
    }

    v12[0] = 7;
    v12[1] = v7;
    sub_1000075EC(&v12[2], v4 + 128, 6uLL);
    v12[5] = v6;
    v12[6] = WORD2(v20);
    v12[7] = v20;
    v12[8] = v19;
    LOBYTE(v12[9]) = sub_10054F768(v4) ^ 1;
    HIBYTE(v12[9]) = sub_1000E35FC(v4);
    LOBYTE(v12[10]) = sub_1000E35FC(v4) >> 8;
    sub_1000DEEA4(v4, __src);
    v8 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v8 = __src[1];
    }

    if (v8 > 0x4F)
    {
      v9 = 79;
      if ((v18 & 0x80) == 0)
      {
LABEL_25:
        sub_1000DEEA4(v4, __src);
        if (v18 < 0)
        {
          v10 = __src[0];
          memmove(&v12[10] + 1, __src[0], v9);
          operator delete(v10);
        }

        else
        {
          memcpy(&v12[10] + 1, __src, v9);
        }

        sub_1001C4B48(v12, (v9 + 21));
        goto LABEL_29;
      }
    }

    else
    {
      sub_1000DEEA4(v4, &v14);
      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = v15;
      }

      if ((v16 & 0x80) != 0)
      {
        operator delete(v14);
      }

      if ((v18 & 0x80) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(__src[0]);
    goto LABEL_25;
  }

LABEL_31:
  if (v2)
  {
    v23 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v25);
}

void sub_10056E680(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  sub_1000088CC(v1 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_10056E6F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceManager init, first unlock delay expired, allow read/write device settings", v6, 2u);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, v1 + 168);
  atomic_store(1u, (v1 + 232));
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  while (v3 != v4)
  {
    sub_100533704(*v3++);
  }

  sub_10000801C(v6);
  sub_100569EDC(v1);
  if (qword_100B508A0 != -1)
  {
    sub_100843664();
  }

  sub_100575548(off_100B50898);
  return sub_1000088CC(v6);
}

void sub_10056E7F0(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2 || qword_100B6EFC8)
  {
    if (a2)
    {
      v7 = sub_100017F4C();
      v8 = qword_100B6EFC8;

      sub_10008E008(v7, a3, v8);
    }

    else
    {
      if (qword_100B6EFC8)
      {
        dispatch_block_cancel(qword_100B6EFC8);
        v9 = qword_100B6EFC8;
      }

      else
      {
        v9 = 0;
      }

      qword_100B6EFC8 = 0;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10056EA10;
    block[3] = &unk_100ADF8F8;
    block[4] = a1;
    v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    v5 = qword_100B6EFC8;
    qword_100B6EFC8 = v4;

    v6 = sub_100017F4C();
    sub_10008E008(v6, a3, qword_100B6EFC8);
  }
}

void *sub_10056E904(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    abort();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10056E954(uint64_t a1)
{
  v2 = a1 + 280;
  sub_10000CEDC(a1 + 272, *(a1 + 280));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter cleanUpGuestDevice due to unpairing  fGuestDevicesSize is %lu", &v4, 0xCu);
  }
}

void sub_10056EA10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 288);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter linkkey timeout check, fGuestDevicesSize is %lu", &buf, 0xCu);
  }

  if (*(v1 + 288))
  {
    v4 = *(v1 + 272);
    if (*(v4 + 40) == 1)
    {
      v5 = *(v4 + 32);
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, &buf);
        v7 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v11 = 136446210;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter linkkey timeout reached, guest device %{public}s needs to be deleted", v11, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      memset(&buf, 0, sizeof(buf));
      v8 = sub_100007E30(&buf, "WS_ERROR_DISCONNECTION_LINK_KEY_TIMEOUT_REACHED");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        v8 = sub_100008904(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf;
      }

      sub_10056AE78(v8, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100843848();
      }

      sub_1006E0DBC(off_100B50F80, v5);
      sub_10056E954(v1);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_10056EBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10056EC28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1000504C8(a1, a3, 1);
  if (v7)
  {
    v8 = v7;
    if (qword_100B50AA0 != -1)
    {
      sub_10084380C();
    }

    v9 = sub_1000DD584(off_100B50A98, a2, 10000);
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v8, __p);
      v11 = v17 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v19 = v11;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ACL connected aclConnectCfm for device %s status %d", buf, 0x12u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1005421F4(v8, v9, a4);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10056EEB4;
    v14[3] = &unk_100AFCCE8;
    v14[4] = v8;
    v15 = v9;
    sub_1000E4E40(a1 + 240, v14);
    if (sub_10002223C())
    {
      v12 = sub_1000BE4B4();
      sub_100007E30(__p, "_DENY_INCOMING_CLASSIC_CONNECTION_");
      (*(*v12 + 792))(v12, v8, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10054FD60(v8))
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Querying KeepAudioInHeadphones shouldMitigate value due to aclConnected", __p, 2u);
      }

      sub_10056E10C(a1);
    }
  }
}

void sub_10056EE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10056EEE8(uint64_t a1)
{
  v13 = 0;
  sub_1000216B4(&v13);
  if (sub_10023D840(&unk_100B548D8) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100843B90();
  }

  sub_100022214(&v13);
  if (_os_feature_enabled_impl() && sub_1005FD038() && (os_variant_is_darwinos() & 1) == 0)
  {
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering for KeepAudioInHeadphones notifications", buf, 2u);
    }

    v14 = AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification;
    v3 = [NSArray arrayWithObjects:&v14 count:1];
    v4 = +[AVSystemController sharedInstance];
    [v4 setAttribute:v3 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification;
    v7 = +[AVSystemController sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10056F168;
    v11[3] = &unk_100AFCD28;
    v11[4] = a1;
    v8 = [v5 addObserverForName:v6 object:v7 queue:0 usingBlock:v11];
    v9 = *(a1 + 312);
    *(a1 + 312) = v8;
  }

  return sub_10002249C(&v13);
}

void sub_10056F168(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteDidChangeNotificationParameter_IsAllowed];
  v7 = [v6 BOOLValue];

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 ^= 1u;
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received new update for KeepAudioInHeadphones shouldMitigate: %d", v9, 8u);
  }

  else
  {
    LOBYTE(v7) = v7 ^ 1;
  }

  atomic_store(v7, (v4 + 320));
}

uint64_t sub_10056F2AC(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 168);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_100007F20(&v12, (a1 + 144));
  sub_10000801C(v15);
  v2 = v12;
  v3 = v13;
  if (v12 != v13)
  {
    do
    {
      v4 = *v2;
      v11 = 0;
      v5 = sub_1000BE4B4();
      sub_100007E30(__p, "_DENY_INCOMING_CLASSIC_CONNECTION_");
      v6 = (*(*v5 + 784))(v5, v4, __p, &v11) == 0;
      v7 = v11;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v6 & v7) != 0)
      {
        sub_100550080(v4, v11);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v12;
  }

  if (v2)
  {
    v13 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v15);
}

void sub_10056F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

_BYTE *sub_10056F428(void *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceManager::stackWillStop enter", buf, 2u);
  }

  v14 = 0;
  sub_1000216B4(&v14);
  if (sub_10023D934(&unk_100B548D8) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100843C00();
  }

  sub_10023E774();
  sub_100022214(&v14);
  *buf = 0;
  v13 = 0;
  sub_100007F88(buf, (a1 + 21));
  v4 = a1[18];
  for (i = a1[19]; v4 != i; v4 += 8)
  {
    v5 = (*(*v4 + 128) << 40) | (*(*v4 + 129) << 32) | (*(*v4 + 130) << 24) | (*(*v4 + 131) << 16) | (*(*v4 + 132) << 8) | *(*v4 + 133);
    if (v5)
    {
      v6 = sub_100017F4C();
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10056F668;
      v11[3] = &unk_100AE0860;
      v11[4] = a1;
      v11[5] = v5;
      sub_10000CA94(v6, v11);
      i = a1[19];
    }
  }

  if (a1[39])
  {
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:a1[39]];
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DeviceManager::stackWillStop exit", v10, 2u);
  }

  sub_1000088CC(buf);
  return sub_10002249C(&v14);
}

void sub_10056F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  sub_10002249C((v10 - 81));
  _Unwind_Resume(a1);
}

void *sub_10056F694(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    sub_1000C9104((__dst + 3), v6);
  }

  return __dst;
}

void sub_10056F72C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056F748(int a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = (*a3 << 40) | (a3[1] << 32) | (a3[2] << 24) | (a3[3] << 16) | (a3[4] << 8) | a3[5];
  v5 = *(a2 + 327);
  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10056F808;
  v7[3] = &unk_100AF2A50;
  v8 = a1;
  v7[4] = v4;
  v9 = v5;
  sub_10000CA94(v6, v7);
}

void sub_10056F808(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device connected connectCfmCb status %d", v4, 8u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100843CE4();
  }

  sub_10056EC28(off_100B508E8, *(a1 + 40), *(a1 + 32), *(a1 + 44));
}

void *sub_10056FD58(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10056FDDC(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10056FDDC(void *a1, uint64_t a2, const void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100086A74(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_10056FE7C();
  }

  return v3;
}

uint64_t sub_10056FEF4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10056FFF0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10056FF40(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v6)
  {
    sub_1000C9104((__dst + 3), v5 - v6);
  }

  return __dst;
}

void sub_10056FFD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056FFF0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100570048(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100570048(a1, *a2);
    sub_100570048(a1, a2[1]);
    sub_10056FFF0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1005700A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100570104(result, a4);
  }

  return result;
}

void sub_100570104(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100570150(a1, a2);
  }

  sub_1000C7698();
}

void sub_100570150(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_1005701A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        sub_1000C9104(a4, v6 - *v5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_100570238(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10057028C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10057028C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_1005702E4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100570420(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  v17 = 0uLL;
  v6 = *a1;
  if (v6 == 16)
  {
LABEL_6:
    result = sub_10007A930(a1, &v17);
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100843D0C(a1, v8);
    }

    goto LABEL_6;
  }

  v16 = 0;
  result = sub_10007A930(a1, &v16);
  v17 = xmmword_1008A3890;
  WORD1(v17) = v16;
LABEL_7:
  v9 = 0;
  v10 = &v17;
  v11 = 15;
  do
  {
    v12 = v11;
    v9 ^= *v10;
    v13 = 8;
    do
    {
      v14 = 2 * v9;
      v15 = v9;
      v9 = (2 * v9) ^ 9;
      if (v15 >= 0)
      {
        v9 = v14;
      }

      --v13;
    }

    while (v13);
    v10 = (v10 + 1);
    v11 = v12 - 1;
  }

  while (v12);
  *a2 = (v9 >> 3) & 0xF;
  *a3 = v9 & 7;
  return result;
}

uint64_t sub_100570558(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  for (i = 0; a4; --a4)
  {
    v5 = *a3++;
    i = byte_1008A9FE8[(v5 ^ i)];
  }

  return (*(a1 + (i >> 3)) >> (i & 7)) & 1;
}

uint64_t sub_10057059C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  for (i = 0; a4; --a4)
  {
    v5 = *a3++;
    i = byte_1008A9FE8[(v5 ^ i)];
  }

  v6 = i >> 3;
  v7 = i & 7;
  v8 = *(a1 + v6);
  v9 = 1 << v7;
  if ((v9 & v8) != 0)
  {
    return 0;
  }

  *(a1 + v6) = v8 | v9;
  return 1;
}

void *sub_1005705FC(void *a1, int a2, unsigned int a3, unsigned int a4)
{
  *a1 = &off_100AFD068;
  v8 = (a1 + 1);
  global_queue = dispatch_get_global_queue(21, 0);
  sub_100321440(v8, a1, "com.apple.BTServer.pbap", global_queue);
  v10 = a2 - 3;
  if ((a2 - 3) >= 7 || ((0x5Fu >> v10) & 1) == 0)
  {
    v14 = sub_10000E92C();
    sub_100693F74(v14, 0);
  }

  v11 = (&off_100AFD090)[v10];
  sub_100321480(v8);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "kArgType", v11);
  xpc_dictionary_set_uint64(v12, "kArgOffset", a3);
  xpc_dictionary_set_uint64(v12, "kArgCount", a4);
  sub_1003216CC(v8, "Open", v12, 0);
  return a1;
}

void *sub_10057073C(void *a1)
{
  *a1 = &off_100AFD068;
  sub_10032147C(a1 + 1);
  return a1;
}

void sub_100570780(void *a1)
{
  *a1 = &off_100AFD068;
  sub_10032147C(a1 + 1);

  operator delete();
}

void sub_1005707E4(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100570854;
  v1[3] = &unk_100ADF8F8;
  v1[4] = a1;
  sub_100321530(a1 + 8, v1);
}

uint64_t sub_100570854(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_100570884(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100570950;
  v3[3] = &unk_100ADF8D8;
  v3[4] = &v4;
  sub_1003217F4(a1 + 8, "GetSize", 0, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100570938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100570950(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "kValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100570990(uint64_t a1, unsigned int a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "kArgIndex", a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100570A94;
  v7[3] = &unk_100ADF8D8;
  v7[4] = &v8;
  sub_1003217F4(a1 + 8, "GetRecentCall", v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_100570A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100570C88(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

void sub_100570C90(uint64_t a1, dispatch_qos_class_t a2)
{
  if (*(a1 + 8))
  {
    v4 = qword_100BCEA60;
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
    {
      sub_100843DDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, a2, 0);
  *(a1 + 8) = dispatch_queue_create(*a1, v13);
  if (qword_100B548F8 != -1)
  {
    sub_100843E54();
  }

  sub_1005712B8(qword_100B548F0, *(a1 + 8));
}

uint64_t sub_100570E38()
{
  if (qword_100B6F018 != -1)
  {
    sub_100843EB8();
  }

  return qword_100B6F010;
}

uint64_t sub_100570F18()
{
  if (qword_100B6F038 != -1)
  {
    sub_100843EE0();
  }

  return qword_100B6F030;
}

uint64_t sub_10057104C()
{
  if (qword_100B6F068 != -1)
  {
    sub_100843F1C();
  }

  return qword_100B6F060;
}

uint64_t sub_1005710D8()
{
  if (qword_100B6F078 != -1)
  {
    sub_100843F30();
  }

  return qword_100B6F070;
}

void sub_100571164(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (qword_100B548F8 != -1)
    {
      sub_100843F44();
    }

    sub_100571380(qword_100B548F0, *(a1 + 8));
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_1005711EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B6EFD8 != -1)
  {
    sub_100843DC8();
  }

  if (qword_100B6EFD0 == a1)
  {
    v4 = qword_100BCEA60;
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
    {
      sub_100843F58(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  dispatch_async_and_wait(*(a1 + 8), v3);
}

const char *sub_10057127C(const char **a1)
{
  result = dispatch_queue_get_label(0);
  if (result)
  {
    return (strcmp(result, *a1) == 0);
  }

  return result;
}

void sub_1005712B8(NSObject **a1, dispatch_queue_t queue)
{
  if (dispatch_queue_get_qos_class(queue, 0) >= QOS_CLASS_DEFAULT)
  {
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
    {
      sub_100843FD0(queue);
    }

    v4 = *a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005716D0;
    v5[3] = &unk_100AE0860;
    v5[4] = a1;
    v5[5] = queue;
    dispatch_async(v4, v5);
  }
}

void sub_100571380(NSObject **a1, dispatch_queue_t queue)
{
  if (dispatch_queue_get_qos_class(queue, 0) >= QOS_CLASS_DEFAULT)
  {
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
    {
      sub_10084404C(queue);
    }

    v4 = *a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100571710;
    v5[3] = &unk_100AE0860;
    v5[4] = a1;
    v5[5] = queue;
    dispatch_sync(v4, v5);
  }
}

void sub_100571448(uint64_t a1, NSObject *a2)
{
  if (!atomic_fetch_add((a1 + 56), 1u))
  {
    sub_10042DC64(&v6, (a1 + 24));
    v4 = v6;
    v6 = 0uLL;
    v5 = *(a1 + 48);
    *(a1 + 40) = v4;
    if (v5)
    {
      sub_100117644(v5);
      if (*(&v6 + 1))
      {
        sub_100117644(*(&v6 + 1));
      }
    }
  }

  sub_1000709DC(a1, a2);
}

void sub_1005714C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 24);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v4 = 0;
  }

  if (atomic_fetch_add((a1 + 56), 0xFFFFFFFF) == 1)
  {
    v5 = *(a1 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (v5)
    {
      sub_100117644(v5);
    }
  }

  if (v4)
  {
    sub_100117644(v4);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005715A0(_Unwind_Exception *a1)
{
  sub_100117644(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void *sub_1005715BC(void *a1)
{
  a1[2] = 0;
  a1[1] = a1 + 2;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[3] = 0;
  a1[4] = a1 + 5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100571670;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6F080 != -1)
  {
    dispatch_once(&qword_100B6F080, block);
  }

  return a1;
}

void sub_100571670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_DEFAULT, 0);
  *v1 = dispatch_queue_create("com.apple.bluetooth.DispatcherWatchdog", v3);

  sub_100071524(v1);
}

void *sub_1005716D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1000452CC(v1 + 8, (a1 + 40));
  ++*(v1 + 56);
  return result;
}

uint64_t sub_100571710(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_100075DC4((v1 + 8), (a1 + 40));
  --*(v1 + 56);
  return result;
}

void sub_10057174C(uint64_t a1)
{
  dispatch_assert_queue_V2(*a1);
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_ERROR))
  {
    sub_1008440C8();
  }

  v2 = *(a1 + 8);
  if (v2 != (a1 + 16))
  {
    v3 = qword_100BCEA60;
    do
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        label = dispatch_queue_get_label(v2[4]);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = label;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
        v3 = qword_100BCEA60;
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a1 + 16));
  }

  memset(&buf, 0, sizeof(buf));
  sub_100007E30(&buf, "BT Stuck on ");
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_ERROR))
  {
    sub_100844108();
  }

  v8 = *(a1 + 32);
  if (v8 != (a1 + 40))
  {
    do
    {
      v9 = v8[4];
      v10 = qword_100BCEA60;
      if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_ERROR))
      {
        sub_100844148(v23, v9, &v24, v10);
      }

      v11 = dispatch_queue_get_label(v9);
      std::string::append(&buf, v11);
      std::string::append(&buf, " ");
      v12 = v8[1];
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
          v13 = v8[2];
          v6 = *v13 == v8;
          v8 = v13;
        }

        while (!v6);
      }

      v8 = v13;
    }

    while (v13 != (a1 + 40));
  }

  WriteStackshotReport_stdc();
  if (qword_100B53FE8 != -1)
  {
    sub_1008441B4();
  }

  v14 = qword_100B53FE0;
  sub_100007E30(v21, "DispatcherWatchdog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(__p, p_buf);
  sub_1005780BC(v14, v21, __p, 0.0);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (qword_100B6F090 != -1)
  {
    sub_1008441DC();
  }

  if (byte_100B6F088 == 1)
  {
    sub_1000D660C();
    v17 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = buf.__r_.__value_.__r.__words[0];
    }

    qword_100B55118 = v17;
    v18 = sub_10000E92C();
    sub_100693F74(v18, 0);
  }

  v16 = qword_100BCEA60;
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
  {
    sub_100844204(&buf.__r_.__value_.__r.__words[2] + 7, &buf, v16);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_100571A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_100571AF4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "DispatcherWatchdog");
  sub_100007E30(__p, "enableCrash");
  (*(*v1 + 72))(v1, v4, __p, &byte_100B6F088);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_100571B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

unint64_t sub_100571C4C(uint64_t a1, unint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 104);
  if (!a2)
  {
    goto LABEL_16;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v4 = sub_100076290(qword_100B50B80, a2);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 168);
  for (i = *(a1 + 176); v6 != i; i = *(a1 + 176))
  {
    v7 = *v6;
    if (*v6 == a2)
    {
      goto LABEL_17;
    }

    if (qword_100B50B88 != -1)
    {
      sub_100844390();
    }

    if (sub_100076290(qword_100B50B80, v7) == v4)
    {
      goto LABEL_17;
    }

    ++v6;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v9 = sub_1006185D8(qword_100B50B80, v4);
  if (v9)
  {
    sub_1000C2484(a1 + 168, &v9);
    v7 = v9;
  }

  else
  {
LABEL_16:
    v7 = 0;
  }

LABEL_17:
  sub_1000088CC(v10);
  return v7;
}

void sub_100571D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_100571D90(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_100571E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100571E5C(uint64_t a1, unint64_t a2, int a3)
{
  v16[1] = 0;
  v17 = a2;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 584);
  v6 = a1 + 648;
  if (a3)
  {
    for (i = *(a1 + 656); ; i = *(i + 8))
    {
      if (i == v6)
      {
        goto LABEL_8;
      }

      if (*(i + 16) == a2)
      {
        break;
      }
    }

    if (i == v6)
    {
LABEL_8:
      operator new();
    }
  }

  else
  {
    sub_100574DB0(a1 + 648, &v17);
  }

  sub_10000801C(v16);
  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v8 = sub_1000117DC(qword_100B50B80, v17);
  if (v8)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v8, __p);
      v10 = __p[0];
      v11 = "off";
      if (v15 >= 0)
      {
        v10 = __p;
      }

      if (a3)
      {
        v11 = "on";
      }

      *buf = 136446466;
      v19 = v10;
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %{public}s wants connectability %{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  v12 = sub_1005A1174(off_100B50A98);
  sub_1000088CC(v16);
  return v12;
}

void sub_10057205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100572080(uint64_t a1, unint64_t a2, int a3)
{
  v16[1] = 0;
  v17 = a2;
  v16[0] = 0;
  sub_100007F88(v16, a1 + 584);
  v6 = a1 + 672;
  if (a3)
  {
    for (i = *(a1 + 680); ; i = *(i + 8))
    {
      if (i == v6)
      {
        goto LABEL_8;
      }

      if (*(i + 16) == a2)
      {
        break;
      }
    }

    if (i == v6)
    {
LABEL_8:
      operator new();
    }
  }

  else
  {
    sub_100574DB0(a1 + 672, &v17);
  }

  sub_10000801C(v16);
  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v8 = sub_1000117DC(qword_100B50B80, v17);
  if (v8)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v8, __p);
      v10 = __p[0];
      v11 = "off";
      if (v15 >= 0)
      {
        v10 = __p;
      }

      if (a3)
      {
        v11 = "on";
      }

      *buf = 136446466;
      v19 = v10;
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %{public}s wants discoverability %{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  v12 = sub_1005A221C(off_100B50A98);
  sub_1000088CC(v16);
  return v12;
}

void sub_100572280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005722A4(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 512);
  v4 = *(a1 + 576);
  if (v4 && *v4 == a2)
  {
    operator delete();
  }

  sub_1000088CC(v6);
  return 7;
}

uint64_t sub_100572324(uint64_t a1)
{
  *a1 = off_100AFD2D0;
  *(a1 + 8) = off_100AFD3B0;
  *(a1 + 16) = off_100AFD3D8;
  *(a1 + 24) = off_100AFD418;
  *(a1 + 32) = &off_100AFD438;
  *(a1 + 40) = off_100AFD450;
  *(a1 + 48) = off_100AFD480;
  *(a1 + 56) = off_100AFD540;
  *(a1 + 64) = off_100AFD560;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100044BBC(a1 + 104);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC(a1 + 192);
  *(a1 + 256) = a1 + 256;
  *(a1 + 264) = a1 + 256;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  sub_100044BBC(a1 + 288);
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  sub_100044BBC(a1 + 424);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  sub_100044BBC(a1 + 512);
  *(a1 + 576) = 0;
  sub_100044BBC(a1 + 584);
  *(a1 + 648) = a1 + 648;
  *(a1 + 656) = a1 + 648;
  *(a1 + 664) = 0;
  *(a1 + 672) = a1 + 672;
  *(a1 + 680) = a1 + 672;
  *(a1 + 688) = 0;
  return a1;
}

void sub_10057250C(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 512);
  v6 = *(v1 + 488);
  if (v6)
  {
    *(v1 + 496) = v6;
    operator delete(v6);
  }

  sub_10007A068(v1 + 424);
  if (*(v1 + 423) < 0)
  {
    operator delete(*(v1 + 400));
  }

  if (*(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  sub_10007A068(v1 + 288);
  sub_100028EB4(v2);
  sub_10007A068(v4 + 3);
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 176) = v7;
    operator delete(v7);
  }

  sub_10007A068(v1 + 104);
  v8 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005725D4(uint64_t a1)
{
  *a1 = off_100AFD2D0;
  *(a1 + 8) = off_100AFD3B0;
  *(a1 + 16) = off_100AFD3D8;
  *(a1 + 24) = off_100AFD418;
  *(a1 + 32) = &off_100AFD438;
  *(a1 + 40) = off_100AFD450;
  *(a1 + 48) = off_100AFD480;
  *(a1 + 56) = off_100AFD540;
  *(a1 + 64) = off_100AFD560;
  sub_100028EB4((a1 + 672));
  sub_100028EB4((a1 + 648));
  sub_10007A068(a1 + 584);
  sub_10007A068(a1 + 512);
  v2 = *(a1 + 488);
  if (v2)
  {
    *(a1 + 496) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 424);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  sub_10007A068(a1 + 288);
  sub_100028EB4((a1 + 256));
  sub_10007A068(a1 + 192);
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 104);
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1005727C8(uint64_t a1)
{
  sub_1005725D4(a1);

  operator delete();
}

void sub_100572800(uint64_t a1)
{
  sub_1005725D4(a1 - 16);

  operator delete();
}

uint64_t sub_10057283C(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 8);
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  sub_1006DC960(off_100B50F80, a1 + 16);
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1 + 32);
  if (qword_100B50C68 != -1)
  {
    sub_100844444();
  }

  sub_10072A35C(off_100B50C60, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_100844458();
  }

  sub_100749B80(off_100B508A8, a1 + 48, 0);
  v2 = sub_100017E6C();
  sub_1005689CC(v2 + 344, a1 + 56);
  v3 = sub_1000154A8();
  (*(*v3 + 128))(v3, a1 + 64);
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 288);
  v4 = sub_10000C798();
  v5 = (a1 + 352);
  if ((*(*v4 + 8))(v4, a1 + 352))
  {
    std::string::assign((a1 + 352), "Unknown");
  }

  v6 = sub_10000C798();
  v7 = (a1 + 376);
  if ((*(*v6 + 32))(v6, a1 + 376, 1))
  {
    std::string::assign((a1 + 376), "Unknown");
  }

  v8 = (a1 + 400);
  std::string::assign((a1 + 400), "Apple Inc.");
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 375) < 0)
    {
      v5 = *v5;
    }

    if (*(a1 + 399) < 0)
    {
      v7 = *v7;
    }

    if (*(a1 + 423) < 0)
    {
      v8 = *v8;
    }

    *buf = 136446722;
    v13 = v5;
    v14 = 2082;
    v15 = v7;
    v16 = 2082;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Model: %{public}s, Version: %{public}s, Manufacturer: %{public}s", buf, 0x20u);
    v9 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v13 = "/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/LocalDevice.mm";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  return sub_1000088CC(v11);
}

uint64_t sub_100572B88(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 8);
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  sub_1006DCA90(off_100B50F80, a1 + 16);
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  sub_10007A3F0(off_100B512C0 + 80, a1 + 32);
  if (qword_100B50C68 != -1)
  {
    sub_100844444();
  }

  sub_10072A3C8(off_100B50C60, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_100844458();
  }

  sub_100749C8C(off_100B508A8, a1 + 48);
  v2 = sub_100017E6C();
  sub_100568C6C(v2 + 344, a1 + 56);
  v3 = sub_1000154A8();
  v4 = (*(*v3 + 136))(v3, a1 + 64);
  sub_100572D98(v4, 0);
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 288);
  v5 = *(a1 + 168);
  if (v5 != *(a1 + 176))
  {
    do
    {
      v6 = *v5;
      if (qword_100B50B88 != -1)
      {
        sub_100844390();
      }

      sub_1006189DC(qword_100B50B80, v6);
      if (qword_100B50B88 != -1)
      {
        sub_100844390();
      }

      sub_100618E84(qword_100B50B80, v6);
      ++v5;
    }

    while (v5 != *(a1 + 176));
    v5 = *(a1 + 168);
  }

  *(a1 + 176) = v5;
  return sub_1000088CC(v8);
}

uint64_t sub_100572D98(uint64_t a1, char a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v3 = off_100B512C0;

  return sub_10057A044(v3, a2);
}

uint64_t sub_100572DEC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 424);
  v8 = *(a1 + 488);
  v9 = *(a1 + 496);
  v15 = *a3;
  v16 = *(a3 + 2);
  if (v8 != v9)
  {
    while (1)
    {
      if (*v8 == a2)
      {
        v10 = v15 == v8[1] && *(&v15 + 1) == v8[2];
        if (v10 && v16 == v8[3])
        {
          break;
        }
      }

      v8 += 6;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_13:
    v15 = *a3;
    v16 = *(a3 + 2);
    v14 = a2;
    v17 = -1;
    v18 = a4;
    sub_100577210((a1 + 488), &v14);
  }

  sub_1000088CC(v13);
  return 0;
}

uint64_t sub_100572EE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 424);
  v12 = *a3;
  v13 = *(a3 + 2);
  v6 = *(a1 + 488);
  v7 = *(a1 + 496);
  v11 = a2;
  v8 = sub_1005774F4(v6, v7, &v11);
  if (v8 != *(a1 + 496))
  {
    *(a1 + 496) = v8;
  }

  sub_1000088CC(v10);
  return 0;
}

uint64_t sub_100572FC0(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 512);
  if (!*(a1 + 576))
  {
    v4 = 0;
    v2 = sub_10000C7D0();
    (*(*v2 + 176))(v2, &v4);
    operator new();
  }

  sub_1000088CC(v5);
  return 101;
}

void sub_10057308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005730A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 512);
  v6 = *(a1 + 576);
  if (v6 && *v6 == a2)
  {
    v8 = sub_10000C7D0();
    v7 = (*(*v8 + 176))(v8, a3);
  }

  else
  {
    v7 = 7;
  }

  sub_1000088CC(v10);
  return v7;
}

uint64_t sub_100573154(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 512);
  if (!*(a1 + 576))
  {
    operator new();
  }

  sub_1000088CC(v3);
  return 101;
}

uint64_t sub_100573204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 512);
  v14 = *(a1 + 576);
  if (v14 && *v14 == a2)
  {
    v17 = sub_100017E6C();
    if ((*(*v17 + 184))(v17, a3))
    {
      v18 = sub_10000C7D0();
      v15 = (*(*v18 + 1200))(v18, a3, a4, a5, a6, a7);
    }

    else
    {
      v15 = 205;
    }
  }

  else
  {
    v15 = 7;
  }

  sub_1000088CC(v19);
  return v15;
}

uint64_t sub_100573328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 512);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): readEnhancedPowerStatsPerCore", v16, 2u);
  }

  v9 = *(a1 + 576);
  if (v9 && *v9 == a2)
  {
    v13 = sub_100017E6C();
    if ((*(*v13 + 184))(v13, a3))
    {
      v14 = sub_10000C7D0();
      v11 = (*(*v14 + 1648))(v14, a3, a4);
    }

    else
    {
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readEnhancedPowerStatsPerCore) can't read power profile stats: BT_ERROR_LOCAL_DEVICE_NOT_READY", v16, 2u);
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
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readEnhancedPowerStatsPerCore) BT_ERROR_INVALID_HANDLE", v16, 2u);
    }

    v11 = 7;
  }

  sub_1000088CC(v17);
  return v11;
}

void sub_1005734D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005734E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 512);
  v14 = *(a1 + 576);
  if (v14 && *v14 == a2)
  {
    if (a3 == 1)
    {
      v16 = sub_10000C7D0();
      (*(*v16 + 1224))(v16);
    }

    v17 = sub_10000C7D0();
    v15 = (*(*v17 + 1216))(v17, a4, a5, a6, a7);
  }

  else
  {
    v15 = 7;
  }

  sub_1000088CC(v19);
  return v15;
}

uint64_t sub_100573608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v35[0] = 0;
  v35[1] = 0;
  sub_100007F88(v35, a1 + 512);
  v25 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): readDetailedPowerProfileStatistics", buf, 2u);
  }

  v26 = *(a1 + 576);
  if (v26 && *v26 == a2)
  {
    v30 = sub_100017E6C();
    if ((*(*v30 + 184))(v30, a3))
    {
      v31 = sub_10000C7D0();
      v28 = (*(*v31 + 1232))(v31, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
      if (a3)
      {
        v32 = sub_10000C7D0();
        (*(*v32 + 1240))(v32);
      }
    }

    else
    {
      v33 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readDetailedPowerProfileStatistics) can't read power profile stats: BT_ERROR_LOCAL_DEVICE_NOT_READY", buf, 2u);
      }

      v28 = 205;
    }
  }

  else
  {
    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readDetailedPowerProfileStatistics) BT_ERROR_INVALID_HANDLE", buf, 2u);
    }

    v28 = 7;
  }

  sub_1000088CC(v35);
  return v28;
}

void sub_100573838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10057384C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 192);
  *(a2 + 35) = 0;
  *(a2 + 19) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 9218;
  *(a2 + 2) = 2;
  *(a2 + 3) = *(a1 + 280);
  v6 = a1 + 256;
  for (i = *(a1 + 264); i != v6; i = *(i + 8))
  {
    sub_10057059C(a2 + 4, 256, *(*(i + 16) + 8), *(*(i + 16) + 16));
  }

  *a3 = 36;
  sub_1000088CC(v9);
  return 1;
}

uint64_t sub_100573910(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 192);
  v2 = *(a1 + 272);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100573958(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 192);
  if ((a1 + 256) != a2)
  {
    sub_1005775C0(a2, *(a1 + 264), a1 + 256);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005739C8(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 192);
  *a2 = *(a1 + 280);
  return sub_1000088CC(v5);
}

uint64_t sub_100573A14(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, unint64_t a6)
{
  v6 = 3;
  if (a6 && a4 && a3 && a5)
  {
    v17[0] = 0;
    v17[1] = 0;
    sub_100007F88(v17, a1 + 192);
    for (i = *(a1 + 264); i != a1 + 256; i = *(i + 8))
    {
      v13 = *(i + 16);
      if (*(v13 + 16) >= a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = *(v13 + 16);
      }

      if (!memcmp(*(v13 + 8), a3, v14))
      {
        v15 = *(v13 + 32) >= a6 ? a6 : *(v13 + 32);
        if (!memcmp(*(v13 + 24), a5, v15))
        {
          goto LABEL_20;
        }
      }
    }

    if (*(a1 + 272) < 0x1FuLL)
    {
      ++*(a1 + 280);
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084446C();
    }

LABEL_20:
    v6 = 1;
    sub_1000088CC(v17);
  }

  return v6;
}

uint64_t sub_100573CD8(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 192);
  for (i = *(a1 + 264); i != a1 + 256; i = *(i + 8))
  {
    v13 = *(i + 16);
    v16 = v13;
    if (*v13 == a2 && *(v13 + 16) == a4 && !memcmp(*(v13 + 8), a3, a4) && *(v13 + 32) == a6 && !memcmp(*(v13 + 24), a5, a6))
    {
      sub_100571D90(a1 + 256, &v16);
      v14 = v16;
      if (v16)
      {
        *(v16 + 16) = 0;
        free(*(v14 + 8));
        *(v14 + 8) = 0;
        *(v14 + 32) = 0;
        free(*(v14 + 24));
        *(v14 + 24) = 0;
        operator delete();
      }

      break;
    }
  }

  ++*(a1 + 280);
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  if (sub_1005A4070(off_100B50A98) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008444A0();
  }

  if (qword_100B50AC0 != -1)
  {
    sub_1008443E0();
  }

  if (sub_100598334() && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008444D4();
  }

  sub_1000088CC(v17);
  return 0;
}

void sub_100573EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100573EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = 0;
  v12 = 0;
  v15 = 0;
  v14 = 255;
  if (sub_10023DC00(a2, &v12))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100844508();
    }
  }

  else
  {
    if (qword_100B508F0 != -1)
    {
      sub_10084453C();
    }

    v10 = v12;
    v11 = v13;
    v7 = sub_1000E6554(off_100B508E8, &v10, 0);
    if (v7)
    {
      v8 = v7;
      if (a3)
      {
        v14 = *a4;
        v15 = *(a4 + 8);
      }

      if (qword_100B508A0 != -1)
      {
        v9 = v7;
        sub_100844564();
        v8 = v9;
      }

      sub_100574034(off_100B50898, a1, v8, &v14);
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084458C();
    }
  }
}

uint64_t sub_100574034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 424);
  v7 = *(a1 + 488);
  v8 = *(a1 + 496);
  if (v7 != v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_100577904(&v13, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4));
    sub_10000801C(v16);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v18 = 10;
      v19 = 2096;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending AFH map changed event to local device listeners %{AFHMap}.10P", buf, 0x12u);
    }

    v10 = v13;
    if (v13 != v14)
    {
      while (1)
      {
        if (v10[3])
        {
          if (!a3)
          {
            goto LABEL_20;
          }

          if (qword_100B508F0 != -1)
          {
            sub_10084453C();
          }

          if (!sub_10056A4C4(off_100B508E8, *v10, a3))
          {
LABEL_20:
            v10 = v13;
            break;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100844390();
          }

          if (sub_100076290(qword_100B50B80, *v10))
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008445C0();
            }

            operator new();
          }

          sub_100007FB8(v16);
          v11 = sub_100576F84(*(a1 + 488), *(a1 + 496), *v10);
          if (v11 != *(a1 + 496))
          {
            *(a1 + 496) = v11;
          }

          sub_10000801C(v16);
        }

        v10 += 6;
        if (v10 == v14)
        {
          goto LABEL_20;
        }
      }
    }

    if (v10)
    {
      v14 = v10;
      operator delete(v10);
    }
  }

  return sub_1000088CC(v16);
}

void sub_10057430C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100574348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) != 1)
  {
    return 202;
  }

  v12 = 0;
  sub_1000216B4(&v12);
  v10 = sub_10024DE9C(nullsub_370, a3, v4, v5, v6, v7, v8, v9);
  sub_100022214(&v12);
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008445E8();
    }

    v10 = 1;
  }

  sub_10002249C(&v12);
  return v10;
}

uint64_t sub_100574424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    v13 = 0;
    sub_1000216B4(&v13);
    if (sub_10023DB58(a3 + 128, &v14))
    {
      v4 = 312;
LABEL_15:
      sub_10002249C(&v13);
      return v4;
    }

    if (sub_10023E7FC() && *(v14 + 290) == 1)
    {
      sub_100022214(&v13);
      v17 = 0;
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v11 = sub_10000C7D0();
      if (!(*(*v11 + 1792))(v11, a3 + 128, &v16, v15, 1, 1))
      {
        v4 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v4 = sub_10024DECC(sub_100573EC8, v14, v5, v6, v7, v8, v9, v10);
      sub_100022214(&v13);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084461C();
    }

    v4 = 1;
    goto LABEL_15;
  }

  return 202;
}

uint64_t sub_1005745E0(uint64_t a1, char a2)
{
  sub_100574640(a1, 0, 0);
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v3 = off_100B512C0;

  return sub_100579C58(v3, a2);
}

uint64_t sub_100574640(uint64_t a1, unint64_t a2, int a3)
{
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  v6 = sub_1000117DC(qword_100B50B80, a2);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v7, __p);
      v9 = __p[0];
      v10 = "off";
      if (v13 >= 0)
      {
        v9 = __p;
      }

      if (a3)
      {
        v10 = "on";
      }

      *buf = 136446466;
      v15 = v9;
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %{public}s wants denylisting %{public}s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (sub_100574ECC() != a3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_1008443B8();
    }

    sub_1005A0484(off_100B50A98, a3);
    sub_1000971F4(a1, 10, 0);
  }

  return 0;
}

uint64_t sub_1005747C8()
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v1 = off_100B512C0;

  return sub_10057A304(v1);
}

uint64_t sub_10057480C()
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v1 = off_100B512C0;

  return sub_10057A430(v1);
}

uint64_t sub_100574850(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0))
  {
    return 201;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315138;
    *&__p[4] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Displaying power prompt on behalf of application %s", __p, 0xCu);
  }

  v6 = sub_10000EE80();
  sub_100007E30(__p, a3);
  (*(*v6 + 32))(v6, __p);
  if (v8 < 0)
  {
    operator delete(*__p);
  }

  return 0;
}

void sub_100574978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057499C(uint64_t a1, _BYTE *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  *a2 = sub_10057A798(off_100B512C0);
  return 0;
}

void sub_1005749E8()
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v1 = off_100B50A98;

  sub_1005A9C9C(v1);
}

uint64_t sub_100574A2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v7 = off_100B50A98;

  return sub_1005AA094(v7, a2, a3, a4);
}

uint64_t sub_100574A98(uint64_t a1, int a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_1005AA244(v3, a2);
}

uint64_t sub_100574AEC()
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v1 = off_100B50A98;

  return sub_1005AA524(v1);
}

uint64_t sub_100574B30(uint64_t a1, _BYTE *a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_1005AA044(v3, a2);
}

uint64_t sub_100574B84(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_10009BE34(v3, a2);
}

uint64_t sub_100574BD8(uint64_t a1, std::string *a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_1005A2338(v3, a2);
}

uint64_t sub_100574C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 288);
  if (*(a1 + 375) < 0)
  {
    sub_100008904(a2, *(a1 + 352), *(a1 + 360));
  }

  else
  {
    *a2 = *(a1 + 352);
    *(a2 + 16) = *(a1 + 368);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100574CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 288);
  if (*(a1 + 399) < 0)
  {
    sub_100008904(a2, *(a1 + 376), *(a1 + 384));
  }

  else
  {
    *a2 = *(a1 + 376);
    *(a2 + 16) = *(a1 + 392);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100574D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 288);
  if (*(a1 + 423) < 0)
  {
    sub_100008904(a2, *(a1 + 400), *(a1 + 408));
  }

  else
  {
    *a2 = *(a1 + 400);
    *(a2 + 16) = *(a1 + 416);
  }

  return sub_1000088CC(v5);
}

void *sub_100574DB0(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_100574E68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

BOOL sub_100574E7C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 584);
  v2 = *(a1 + 664) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100574ECC()
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v1 = off_100B50A98;

  return sub_10006DBF8(v1);
}

uint64_t sub_100574F10(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_1000ADA24(off_100B50F60, &v44);
  v5 = v44;
  if (v44 == v45)
  {
    v9 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    while (a4 + v6)
    {
      sub_1000C23E0(*v5, &buf);
      if (v49 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      strlcpy(v7, p_buf, 0xF8uLL);
      if (v49 < 0)
      {
        operator delete(buf);
      }

      ++v5;
      --v6;
      v7 += 248;
      if (v5 == v45)
      {
        v9 = -v6;
        goto LABEL_16;
      }
    }

    v10 = qword_100BCE8D8;
    v9 = a4;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: More than %zu classic devices connected", &buf, 0xCu);
      v9 = a4;
    }
  }

LABEL_16:
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100844664();
  }

  v11 = sub_100029630(off_100B508A8);
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (!v12)
  {
    goto LABEL_80;
  }

  v13 = *v41;
  obj = v11;
  while (2)
  {
    v14 = 0;
    do
    {
      if (*v41 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v40 + 1) + 8 * v14);
      if (qword_100B508D0 != -1)
      {
        sub_10084468C();
      }

      v16 = off_100B508C8;
      sub_100007E30(__p, "IsAppleWatch");
      if (sub_10004EB40(v16, v15, __p))
      {
        goto LABEL_29;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084468C();
      }

      if (sub_100788ED8(off_100B508C8, v15))
      {
LABEL_29:
        v17 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10084468C();
        }

        v19 = off_100B508C8;
        sub_100007E30(v36, "A1603");
        if (sub_10004EB40(v19, v15, v36))
        {
          v17 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10084468C();
          }

          v20 = off_100B508C8;
          sub_100007E30(v34, "A2051");
          if (sub_10004EB40(v20, v15, v34))
          {
            v17 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10084468C();
            }

            v21 = off_100B508C8;
            sub_100007E30(v32, "A3085");
            if (sub_10004EB40(v21, v15, v32))
            {
              v17 = 1;
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_10084468C();
              }

              v22 = off_100B508C8;
              sub_100007E30(v30, "A2538");
              if (sub_10004EB40(v22, v15, v30))
              {
                v17 = 1;
              }

              else
              {
                if (qword_100B508D0 != -1)
                {
                  sub_10084468C();
                }

                sub_1000B006C(off_100B508C8, v15, &buf);
                v23 = *(&buf + 1);
                if (v49 >= 0)
                {
                  v23 = v49;
                }

                v17 = v23 != 0;
                if ((v49 & 0x8000000000000000) != 0)
                {
                  operator delete(buf);
                }
              }

              if (v31 < 0)
              {
                operator delete(v30[0]);
              }
            }

            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }

          if (v35 < 0)
          {
            operator delete(v34[0]);
          }
        }

        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      if (v39 < 0)
      {
        operator delete(__p[0]);
        if (v17)
        {
          goto LABEL_43;
        }
      }

      else if (v17)
      {
        goto LABEL_43;
      }

      if (v9 >= a4)
      {
        v25 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = a4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: More than %zu classic and/or LE devices connected", &buf, 0xCu);
        }

        v11 = obj;
        goto LABEL_80;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084468C();
      }

      sub_10004FFDC(off_100B508C8, v15, &buf);
      if (v49 >= 0)
      {
        v18 = &buf;
      }

      else
      {
        v18 = buf;
      }

      strlcpy(&a2[248 * v9], v18, 0xF8uLL);
      if (v49 < 0)
      {
        operator delete(buf);
      }

      ++v9;
LABEL_43:
      v14 = v14 + 1;
    }

    while (v12 != v14);
    v11 = obj;
    v24 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    v12 = v24;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_80:

  *a3 = v9;
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return 0;
}

BOOL sub_100575554(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 584);
  v2 = *(a1 + 688) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005755A4(uint64_t a1, BOOL *a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  *a2 = sub_1006E1A18();
  if (qword_100B508C0 != -1)
  {
    sub_1008446B4();
  }

  *a2 |= sub_1007B7738(off_100B508B8);
  return 0;
}

uint64_t sub_100575620(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_100530578(off_100B50F60, a2);
  return 0;
}

uint64_t sub_10057566C(uint64_t a1, BOOL *a2)
{
  if (qword_100B50C68 != -1)
  {
    sub_100844444();
  }

  *a2 = sub_10072C438(off_100B50C60);
  return 0;
}

uint64_t sub_1005756B8()
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    v5 = 0;
    sub_1000216B4(&v5);
    v0 = sub_1001C42E0();
    v1 = qword_100BCE8D8;
    if (v0)
    {
      v2 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Successfully started HCI tracing", v4, 2u);
        v2 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008446FC();
      }

      v2 = 1;
    }

    sub_10002249C(&v5);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008446C8();
    }

    return 1;
  }

  return v2;
}

uint64_t sub_1005757DC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    if (a3 && *a3)
    {
      v9 = sub_1000E2738();
      v10 = (*(*v9 + 72))(v9, a3);
      if (v10 < 0)
      {
        v11 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100844730(v10, v11);
        }
      }
    }

    else
    {
      v10 = -1;
    }

    if (!a5)
    {
      a4 = 0;
    }

    v17 = 0;
    sub_1000216B4(&v17);
    if (sub_1001C4528(a2, a4))
    {
      v12 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008447A8();
      }

      v12 = 1;
    }

    sub_100022214(&v17);
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully stopped HCI tracing", v16, 2u);
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v14 = sub_1000E2738();
      (*(*v14 + 80))(v14, v10);
    }

    sub_10002249C(&v17);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008446C8();
    }

    return 1;
  }

  return v12;
}

uint64_t sub_1005759E8(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  result = sub_1005A1174(off_100B50A98);
  if (!a3)
  {

    return sub_1000971F4(a1, 4, 0);
  }

  return result;
}

uint64_t sub_100575A64(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  result = sub_1005A1174(off_100B50A98);
  if (!a3)
  {

    return sub_1000971F4(a1, 4, 0);
  }

  return result;
}

uint64_t sub_100575B64(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 424);
  v2 = *(a1 + 488);
  v3 = *(a1 + 496);
  if (v2 != v3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    sub_100577904(&v9, v2, v3, 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 4));
    sub_10000801C(v12);
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending LE Test mode stopped event to local device listeners", v8, 2u);
    }

    v5 = v9;
    if (v9 != v10)
    {
      do
      {
        if (v5[2])
        {
          if (qword_100B50B88 != -1)
          {
            sub_100844390();
          }

          if (sub_100076290(qword_100B50B80, *v5))
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008445C0();
            }

            operator new();
          }

          sub_100007FB8(v12);
          v6 = sub_100576F84(*(a1 + 488), *(a1 + 496), *v5);
          if (v6 != *(a1 + 496))
          {
            *(a1 + 496) = v6;
          }

          sub_10000801C(v12);
        }

        v5 += 6;
      }

      while (v5 != v10);
      v5 = v9;
    }

    if (v5)
    {
      v10 = v5;
      operator delete(v5);
    }
  }

  return sub_1000088CC(v12);
}

void sub_100575DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100575E24()
{
  if (qword_100B50DB8 != -1)
  {
    sub_1008447DC();
  }

  if (sub_10009BA14(off_100B50DB0))
  {
    return 1;
  }

  if (qword_100B51078 != -1)
  {
    sub_1008447F0();
  }

  v1 = off_100B51070;

  return sub_1007A6D0C(v1);
}

uint64_t sub_100575E9C()
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
  v40 = 0u;
  *__p = 0u;
  memset(v38, 0, sizeof(v38));
  v36 = 0u;
  v37 = 0u;
  sub_100007AD0(&v36);
  v35 = 0;
  v34 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  sub_10009BE34(off_100B50A98, &v34);
  v0 = sub_100007774(&v37);
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  v1 = off_100B50A98 + 312;
  if (*(off_100B50A98 + 335) < 0)
  {
    v1 = *v1;
  }

  strlen(v1);
  v2 = sub_100007774(v0);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v31, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v4 = sub_100007774(&v37);
  v5 = sub_100007774(v4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v31, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v7 = sub_100007774(&v37);
  v8 = sub_100007774(v7);
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v31, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v10 = sub_100007774(&v37);
  strlen(CBHostVersion);
  v11 = sub_100007774(v10);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v31, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v31);
  std::ostream::put();
  std::ostream::flush();
  v13 = sub_100007774(&v37);
  locale = &v31;
  sub_1000BE6F8(&v34, &v31);
  if (v33 < 0)
  {
    locale = v31.__locale_;
  }

  strlen(locale);
  v15 = sub_100007774(v13);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&v52, &std::ctype<char>::id);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&v52);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31.__locale_);
  }

  v31.__locale_ = 0;
  v32 = 0;
  v33 = 0;
  v17 = sub_10009BD9C();
  if (!(*(*v17 + 64))(v17, &v31))
  {
    v18 = HIBYTE(v33);
    if (v33 < 0)
    {
      v18 = v32;
    }

    if (v18)
    {
      v19 = sub_100007774(&v37);
      v20 = sub_100007774(v19);
      std::ios_base::getloc((v20 + *(*v20 - 24)));
      v21 = std::locale::use_facet(&v52, &std::ctype<char>::id);
      (v21->__vftable[2].~facet_0)(v21, 10);
      std::locale::~locale(&v52);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v30 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  sub_100061E78(off_100B50A98, &v30);
  v29 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  sub_100062334(off_100B50A98, &v29);
  v22 = sub_100007774(&v37);
  v23 = sub_100007774(v22);
  v24 = sub_100007774(v23);
  v25 = sub_100007774(v24);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v52, &std::ctype<char>::id);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v52);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v31.__locale_);
  }

  *&v37 = v27;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100576688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  std::locale::~locale((v18 - 72));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100576900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100576928(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v15 = a2;
  v16 = WORD2(a2);
  v14 = 0;
  v13 = 0;
  sub_1000216B4(&v13);
  if (sub_10023DB58(&v15, &v14))
  {
    v10 = 312;
  }

  else
  {
    if (*(v14 + 278) == 1)
    {
      v11 = sub_1002A5A04();
    }

    else
    {
      v11 = sub_10024DD74(v14, a3, v4, v5, v6, v7, v8, v9);
    }

    if (v11)
    {
      v10 = 1;
    }

    else
    {
      sub_100022214(&v13);
      v10 = 0;
    }
  }

  sub_10002249C(&v13);
  return v10;
}

uint64_t sub_100576A78(unint64_t *a1)
{
  result = sub_100576B44(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_100576AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_100576B44(a1, *(a1 + 40));
  if (result)
  {
    return sub_10052CE3C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 52), a4);
  }

  return result;
}

BOOL sub_100576B44(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_100576BE8(unint64_t *a1)
{
  result = sub_100576B44(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_100576C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  result = sub_100576B44(a1, *(a1 + 40));
  if (result)
  {
    return sub_10052CE3C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 52), a4);
  }

  return result;
}

uint64_t sub_100576D04(unint64_t *a1)
{
  result = sub_100576B44(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

uint64_t sub_100576D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t), uint64_t a4)
{
  result = sub_100576B44(a1, *(a1 + 40));
  if (result)
  {
    return sub_10052CE54(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), a4);
  }

  return result;
}

uint64_t sub_100576EA8(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t sub_100576F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (*result != a3)
    {
      result += 48;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 48; i != a2; i += 48)
      {
        if (*i != a3)
        {
          *result = *i;
          v6 = *(i + 8);
          *(result + 24) = *(i + 24);
          *(result + 8) = v6;
          *(result + 32) = *(i + 32);
          *(result + 40) = *(i + 40);
          result += 48;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100577210(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100577278(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 40) = *(a2 + 40);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100577278(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_10057749C(a1, v6);
  }

  v7 = 48 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  v13 = 48 * v2 + 48;
  sub_10057740C(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 48) % 0x30uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1005773BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10057740C(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      v6 = *(v2 + 8);
      *(v5 + 24) = *(v2 + 24);
      *(v5 + 8) = v6;
      *(v5 + 32) = *(v2 + 32);
      *(v5 + 40) = *(v2 + 40);
      v2 += 48;
      v5 += 48;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

void sub_10057749C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_1005774F4(uint64_t a1, uint64_t a2, void *a3)
{
  result = a2;
  if (a1 != a2)
  {
    result = a1;
    while (1)
    {
      if (*a3 == *result)
      {
        v5 = a3[1] == *(result + 8) && a3[2] == *(result + 16);
        if (v5 && a3[3] == *(result + 24))
        {
          break;
        }
      }

      result += 48;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 48; i != a2; i += 48)
      {
        if (*a3 == *i)
        {
          v8 = a3[1] == *(i + 8) && a3[2] == *(i + 16);
          if (v8 && a3[3] == *(i + 24))
          {
            continue;
          }
        }

        *result = *i;
        v10 = *(i + 8);
        *(result + 24) = *(i + 24);
        *(result + 8) = v10;
        *(result + 32) = *(i + 32);
        *(result + 40) = *(i + 40);
        result += 48;
      }
    }
  }

  return result;
}

uint64_t *sub_1005775C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    i[2] = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return sub_100577610(a1, a1, a2, a3);
  }

  else
  {
    return sub_1000C1358(a1, i, a1);
  }
}

uint64_t sub_100577610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

uint64_t sub_100577904(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100577988(result, a4);
  }

  return result;
}

void sub_100577988(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10057749C(a1, a2);
  }

  sub_1000C7698();
}

void sub_100577AA4(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "TTRUI");
  sub_100007E30(__p, "Disable");
  (*(*v2 + 72))(v2, buf, __p, a1 + 12);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
  }

  v3 = sub_10000E92C();
  if (((*(*v3 + 8))(v3) & 1) == 0)
  {
    *(a1 + 12) = 1;
  }

  v4 = sub_10000E92C();
  sub_100007E30(buf, "TTRUIDisabledByUser");
  sub_100007E30(__p, "Disable");
  (*(*v4 + 128))(v4, buf, __p, a1 + 16);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 16);
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TTRUIDisabledByUser %d", buf, 8u);
  }

  if (qword_100B50910 != -1)
  {
    sub_100844804();
  }

  if (sub_1005BBA08(off_100B50908))
  {
    sub_100577CF8(a1);
  }

  else
  {
    sub_100577EDC(a1);
  }
}

void sub_100577CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100577CF8(uint64_t a1)
{
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  v1 = sub_10000E92C();
  sub_100007E30(v6, "BluetoothTTR");
  sub_100007E30(__p, "DeviceNameReadErrorTTRTriggeredThisBuild");
  (*(*v1 + 80))(v1, v6, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v2 = sub_10000E92C();
  sub_100007E30(v6, "BluetoothTTR");
  sub_100007E30(__p, "HighDutyScanTTRTriggeredThisBuild");
  (*(*v2 + 80))(v2, v6, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v3 = sub_10000E92C();
  sub_100007E30(v6, "BluetoothTTR");
  sub_100007E30(__p, "WakeLimitABCTriggeredThisBuild");
  (*(*v3 + 80))(v3, v6, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_100577E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_100577EDC(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(v7, "BluetoothTTR");
  sub_100007E30(__p, "DeviceNameReadErrorTTRTriggeredThisBuild");
  (*(*v2 + 72))(v2, v7, __p, a1 + 20);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v3 = sub_10000E92C();
  sub_100007E30(v7, "BluetoothTTR");
  sub_100007E30(__p, "HighDutyScanTTRTriggeredThisBuild");
  (*(*v3 + 72))(v3, v7, __p, a1 + 21);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v4 = sub_10000E92C();
  sub_100007E30(v7, "BluetoothTTR");
  sub_100007E30(__p, "WakeLimitABCTriggeredThisBuild");
  (*(*v4 + 72))(v4, v7, __p, a1 + 22);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_100578078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void sub_1005780BC(uint64_t a1, const void **a2, const void **a3, double a4)
{
  if (os_variant_is_recovery())
  {
    v8 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "BluetoothDiagnosticsManager: Skipping ABC trigger, we are in Recovery/NeRD mode";
    goto LABEL_4;
  }

  sub_100007E30(buf, "Power Anomaly");
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  v12 = v35;
  v13 = v35;
  if ((v35 & 0x80u) != 0)
  {
    v12 = v34;
  }

  if (v11 != v12 || (v10 >= 0 ? (v14 = a2) : (v14 = *a2), (v35 & 0x80u) == 0 ? (v15 = buf) : (v15 = *buf), memcmp(v14, v15, v11)))
  {
    v16 = 0;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  sub_100007E30(__p, "Bluetooth Wake Limit Reached");
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = a3[1];
  }

  v19 = v32;
  v20 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v19 = __p[1];
  }

  if (v18 != v19)
  {
    v16 = 0;
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v17 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if ((v32 & 0x80u) == 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  v16 = memcmp(v21, v22, v18) == 0;
  if (v20 < 0)
  {
LABEL_36:
    operator delete(__p[0]);
  }

LABEL_37:
  if ((v35 & 0x80) == 0)
  {
LABEL_19:
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(*buf);
  if (!v16)
  {
LABEL_46:
    v24 = objc_alloc_init(SDRDiagnosticReporter);
    if (*(a2 + 23) >= 0)
    {
      v25 = a2;
    }

    else
    {
      v25 = *a2;
    }

    v26 = [NSString stringWithUTF8String:v25];
    if (*(a3 + 23) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    v28 = [NSString stringWithUTF8String:v27];
    v29 = [v24 signatureWithDomain:@"Bluetooth" type:@"Networking" subType:v26 subtypeContext:v28 detectedProcess:@"bluetoothd" triggerThresholdValues:0];

    v36 = kSymptomDiagnosticKeyPayloadDEParameters;
    v37 = &off_100B34388;
    v30 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v24 snapshotWithSignature:v29 duration:0 events:v30 payload:0 actions:&stru_100AFD878 reply:a4];

    return;
  }

LABEL_39:
  if (*(a1 + 22) != 1)
  {
    *(a1 + 22) = 1;
    v23 = sub_10000E92C();
    sub_100007E30(buf, "BluetoothTTR");
    sub_100007E30(__p, "WakeLimitABCTriggeredThisBuild");
    (*(*v23 + 80))(v23, buf, __p, *(a1 + 22));
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (v35 < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_46;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "BluetoothDiagnosticsManager: Skipping Wake Limit ABC - we've already triggered it this build!";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }
}

void sub_100578450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005784D0(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = [v5 UTF8String];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ABC Snapshot successful with SessionID %s", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
    v8 = [v7 intValue];

    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString];
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084482C([v5 UTF8String], &v10, v8, v9);
    }
  }
}

void sub_100578694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100017F4C();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100578714;
  v6[3] = &unk_100AE0860;
  v6[4] = a1;
  v6[5] = a3;
  sub_10000CA94(v5, v6);
}

void sub_100578714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = "unknown";
    if (v4 == 1)
    {
      v5 = "Cancel";
    }

    if (!v4)
    {
      v5 = "File a Radar";
    }

    *buf = 136446466;
    *&buf[4] = v5;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BluetoothDiagnosticsManager: User responded with %{public}s (%ld) button ", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6 == 2)
  {
    *(v2 + 16) |= 1 << *(v2 + 8);
    v7 = sub_10000E92C();
    sub_100007E30(buf, "TTRUIDisabledByUser");
    sub_100007E30(__p, "Disable");
    (*(*v7 + 136))(v7, buf, __p, *(v2 + 16));
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(*buf);
    }

    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v2 + 16);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "set TTRUIDisabledByUser %d", buf, 8u);
    }
  }

  else if (!v6)
  {
    sub_100578944(v2);
  }

  CFRelease(*v2);
  *v2 = 0;
  *(v2 + 8) = 0;
}

void sub_100578908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100578944(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  if (v1 > 4)
  {
    v3 = @"\n 1. Were you attempting to connect out to a device? \n2. Were you expecting an incoming connection? \n3. Is the remote device that you were trying to connect to/from an Apple Device? \n4. Was this a Bluetooth Classic connection or a Bluetooth Low Energy Connection(BLE) connection? \n5. What is the Make/Model/Year of the remote device?\n6. Did you encounter a UI issue? \n7. Did you encounter an issue while trying to discover devices from Bluetooth Settings? \n\n Please provide a brief description of the issue...";
    v2 = &stru_100B0F9E0;
  }

  else
  {
    v2 = off_100AFD8D8[v1];
    v3 = off_100AFD900[v1];
  }

  v4 = [NSString stringWithFormat:@"Bluetooth TTR %i: %@", *(a1 + 8), v2];
  v22[0] = @"Classification";
  v22[1] = @"ComponentID";
  v23[0] = @"Other Bug";
  v23[1] = @"1335920";
  v22[2] = @"ComponentName";
  v22[3] = @"ComponentVersion";
  v23[2] = @"CoreBluetooth - Auto TTR";
  v23[3] = @"iOS";
  v22[4] = @"ExtensionIdentifiers";
  v22[5] = @"Reproducibility";
  v23[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v23[5] = @"I Didn't Try";
  v22[6] = @"Description";
  v22[7] = @"Title";
  v23[6] = v3;
  v23[7] = v4;
  v16 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:8];
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v16;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v6 objectForKeyedSubscript:v10];
        v12 = [NSURLQueryItem queryItemWithName:v10 value:v11];
        [v5 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v13 setQueryItems:v5];
  v14 = +[LSApplicationWorkspace defaultWorkspace];
  v15 = [v13 URL];
  [v14 openURL:v15 configuration:0 completionHandler:0];
}

void sub_100578C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v17 = v14;

  _Unwind_Resume(a1);
}

void sub_100578CA8(uint64_t a1, int a2)
{
  if (*(a1 + 12) == 1)
  {
    v2 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v3 = "BluetoothDiagnosticsManager: Skipping TTR Alert UI";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
    return;
  }

  if ((*(a1 + 16) >> a2))
  {
    v2 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v3 = "BluetoothDiagnosticsManager: Skipping TTR Alert UI By user";
    goto LABEL_7;
  }

  v6 = sub_100017F4C();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100578DC0;
  v7[3] = &unk_100ADF940;
  v7[4] = a1;
  v8 = a2;
  sub_10000CA94(v6, v7);
}

void sub_100578DC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BluetoothDiagnosticsManager: Show TTR Alert", buf, 2u);
  }

  if (*v2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "BluetoothDiagnosticsManager: Already busy with another notification, waiting for the current one to complete";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      return;
    }

    return;
  }

  error = 0;
  v6 = *(a1 + 40);
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      v7 = @"Bluetooth toggle detected. Is Bluetooth working as expected?";
      goto LABEL_33;
    }

    if (v6 == 2)
    {
      v7 = @"Bluetooth maximum connection request number exceeded. Please file a radar.";
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  if (v6 == 3)
  {
    v7 = @"Bluetooth Connection Queue seems to be stuck. Please file a radar.";
    goto LABEL_33;
  }

  if (v6 == 4)
  {
    if (*(v2 + 20) == 1)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "BluetoothDiagnosticsManager: Skipping Device Settings Read Error TTR - we've already triggered it this build!";
        goto LABEL_6;
      }

      return;
    }

    *(v2 + 20) = 1;
    v8 = sub_10000E92C();
    sub_100007E30(buf, "BluetoothTTR");
    sub_100007E30(__p, "DeviceNameReadErrorTTRTriggeredThisBuild");
    (*(*v8 + 80))(v8, buf, __p, *(v2 + 20));
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(*buf);
    }

    v7 = @"Bluetooth is having difficulty retrieving your paired device settings. Please file a Radar.";
LABEL_33:
    *(v2 + 8) = *(a1 + 40);
    v21[0] = kCFUserNotificationAlertTopMostKey;
    v21[1] = SBUserNotificationAllowMenuButtonDismissal;
    v22[0] = &__kCFBooleanTrue;
    v22[1] = &__kCFBooleanTrue;
    v21[2] = SBUserNotificationDismissOnLock;
    v21[3] = kCFUserNotificationAlertHeaderKey;
    v22[2] = &__kCFBooleanTrue;
    v22[3] = @"Bluetooth Issue?";
    v21[4] = kCFUserNotificationAlertMessageKey;
    v21[5] = kCFUserNotificationDefaultButtonTitleKey;
    v22[4] = v7;
    v22[5] = @"File a Radar";
    v21[6] = kCFUserNotificationAlternateButtonTitleKey;
    v21[7] = kCFUserNotificationOtherButtonTitleKey;
    v22[6] = @"Cancel";
    v22[7] = @"Do not ask again";
    v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:8];
    v11 = [v10 mutableCopy];

    v12 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v11);
    *v2 = v12;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v12, sub_1005792B8, 0);
    if (RunLoopSource)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
    }

    else
    {
      if (!v12)
      {
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BluetoothDiagnosticsManager: notification is null", buf, 2u);
        }

        goto LABEL_38;
      }

      CFUserNotificationCancel(v12);
      RunLoopSource = v12;
    }

    CFRelease(RunLoopSource);
LABEL_38:

    return;
  }

  if (v6 != 5)
  {
LABEL_22:
    v7 = @"Bluetooth Issue detected. Please file a radar.";
    goto LABEL_33;
  }

  if (*(v2 + 21) != 1)
  {
    *(v2 + 21) = 1;
    v9 = sub_10000E92C();
    sub_100007E30(buf, "BluetoothTTR");
    sub_100007E30(__p, "HighDutyScanTTRTriggeredThisBuild");
    (*(*v9 + 80))(v9, buf, __p, *(v2 + 21));
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(*buf);
    }

    v7 = @"Bluetooth is consuming too much power scanning for devices. Please file a Radar.";
    goto LABEL_33;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "BluetoothDiagnosticsManager: Skipping High Duty Scan TTR Alert - we've already triggered it this build!";
    goto LABEL_6;
  }
}

void sub_100579250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1005792B8(uint64_t a1, uint64_t a2)
{
  if (qword_100B53FE8 != -1)
  {
    sub_100844884();
  }

  v3 = qword_100B53FE0;

  sub_100578694(v3, a2, a2);
}

void sub_10057930C(char *__s, char *a2, double a3)
{
  if (qword_100B53FE8 != -1)
  {
    sub_100844884();
  }

  v6 = qword_100B53FE0;
  sub_100007E30(v9, __s);
  sub_100007E30(__p, a2);
  sub_1005780BC(v6, v9, __p, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1005793B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_100579608(uint64_t result, int a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

uint64_t sub_100579614(uint64_t a1, int a2, __int128 *a3, char a4, void *a5)
{
  v9 = a5;
  *a1 = a2;
  v10 = (a1 + 8);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(v10, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *v10 = v11;
  }

  *(a1 + 32) = a4;
  *(a1 + 40) = v9;
  return a1;
}

uint64_t sub_1005796B4(uint64_t a1, __int128 *a2, char a3, void *a4, int a5, int a6)
{
  result = sub_100579614(a1, 6, a2, a3, a4);
  *(result + 48) = a5;
  *(result + 52) = a6;
  return result;
}

uint64_t sub_100579704(uint64_t a1, __int128 *a2, char a3, void *a4, int a5)
{
  result = sub_100579614(a1, 8, a2, a3, a4);
  *(result + 48) = a5;
  return result;
}

uint64_t sub_10057973C(uint64_t a1, __int128 *a2, char a3, void *a4, uint64_t a5)
{
  result = sub_100579614(a1, 9, a2, a3, a4);
  *(result + 48) = a5;
  return result;
}

uint64_t sub_100579774(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = 10;
  *(a1 + 8) = v5;
  *(a1 + 16) = a3;
  return a1;
}

uint64_t sub_1005797AC(uint64_t a1, void *a2, int a3, char a4)
{
  v7 = a2;
  *a1 = 11;
  *(a1 + 8) = v7;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  return a1;
}

uint64_t sub_1005797F8(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = 12;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t sub_10057982C(uint64_t a1)
{
  *a1 = off_100AFD938;
  *(a1 + 8) = &off_100AFD978;
  sub_100044BBC(a1 + 16);
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 118) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = a1 + 152;
  *(a1 + 160) = a1 + 152;
  *(a1 + 168) = 0;
  *(a1 + 112) = 2;
  *(a1 + 144) = 0;
  v2 = +[NSMutableSet set];
  v3 = *(a1 + 120);
  *(a1 + 120) = v2;

  return a1;
}

void sub_1005798E0(_Unwind_Exception *a1)
{
  v3 = v2;
  sub_100028EB4(v3);

  v5 = *(v1 + 88);
  if (v5)
  {
    *(v1 + 96) = v5;
    operator delete(v5);
  }

  sub_10007A068(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_10057991C(uint64_t a1)
{
  v2 = sub_100017E6C();
  sub_1005689CC(v2 + 344, a1 + 8);
  v3 = sub_100017F4C();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005799A8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_1005799B0(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning asynchronous power init", buf, 2u);
  }

  if (sub_10057A7A0(a1))
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100844898();
    }

    (*(*off_100B50A98 + 32))(off_100B50A98);
    v3 = sub_100017E6C();
    (*(*v3 + 80))(v3, a1 + 116);
    v4 = sub_100017E6C();
    (*(*v4 + 88))(v4, a1 + 117);
    if (sub_10057A710(a1))
    {
      sub_100579DB0(a1);
      if (*(a1 + 116) != 1)
      {
        goto LABEL_18;
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100844898();
      }

      if (sub_1005A6978(off_100B50A98) == 2)
      {
        v5 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Airplane mode is ON and airplane mode default grant list state is enabled on power init", v9, 2u);
        }

        if (qword_100B50AA0 != -1)
        {
          sub_100844898();
        }

        v6 = 1;
      }

      else
      {
LABEL_18:
        if (qword_100B50AA0 != -1)
        {
          sub_100844898();
        }

        v6 = 0;
      }

      sub_1005A0484(off_100B50A98, v6);
      v7 = sub_10000E92C();
      if (((*(*v7 + 8))(v7) & 1) == 0)
      {
        v8 = sub_10000F034();
        (*(*v8 + 160))(v8, 4);
      }
    }

    else
    {
      *(a1 + 112) = 0;
      sub_100579DB0(a1);
      sub_10057A198(a1);
      sub_10057AD28(a1, 0);
    }
  }

  else
  {
    *(a1 + 112) = 3;
  }
}

void sub_100579C14(uint64_t a1)
{
  v2 = sub_100017E6C() + 344;

  sub_100568C6C(v2, a1 + 8);
}

uint64_t sub_100579C58(uint64_t a1, char a2)
{
  if (*(a1 + 112) == 3)
  {
    return 2;
  }

  if (*(a1 + 118))
  {
    return 17;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isBluetoothModificationAllowed] | a2;

  if ((v6 & 1) == 0)
  {
    return 200;
  }

  v7 = *(a1 + 116);
  v8 = *sub_10009BD9C();
  if (v7 == 1)
  {
    (*(v8 + 112))();
  }

  else
  {
    (*(v8 + 96))();
  }

  v9 = sub_100017F4C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100579DA8;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  sub_10000CA94(v9, v10);
  return 0;
}

void sub_100579DB0(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning asynchronous power on", buf, 2u);
  }

  if (*(a1 + 112) == 1)
  {
    goto LABEL_16;
  }

  *(a1 + 112) = 2;
  v3 = sub_10009BD9C();
  v4 = (*(*v3 + 8))(v3);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Power on failed - %{bluetooth:OI_STATUS}u", buf, 8u);
      }

      sub_10057A7A0(a1);
      v7 = sub_10009BD9C();
      v5 = (*(*v7 + 8))(v7);
    }

    while (v5);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100844898();
  }

  if (!sub_10059D8D0(off_100B50A98))
  {
LABEL_16:
    *(a1 + 112) = 1;
    mach_absolute_time();
    if (UpTicksToSeconds() <= 2)
    {
      if (qword_100B53FE8 != -1)
      {
        sub_100844990();
      }

      sub_100578CA8(qword_100B53FE0, 1);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008448C0();
    }

    v8 = sub_10009BD9C();
    if ((*(*v8 + 16))(v8))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100844928();
      }

      v9 = sub_10000E92C();
      sub_100693F74(v9, 1);
    }

    *(a1 + 112) = 0;
  }

  sub_10057AD28(a1, *(a1 + 112));
}

uint64_t sub_10057A044(uint64_t a1, char a2)
{
  if (*(a1 + 112) == 3)
  {
    return 2;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isBluetoothModificationAllowed] | a2;

  if ((v6 & 1) == 0)
  {
    return 200;
  }

  if (*(a1 + 116))
  {
    if ((*(a1 + 118) & 1) == 0)
    {
      v7 = sub_10009BD9C();
      (*(*v7 + 112))(v7, 0);
    }
  }

  else if ((*(a1 + 118) & 1) == 0)
  {
    v8 = sub_10009BD9C();
    (*(*v8 + 96))(v8, 0);
  }

  v9 = sub_100017F4C();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10057A190;
  v10[3] = &unk_100ADF8F8;
  v10[4] = a1;
  sub_10000CA94(v9, v10);
  return 0;
}

void sub_10057A198(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning asynchronous power off", v5, 2u);
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_12;
  }

  *(a1 + 112) = 2;
  if (qword_100B50AA0 != -1)
  {
    sub_100844898();
  }

  if (!sub_1005A189C(off_100B50A98))
  {
    v3 = sub_10009BD9C();
    if ((*(*v3 + 16))(v3))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100844928();
      }

      v4 = sub_10000E92C();
      sub_100693F74(v4, 1);
    }

LABEL_12:
    *(a1 + 112) = 0;
    *(a1 + 128) = mach_absolute_time();
    goto LABEL_13;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008449B8();
  }

  *(a1 + 112) = 1;
  if (*(a1 + 118))
  {
    *(a1 + 118) = 0;
    [*(a1 + 120) removeAllObjects];
  }

LABEL_13:
  sub_10057AD28(a1, *(a1 + 112));
}