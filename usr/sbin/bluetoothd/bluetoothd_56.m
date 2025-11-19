void sub_1003BD810(uint64_t a1, int a2)
{
  v4 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "Completed";
    if (a2)
    {
      v5 = "Needs to run.";
    }

    v9 = 136446210;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current SetupBuddy state: %{public}s.", &v9, 0xCu);
  }

  *(a1 + 312) = a2;
  LOBYTE(v9) = 0;
  v6 = sub_100017E6C();
  (*(*v6 + 112))(v6, &v9);
  v7 = *(a1 + 312);
  if (v9 == 1 && (*(a1 + 312) & 1) == 0)
  {
    sub_1003BA840(a1, 0);
    v7 = *(a1 + 312);
  }

  if ((v7 & 1) == 0)
  {
    v8 = sub_100017E6C();
    sub_1003C4060(v8 + 504, a1 + 120);
  }
}

void sub_1003BD94C(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_1008250B8();
  }

  v2 = sub_1000504C8(off_100B508E8, *(a1 + 40), 0);
  if (v2)
  {
    v3 = v2;
    if (sub_10053A52C(v2))
    {
      if (qword_100B50AC0 != -1)
      {
        sub_100823734();
      }

      v4 = sub_1000E077C(off_100B50AB8, v3);
      if ((v4 & 0x100000) == 0)
      {
        v5 = v4;
        v6 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 32);
          if (qword_100B50AC0 != -1)
          {
            sub_100823734();
          }

          *buf = 138543874;
          *&buf[4] = v7;
          *&buf[12] = 1024;
          v28 = v5;
          v29 = 1024;
          v30 = sub_1000DFA00(off_100B50AB8, v3);
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Attempting to disconnectUnusedDevices to %{public}@ that doesn't have GATT connected (connected services %d, supported services %d)", buf, 0x18u);
        }

        return;
      }

      v26 = 0;
      sub_1000D42DC(&v26, 0);
      if (qword_100B508D0 != -1)
      {
        sub_100823A10();
      }

      v8 = sub_100786A14(off_100B508C8, *(a1 + 32)) + word_100B541D8;
      v9 = v26;
      v10 = qword_100BCE988;
      v11 = v8 - v26;
      if (v8 >= v26)
      {
        if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v20 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 1024;
        v28 = v11;
        v16 = "Device %{public}@ is unused, but is within the grace period for %d more seconds - skipping";
        v17 = v10;
        v18 = OS_LOG_TYPE_INFO;
        v19 = 18;
        goto LABEL_27;
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *&buf[4] = v8;
        *&buf[8] = 1024;
        *&buf[10] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting due to grace time %d curTime %d", buf, 0xEu);
      }

      v12 = sub_10000E92C();
      if ((*(*v12 + 8))(v12))
      {
        v25 = 0;
        v13 = sub_10000E92C();
        sub_100007E30(buf, "CATT");
        sub_100007E30(__p, "DisableClassicGraceTimer");
        (*(*v13 + 72))(v13, buf, __p, &v25);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }

        if (v25 == 1)
        {
          v14 = qword_100BCE988;
          if (!os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v15 = *(a1 + 32);
          *buf = 138543362;
          *&buf[4] = v15;
          v16 = "Grace timer disabled for classic devices, not disconnecting %{public}@";
          v17 = v14;
          v18 = OS_LOG_TYPE_DEFAULT;
          v19 = 12;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
          return;
        }
      }

      v21 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Disconnecting GATT for unused classic device %{public}@", buf, 0xCu);
      }

      if (qword_100B50AC0 != -1)
      {
        sub_100823A60();
      }

      sub_100593A4C(off_100B50AB8, v3, 0x100000);
    }
  }
}

void sub_1003BDD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

id sub_1003BDD68(uint64_t a1, void *a2)
{
  v3 = a2;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  sub_100007AD0(&v21);
  v4 = objc_opt_new();
  v5 = *(a1 + 224);
  if (v5 != (a1 + 232))
  {
    while (1)
    {
      if ((*(*v5[5] + 16))(v5[5]))
      {
        goto LABEL_7;
      }

      v6 = [*(v5[5] + 224) objectForKeyedSubscript:v3];
      if (![v6 opportunistic])
      {
        break;
      }

      sub_100018384(v5[4], &__p);
      v7 = sub_100007774(&v22);
      sub_100007774(v7);
      if (v20 < 0)
      {
        operator delete(__p);
      }

LABEL_11:

      v12 = v5[1];
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
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
      if (v13 == (a1 + 232))
      {
        goto LABEL_17;
      }
    }

LABEL_7:
    v6 = [*(v5[5] + 80) objectForKeyedSubscript:v3];
    if (v6)
    {
      sub_100018384(v5[4], &__p);
      v8 = sub_100007774(&v22);
      v9 = sub_100007774(v8);
      v10 = sub_1003BE228([v6 intValue]);
      strlen(v10);
      v11 = sub_100007774(v9);
      sub_100007774(v11);
      if (v20 < 0)
      {
        operator delete(__p);
      }

      [v4 addObject:v6];
    }

    goto LABEL_11;
  }

LABEL_17:
  v15 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
  {
    std::stringbuf::str();
    v16 = v20 >= 0 ? &__p : __p;
    *buf = 136315138;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "desired latencies:%s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  *&v22 = v17;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();

  return v4;
}

void sub_1003BE198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_1007FC91C(&a16);

  _Unwind_Resume(a1);
}

const char *sub_1003BE228(int a1)
{
  if ((a1 + 13) > 0xF)
  {
    return "unknown";
  }

  else
  {
    return off_100AF0A10[a1 + 13];
  }
}

uint64_t sub_1003BE250(uint64_t a1, void *a2)
{
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v52 objects:v65 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = 0;
    v6 = v3;
    v33 = *v53;
    v7 = -1;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v53 != v33)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v52 + 1) + 8 * i) intValue];
        if (qword_100B508B0 != -1)
        {
          sub_100823824();
        }

        if (!sub_10074DD24(off_100B508A8, v9, &v62 + 1, &v62, &v60, &v60 + 1, &v61 + 1, &v61, &v59 + 1, &v59, &v58 + 1, &v58, &v57, &v56 + 1, &v56))
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
          *v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          memset(v38, 0, sizeof(v38));
          v36 = 0u;
          sub_100007AD0(&v36);
          v10 = sub_100007774(&v37);
          v11 = sub_1003BE228(v9);
          strlen(v11);
          v12 = sub_100007774(v10);
          v13 = sub_100007774(v12);
          v14 = sub_1003BE228(v4);
          strlen(v14);
          v15 = sub_100007774(v13);
          sub_100007774(v15);
          v16 = std::ostream::operator<<();
          v17 = sub_100007774(v16);
          v18 = sub_100007774(v17);
          sub_100007774(v18);
          if (v5)
          {
            v19 = v4;
          }

          else
          {
            v19 = v9;
          }

          if (v62 == v7 && v62 == HIWORD(v62))
          {
            v20 = v19;
          }

          else
          {
            v20 = v4;
          }

          if (v62 >= v7)
          {
            v4 = v20;
          }

          else
          {
            v4 = v9;
          }

          if (v62 >= v7)
          {
            v5 |= v62 == v7 && v62 == HIWORD(v62);
          }

          else
          {
            v5 = v62 == HIWORD(v62);
          }

          if (v62 < v7)
          {
            v7 = v62;
          }

          v21 = sub_100007774(&v37);
          v22 = sub_1003BE228(v4);
          strlen(v22);
          v23 = sub_100007774(v21);
          sub_100007774(v23);
          v24 = std::ostream::operator<<();
          v25 = sub_100007774(v24);
          v26 = sub_100007774(v25);
          sub_100007774(v26);
          v27 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
          {
            std::stringbuf::str();
            p_p = &__p;
            if (v35 < 0)
            {
              p_p = __p;
            }

            *buf = 136315138;
            v64 = p_p;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
            if (v35 < 0)
            {
              operator delete(__p);
            }
          }

          *&v36 = v32;
          *(&v36 + *(v32 - 24)) = v31;
          *&v37 = v30;
          if (SHIBYTE(v40) < 0)
          {
            operator delete(v39[1]);
          }

          std::locale::~locale(v38);
          std::iostream::~basic_iostream();
          std::ios::~ios();
        }
      }

      v6 = [v2 countByEnumeratingWithState:&v52 objects:v65 count:16];
    }

    while (v6);
  }

  return v4;
}

void sub_1003BE840(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 224);
  v6 = (a1 + 232);
  if (v5 != (a1 + 232))
  {
    do
    {
      if (!(*(*v5[5] + 16))(v5[5]))
      {
        v10 = v5[5];
        if (*(v10 + 120))
        {
          if (sub_1004F9F68(v5[5], v11))
          {
            (*(**(v10 + 120) + 184))(*(v10 + 120), 0, v11, a3);
          }
        }
      }

      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }
}

void sub_1003BE974(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a2 + 129) & 0x30;
  v6 = qword_100BCE988;
  v7 = os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Foreground active, notifying ServiceManager CTKD device %{public}@ connected to bridge", &v10, 0xCu);
    }

    if (qword_100B508D0 != -1)
    {
      sub_100823A10();
    }

    v8 = sub_100046458(off_100B508C8, v4, 0);
    if (qword_100B50AC0 != -1)
    {
      sub_100823A60();
    }

    sub_100596BF0(off_100B50AB8, v8);
  }

  else if (v7)
  {
    v9 = *(a2 + 88);
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TransportBridging enabled, CTKD device %{public}@ connected, but %{public}@ is not foregrounded, not bridging.", &v10, 0x16u);
  }
}

void sub_1003BEAF4(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *__p = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  sub_100007AD0(&v27);
  v9 = *(a1 + 224);
  if (v9 != (a1 + 232))
  {
    do
    {
      v10 = v9[4];
      v11 = v9[5];
      if (!(*(*v11 + 2))(v11))
      {
        sub_1004F55F4(v11, v7, v8);
        v15 = [v11[28] objectForKeyedSubscript:v7];
        if (v15)
        {
          v16 = sub_1004F55E0(v11);

          if (v16)
          {
            sub_100614BB8(v10, v46);
            v17 = sub_100007774(&v28);
            sub_100007774(v17);
            if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v12 = v9[1];
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
          v13 = v9[2];
          v14 = *v13 == v9;
          v9 = v13;
        }

        while (!v14);
      }

      v9 = v13;
    }

    while (v13 != (a1 + 232));
  }

  if (a4)
  {
    v25 = &off_100AE0A78;
    v26 = 0;
    std::stringbuf::str();
    if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
    {
      size = v46[0].__r_.__value_.__l.__size_;
      operator delete(v46[0].__r_.__value_.__l.__data_);
      if (!size)
      {
LABEL_23:
        v20 = sub_100432718();
        v21 = v46;
        std::stringbuf::str();
        if ((v46[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v46[0].__r_.__value_.__r.__words[0];
        }

        v23 = &off_100AE0A78;
        v24 = v26;
        (*(*v20 + 40))(v20, 4, v21, v7, &v23);
        v23 = &off_100AE0A78;
        if (v24)
        {
          sub_10000C808(v24);
        }

        if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46[0].__r_.__value_.__l.__data_);
        }

        v25 = &off_100AE0A78;
        if (v26)
        {
          sub_10000C808(v26);
        }

        goto LABEL_31;
      }
    }

    else if (!*(&v46[0].__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    v44 = 0;
    v45 = 0;
    std::ostream::sentry::sentry();
    v19 = &v28 + *(v28 - 24);
    if ((v19[32] & 5) == 0)
    {
      (*(**(v19 + 5) + 32))(v46);
      if (v47 == -1)
      {
        std::ios_base::clear((&v28 + *(v28 - 24)), *(v30 + *(v28 - 24)) | 4);
      }
    }

    std::ostream::sentry::~sentry();
    v46[0].__r_.__value_.__s.__data_[0] = 0;
    sub_100007774(&v28);
    goto LABEL_23;
  }

LABEL_31:
  *&v28 = v22;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  std::ios::~ios();
}

void sub_1003BEFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5, ...)
{
  va_start(va, a5);
  std::ostream::sentry::~sentry();
  if (a5)
  {
    sub_10000C808(a5);
  }

  sub_1007FC91C(va);

  _Unwind_Resume(a1);
}

void sub_1003BF098(void *a1)
{
  v2 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[36];
    *buf = 67109120;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending Daily LEAppConnect metrics to CoreAnalytics %d", buf, 8u);
  }

  v4 = a1[34];
  v5 = a1 + 35;
  if (v4 != a1 + 35)
  {
    do
    {
      v6 = *(v4 + 55);
      if (v6 < 0)
      {
        if (v4[5])
        {
LABEL_8:
          if (*(v4 + 56))
          {
            v7 = v4 + 4;
            v15[0] = @"BundleID";
            if ((v6 & 0x80000000) != 0)
            {
              v7 = *v7;
            }

            v8 = [NSString stringWithUTF8String:v7, v15[0]];
            v15[1] = @"ConnectAttemptWatermark";
            v16[0] = v8;
            v9 = [NSNumber numberWithUnsignedChar:*(v4 + 56)];
            v16[1] = v9;
            v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

            v11 = sub_10000F034();
            (*(*v11 + 344))(v11, v10);
          }
        }
      }

      else if (*(v4 + 55))
      {
        goto LABEL_8;
      }

      v12 = v4[1];
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
          v13 = v4[2];
          v14 = *v13 == v4;
          v4 = v13;
        }

        while (!v14);
      }

      v4 = v13;
    }

    while (v13 != v5);
  }

  sub_10004B61C((a1 + 34), a1[35]);
  a1[35] = 0;
  a1[36] = 0;
  a1[34] = v5;
}

void sub_1003BF2C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109378;
    v16[1] = a3;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending ancsAuthChanged to %d for device %{public}@", v16, 0x12u);
  }

  v7 = *(a1 + 224);
  v8 = (a1 + 232);
  if (v7 != (a1 + 232))
  {
    do
    {
      v9 = (*(*v7[5] + 16))(v7[5]);
      v10 = v7[5];
      if (v9)
      {
        if ((*(*v10 + 2))(v7[5]) == 1)
        {
          sub_1004F4D28(v7[5], v5, a3);
        }
      }

      else
      {
        v11 = [v10[28] objectForKeyedSubscript:v5];
        v12 = v11;
        if (v11 && [v11 ancsRequired])
        {
          sub_1004F4D28(v10, v5, a3);
        }
      }

      v13 = v7[1];
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
          v14 = v7[2];
          v15 = *v14 == v7;
          v7 = v14;
        }

        while (!v15);
      }

      v7 = v14;
    }

    while (v14 != v8);
  }
}

void *sub_1003BF4B4(void *result, __int128 *a2)
{
  v2 = result[28];
  v3 = result + 29;
  if (v2 != result + 29)
  {
    do
    {
      result = *(v2[5] + 120);
      if (result)
      {
        v8 = *a2;
        v9 = *(a2 + 2);
        result = (*(*result + 72))(result, 0, &v8);
      }

      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_1003BF57C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  if (v2 == (a1 + 232))
  {
    return 0;
  }

  while (v2[5] != a2)
  {
    v3 = v2[1];
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
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    v2 = v4;
    if (v4 == (a1 + 232))
    {
      return 0;
    }
  }

  return v2[4];
}

uint64_t sub_1003BF5E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 224);
  v5 = (a1 + 232);
  if (v4 == (a1 + 232))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      sub_100018384(v4[4], __p);
      if (v15 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = [NSString stringWithUTF8String:v7];
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = [v8 containsString:v3];

      v10 = v4[1];
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
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v6 += v9;
      v4 = v11;
    }

    while (v11 != v5);
  }

  return v6;
}

void sub_1003BF718(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
  {
    sub_1008250CC();
  }

  v4 = *(a1 + 224);
  if (v4 != (a1 + 232))
  {
    do
    {
      v5 = v4[5];
      if ((*(*v5 + 16))(v5) == 1 && *(v5 + 240) == 1)
      {
        v6 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v4[4], __p);
          v7 = v12 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AppManager::requestOfflineAdvertisingData notifying %{public}s", buf, 0xCu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100503D2C(v5, a2);
      }

      v8 = v4[1];
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
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != (a1 + 232));
  }
}

void sub_1003BF8D8(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = (a1 + 232);
  if (v1 != (a1 + 232))
  {
    do
    {
      if (!(*(*v1[5] + 16))(v1[5]))
      {
        sub_1003BF980(a1, v1[4]);
      }

      v4 = v1[1];
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
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1003BF980(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 232);
    v2 = a1 + 232;
    v3 = v4;
    if (v4)
    {
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
      if (v6 != v2 && *(v6 + 32) <= a2 && !(*(**(v6 + 40) + 16))(*(v6 + 40)))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008236BC();
        }

        v10 = sub_1007811A8(off_100B508C8);
        if (sub_1004FB890(*(v6 + 40), v10))
        {
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEBUG))
          {
            sub_100018384(a2, v11);
            sub_10082513C();
          }
        }
      }
    }
  }
}

id sub_1003BFAF0(uint64_t a1)
{
  *(a1 + 180) = 0;
  result = [*(a1 + 320) removeAllObjects];
  v3 = *(a1 + 224);
  v4 = (a1 + 232);
  if (v3 != (a1 + 232))
  {
    do
    {
      v5 = v3[5];
      result = (*(*v5 + 2))(v5);
      if (!result)
      {
        result = v5[46];
        if (result)
        {
          result = [result count];
          if (result)
          {
            v15 = 0u;
            v16 = 0u;
            v13 = 0u;
            v14 = 0u;
            v9 = v5[46];
            v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
            if (v10)
            {
              v11 = *v14;
              do
              {
                for (i = 0; i != v10; i = i + 1)
                {
                  if (*v14 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  sub_1005010D0(v5, *(*(&v13 + 1) + 8 * i), 0, 0);
                }

                v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
              }

              while (v10);
            }

            result = [v5[46] removeAllObjects];
          }
        }
      }

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_1003BFCC0(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "GATT Device %{public}@ connected", &v4, 0xCu);
  }
}

void sub_1003BFD6C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GATT Device %{public}@ disconnected", &v19, 0xCu);
  }

  v7 = *(a1 + 224);
  if (v7 != (a1 + 232))
  {
    do
    {
      v8 = v7[4];
      v9 = v7[5];
      if (!(*(*v9 + 2))(v9))
      {
        v10 = sub_1004FC1E4(v9, v5);
        if (v10)
        {
          sub_1003B84C8(v10, v8, v9, v5, 0);
        }

        if (a3 == 1)
        {
          v11 = [v9[28] objectForKeyedSubscript:v5];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 enableAutoReconnect];
            sub_1003B5E7C(v13, v8, v9, v5, 0, v13);
          }
        }
      }

      v14 = v7[1];
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
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      v7 = v15;
    }

    while (v15 != (a1 + 232));
  }

  if (a3 == 1)
  {
    v17 = [*(a1 + 328) containsObject:v5];
    v18 = qword_100BCE988;
    if (v17)
    {
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ from classic gatt device tracking list", &v19, 0xCu);
      }

      [*(a1 + 328) removeObject:v5];
    }

    else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
    {
      sub_10082519C();
    }
  }
}

void sub_1003BFFE4(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v8 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    v23 = 1024;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GATT Device %{public}@ ready isInitiator=%d mtu=%d", buf, 0x18u);
  }

  v20 = 0;
  *buf = 0;
  *&buf[8] = 0;
  sub_10004DFB4(buf, v7);
  if (qword_100B50F78 != -1)
  {
    sub_1008239E8();
  }

  v9 = qword_100B50F70;
  uuid_copy(dst, buf);
  if (sub_1005807A8(v9, dst, &v20))
  {
    v10 = qword_100BCE988;
    if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_FAULT))
    {
      *dst = 138543362;
      *&dst[4] = v7;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to get GATT transport for device %{public}@, this is not good", dst, 0xCu);
      v10 = qword_100BCE988;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100825210();
    }
  }

  else
  {
    v11 = *(a1 + 224);
    if (v11 != (a1 + 232))
    {
      do
      {
        v12 = v11[4];
        v13 = v11[5];
        if (!(*(*v13 + 16))(v13))
        {
          if (sub_1004FC054(v13, v7))
          {
            v14 = sub_1004FC1E4(v13, v7);
            if ((v14 & 1) == 0)
            {
              sub_1003B84C8(v14, v12, v13, v7, 1u);
            }
          }
        }

        v15 = v11[1];
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
            v16 = v11[2];
            v17 = *v16 == v11;
            v11 = v16;
          }

          while (!v17);
        }

        v11 = v16;
      }

      while (v16 != (a1 + 232));
    }

    if (v20 == 1)
    {
      if (([*(a1 + 328) containsObject:v7] & 1) == 0)
      {
        v18 = qword_100BCE988;
        if (v7)
        {
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *dst = 138543362;
            *&dst[4] = v7;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Keeping track of classic device %{public}@", dst, 0xCu);
          }

          [*(a1 + 328) addObject:v7];
        }

        else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
        {
          sub_100825280();
        }
      }
    }

    else
    {
      v19 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_INFO))
      {
        *dst = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Starting device disconnection watchdog", dst, 2u);
      }

      sub_1003B4B88(a1, v7, 1u, 0, 0);
    }

    sub_1000C51E4(a1);
  }
}

uint64_t sub_1003C0350(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_1008236BC();
  }

  v3 = sub_100786B2C(off_100B508C8, v2);
  if (qword_100B508C0 != -1)
  {
    sub_1008236A8();
  }

  v4 = sub_10004EE74(off_100B508B8, v2);
  if (qword_100B508D0 != -1)
  {
    sub_1008236BC();
  }

  v5 = sub_100046458(off_100B508C8, v2, 0);
  if (v5)
  {
    if (qword_100B508F0 != -1)
    {
      sub_1008250B8();
    }

    v6 = sub_1000504C8(off_100B508E8, v5, 0);
    if (v6)
    {
      LODWORD(v5) = sub_1000295DC(v6);
    }

    else
    {
      LODWORD(v5) = 0;
    }
  }

  v7 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138544130;
    v10 = v2;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v4;
    v15 = 1024;
    v16 = v3 != 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %{public}@ classicPaired %d, lePaired %d, discoveredViaLeScan %d", &v9, 0x1Eu);
  }

  return v5 & ((v3 == 0) & ~v4);
}

void sub_1003C0528(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = a1 + 232;
  v5 = *(a1 + 232);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a1 + 232;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 == v6 || *(v7 + 32) > a2)
  {
LABEL_9:
    v7 = a1 + 232;
  }

  v11 = +[NSMutableArray array];
  if (v7 != v6 && !(*(**(v7 + 40) + 16))(*(v7 + 40)))
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *a3;
      v14 = a3[1];
      if (*a3 != v14)
      {
        do
        {
          sub_10003B85C(v13, __p);
          if (v25 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = *__p;
          }

          v16 = [NSString stringWithUTF8String:v15];
          [v11 addObject:v16];

          if (SHIBYTE(v25) < 0)
          {
            operator delete(*__p);
          }

          v13 += 20;
        }

        while (v13 != v14);
      }

      objc_storeStrong((v12 + 200), v11);
    }
  }

  v17 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, v20);
    if (v21 >= 0)
    {
      v18 = v20;
    }

    else
    {
      v18 = v20[0];
    }

    v19 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 2);
    *__p = 136315650;
    *&__p[4] = v18;
    v23 = 2048;
    v24 = v19;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Limiting session %s services (%lu) %@", __p, 0x20u);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }
}

void sub_1003C07A4(uint64_t a1, unint64_t a2, unsigned __int16 **a3)
{
  v6 = a1 + 232;
  v5 = *(a1 + 232);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a1 + 232;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 == v6 || *(v7 + 32) > a2)
  {
LABEL_9:
    v7 = a1 + 232;
  }

  v11 = +[NSMutableArray array];
  if (v7 != v6 && !(*(**(v7 + 40) + 16))(*(v7 + 40)))
  {
    v12 = *(v7 + 40);
    if (v12)
    {
      v13 = *a3;
      v14 = a3[1];
      if (*a3 != v14)
      {
        do
        {
          v15 = [NSNumber numberWithUnsignedShort:*v13];
          [v11 addObject:v15];

          ++v13;
        }

        while (v13 != v14);
      }

      objc_storeStrong((v12 + 208), v11);
    }
  }

  v16 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if (v20 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v18 = a3[1] - *a3;
    *buf = 136315650;
    v22 = v17;
    v23 = 2048;
    v24 = v18;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Limiting session %s manufacturer IDs (%lu) %@", buf, 0x20u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003C09C4(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v7 = *(a1 + 232);
  v5 = a1 + 232;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

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
    v12 = objc_opt_new();
    if (!(*(**(v8 + 40) + 16))(*(v8 + 40)))
    {
      v16 = *(v8 + 40);
      if (v16)
      {
        v17 = *a3;
        v18 = a3[1];
        if (*a3 != v18)
        {
          do
          {
            v19 = v17;
            if (*(v17 + 23) < 0)
            {
              v19 = *v17;
            }

            v20 = [NSString stringWithUTF8String:v19];
            [v12 addObject:v20];

            v17 += 3;
          }

          while (v17 != v18);
        }

        objc_storeStrong((v16 + 216), v12);
      }
    }
  }

  else
  {
LABEL_9:
    v12 = objc_opt_new();
  }

  v13 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    sub_100018384(a2, __p);
    if (v22 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3);
    *buf = 136315650;
    v24 = v14;
    v25 = 2048;
    v26 = v15;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Limiting session %s scan name substrings (%lu) %@", buf, 0x20u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1003C0BFC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = sub_100007EE8();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3321888768;
  v16[2] = sub_1003C0DCC;
  v16[3] = &unk_100AF0620;
  v19 = a1;
  v14 = v11;
  v17 = v14;
  sub_10000CB74(v20, a4);
  sub_1003C4640(__p, a5);
  memset(v22, 0, sizeof(v22));
  sub_10003E428(v22, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  v15 = v12;
  v18 = v15;
  sub_10000CA94(v13, v16);

  v23 = v22;
  sub_1000161FC(&v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }
}

void sub_1003C0D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  *(v24 - 72) = v23;
  sub_1000161FC((v24 - 72));
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1003C0DCC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 224);
  v3 = (v1 + 232);
  if (v2 != (v1 + 232))
  {
    v23 = (v1 + 232);
    do
    {
      v5 = v2[5];
      if ([v5[11] isEqualToString:{*(a1 + 32), v23}] && !(*(*v5 + 2))(v5) && sub_10005EDD8(v5))
      {
        v6 = +[NSMutableArray array];
        v7 = *(a1 + 56);
        v8 = *(a1 + 64);
        while (v7 != v8)
        {
          sub_10003B85C(v7, __p);
          if (v25 >= 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          v10 = [NSString stringWithUTF8String:v9];
          [v6 addObject:v10];

          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          v7 += 20;
        }

        v11 = [NSMutableArray arrayWithCapacity:(*(a1 + 88) - *(a1 + 80)) >> 1];
        v12 = *(a1 + 80);
        v13 = *(a1 + 88);
        while (v12 != v13)
        {
          v14 = [NSNumber numberWithUnsignedShort:*v12];
          [v11 addObject:v14];

          ++v12;
        }

        v15 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - *(a1 + 104)) >> 3)];
        v17 = *(a1 + 104);
        v16 = *(a1 + 112);
        while (v17 != v16)
        {
          v18 = v17;
          if (*(v17 + 23) < 0)
          {
            v18 = *v17;
          }

          v19 = [NSString stringWithUTF8String:v18];
          [v15 addObject:v19];

          v17 += 3;
        }

        sub_1004FF060(v5, 1, *(a1 + 40), v6, v11, v15);

        v3 = v23;
      }

      v20 = v2[1];
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
          v21 = v2[2];
          v22 = *v21 == v2;
          v2 = v21;
        }

        while (!v22);
      }

      v2 = v21;
    }

    while (v21 != v3);
  }
}

uint64_t sub_1003C1094(void *a1, void *a2)
{
  sub_10000CB74(a1 + 7, a2 + 7);
  sub_1003C4640(a1 + 10, a2 + 10);
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = 0;
  return sub_10003E428((a1 + 13), a2[13], a2[14], 0xAAAAAAAAAAAAAAABLL * ((a2[14] - a2[13]) >> 3));
}

void sub_1003C10F8(_Unwind_Exception *exception_object)
{
  v3 = v1[10];
  if (v3)
  {
    v1[11] = v3;
    operator delete(v3);
  }

  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C112C(uint64_t a1)
{
  v4 = (a1 + 104);
  sub_1000161FC(&v4);
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }
}

void sub_1003C1184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003C1250;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_1003C1250(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 224);
  v3 = (v1 + 232);
  if (v2 != (v1 + 232))
  {
    do
    {
      v5 = v2[5];
      if ([v5[11] isEqualToString:*(a1 + 32)] && !(*(*v5 + 2))(v5) && sub_10005EDD8(v5))
      {
        sub_1004FF060(v5, 0, 0, 0, 0, 0);
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }
}

void sub_1003C132C(uint64_t a1)
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyy-MM-dd H:mm:ss"];
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v25 = CFAbsoluteTimeGetCurrent();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump:         fScreenOffWakeHistoryMap: %f", buf, 0xCu);
  }

  v4 = *(a1 + 400);
  if (v4 != (a1 + 408))
  {
    do
    {
      v5 = qword_100BCE988;
      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v4 + 4;
        if (*(v4 + 55) < 0)
        {
          v6 = *v6;
        }

        *buf = 136446210;
        *v25 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump:         %{public}s:", buf, 0xCu);
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_1003C5894(&v21, (v4 + 7));
      for (i = v22; i != &v21; i = *(i + 8))
      {
        v8 = *(i + 16);
        v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:v8];
        v10 = [v2 stringFromDate:v9];
        LODWORD(v11) = llround((v8 - floor(v8)) * 1000.0);
        v12 = [NSString stringWithFormat:@"%@.%000d", v10, v11];
        v13 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(i + 24);
          v15 = v12;
          v16 = [v12 UTF8String];
          Current = CFAbsoluteTimeGetCurrent();
          *buf = 67109890;
          *v25 = v14;
          *&v25[4] = 2082;
          *&v25[6] = v16;
          v26 = 2048;
          v27 = v8;
          v28 = 2048;
          v29 = Current - v8;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "statedump:       reason %d time:%{public}s %.3f secs(%-12.2f secs ago)", buf, 0x26u);
        }
      }

      sub_100028EB4(&v21);
      v18 = v4[1];
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
          v19 = v4[2];
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != (a1 + 408));
  }
}

uint64_t sub_1003C1668(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = sub_10005D040(a1, a2, 0);
  if (v10)
  {
    v11 = sub_100500F54(v10, a2, v9, a4, a5);
  }

  else
  {
    v11 = 12;
  }

  return v11;
}

uint64_t sub_1003C16F8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  if (sub_10005D040(v5, v4, 0))
  {
    memcpy(v10, v2, sizeof(v10));
    v8 = sub_100500FDC();
  }

  else
  {
    v8 = 12;
  }

  return v8;
}

uint64_t sub_1003C17F0(uint64_t a1, unint64_t a2, void *a3, int a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = sub_10005D040(a1, a2, 2u);
  if (v11)
  {
    v12 = *(a1 + 224);
    v13 = (a1 + 232);
    if (v12 == (a1 + 232))
    {
LABEL_13:
      if (!(*(*v11 + 16))(v11))
      {
        v19 = sub_1005010D0(v11, v9, a4, v10);
        goto LABEL_20;
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_1008252F8();
      }
    }

    else
    {
      while (1)
      {
        if (v12[4] != a2)
        {
          v14 = v12[5];
          if (!(*(*v14 + 16))(v14))
          {
            v15 = v14[46];
            if (v15)
            {
              if ([v15 containsObject:v9])
              {
                break;
              }
            }
          }
        }

        v16 = v12[1];
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
            v17 = v12[2];
            v18 = *v17 == v12;
            v12 = v17;
          }

          while (!v18);
        }

        v12 = v17;
        if (v17 == v13)
        {
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
      {
        sub_1008252BC();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_ERROR))
  {
    sub_100825334();
  }

  v19 = 3;
LABEL_20:

  return v19;
}

void sub_1003C19E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100007EE8();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003C1AB4;
  v6[3] = &unk_100AE1200;
  v8 = a1;
  v5 = v3;
  v7 = v5;
  sub_10000CA94(v4, v6);
}

void sub_1003C1AB4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FastLEConnection:AppManager::fastLeConnectionDisabledForDevice device %@", &v12, 0xCu);
  }

  v5 = *(v2 + 224);
  v6 = (v2 + 232);
  if (v5 != v6)
  {
    do
    {
      v7 = v5[5];
      if (!(*(*v7 + 2))(v7))
      {
        v11 = v7[46];
        if (v11)
        {
          if ([v11 count])
          {
            [v7[46] removeObject:*(a1 + 32)];
          }
        }
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

      v5 = v9;
    }

    while (v9 != v6);
  }
}

void sub_1003C1C04(uint64_t a1)
{
  v1 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- Application Manager ----------------", buf, 2u);
    v1 = qword_100BCE988;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 176))
    {
      v2 = "running";
    }

    else
    {
      v2 = "stopped";
    }

    *buf = 136446210;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Cleanup Timer: %{public}s", buf, 0xCu);
    v1 = qword_100BCE988;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Known Classic GATT peripheral UUID's:", buf, 2u);
  }

  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  obj = *(a1 + 328);
  v3 = [obj countByEnumeratingWithState:&v220 objects:v251 count:16];
  if (v3)
  {
    v4 = *v221;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v221 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*(&v220 + 1) + 8 * i);
          *buf = 138543362;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}@", buf, 0xCu);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v220 objects:v251 count:16];
    }

    while (v3);
  }

  v8 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "statedump: CBCentralSessions interested in devices:", buf, 2u);
  }

  v10 = *(a1 + 224);
  v159 = (a1 + 232);
  if (v10 != (a1 + 232))
  {
    *&v9 = 136446210;
    v156 = v9;
    do
    {
      v12 = v10[4];
      v11 = v10[5];
      v158 = v10;
      if (!(*(*v11 + 2))(v11))
      {
        v17 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v12, buf);
          v18 = buf;
          if (SBYTE1(v235) < 0)
          {
            v18 = *buf;
          }

          *v249 = v156;
          v250 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", v249, 0xCu);
          if (SBYTE1(v235) < 0)
          {
            operator delete(*buf);
          }

          v17 = qword_100BCE988;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "statedump:         deviceConnections:", buf, 2u);
        }

        if ([v11[28] count])
        {
          v218 = 0u;
          v219 = 0u;
          v216 = 0u;
          v217 = 0u;
          obja = v11[28];
          v19 = [obja countByEnumeratingWithState:&v216 objects:v248 count:16];
          if (v19)
          {
            v20 = *v217;
            v160 = *v217;
            v161 = v11;
            do
            {
              v21 = 0;
              v162 = v19;
              do
              {
                if (*v217 != v20)
                {
                  objc_enumerationMutation(obja);
                }

                v167 = *(*(&v216 + 1) + 8 * v21);
                v22 = [v11[28] objectForKeyedSubscript:?];
                v23 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v167;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "statedump: \t\t         Peripheral:%{public}@", buf, 0xCu);
                  v23 = qword_100BCE988;
                }

                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  if ([v22 connectionAlerts])
                  {
                    v24 = 89;
                  }

                  else
                  {
                    v24 = 78;
                  }

                  v166 = v24;
                  if ([v22 disconnectionAlerts])
                  {
                    v25 = 89;
                  }

                  else
                  {
                    v25 = 78;
                  }

                  v165 = v25;
                  if ([v22 notificationAlerts])
                  {
                    v26 = 89;
                  }

                  else
                  {
                    v26 = 78;
                  }

                  v164 = v26;
                  v163 = [v22 delay];
                  if ([v22 wantsObjectDiscoveryData])
                  {
                    v27 = 89;
                  }

                  else
                  {
                    v27 = 78;
                  }

                  if ([v22 enableTransportBridging])
                  {
                    v28 = 89;
                  }

                  else
                  {
                    v28 = 78;
                  }

                  if ([v22 disableLeGATT])
                  {
                    v29 = 89;
                  }

                  else
                  {
                    v29 = 78;
                  }

                  if ([v22 ancsRequired])
                  {
                    v30 = 89;
                  }

                  else
                  {
                    v30 = 78;
                  }

                  v31 = [v22 hideFromBTSettings];
                  v32 = [v22 enableAutoReconnect];
                  *buf = 67111424;
                  if (v31)
                  {
                    v33 = 89;
                  }

                  else
                  {
                    v33 = 78;
                  }

                  *&buf[4] = v166;
                  if (v32)
                  {
                    v34 = 89;
                  }

                  else
                  {
                    v34 = 78;
                  }

                  *&buf[8] = 1024;
                  *&buf[10] = v165;
                  LOWORD(v234) = 1024;
                  *(&v234 + 2) = v164;
                  HIWORD(v234) = 2048;
                  v235 = v163;
                  v236 = 1024;
                  v237 = v27;
                  v238 = 1024;
                  v239 = v28;
                  v240 = 1024;
                  v241 = v29;
                  v242 = 1024;
                  v243 = v30;
                  v244 = 1024;
                  v245 = v33;
                  v246 = 1024;
                  v247 = v34;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "statedump: \t\t         \toptions: connectAlrts:%c disconAlrts:%c notifAlrts:%c delay:%lu ObjDisc:%c TrsprtBrdge:%c noLeGATT:%c ANCS:%c hide:%c autoReconn:%c", buf, 0x42u);
                  v20 = v160;
                  v11 = v161;
                  v19 = v162;
                }

                v21 = v21 + 1;
              }

              while (v19 != v21);
              v19 = [obja countByEnumeratingWithState:&v216 objects:v248 count:16];
            }

            while (v19);
          }
        }

        v35 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "statedump:         pending deviceConnections:", buf, 2u);
        }

        if ([v11[29] count])
        {
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          objb = v11[29];
          v36 = [objb countByEnumeratingWithState:&v212 objects:v232 count:16];
          if (v36)
          {
            v37 = *v213;
            do
            {
              for (j = 0; j != v36; j = j + 1)
              {
                if (*v213 != v37)
                {
                  objc_enumerationMutation(objb);
                }

                v39 = *(*(&v212 + 1) + 8 * j);
                v40 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v39;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "statedump: \t\t         Peripheral:%{public}@", buf, 0xCu);
                }
              }

              v36 = [objb countByEnumeratingWithState:&v212 objects:v232 count:16];
            }

            while (v36);
          }
        }

        (*(*v11 + 15))(v11);
        v41 = v11[46];
        if (v41 && [v41 count])
        {
          v42 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "statedump:         Fast LE Connection Devices:", buf, 2u);
          }

          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          objc = v11[46];
          v43 = [objc countByEnumeratingWithState:&v208 objects:v231 count:16];
          if (v43)
          {
            v44 = *v209;
            do
            {
              for (k = 0; k != v43; k = k + 1)
              {
                if (*v209 != v44)
                {
                  objc_enumerationMutation(objc);
                }

                v46 = *(*(&v208 + 1) + 8 * k);
                v47 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v46;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "statedump: \t\t         Peripheral:%{public}@", buf, 0xCu);
                }
              }

              v43 = [objc countByEnumeratingWithState:&v208 objects:v231 count:16];
            }

            while (v43);
          }
        }
      }

      v13 = v158;
      v14 = v158[1];
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

      v10 = v15;
    }

    while (v15 != v159);
  }

  v48 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "statedump: CBPeripheralSession interested in devices:", buf, 2u);
  }

  v49 = *(a1 + 224);
  if (v49 != v159)
  {
    do
    {
      v51 = v49[4];
      v50 = v49[5];
      if ((*(*v50 + 2))(v50) == 1)
      {
        v52 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v51, buf);
          v53 = buf;
          if (SBYTE1(v235) < 0)
          {
            v53 = *buf;
          }

          *v249 = 136446210;
          v250 = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", v249, 0xCu);
          if (SBYTE1(v235) < 0)
          {
            operator delete(*buf);
          }

          v52 = qword_100BCE988;
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "statedump:         devices Read/Write GATT:", buf, 2u);
        }

        v54 = v50[29];
        v55 = [v54 count] == 0;

        if (!v55)
        {
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          objd = v50[29];
          v56 = [objd countByEnumeratingWithState:&v204 objects:v230 count:16];
          if (v56)
          {
            v57 = *v205;
            do
            {
              for (m = 0; m != v56; m = m + 1)
              {
                if (*v205 != v57)
                {
                  objc_enumerationMutation(objd);
                }

                v59 = *(*(&v204 + 1) + 8 * m);
                v60 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v59;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "statedump: \t\t         Peripheral:%{public}@", buf, 0xCu);
                }
              }

              v56 = [objd countByEnumeratingWithState:&v204 objects:v230 count:16];
            }

            while (v56);
          }
        }
      }

      v61 = v49[1];
      if (v61)
      {
        do
        {
          v62 = v61;
          v61 = *v61;
        }

        while (v61);
      }

      else
      {
        do
        {
          v62 = v49[2];
          v16 = *v62 == v49;
          v49 = v62;
        }

        while (!v16);
      }

      v49 = v62;
    }

    while (v62 != v159);
  }

  v63 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "statedump: Registered Connecton Events:", buf, 2u);
  }

  v64 = *(a1 + 224);
  if (v64 != v159)
  {
    do
    {
      v66 = v64[4];
      v65 = v64[5];
      if (!(*(*v65 + 16))(v65) && (*(v65 + 264) || [*(v65 + 240) count]))
      {
        v67 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v66, buf);
          v68 = SBYTE1(v235) >= 0 ? buf : *buf;
          *v249 = 136446210;
          v250 = v68;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", v249, 0xCu);
          if (SBYTE1(v235) < 0)
          {
            operator delete(*buf);
          }
        }

        if (*(v65 + 281) == 1)
        {
          v69 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "statedump: \t\tAll Devices", buf, 2u);
          }
        }

        else
        {
          v70 = *(v65 + 248);
          if (v70 != (v65 + 256))
          {
            do
            {
              v71 = qword_100BCE988;
              if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
              {
                sub_10003B85C(buf, v70 + 4);
                v72 = SBYTE1(v235) >= 0 ? buf : *buf;
                *v249 = 136446210;
                v250 = v72;
                _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "statedump: \t\tGATT Service:%{public}s", v249, 0xCu);
                if (SBYTE1(v235) < 0)
                {
                  operator delete(*buf);
                }
              }

              v73 = v70[1];
              if (v73)
              {
                do
                {
                  v74 = v73;
                  v73 = *v73;
                }

                while (v73);
              }

              else
              {
                do
                {
                  v74 = v70[2];
                  v16 = *v74 == v70;
                  v70 = v74;
                }

                while (!v16);
              }

              v70 = v74;
            }

            while (v74 != (v65 + 256));
          }

          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          obje = *(v65 + 240);
          v75 = [obje countByEnumeratingWithState:&v200 objects:v229 count:16];
          if (v75)
          {
            v76 = *v201;
            do
            {
              for (n = 0; n != v75; n = n + 1)
              {
                if (*v201 != v76)
                {
                  objc_enumerationMutation(obje);
                }

                v78 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  v79 = *(*(&v200 + 1) + 8 * n);
                  *buf = 138543362;
                  *&buf[4] = v79;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "statedump: \t\tPeripheral:%{public}@", buf, 0xCu);
                }
              }

              v75 = [obje countByEnumeratingWithState:&v200 objects:v229 count:16];
            }

            while (v75);
          }
        }
      }

      v80 = v64[1];
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
          v81 = v64[2];
          v16 = *v81 == v64;
          v64 = v81;
        }

        while (!v16);
      }

      v64 = v81;
    }

    while (v81 != v159);
  }

  v82 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "statedump: Apps allowed to use bluetooth:", buf, 2u);
  }

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  objf = *(a1 + 336);
  v83 = [objf countByEnumeratingWithState:&v196 objects:v228 count:16];
  if (v83)
  {
    v84 = *v197;
    do
    {
      for (ii = 0; ii != v83; ii = ii + 1)
      {
        if (*v197 != v84)
        {
          objc_enumerationMutation(objf);
        }

        v86 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v87 = [*(*(&v196 + 1) + 8 * ii) UTF8String];
          *buf = 136446210;
          *&buf[4] = v87;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", buf, 0xCu);
        }
      }

      v83 = [objf countByEnumeratingWithState:&v196 objects:v228 count:16];
    }

    while (v83);
  }

  v88 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "statedump: Apps disallowed to use bluetooth:", buf, 2u);
  }

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  objg = *(a1 + 344);
  v89 = [objg countByEnumeratingWithState:&v192 objects:v227 count:16];
  if (v89)
  {
    v90 = *v193;
    do
    {
      for (jj = 0; jj != v89; jj = jj + 1)
      {
        if (*v193 != v90)
        {
          objc_enumerationMutation(objg);
        }

        v92 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v93 = [*(*(&v192 + 1) + 8 * jj) UTF8String];
          *buf = 136446210;
          *&buf[4] = v93;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", buf, 0xCu);
        }
      }

      v89 = [objg countByEnumeratingWithState:&v192 objects:v227 count:16];
    }

    while (v89);
  }

  v94 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "statedump: Apps Interested in FindMy devices:", buf, 2u);
  }

  [*(a1 + 320) enumerateKeysAndObjectsUsingBlock:{&stru_100AF0670, v156}];
  v95 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "statedump: Sessions pending TCC:", buf, 2u);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  objh = *(a1 + 352);
  v96 = [objh countByEnumeratingWithState:&v188 objects:v226 count:16];
  if (v96)
  {
    v97 = *v189;
    do
    {
      for (kk = 0; kk != v96; kk = kk + 1)
      {
        if (*v189 != v97)
        {
          objc_enumerationMutation(objh);
        }

        v99 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v100 = [*(*(&v188 + 1) + 8 * kk) UTF8String];
          *buf = 136446210;
          *&buf[4] = v100;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", buf, 0xCu);
        }
      }

      v96 = [objh countByEnumeratingWithState:&v188 objects:v226 count:16];
    }

    while (v96);
  }

  v101 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "statedump: Sessions with readyForTCCSent:", buf, 2u);
  }

  v102 = *(a1 + 224);
  if (v102 != v159)
  {
    do
    {
      v103 = v102[5];
      obji = *(v103 + 88);
      if ([*(a1 + 352) containsObject:?])
      {
        if (*(v103 + 38) == 1)
        {
          v104 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            v105 = obji;
            v106 = [obji UTF8String];
            *buf = 136446210;
            *&buf[4] = v106;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", buf, 0xCu);
          }
        }
      }

      v107 = v102[1];
      if (v107)
      {
        do
        {
          v108 = v107;
          v107 = *v107;
        }

        while (v107);
      }

      else
      {
        do
        {
          v108 = v102[2];
          v16 = *v108 == v102;
          v102 = v108;
        }

        while (!v16);
      }

      v102 = v108;
    }

    while (v108 != v159);
  }

  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  objj = *(a1 + 296);
  v109 = [objj countByEnumeratingWithState:&v184 objects:v225 count:16];
  if (v109)
  {
    v110 = *v185;
    do
    {
      for (mm = 0; mm != v109; mm = mm + 1)
      {
        if (*v185 != v110)
        {
          objc_enumerationMutation(objj);
        }

        v112 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v113 = *(*(&v184 + 1) + 8 * mm);
          *buf = 138543362;
          *&buf[4] = v113;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "statedump: Applications to be Resurrected %{public}@", buf, 0xCu);
        }
      }

      v109 = [objj countByEnumeratingWithState:&v184 objects:v225 count:16];
    }

    while (v109);
  }

  v114 = *(a1 + 248);
  v115 = qword_100BCE988;
  if (v114 != (a1 + 256))
  {
    do
    {
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = v114[4];
        v117 = *(v114 + 10);
        *buf = 138543618;
        *&buf[4] = v116;
        *&buf[12] = 1024;
        LODWORD(v234) = v117;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "statedump: Bundle checkin map: BundleID %{public}@, checkinTimes %d", buf, 0x12u);
        v115 = qword_100BCE988;
      }

      v118 = v114[1];
      if (v118)
      {
        do
        {
          v119 = v118;
          v118 = *v118;
        }

        while (v118);
      }

      else
      {
        do
        {
          v119 = v114[2];
          v16 = *v119 == v114;
          v114 = v119;
        }

        while (!v16);
      }

      v114 = v119;
    }

    while (v119 != (a1 + 256));
  }

  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "statedump: Sessions with pending FindMy device connections:", buf, 2u);
  }

  v120 = *(a1 + 224);
  if (v120 != v159)
  {
    do
    {
      v121 = v120[5];
      if (!(*(*v121 + 16))(v121) && v121[38])
      {
        v124 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          v125 = v121[11];
          *buf = 138543362;
          *&buf[4] = v125;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "statedump:     %{public}@:", buf, 0xCu);
        }

        v126 = v121[36];
        v127 = v121 + 37;
        if (v126 != v121 + 37)
        {
          v128 = qword_100BCE988;
          do
          {
            if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
            {
              v129 = v126[4];
              *buf = 138543362;
              *&buf[4] = v129;
              _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "statedump:     %{public}@:", buf, 0xCu);
              v128 = qword_100BCE988;
            }

            v130 = v126[1];
            if (v130)
            {
              do
              {
                v131 = v130;
                v130 = *v130;
              }

              while (v130);
            }

            else
            {
              do
              {
                v131 = v126[2];
                v16 = *v131 == v126;
                v126 = v131;
              }

              while (!v16);
            }

            v126 = v131;
          }

          while (v131 != v127);
        }
      }

      v122 = v120[1];
      if (v122)
      {
        do
        {
          v123 = v122;
          v122 = *v122;
        }

        while (v122);
      }

      else
      {
        do
        {
          v123 = v120[2];
          v16 = *v123 == v120;
          v120 = v123;
        }

        while (!v16);
      }

      v120 = v123;
    }

    while (v123 != v159);
  }

  v132 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "statedump: Sessions with pending latency requirements for device connections:", buf, 2u);
  }

  v133 = *(a1 + 224);
  if (v133 != v159)
  {
    do
    {
      if (!(*(*v133[5] + 16))(v133[5]))
      {
        v134 = v133[5];
        v135 = [*(v134 + 80) allKeys];
        v136 = [v135 count] == 0;

        if (!v136)
        {
          v137 = qword_100BCE988;
          if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v133[4], buf);
            v138 = buf;
            if (SBYTE1(v235) < 0)
            {
              v138 = *buf;
            }

            *v249 = 136446210;
            v250 = v138;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "statedump:     %{public}s:", v249, 0xCu);
            if (SBYTE1(v235) < 0)
            {
              operator delete(*buf);
            }
          }

          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          objk = *(v134 + 80);
          v139 = [objk countByEnumeratingWithState:&v180 objects:v224 count:16];
          if (v139)
          {
            v140 = *v181;
            do
            {
              for (nn = 0; nn != v139; nn = nn + 1)
              {
                if (*v181 != v140)
                {
                  objc_enumerationMutation(objk);
                }

                v142 = qword_100BCE988;
                if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
                {
                  v143 = *(*(&v180 + 1) + 8 * nn);
                  v144 = [*(v134 + 80) objectForKeyedSubscript:v143];
                  v145 = sub_1003BE228([v144 intValue]);
                  *buf = 138543618;
                  *&buf[4] = v143;
                  *&buf[12] = 2080;
                  v234 = v145;
                  _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "statedump:         %{public}@-->%s", buf, 0x16u);
                }
              }

              v139 = [objk countByEnumeratingWithState:&v180 objects:v224 count:16];
            }

            while (v139);
          }
        }
      }

      v146 = v133[1];
      if (v146)
      {
        do
        {
          v147 = v146;
          v146 = *v146;
        }

        while (v146);
      }

      else
      {
        do
        {
          v147 = v133[2];
          v16 = *v147 == v133;
          v133 = v147;
        }

        while (!v16);
      }

      v133 = v147;
    }

    while (v147 != v159);
  }

  v148 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "statedump: CBCentralManager LE Sessions:", buf, 2u);
  }

  v149 = *(a1 + 224);
  if (v149 != v159)
  {
    do
    {
      v150 = v149[4];
      if (!(*(*v149[5] + 16))(v149[5]))
      {
        v151 = qword_100BCE988;
        if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
        {
          sub_100018384(v150, buf);
          v152 = SBYTE1(v235) >= 0 ? buf : *buf;
          *v249 = 136446210;
          v250 = v152;
          _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}s:", v249, 0xCu);
          if (SBYTE1(v235) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      v153 = v149[1];
      if (v153)
      {
        do
        {
          v154 = v153;
          v153 = *v153;
        }

        while (v153);
      }

      else
      {
        do
        {
          v154 = v149[2];
          v16 = *v154 == v149;
          v149 = v154;
        }

        while (!v16);
      }

      v149 = v154;
    }

    while (v154 != v159);
  }

  v155 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "statedump: fScreenOffWakeHistoryMap:", buf, 2u);
  }

  sub_1003C132C(a1);
}

void sub_1003C3920(id a1, NSString *a2, NSSet *a3, BOOL *a4)
{
  v6 = qword_100BCE988;
  if (os_log_type_enabled(qword_100BCE988, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = a2;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: \t%{public}@:%@", &v7, 0x16u);
  }
}

void sub_1003C39F8(uint64_t a1)
{
  sub_1003C4138(a1);

  operator delete();
}

void sub_1003C3A64(uint64_t a1)
{
  sub_1003C4138(a1 - 136);

  operator delete();
}

void sub_1003C3AAC(uint64_t a1)
{
  sub_1003C4138(a1 - 152);

  operator delete();
}

void sub_1003C3AFC(uint64_t a1)
{
  sub_1003C4138(a1 - 160);

  operator delete();
}

void sub_1003C3B3C(uint64_t a1, uint64_t a2)
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
    sub_1003C3C08((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1003C3C08(void *a1, char *__src, char *a3)
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

void sub_1003C3DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_1003C3DDC(_DWORD *a1, const std::string *a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  v17 = sub_1000D38CC(a1, 25);
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  std::string::operator=((v17 + 2), a2);
  a1[8] = a3;
  a1[9] = a4;
  a1[10] = a5;
  a1[11] = a6;
  a1[12] = a7;
  a1[13] = a8;
  a1[14] = a9;
  return a1;
}

void sub_1003C3E70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003C3E8C(uint64_t a1, const unsigned __int8 *a2, char a3, void *a4, uint64_t *a5)
{
  uuid_copy(a1, a2);
  *(a1 + 16) = a3;
  sub_100007F20((a1 + 24), a4);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_1003C44B0(a1 + 48, *a5, a5[1], 0x8E38E38E38E38E39 * ((a5[1] - *a5) >> 1));
  return a1;
}

void sub_1003C3F08(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003C3F24(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1003C3F68(id a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  sub_100007E30(__p, "");
  v1 = sub_100017E6C();
  (*(*v1 + 176))(v1, __p);
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = [NSURL fileURLWithFileSystemRepresentation:v2 isDirectory:1 relativeToURL:0];
  v4 = [v3 URLByAppendingPathComponent:@"/Library/Database/com.apple.bluetooth-restoration-v1.plist"];
  v5 = qword_100B6D358;
  qword_100B6D358 = v4;

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003C4034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003C4060(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003C4138(uint64_t a1)
{
  *a1 = off_100AEFE48;
  *(a1 + 8) = off_100AF0090;
  *(a1 + 16) = off_100AF00C8;
  *(a1 + 24) = off_100AF00E8;
  *(a1 + 32) = off_100AF01A8;
  *(a1 + 40) = off_100AF0208;
  *(a1 + 48) = &off_100AF0248;
  *(a1 + 56) = off_100AF0260;
  *(a1 + 64) = off_100AF02A8;
  *(a1 + 72) = off_100AF02C8;
  *(a1 + 80) = &off_100AF02F0;
  *(a1 + 88) = off_100AF0308;
  *(a1 + 96) = off_100AF0338;
  *(a1 + 104) = off_100AF0360;
  *(a1 + 112) = off_100AF0380;
  *(a1 + 120) = &off_100AF03B0;
  *(a1 + 128) = &off_100AF03C8;
  *(a1 + 136) = off_100AF03E0;
  *(a1 + 144) = &off_100AF0420;
  *(a1 + 152) = off_100AF0438;
  *(a1 + 160) = off_100AF04E0;
  *(a1 + 168) = &off_100AF0508;
  sub_1003C46E0(a1 + 400, *(a1 + 408));
  v4 = (a1 + 376);
  sub_1000161FC(&v4);

  sub_10004B61C(a1 + 272, *(a1 + 280));
  sub_10005CFE4(a1 + 248, *(a1 + 256));
  sub_10000CEDC(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1003C44B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003C4514(result, a4);
  }

  return result;
}

void sub_1003C4514(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E39)
  {
    sub_1003C45E4(a1, a2);
  }

  sub_1000C7698();
}

void sub_1003C4564(uint64_t a1, unsigned __int8 *src, unsigned __int8 *a3)
{
  if (src == a3)
  {
    v6 = *(a1 + 8);
  }

  else
  {
    v5 = src;
    v6 = *(a1 + 8);
    do
    {
      uuid_copy(v6, v5);
      *(v6 + 16) = *(v5 + 8);
      v5 += 18;
      v6 += 18;
    }

    while (v5 != a3);
  }

  *(a1 + 8) = v6;
}

void sub_1003C45E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E39)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_1003C4640(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_1003C46A8(result, (v2 - *a2) >> 1);
  }

  return result;
}

void sub_1003C46A8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1003705C4(a1, a2);
  }

  sub_1000C7698();
}

void sub_1003C46E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1003C46E0(a1, *a2);
    sub_1003C46E0(a1, a2[1]);
    sub_1003C473C((a2 + 4));

    operator delete(a2);
  }
}

void sub_1003C473C(uint64_t a1)
{
  sub_100028EB4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *sub_1003C4E3C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10002717C(a1, a2);

  operator delete(a2);
  return v3;
}

void *sub_1003C4F48(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1003C503C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1003C5088(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 9;
        sub_1003C5110(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1003C5110(uint64_t a1, void *a2)
{
  v3 = a2[6];
  if (v3)
  {
    a2[7] = v3;
    operator delete(v3);
  }

  v4 = a2[3];
  if (v4)
  {
    a2[4] = v4;

    operator delete(v4);
  }
}

uint64_t sub_1003C5168(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xE38E38E38E38E38)
  {
    sub_1000C7698();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 1) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 1);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 1) >= 0x71C71C71C71C71CLL)
  {
    v6 = 0xE38E38E38E38E38;
  }

  else
  {
    v6 = v3;
  }

  v13 = a1;
  if (v6)
  {
    sub_1003C45E4(a1, v6);
  }

  __p = 0;
  v10 = 18 * v2;
  v11 = 18 * v2;
  v12 = 0;
  uuid_copy((18 * v2), a2);
  *(v10 + 16) = *(a2 + 16);
  v11 += 18;
  sub_1003C5314(a1, &__p);
  v7 = a1[1];
  if (v11 != v10)
  {
    v11 = (v11 - v10 - 18) % 0x12uLL + v10;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_1003C52BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C5314(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = v4 + *a1 - v6;
    do
    {
      uuid_copy(v8, v5);
      *(v8 + 16) = *(v5 + 16);
      v5 += 18;
      v8 += 18;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

uint64_t sub_1003C5428(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_1000867EC(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_1003C5894(void *result, uint64_t a2)
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

void sub_1003C5938(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_fault_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

void sub_1003C5964(uint64_t a1)
{
  if (sub_1005FC9D8())
  {
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    sub_100825378();
  }

  if ((*(sub_10000C7D0() + 800) - 3000) <= 0x3E7 && sub_1005FCF68() && sub_1005FCFD0() && _os_feature_enabled_impl())
  {
    sub_1003C60F8(a1, 1);
  }

  else if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    sub_1008253AC();
  }
}

void sub_1003C5B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003C5C30(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003C5BAC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    *v1 = off_100AF0C10;

    sub_10007A068(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_1003C5C30(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10004B61C(v1 + 240, *(v1 + 248));
    sub_10000CEDC(v1 + 216, *(v1 + 224));
    sub_10004B61C(v1 + 192, *(v1 + 200));
    sub_10000CEDC(v1 + 168, *(v1 + 176));
    sub_10004B61C(v1 + 136, *(v1 + 144));
    sub_10004B61C(v1 + 112, *(v1 + 120));
    sub_10004B61C(v1 + 88, *(v1 + 96));
    *v1 = off_100AF0C10;

    sub_10007A068(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1003C5CF8(void *a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, (a1 + 8));
  v4 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "remote and installed";
    if (a2)
    {
      v5 = "installed";
    }

    *buf = 136315138;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Querying %s assets", buf, 0xCu);
  }

  v6 = [[MAAssetQuery alloc] initWithType:*a1];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 setDoNotBlockOnNetworkStatus:a2];
  if (a2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v6 returnTypes:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003C6A50;
  v10[3] = &unk_100AF0AD8;
  v12 = a1;
  v13 = a2;
  v8 = v6;
  v11 = v8;
  [v8 queryMetaData:v10];

  return sub_1000088CC(v14);
}

void sub_1003C5E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1003C5EC0(uint64_t a1)
{
  v12 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "MobileAsset");
  sub_100007E30(__p, "EnableFiveMinDownloads");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v12);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = XPC_ACTIVITY_INTERVAL_1_DAY;
  if (v11 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    goto LABEL_11;
  }

  if (v12 == 1)
  {
    v5 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warning: Enabling aggressive 5 minute download timer!", buf, 2u);
    }

    v4 = XPC_ACTIVITY_INTERVAL_5_MIN;
  }

LABEL_11:
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_uint64(v6, XPC_ACTIVITY_NETWORK_DOWNLOAD_SIZE, 0x400uLL);
  xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, v4);
  xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003C6798;
  v7[3] = &unk_100AF0A90;
  v7[4] = a1;
  xpc_activity_register("com.apple.bluetooth.mobileassets", v6, v7);
  xpc_release(v6);
}

void sub_1003C60C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C60F8(uint64_t a1, char a2)
{
  v4 = sub_1003C7BB8(a1, 0);
  v5 = objc_opt_new();
  *(a1 + 168) = -1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003C7CF8;
  v6[3] = &unk_100AF0B40;
  v6[4] = a1;
  v7 = a2;
  [v4 interestInContent:@"bt ptbasset: reason-start-monitoring" withInterestPolicy:v5 completion:v6];
}

uint64_t sub_1003C61E4(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 64);
  sub_1003C95E8(a1 + 8, *(a1 + 16));
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  sub_1003C625C(a1);
  return sub_1000088CC(v3);
}

void sub_1003C625C(uint64_t a1)
{
  sub_1003C84BC(a1);
  v2 = *(a1 + 160);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(a1 + 168);
  if (v3 != -1)
  {
    notify_cancel(v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    *(a1 + 176) = 0;
  }

  v5 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MAFetch: MobileAutoAssetManger terminate called", v6, 2u);
  }
}

uint64_t sub_1003C62F8(uint64_t a1, int a2)
{
  v9 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 64);
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a2)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_6;
  }

  v6 = *sub_1003C6394(a1 + 8, &v9);
LABEL_8:
  sub_1000088CC(v8);
  return v6;
}

void sub_1003C6380(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003C6394(uint64_t a1, int *a2)
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
      v4 = *(v2 + 8);
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

void sub_1003C63E4(uint64_t a1)
{
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ---------------- MobileAsset Manager ----------------", &buf, 2u);
    v2 = qword_100BCE968;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 128);
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: fRetryLocalAssetReadCounter:%d", &buf, 8u);
  }

  v4 = *(a1 + 8);
  if (v4 != (a1 + 16))
  {
    do
    {
      v5 = sub_10069E8EC(v4[5]);
      if (v5)
      {
        v6 = qword_100BCE968;
        if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
        {
          sub_1003C65EC(v5, &buf);
          v7 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          *v12 = 136446210;
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "statedump: %{public}s", v12, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }
      }

      v8 = v4[1];
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
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != (a1 + 16));
  }
}

void sub_1003C65EC(void *a1@<X1>, std::string *a2@<X8>)
{
  v3 = a1;
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_1003C7B20(v3, &__p);
  v5 = sub_1003C74D0(v4, v3);
  if (v16 >= 0)
  {
    v6 = HIBYTE(v16);
  }

  else
  {
    v6 = v15;
  }

  memset(&v13, 0, sizeof(v13));
  v7 = &v13;
  sub_1003A5170(&v13, v6 + 2);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (v16 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    memmove(v7, p_p, v6);
  }

  strcpy(v7 + v6, " v");
  std::to_string(&v12, v5);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v13, v9, size);
  *a2 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void sub_1003C673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_1003C6798(uint64_t a1, xpc_activity_t activity)
{
  v3 = *(a1 + 32);
  state = xpc_activity_get_state(activity);
  v5 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "com.apple.bluetooth.mobileassets activity triggered with state %ld", &v6, 0xCu);
  }

  if (state == 2)
  {
    sub_1003C689C(v3);
    if (!xpc_activity_set_state(activity, 5) && os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_1008253E0();
    }
  }
}

id sub_1003C689C(uint64_t *a1)
{
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Downloading MobileBluetoothAssets catalog", buf, 2u);
  }

  v3 = *a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003C6964;
  v5[3] = &unk_100AF0AB0;
  v5[4] = a1;
  return [MAAsset startCatalogDownload:v3 then:v5];
}

void sub_1003C6964(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = qword_100BCE968;
  v5 = os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = 136315138;
    v7 = sub_1003C6A2C(v5, a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Catalog download completed with result: %s", &v6, 0xCu);
  }

  if (!a2)
  {
    sub_1003C5CF8(v3, 0);
  }
}

const char *sub_1003C6A2C(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x24)
  {
    return "UnknownDownloadResultType";
  }

  else
  {
    return off_100AF0C48[a2];
  }
}

void sub_1003C6A50(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = qword_100BCE968;
  v6 = os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v7 = sub_1003C6EBC(v6, a2);
    v8 = *(v4 + 128);
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mobile asset query completed with result: %s fRetryLocalAssetReadCounter:%d", buf, 0x12u);
  }

  if (!a2 || a2 == 2 && *(a1 + 48))
  {
    memset(buf, 0, sizeof(buf));
    v9 = [*(a1 + 32) results];
    sub_1003C6EE0(v4, v9, buf);

    v10 = *buf;
    if (*buf != &buf[8])
    {
      do
      {
        if (*(a1 + 48) == 1)
        {
          v11 = qword_100BCE968;
          if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
          {
            sub_1003C65EC(*(v10 + 5), &__p);
            v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *v24 = 136315138;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reading %s asset", v24, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          __p.__r_.__value_.__r.__words[0] = (v10 + 32);
          v13 = sub_1003C9514(v4 + 8, v10 + 8);
          (*(*v13[5] + 16))(v13[5], *(v10 + 5));
          *(v4 + 128) = 0;
        }

        else if ([*(v10 + 5) wasLocal])
        {
          v14 = qword_100BCE968;
          if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEBUG))
          {
            sub_1003C65EC(*(v10 + 5), &__p);
            v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *v24 = 136315138;
            v25 = v15;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s asset is already present, no need to redownload", v24, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          sub_1003C713C(v4, *(v10 + 5));
        }

        v16 = *(v10 + 1);
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
            v17 = *(v10 + 2);
            v18 = *v17 == v10;
            v10 = v17;
          }

          while (!v18);
        }

        v10 = v17;
      }

      while (v17 != &buf[8]);
    }

    sub_1003C966C(buf, *&buf[8]);
  }

  else if (*(a1 + 48))
  {
    v20 = *(v4 + 128);
    if (v20 <= 4)
    {
      *(v4 + 128) = v20 + 1;
      v21 = dispatch_time(0, 5000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003C72F0;
      block[3] = &unk_100ADF8F8;
      block[4] = v4;
      dispatch_after(v21, &_dispatch_main_q, block);
    }
  }

  if (*(a1 + 48) == 1 && !*(v4 + 24))
  {
    if (qword_100B53FE8 != -1)
    {
      sub_100825414();
    }

    v19 = qword_100B53FE0;
    sub_100007E30(buf, "MobileAsset");
    sub_100007E30(&__p, "No assets found from querying local assets");
    sub_1005780BC(v19, buf, &__p.__r_.__value_.__l.__data_, 0.0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1003C6E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1003C6EBC(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xE)
  {
    return "UnknownQueryResultType";
  }

  else
  {
    return off_100AF0D70[a2];
  }
}

void sub_1003C6EE0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  a3[1] = 0;
  v6 = (a3 + 1);
  a3[2] = 0;
  *a3 = a3 + 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = sub_1003C72FC(a1, v10);
        v21 = v11;
        v12 = *v6;
        if (!*v6)
        {
LABEL_11:
          v26 = &v21;
          v14 = sub_1003C9710(a3, &v21);
          v15 = v10;
          v16 = v14[5];
          v14[5] = v15;
          goto LABEL_12;
        }

        while (1)
        {
          v13 = *(v12 + 8);
          if (v11 >= v13)
          {
            break;
          }

LABEL_10:
          v12 = *v12;
          if (!v12)
          {
            goto LABEL_11;
          }
        }

        if (v13 < v11)
        {
          ++v12;
          goto LABEL_10;
        }

        v26 = &v21;
        v16 = sub_1003C9710(a3, &v21)[5];
        v17 = sub_1003C74D0(v16, v16);
        if (sub_1003C74D0(v17, v10) > v17)
        {
          v26 = &v21;
          v18 = sub_1003C9710(a3, &v21);
          objc_storeStrong(v18 + 5, v10);
        }

LABEL_12:

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v19 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      v7 = v19;
    }

    while (v19);
  }
}

void sub_1003C70EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_1003C966C(v9, *(v9 + 8));

  _Unwind_Resume(a1);
}

void sub_1003C713C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003C65EC(v3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v13 = p_p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Downloading %s asset", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  [v3 logAsset];
  v6 = objc_alloc_init(MADownloadOptions);
  [v6 setDiscretionary:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003C754C;
  v8[3] = &unk_100AF0B20;
  v10 = a1;
  v7 = v3;
  v9 = v7;
  [v7 startDownload:v6 then:v8];
}

uint64_t sub_1003C72FC(uint64_t a1, void *a2)
{
  __p = 0;
  v14 = 0uLL;
  sub_1003C7B20(a2, &__p);
  if (SHIBYTE(v14) < 0 && v14 == 23)
  {
    v2 = __p;
    if (*__p != 0x6C42656C69626F4DLL || *(__p + 1) != 0x4468746F6F746575 || *(__p + 15) != 0x6573616261746144)
    {
      goto LABEL_23;
    }

    v5 = 1;
    goto LABEL_33;
  }

  if (SHIBYTE(v14) < 0)
  {
    v2 = __p;
    if (v14 != 21)
    {
LABEL_23:
      v5 = 0;
LABEL_34:
      operator delete(v2);
      return v5;
    }

    v9 = 0x4D6F62696C65426CLL;
    v10 = bswap64(*__p);
    if (v10 == 0x4D6F62696C65426CLL && (v9 = 0x7565746F6F746843, v10 = bswap64(*(__p + 1)), v10 == 0x7565746F6F746843) && (v9 = 0x7468436F6E666967, v10 = bswap64(*(__p + 13)), v10 == 0x7468436F6E666967))
    {
      v11 = 0;
    }

    else if (v10 < v9)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    v5 = 2 * (v11 == 0);
LABEL_33:
    v2 = __p;
    goto LABEL_34;
  }

  if (SHIBYTE(v14) != 21)
  {
    return 0;
  }

  v6 = 0x4D6F62696C65426CLL;
  v7 = bswap64(__p);
  if (v7 == 0x4D6F62696C65426CLL && (v6 = 0x7565746F6F746843, v7 = bswap64(v14), v7 == 0x7565746F6F746843) && (v6 = 0x7468436F6E666967, v7 = bswap64(*(&v14 + 5)), v7 == 0x7468436F6E666967))
  {
    v8 = 0;
  }

  else if (v7 < v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return 2 * (v8 == 0);
}

id sub_1003C74D0(uint64_t a1, void *a2)
{
  v2 = [a2 attributes];
  v3 = [v2 objectForKey:ASAttributeContentVersion];
  v4 = [v3 intValue];

  return v4;
}

void sub_1003C754C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = qword_100BCE968;
  if (!os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_5;
  }

  p_p = &__p;
  sub_1003C65EC(*(a1 + 32), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = sub_1003C6A2C(v7, a2);
  *buf = 136315394;
  v16 = p_p;
  v17 = 2080;
  v18 = v8;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s asset download completed with result: %s", buf, 0x16u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (a2)
    {
      return;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
      return;
    }
  }

  *buf = sub_1003C72FC(v4, *(a1 + 32));
  __p.__r_.__value_.__r.__words[0] = buf;
  v9 = sub_1003C9514(v4 + 8, buf);
  v10 = sub_10069E8EC(v9[5]);
  if (sub_1003C7784(v10, *(a1 + 32), v10))
  {
    sub_1003C7860(v4, v10);
  }

  __p.__r_.__value_.__r.__words[0] = buf;
  v11 = sub_1003C9514(v4 + 8, buf);
  (*(*v11[5] + 16))(v11[5], *(a1 + 32));
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003C79D4;
  v12[3] = &unk_100AF0AF8;
  v13 = *buf;
  sub_1003C7908(v4 + 32, v12);
}

uint64_t sub_1003C7784(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (!v5 || [v5 state] == 5 || objc_msgSend(v6, "state") == 6)
  {
    v7 = 0;
  }

  else
  {
    v9 = [v4 assetId];
    v10 = [v6 assetId];
    v7 = [v9 isEqualToString:v10] ^ 1;
  }

  return v7;
}

void sub_1003C7860(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003C7A04;
  v4[3] = &unk_100AF0B20;
  v5 = a2;
  v6 = a1;
  v3 = v5;
  [v3 purge:v4];
}

void sub_1003C7908(uint64_t a1, void *a2)
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

void sub_1003C7A04(uint64_t a1, unint64_t a2)
{
  v4 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    p_p = &__p;
    sub_1003C65EC(v5, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v8 = sub_1003C7AFC(v7, a2);
    *buf = 136315394;
    v11 = p_p;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Outdated %s asset has been purged with result %s", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

const char *sub_1003C7AFC(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xB)
  {
    return "UnknownPurgeResultType";
  }

  else
  {
    return off_100AF0DE8[a2];
  }
}

void sub_1003C7B20(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = [a1 attributes];
  v3 = [v4 objectForKey:@"AssetName"];
  sub_100007E30(a2, [v3 UTF8String]);
}

id sub_1003C7BB8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_1003C8C08();
  v4 = v2;
  if (!v2)
  {
    v4 = [[MAAutoAssetSelector alloc] initForAssetType:@"com.apple.MobileAsset.MobileBluetoothAutoAssets" withAssetSpecifier:v3];
  }

  v10 = 0;
  v5 = [[MAAutoAsset alloc] initForClientName:@"BTMobileAutoAssetClient" selectingAsset:v4 error:&v10];
  v6 = v10;
  if (v6 || !v5)
  {
    v8 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_10082543C(v2, v6, v8);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

void sub_1003C7CF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = qword_100BCE968;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 summary];
      sub_1008254B4(v9, v6, &v11);
    }

    if (*(a1 + 40) == 1)
    {
      sub_1003C7F68(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 summary];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MAFetch: initializeWithCompletionBlock | assetSelector:%@ | SUCCESS", &v11, 0xCu);
    }

    sub_1003C7E58(v7, 0);
  }
}

void sub_1003C7E58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MAFetch: interestRegisterationCallback Entered", v8, 2u);
  }

  sub_1003C8DDC(a1);
  sub_1003C8A70(a1);
  sub_1003C86F0(a1);
  v5 = [[BluetoothPowerTableAssetVotingManager alloc] initWithName:@"BTPowerTableVotingManager"];
  v6 = *(a1 + 176);
  *(a1 + 176) = v5;

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 addObserver:*(a1 + 176) selector:"handlePowerTableEvalationNotification:" name:CENPowerTableEvaluationNotification object:0];
}

void sub_1003C7F68(uint64_t a1)
{
  v2 = arc4random_uniform(5u);
  v3 = dispatch_time(0, 1000000000 * v2);
  v4 = *(sub_1005710D8() + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C8B90;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_after(v3, v4, block);
}

void sub_1003C800C(uint64_t a1)
{
  v2 = sub_1003C7BB8(a1, 0);
  v3 = objc_opt_new();
  [v3 setUserInitiated:1];
  if ((*(a1 + 172) & 1) == 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003C8180;
    v5[3] = &unk_100AF0B60;
    v5[4] = a1;
    [v2 lockContent:@"bt ptbasset: client-lock-reason" withUsagePolicy:v3 withTimeout:-2 completion:v5];
    v4 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MAFetch: lockAutoAsset: asset content locked, autoAsset %@", buf, 0xCu);
    }

    *(a1 + 172) = 1;
  }
}

void sub_1003C8188(uint64_t a1, void *a2, int a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11 && !v14 && a3)
  {
    v16 = sub_1003C7BB8(a1, v11);
    v17 = *(a1 + 136);
    *(a1 + 136) = v16;

    v18 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 136) contentLockedReason];
      v20 = *(a1 + 136);
      v21 = [v20 assetSelector];
      *buf = 138413058;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MAFetch: asset content locked, LockedReason %@ fLockedAutoAsset %p assetSelector %@ LockedAutoAsset selector %@", buf, 0x2Au);
    }

    v22 = *(a1 + 136);
    if (v22)
    {
      v23 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v33 = v22;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MAFetch: Created LockedAutotAsset %@ with autoAssetWithSelector %@", buf, 0x16u);
      }

      v24 = [v12 path];
      v25 = [NSURL fileURLWithPath:v24 isDirectory:1];
      v26 = *(a1 + 152);
      *(a1 + 152) = v25;

      v27 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 152);
        *buf = 138412290;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MAFetch: AssetLocalURL %@", buf, 0xCu);
      }

      v29 = *(a1 + 136);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1003C950C;
      v31[3] = &unk_100AF0BE0;
      v31[4] = a1;
      [v29 currentStatus:v31];
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v30 = [v15 localizedDescription];
      sub_10082550C(v30, v13, buf);
    }

    *(a1 + 172) = 0;
  }
}

void sub_1003C84BC(uint64_t a1)
{
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: unlockAutoAsset Entered", buf, 2u);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = [v3 assetSelector];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003C85E8;
    v5[3] = &unk_100AF0B80;
    v5[4] = a1;
    [MAAutoAsset endAllPreviousLocksOfSelector:v4 forClientName:@"BTMobileAutoAssetClient" completion:v5];
  }

  else if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    sub_100825564();
  }

  *(a1 + 172) = 0;
}

void sub_1003C85F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE968;
  if (v6)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100825598(a1, v6, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 136);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MAFetch: Successfully unlocked Asset %@", &v10, 0xCu);
    }

    v9 = *(a1 + 136);
    *(a1 + 136) = 0;
  }
}

void sub_1003C86F0(uint64_t a1)
{
  v14 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "MobileAsset");
  sub_100007E30(__p, "EnablePeriodicCheckForNewerVersion");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  if (v14 == 1)
  {
    v4 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 60;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MAFetch: Check for Newer Version enabled with interval %u", buf, 8u);
    }

    v5 = sub_1005710D8();
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 8));
    *(a1 + 160) = v6;
    v7 = qword_100BCE968;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MAFetch: PeriodicCheckTimerCreated", buf, 2u);
        v8 = *(a1 + 160);
      }

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1003C8988;
      handler[3] = &unk_100ADF8F8;
      handler[4] = a1;
      dispatch_source_set_event_handler(v8, handler);
      v9 = *(a1 + 160);
      v10 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v9, v10, 0xDF8475800uLL, 0);
      dispatch_activate(*(a1 + 160));
    }

    else if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100825614(v7);
    }
  }
}

void sub_1003C894C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003C8990(uint64_t a1)
{
  v2 = sub_1003C7BB8(a1, 0);
  v3 = objc_opt_new();
  [v3 setUserInitiated:1];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003C8F80;
  v4[3] = &unk_100AF0BC0;
  v4[4] = a1;
  [v2 checkForNewer:@"bt ptbasset: reason-forced-discovery" withUsagePolicy:v3 withTimeout:-2 completion:v4];
}

void sub_1003C8A70(uint64_t a1)
{
  v2 = arc4random_uniform(5u);
  v3 = dispatch_time(0, 1000000000 * v2);
  v4 = *(sub_1005710D8() + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C8B14;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_after(v3, v4, block);
}

void sub_1003C8B14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: CheckForNewerAssetOnInitialization called", v3, 2u);
  }

  sub_1003C84BC(v1);
  sub_1003C800C(v1);
}

uint64_t sub_1003C8B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: Initialization Retry Called", v4, 2u);
  }

  return sub_1003C60F8(v1, 0);
}

__CFString *sub_1003C8C08()
{
  v0 = MGCopyAnswer();
  v1 = sub_10000C7D0();
  v2 = sub_10000C7D0();
  v3 = [NSString stringWithUTF8String:sub_10009B750(v1, *(v2 + 800))];
  v4 = [v3 isEqualToString:@"Unknown Chipset"];
  if (v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5 & 1) != 0 || ([v0 isEqualToString:&stru_100B0F9E0])
  {
    if (!v3)
    {
      v6 = @"PowerTable";
      goto LABEL_12;
    }

    v6 = @"PowerTable";
    if ([v3 isEqualToString:&stru_100B0F9E0])
    {
      goto LABEL_12;
    }

    v7 = [NSString stringWithFormat:@"%@_%@", @"PowerTable", v3];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"%@_%@_%@", @"PowerTable", v3, v0];
  }

  v6 = v7;
LABEL_12:

  return v6;
}

void sub_1003C8D50(uint64_t a1)
{
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: Notification Received", v3, 2u);
  }

  sub_1003C800C(a1);
}

void sub_1003C8DDC(uint64_t a1)
{
  v2 = sub_1003C8C08();
  v3 = [MAAutoAssetNotifications notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:@"com.apple.MobileAsset.MobileBluetoothAutoAssets" forAssetSpecifier:v2];
  v4 = qword_100BCE968;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MAFetch: registerForAutoAssetDownloadedNotification %@", buf, 0xCu);
    }

    v5 = v3;
    v6 = [v3 UTF8String];
    v7 = *(sub_1005710D8() + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1003C8F78;
    handler[3] = &unk_100AF0BA0;
    handler[4] = a1;
    notify_register_dispatch(v6, (a1 + 168), v7, handler);
  }

  else if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    sub_100825694();
  }
}

void sub_1003C8F88(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a2;
  v8 = a4;
  v9 = a5;
  v10 = qword_100BCE968;
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 code];
      if (v11 == 6205)
      {
        v12 = @"Latest version already downloaded";
      }

      else
      {
        v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 code]);
      }

      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MAFetch: Failure to find newer Asset %@", &v13, 0xCu);
      if (v11 != 6205)
      {
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MAFetch: Newer Asset Found on Server with Selector %@ with Attributes %@", &v13, 0x16u);
  }
}

void sub_1003C9134(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = qword_100BCE968;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v23 = [v7 localizedDescription];
      sub_100825740(v23, buf, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MAFetch: Ptb Auto Asset Successfully Received current status", buf, 2u);
    }

    v9 = [v5 availableForUseAttributes];
    v10 = v9 == 0;

    if (v10)
    {
      v24 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
      {
        sub_1008256C8(v5, v24);
      }
    }

    else
    {
      v11 = objc_opt_new();
      v12 = *(a1 + 144);
      *(a1 + 144) = v11;

      v13 = *(a1 + 144);
      v14 = [v5 availableForUseAttributes];
      [v13 addEntriesFromDictionary:v14];

      v15 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v5 assetSelector];
        v17 = [*(a1 + 136) assetSelector];
        *buf = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MAFetch: assetCurrentStatusCallback currentStatus assetSelector %@ LockedAutoAsset selector %@", buf, 0x16u);
      }

      v18 = sub_1003C8C08();
      v19 = *(a1 + 136);
      if (v19)
      {
        v20 = [v19 assetSelector];
        v21 = [v20 assetSpecifier];
        v22 = [v21 isEqualToString:v18];

        if (v22)
        {
          operator new();
        }
      }
    }
  }

  sub_1003C84BC(a1);
}

uint64_t *sub_1003C9514(uint64_t a1, int *a2)
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

void sub_1003C95E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1003C95E8(a1, *a2);
    sub_1003C95E8(a1, a2[1]);
    v4 = a2[5];
    a2[5] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator delete(a2);
  }
}

void sub_1003C966C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1003C966C(a1, *a2);
    sub_1003C966C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_1003C9710(uint64_t a1, int *a2)
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

uint64_t sub_1003C9800(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1003C984C(uint64_t a1, uint64_t a2)
{
  *a1 = off_100AF0E58;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  atomic_store(0, (a1 + 40));
  atomic_store(0, (a1 + 41));
}

uint64_t sub_1003C9884(uint64_t a1)
{
  *a1 = off_100AF0E58;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1003C98D4(uint64_t a1)
{
  *a1 = off_100AF0E58;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1003C9944(uint64_t a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 description];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Publishing device with the following properties %@", buf, 0xCu);
    }

    atomic_store(1u, (a1 + 40));
    CFRetain(v5);
    v8 = +[AudioDeviceManager sharedManager];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003C9AF0;
    block[3] = &unk_100AE0880;
    block[4] = a1;
    block[5] = v5;
    v10 = a2;
    dispatch_async([v8 getXpcQueue], block);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_100825798();
  }
}

void sub_1003C9AF0(uint64_t a1)
{
  *keys = *off_100AF0E68;
  v2 = *(a1 + 32);
  v3 = _CFXPCCreateXPCObjectFromCFObject();
  values[0] = xpc_int64_create(*(a1 + 48));
  values[1] = v3;
  v4 = xpc_dictionary_create(keys, values, 2uLL);
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 description];
      *buf = 67109634;
      v14 = v3 == 0;
      v15 = 1024;
      v16 = v5 == 0;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create an xpc msg (reason: xpcProperties %d, xpcArgs %d) to send publish msg with following parameters %@", buf, 0x18u);
    }

    (*(**(v2 + 32) + 80))(*(v2 + 32));
  }

  else
  {
    v7 = +[AudioDeviceManager sharedManager];
    if (*(v2 + 31) < 0)
    {
      sub_100008904(__p, *(v2 + 8), *(v2 + 16));
    }

    else
    {
      v9 = *(v2 + 8);
      v12 = *(v2 + 24);
      *__p = v9;
    }

    [v7 publishAndRegisterDevice:2 withArgs:v5 uid:__p device:v2];
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  CFRelease(*(a1 + 40));
  xpc_release(v5);
  if (v3)
  {
    xpc_release(v3);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008257D8();
  }

  xpc_release(values[0]);
}

void sub_1003C9D68(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100825850(a2, v6);
  }

  CFRetain(a3);
  v7 = +[AudioDeviceManager sharedManager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003C9E54;
  block[3] = &unk_100AEC130;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async([v7 getXpcQueue], block);
}

void sub_1003C9E54(uint64_t a1)
{
  v2 = *(a1 + 32);
  keys = *(a1 + 40);
  values = _CFXPCCreateXPCObjectFromCFObject();
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  sub_1003C9F38(v2, 3, v3);
  xpc_release(v3);
  if (values)
  {
    xpc_release(values);
  }

  else if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    sub_1008258C8();
  }

  CFRelease(*(a1 + 48));
}

void sub_1003C9F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG))
  {
    sub_100825940(a2, v6);
  }

  v7 = +[AudioDeviceManager sharedManager];
  if (*(a1 + 31) < 0)
  {
    sub_100008904(__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *__p = *(a1 + 8);
    v9 = *(a1 + 24);
  }

  [v7 sendMsg:a2 withArgs:a3 uid:__p];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003CA028(uint64_t a1)
{
  v2 = +[AudioDeviceManager sharedManager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003CA0CC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async([v2 getXpcQueue], block);
}

void sub_1003CA0DC(uint64_t a1)
{
  v2 = (a1 + 41);
  v3 = atomic_load((a1 + 41));
  v4 = qword_100BCE8D0;
  if ((v3 & 1) != 0 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Close called when Plugin device is already in closing state.", buf, 2u);
    v4 = qword_100BCE8D0;
  }

  atomic_store(1u, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending XpcAudioPluginDevice close", buf, 2u);
  }

  v5 = atomic_load((a1 + 40));
  if (v5)
  {
    sub_1003C9F38(a1, 4, 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008259B8();
    }

    v6 = +[AudioDeviceManager sharedManager];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003CA260;
    block[3] = &unk_100ADF8F8;
    block[4] = a1;
    dispatch_async([v6 getXpcQueue], block);
  }
}

uint64_t sub_1003CA268(uint64_t a1)
{
  v2 = atomic_load((a1 + 41));
  v3 = qword_100BCE8D0;
  if ((v2 & 1) == 0 && os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "readyForDelete called when Plugin device isn't in closing state.", buf, 2u);
    v3 = qword_100BCE8D0;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XpcAudioPluginDevice is closing ready for delete", v5, 2u);
  }

  return (*(**(a1 + 32) + 72))(*(a1 + 32));
}

void sub_1003CA350(uint64_t a1, xpc_object_t xdict)
{
  v3 = (a1 + 40);
  v4 = atomic_load((a1 + 40));
  if (v4 & 1) == 0 || (v5 = atomic_load((a1 + 41)), (v5))
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
    {
      sub_1008259F8(v3, a1, v6);
    }

    return;
  }

  int64 = xpc_dictionary_get_int64(xdict, "kBTAudioMsgId");
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgs");
  if (int64 > 13)
  {
    if (int64 > 36)
    {
      if ((int64 - 37) < 3)
      {
LABEL_27:

        sub_1003CA7E8(a1, int64);
        return;
      }
    }

    else
    {
      switch(int64)
      {
        case 0xE:

          sub_1003CA864(a1);
          return;
        case 0x14:
          v12 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received Uni-Bi Direction Transition", buf, 2u);
          }

          (*(**(a1 + 32) + 40))(*(a1 + 32));
          return;
        case 0x15:
          v11 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received Bi-Uni Direction Transition", v13, 2u);
          }

          (*(**(a1 + 32) + 32))(*(a1 + 32));
          return;
      }
    }

LABEL_42:

    sub_1003CA8E8(a1, int64);
    return;
  }

  if (int64 > 6)
  {
    if ((int64 - 9) >= 3)
    {
      if (int64 == 7)
      {
        v10 = *(**(a1 + 32) + 24);

LABEL_12:
        v10();
        return;
      }

      goto LABEL_42;
    }

    goto LABEL_27;
  }

  switch(int64)
  {
    case 3:

      sub_1003CA6A8(a1, value);
      break;
    case 5:

      sub_1003CA71C(a1, value);
      break;
    case 6:
      v10 = *(**(a1 + 32) + 16);

      goto LABEL_12;
    default:
      goto LABEL_42;
  }
}

BOOL sub_1003CA6A8(uint64_t a1, xpc_object_t xdict)
{
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1003CA964;
  applier[3] = &unk_100AF0E78;
  applier[4] = a1;
  return xpc_dictionary_apply(xdict, applier);
}

uint64_t sub_1003CA71C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgDeviceSharedMemoryOutput");
  v5 = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgDeviceSharedMemoryInput");
  region = 0;
  if (value)
  {
    value = xpc_shmem_map(value, &region);
  }

  v9 = 0;
  if (v5)
  {
    v6 = xpc_shmem_map(v5, &v9);
    v7 = v9;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return (*(**(a1 + 32) + 8))(*(a1 + 32), region, value, v7, v6);
}

void sub_1003CA7E8(uint64_t a1, uint64_t a2)
{
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  (*(**(a1 + 32) + 48))(*(a1 + 32), a2, v4);

  CFRelease(v4);
}

void sub_1003CA864(uint64_t a1)
{
  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (v2)
  {
    v3 = v2;
    v4 = CFBooleanGetValue(v2) != 0;
    (*(**(a1 + 32) + 56))(*(a1 + 32), v4);

    CFRelease(v3);
  }
}

void sub_1003CA8E8(uint64_t a1, uint64_t a2)
{
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  (*(**(a1 + 32) + 88))(*(a1 + 32), a2, v4);

  CFRelease(v4);
}

uint64_t sub_1003CA964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = _CFXPCCreateCFObjectFromXPCObject();
  (***(v3 + 32))(*(v3 + 32), a2, v4);
  CFRelease(v4);
  return 1;
}

uint64_t sub_1003CAA00(int a1, char *__s1, const char *a3, int a4)
{
  v18 = 0;
  if (!strcmp(__s1, "00:00:00:00:00:00"))
  {
    result = os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_100825A94();
      return 0;
    }
  }

  else
  {
    if (!a1)
    {
      return 4294902295;
    }

    result = 4294902295;
    if (a1 <= 1024)
    {
      v8.i32[0] = a1;
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.i32[0] <= 1u)
      {
        v11 = CFStringCreateWithCString(kCFAllocatorDefault, a3, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          Mutable = sub_1003CAD4C(&v18, __s1, 0, 0);
          v14 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v20 = v18;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BTKCSetData calling _BTKCGetDataCopy, returned %d", buf, 8u);
          }

          if (v18 == -34019)
          {
            if (!Mutable)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (!Mutable)
            {
              v18 = 4;
LABEL_46:
              CFRelease(v12);
              return v18;
            }
          }

          if (a1 <= 31)
          {
            if (a1 <= 3)
            {
              if (a1 == 1)
              {
                v15 = @"Pincode";
              }

              else
              {
                if (a1 != 2)
                {
                  goto LABEL_43;
                }

                v15 = @"LinkKey";
              }
            }

            else
            {
              switch(a1)
              {
                case 4:
                  v15 = @"LinkKeyType";
                  break;
                case 8:
                  v15 = @"LocalAddress";
                  break;
                case 16:
                  v15 = @"MagicAccIRK";
                  break;
                default:
                  goto LABEL_43;
              }
            }
          }

          else if (a1 > 255)
          {
            switch(a1)
            {
              case 256:
                v15 = @"MagicAccRachet";
                break;
              case 512:
                v15 = @"GuestAccIRK";
                break;
              case 1024:
                v15 = @"GuestAccEncKey";
                break;
              default:
                goto LABEL_43;
            }
          }

          else
          {
            switch(a1)
            {
              case 32:
                v15 = @"MagicAccEncKey";
                break;
              case 64:
                v15 = @"MagicAccKey";
                break;
              case 128:
                v15 = @"MagicAccHint";
                break;
              default:
                goto LABEL_43;
            }
          }

          CFDictionarySetValue(Mutable, v15, v12);
LABEL_43:
          v16 = sub_1003CB454(__s1, 0, Mutable, 0, 0, a4, 1);
          v18 = v16;
          v17 = qword_100BCE940;
          if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v20 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "BTKCSetData calling _BTKCSetData, returned %d", buf, 8u);
          }

LABEL_45:
          CFRelease(Mutable);
          goto LABEL_46;
        }

        return 4294902295;
      }
    }
  }

  return result;
}

const void *sub_1003CAD4C(int *a1, const char *a2, const __CFString *a3, int a4)
{
  result = 0;
  v7 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = @"MobileBluetooth";
  }

  CFDictionaryAddValue(Mutable, kSecAttrService, v9);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, v7);
  v10 = kSecUseSystemKeychain;
  CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitOne);
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  if (a4)
  {
    v11 = kCFBooleanTrue;
  }

  else
  {
    v11 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(Mutable, kSecAttrSynchronizable, v11);
  CFDictionaryAddValue(Mutable, kSecReturnAttributes, kCFBooleanTrue);
  v12 = SecItemCopyMatching(Mutable, &result);
  v13 = v12;
  if (!result || v12)
  {
    if (v12 == -25300)
    {
      v29 = 0;
      v13 = -25300;
LABEL_37:
      v19 = v7;
      goto LABEL_46;
    }

LABEL_34:
    v30 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v42 = a2;
      v43 = 1024;
      v44 = v13;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Failed to query keychain for device %{public}s with result %d", buf, 0x12u);
    }

    v29 = 0;
    goto LABEL_37;
  }

  v38 = a1;
  TypeID = CFDictionaryGetTypeID();
  v15 = TypeID == CFGetTypeID(result);
  a1 = v38;
  if (!v15)
  {
    goto LABEL_34;
  }

  Value = CFDictionaryGetValue(result, @"agrp");
  data = CFDictionaryGetValue(result, @"v_Data");
  CStringPtr = CFStringGetCStringPtr(Value, 0x8000100u);
  v17 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v42 = a2;
    v43 = 1024;
    v44 = 0;
    v45 = 2080;
    v46 = CStringPtr;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "_BTKCGetDataCopy found keychain item for device %{public}s with result %d with accessgroup=%s", buf, 0x1Cu);
  }

  if (!Value || (v47.length = CFStringGetLength(Value), v47.location = 0, CFStringCompareWithOptions(Value, @"com.apple.bluetooth", v47, 1uLL) == kCFCompareEqualTo))
  {
    a1 = v38;
    v19 = v7;
LABEL_39:
    v28 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 2uLL, 0, 0);
LABEL_40:
    v29 = v28;
    if (v28)
    {
      v31 = CFDictionaryGetTypeID();
      if (v31 != CFGetTypeID(v29))
      {
        v32 = qword_100BCE940;
        if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
        {
          sub_100825AD4(a2, v29, v32);
        }

        CFRelease(v29);
        v29 = 0;
      }
    }

    v13 = 0;
    goto LABEL_46;
  }

  v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v18, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v18, kSecAttrService, v9);
  v19 = v7;
  CFDictionaryAddValue(v18, kSecAttrAccount, v7);
  CFDictionaryAddValue(v18, v10, kCFBooleanTrue);
  v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(v20, kSecAttrAccessGroup, @"com.apple.bluetooth");
  v21 = SecItemUpdate(v18, v20);
  CFRelease(v20);
  v22 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v42 = a2;
    v43 = 1024;
    v44 = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "updating keychain access group for device %{public}s with result %d", buf, 0x12u);
  }

  if (!v21)
  {
    a1 = v38;
    goto LABEL_39;
  }

  v23 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v42 = a2;
    v43 = 1024;
    v44 = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "failed to update keychain access group for device %{public}s with result %d", buf, 0x12u);
  }

  a1 = v38;
  if (v21 != -25299)
  {
    goto LABEL_39;
  }

  v24 = SecItemDelete(v18);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v24)
  {
    v25 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v42 = a2;
      v43 = 1024;
      v44 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "failed to delete duplicate keychain item for device %{public}s with result %d", buf, 0x12u);
    }
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.bluetooth");
  v26 = SecItemCopyMatching(Mutable, &result);
  v13 = v26;
  if (!result || v26)
  {
    if (v26 == -25300)
    {
      v29 = 0;
      v13 = -25300;
      goto LABEL_46;
    }
  }

  else
  {
    v27 = CFDictionaryGetTypeID();
    if (v27 == CFGetTypeID(result))
    {
      dataa = CFDictionaryGetValue(result, @"v_Data");
      v28 = CFPropertyListCreateWithData(kCFAllocatorDefault, dataa, 2uLL, 0, 0);
      goto LABEL_40;
    }
  }

  v34 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v42 = a2;
    v43 = 1024;
    v44 = v13;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Failed to query keychain with access group com.apple.bluetooth for device %{public}s with result %d", buf, 0x12u);
  }

  v29 = 0;
LABEL_46:
  if (result)
  {
    CFRelease(result);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (a1)
  {
    *a1 = v13;
  }

  return v29;
}

uint64_t sub_1003CB454(const char *a1, const char *a2, const void *a3, const __CFString *a4, int a5, int a6, char a7)
{
  v12 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v37 = a1;
    v38 = 1024;
    v39 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_BTKCSetData found keychain item for device %{public}s with result %d, updating", buf, 0x12u);
  }

  if (CFDictionaryGetCount(a3))
  {
    v29 = a1;
    v13 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
    Data = CFPropertyListCreateData(kCFAllocatorDefault, a3, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (a2)
    {
      v15 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    }

    else
    {
      v15 = 0;
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = @"MobileBluetooth";
    }

    v30 = v19;
    CFDictionaryAddValue(Mutable, kSecAttrService, v19);
    value = v13;
    CFDictionaryAddValue(Mutable, kSecAttrAccount, v13);
    CFDictionaryAddValue(Mutable, kSecAttrAccessGroup, @"com.apple.bluetooth");
    if (a5)
    {
      v20 = kCFBooleanTrue;
    }

    else
    {
      v20 = kCFBooleanFalse;
    }

    v31 = v20;
    CFDictionaryAddValue(Mutable, kSecAttrSynchronizable, v20);
    v21 = kSecUseSystemKeychain;
    CFDictionaryAddValue(Mutable, kSecUseSystemKeychain, kCFBooleanTrue);
    v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(v22, kSecValueData, Data);
    if (v15)
    {
      CFDictionaryAddValue(v22, kSecAttrLabel, v15);
    }

    if ((a7 & 1) == 0)
    {
      CFDictionaryAddValue(v22, kSecAttrSysBound, &off_100B33828);
    }

    if (a6)
    {
      CFDictionaryAddValue(v22, kSecAttrAccessible, kSecAttrAccessibleUntilReboot);
    }

    cf = Data;
    if (a5)
    {
      CFDictionaryAddValue(v22, kSecAttrSyncViewHint, @"PCS-MasterKey");
    }

    v23 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v37 = v29;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updating keychain data for device %{public}s", buf, 0xCu);
    }

    v24 = SecItemUpdate(Mutable, v22);
    CFRelease(v22);
    CFRelease(Mutable);
    if (!v24)
    {
      v17 = 0;
      v27 = value;
      goto LABEL_44;
    }

    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100825B9C();
    }

    v25 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(v25, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(v25, kSecAttrService, v30);
    CFDictionaryAddValue(v25, kSecAttrAccount, value);
    CFDictionaryAddValue(v25, kSecValueData, cf);
    v26 = &kSecAttrAccessibleAlwaysPrivate;
    if (!a5)
    {
      v26 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    }

    if (a6)
    {
      v26 = &kSecAttrAccessibleUntilReboot;
    }

    CFDictionaryAddValue(v25, kSecAttrAccessible, *v26);
    CFDictionaryAddValue(v25, v21, kCFBooleanTrue);
    CFDictionaryAddValue(v25, kSecAttrAccessGroup, @"com.apple.bluetooth");
    CFDictionaryAddValue(v25, kSecAttrSynchronizable, v31);
    if (a5)
    {
      CFDictionaryAddValue(v25, kSecAttrSyncViewHint, @"PCS-MasterKey");
    }

    if ((a7 & 1) == 0)
    {
      CFDictionaryAddValue(v25, kSecAttrSysBound, &off_100B33828);
    }

    v27 = value;
    if (v15)
    {
      CFDictionaryAddValue(v25, kSecAttrLabel, v15);
    }

    v17 = SecItemAdd(v25, 0);
    if (v17 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100825C04();
      if (!v25)
      {
        goto LABEL_44;
      }
    }

    else if (!v25)
    {
LABEL_44:
      if (v27)
      {
        CFRelease(v27);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      return v17;
    }

    CFRelease(v25);
    goto LABEL_44;
  }

  v16 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "will not update an empty dict.", buf, 2u);
  }

  return 0;
}

uint64_t sub_1003CBA04(int a1, const char *a2, char *a3, int *a4, const __CFDictionary **a5, int8x8_t a6)
{
  v18 = 0;
  if (!a1)
  {
    return 4294902295;
  }

  result = 4294902295;
  if (a1 <= 256)
  {
    a6.i32[0] = a1;
    v8 = vcnt_s8(a6);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.i32[0] <= 1u)
    {
      v12 = *a5;
      if (*a5)
      {
        goto LABEL_5;
      }

      *a5 = sub_1003CAD4C(&v18, a2, 0, 0);
      v14 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BTKCGetData calling _BTKCGetDataCopy, returned %d", buf, 8u);
      }

      result = 4294933277;
      if (v18 != -34019)
      {
        v12 = *a5;
        if (!*a5)
        {
          *a3 = 0;
          *a4 = 0;
          return 4294902294;
        }

LABEL_5:
        if (a1 <= 15)
        {
          if (a1 > 3)
          {
            if (a1 == 4)
            {
              v13 = @"LinkKeyType";
              goto LABEL_32;
            }

            if (a1 == 8)
            {
              v13 = @"LocalAddress";
              goto LABEL_32;
            }
          }

          else
          {
            if (a1 == 1)
            {
              v13 = @"Pincode";
              goto LABEL_32;
            }

            if (a1 == 2)
            {
              v13 = @"LinkKey";
              goto LABEL_32;
            }
          }
        }

        else if (a1 <= 63)
        {
          if (a1 == 16)
          {
            v13 = @"MagicAccIRK";
            goto LABEL_32;
          }

          if (a1 == 32)
          {
            v13 = @"MagicAccEncKey";
            goto LABEL_32;
          }
        }

        else
        {
          switch(a1)
          {
            case 64:
              v13 = @"MagicAccKey";
              goto LABEL_32;
            case 128:
              v13 = @"MagicAccHint";
              goto LABEL_32;
            case 256:
              v13 = @"MagicAccRachet";
LABEL_32:
              Value = CFDictionaryGetValue(v12, v13);
              if (Value)
              {
                v16 = Value;
                TypeID = CFStringGetTypeID();
                if (TypeID == CFGetTypeID(v16))
                {
                  CFStringGetCString(v16, a3, *a4, 0x8000100u);
                  *a4 = strlen(a3);
                  return v18;
                }
              }

              break;
          }
        }

        *a3 = 0;
        *a4 = 0;
        return 155;
      }
    }
  }

  return result;
}

uint64_t sub_1003CBC64(char *a1, unsigned int a2)
{
  v9 = 0;
  v4 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v11 = a2;
    v12 = 1040;
    v13 = 6;
    v14 = 2096;
    v15 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deleting keychain data (mask=%02x) for %{bluetooth:BD_ADDR}.6P)", buf, 0x18u);
  }

  v5 = sub_1003CAD4C(&v9, a1, 0, 0);
  v6 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTKCDeleteData calling _BTKCGetDataCopy, returned %d", buf, 8u);
  }

  if (v9 == -34019)
  {
    if (!v5)
    {
      return 4294933277;
    }

    goto LABEL_42;
  }

  if (!v9 && !v5)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100825C6C();
    }

    return 4294902294;
  }

  if (!v5)
  {
    return 4294902294;
  }

  if (a2)
  {
    CFDictionaryRemoveValue(v5, @"Pincode");
    if ((a2 & 2) == 0)
    {
LABEL_15:
      if ((a2 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_15;
  }

  CFDictionaryRemoveValue(v5, @"LinkKey");
  if ((a2 & 4) == 0)
  {
LABEL_16:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  CFDictionaryRemoveValue(v5, @"LinkKeyType");
  if ((a2 & 0x10) == 0)
  {
LABEL_17:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  CFDictionaryRemoveValue(v5, @"MagicAccIRK");
  if ((a2 & 0x20) == 0)
  {
LABEL_18:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  CFDictionaryRemoveValue(v5, @"MagicAccEncKey");
  if ((a2 & 0x40) == 0)
  {
LABEL_19:
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  CFDictionaryRemoveValue(v5, @"MagicAccKey");
  if ((a2 & 0x80) == 0)
  {
LABEL_20:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  CFDictionaryRemoveValue(v5, @"MagicAccHint");
  if ((a2 & 0x100) == 0)
  {
LABEL_21:
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  CFDictionaryRemoveValue(v5, @"MagicAccRachet");
  if ((a2 & 0x200) == 0)
  {
LABEL_22:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_38:
  CFDictionaryRemoveValue(v5, @"GuestAccIRK");
  if ((a2 & 0x400) != 0)
  {
LABEL_23:
    CFDictionaryRemoveValue(v5, @"GuestAccEncKey");
  }

LABEL_24:
  if (CFDictionaryGetCount(v5) == 1 && CFDictionaryContainsKey(v5, @"LocalAddress"))
  {
    CFDictionaryRemoveValue(v5, @"LocalAddress");
  }

  if (CFDictionaryGetCount(v5))
  {
    v8 = sub_1003CB454(a1, 0, v5, 0, 0, 0, 1);
  }

  else
  {
    v8 = sub_1003CBF64(a1, 0, 0);
  }

  v9 = v8;
LABEL_42:
  CFRelease(v5);
  return v9;
}

uint64_t sub_1003CBF64(char *cStr, const __CFString *a2, int a3)
{
  v6 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v11 = 0;
    if (!v6)
    {
      return v11;
    }

    goto LABEL_12;
  }

  v8 = Mutable;
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = @"MobileBluetooth";
  }

  CFDictionaryAddValue(v8, kSecAttrService, v9);
  CFDictionaryAddValue(v8, kSecAttrAccount, v6);
  if (a3)
  {
    v10 = kCFBooleanTrue;
  }

  else
  {
    v10 = kCFBooleanFalse;
  }

  CFDictionaryAddValue(v8, kSecAttrSynchronizable, v10);
  CFDictionaryAddValue(v8, kSecUseSystemKeychain, kCFBooleanTrue);
  v11 = SecItemDelete(v8);
  if (v11)
  {
    v12 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136446722;
      v15 = cStr;
      v16 = 1024;
      v17 = v11;
      v18 = 1024;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to remove item from keychain for device %{public}s with result %d sync=%d", &v14, 0x18u);
    }
  }

  CFRelease(v8);
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v11;
}

uint64_t sub_1003CC154(uint64_t a1)
{
  result = 0;
  *buffer = 0u;
  v33 = 0u;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(v3, kSecAttrService, @"MobileBluetooth");
  CFDictionaryAddValue(v3, kSecMatchLimit, kSecMatchLimitAll);
  CFDictionaryAddValue(v3, kSecReturnAttributes, kCFBooleanTrue);
  CFDictionaryAddValue(v3, kSecUseSystemKeychain, kCFBooleanTrue);
  v4 = SecItemCopyMatching(v3, &result);
  v5 = result;
  if (!v4 && result)
  {
    Count = CFArrayGetCount(result);
    if (Count)
    {
      v7 = 0;
      p_info = &OBJC_METACLASS___BTVCDevice.info;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(result, v7);
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, kSecAttrAccount);
          if (CFStringGetCString(Value, buffer, 32, 0x8000100u))
          {
            v28 = 0;
            v27 = 0;
            if (!sub_10009D0B4(&v27, buffer))
            {
              goto LABEL_19;
            }

            if (!v27)
            {
              v15 = 1;
              while (v15 != 6)
              {
                if (*(&v27 + v15++))
                {
                  if ((v15 - 2) <= 4)
                  {
                    goto LABEL_10;
                  }

                  break;
                }
              }

LABEL_19:
              v17 = qword_100BCE940;
              if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446210;
                v31 = buffer;
                _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Read invalid address %{public}s from keychain, not creating a device", buf, 0xCu);
              }

              goto LABEL_33;
            }

LABEL_10:
            if (qword_100B508F0 != -1)
            {
              sub_100825CE4();
            }

            v11 = sub_1000E6554(p_info[285], &v27, 1);
            if (!sub_1000E69B8(a1, v11))
            {
              v13 = *(a1 + 8);
              v12 = *(a1 + 16);
              if (v13 >= v12)
              {
                v18 = (v13 - *a1) >> 3;
                if ((v18 + 1) >> 61)
                {
                  sub_1000C7698();
                }

                v19 = v12 - *a1;
                v20 = v19 >> 2;
                if (v19 >> 2 <= (v18 + 1))
                {
                  v20 = v18 + 1;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v21 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v21 = v20;
                }

                if (v21)
                {
                  sub_100008108(a1, v21);
                }

                v22 = (8 * v18);
                *v22 = v11;
                v14 = 8 * v18 + 8;
                v23 = *(a1 + 8) - *a1;
                v24 = v22 - v23;
                memcpy(v22 - v23, *a1, v23);
                v25 = *a1;
                *a1 = v24;
                *(a1 + 8) = v14;
                *(a1 + 16) = 0;
                if (v25)
                {
                  operator delete(v25);
                }

                p_info = (&OBJC_METACLASS___BTVCDevice + 32);
              }

              else
              {
                *v13 = v11;
                v14 = (v13 + 1);
              }

              *(a1 + 8) = v14;
            }
          }
        }

LABEL_33:
        if (++v7 == Count)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_38;
  }

  if (v4 != -25300)
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100825D0C();
    }

LABEL_38:
    v5 = result;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(v3);
  return 0;
}

CFStringRef sub_1003CC4F8(int a1)
{
  switch(a1)
  {
    case 0:
    case 5:
      v1 = kCFAllocatorDefault;
      v2 = @"Long-term Key";
      goto LABEL_13;
    case 1:
    case 6:
      v1 = kCFAllocatorDefault;
      v2 = @"Long-term Key Length";
      goto LABEL_13;
    case 2:
    case 7:
      v1 = kCFAllocatorDefault;
      v2 = @"Long-term Key Type";
      goto LABEL_13;
    case 3:
    case 8:
      v1 = kCFAllocatorDefault;
      v2 = @"Encrypted Diversifier";
      goto LABEL_13;
    case 4:
    case 9:
      v1 = kCFAllocatorDefault;
      v2 = @"Random Number";
      goto LABEL_13;
    case 10:
      v1 = kCFAllocatorDefault;
      v2 = @"Remote IRK";
      goto LABEL_13;
    case 12:
      v1 = kCFAllocatorDefault;
      v2 = @"Remote CSRK";
      goto LABEL_13;
    case 13:
      v1 = kCFAllocatorDefault;
      v2 = @"Local CSRK";
      goto LABEL_13;
    case 14:
      v1 = kCFAllocatorDefault;
      v2 = @"Local Sign Counter";
      goto LABEL_13;
    case 15:
      v1 = kCFAllocatorDefault;
      v2 = @"Remote Sign Counter";
      goto LABEL_13;
    case 16:
      v1 = kCFAllocatorDefault;
      v2 = @"Derive LKLTK";
LABEL_13:

      result = CFStringCreateCopy(v1, v2);
      break;
    default:
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
      {
        sub_100825D7C();
      }

      result = 0;
      break;
  }

  return result;
}

id sub_1003CC694(const void *a1, int a2, int a3, const void *a4)
{
  valuePtr = a3;
  v31 = +[NSMutableDictionary dictionary];
  result = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionaryAddValue(v8, kSecAttrService, a1);
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v8, kSecMatchLimit, v9);
    CFDictionaryAddValue(v8, kSecReturnAttributes, kCFBooleanTrue);
    CFDictionaryAddValue(v8, kSecUseSystemKeychain, kCFBooleanTrue);
    if (a2)
    {
      v10 = kCFBooleanTrue;
    }

    else
    {
      v10 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(v8, kSecAttrSynchronizable, v10);
    v11 = SecItemCopyMatching(v8, &result);
    v30 = v9;
    if (v11 || !result)
    {
      v28 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v39) = v11;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to query keychain with result %d", buf, 8u);
      }
    }

    else
    {
      Count = CFArrayGetCount(result);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(result, i);
          v15 = ValueAtIndex;
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, kSecAttrAccount);
            if (Value)
            {
              v17 = Value;
              v18 = sub_100777FF4(v17);
              if (v18)
              {
                if (a4)
                {
                  v19 = qword_100BCE940;
                  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 134217984;
                    v39 = a4;
                    _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Local address is not zero!! 0x%llx", buf, 0xCu);
                  }
                }

                v20 = CFDictionaryGetValue(v15, kSecAttrLabel);
                if (v20 && (v21 = [[NSUUID alloc] initWithUUIDString:v20]) != 0)
                {
                  v22 = [NSNumber numberWithUnsignedLongLong:v18];
                  [v31 setObject:v22 forKey:v21];
                }

                else
                {
                  v24 = qword_100BCE940;
                  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v39 = v20;
                    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Unable to build UUID from string %{public}@", buf, 0xCu);
                  }
                }

                a4 = 0;
              }

              else
              {
                v25 = qword_100BCE940;
                if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
                {
                  sub_100825DEC(&v34, v35, v25);
                }
              }
            }

            else
            {
              v23 = qword_100BCE940;
              if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
              {
                sub_100825E2C(&v32, v33, v23);
              }
            }
          }
        }
      }
    }

    if (result)
    {
      CFRelease(result);
    }

    CFRelease(v8);
    if (v30)
    {
      CFRelease(v30);
    }

    v27 = v31;
    v26 = v31;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_100825E6C();
    }

    v26 = 0;
    v27 = v31;
  }

  return v26;
}

uint64_t sub_1003CCB94(uint64_t a1, void *a2, int a3, const void **a4)
{
  v6 = a2;
  if (CFDictionaryGetCount(*a4) < 1)
  {
    sub_10004D9B0();
    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v9 = sub_1003CBF64(v10, @"BluetoothLE", a3);
  }

  else
  {
    v7 = __p;
    sub_10004D9B0();
    if (v13 < 0)
    {
      v7 = __p[0];
    }

    v8 = [v6 UUIDString];
    v9 = sub_1003CB454(v7, [v8 UTF8String], *a4, @"BluetoothLE", a3, 0, 1);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  CFRelease(@"BluetoothLE");

  return v9;
}

void sub_1003CCCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003CCCEC(uint64_t a1, void *a2, unsigned int a3, const UInt8 *a4, CFIndex a5, int a6, const void **a7, int a8)
{
  v29 = a2;
  v30 = 0;
  if (((a3 == 10) & a6) != 0)
  {
    v14 = @"BluetoothLESync";
  }

  else
  {
    v14 = @"BluetoothLE";
  }

  if (!a4 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    sub_100825EAC();
  }

  v15 = sub_1003CC4F8(a3);
  Mutable = *a7;
  if (!*a7)
  {
    sub_10004D9B0();
    if (v32 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *a7 = sub_1003CAD4C(&v30, v18, v14, a6);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v30;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BTKCSetLEData calling _BTKCGetDataCopy, returned %d", __p, 8u);
    }

    if (v30 == -34019)
    {
      goto LABEL_51;
    }

    Mutable = *a7;
    if (!*a7)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *a7 = Mutable;
      if (!Mutable)
      {
        goto LABEL_10;
      }
    }
  }

  if (a5)
  {
    v17 = CFDataCreate(kCFAllocatorDefault, a4, a5);
    if (!v17)
    {
LABEL_10:
      v30 = 4;
      goto LABEL_51;
    }
  }

  else
  {
    CFDictionaryRemoveValue(Mutable, v15);
    v17 = 0;
  }

  if (a3 >= 5)
  {
    if (a3 - 5 > 4)
    {
      Value = *a7;
      if (a5)
      {
        CFDictionarySetValue(Value, v15, v17);
        goto LABEL_38;
      }

LABEL_37:
      CFDictionaryRemoveValue(Value, v15);
LABEL_38:
      if (a8)
      {
        if (CFDictionaryGetCount(*a7) < 1)
        {
          sub_10004D9B0();
          if (v32 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          v30 = sub_1003CBF64(v26, v14, a6);
        }

        else
        {
          v23 = __p;
          sub_10004D9B0();
          if (v32 < 0)
          {
            v23 = __p[0];
          }

          v24 = [v29 UUIDString];
          v25 = v24;
          v30 = sub_1003CB454(v23, [v24 UTF8String], *a7, v14, a6, 0, 1);
        }

        if (v32 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (v17)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    v20 = @"Local Encryption";
  }

  else
  {
    v20 = @"Remote Encryption";
  }

  Value = CFDictionaryGetValue(*a7, v20);
  v22 = Value;
  if (!a4 || !a5)
  {
    if (!Value)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (Value)
  {
LABEL_32:
    CFDictionarySetValue(v22, v15, v17);
    goto LABEL_38;
  }

  v22 = CFDictionaryCreateMutable(kCFAllocatorDefault, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v22)
  {
    CFDictionarySetValue(*a7, v20, v22);
    CFRelease(v22);
    goto LABEL_32;
  }

  v30 = 4;
  if (v17)
  {
LABEL_50:
    CFRelease(v17);
  }

LABEL_51:
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v14);
  v27 = v30;

  return v27;
}

void sub_1003CD0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003CD11C(uint64_t a1, void *a2, unsigned int a3, const UInt8 *a4, CFIndex a5, int a6)
{
  v11 = a2;
  cf = 0;
  v12 = sub_1003CCCEC(a1, v11, a3, a4, a5, a6, &cf, 1);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t sub_1003CD1BC(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, const __CFString *a5, int a6, const __CFDictionary **a7)
{
  v13 = sub_1003CC4F8(a2);
  v21 = 0;
  if (!a3 && os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    sub_100825EAC();
  }

  *a4 = 0;
  v14 = *a7;
  if (*a7)
  {
    v15 = qword_100BCE940;
    if (!os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_BTKCCopyLEData using cached dictionary", buf, 2u);
LABEL_15:
    v14 = *a7;
    if (!*a7)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (a2 >= 5)
    {
      if (a2 - 5 > 4)
      {
LABEL_21:
        Value = CFDictionaryGetValue(v14, v13);
        if (Value && CFDataGetLength(Value))
        {
          operator new[]();
        }

        goto LABEL_24;
      }

      v18 = @"Local Encryption";
    }

    else
    {
      v18 = @"Remote Encryption";
    }

    v14 = CFDictionaryGetValue(v14, v18);
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  sub_10004D9B0();
  if (v23 >= 0)
  {
    v16 = buf;
  }

  else
  {
    v16 = *buf;
  }

  *a7 = sub_1003CAD4C(&v21, v16, a5, a6);
  if (v23 < 0)
  {
    operator delete(*buf);
  }

  v17 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_BTKCCopyLEData calling _BTKCGetDataCopy, returned %d", buf, 8u);
  }

  if (v21 != -34019)
  {
    goto LABEL_15;
  }

LABEL_24:
  if (v13)
  {
    CFRelease(v13);
  }

  return v21;
}

void sub_1003CD420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CD444(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, const __CFString *a5, int a6)
{
  cf = 0;
  v6 = sub_1003CD1BC(a1, a2, a3, a4, a5, a6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1003CD488(uint64_t result, unsigned int a2, uint64_t a3, _DWORD *a4, _DWORD *a5, int a6, const __CFDictionary **a7)
{
  v10 = 0;
  if (a3)
  {
    if (a6)
    {
      v9 = @"BluetoothLESync";
    }

    else
    {
      v9 = @"BluetoothLE";
    }

    result = sub_1003CD1BC(result, a2, a3, &v10, v9, a6, a7);
    *a4 = v10;
    *a5 = result;
  }

  return result;
}

void sub_1003CD4E8(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4, _DWORD *a5, uint64_t a6, _DWORD *a7, _DWORD *a8)
{
  v19 = 0;
  if (a3 && a4)
  {
    v16 = sub_1003CD444(a1, a2, a3, &v19, @"BluetoothLE", 0);
LABEL_9:
    *a4 = v19;
    goto LABEL_10;
  }

  if (a6 && a7 || !os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_FAULT))
  {
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_100825F2C();
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v16 = sub_1003CD444(a1, a2, a3, &v19, @"BluetoothLE", 0);
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (a5)
  {
    *a5 = v16;
  }

LABEL_12:
  if (a6)
  {
    v17 = sub_1003CD444(a1, a2, a6, &v19, @"BluetoothLESync", 1);
    v18 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BTKCCopyLEData is calling _BTKCCopyLEData, returned %d", buf, 8u);
    }

    if (a7)
    {
      *a7 = v19;
    }

    if (a8)
    {
      *a8 = v17;
    }
  }
}

uint64_t sub_1003CD6A0(uint64_t a1, uint64_t a2, int a3)
{
  sub_10004D9B0();
  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = sub_1003CBF64(v4, @"BluetoothLE", 0);
  v6 = v5;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else if (!v5)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
  {
    sub_100825FAC();
  }

LABEL_10:
  if (a3)
  {
    sub_10004D9B0();
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v6 = sub_1003CBF64(v7, @"BluetoothLESync", 1);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v6)
    {
      v8 = qword_100BCE940;
      if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not erase LE Data from synced keychain with result %d", __p, 8u);
      }
    }
  }

  return v6;
}

void sub_1003CD814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003CD83C(int a1, UInt8 *a2, uint64_t a3, unsigned int *a4)
{
  v15 = 0;
  if ((a1 - 4) >= 0xE)
  {
    switch(a1)
    {
      case 1:
        v6 = "Encryption Root";
        break;
      case 2:
        v6 = "Identity Root";
        break;
      case 19:
        v6 = "Non Connectable identity address";
        break;
      default:
        return 4294902295;
    }
  }

  else
  {
    v6 = off_100AF0EB8[a1 - 4];
  }

  v7 = sub_1003CAD4C(&v15, v6, @"BluetoothGlobal", 0);
  v8 = v15;
  if (v15)
  {
    v9 = qword_100BCE940;
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "_BTKCGetDataCopy returned %d", buf, 8u);
      v8 = v15;
    }

    if (v8 == -34019)
    {
      if (!v7)
      {
        return 4294933277;
      }

      goto LABEL_19;
    }
  }

  if (v7)
  {
    Value = CFDictionaryGetValue(v7, @"KEY");
    if (Value && (v12 = Value, TypeID = CFDataGetTypeID(), TypeID == CFGetTypeID(v12)))
    {
      Length = CFDataGetLength(v12);
      *a4 = Length;
      if (Length)
      {
        v18.length = Length;
        v18.location = 0;
        CFDataGetBytes(v12, v18, a2);
      }
    }

    else
    {
      v15 = -65004;
    }

LABEL_19:
    CFRelease(v7);
    return v15;
  }

  return 4294902292;
}

uint64_t sub_1003CDA10(unsigned int a1, const UInt8 *a2, unsigned int a3)
{
  if (a1 - 4 < 0xE || (v6 = 4294902295, a1 <= 0x13) && ((1 << a1) & 0x80006) != 0)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = Mutable;
      v9 = CFDataCreate(kCFAllocatorDefault, a2, a3);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v8, @"KEY", v9);
        v6 = 0;
        switch(a1)
        {
          case 1u:
            v11 = "Encryption Root";
            goto LABEL_23;
          case 2u:
            v11 = "Identity Root";
            goto LABEL_23;
          case 4u:
            v11 = "Cloud Master Key Root";
            goto LABEL_23;
          case 5u:
            v11 = "Cloud Private Key Root";
            goto LABEL_23;
          case 6u:
            v11 = "Cloud Public Key Root";
            goto LABEL_23;
          case 7u:
            v11 = "Cloud Nonce Root";
            goto LABEL_23;
          case 8u:
            v11 = "Identity Root Key";
            goto LABEL_23;
          case 9u:
            v11 = "Cloud FC Address";
LABEL_23:
            v12 = v8;
            v13 = 1;
            goto LABEL_27;
          case 0xAu:
            v11 = "CT TTK BUFF";
            goto LABEL_26;
          case 0xBu:
            v11 = "CT TKPeriod";
            goto LABEL_26;
          case 0xCu:
            v11 = "CT Last RPI And Address";
            goto LABEL_26;
          case 0xDu:
            v11 = "CT TEK BUFF V2 LEN";
            goto LABEL_26;
          case 0xEu:
            v11 = "CT TEK BUFF V2";
            goto LABEL_26;
          case 0xFu:
            v11 = "Local Device Identifier";
            goto LABEL_26;
          case 0x11u:
            v11 = "Non Connectable identity root";
            goto LABEL_26;
          case 0x13u:
            v11 = "Non Connectable identity address";
LABEL_26:
            v12 = v8;
            v13 = 0;
LABEL_27:
            v6 = sub_1003CB454(v11, 0, v12, @"BluetoothGlobal", 0, 0, v13);
            break;
          default:
            break;
        }

        CFRelease(v10);
      }

      else
      {
        v6 = 4;
      }

      CFRelease(v8);
    }

    else
    {
      return 4;
    }
  }

  return v6;
}

uint64_t sub_1003CDC24(int a1)
{
  if (a1 == 4)
  {
    return sub_1003CBF64("Cloud Master Key Root", @"BluetoothGlobal", 0);
  }

  else
  {
    return 4294902295;
  }
}

uint64_t sub_1003CDC4C(const void *a1)
{
  v2 = qword_100BCE940;
  if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleting all keychain data for service:%@", &v8, 0xCu);
  }

  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v4 = Mutable;
      CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
      CFDictionaryAddValue(v4, kSecAttrService, a1);
      CFDictionaryAddValue(v4, kSecAttrSynchronizable, kCFBooleanFalse);
      CFDictionaryAddValue(v4, kSecUseSystemKeychain, kCFBooleanTrue);
      CFDictionaryAddValue(v4, kSecAttrAccessGroup, @"com.apple.bluetooth");
      do
      {
        v5 = SecItemDelete(v4);
      }

      while (!v5);
      v6 = v5;
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE940, OS_LOG_TYPE_ERROR))
    {
      sub_10082601C();
    }

    return 3;
  }

  return v6;
}

uint64_t sub_1003CDE04()
{
  sub_1003CDC4C(@"BluetoothGlobal");
  sub_1003CDC4C(@"BluetoothLE");
  sub_1003CDC4C(@"MobileBluetooth");
  return 0;
}

uint64_t sub_1003CDEA8(void *key, size_t keyLength, const void *a3, unsigned int a4, void *a5, unsigned int a6)
{
  v15 = 0;
  cryptorRef = 0;
  if (CCCryptorCreate(0, 0, 0, key, keyLength, 0, &cryptorRef))
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_10082605C();
    }

    return 1041;
  }

  else
  {
    v11 = CCCryptorUpdate(cryptorRef, a3, a4, a5, a6, &v15);
    if (v11)
    {
      v12 = v11;
      v13 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "AES128Encrypt";
        v19 = 1024;
        v20 = v12;
        v21 = 1024;
        v22 = a6;
        v23 = 2048;
        v24 = v15;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to encrypt : %d (need %d, got %zu)\n", buf, 0x22u);
      }

      CCCryptorRelease(cryptorRef);
      return 1042;
    }

    else
    {
      CCCryptorRelease(cryptorRef);
      v14 = qword_100BCEA70;
      if (v15 == a6)
      {
        result = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          sub_100826178();
          return 0;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
        {
          sub_1008260D4(&v15, a6, v14);
        }

        return 1043;
      }
    }
  }

  return result;
}

uint64_t sub_1003CE098(__int128 *a1, __int16 *a2, uint64_t a3)
{
  memset(v11, 0, sizeof(v11));
  v8 = 0;
  v9 = 0;
  if (a1 && a2)
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    key = *a1;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_100826278();
    }

    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_1008262F4();
    }

    v4 = sub_1003CDEA8(&key, 0x10uLL, v11, 0x10u, &v8, 0x10u);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_100826370();
      }
    }

    else
    {
      *a3 = *(&v9 + 5);
      *(a3 + 2) = HIBYTE(v9);
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
      {
        sub_1008263E8();
      }

      return 0;
    }
  }

  else
  {
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008261F4(v6);
    }

    return 4828;
  }

  return v5;
}

uint64_t sub_1003CE22C(__int128 *a1, __int128 *a2, void *a3)
{
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_100826498();
  }

  v6 = 0;
  key = *a1;
  v7 = 15;
  do
  {
    v8 = *(&key + v6);
    *(&key + v6) = *(&key + v7);
    *(&key + v7) = v8;
    ++v6;
    --v7;
  }

  while (v6 != 8);
  v9 = 0;
  v14 = *a2;
  v10 = 15;
  do
  {
    v11 = *(&v14 + v9);
    *(&v14 + v9) = *(&v14 + v10);
    *(&v14 + v10) = v11;
    ++v9;
    --v10;
  }

  while (v9 != 8);
  v12 = sub_1003CDEA8(&key, 0x10uLL, &v14, 0x10u, a3, 0x10u);
  if (v12)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100826514();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_10082658C();
  }

  return v12;
}

uint64_t sub_1003CE39C(__int128 *a1, __int128 *a2, void *a3)
{
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_10082660C();
  }

  v6 = *a1;
  v9 = *a2;
  key = v6;
  v7 = sub_1003CDEA8(&key, 0x10uLL, &v9, 0x10u, a3, 0x10u);
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100826688();
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_100826700();
  }

  return v7;
}

void sub_1003CE4D4(void *a1, uint64_t a2, __int16 a3)
{
  v6 = sub_100375F94(a1, "HFPSendThread");
  *v6 = off_100AF0F38;
  *(v6 + 168) = a2;
  *(v6 + 184) = a3;
  *(v6 + 192) = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[26] = 0;
  operator new[]();
}

uint64_t sub_1003CE8AC(uint64_t a1)
{
  *a1 = off_100AF0F38;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, *(a1 + 168) + 760);
  v2 = sub_1005D0048(*(a1 + 168), *(a1 + 184));
  if (v2)
  {
    sub_10069C0F0(v2);
  }

  *(a1 + 192) = 0;
  sub_1000088CC(v4);
  if (*(a1 + 200))
  {
    operator delete[]();
  }

  return sub_100375A90(a1);
}

void sub_1003CE94C(_Unwind_Exception *a1)
{
  if (*(v1 + 200))
  {
    operator delete[]();
  }

  sub_100375A90(v1);
  _Unwind_Resume(a1);
}

void sub_1003CE990(uint64_t a1)
{
  sub_1003CE8AC(a1);

  operator delete();
}

unint64_t sub_1003CE9C8(uint64_t a1)
{
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 232);
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "calculateSleepIntervalInUs codec type:%d", v6, 8u);
  }

  v4 = *(a1 + 232);
  result = 7500;
  if (v4 > 129)
  {
    if (v4 == 130)
    {
      return 10000;
    }

    if (v4 != 255)
    {
      if (v4 == 256)
      {
        return result;
      }

      return (((*(a1 + 240) / 16000.0) * 1000.0) * 1000.0);
    }

    return 15000;
  }

  if ((v4 - 128) < 2)
  {
    return 15000;
  }

  if (v4 != 2)
  {
    if (v4 == 127)
    {
      return result;
    }

    return (((*(a1 + 240) / 16000.0) * 1000.0) * 1000.0);
  }

  return (*(a1 + 240) / 32000.0 * 1000.0 * 1000.0);
}

uint64_t sub_1003CEB20(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (!v1)
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1008268E8();
    return 0;
  }

  v2 = *(a1 + 232);
  if (v2 == 129)
  {
    return 1;
  }

  if (v2 != 128)
  {
    return 0;
  }

  v3 = sub_100320D9C(v1 + 400);
  if (!v3)
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_100826870();
    return 0;
  }

  return sub_1000E2140(v3, 41);
}

uint64_t sub_1003CEBE8(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  v2 = (a1 + 168);
  sub_100007F88(v13, *(a1 + 168) + 760);
  v3 = sub_1005D0048(*v2, *(a1 + 184));
  if (v3 && *(v3 + 600) == a1)
  {
    v5 = *(a1 + 258);
    if (!*(a1 + 258))
    {
      goto LABEL_11;
    }

    v6 = *(a1 + 240);
    v7 = qword_100BCE8F8;
    if (v6 > v5 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v15 = "fAudioBytesOutstanding >= fAudioBufferSize";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v6 = *(a1 + 240);
      LOWORD(v5) = *(a1 + 258);
      v7 = qword_100BCE8F8;
    }

    v8 = v5 - v6;
    *(a1 + 258) = v8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v15) = v8;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Draining controller voice to %d bytes", buf, 8u);
      v8 = *(a1 + 258);
    }

    if (!v8)
    {
LABEL_11:
      sub_1003CEE28(a1, 1u);
    }

    if (*(a1 + 312) != 2)
    {
      goto LABEL_22;
    }

    if (*(a1 + 316) == 1)
    {
      v9 = 576 - *(a1 + 258);
      v10 = *(a1 + 240);
      *(a1 + 316) = 0;
      v11 = v9 / v10;
    }

    else
    {
      v11 = 1;
    }

    if (sub_1003CEB20(a1))
    {
      if (!sub_1003A2C1C(*(a1 + 176)))
      {
        goto LABEL_22;
      }

      if (sub_1003A2C1C(*(a1 + 176)) >= 4 && !*(a1 + 258))
      {
        v11 = 2;
        do
        {
LABEL_21:
          sub_1003CF0D8(a1);
          --v11;
        }

        while (v11);
        goto LABEL_22;
      }
    }

    if (v11)
    {
      goto LABEL_21;
    }

LABEL_22:
    v4 = 1;
    goto LABEL_23;
  }

  v4 = 0;
LABEL_23:
  sub_1000088CC(v13);
  return v4;
}

uint64_t sub_1003CEE28(uint64_t a1, unsigned int a2)
{
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, *(a1 + 168) + 760);
  v4 = *(a1 + 312);
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (!v4)
      {
        if (!(*(*a1 + 24))(a1))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (v4 == 2)
      {
        if (sub_1003CEB20(a1))
        {
          if (sub_1003A2C1C(*(a1 + 176)) > 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = *(a1 + 208);
          if (sub_1003A2C14(*(a1 + 176)) + v23 >= *(a1 + 240) * *(a1 + 320))
          {
            goto LABEL_26;
          }
        }

        v22 = 1;
        goto LABEL_25;
      }
    }

    else if (a2)
    {
      v13 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_1008267F8(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    else if (v4 == 1)
    {
      if (*(a1 + 258))
      {
        v5 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
        {
          sub_100826924(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      if (sub_1003CEB20(a1))
      {
        if (sub_1003A2C1C(*(a1 + 176)) < 2)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v21 = *(a1 + 208);
      if (sub_1003A2C14(*(a1 + 176)) + v21 >= *(a1 + 240) * *(a1 + 320))
      {
LABEL_21:
        *(a1 + 316) = 1;
LABEL_22:
        v22 = 2;
LABEL_25:
        *(a1 + 312) = v22;
      }
    }
  }

LABEL_26:
  v24 = *(a1 + 312);
  if (v4 != v24)
  {
    v25 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 8 * a2 + 288);
      v27 = *(a1 + 264 + 8 * v4);
      v28 = *(a1 + 264 + 8 * v24);
      v29 = *(a1 + 8 * *(a1 + 352) + 328);
      v30 = sub_1003A2C1C(*(a1 + 176));
      v31 = *(a1 + 258);
      *buf = 136447490;
      v35 = v26;
      v36 = 2082;
      v37 = v27;
      v38 = 2082;
      v39 = v28;
      v40 = 2082;
      v41 = v29;
      v42 = 2048;
      v43 = v30;
      v44 = 1024;
      v45 = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Input: %{public}s. State: %{public}s -> %{public}s. SendState %{public}s, %zu, %hu", buf, 0x3Au);
    }
  }

  return sub_1000088CC(v33);
}

uint64_t sub_1003CF0D8(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, *(a1 + 168) + 760);
  v2 = *(a1 + 352);
  switch(v2)
  {
    case 2:
      goto LABEL_7;
    case 1:
LABEL_6:
      sub_1003CF1CC(a1);
      *(a1 + 352) = 2;
LABEL_7:
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      *(a1 + 352) = 0;
      return sub_1000088CC(v12);
    case 0:
      if (!(*(*a1 + 112))(a1))
      {
        sub_1003CEE28(a1, 2u);
        return sub_1000088CC(v12);
      }

      *(a1 + 352) = 1;
      goto LABEL_6;
  }

  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
  {
    sub_1008267F8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_1003CF1CC(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 208);
  if (!v2)
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_10082699C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  for (; v3; v3 -= v12)
  {
    if (v3 >= *(a1 + 240))
    {
      v12 = *(a1 + 240);
    }

    else
    {
      v12 = v3;
    }

    v13 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 258);
      *buf = 134218752;
      v24 = v12;
      v25 = 2048;
      v26 = v3;
      v27 = 1024;
      v28 = v17;
      v29 = 2048;
      v30 = v12 + v17;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, ">> Sending, %zu bytes of total %zu. Oustanding %d -> %lu", buf, 0x26u);
    }

    if (*(a1 + 192))
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10024891C(*(a1 + 192), v2, v12, 1);
      sub_100022214(buf);
      sub_10002249C(buf);
    }

    else
    {
      v14 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_100826A14(&v19, v20, v14);
      }
    }

    v15 = (*(a1 + 258) + v12);
    *(a1 + 258) += v12;
    if (v15 >= 0x2D1)
    {
      v16 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_100826A54(v21, &v22, v16);
      }
    }

    v2 += v12;
  }

  return 1;
}

size_t sub_1003CF3D8(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = sub_1003A2C14(*(a1 + 176));
  v4 = *(a1 + 240);
  if (v3 >= v4)
  {
    result = sub_1003A2C24(*(a1 + 176), v2, v4 * *(a1 + 236));
    if (result)
    {
      v9 = result;
      *(a1 + 208) = result;
      v10 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
      {
        v11 = sub_1003A2C14(*(a1 + 176));
        v12 = *(a1 + 258);
        v13 = 134218496;
        v14 = v9;
        v15 = 2048;
        v16 = v11;
        v17 = 1024;
        v18 = v12;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Filling, read %zu bytes, shared %zu, oustanding %d", &v13, 0x1Cu);
      }

      return 1;
    }
  }

  else
  {
    v5 = qword_100BCE8F8;
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO);
    if (result)
    {
      v7 = sub_1003A2C14(*(a1 + 176));
      v8 = *(a1 + 208);
      v13 = 134218240;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Filling done, not enough data.  shared %zu, fill %zu", &v13, 0x16u);
      return 0;
    }
  }

  return result;
}

BOOL sub_1003CF570(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = sub_100320FC4(*(a1 + 200) + 400);
  if (_os_feature_enabled_impl() && v3 == 130)
  {
    if (*(a1 + 349) == 1)
    {
      if (sub_1003CFAD0(a1))
      {
LABEL_5:
        *(a1 + 248) = 0;
        *(a1 + 232) = *(a1 + 264);
LABEL_6:
        sub_10069BC4C(*(a1 + 200));
        return 1;
      }

      return 0;
    }

    goto LABEL_9;
  }

  if ((v3 - 128) < 3 || v3 == 255)
  {
LABEL_9:
    if (*(a1 + 232))
    {
      v5 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
      {
        sub_100826AA4(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    if (*(a1 + 264) <= 1uLL)
    {
      result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      goto LABEL_14;
    }

    v13 = sub_1003A2C1C(*(a1 + 200));
    if (v13 < sub_1003CFC68(a1))
    {
      return 0;
    }

    v14 = sub_1003A2C94(*(a1 + 200), v2 + 2, *(a1 + 264) - 2);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 280);
      *(a1 + 280) = v16 + 1;
      *v2 = v16;
      v2[1] = v14;
      v17 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(a1 + 264);
        v18 = v15 + 4;
        v50 = 134218240;
        *v51 = v47;
        *&v51[8] = 2048;
        *&v51[10] = v15 + 4;
        _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Buffer Length: %zu, offset: %lu", &v50, 0x16u);
      }

      else
      {
        v18 = v15 + 4;
      }

      v19 = *(a1 + 264);
      if (v19 < v18)
      {
        v20 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
        {
          v50 = 67109120;
          *v51 = v19;
          _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Byte offset exceeds data buffer length, buffer length: %d", &v50, 8u);
          v19 = *(a1 + 264);
        }
      }

      if (v19 >= v18)
      {
        v30 = sub_1003A2C94(*(a1 + 200), &v2[v15 + 4], v19 - v18);
        v31 = qword_100BCE8F8;
        if (v30)
        {
          v32 = v30;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
          {
            v33 = *(a1 + 280);
            v34 = *(a1 + 264);
            v35 = *(a1 + 282);
            v50 = 67110400;
            *v51 = v33;
            *&v51[4] = 2048;
            *&v51[6] = v15;
            *&v51[14] = 2048;
            *&v51[16] = v32;
            v52 = 2048;
            v53 = v34;
            v54 = 1024;
            v55 = v35;
            v56 = 1024;
            v57 = v35 + 1;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "HF Seq:%hhu, Sending %zu+%zu of %zu filled. Outstanding %d -> %d", &v50, 0x32u);
          }

          v36 = *(a1 + 280);
          *(a1 + 280) = v36 + 1;
          v37 = &v2[v15];
          v37[2] = v36;
          v37[3] = v32;
          v38 = &v2[-*(a1 + 224)];
          v39 = *(a1 + 264);
          if (v38 > v39)
          {
            v40 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
            {
              sub_100826BC4(v38, v39, v40);
            }
          }

          goto LABEL_5;
        }

        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          sub_100826C4C();
          return 0;
        }
      }

      else
      {
        result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_100826B50();
          return 0;
        }
      }
    }

    else
    {
      result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        sub_100826C80();
        return 0;
      }
    }

    return result;
  }

  if (*(a1 + 232))
  {
    v21 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_100826AA4(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 264);
  if (v29 > 1)
  {
    v41 = sub_1003A2C94(*(a1 + 200), v2 + 2, v29 - 2);
    v42 = qword_100BCE8F8;
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG);
    if (v41)
    {
      if (result)
      {
        v48 = *(a1 + 264);
        v49 = *(a1 + 282);
        v50 = 134218752;
        *v51 = v41;
        *&v51[8] = 2048;
        *&v51[10] = v48;
        *&v51[18] = 1024;
        *&v51[20] = v49;
        v52 = 1024;
        LODWORD(v53) = v49 + 1;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "HF Sending %zu of %zu filled. Oustanding %d -> %d ", &v50, 0x22u);
      }

      v43 = *(a1 + 280);
      *(a1 + 280) = v43 + 1;
      *v2 = v43;
      v2[1] = v41;
      v44 = &v2[-*(a1 + 224)];
      v45 = *(a1 + 264);
      if (v44 > v45)
      {
        v46 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
        {
          v50 = 134218240;
          *v51 = v44;
          *&v51[8] = 2048;
          *&v51[10] = v45;
          _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "wrote %ld bytes to audio buffer when max size is %zu", &v50, 0x16u);
          v45 = *(a1 + 264);
        }
      }

      *(a1 + 248) = 0;
      *(a1 + 232) = v45;
      goto LABEL_6;
    }

    if (result)
    {
      sub_100826B1C();
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_14:
      sub_100826B50();
      return 0;
    }
  }

  return result;
}