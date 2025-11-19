void sub_1002585D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100258630(uint64_t a1, int a2)
{
  if (!*(a1 + 1288))
  {
    sub_1004B1C78();
  }

  if (!*(a1 + 1280))
  {
    sub_1004B1C4C();
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = (a1 + 1240);
  v5 = atomic_load((a1 + 1240));
  v6 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose: activateInternal (ActivationEvent: %d)", &buf, 8u);
  }

  if ((v5 - 8) >= 4 && v5 != 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1BC8(v5);
    }

    return 0;
  }

  atomic_store(0, (a1 + 1240));
  keyExistsAndHasValidFormat = 0;
  *(a1 + 1336) = CFPreferencesGetAppBooleanValue(@"roseEnableFirmwareLogs", @"com.apple.nearbyd", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    v8 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    if (*(a1 + 1336))
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    v10 = "PRRose: OVERRIDE: firmware logging config: %s";
  }

  else
  {
    *(a1 + 1336) = sub_100256090();
    v8 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    if (*(a1 + 1336))
    {
      v11 = "enabled";
    }

    else
    {
      v11 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    v10 = "PRRose: firmware logging config: %s";
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &buf, 0xCu);
LABEL_22:
  keyExistsAndHasValidFormat = 0;
  *(a1 + 1337) = CFPreferencesGetAppBooleanValue(@"roseSaveCrashLogs", @"com.apple.nearbyd", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    v12 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    if (*(a1 + 1337))
    {
      v13 = "enabled";
    }

    else
    {
      v13 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v13;
    v14 = "PRRose: OVERRIDE: crash log config: %s";
  }

  else
  {
    *(a1 + 1337) = sub_100256090();
    v12 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    if (*(a1 + 1337))
    {
      v15 = "enabled";
    }

    else
    {
      v15 = "disabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    v14 = "PRRose: crash log config: %s";
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &buf, 0xCu);
LABEL_34:
  if (sub_100259144())
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B19B0();
    }

    sub_100257F90(a1, 1);
LABEL_38:
    v16 = 0;
    atomic_store(9u, (a1 + 1240));
    return v16;
  }

  if (sub_1002592B0(a1))
  {
    v17 = NSTemporaryDirectory();
    v18 = [NSString stringWithFormat:@"%@/%s", v17, "healAttemped.tok"];

    v19 = +[NSFileManager defaultManager];
    v20 = [v19 fileExistsAtPath:v18];

    if ((v20 & 1) != 0 || !sub_10047A0D0(a1 + 40))
    {
      if (a2 == 1)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B1AB0();
        }

        v29 = +[NSFileManager defaultManager];
        v30 = +[NSData data];
        v31 = [v29 createFileAtPath:v18 contents:v30 attributes:0];

        if ((v31 & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B1AE4();
        }
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1B18();
      }

      if (sub_100475124(a1 + 40, *(a1 + 1336), *(a1 + 1337)) && (sub_10047A320(a1 + 40, 0, v32, v33, v34, v35, v36, v37) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1B4C((a1 + 1240));
      }

      sub_1004750A4(a1 + 40);
      usleep(0x30D40u);
      v38 = sub_1000054A8();
      if (sub_100003AA8(v38[144]))
      {
        v39 = *(a1 + 1704);
        if (v39)
        {
          sub_1001C3D38(v39, 0);
        }
      }

      else
      {
        AnalyticsSendEventLazy();
      }

      atomic_store(9u, (a1 + 1240));
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100259470;
      v51[3] = &unk_10098AD98;
      v51[4] = a1;
      sub_1002593D8(a1, v51);

      return 0;
    }

    v21 = *(a1 + 1704);
    if (v21)
    {
      sub_1001C3D38(v21, 1);
    }

    v22 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Rose successfully healed ^_^", &buf, 2u);
    }
  }

  if ((sub_100478A14() & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1A48();
    }

    sub_100257F90(a1, 2);
    goto LABEL_38;
  }

  if (!sub_100475124(a1 + 40, *(a1 + 1336), *(a1 + 1337)) || !sub_10041B228(a1 + 1248))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1A7C();
    }

    v16 = 0;
    atomic_store(9u, v4);
    return v16;
  }

  v23 = sub_1001DB158(*(a1 + 1544));
  v24 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PRRose::shouldPowerOnRose %d ", &buf, 8u);
  }

  if (v23)
  {
    goto LABEL_103;
  }

  v50 = 0;
  if (!sub_10047A41C(a1 + 40, &v50) || v50)
  {
LABEL_102:
    *(a1 + 1552) = 2;
LABEL_103:
    v46 = *(a1 + 1704);
    if (v46)
    {
      sub_1001C3D38(v46, 1);
    }

    sub_100004A08(__p, "");
    sub_1002594BC(a1, 0, __p);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  buf = 0uLL;
  v54 = 0;
  if (*(a1 + 1457) == 1)
  {
    v25 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      v26 = "Rose is powered off, but deep sleep on demand is enabled";
      v27 = v25;
LABEL_58:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, v49, 2u);
    }
  }

  else if (sub_10041BE14(a1 + 1248, 0xD9u, &buf))
  {
    v41 = buf;
    if (*(&buf + 1) - buf != 1)
    {
      v16 = 0;
      v45 = 1;
      goto LABEL_99;
    }

    v42 = *buf;
    v43 = qword_1009F2630;
    v44 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      if (v44)
      {
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "OTP workaround already completed. No need to boot rose again.", v49, 2u);
      }

      v45 = 0;
      atomic_store(0xAu, v4);
      v16 = 1;
      goto LABEL_98;
    }

    if (v44)
    {
      *v49 = 0;
      v26 = "Rose is powered off, but the OTP workaround hasn't been done yet";
      v27 = v43;
      goto LABEL_58;
    }
  }

  v16 = 0;
  v45 = 1;
LABEL_98:
  v41 = buf;
LABEL_99:
  if (v41)
  {
    *(&buf + 1) = v41;
    operator delete(v41);
  }

  if (v45)
  {
    goto LABEL_102;
  }

  return v16;
}

void sub_100258E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = *(v17 - 96);
  if (v19)
  {
    *(v17 - 88) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100258EC8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100258F40;
  v3[3] = &unk_100998F28;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100258F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 1698))
  {
    v2 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: activation and matching is already in progress", v13, 2u);
    }
  }

  else if (*(v1 + 1697) == 1 && *(v1 + 1696) == 1)
  {
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose activate: rose and rose service are already matched", buf, 2u);
    }

    sub_100258630(v1, *(a1 + 40));
  }

  else
  {
    v5 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose activate: registering for a matching service", v14, 2u);
    }

    *(v1 + 1698) = 1;
    v6 = IONotificationPortCreate(kIOMainPortDefault);
    *(v1 + 1688) = v6;
    if (v6)
    {
      IONotificationPortSetDispatchQueue(v6, *(v1 + 8));
      v7 = *(v1 + 1688);
      v8 = IOServiceNameMatching("rose");
      IOServiceAddMatchingNotification(v7, "IOServiceFirstMatch", v8, sub_1002582B8, v1, (v1 + 1676));
      v9 = *(v1 + 1688);
      v10 = IOServiceNameMatching("rose-supervisor");
      IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", v10, sub_1002582B8, v1, (v1 + 1680));
      sub_1002582B8(v1, *(v1 + 1676));
      sub_1002582B8(v1, *(v1 + 1680));
    }

    else
    {
      sub_1004B1CA4();
      sub_10025911C(v11, v12);
    }
  }
}

const char *sub_10025911C(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xA)
  {
    return "UnknownToHost";
  }

  else
  {
    return off_1009A1080[a2 - 1];
  }
}

id sub_100259144()
{
  memset(v9, 0, sizeof(v9));
  v8 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v9, &v8, 0, 0))
  {
    v0 = 0;
  }

  else
  {
    v0 = [NSString stringWithUTF8String:v9];
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"PRRoseUnrecoverableErrorBootUUID"];

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"PRRoseUnrecoverableErrorReason"];

  if (!v0 || !v2 || ((v5 = [v2 isEqualToString:v0], v4 < 3) ? (v6 = v5) : (v6 = 0), (v6 & 1) == 0))
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1002592B0(uint64_t a1)
{
  v2 = 0;
  if ((sub_10047A0C8(a1 + 40, &v2) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1CBC();
  }

  return v2;
}

NSDictionary *__cdecl sub_100259310(id a1)
{
  v4 = @"UpdateFailed";
  v1 = [NSNumber numberWithBool:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1002593D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026A500;
  block[3] = &unk_10099CF08;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100259470(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 7;
  return (*(v1 + 16))();
}

void sub_1002594BC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = qword_1009F2630;
  v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = atomic_load((a1 + 1240));
    *buf = 136315394;
    v42 = sub_10025911C(v7, v8);
    v43 = 2080;
    v44 = sub_100261E38(v42, a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose::setState, currState: [%s], event: [%s]", buf, 0x16u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v14 = atomic_load((a1 + 1240));
  if (v14 <= 5)
  {
    if (v14 <= 2)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          if (*(a3 + 23) < 0)
          {
            sub_1000056BC(&v37, *a3, *(a3 + 1));
          }

          else
          {
            v37 = *a3;
            v38 = *(a3 + 2);
          }

          sub_100262948(a1, a2, &v37);
          if (SHIBYTE(v38) < 0)
          {
            v20 = v37;
            goto LABEL_69;
          }
        }

        else if (v14 == 2)
        {
          if (*(a3 + 23) < 0)
          {
            sub_1000056BC(&__dst, *a3, *(a3 + 1));
          }

          else
          {
            __dst = *a3;
            v36 = *(a3 + 2);
          }

          sub_100262D98(a1, a2, &__dst);
          if (SHIBYTE(v36) < 0)
          {
            v20 = __dst;
LABEL_69:
            operator delete(v20);
            return;
          }
        }
      }

      else
      {
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&v39, *a3, *(a3 + 1));
        }

        else
        {
          v39 = *a3;
          v40 = *(a3 + 2);
        }

        sub_100261E60(a1, a2, &v39);
        if (SHIBYTE(v40) < 0)
        {
          v20 = v39;
          goto LABEL_69;
        }
      }

      return;
    }

    if (v14 == 3)
    {
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v33, *a3, *(a3 + 1));
      }

      else
      {
        v33 = *a3;
        v34 = *(a3 + 2);
      }

      sub_1002659F8(a1, a2, &v33, v9, v10, v11, v12, v13);
      if (SHIBYTE(v34) < 0)
      {
        v20 = v33;
        goto LABEL_69;
      }

      return;
    }

    if (v14 == 4)
    {
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v31, *a3, *(a3 + 1));
      }

      else
      {
        v31 = *a3;
        v32 = *(a3 + 2);
      }

      sub_100265FA0(a1, a2);
      if (SHIBYTE(v32) < 0)
      {
        v20 = v31;
        goto LABEL_69;
      }

      return;
    }

LABEL_23:
    v15 = qword_1009F2630;
    v16 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v17 = atomic_load((a1 + 1240));
      v18 = sub_10025911C(v16, v17);
      v19 = sub_100261E38(v18, a2);
      *buf = 136315394;
      v42 = v18;
      v43 = 2080;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PRRose unexpected event while in state: %s, event: %s, ignoring", buf, 0x16u);
    }

    return;
  }

  if (v14 > 8)
  {
    if (v14 != 9)
    {
      if (v14 == 10)
      {
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(__p, *a3, *(a3 + 1));
        }

        else
        {
          *__p = *a3;
          v24 = *(a3 + 2);
        }

        sub_1002671F4(a1, a2, __p);
        if (SHIBYTE(v24) < 0)
        {
          v20 = __p[0];
          goto LABEL_69;
        }
      }

      else if (v14 == 11)
      {
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&v21, *a3, *(a3 + 1));
        }

        else
        {
          v21 = *a3;
          v22 = *(a3 + 2);
        }

        sub_1002673BC(a1, a2);
        if (SHIBYTE(v22) < 0)
        {
          v20 = v21;
          goto LABEL_69;
        }
      }

      return;
    }

    goto LABEL_23;
  }

  if (v14 == 6)
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v29, *a3, *(a3 + 1));
    }

    else
    {
      v29 = *a3;
      v30 = *(a3 + 2);
    }

    sub_1002664B4(a1, a2, &v29);
    if (SHIBYTE(v30) < 0)
    {
      v20 = v29;
      goto LABEL_69;
    }
  }

  else if (v14 == 7)
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v27, *a3, *(a3 + 1));
    }

    else
    {
      v27 = *a3;
      v28 = *(a3 + 2);
    }

    sub_100266AC4(a1, a2);
    if (SHIBYTE(v28) < 0)
    {
      v20 = v27;
      goto LABEL_69;
    }
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v25, *a3, *(a3 + 1));
    }

    else
    {
      v25 = *a3;
      v26 = *(a3 + 2);
    }

    sub_100266D60(a1, a2);
    if (SHIBYTE(v26) < 0)
    {
      v20 = v25;
      goto LABEL_69;
    }
  }
}

void sub_100259968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100259A44(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: powerOnInternal", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  *(a1 + 1552) = 1;
  sub_100004A08(__p, "");
  sub_1002594BC(a1, 10, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100259AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100259B08(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: sendHostGoodbye", buf, 2u);
  }

  *buf = 0;
  v10 = 0;
  v11 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = sub_10041B708(a1 + 1248, 0x29u, &__p, buf);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10025FC70;
    v5[3] = &unk_10098AD98;
    v5[4] = a1;
    sub_1002593D8(a1, v5);
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1CF0();
  }

  if (*buf)
  {
    v10 = *buf;
    operator delete(*buf);
  }

  return v3;
}

void sub_100259C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100259C6C(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: executePowerOff starting.", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  if (sub_10047A320(a1 + 40, 0, v3, v4, v5, v6, v7, v8))
  {
    atomic_store(0xAu, (a1 + 1240));
    dispatch_async(*(a1 + 16), &stru_1009A0C40);
    dispatch_assert_queue_V2(*(a1 + 8));
    *(a1 + 1552) = 0;
    v9 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose: executePowerOff complete.", v11, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1D24();
    }

    v10 = abort_report_np();
    sub_100259D80(v10);
  }
}

void sub_100259D80(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  if (*a1)
  {
    v2 = objc_retainBlock(*a1);
    v9 = sub_100478670(a1 + 40, &v17, v3, v4, v5, v6, v7, v8);
    v10 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handling cached getChipInfoAsync", buf, 2u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100261CCC;
    v12[3] = &unk_1009A0AA8;
    v12[4] = v2;
    v15 = v9;
    v13 = v17;
    v14 = v18;
    sub_1002593D8(a1, v12);

    v11 = *a1;
  }

  else
  {
    v11 = 0;
  }

  *a1 = 0;
}

uint64_t sub_100259EA8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 7;
  return (*(v1 + 16))(v1, &v3, *(a1 + 40) | &_mh_execute_header);
}

uint64_t sub_100259EF0(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100259F9C;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100259F9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1002592B0(v2);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = NSTemporaryDirectory();
    v4 = [NSString stringWithFormat:@"%@/%s", v3, "healAttemped.tok"];

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    v7 = qword_1009F2630;
    v8 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Healing skipped as it was attempted before without success...", buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting healing for the first time", v9, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = sub_10047A0D0(v2 + 40) ^ 1;
    }
  }
}

void sub_10025A118(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  sub_100329550(*(a1 + 1296), &v14);
  sub_10026A998(v6, &v15);
  v2 = v14;
  if (v14 || (v13 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1D58();
    }

    if (v2 == 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4 * (v2 == 2);
    }

    sub_100257F90(a1, v3);
  }

  else if ((sub_10025A30C(a1, v6) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1D8C();
    }

    sub_100004A08(__p, "Failed to apply config parameters");
    sub_10025BB8C(a1, 0, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v13 == 1)
  {
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }
  }

  if (v22 == 1)
  {
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }
}

void sub_10025A2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10025C150(&a16);
  sub_10025C1B0(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_10025A30C(uint64_t a1, uint64_t a2)
{
  v6 = +[NSUserDefaults standardUserDefaults];
  if (sub_10025DFA8(a1))
  {
    sub_10026AD28(v18, 4, *a2);
    *buf = *(a2 + 80);
    memset(v17, 0, sizeof(v17));
    sub_1001FE45C(v17, buf, &buf[2], 1);
    sub_10026AED4(v14, 22, v17);
    sub_10026AD28(v11, 21, 2);
    buf[0] = v18[0];
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_100009A48(&v22, v19, v20, v20 - v19);
    v25 = v11[0];
    memset(v26, 0, sizeof(v26));
    sub_100009A48(v26, v12, v13, v13 - v12);
    v27 = v14[0];
    v29[0] = 0;
    v29[1] = 0;
    v28 = 0;
    sub_100009A48(&v28, v15, v16, v16 - v15);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_10026B8B4(&v8, buf, &v30, 3uLL);
    v2 = 0;
    while (1)
    {
      v3 = v29[v2 - 1];
      if (v3)
      {
        v29[v2] = v3;
        operator delete(v3);
      }

      v2 -= 4;
      if (v2 == -12)
      {
        *buf = 0;
        v22 = 0;
        v23 = 0;
        sub_10026B35C(buf, v8, v9, (v9 - v8) >> 5);
        sub_1004775F4(a1 + 40, buf);
      }
    }
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1DC0();
  }

  return 0;
}

void sub_10025B8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  *(v56 - 240) = &a40;
  sub_100189A94((v56 - 240));
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  if (a48)
  {
    a49 = a48;
    operator delete(a48);
  }

  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025BB8C(uint64_t a1, uint64_t a2, std::string::size_type a3)
{
  v6 = qword_1009F2630;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10046BD18(a2, __p);
    v7 = v27 >= 0 ? __p : __p[0];
    v8 = *(a3 + 23) >= 0 ? a3 : *a3;
    *buf = 136315394;
    v29 = v7;
    v30 = 2080;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose::_triggerLogCollection: type: %s, reason: %s", buf, 0x16u);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!a2)
  {
    sub_100257E7C(a1);
    atomic_store(7u, (a1 + 1240));
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100261668;
    v25[3] = &unk_10098AD98;
    v25[4] = a1;
    sub_1002593D8(a1, v25);
    if (!*(a1 + 1328))
    {
      operator new();
    }

    v14 = +[NSUserDefaults standardUserDefaults];
    if ([v14 BOOLForKey:@"HaltPRRoseOnFatalError"])
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
      {
        sub_1004B222C();
      }

      while (1)
      {
        sleep(0xAu);
      }
    }

    v15 = [v14 stringForKey:@"HaltPRRoseOnFatalErrorReason"];
    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    v17 = [NSString stringWithUTF8String:v16];
    v18 = [v15 isEqualToString:v17];

    if (v18)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
      {
        sub_1004B21BC();
      }

      while (1)
      {
        sleep(0xAu);
      }
    }
  }

  v19 = sub_100478A18(a1 + 40, a2, a3, v9, v10, v11, v12, v13);
  AnalyticsSendEventLazy();
  v20 = 1;
  if (v19 > 2)
  {
    switch(v19)
    {
      case 3:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B2044();
        }

        return v20;
      case 4:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B2010();
        }

        return 0;
      case 5:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B1FDC();
        }

        return 0;
    }

    return v20;
  }

  if (!v19)
  {
    v22 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully triggered log collection", __p, 2u);
    }

    return v20;
  }

  if (v19 == 1)
  {
    v23 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (a2 == 1)
    {
      if (v23)
      {
        sub_1004B2188();
      }

      std::operator+<char>();
      v20 = sub_10025BB8C(a1, 0, __p);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      return v20;
    }

    if (a2)
    {
      if (v23)
      {
        sub_1004B20E0();
      }
    }

    else if (v23)
    {
      sub_1004B2154();
    }

    goto LABEL_59;
  }

  if (v19 != 2)
  {
    return v20;
  }

  v21 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v21)
    {
      sub_1004B2078();
    }

    return 0;
  }

  if (v21)
  {
    sub_1004B20AC();
  }

LABEL_59:
  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_10025C0C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10025C150(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_10025C1B0(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 48) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 24) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_10025C210(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "regulatory,refreshConfiguration()", buf, 2u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025C2CC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_10025C2CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(__p, "");
  sub_1002594BC(v1, 8, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10025C324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025C340(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: LPEM enable", buf, 2u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025C3FC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_10025C3FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(__p, "");
  sub_1002594BC(v1, 11, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10025C454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025C470(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: enableDeepSleepOnDemand %u", buf, 8u);
  }

  v5 = sub_1000054A8();
  if (sub_100460A50(v5))
  {
    if (*(a1 + 1496))
    {
      v6 = *(a1 + 8);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10025C5C8;
      v8[3] = &unk_10099C618;
      v8[4] = a1;
      v9 = a2;
      dispatch_async(v6, v8);
    }

    else
    {
      v7 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRRose: ignoring deep sleep on demand change because deep sleep feature is disabled", buf, 2u);
      }
    }
  }
}

void sub_10025C5C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == *(v1 + 1457))
  {
    return;
  }

  v3 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep on demand has been %s", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  *(v1 + 1457) = v5;
  if (*(v1 + 1488) == 1)
  {
    v6 = *(v1 + 1480);
  }

  else
  {
    v6 = 1000;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 15000;
  }

  sub_1001DABA8(*(v1 + 1544), v7);
  if (*(v1 + 1457) == 1)
  {
    v8 = atomic_load((v1 + 1240));
    if (v8 == 10)
    {
      v9 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep on demand is enabled but we're in PoweredOff, need to power on and then enter deep sleep", buf, 2u);
      }

      *(v1 + 1552) = 2;
      sub_100004A08(__p, "");
      sub_1002594BC(v1, 10, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    if (*(v1 + 1457))
    {
      return;
    }
  }

  v10 = atomic_load((v1 + 1240));
  if (v10 == 11)
  {
    v11 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep on demand is disabled but we're in DeepSleep, need to exit deep sleep and then power off", buf, 2u);
    }

    *(v1 + 1552) = 2;
    sub_10025C7F4(v1, 1);
  }
}

void sub_10025C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025C7F4(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: requestDeepSleepExit", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v5 = *(a1 + 1504) + 50000000;
  if (std::chrono::steady_clock::now().__d_.__rep_ < v5)
  {
    v6 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep exit request too quick after previous entry. waiting...", buf, 2u);
    }

    *buf = v5 - std::chrono::steady_clock::now().__d_.__rep_;
    std::this_thread::sleep_for (buf);
  }

  v18 = sub_1001B22B4(3);
  *buf = 0;
  v16 = 0;
  v17 = 0;
  sub_1000069DC(buf, &v18, &v19, 1);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v7 = sub_10041B708(a1 + 1248, 0x2Du, buf, &__p);
  v8 = qword_1009F2630;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRose: sent deep sleep exit request to RoseSupervisor. Polling for completion.", v11, 2u);
    }

    v9 = sub_100267944(a1, a2);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      v16 = *buf;
      operator delete(*buf);
    }

    return v9;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B229C();
    }

    result = abort_report_np();
    __break(1u);
  }

  return result;
}

void sub_10025C9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025C9F4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025CAA0;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10025CAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    sub_1004B22D0();
  }

  v6 = v3;
  v4 = objc_retainBlock(v3);
  v5 = *(a1 + 1280);
  *(a1 + 1280) = v4;
}

void sub_10025CB10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    sub_1004B22FC();
  }

  v6 = v3;
  v4 = objc_retainBlock(v3);
  v5 = *(a1 + 1288);
  *(a1 + 1288) = v4;
}

BOOL sub_10025CB6C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = atomic_load((a1 + 1240));
  if (v8 - 3 <= 1)
  {
    goto LABEL_13;
  }

  v9 = atomic_load((a1 + 1240));
  v10 = v9 > 8;
  v11 = (1 << v9) & 0x118;
  if (v10 || v11 == 0)
  {
    if (a2 <= 0x3C)
    {
      if (((1 << a2) & 0x1A40219800000001) != 0)
      {
        goto LABEL_13;
      }

      if (a2 == 37)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    result = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004B23BC();
    return 0;
  }

  if (a2 > 0x3C)
  {
    goto LABEL_24;
  }

  if (((1 << a2) & 0x1A40219800000001) == 0)
  {
    if (a2 != 37)
    {
      if (a2 == 38)
      {
        a2 = 38;
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_17:
    v16 = 0;
    if ((sub_10025CE68(a1, &v16) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2328();
    }

    if (v16 != 1)
    {
      return sub_10025CDC0(a1, v6, a3, a4);
    }

    v14 = qword_1009F2630;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(v6, v15);
      sub_1004B235C(v15);
    }

    return 0;
  }

LABEL_13:

  return sub_10025CDC0(a1, a2, a3, a4);
}

BOOL sub_10025CDC0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 57)
  {
    v8 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received NISessionStatusUpdate, updating AOP UserDefaults.", v10, 2u);
    }

    sub_10025CF40(a1);
  }

  return sub_10041B708(a1 + 1248, a2, a3, a4);
}

uint64_t sub_10025CE68(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000054A8();
  if (!sub_100460A50(v4))
  {
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 1;
    goto LABEL_5;
  }

  v5 = sub_100261448(a1);
  if (v5 <= 3)
  {
    v7 = 0x1010000u >> (8 * v5);
    v6 = 0xEu >> (v5 & 0xF);
LABEL_5:
    *a2 = v7;
  }

  return v6 & 1;
}

BOOL sub_10025CED4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = atomic_load((a1 + 1240));
  if (v4 - 3 >= 2)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B23F0();
    }

    return 0;
  }

  else
  {
    v5 = a1 + 1248;

    return sub_10041BAC8(v5, a2, a3);
  }
}

void sub_10025CF40(uint64_t a1)
{
  v2 = sub_100394C68(@"AOPSensorFusionDataForwarding", 0);
  v3 = sub_100394C68(@"UseNIPathForSuspendOnStationary", 0);
  v4 = 2;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = v4 | v2 | (4 * (sub_100394AE8(@"AopSFStationaryTimeoutIn100msUnits", 0x32) & 0x7Fu));
  v6 = sub_100394AE8(@"AopSFIOReportIntervalIn10msUnits", 0xA) << 9;
  v7 = sub_100394C68(@"AopSFDisableDynamicBubbles", 0);
  v8 = 0x20000;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v5 | v6 | v8;
  if (sub_100394C68(@"AopSFUseHEPHandling", 0))
  {
    v10 = 0x40000;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100394AE8(@"AopSFBubbleDeltadB", 5);
  v12 = sub_100394AE8(@"AopSFBubbleMaxThresholddBm", 0xFFFFFFA8);
  v13 = sub_100394AE8(@"AopSFTxPowerdBm", 0x7F);
  v14 = sub_100394AE8(@"AopSFSimulateDisplacement", 0) & 3;
  v15 = sub_100394AE8(@"AopSFUseStaticIOClassifier", 0) & 1;
  v21 = 0;
  v22 = v9 | v10 | (v11 << 19) | (v12 << 27) | (v13 << 35) | (v14 << 43) | (v15 << 45) | ((sub_100394AE8(@"AopSFStaticIOClassifierEpsilonInMM", 0xA) & 0x1FF) << 46);
  __p = 0;
  v20 = 0;
  sub_1000069DC(&__p, &v22, &v23, 8);
  v16 = sub_10041BAC8(a1 + 1248, 0xDBu, &__p);
  v17 = qword_1009F2630;
  if (v16)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wrote the AOP UserDefaults property", v18, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2424();
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_10025D15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025D178(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = qword_1009F2630;
  v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    sub_1004B2458(v6, a2);
  }

  if (v6)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose::_handleRoseControlReport - ResetCompleteSuccess", v7, 2u);
  }

  std::mutex::lock((a1 + 1344));
  atomic_store(1u, (a1 + 1456));
  std::condition_variable::notify_all((a1 + 1408));
  std::mutex::unlock((a1 + 1344));
}

BOOL sub_10025D228(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: assertUWBCommsOwnership", &__p, 2u);
  }

  v8 = 1;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 0xD1u, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D2FC(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: deassertUWBCommsOwnership", &__p, 2u);
  }

  v8 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 0xD1u, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D3CC(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: allowRoseSleep", &__p, 2u);
  }

  v8 = 1;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 0xD4u, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D4A0(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: disallowRoseSleep", &__p, 2u);
  }

  v8 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 0xD4u, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D570(uint64_t a1)
{
  v2 = *(sub_1000054A8() + 144);
  v7 = 1;
  if ((v2 - 3) >= 0x19)
  {
    v3 = v2 - 102;
    v4 = v3 > 0x18;
    v5 = (1 << v3) & 0x19CE733;
    if (v4 || v5 == 0)
    {
      v7 = 0;
    }
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  if ([v8 BOOLForKey:@"DisableUwbBasebandCoexMessaging"])
  {
    v9 = qword_1009F2630;
    v7 = 0;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disabling UWB-BB coex messaging. DisableUwbBasebandCoexMessaging is set to true.", buf, 2u);
      v7 = 0;
    }
  }

  v10 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Support Rose-BB Coex: %d", buf, 8u);
  }

  v13 = v7;
  *buf = 0;
  v15 = 0;
  v16 = 0;
  sub_1000069DC(buf, &v13, buf, 4);
  v11 = sub_10041BAC8(a1 + 1248, 0xD8u, buf);
  if (*buf)
  {
    v15 = *buf;
    operator delete(*buf);
  }

  return v11;
}

void sub_10025D71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10025D750(std::mutex *a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: resetSupervisorJobs", buf, 2u);
  }

  std::mutex::lock(a1 + 21);
  atomic_store(0, &a1[22].__m_.__opaque[40]);
  std::mutex::unlock(a1 + 21);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10025D8C8;
  v11[3] = &unk_10098AD98;
  v11[4] = a1;
  sub_1002593D8(a1, v11);
  *buf = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = sub_10041B708(&a1[19].__m_.__opaque[24], 0x27u, &__p, buf);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (!v3 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B24E0();
  }

  if (*buf)
  {
    v9 = *buf;
    operator delete(*buf);
  }

  return v3;
}

void sub_10025D89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025D8C8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 3;
  return (*(v1 + 16))();
}

BOOL sub_10025D908(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B2514();
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  v2 = sub_10041B708(a1 + 1248, 0x36u, &__p, &v7);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (!v2 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2554();
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v2;
}

void sub_10025D9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025D9F8(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: activateAOPTimeSync", buf, 2u);
  }

  v3 = sub_1000054A8();
  if (sub_1000149D4(v3))
  {
    return 1;
  }

  *buf = 0;
  v10 = 0;
  v11 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  v4 = sub_10041B708(a1 + 1248, 0x2Au, &__p, buf);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (!v4 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2588();
  }

  if (*buf)
  {
    v10 = *buf;
    operator delete(*buf);
  }

  return v4;
}

void sub_10025DAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025DB18(uint64_t a1)
{
  __p = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (sub_10041BE14(a1 + 1248, 0xD5u, &__p))
  {
    if (v5[0] - __p == 1)
    {
      v1 = *__p != 0;
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B25F0(v5, &__p);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B25BC();
  }

  v1 = 0;
LABEL_9:
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: hasCalDataBeenPushed %u", buf, 8u);
  }

  if (__p)
  {
    v5[0] = __p;
    operator delete(__p);
  }

  return v1;
}

unint64_t sub_10025DC74(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v8 = 0;
  v9 = 0;
  v1 = sub_10041B708(a1 + 1248, 0x28u, &__p, &v10);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (!v1 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2664();
  }

  v2 = v10;
  if (v11 - v10 == 8)
  {
    v3 = *v10 & 0xFFFFFFFFFFFFFF00;
    v4 = *v10;
LABEL_11:
    v11 = v2;
    operator delete(v2);
    return v3 | v4;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2698();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = v10;
  if (v10)
  {
    goto LABEL_11;
  }

  return v5;
}

void sub_10025DD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025DDA0()
{
  v0 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    sub_1004B2744();
    __break(1u);
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"use-internal-32k-clock", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 4)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = qword_1009F2630;
      if (BytePtr)
      {
        v7 = BytePtr;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v7;
          v14[0] = 67109120;
          v14[1] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "use-internal-32k-clock property exists: 0x%x", v14, 8u);
        }

        v9 = *v7 != 0;
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B2710();
      }
    }

    else
    {
      v10 = qword_1009F2630;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = CFGetTypeID(v3);
        sub_1004B26CC(v14, v11);
      }
    }

    v9 = 0;
LABEL_13:
    CFRelease(v3);
    return v9;
  }

  v12 = qword_1009F2630;
  v9 = 0;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "use-internal-32k-clock property does not exist", v14, 2u);
    return 0;
  }

  return v9;
}

uint64_t sub_10025DFA8(uint64_t a1)
{
  v2 = sub_1000054A8();
  v3 = sub_10041C594(v2[144]);
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 0x100) != 0)
  {
    if (v5)
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setRosePlatformInfo: %d", buf, 8u);
    }

    sub_10026AD28(buf, 56, v3);
    v8[0] = buf[0];
    memset(__p, 0, sizeof(__p));
    sub_100009A48(__p, v12, v13, v13 - v12);
    memset(v7, 0, sizeof(v7));
    sub_10026B8B4(v7, v8, buf, 1uLL);
    sub_10025EAE8(a1, v7);
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setRosePlatformInfo not needed.", buf, 2u);
  }

  return 1;
}

void sub_10025E130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  sub_100189A94(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025E180(uint64_t a1, char a2)
{
  v15 = 23;
  v20 = 0;
  v21 = 0;
  __p = 0;
  sub_1000069DC(&__p, &v15, v16, 1);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_100009A48(&v23, __p, v20, v20 - __p);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  sub_100477418(a1 + 40, &v23, 2000, &__p);
  if (v22)
  {
    sub_100462A8C(&__p, &v15);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_10026B35C(&v12, v17, v18, (v18 - v17) >> 5);
    if (v13 == v12 || *v12 != 23)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B275C();
      }
    }

    else
    {
      v4 = sub_10042727C(v12, 0);
      v5 = v4;
      if ((v4 & 0x100) != 0)
      {
        v6 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Coex: global event config (%d) ", buf, 8u);
        }

        sub_1004272B4(v12, 0, v5 & 0xFE | a2);
        buf[0] = *v12;
        v29 = 0;
        v30 = 0;
        v28 = 0;
        sub_100009A48(&v28, *(v12 + 8), *(v12 + 16), *(v12 + 16) - *(v12 + 8));
        v8 = 0;
        v9 = 0;
        v10 = 0;
        sub_10026B8B4(&v8, buf, &v31, 1uLL);
        memset(v11, 0, sizeof(v11));
        sub_10026B35C(v11, v8, v9, (v9 - v8) >> 5);
        v26 = &v8;
        sub_100189A94(&v26);
        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        sub_1004775F4(a1 + 40, v11);
      }
    }

    *buf = &v12;
    sub_100189A94(buf);
    *buf = &v17;
    sub_100189A94(buf);
    if ((v22 & 1) != 0 && __p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return 0;
}

void sub_10025E428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  *(v28 - 96) = v26;
  sub_100189A94((v28 - 96));
  *(v28 - 96) = &a16;
  sub_100189A94((v28 - 96));
  *(v28 - 96) = v27;
  sub_100189A94((v28 - 96));
  if (a26 == 1 && __p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v30 = *(v28 - 128);
  if (v30)
  {
    *(v28 - 120) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025E4F8(uint64_t *a1)
{
  sub_10026B0D4(&v11);
  if (a1[1] != *a1)
  {
    v2 = 0;
    do
    {
      v3 = sub_10000EA44(&v11, "0x", 2);
      v10 = 48;
      v4 = sub_100193BA0(v3, &v10);
      v5 = *v4;
      *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v4 + *(v5 - 24) + 24) = 2;
      v6 = *(*a1 + v2);
      std::ostream::operator<<();
      v8 = *a1;
      v7 = a1[1];
      if (v2 != ~*a1 + v7)
      {
        sub_10000EA44(&v11, ",", 1);
        v8 = *a1;
        v7 = a1[1];
      }

      ++v2;
    }

    while (v7 - v8 > v2);
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10025E740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_10025E774(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 1240));
  if (v2 - 3 > 1)
  {
    return 0;
  }

  v5 = qword_1009F2630;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100193120(&__p);
    v15 = 48;
    v8 = sub_100193BA0(&v18, &v15);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    sub_10000EA44(&v18, "0x", 2);
    for (i = 7; i != -1; --i)
    {
      *(&v20[1].__locale_ + *(v18 - 24)) = 2;
      v10 = *(a2 + i);
      std::ostream::operator<<();
    }

    std::stringbuf::str();
    v18 = v11;
    if (v21 < 0)
    {
      operator delete(v20[7].__locale_);
    }

    std::locale::~locale(v20);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v12 = &v13;
    if (v14 < 0)
    {
      v12 = v13;
    }

    *buf = 136315138;
    v23 = v12;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "PRRose::setRoseConnectionlessMacAddress: %s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(v13);
    }
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_1000069DC(&__p, a2, a2 + 8, 8);
  v6 = sub_10025CED4(a1, 0xD3u, &__p);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_10025EAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_100193C68(&__p);

  _Unwind_Resume(a1);
}

void sub_10025EAE8(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting config parameters:", buf, 2u);
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      v7 = qword_1009F2630;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_100426EAC(v5);
        if (v11 >= 0)
        {
          v8 = buf;
        }

        else
        {
          v8 = *buf;
        }

        *v12 = 136315138;
        *&v12[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\t%s", v12, 0xCu);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(*buf);
        }
      }

      v5 += 32;
    }

    while (v5 != v6);
    v5 = *a2;
    v6 = *(a2 + 8);
  }

  *buf = 0;
  v10 = 0;
  v11 = 0;
  sub_10026B35C(buf, v5, v6, (v6 - v5) >> 5);
  sub_1004775F4(a1 + 40, buf);
}

void sub_10025ECB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100189A94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025ECDC(uint64_t a1, char a2)
{
  v2 = atomic_load((a1 + 1240));
  if (v2 - 3 < 2)
  {
    sub_10026AD28(v6, 4, a2);
    v9[0] = v6[0];
    memset(v10, 0, sizeof(v10));
    sub_100009A48(v10, __p, v8, v8 - __p);
    memset(v5, 0, sizeof(v5));
    sub_10026B8B4(v5, v9, &v11, 1uLL);
    sub_10025EAE8(a1, v5);
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B27C4();
  }

  return 0;
}

void sub_10025EE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_100189A94(&a17);
  v19 = *(v17 - 48);
  if (v19)
  {
    *(v17 - 40) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025EE50(uint64_t a1, unsigned int a2, int a3)
{
  v6 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setRoseLeadingEdgeThresholds: %d, %d", buf, 0xEu);
  }

  sub_1004278F0(a2, a3, buf);
  if (v17)
  {
    v9 = 35;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    sub_100009A48(&v10, *buf, v16, v16 - *buf);
    v13[0] = 35;
    memset(__p, 0, sizeof(__p));
    sub_100009A48(__p, v10, v11, v11 - v10);
    memset(v8, 0, sizeof(v8));
    sub_10026B8B4(v8, v13, buf, 1uLL);
    sub_10025EAE8(a1, v8);
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B27F8();
  }

  if (v17 == 1 && *buf)
  {
    v16 = *buf;
    operator delete(*buf);
  }

  return 0;
}

void sub_10025F014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_100189A94(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a24 == 1)
  {
    if (a21)
    {
      a22 = a21;
      operator delete(a21);
    }
  }

  _Unwind_Resume(a1);
}

void sub_10025F088(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setRoseAlishaURSKTTL: %llu", &buf, 0xCu);
  }

  *&buf = a2;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_1000069DC(&v6, &buf, &buf + 8, 8);
  LOBYTE(buf) = 7;
  v12 = 0;
  v13 = 0;
  *(&buf + 1) = 0;
  sub_100009A48(&buf + 8, v6, v7, v7 - v6);
  v9[0] = buf;
  memset(__p, 0, sizeof(__p));
  sub_100009A48(__p, *(&buf + 1), v12, v12 - *(&buf + 1));
  memset(v5, 0, sizeof(v5));
  sub_10026B8B4(v5, v9, &buf, 1uLL);
  sub_10025EAE8(a1, v5);
}

void sub_10025F20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_100189A94(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  v21 = *(v19 - 72);
  if (v21)
  {
    *(v19 - 64) = v21;
    operator delete(v21);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025F274(uint64_t a1, char a2)
{
  v4 = sub_1000054A8();
  v5 = sub_100460B80(v4);
  if ((v5 & 0x100) != 0)
  {
    sub_10026AD28(v8, v5, a2);
    buf[0] = v8[0];
    memset(__p, 0, sizeof(__p));
    sub_100009A48(__p, v9, v10, v10 - v9);
    memset(v7, 0, sizeof(v7));
    sub_10026B8B4(v7, buf, &v13, 1uLL);
    sub_10025EAE8(a1, v7);
  }

  return 0;
}

void sub_10025F3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_100189A94(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025F428()
{
  v0 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "setRoseCoexMode called", buf, 2u);
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"DisableCoex"];

  v3 = qword_1009F2630;
  v4 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "Coex disabled using default writes: DisableCoex";
      v6 = &v9;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "Nothing to do on non-watchOS platforms";
    v6 = &v8;
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_10025F530(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "getRoseAlishaTestMode called", buf, 2u);
  }

  v3 = sub_1000054A8();
  v4 = sub_100460B80(v3);
  if ((v4 & 0x100) != 0)
  {
    v7 = v4;
    LOBYTE(v18) = v4;
    v21 = 0;
    v22 = 0;
    *buf = 0;
    sub_1000069DC(buf, &v18, &v18 + 1, 1);
    __p = 0;
    v25 = 0;
    v26 = 0;
    sub_100009A48(&__p, *buf, v21, v21 - *buf);
    if (*buf)
    {
      v21 = *buf;
      operator delete(*buf);
    }

    sub_100477418(a1 + 40, &__p, 2000, buf);
    if (v23)
    {
      sub_100462A8C(buf, &v18);
      v8 = v18;
      if (v18)
      {
        v9 = qword_1009F2630;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1004279E4(v8, v17);
          sub_1004B2860(v17);
        }

LABEL_12:
        v5 = 0;
        v6 = 0;
      }

      else
      {
        for (i = v19[0]; ; i += 32)
        {
          if (i == v19[1])
          {
            if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
            {
              sub_1004B28C0();
            }

            goto LABEL_12;
          }

          if (*i == v7)
          {
            break;
          }
        }

        v12 = sub_10042727C(i, 0);
        if ((v12 & 0x100) == 0)
        {
          v15 = "optTestModeEnabled.has_value()";
          v16 = 1532;
          goto LABEL_40;
        }

        if (v12 != 1)
        {
          if (!v12)
          {
            v13 = qword_1009F2630;
            if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v17[0]) = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "getRoseAlishaTestMode: disabled", v17, 2u);
            }

            v5 = 0;
            goto LABEL_38;
          }

          v15 = "false";
          v16 = 1544;
LABEL_40:
          __assert_rtn("getRoseAlishaTestMode", "PRRose.mm", v16, v15);
        }

        v14 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17[0]) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "getRoseAlishaTestMode: enabled", v17, 2u);
        }

        v5 = 1;
LABEL_38:
        v6 = 1;
      }

      v27 = v19;
      sub_100189A94(&v27);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B282C();
      }

      v5 = 0;
      v6 = 0;
    }

    if (v23 == 1 && *buf)
    {
      v21 = *buf;
      operator delete(*buf);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

void sub_10025F82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22)
{
  v23 = v22;

  a9 = &a14;
  sub_100189A94(&a9);
  if (a20 == 1 && __p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_10025F8B4(uint64_t a1)
{
  v21 = 11558;
  v26 = 0;
  v27 = 0;
  __p = 0;
  sub_1000069DC(&__p, &v21, v22, 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_100009A48(&v29, __p, v26, v26 - __p);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  sub_100477418(a1 + 40, &v29, 2000, &__p);
  if (v28)
  {
    sub_100462A8C(&__p, &v21);
    v2 = v21;
    if (v21)
    {
      v3 = qword_1009F2630;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1004279E4(v2, &buf);
        sub_1004B2928(&buf);
      }

      goto LABEL_29;
    }

    v4 = v23;
    v5 = v24;
    if (v23 == v24)
    {
LABEL_29:
      v32 = &v23;
      sub_100189A94(&v32);
      goto LABEL_30;
    }

    while (1)
    {
      v6 = *v4;
      if (v6 != 38)
      {
        goto LABEL_20;
      }

      v7 = sub_10042727C(v4, 0);
      v8 = sub_10042727C(v4, 1);
      v9 = qword_1009F2630;
      v10 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if ((v7 & 0x100) != 0 && (v8 & 0x100) != 0)
      {
        if (v10)
        {
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v7;
          v34 = 1024;
          v35 = v8;
          v11 = v9;
          v12 = "UWB ePA mode: 0x%02x, eLNA mode: 0x%02x";
          v13 = 14;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, v13);
        }
      }

      else if (v10)
      {
        LOWORD(buf) = 0;
        v11 = v9;
        v12 = "UWB ePA mode: N/A, eLNA mode: N/A";
        v13 = 2;
        goto LABEL_18;
      }

      v6 = *v4;
LABEL_20:
      if (v6 == 45)
      {
        v14 = sub_10042727C(v4, 0);
        v15 = sub_10042727C(v4, 1);
        v16 = qword_1009F2630;
        v17 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if ((v14 & 0x100) != 0 && (v15 & 0x100) != 0)
        {
          if (v17)
          {
            LODWORD(buf) = 67109376;
            HIDWORD(buf) = v14;
            v34 = 1024;
            v35 = v15;
            v18 = v16;
            v19 = "NB ePA mode: 0x%02x, eLNA mode: 0x%02x";
            v20 = 14;
LABEL_27:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, &buf, v20);
          }
        }

        else if (v17)
        {
          LOWORD(buf) = 0;
          v18 = v16;
          v19 = "NB ePA mode: N/A, eLNA mode: N/A";
          v20 = 2;
          goto LABEL_27;
        }
      }

      v4 += 32;
      if (v4 == v5)
      {
        goto LABEL_29;
      }
    }
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B28F4();
  }

LABEL_30:
  if (v28 == 1 && __p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_10025FBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  a23 = &a12;
  sub_100189A94(&a23);
  if (a18 == 1 && __p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025FC70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 3;
  return (*(v1 + 16))();
}

uint64_t sub_10025FCB0(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: boot rose", buf, 2u);
  }

  if (!sub_10025D2FC(a1))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2988();
    }

    return 0;
  }

  if ((sub_100475124(a1 + 40, *(a1 + 1336), *(a1 + 1337)) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B29BC();
    }

    return 0;
  }

  if ((sub_100478A14() & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B29F0();
    }

    return 0;
  }

  v8 = sub_100478144(a1 + 40, 1, buf, v3, v4, v5, v6, v7);
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2A24();
    }

    AnalyticsSendEventLazy();
  }

  AnalyticsSendEventLazy();
  return v8;
}

id sub_10025FEA4(uint64_t a1)
{
  v12[0] = @"BootReturnValue";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v13[0] = v2;
  v12[1] = @"DriverState";
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v13[1] = v3;
  v12[2] = @"BootStatusRegister";
  v4 = [NSNumber numberWithInt:*(a1 + 40)];
  v13[2] = v4;
  v12[3] = @"CalibrationReturnValue";
  v5 = [NSNumber numberWithInt:*(a1 + 44)];
  v13[3] = v5;
  v12[4] = @"SendCalibrationTimeout";
  v6 = [NSNumber numberWithInt:*(a1 + 48)];
  v13[4] = v6;
  v12[5] = @"UWBInitDoneTimeout";
  v7 = [NSNumber numberWithInt:*(a1 + 49)];
  v13[5] = v7;
  v12[6] = @"SetCalDataPushedFalseFailure";
  v8 = [NSNumber numberWithInt:*(a1 + 50)];
  v13[6] = v8;
  v12[7] = @"SetCalDataPushedTrueFailure";
  v9 = [NSNumber numberWithInt:*(a1 + 51)];
  v13[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

id sub_1002600FC(uint64_t a1)
{
  v4 = @"BootSuccess";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_1002601C8(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 1512);
    *buf = 67109120;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Resetting chip. Previous counter: %d", buf, 8u);
  }

  v4 = *(a1 + 1512);
  if (v4 >= 6)
  {
    AnalyticsSendEventLazy();
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2AC0();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2B3C();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2B70(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2BE4(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2C58(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2CCC(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2D40(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2DB4(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2E28(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2E9C(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2F10(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2F84(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2FF8(a1);
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B306C(a1);
    }

    v13 = *(a1 + 1532);
    v27 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (v13 <= 6)
    {
      if (v13 <= 3)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            if (v13 == 3)
            {
              if (v27)
              {
                sub_1004B32B4();
              }

              abort_report_np();
            }

            goto LABEL_93;
          }

          goto LABEL_81;
        }

        goto LABEL_69;
      }

      goto LABEL_57;
    }

    if (v13 > 9)
    {
      goto LABEL_63;
    }

    if (v13 == 7)
    {
LABEL_72:
      if (v27)
      {
        sub_1004B31E4();
      }

      v27 = abort_report_np();
      goto LABEL_75;
    }

    if (v13 == 8)
    {
LABEL_84:
      if (v27)
      {
        sub_1004B31B0();
      }

      v27 = abort_report_np();
      goto LABEL_87;
    }

    if (v27)
    {
      sub_1004B317C();
    }

    abort_report_np();
  }

  else
  {
    *(a1 + 1512) = v4 + 1;
    AnalyticsSendEventLazy();
    if (sub_100478734(a1 + 40, v5, v6, v7, v8, v9, v10, v11))
    {
      return 1;
    }

    v13 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2A58();
    }

    if (sub_10047A320(a1 + 40, 0, v14, v15, v16, v17, v18, v19))
    {
      v12 = 1;
      if ((sub_10047A320(a1 + 40, 1, v20, v21, v22, v23, v24, v25) & 1) == 0)
      {
        sub_100260B50(a1, 1, 0);
        return 0;
      }

      return v12;
    }
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2A8C();
  }

  v27 = abort_report_np();
LABEL_57:
  if (v13 == 4)
  {
LABEL_75:
    if (v27)
    {
      sub_1004B3280();
    }

    v27 = abort_report_np();
    goto LABEL_78;
  }

  if (v13 == 5)
  {
LABEL_87:
    if (v27)
    {
      sub_1004B324C();
    }

    v27 = abort_report_np();
    goto LABEL_90;
  }

  if (v13 != 6)
  {
    goto LABEL_93;
  }

  if (v27)
  {
    sub_1004B3218();
  }

  v27 = abort_report_np();
LABEL_63:
  switch(v13)
  {
    case 10:
LABEL_78:
      if (v27)
      {
        sub_1004B3148();
      }

      v27 = abort_report_np();
LABEL_81:
      if (v27)
      {
        sub_1004B32E8();
      }

      v27 = abort_report_np();
      goto LABEL_84;
    case 11:
LABEL_90:
      if (v27)
      {
        sub_1004B3114();
      }

      v27 = abort_report_np();
      break;
    case 12:
      if (v27)
      {
        sub_1004B30E0();
      }

      v27 = abort_report_np();
LABEL_69:
      if (v27)
      {
        sub_1004B331C();
      }

      v27 = abort_report_np();
      goto LABEL_72;
  }

LABEL_93:
  if (v27)
  {
    sub_1004B3350();
  }

  v28 = abort_report_np();
  return sub_100260740(v28);
}

id sub_100260740(uint64_t a1)
{
  v1 = *(a1 + 32);
  v16[0] = @"PushFWFailure";
  v15 = [NSNumber numberWithInt:v1[1517]];
  v17[0] = v15;
  v16[1] = @"PingFWFailure";
  v14 = [NSNumber numberWithInt:v1[1518]];
  v17[1] = v14;
  v16[2] = @"PushCalFailure";
  v13 = [NSNumber numberWithInt:v1[1519]];
  v17[2] = v13;
  v16[3] = @"ExtClockSettingFailure";
  v2 = [NSNumber numberWithInt:v1[1520]];
  v17[3] = v2;
  v16[4] = @"ConfigureFWSleepFailure";
  v3 = [NSNumber numberWithInt:v1[1521]];
  v17[4] = v3;
  v16[5] = @"DisableFWLogsFailure";
  v4 = [NSNumber numberWithInt:v1[1522]];
  v17[5] = v4;
  v16[6] = @"FWTimeSyncEnableFailure";
  v5 = [NSNumber numberWithInt:v1[1523]];
  v17[6] = v5;
  v16[7] = @"AOPActivateTimeSyncEnableFailure";
  v6 = [NSNumber numberWithInt:v1[1524]];
  v17[7] = v6;
  v16[8] = @"ApplyConfigParamsCIRVersionFailure";
  v7 = [NSNumber numberWithInt:v1[1525]];
  v17[8] = v7;
  v16[9] = @"ApplyConfigParamsCoExStatusFailure";
  v8 = [NSNumber numberWithInt:v1[1526]];
  v17[9] = v8;
  v16[10] = @"ApplyConfigParamsSendPowerTableFailure";
  v9 = [NSNumber numberWithInt:v1[1527]];
  v17[10] = v9;
  v16[11] = @"ApplyConfigParamsSetMACAddressFailure";
  v10 = [NSNumber numberWithInt:v1[1528]];
  v17[11] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v11;
}

id sub_100260A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = @"ResetCounter";
  v2 = [NSNumber numberWithInt:*(v1 + 1512)];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_100260B50(uint64_t a1, signed int a2, __int128 *a3)
{
  v6 = sub_100259144();
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"PRRoseUnrecoverableErrorAnalytics_FirstTimestamp"];

  if (!v8)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = +[NSDate now];
    [v9 setObject:v10 forKey:@"PRRoseUnrecoverableErrorAnalytics_FirstTimestamp"];

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:&off_1009C4010 forKey:@"PRRoseUnrecoverableErrorAnalytics_CumulativeCount"];
  }

  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [v12 objectForKey:@"PRRoseUnrecoverableErrorAnalytics_FirstTimestamp"];

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 integerForKey:@"PRRoseUnrecoverableErrorAnalytics_CumulativeCount"];

  v16 = +[NSUserDefaults standardUserDefaults];
  v17 = v15 + 1;
  v18 = [NSNumber numberWithInteger:v17];
  [v16 setObject:v18 forKey:@"PRRoseUnrecoverableErrorAnalytics_CumulativeCount"];

  v19 = 0;
  if (a2 == 2 && a3)
  {
    v19 = *(a3 + 4);
  }

  v36[1] = _NSConcreteStackBlock;
  v36[2] = 3221225472;
  v36[3] = sub_10026A284;
  v36[4] = &unk_1009A0BC0;
  v20 = v13;
  v37 = v20;
  v38 = v17;
  v39 = a2;
  v40 = v19;
  AnalyticsSendEventLazy();
  if (!v6)
  {
    if (!a2)
    {
      goto LABEL_18;
    }

    memset(v45, 0, sizeof(v45));
    v36[0] = 37;
    if (sysctlbyname("kern.bootsessionuuid", v45, v36, 0, 0) || ([NSString stringWithUTF8String:v45], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
      {
        sub_1004B3524();
      }

      v27 = 0;
      goto LABEL_17;
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B3484();
    }

    v28 = +[NSUserDefaults standardUserDefaults];
    [v28 setObject:v27 forKey:@"PRRoseUnrecoverableErrorBootUUID"];

    v29 = +[NSUserDefaults standardUserDefaults];
    [v29 setInteger:a2 forKey:@"PRRoseUnrecoverableErrorReason"];

    if (a2 == 1)
    {
      v31 = sub_1002BD51C();
      sub_1002BD590(v31, 5);
      v32 = dispatch_time(0, 1000000000);
      v33 = *(a1 + 8);
      v34 = &stru_1009A0BE0;
    }

    else
    {
      if (a2 != 2)
      {
LABEL_17:

        goto LABEL_18;
      }

      *(&v44 + 5) = 0;
      *&v44 = 0;
      if (a3)
      {
        v44 = *a3;
        v30 = *(a3 + 4);
      }

      else
      {
        v30 = 0;
      }

      v35 = sub_1002BD51C();
      sub_1002BD590(v35, 6);
      v32 = dispatch_time(0, 1000000000);
      v33 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10026A3DC;
      block[3] = &unk_1009A0C00;
      v42 = v44;
      v43 = v30;
      v34 = block;
    }

    dispatch_after(v32, v33, v34);
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
  {
    sub_1004B3384(a2);
  }

  if ((sub_10047A320(a1 + 40, 0, v21, v22, v23, v24, v25, v26) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
  {
    sub_1004B3448();
  }

LABEL_18:
}

uint64_t sub_100261060(uint64_t a1)
{
  if (sub_100478A14())
  {
    v9 = (a1 + 1240);
    v10 = atomic_load((a1 + 1240));
    if (v10 == 4 || (v11 = atomic_load(v9), v11 == 8))
    {
      result = sub_100478608(a1 + 40, v2, v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B3610();
      }
    }

    else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3594(v9);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B3560();
  }

  return 0;
}

uint64_t sub_100261124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a1 + 1240);
  v9 = atomic_load((a1 + 1240));
  if (v9 == 4 || (v10 = atomic_load(v8), v10 == 8))
  {
    v11 = a1 + 40;

    return sub_100478670(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3644(v8);
    }

    return 0;
  }
}

void sub_1002611A8(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10026123C;
  v4[3] = &unk_10099F470;
  v5 = a2;
  v6 = a1;
  v3 = v5;
  sub_1002593D8(a1, v4);
}

void sub_10026123C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if (*v8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B36C0();
    }
  }

  else
  {
    v10 = (v8 + 1240);
    v11 = atomic_load((v8 + 1240));
    if (v11 == 5 || (v12 = atomic_load(v10), v12 == 9))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B36F4((v8 + 1240));
      }

      v13 = *(a1 + 32);
      buf[0] = 0;
      v30 = 0;
      (*(v13 + 16))();
    }

    else
    {
      v14 = atomic_load(v10);
      if (v14 == 4 || (v15 = atomic_load(v10), v15 == 8))
      {
        sub_100478670(v8 + 40, &v26, a3, a4, a5, a6, a7, a8);
        v16 = qword_1009F2630;
        v17 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          v18 = atomic_load(v10);
          v19 = sub_10025911C(v17, v18);
          *buf = 136315138;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Called getChipInfoAsync in compatible terminal state: [%s]", buf, 0xCu);
        }

        v20 = *(a1 + 32);
        v29 = v27;
        *buf = v26;
        v30 = 1;
        (*(v20 + 16))();
      }

      else
      {
        v21 = qword_1009F2630;
        v22 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          v23 = atomic_load(v10);
          *buf = 136315138;
          *&buf[4] = sub_10025911C(v22, v23);
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Called getChipInfoAsync in transitory state: [%s]. Caching handler for later execution", buf, 0xCu);
        }

        v24 = objc_retainBlock(*(a1 + 32));
        v25 = *v8;
        *v8 = v24;
      }
    }
  }
}

uint64_t sub_100261448(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: getDeepSleepStateInternal", buf, 2u);
  }

  v12 = sub_1001B22B4(1);
  *buf = 0;
  v10 = 0;
  v11 = 0;
  sub_1000069DC(buf, &v12, v13, 1);
  __p = 0;
  v8[0] = 0;
  v8[1] = 0;
  if (!sub_10041B708(a1 + 1248, 0x2Du, buf, &__p))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3770();
    }

LABEL_23:
    abort_report_np();
    __break(1u);
  }

  if (v8[0] - __p != 1)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B37A4(v8, &__p);
    }

    goto LABEL_23;
  }

  v3 = *__p;
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 2)
    {
      v5 = "";
    }

    else
    {
      v5 = off_1009A10F0[v3];
    }

    *v13 = 136315138;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep state %s", v13, 0xCu);
  }

  if (__p)
  {
    v8[0] = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v10 = *buf;
    operator delete(*buf);
  }

  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

void sub_100261634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100261668(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

id sub_1002616A8(uint64_t a1)
{
  v10[0] = @"LogCollectionType";
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"LogCollectionReason";
  v3 = [NSString alloc];
  v4 = *(a1 + 32);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  v5 = [v3 initWithCString:v4 encoding:4];
  v11[1] = v5;
  v10[2] = @"Result";
  v6 = [NSNumber numberWithInt:*(a1 + 44)];
  v11[2] = v6;
  v10[3] = @"PromotedToFatal";
  v7 = [NSNumber numberWithInt:*(a1 + 48)];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

uint64_t sub_100261834(uint64_t a1, uint64_t a2, std::string::size_type a3)
{
  v6 = qword_1009F2630;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10046BD18(a2, &__p);
    v7 = v20 >= 0 ? &__p : __p;
    v8 = *(a3 + 23) >= 0 ? a3 : *a3;
    *buf = 136315394;
    v27 = v7;
    v28 = 2080;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose::triggerLogCollection: type: %s, reason: %s", buf, 0x16u);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  v9 = sub_10025DC74(a1);
  v11 = v10;
  v12 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    LODWORD(__p) = 134217984;
    *(&__p + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Last known Rose MAC Timestamp: %llu", &__p, 0xCu);
  }

  if (sub_100478A14())
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v14 = sub_10025BB8C(a1, a2, a3);
    }

    else
    {
      *&__p = 0;
      *(&__p + 1) = &__p;
      v20 = 0x4812000000;
      v21 = sub_100261B28;
      v22 = sub_100261B44;
      v23 = &unk_1009499EA;
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v24, *a3, *(a3 + 8));
      }

      else
      {
        v24 = *a3;
        v25 = *(a3 + 16);
      }

      v15 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100261B58;
      block[3] = &unk_1009A0A80;
      v18 = a2;
      block[4] = &__p;
      block[5] = a1;
      dispatch_async(v15, block);
      _Block_object_dispose(&__p, 8);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24);
      }

      v14 = 1;
    }

    if (!sub_10025D908(a1) && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B384C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3818();
    }

    return 0;
  }

  return v14;
}

__n128 sub_100261B28(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_100261B44(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100261B58(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (v2 + 1240);
  v4 = atomic_load((v2 + 1240));
  if (v4 == 4 || (v5 = atomic_load(v3), v5 == 8) || (v6 = atomic_load(v3), v6 == 11))
  {
    if ((sub_10025BB8C(v2, *(a1 + 48), *(*(a1 + 32) + 8) + 48) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B38FC();
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B3880(v3);
  }
}

CFDataRef sub_100261C08(uint64_t a1)
{
  if (sub_100478A14())
  {
    v2 = (a1 + 1240);
    v3 = atomic_load((a1 + 1240));
    if (v3 == 4 || (v4 = atomic_load(v2), v4 == 8))
    {
      result = sub_100478A28(a1 + 40);
      if (result)
      {
        return result;
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B39E0();
      }
    }

    else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3964(v2);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B3930();
  }

  return 0;
}

uint64_t sub_100261CCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  v6 = 1;
  return (*(v1 + 16))(v1, v2, &v4);
}

id sub_100261D1C(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: _startReceivingHIDEvents", v4, 2u);
  }

  return sub_10041C1B8(a1 + 1248);
}

uint64_t sub_100261D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 40);
  v8 = *(a1 + 112);
  v21 = *(a1 + 128);
  v20 = v8;
  v9 = *(a1 + 80);
  v19 = *(a1 + 96);
  v18 = v9;
  *&v24[11] = *(a1 + 187);
  v10 = *(a1 + 160);
  *v24 = *(a1 + 176);
  v11 = *(a1 + 144);
  v23 = v10;
  v22 = v11;
  v12 = *(a1 + 64);
  v16 = *(a1 + 48);
  v13 = *(a1 + 32);
  v17 = v12;
  return (*(*(v13 + 1280) + 16))(*(v13 + 1280), &v15, a3, a4, a5, a6, a7, a8);
}

const char *sub_100261E38(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xA)
  {
    return "HostStartup";
  }

  else
  {
    return off_1009A1108[a2 - 1];
  }
}

void sub_100261E60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = qword_1009F2630;
    v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v7 = atomic_load((a1 + 1240));
      *buf = 136315394;
      *&buf[4] = sub_10025911C(v6, v7);
      *&buf[12] = 2080;
      *&buf[14] = sub_100261E38(*&buf[4], a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose::setStateFromUnknownToHost ignoring unexpected event while in state: %s, event: %s", buf, 0x16u);
    }

    return;
  }

  sub_100261D1C(a1);
  if (!sub_10025D228(a1))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3A14();
    }

    abort_report_np();
    goto LABEL_99;
  }

  if (sub_10025D750(a1))
  {
    v49 = 0;
    v9 = sub_10047A41C(a1 + 40, &v49);
    if (v49)
    {
      v17 = v9;
    }

    else
    {
      v17 = 0;
    }

    if ((v17 & 1) == 0)
    {
      v18 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Rose powered off or unable to read the power state. Powering it on", buf, 2u);
      }

      if ((sub_10047A320(a1 + 40, 1, v19, v20, v21, v22, v23, v24) & 1) == 0)
      {
        sub_100260B50(a1, 1, 0);
        return;
      }
    }

    v25 = sub_100478A20(a1 + 40, v10, v11, v12, v13, v14, v15, v16);
    v26 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      if ((v25 - 1) > 3)
      {
        v27 = "SecureROM";
      }

      else
      {
        v27 = off_1009A1178[v25 - 1];
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PRRose: Firmware State: %s", buf, 0xCu);
    }

    if (v25 != 1)
    {
      operator new();
    }

    v29 = sub_1000054A8();
    if (sub_100460A50(v29))
    {
      v30 = sub_100261448(a1);
      if (v30 <= 1)
      {
        if (v30 == 1)
        {
          v32 = qword_1009F2630;
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "PRRose: not in deep sleep, proceeding", buf, 2u);
          }
        }

        else if (!v30)
        {
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3C14();
          }

          goto LABEL_98;
        }
      }

      else if (v30 == 2)
      {
        v33 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "PRRose: requesting deep sleep exit before proceeding", buf, 2u);
        }

        if ((sub_10025C7F4(a1, 0) & 1) == 0)
        {
          sub_1002601C8(a1);
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3BE0();
          }

          goto LABEL_98;
        }
      }

      else if (v30 == 3)
      {
        v31 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "PRRose: waiting for deep sleep exit to complete before proceeding", buf, 2u);
        }

        if ((sub_100267944(a1, 0) & 1) == 0)
        {
          sub_1002601C8(a1);
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3BE0();
          }

LABEL_98:
          abort_report_np();
LABEL_99:
          __break(1u);
          return;
        }
      }
    }

    atomic_store(2u, (a1 + 1240));
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100267B68;
    v48[3] = &unk_10098AD98;
    v48[4] = a1;
    sub_1002593D8(a1, v48);
    memset(buf, 0, sizeof(buf));
    if (!sub_10041BE14(a1 + 1248, 0xD6u, buf))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B3C48();
      }

      abort_report_np();
      goto LABEL_99;
    }

    v34 = **buf;
    __lk.__m_ = (a1 + 1344);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 1344));
    v35 = atomic_load((a1 + 1456));
    v36 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 67109376;
      *&v50[4] = v34 != 0;
      v51 = 1024;
      v52 = v35 & 1;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "PRRose aopCmdQueueClearAllowedProperty = %d, fAopResetCompleted = %d", v50, 0xEu);
    }

    if (!v34 && (v35 & 1) == 0)
    {
      v37.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 200000000;
      while (1)
      {
        v38 = atomic_load((a1 + 1456));
        if (v38)
        {
          goto LABEL_72;
        }

        if (std::chrono::steady_clock::now().__d_.__rep_ >= v37.__d_.__rep_)
        {
          goto LABEL_71;
        }

        v39.__d_.__rep_ = v37.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v39.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_70:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v37.__d_.__rep_)
        {
LABEL_71:
          v43 = atomic_load((a1 + 1456));
          if (v43)
          {
            goto LABEL_72;
          }

          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3C7C();
          }

          atomic_store(6u, (a1 + 1240));
          sub_100004A08(v50, "PRRose::setStateFromUnknownToHost: failed to clear AOP command queue.");
          v44 = sub_10025BB8C(a1, 0, v50);
          if (v53 < 0)
          {
            operator delete(*v50);
          }

          if ((v44 & 1) == 0)
          {
            if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
            {
              sub_1004B3CB0();
            }

            abort_report_np();
            goto LABEL_99;
          }

          goto LABEL_82;
        }
      }

      std::chrono::steady_clock::now();
      v40.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v40.__d_.__rep_)
      {
        v41 = 0;
        goto LABEL_68;
      }

      if (v40.__d_.__rep_ < 1)
      {
        if (v40.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v41 = 0x8000000000000000;
          goto LABEL_68;
        }
      }

      else if (v40.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_66;
      }

      v41 = 1000 * v40.__d_.__rep_;
LABEL_66:
      if (v41 > (v39.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v42.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
        std::condition_variable::__do_timed_wait((a1 + 1408), &__lk, v42);
        std::chrono::steady_clock::now();
        goto LABEL_70;
      }

LABEL_68:
      v42.__d_.__rep_ = v41 + v39.__d_.__rep_;
      goto LABEL_69;
    }

LABEL_72:
    sub_10025D2FC(a1);
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v46 = *(a3 + 16);
    }

    sub_1002594BC(a1, 2, __p);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_82:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3A48();
    }

    atomic_store(6u, (a1 + 1240));
    sub_100004A08(buf, "PRRose::setStateFromUnknownToHost: failed to reset AOP jobs");
    v28 = sub_10025BB8C(a1, 0, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if ((v28 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B3A7C();
      }

      abort_report_np();
      goto LABEL_99;
    }
  }
}

void sub_100262874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::mutex *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    std::mutex::unlock(a17);
  }

  v38 = *(v36 - 112);
  if (v38)
  {
    *(v36 - 104) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_100262948(uint64_t a1, int a2, __int128 *a3)
{
  if (a2 <= 6)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        atomic_store(2u, (a1 + 1240));
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100267FE4;
        v29[3] = &unk_10098AD98;
        v29[4] = a1;
        sub_1002593D8(a1, v29);
        if (sub_10025FCB0(a1))
        {
          v13 = 2;
        }

        else
        {
          v15 = *(a1 + 1517);
          if (v15 <= 0xC7)
          {
            *(a1 + 1517) = v15 + 1;
            v16 = *(a1 + 1532);
            if (v16 <= 0xC && v15 >= *(a1 + 1516 + v16))
            {
              *(a1 + 1532) = 1;
            }
          }

          v13 = 3;
        }

        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(__p, *a3, *(a3 + 1));
        }

        else
        {
          *__p = *a3;
          v28 = *(a3 + 2);
        }

        sub_1002594BC(a1, v13, __p);
        if ((SHIBYTE(v28) & 0x80000000) == 0)
        {
          return;
        }

        v17 = __p[0];
      }

      else
      {
        if (a2 != 6)
        {
          goto LABEL_45;
        }

        atomic_store(6u, (a1 + 1240));
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100268020;
        v26[3] = &unk_10098AD98;
        v26[4] = a1;
        sub_1002593D8(a1, v26);
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&__dst, *a3, *(a3 + 1));
        }

        else
        {
          __dst = *a3;
          v25 = *(a3 + 2);
        }

        sub_1002594BC(a1, 6, &__dst);
        if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          return;
        }

        v17 = __dst;
      }

      goto LABEL_43;
    }

    v14 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "PRRose, already started, ignoring HostStartup";
LABEL_25:
    v11 = v14;
    v12 = 2;
    goto LABEL_26;
  }

  if (a2 <= 9)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v5 = qword_1009F2630;
        v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          v7 = atomic_load((a1 + 1240));
          *buf = 136315138;
          v31 = sub_10025911C(v6, v7);
          v8 = "PRRose, regulatory,configuration update ignored during %s";
LABEL_16:
          v11 = v5;
          v12 = 12;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v8, buf, v12);
          return;
        }

        return;
      }

LABEL_45:
      v19 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        sub_1004B3CE4();
      }

      v20 = atomic_load((a1 + 1240));
      v21 = sub_10025911C(v19, v20);
      sub_100261E38(v21, a2);
      abort_report_np();
      __break(1u);
      return;
    }

    sub_100257E7C(a1);
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v22, *a3, *(a3 + 1));
    }

    else
    {
      v22 = *a3;
      v23 = *(a3 + 2);
    }

    sub_1002594BC(a1, 1, &v22);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      return;
    }

    v17 = v22;
LABEL_43:
    operator delete(v17);
    return;
  }

  if (a2 == 10)
  {
    v14 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "PRRose, already started, ignoring PowerOn";
    goto LABEL_25;
  }

  if (a2 != 11)
  {
    goto LABEL_45;
  }

  v5 = qword_1009F2630;
  v9 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = atomic_load((a1 + 1240));
    *buf = 136315138;
    v31 = sub_10025911C(v9, v10);
    v8 = "PRRose, LPEM enable event ignored during %s";
    goto LABEL_16;
  }
}

void sub_100262D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_100262D98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 5)
  {
    if (a2 <= 7)
    {
      if (a2 != 6)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B3D68();
        }

        return;
      }

      atomic_store(6u, (a1 + 1240));
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(__dst, *a3, *(a3 + 8));
      }

      else
      {
        *__dst = *a3;
        v162 = *(a3 + 16);
      }

      sub_1002594BC(a1, 6, __dst);
      if (SHIBYTE(v162) < 0)
      {
        operator delete(__dst[0]);
      }

      v160[0] = _NSConcreteStackBlock;
      v160[1] = 3221225472;
      v160[2] = sub_100268304;
      v160[3] = &unk_10098AD98;
      v160[4] = a1;
      v34 = v160;
LABEL_74:
      sub_1002593D8(a1, v34);
      return;
    }

    if (a2 == 8)
    {
      v5 = qword_1009F2630;
      v20 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        return;
      }

      v21 = atomic_load((a1 + 1240));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sub_10025911C(v20, v21);
      v8 = "PRRose, regulatory,configuration update ignored during %s";
      goto LABEL_32;
    }

    if (a2 == 11)
    {
      v5 = qword_1009F2630;
      v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        return;
      }

      v7 = atomic_load((a1 + 1240));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sub_10025911C(v6, v7);
      v8 = "PRRose, LPEM enable event ignored during %s";
LABEL_32:
      v18 = v5;
      v19 = 12;
      goto LABEL_33;
    }

    goto LABEL_269;
  }

  if (!a2)
  {
    v17 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v8 = "PRRose, already started, ignoring HostStartup";
    v18 = v17;
    v19 = 2;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v8, &buf, v19);
    return;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      atomic_store(6u, (a1 + 1240));
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v165 = *(a3 + 16);
      }

      sub_1002594BC(a1, 3, __p);
      if (SHIBYTE(v165) < 0)
      {
        operator delete(__p[0]);
      }

      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_1002682C4;
      v163[3] = &unk_10098AD98;
      v163[4] = a1;
      v34 = v163;
      goto LABEL_74;
    }

LABEL_269:
    v153 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (v153)
    {
      sub_1004B3CE4();
    }

    v154 = atomic_load((a1 + 1240));
    v156 = sub_10025911C(v153, v154);
    sub_100261E38(v156, a2);
    abort_report_np();
    __break(1u);
    return;
  }

  if (sub_100256090())
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 BOOLForKey:@"TestResetChipAbort"];

    if (v10)
    {
      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 integerForKey:@"TestResetChipAbortReason"];

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B41B4();
      }

      if (v12 <= 0xC)
      {
        v13 = a1 + 1516;
        v14 = *(a1 + 1516 + (v12 & 0xF));
        if (v14 <= 0xC7)
        {
          *(v13 + (v12 & 0xF)) = v14 + 1;
          v15 = *(a1 + 1532);
          if (v15 <= 0xC && v14 >= *(v13 + v15))
          {
            *(a1 + 1532) = v12;
          }
        }
      }

      sub_100004A08(v202, "Simulate boot error to test reset chip abort.");
      sub_1002594BC(a1, 3, v202);
      if (v203 < 0)
      {
        v16 = v202[0];
LABEL_268:
        operator delete(v16);
        return;
      }

      return;
    }
  }

  sub_10025CF40(a1);
  atomic_store(3u, (a1 + 1240));
  sub_100004A08(&buf, "shenan");
  sub_10026AF30(&v201, &buf);
  if (SBYTE7(v210) < 0)
  {
    operator delete(buf);
  }

  sub_100475AA0(a1 + 40, &v201, v192);
  v22 = *(a1 + 1312);
  if (v22)
  {
    sub_1002DA260(v22, &v201);
  }

  if (v200)
  {
    v23 = sub_1000054A8();
    if (v200 != 1)
    {
      goto LABEL_272;
    }

    sub_100460188(v23, v192);
    v24 = qword_1009F2630;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if ((v200 & 1) == 0)
      {
        sub_1000195BC();
      }

      sub_100456838(v192);
      if ((SBYTE7(v210) & 0x80u) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      LODWORD(v205) = 136315138;
      *(&v205 + 4) = p_buf;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Hello Response: %s", &v205, 0xCu);
      if (SBYTE7(v210) < 0)
      {
        operator delete(buf);
      }
    }

    if (*(a1 + 1496) == 1)
    {
      v26 = sub_1000054A8();
      if ((sub_100460A68(v26) & 1) == 0)
      {
        v27 = qword_1009F2630;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1004B3DD0();
        }

        *(a1 + 1496) = 0;
        *(a1 + 1457) = 0;
        sub_1001DABA8(*(a1 + 1544), 15000);
      }
    }

    v28 = *(a1 + 1312);
    if (v28)
    {
      if (v200 != 1)
      {
        goto LABEL_272;
      }

      sub_1002DA5B8(v28, v192);
    }

    if (sub_10025DB18(a1))
    {
      if (v200)
      {
        if (v199 == 1)
        {
          sub_10026B028(&buf, &v194);
          if (!v211)
          {
            v29 = qword_1009F2630;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_1004B3E38();
            }
          }

          sub_100019668(&buf);
        }

        v30 = +[NSUserDefaults standardUserDefaults];
        v159 = [v30 objectForKey:@"NBePAeLNA"];

        if (v159 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v31 = [v159 integerValue];
          v32 = v31;
          v157 = v31 >> 8;
          v33 = 1;
        }

        else
        {
          v32 = 0;
          LOBYTE(v157) = 0;
          v33 = 0;
        }

        v40 = +[NSUserDefaults standardUserDefaults];
        v158 = [v40 objectForKey:@"UWBePAeLNA"];

        if (v158 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v41 = [v158 integerValue];
          v42 = v41;
          v43 = v41 >> 8;
          v44 = 1;
        }

        else
        {
          v42 = 0;
          LOBYTE(v43) = 0;
          v44 = 0;
        }

        v45 = sub_1000054A8();
        v46 = sub_1004609DC(v45);
        v47 = sub_1000054A8();
        v48 = v46 & 0x1FFFF;
        if ((sub_100460AB8(v47) & (v33 | ((v46 & 0x1FFFF) == 65541))) == 1)
        {
          v179 = 0;
          *v178 = 0;
          v180 = 0;
          if (v33)
          {
            LOBYTE(buf) = v32;
            LOBYTE(v205) = v157;
            sub_1001FE4D0(v178, &buf);
            sub_1001FE4D0(v178, &v205);
          }

          else
          {
            LOBYTE(buf) = 2;
            sub_1001FE4D0(v178, &buf);
            LOBYTE(buf) = 2;
            sub_1001FE4D0(v178, &buf);
          }

          v50 = qword_1009F2630;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = **v178;
            v52 = *(*v178 + 1);
            LODWORD(buf) = 67109376;
            DWORD1(buf) = v51;
            WORD4(buf) = 1024;
            *(&buf + 10) = v52;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Set NB ePA&eLNA to high gain mode, NB:(0x%02x, 0x%02x)", &buf, 0xEu);
          }

          LOBYTE(buf) = 45;
          *(&buf + 1) = 0;
          v210 = 0uLL;
          sub_100009A48(&buf + 8, *v178, v179, v179 - *v178);
          LOBYTE(v205) = buf;
          v207 = 0;
          *(&v205 + 1) = 0;
          v206 = 0;
          sub_100009A48(&v205 + 8, *(&buf + 1), v210, v210 - *(&buf + 1));
          v186 = 0;
          v185 = 0;
          v187 = 0;
          sub_10026B8B4(&v185, &v205, v208, 1uLL);
          if (*(&v205 + 1))
          {
            v206 = *(&v205 + 1);
            operator delete(*(&v205 + 1));
          }

          v205 = 0uLL;
          v206 = 0;
          sub_10026B35C(&v205, v185, v186, (v186 - v185) >> 5);
          sub_1004775F4(a1 + 40, &v205);
        }

        v49 = qword_1009F2630;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Use default NB ePA&eLNA settings", &buf, 2u);
        }

        v53 = sub_1000054A8();
        v54 = sub_100460A50(v53);
        if (v33)
        {
          if (v48 == 65541)
          {
            v55 = 1;
          }

          else
          {
            v55 = v44;
          }

          if (v54 & v55)
          {
            v186 = 0;
            v185 = 0;
            v187 = 0;
            v183 = 0;
            v182 = 0;
            v184 = 0;
            if (v44)
            {
              LOBYTE(buf) = v32;
              LOBYTE(v205) = v157;
              v178[0] = v42;
              v175[0] = v43;
              sub_1001FE4D0(&v185, &buf);
              sub_1001FE4D0(&v185, &v205);
              sub_1001FE4D0(&v182, v178);
              sub_1001FE4D0(&v182, v175);
              goto LABEL_123;
            }

LABEL_122:
            LOBYTE(buf) = 0;
            sub_1001FE4D0(&v185, &buf);
            LOBYTE(buf) = 2;
            sub_1001FE4D0(&v185, &buf);
            LOBYTE(buf) = 0;
            sub_1001FE4D0(&v182, &buf);
            LOBYTE(buf) = 2;
            sub_1001FE4D0(&v182, &buf);
LABEL_123:
            v57 = qword_1009F2630;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(v185 + 1);
              v59 = *v182;
              v60 = *(v182 + 1);
              *&buf = __PAIR64__(*v185, 67109888);
              WORD4(buf) = 1024;
              *(&buf + 10) = v58;
              HIWORD(buf) = 1024;
              LODWORD(v210) = v59;
              WORD2(v210) = 1024;
              *(&v210 + 6) = v60;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Set NB&UWB eLNA to high gain mode: NB: (0x%02x, 0x%02x), UWB: (0x%02x, 0x%02x)", &buf, 0x1Au);
            }

            LOBYTE(v205) = 45;
            v207 = 0;
            *(&v205 + 1) = 0;
            v206 = 0;
            sub_100009A48(&v205 + 8, v185, v186, v186 - v185);
            v178[0] = 38;
            v181 = 0;
            v179 = 0;
            v180 = 0;
            sub_100009A48(&v179, v182, v183, v183 - v182);
            LOBYTE(buf) = v205;
            *(&buf + 1) = 0;
            v210 = 0uLL;
            sub_100009A48(&buf + 8, *(&v205 + 1), v206, v206 - *(&v205 + 1));
            LOBYTE(v211) = v178[0];
            v213[1] = 0;
            v212 = 0;
            v213[0] = 0;
            sub_100009A48(&v212, v179, v180, v180 - v179);
            v176 = 0;
            *v175 = 0;
            v177 = 0;
            sub_10026B8B4(v175, &buf, &v214, 2uLL);
            v61 = 0;
            while (1)
            {
              v62 = v213[v61 - 1];
              if (v62)
              {
                v213[v61] = v62;
                operator delete(v62);
              }

              v61 -= 4;
              if (v61 == -8)
              {
                buf = 0uLL;
                *&v210 = 0;
                sub_10026B35C(&buf, *v175, v176, (v176 - *v175) >> 5);
                sub_1004775F4(a1 + 40, &buf);
              }
            }
          }
        }

        else
        {
          if (v48 == 65541)
          {
            v56 = v54;
          }

          else
          {
            v56 = 0;
          }

          if (v56 == 1)
          {
            v186 = 0;
            v185 = 0;
            v187 = 0;
            v183 = 0;
            v182 = 0;
            v184 = 0;
            goto LABEL_122;
          }
        }

        v63 = qword_1009F2630;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Use default NB&UWB eLNA settings", &buf, 2u);
        }

        sub_10025F8B4(a1);
        v64 = sub_1000054A8();
        if (sub_100460A50(v64))
        {
          v65 = +[NSUserDefaults standardUserDefaults];
          if (([v65 BOOLForKey:@"disableUWBRxLP"] & 1) == 0)
          {
            v66 = qword_1009F2630;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "enable UWB RX LP", &buf, 2u);
            }

            LOBYTE(buf) = 1;
            v180 = 0;
            *v178 = 0;
            v179 = 0;
            sub_1000069DC(v178, &buf, &buf + 1, 1);
            LOBYTE(buf) = 40;
            *(&buf + 1) = 0;
            v210 = 0uLL;
            sub_100009A48(&buf + 8, *v178, v179, v179 - *v178);
            LOBYTE(v205) = buf;
            v207 = 0;
            *(&v205 + 1) = 0;
            v206 = 0;
            sub_100009A48(&v205 + 8, *(&buf + 1), v210, v210 - *(&buf + 1));
            v186 = 0;
            v185 = 0;
            v187 = 0;
            sub_10026B8B4(&v185, &v205, v208, 1uLL);
            if (*(&v205 + 1))
            {
              v206 = *(&v205 + 1);
              operator delete(*(&v205 + 1));
            }

            v205 = 0uLL;
            v206 = 0;
            sub_10026B35C(&v205, v185, v186, (v186 - v185) >> 5);
            sub_1004775F4(a1 + 40, &v205);
          }
        }

        v67 = sub_1000054A8();
        if (sub_1000149D4(v67))
        {
          v68 = qword_1009F2630;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Enable Host GTB", &buf, 2u);
          }

          LOBYTE(buf) = 1;
          v180 = 0;
          *v178 = 0;
          v179 = 0;
          sub_1000069DC(v178, &buf, &buf + 1, 1);
          LOBYTE(buf) = 51;
          *(&buf + 1) = 0;
          v210 = 0uLL;
          sub_100009A48(&buf + 8, *v178, v179, v179 - *v178);
          LOBYTE(v205) = buf;
          v207 = 0;
          *(&v205 + 1) = 0;
          v206 = 0;
          sub_100009A48(&v205 + 8, *(&buf + 1), v210, v210 - *(&buf + 1));
          v186 = 0;
          v185 = 0;
          v187 = 0;
          sub_10026B8B4(&v185, &v205, v208, 1uLL);
          if (*(&v205 + 1))
          {
            v206 = *(&v205 + 1);
            operator delete(*(&v205 + 1));
          }

          v205 = 0uLL;
          v206 = 0;
          sub_10026B35C(&v205, v185, v186, (v186 - v185) >> 5);
          sub_1004775F4(a1 + 40, &v205);
        }

        if (!sub_10025DDA0())
        {
          LOWORD(buf) = 1;
          v180 = 0;
          *v178 = 0;
          v179 = 0;
          sub_1000069DC(v178, &buf, &buf + 2, 2);
          LOBYTE(buf) = 13;
          *(&buf + 1) = 0;
          v210 = 0uLL;
          sub_100009A48(&buf + 8, *v178, v179, v179 - *v178);
          LOBYTE(v205) = buf;
          v207 = 0;
          *(&v205 + 1) = 0;
          v206 = 0;
          sub_100009A48(&v205 + 8, *(&buf + 1), v210, v210 - *(&buf + 1));
          v186 = 0;
          v185 = 0;
          v187 = 0;
          sub_10026B8B4(&v185, &v205, v208, 1uLL);
          if (*(&v205 + 1))
          {
            v206 = *(&v205 + 1);
            operator delete(*(&v205 + 1));
          }

          v205 = 0uLL;
          v206 = 0;
          sub_10026B35C(&v205, v185, v186, (v186 - v185) >> 5);
          sub_1004775F4(a1 + 40, &v205);
        }

        keyExistsAndHasValidFormat[0] = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableRoseFirmwareSleep", @"com.apple.nearbyd", keyExistsAndHasValidFormat);
        v70 = keyExistsAndHasValidFormat[0];
        v71 = qword_1009F2630;
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        if (!v70 || AppBooleanValue)
        {
          if (v72)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Enabling FW sleep", &buf, 2u);
          }

          LOWORD(v205) = 257;
          BYTE2(v205) = 0;
          *(&v205 + 1) = 3;
          if (sub_10047A0D8(a1 + 40, &v205))
          {
            sub_10025D3CC(a1);
            LOBYTE(v185) = 1;
            buf = 0uLL;
            *&v210 = 0;
            sub_1000069DC(&buf, &v185, &v185 + 1, 1);
            v73 = sub_10041BAC8(a1 + 1248, 0xD9u, &buf);
            v74 = qword_1009F2630;
            v75 = v74;
            if (v73)
            {
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *v178 = 0;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Wrote the OTPWorkaroundCompleted property", v178, 2u);
              }
            }

            else if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_1004B3FA4();
            }

            if (buf)
            {
              *(&buf + 1) = buf;
              operator delete(buf);
            }

            goto LABEL_183;
          }

          v76 = qword_1009F2630;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3F70();
          }

          v77 = *(a1 + 1521);
          if (v77 <= 0xC7)
          {
            *(a1 + 1521) = v77 + 1;
            v78 = *(a1 + 1532);
            if (v78 <= 0xC && v77 >= *(a1 + 1516 + v78))
            {
              *(a1 + 1532) = 5;
            }
          }

          sub_100004A08(v171, "Enabling sleep failed");
          sub_1002594BC(a1, 3, v171);
          if (v172 < 0)
          {
            v79 = v171[0];
LABEL_162:
            operator delete(v79);
          }
        }

        else
        {
          if (v72)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "enableRoseFirmwareSleep defaults value set to false. Disabling FW sleep", &buf, 2u);
          }

          LOWORD(buf) = 256;
          BYTE2(buf) = 0;
          *(&buf + 1) = 3;
          if (sub_10047A0D8(a1 + 40, &buf))
          {
            sub_10025D4A0(a1);
LABEL_183:
            v83 = +[NSUserDefaults standardUserDefaults];
            v84 = [v83 BOOLForKey:@"DisablePowerTable"];
            if (((sub_10045ED24() == 1) & v84) == 1)
            {
              LOBYTE(buf) = 0;
              v206 = 0;
              v205 = 0uLL;
              sub_1000069DC(&v205, &buf, &buf + 1, 1);
              LOBYTE(buf) = 17;
              *(&buf + 1) = 0;
              v210 = 0uLL;
              sub_100009A48(&buf + 8, v205, *(&v205 + 1), *(&v205 + 1) - v205);
              v186 = 0;
              v185 = 0;
              v187 = 0;
              sub_10026B8B4(&v185, &buf, &v211, 1uLL);
              v179 = 0;
              *v178 = 0;
              v180 = 0;
              sub_10026B35C(v178, v185, v186, (v186 - v185) >> 5);
              v182 = &v185;
              sub_100189A94(&v182);
              if (*(&buf + 1))
              {
                *&v210 = *(&buf + 1);
                operator delete(*(&buf + 1));
              }

              sub_10025EAE8(a1, v178);
            }

            v85 = +[NSUserDefaults standardUserDefaults];
            v86 = [v85 objectForKey:@"DisableSleepBetweenRangingCycles"];
            v87 = v86 == 0;

            if (v87)
            {
              v90 = 1;
            }

            else
            {
              v88 = [v85 BOOLForKey:@"DisableSleepBetweenRangingCycles"];
              v89 = qword_1009F2630;
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "OVERRIDE: UWB sleep between ranging settings", &buf, 2u);
              }

              v90 = v88 ^ 1;
            }

            v91 = qword_1009F2630;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
            {
              v92 = "NO";
              if (v90)
              {
                v92 = "YES";
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = v92;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Platform supports UWB sleep between ranging cycles. Enable? %s", &buf, 0xCu);
            }

            if (!v90)
            {
              goto LABEL_210;
            }

            sub_10026AD28(&buf, 5, 2);
            LOBYTE(v205) = buf;
            v207 = 0;
            *(&v205 + 1) = 0;
            v206 = 0;
            sub_100009A48(&v205 + 8, *(&buf + 1), v210, v210 - *(&buf + 1));
            v179 = 0;
            *v178 = 0;
            v180 = 0;
            sub_10026B8B4(v178, &v205, v208, 1uLL);
            if (*(&v205 + 1))
            {
              v206 = *(&v205 + 1);
              operator delete(*(&v205 + 1));
            }

            v186 = 0;
            v185 = 0;
            v187 = 0;
            sub_10026B35C(&v185, *v178, v179, (v179 - *v178) >> 5);
            *&v205 = off_1009A0EE8;
            v207 = &v205;
            v93 = sub_100477780(a1 + 40, &v185, &v205);
            sub_10026BCF8(&v205);
            *&v205 = &v185;
            sub_100189A94(&v205);
            v94 = qword_1009F2630;
            v95 = v94;
            if (v93)
            {
              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v205) = 0;
                _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Successfully enabled UWB sleep between ranging cycles", &v205, 2u);
              }
            }

            else
            {
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                sub_1004B4040();
              }

              sub_100004A08(v169, "Failed to enable UWB sleep between ranging cycles");
              sub_1002594BC(a1, 3, v169);
              if (v170 < 0)
              {
                operator delete(v169[0]);
              }
            }

            *&v205 = v178;
            sub_100189A94(&v205);
            if (*(&buf + 1))
            {
              *&v210 = *(&buf + 1);
              operator delete(*(&buf + 1));
            }

            if (v93)
            {
LABEL_210:
              v168 = v90;
              v186 = 0;
              v185 = 0;
              v187 = 0;
              sub_1000069DC(&v185, &v168, v169, 1);
              if (!sub_10041BAC8(a1 + 1248, 0xDAu, &v185))
              {
                v96 = qword_1009F2630;
                if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
                {
                  sub_1004B4074();
                }
              }

              if (*(a1 + 1336))
              {
LABEL_219:
                v100 = atomic_load((a1 + 1338));
                if (v100)
                {
                  v101 = qword_1009F2630;
                  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Skip parsing cal files because it was done previously", &buf, 2u);
                  }
                }

                else
                {
                  atomic_store(1u, (a1 + 1338));
                  sub_10032B340(&buf, 0);
                  sub_100477FAC(a1 + 40, 1, v102, v103, v104, v105, v106, v107, &v205);
                  sub_10032B388(&buf, &v205, v108, v109, v110, v111, v112, v113);
                  v114 = qword_1009F2630;
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    *v178 = 0;
                    _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "Parsing rMCL file finished", v178, 2u);
                  }

                  if (v205)
                  {
                    *(&v205 + 1) = v205;
                    operator delete(v205);
                  }

                  sub_100477FAC(a1 + 40, 2, v115, v116, v117, v118, v119, v120, &v205);
                  sub_10032B388(&buf, &v205, v121, v122, v123, v124, v125, v126);
                  v127 = qword_1009F2630;
                  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                  {
                    *v178 = 0;
                    _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_DEFAULT, "Parsing rSCL file finished", v178, 2u);
                  }

                  if (v205)
                  {
                    *(&v205 + 1) = v205;
                    operator delete(v205);
                  }

                  v128 = *(a1 + 1312);
                  if (v128)
                  {
                    sub_1002E0AF0(v128, v215);
                  }

                  v129 = sub_1000054A8();
                  sub_1004604EC(v129, &buf, v130, v131, v132, v133, v134, v135, v155);
                  sub_100268128(&buf);
                }

                v136 = qword_1009F2630;
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                {
                  v137 = sub_1000054A8();
                  v138 = sub_1000149D4(v137);
                  v139 = sub_1000054A8();
                  v140 = sub_1000149D4(v139);
                  LODWORD(buf) = 67109376;
                  DWORD1(buf) = v138;
                  WORD4(buf) = 1024;
                  *(&buf + 10) = !v140;
                  _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Host and UWB share clock: %d. Enabling UWB time sync with host: %d", &buf, 0xEu);
                }

                v141 = qword_1009F2630;
                if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                {
                  v142 = sub_1000054A8();
                  v143 = sub_100460AB0(v142);
                  v144 = sub_1000054A8();
                  v145 = sub_100460AB0(v144);
                  LODWORD(buf) = 67109376;
                  DWORD1(buf) = v143;
                  WORD4(buf) = 1024;
                  *(&buf + 10) = !v145;
                  _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Host and BT share clock: %d. Enabling UWB time sync with BT: %d", &buf, 0xEu);
                }

                v146 = sub_1000054A8();
                v147 = sub_1000149D4(v146);
                v148 = sub_1000054A8();
                if (sub_100460AB0(v148))
                {
                  v149 = !v147;
                }

                else
                {
                  v149 = !v147 | 2;
                }

                sub_10026AD28(v178, 26, v149);
                LOBYTE(buf) = v178[0];
                *(&buf + 1) = 0;
                v210 = 0uLL;
                sub_100009A48(&buf + 8, v179, v180, v180 - v179);
                v183 = 0;
                v182 = 0;
                v184 = 0;
                sub_10026B8B4(&v182, &buf, &v211, 1uLL);
                if (*(&buf + 1))
                {
                  *&v210 = *(&buf + 1);
                  operator delete(*(&buf + 1));
                }

                v150 = qword_1009F2630;
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 67109120;
                  DWORD1(buf) = v149;
                  _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "PRRose:enabling timesync on the FW with parameters: %d", &buf, 8u);
                }

                buf = 0uLL;
                *&v210 = 0;
                sub_10026B35C(&buf, v182, v183, (v183 - v182) >> 5);
                sub_1004775F4(a1 + 40, &buf);
              }

              LOWORD(buf) = 264;
              v97 = sub_100477BB8(a1 + 40, &buf);
              v98 = qword_1009F2630;
              v99 = v98;
              if (v97)
              {
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v205) = 0;
                  _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Successfully disabled firmware logging", &v205, 2u);
                }

                goto LABEL_219;
              }

              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                sub_1004B40B0();
              }

              v151 = *(a1 + 1522);
              if (v151 <= 0xC7)
              {
                *(a1 + 1522) = v151 + 1;
                v152 = *(a1 + 1532);
                if (v152 <= 0xC && v151 >= *(a1 + 1516 + v152))
                {
                  *(a1 + 1532) = 6;
                }
              }

              sub_100004A08(v166, "Failed to disable firmware logging");
              sub_1002594BC(a1, 3, v166);
              if (v167 < 0)
              {
                operator delete(v166[0]);
              }

              if (v185)
              {
                v186 = v185;
                operator delete(v185);
              }
            }

            goto LABEL_257;
          }

          v80 = qword_1009F2630;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3FD8();
          }

          v81 = *(a1 + 1521);
          if (v81 <= 0xC7)
          {
            *(a1 + 1521) = v81 + 1;
            v82 = *(a1 + 1532);
            if (v82 <= 0xC && v81 >= *(a1 + 1516 + v82))
            {
              *(a1 + 1532) = 5;
            }
          }

          sub_100004A08(v173, "Disabling sleep failed");
          sub_1002594BC(a1, 3, v173);
          if (v174 < 0)
          {
            v79 = v173[0];
            goto LABEL_162;
          }
        }

LABEL_257:

        goto LABEL_258;
      }

LABEL_272:
      sub_1000195BC();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3E04();
    }

    AnalyticsSendEventLazy();
    v38 = *(a1 + 1519);
    if (v38 <= 0xC7)
    {
      *(a1 + 1519) = v38 + 1;
      v39 = *(a1 + 1532);
      if (v39 <= 0xC && v38 >= *(a1 + 1516 + v39))
      {
        *(a1 + 1532) = 3;
      }
    }

    sub_100004A08(v188, "Resetting chip since cal data has not been pushed");
    sub_1002594BC(a1, 3, v188);
    if (v189 < 0)
    {
      v37 = v188[0];
      goto LABEL_92;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3D9C();
    }

    v35 = *(a1 + 1518);
    if (v35 <= 0xC7)
    {
      *(a1 + 1518) = v35 + 1;
      v36 = *(a1 + 1532);
      if (v36 <= 0xC && v35 >= *(a1 + 1516 + v36))
      {
        *(a1 + 1532) = 2;
      }
    }

    sub_100004A08(v190, "Failed to send hello.");
    sub_1002594BC(a1, 3, v190);
    if (v191 < 0)
    {
      v37 = v190[0];
LABEL_92:
      operator delete(v37);
    }
  }

LABEL_258:
  if (v200 == 1)
  {
    if (v199 == 1)
    {
      if (v198 < 0)
      {
        operator delete(v197);
      }

      if (v196 < 0)
      {
        operator delete(v195);
      }
    }

    if (v193 < 0)
    {
      operator delete(v192[0]);
    }
  }

  if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = v201.__r_.__value_.__r.__words[0];
    goto LABEL_268;
  }
}

void sub_100265338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_10025C150(&STACK[0x380]);
  sub_10025C1B0(&STACK[0x3F0]);
  STACK[0x3F0] = &STACK[0x258];
  sub_100189A94(&STACK[0x3F0]);
  v38 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v38;
    operator delete(v38);
  }

  v39 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v39;
    operator delete(v39);
  }

  sub_100017E34(&STACK[0x2D0]);
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  _Unwind_Resume(a1);
}

void sub_1002659F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 6)
  {
    if (a2 <= 8)
    {
      if (a2 != 7)
      {

        sub_10025A118(a1);
        return;
      }

      goto LABEL_20;
    }

    if (a2 == 9)
    {
      if (*(a1 + 1457) == 1)
      {

        sub_100268500(a1);
      }

      else
      {

        sub_100259C6C(a1);
      }

      return;
    }

    if (a2 != 10)
    {
      if (a2 != 11)
      {
        goto LABEL_51;
      }

      v11 = qword_1009F2630;
      v12 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        return;
      }

      v13 = atomic_load((a1 + 1240));
      *buf = 136315138;
      v35 = sub_10025911C(v12, v13);
      v14 = "PRRose, LPEM enable event ignored during %s";
      v15 = v11;
      v16 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      return;
    }

    v18 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "PRRose, already started, ignoring";
LABEL_29:
    v15 = v18;
    v16 = 2;
    goto LABEL_30;
  }

  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 == 3)
      {
        goto LABEL_20;
      }

LABEL_51:
      v21 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v21)
      {
        sub_1004B3CE4();
      }

      v22 = atomic_load((a1 + 1240));
      v23 = sub_10025911C(v21, v22);
      sub_100261E38(v23, a2);
      abort_report_np();
      __break(1u);
      return;
    }

    v18 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v14 = "PRRose, already started, ignoring HostStartup";
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    atomic_store(4u, (a1 + 1240));
    sub_100005F4C((a1 + 1328), 0, a3, a4, a5, a6, a7, a8);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100268344;
    v33[3] = &unk_10098AD98;
    v33[4] = a1;
    sub_1002593D8(a1, v33);
    sub_10025D570(a1);
    dispatch_assert_queue_V2(*(a1 + 8));
    if (*(a1 + 1552) == 1)
    {
      sub_1002681D4(a1);
      return;
    }

    dispatch_assert_queue_V2(*(a1 + 8));
    if (*(a1 + 1552) == 2)
    {
      v19 = dispatch_time(0, 500000000);
      v20 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_100268394;
      block[3] = &unk_1009A08C8;
      block[4] = a1;
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v31, *a3, *(a3 + 8));
      }

      else
      {
        v31 = *a3;
        v32 = *(a3 + 16);
      }

      dispatch_after(v19, v20, block);
      if (SHIBYTE(v32) < 0)
      {
        v17 = v31;
        goto LABEL_46;
      }
    }

    return;
  }

  if (a2 != 5)
  {
    atomic_store(6u, (a1 + 1240));
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1002684C0;
    v26[3] = &unk_10098AD98;
    v26[4] = a1;
    sub_1002593D8(a1, v26);
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v25 = *(a3 + 16);
    }

    sub_1002594BC(a1, 6, __p);
    if (SHIBYTE(v25) < 0)
    {
      v17 = __p[0];
      goto LABEL_46;
    }

    return;
  }

LABEL_20:
  atomic_store(6u, (a1 + 1240));
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100268480;
  v29[3] = &unk_10098AD98;
  v29[4] = a1;
  sub_1002593D8(a1, v29);
  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(&__dst, *a3, *(a3 + 8));
  }

  else
  {
    __dst = *a3;
    v28 = *(a3 + 16);
  }

  sub_1002594BC(a1, a2, &__dst);
  if (SHIBYTE(v28) < 0)
  {
    v17 = __dst;
LABEL_46:
    operator delete(v17);
  }
}

void sub_100265F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100265FA0(uint64_t a1, int a2)
{
  if (a2 <= 7)
  {
    if (a2)
    {
      if (a2 == 6)
      {
        operator new();
      }

      if (a2 == 7)
      {
        operator new();
      }

      goto LABEL_30;
    }

    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose, already started, ignoring HostStartup", buf, 2u);
    }
  }

  else
  {
    if (a2 <= 9)
    {
      if (a2 == 8)
      {

        sub_10025A118(a1);
      }

      else if (*(a1 + 1457) == 1)
      {

        sub_100268500(a1);
      }

      else
      {

        sub_100259C6C(a1);
      }

      return;
    }

    if (a2 != 10)
    {
      if (a2 == 11)
      {

        sub_100268718(a1);
        return;
      }

LABEL_30:
      v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        sub_1004B3CE4();
      }

      v7 = atomic_load((a1 + 1240));
      v9 = sub_10025911C(v6, v7);
      sub_100261E38(v9, a2);
      v8 = abort_report_np();
      if (v11 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(v8);
    }

    v5 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose already Ready", buf, 2u);
    }

    sub_1002681D4(a1);
  }
}

void sub_1002664B4(uint64_t a1, int a2, __int128 *a3)
{
  if (a2 <= 6)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
LABEL_58:
          v23 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
          if (v23)
          {
            sub_1004B3CE4();
          }

          v24 = atomic_load((a1 + 1240));
          v25 = sub_10025911C(v23, v24);
          sub_100261E38(v25, a2);
          abort_report_np();
LABEL_64:
          __break(1u);
          return;
        }

        v14 = qword_1009F2630;
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v9 = "PRRose, in error state, but getting StartBoot dispatch block that is executed after the state changed to error due to firmware issues";
      }

      else
      {
        v14 = qword_1009F2630;
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v9 = "PRRose, already started, ignoring HostStartup";
      }

LABEL_46:
      v12 = v14;
      v13 = 2;
      goto LABEL_47;
    }

    switch(a2)
    {
      case 3:
        v22 = *(a1 + 8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1002689E4;
        block[3] = &unk_1009A0B08;
        block[4] = a1;
        v33 = 3;
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&v31, *a3, *(a3 + 1));
        }

        else
        {
          v31 = *a3;
          v32 = *(a3 + 2);
        }

        dispatch_async(v22, block);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31);
        }

        break;
      case 6:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B43A0();
        }

        atomic_store(7u, (a1 + 1240));
        break;
      case 5:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B4338();
        }

        abort_report_np();
        goto LABEL_64;
      default:
        goto LABEL_58;
    }
  }

  else
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v14 = qword_1009F2630;
          if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v9 = "PRRose, in error state, Power off delayed";
          break;
        case 10:
          v14 = qword_1009F2630;
          if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v9 = "PRRose, already started";
          break;
        case 11:
          v6 = qword_1009F2630;
          v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
          if (!v7)
          {
            return;
          }

          v8 = atomic_load((a1 + 1240));
          *buf = 136315138;
          *&buf[4] = sub_10025911C(v7, v8);
          v9 = "PRRose, LPEM enable event ignored during %s";
LABEL_17:
          v12 = v6;
          v13 = 12;
LABEL_47:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v9, buf, v13);
          return;
        default:
          goto LABEL_58;
      }

      goto LABEL_46;
    }

    if (a2 != 7)
    {
      v6 = qword_1009F2630;
      v10 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        return;
      }

      v11 = atomic_load((a1 + 1240));
      *buf = 136315138;
      *&buf[4] = sub_10025911C(v10, v11);
      v9 = "PRRose, regulatory,configuration update ignored during %s";
      goto LABEL_17;
    }

    sub_100193120(buf);
    sub_10000EA44(&v35, "ChipReset", 9);
    v15 = *(a3 + 23);
    if (v15 < 0)
    {
      v15 = *(a3 + 1);
    }

    if (v15)
    {
      v16 = sub_10000EA44(&v35, ": ", 2);
      v17 = *(a3 + 23);
      if (v17 >= 0)
      {
        v18 = a3;
      }

      else
      {
        v18 = *a3;
      }

      if (v17 >= 0)
      {
        v19 = *(a3 + 23);
      }

      else
      {
        v19 = *(a3 + 1);
      }

      sub_10000EA44(v16, v18, v19);
    }

    std::stringbuf::str();
    v20 = sub_10025BB8C(a1, 3, &__p);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if ((v20 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B436C();
      }

      abort_report_np();
      goto LABEL_64;
    }

    atomic_store(1u, (a1 + 1240));
    sub_100004A08(v26, "");
    sub_1002594BC(a1, 1, v26);
    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    v35 = v21;
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    std::locale::~locale(v37);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_100266A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a33);
  _Unwind_Resume(a1);
}

void sub_100266AC4(uint64_t a1, int a2)
{
  v3 = qword_1009F2630;
  if (a2 <= 6)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B43D4();
        }

        return;
      }

      if (a2 == 6)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B443C();
        }

        return;
      }
    }

    else
    {
      if (!a2)
      {
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, already started, ignoring HostStartup";
        goto LABEL_31;
      }

      if (a2 == 1)
      {
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, in error handling state, but getting StartBoot dispatch block that is executed after the state changed to error due to firmware issues";
        goto LABEL_31;
      }
    }

LABEL_34:
    v11 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1004B3CE4();
    }

    v12 = atomic_load((a1 + 1240));
    v13 = sub_10025911C(v11, v12);
    sub_100261E38(v13, a2);
    abort_report_np();
    __break(1u);
    return;
  }

  if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, in error state, Power off delayed";
        break;
      case 10:
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, already started";
        break;
      case 11:
        v4 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (!v4)
        {
          return;
        }

        v5 = atomic_load((a1 + 1240));
        *buf = 136315138;
        v16 = sub_10025911C(v4, v5);
        v6 = "PRRose, LPEM enable event ignored during %s";
LABEL_20:
        v9 = v3;
        v10 = 12;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v6, buf, v10);
        return;
      default:
        goto LABEL_34;
    }

LABEL_31:
    v9 = v3;
    v10 = 2;
    goto LABEL_32;
  }

  if (a2 != 7)
  {
    v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      return;
    }

    v8 = atomic_load((a1 + 1240));
    *buf = 136315138;
    v16 = sub_10025911C(v7, v8);
    v6 = "PRRose, regulatory,configuration update ignored during %s";
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4408();
  }
}

void sub_100266D60(uint64_t a1, int a2)
{
  if (a2 <= 8)
  {
    if (a2 == 6)
    {
      operator new();
    }

    if (a2 == 7)
    {
      operator new();
    }

LABEL_19:
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4470();
    }

    return;
  }

  switch(a2)
  {
    case 9:
      v4 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose power down Rose after regulatory disallowment", buf, 2u);
      }

      sub_100259C6C(a1);
      break;
    case 10:
      v5 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose already started", buf, 2u);
      }

      sub_1002681D4(a1);
      break;
    case 11:
      if (*(a1 + 1244) == 3)
      {
        v3 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose: enabling LPEM while in Airplane Mode", buf, 2u);
        }

        sub_100268718(a1);
      }

      return;
    default:
      goto LABEL_19;
  }
}

void sub_1002671F4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose setStateFromPowerOff", buf, 2u);
  }

  v7 = qword_1009F2630;
  if (a2 == 8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B44F4(a1);
    }
  }

  else if (a2 == 10)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRRose Powering On", buf, 2u);
    }

    if ((sub_10047A320(a1 + 40, 1, v8, v9, v10, v11, v12, v13) & 1) == 0)
    {
      v14 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        sub_1004B457C(a1);
      }

      v15 = atomic_load((a1 + 1240));
      sub_10025911C(v14, v15);
      v16 = abort_report_np();
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      _Unwind_Resume(v16);
    }

    atomic_store(0, (a1 + 1240));
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v18 = *(a3 + 16);
    }

    sub_1002594BC(a1, 0, __p);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
  {
    sub_1004B4604();
  }
}

void sub_1002673BC(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose setStateFromDeepSleep", buf, 2u);
  }

  if (a2 <= 7)
  {
    if (a2 == 6)
    {
      operator new();
    }

    if (a2 == 7)
    {
      operator new();
    }

LABEL_24:
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B4604();
    }

    return;
  }

  switch(a2)
  {
    case 8:
      v6 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose reconfigure Rose from deep sleep", buf, 2u);
      }

      sub_100259A44(a1);
      sub_10025A118(a1);
      v7 = atomic_load((a1 + 1240));
      v8 = qword_1009F2630;
      v9 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (v7 == 8)
      {
        if (v9)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRose UWB not allowed. Power off rose", buf, 2u);
        }

        sub_100259C6C(a1);
      }

      else
      {
        if (v9)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRose Reconfigured. Reenter deep sleep", buf, 2u);
        }

        sub_100268D18(a1);
      }

      break;
    case 10:
      v10 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRRose Exiting Deep Sleep", buf, 2u);
      }

      sub_10025C7F4(a1, 1);
      break;
    case 11:
      v5 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose: exiting Deep Sleep before entering LPEM", buf, 2u);
      }

      if (sub_10025C7F4(a1, 1))
      {
        sub_100268718(a1);
      }

      return;
    default:
      goto LABEL_24;
  }
}

const char *sub_10026791C(uint64_t a1, int a2)
{
  if ((a2 - 1) > 3)
  {
    return "SecureROM";
  }

  else
  {
    return off_1009A1178[a2 - 1];
  }
}

uint64_t sub_100267944(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = (a1 + 1464);
  if (!*(a1 + 1472))
  {
    v4 = &unk_100567FD0;
  }

  v5 = *v4;
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * v5;
  while (1)
  {
    __p[0] = 10000000;
    std::this_thread::sleep_for (__p);
    v7 = sub_100261448(v3);
    if (v7 != 3)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
    {
      if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      }

LABEL_30:
      sub_1004B4730();
      if (a2)
      {
LABEL_8:
        sub_100004A08(__p, "Deep sleep exit timeout");
        sub_10025BB8C(v3, 0, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        AnalyticsSendEventLazy();
      }

LABEL_11:
      v8 = 0;
      return v8 & 1;
    }
  }

  if (v7 != 1)
  {
    if (v7)
    {
      if (v7 != 2)
      {
        return v8 & 1;
      }
    }

    else
    {
      sub_1004B4708();
    }

    v3 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4680();
    }

    abort_report_np();
    goto LABEL_30;
  }

  v9 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep exit completed successfully", __p, 2u);
  }

  if (a2)
  {
    atomic_store(4u, (v3 + 1240));
    dispatch_assert_queue_V2(*(v3 + 8));
    if (*(v3 + 1552) == 1)
    {
      sub_1002681D4(v3);
    }

    else
    {
      dispatch_assert_queue_V2(*(v3 + 8));
      if (*(v3 + 1552) == 2)
      {
        sub_100259C6C(v3);
      }
    }

    AnalyticsSendEventLazy();
  }

  v8 = 1;
  return v8 & 1;
}

void sub_100267B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267B68(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 0;
  return (*(v1 + 16))();
}

void sub_100267BA4(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = atomic_load((a1 + 1240));
    v7 = sub_10025911C(v5, v6);
    if ((a2 - 1) > 2)
    {
      v8 = "DoNothing";
    }

    else
    {
      v8 = off_1009A1238[a2 - 1];
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: errorHandlingRoutine. Current state: [%s], Next Step: [%s]", buf, 0x16u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  switch(a2)
  {
    case 1:
      if (sub_1002601C8(a1))
      {
        atomic_store(1u, (a1 + 1240));
        sub_100004A08(v22, "");
        sub_1002594BC(a1, 1, v22);
        if (v23 < 0)
        {
          v18 = v22[0];
LABEL_29:
          operator delete(v18);
        }
      }

      else
      {
        v32 = 0;
        v31 = 0;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B4764();
        }

        v19 = sub_10047A520(a1 + 40, &v32 + 4, &v31, &v32);
        v20 = qword_1009F2630;
        v21 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          if (v21)
          {
            *buf = 67109632;
            *&buf[4] = HIDWORD(v32);
            *&buf[8] = 1024;
            *&buf[10] = v31;
            LOWORD(v37) = 1024;
            *(&v37 + 2) = v32;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "RoseController Debug Info: PowerState: %d, ServiceState: %d, SecureROMState: %d", buf, 0x14u);
          }

          v24 = _NSConcreteStackBlock;
          v25 = 3221225472;
          v26 = sub_10026A148;
          v27 = &unk_10098B698;
          v28 = HIDWORD(v32);
          v29 = v31;
          v30 = v32;
          AnalyticsSendEventLazy();
        }

        else if (v21)
        {
          sub_1004B4798();
        }

        sub_100257F90(a1, 1);
        atomic_store(9u, (a1 + 1240));
      }

      break;
    case 3:
      atomic_store(7u, (a1 + 1240));
      sub_100004A08(buf, "PRRose::errorHandlingRoutine: current state: ErrorHandling, next step: PromoteToFatal");
      v17 = sub_10025BB8C(a1, 0, buf);
      if (v38 < 0)
      {
        operator delete(*buf);
      }

      if ((v17 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B4800();
        }

        abort_report_np();
LABEL_37:
        __break(1u);
      }

      break;
    case 2:
      atomic_store(1u, (a1 + 1240));
      if (sub_100478A20(a1 + 40, v9, v10, v11, v12, v13, v14, v15))
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10026A0D4;
        v33[3] = &unk_10098AD98;
        v33[4] = a1;
        v16 = objc_retainBlock(v33);
        if (sub_100269EA0(a1, v16, 1u))
        {

          return;
        }

        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B47CC();
        }

        abort_report_np();
        goto LABEL_37;
      }

      sub_100004A08(v34, "");
      sub_1002594BC(a1, 1, v34);
      if (v35 < 0)
      {
        v18 = v34[0];
        goto LABEL_29;
      }

      break;
  }
}

void sub_100267F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 81) < 0)
  {
    operator delete(*(v14 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267FE4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 0;
  return (*(v1 + 16))();
}

uint64_t sub_100268020(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

NSDictionary *__cdecl sub_100268060(id a1)
{
  v4 = @"HasCalDataBeenPushed";
  v1 = [NSNumber numberWithBool:0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100268128(uint64_t a1)
{
  v7 = (a1 + 328);
  sub_100019848(&v7);
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 248) == 1)
  {
    v3 = *(a1 + 224);
    if (v3)
    {
      *(a1 + 232) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      *(a1 + 168) = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 104) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1002681D4(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: notifyPowerOnReadyAndClearRequest", v3, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  std::mutex::lock((a1 + 1608));
  *(a1 + 1672) = 1;
  std::condition_variable::notify_all((a1 + 1560));
  dispatch_assert_queue_V2(*(a1 + 8));
  *(a1 + 1552) = 0;
  std::mutex::unlock((a1 + 1608));
}

uint64_t sub_100268284(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 2;
  return (*(v1 + 16))();
}

uint64_t sub_1002682C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 1;
  return (*(v1 + 16))();
}

uint64_t sub_100268304(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

void sub_100268344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1288);
  v3 = 4;
  (*(v2 + 16))();
  sub_100259D80(v1);
}

void sub_100268394(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v2 + 8));
  if (*(v2 + 1552) == 2)
  {
    v3 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose Executing pending power off", buf, 2u);
    }

    if (*(a1 + 63) < 0)
    {
      sub_1000056BC(__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      *__p = *(a1 + 40);
      v5 = *(a1 + 56);
    }

    sub_1002594BC(v2, 9, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100268464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100268480(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

uint64_t sub_1002684C0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

void sub_100268500(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: requestDeepSleepEntry", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v12 = sub_1001B22B4(2);
  *buf = 0;
  v10 = 0;
  v11 = 0;
  sub_1000069DC(buf, &v12, &v13, 1);
  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = sub_10041B708(a1 + 1248, 0x2Du, buf, &__p);
  v4 = qword_1009F2630;
  if (v3)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: sent deep sleep entry request to RoseSupervisor. Going to DeepSleep state.", v5, 2u);
    }

    atomic_store(0xBu, (a1 + 1240));
    *(a1 + 1504) = std::chrono::steady_clock::now();
    dispatch_async(*(a1 + 16), &stru_1009A0C60);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      v10 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4834();
    }

    abort_report_np();
    __break(1u);
  }
}

void sub_10026866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100268698(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

uint64_t sub_1002686D8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

void sub_100268718(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: LPEMEnableInternal", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v3 = atomic_load((a1 + 1240));
  if (v3 == 5)
  {
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: LPEM already enabled", buf, 2u);
    }
  }

  else
  {
    sub_1003299B0(*(a1 + 1296));
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    *buf = 0u;
    sub_1001B1ECC(v14, buf);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_1000069DC(&v11, buf, &v19, 52);
    __p = 0;
    v9 = 0;
    v10 = 0;
    v5 = sub_10041B708(a1 + 1248, 0x34u, &v11, &__p);
    v6 = qword_1009F2630;
    if (v5)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose: sent LPEM Enable command to Rose. Going to LPEM state.", v7, 2u);
      }

      atomic_store(5u, (a1 + 1240));
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      if (v14[0])
      {
        v14[1] = v14[0];
        operator delete(v14[0]);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4868();
      }

      abort_report_np();
      __break(1u);
    }
  }
}

void sub_100268914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100268964(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

uint64_t sub_1002689A4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

void sub_1002689E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((v1 + 1240));
  if (v2 == 6)
  {
    v4 = sub_100193120(v15);
    v5 = sub_100261E38(v4, *(a1 + 64));
    v6 = strlen(v5);
    sub_10000EA44(&v16, v5, v6);
    if ((*(a1 + 63) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 48))
      {
LABEL_15:
        std::stringbuf::str();
        v11 = sub_10025BB8C(v1, 0, &__p);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v11)
        {
          *(v1 + 1536) = 1;
          v16 = v12;
          if (v19 < 0)
          {
            operator delete(v18[7].__locale_);
          }

          std::locale::~locale(v18);
          std::iostream::~basic_iostream();
          std::ios::~ios();
        }

        else
        {
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B48D0();
          }

          abort_report_np();
          __break(1u);
        }

        return;
      }
    }

    else if (!*(a1 + 63))
    {
      goto LABEL_15;
    }

    v7 = sub_10000EA44(&v16, ": ", 2);
    v8 = *(a1 + 63);
    if (v8 >= 0)
    {
      v9 = a1 + 40;
    }

    else
    {
      v9 = *(a1 + 40);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 63);
    }

    else
    {
      v10 = *(a1 + 48);
    }

    sub_10000EA44(v7, v9, v10);
    goto LABEL_15;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B489C();
  }
}

void sub_100268C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100268C98(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

uint64_t sub_100268CD8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

void sub_100268D18(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: powerOffInternal", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v3 = atomic_load((a1 + 1240));
  if (v3 == 10)
  {
    v4 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "PRRose: Already Powered Off";
    goto LABEL_6;
  }

  *(a1 + 1552) = 2;
  v6 = atomic_load((a1 + 1240));
  if (v6 == 4 || (v7 = atomic_load((a1 + 1240)), v7 == 8))
  {
    sub_100004A08(__p, "");
    sub_1002594BC(a1, 9, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "PRRose: Delay Powering off";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }
}

void sub_100268E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100268E80(uint64_t a1)
{
  v9[0] = @"CrashLogReason";
  v2 = [NSString alloc];
  v3 = *(a1 + 32);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = [v2 initWithCString:v3 encoding:4];
  v10[0] = v4;
  v9[1] = @"IsFatal";
  v5 = [NSNumber numberWithInt:*(*(a1 + 32) + 28)];
  v10[1] = v5;
  v9[2] = @"Core";
  v6 = [NSNumber numberWithInt:*(*(a1 + 32) + 29)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_100268FD8(uint64_t a1)
{
  v9[0] = @"CrashStringSectionFound";
  v2 = a1 + 32;
  v3 = [NSNumber numberWithInt:**(a1 + 32)];
  v10[0] = v3;
  v9[1] = @"CrashStringSectionVersionFound";
  v4 = [NSNumber numberWithInt:*(*v2 + 1)];
  v10[1] = v4;
  v9[2] = @"IsFatal";
  v5 = [NSNumber numberWithInt:*(*(a1 + 32) + 8)];
  v10[2] = v5;
  v9[3] = @"Core";
  v6 = [NSNumber numberWithInt:*(*(a1 + 32) + 9)];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

id sub_100269164(uint64_t a1)
{
  v4 = @"Core";
  v1 = [NSNumber numberWithInt:**(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100269244(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = atomic_load((a1 + 1240));
    *buf = 136315394;
    v31 = sub_10025911C(v5, v6);
    v32 = 2080;
    v33 = sub_1002697E4(v31, a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose::debugEventHandler received DebugManagerEvent while in state: %s, event: %s", buf, 0x16u);
  }

  v7 = atomic_load((a1 + 1240));
  if (v7 == 10)
  {
    v8 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRose:Ignore event, Nothing to do", buf, 2u);
    }

    return;
  }

  v9 = 0;
  if (a2 > 5)
  {
    if ((a2 - 8) < 0xD)
    {
LABEL_8:
      AnalyticsSendEventLazy();
LABEL_9:
      v9 = 0;
LABEL_10:
      sub_100267BA4(a1, v9);
      return;
    }

    if (a2 == 6)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4904();
      }

      goto LABEL_8;
    }

    if (a2 != 7)
    {
      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B49D4((a1 + 1240));
    }

    if (sub_100478A20(a1 + 40, v12, v13, v14, v15, v16, v17, v18))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4A50();
      }

      return;
    }

    sub_100004A08(&v25, "");
    sub_1002594BC(a1, 7, &v25);
    if ((v26 & 0x80000000) == 0)
    {
      return;
    }

    v21 = v25;
LABEL_40:
    operator delete(v21);
    return;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B496C();
      }

      AnalyticsSendEventLazy();
      v9 = 3;
      goto LABEL_10;
    }

    if (a2 != 4)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4938();
      }

      goto LABEL_8;
    }

    v23 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v24 = "PRRose: DebugManagerEvent::LogCollectionNonFatalSucceeded";
    goto LABEL_57;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B49A0();
      }

      AnalyticsSendEventLazy();
      sub_100269AF4(a1);
      v22 = atomic_load((a1 + 1240));
      if (v22 == 7)
      {
LABEL_47:
        v9 = 1;
        goto LABEL_10;
      }

      v23 = qword_1009F2630;
      if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v24 = "PRRose: DebugManagerEvent::LogCollectionFatalFailed is ignored if the state is not ErrorHandling";
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_10;
      }

      v10 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRRose: DebugManagerEvent::LogCollectionFatalSucceeded", buf, 2u);
      }

      sub_100269AF4(a1);
      v11 = atomic_load((a1 + 1240));
      if (v11 == 7)
      {
        if (*(a1 + 1536) != 1)
        {
          v9 = 2;
          goto LABEL_10;
        }

        *(a1 + 1536) = 0;
        goto LABEL_47;
      }

      v23 = qword_1009F2630;
      if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v24 = "PRRose: DebugManagerEvent::LogCollectionFatalSucceeded is ignored if the state is not ErrorHandling";
    }

LABEL_57:
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4A84();
  }

  v19 = atomic_load((a1 + 1240));
  if (v19 == 7)
  {
LABEL_38:
    sub_100004A08(__p, "");
    sub_1002594BC(a1, 6, __p);
    if ((v28 & 0x80000000) == 0)
    {
      return;
    }

    v21 = __p[0];
    goto LABEL_40;
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10026980C;
  v29[3] = &unk_10098AD98;
  v29[4] = a1;
  v20 = objc_retainBlock(v29);
  if (sub_100269880(a1, v20, 0xAu))
  {

    goto LABEL_38;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4AB8();
  }

  abort_report_np();
  __break(1u);
}

void sub_1002697A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1002697E4(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0x13)
  {
    return "Dead";
  }

  else
  {
    return off_1009A1198[a2 - 1];
  }
}

void sub_10026980C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Executing LogCollectionCompleted Timeout Callback.", v3, 2u);
  }

  sub_100267BA4(v1, 1);
}

uint64_t sub_100269880(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  sub_100269AF4(a1);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4B20();
    }

    goto LABEL_10;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 8));
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;

  v8 = *(a1 + 32);
  if (!v8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4AEC();
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v9 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10026A090;
  handler[3] = &unk_10099F470;
  v17 = a1;
  v16 = v5;
  dispatch_source_set_event_handler(v10, handler);
  v11 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose: Starting LogCollectionCompleted timer.", v14, 2u);
  }

  dispatch_resume(*(a1 + 32));

  v12 = 1;
LABEL_11:

  return v12;
}

NSDictionary *__cdecl sub_100269A2C(id a1)
{
  v4 = @"IsFatal";
  v1 = [NSNumber numberWithInt:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100269AF4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Cancelling LogCollectionCompleted timer", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 32));
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

NSDictionary *__cdecl sub_100269B7C(id a1)
{
  v4 = @"IsFatal";
  v1 = [NSNumber numberWithInt:0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100269C44(id a1)
{
  v4 = @"InterfaceError";
  v1 = [NSNumber numberWithInt:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100269D0C(id a1)
{
  v4 = @"FilesystemError";
  v1 = [NSNumber numberWithInt:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100269DD4(uint64_t a1)
{
  v4 = @"ErrorCode";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100269EA0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  sub_100257E7C(a1);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4B20();
    }

    goto LABEL_10;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 8));
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;

  v8 = *(a1 + 24);
  if (!v8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4B54();
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v9 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 24);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10026A04C;
  handler[3] = &unk_10099F470;
  v17 = a1;
  v16 = v5;
  dispatch_source_set_event_handler(v10, handler);
  v11 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose: Starting SecureROM timer.", v14, 2u);
  }

  dispatch_resume(*(a1 + 24));

  v12 = 1;
LABEL_11:

  return v12;
}

uint64_t sub_10026A04C(uint64_t a1)
{
  sub_100257E7C(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_10026A090(uint64_t a1)
{
  sub_100269AF4(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_10026A0D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Executing SecureROM Timeout Callback.", v4, 2u);
  }

  return sub_100267BA4(v1, 1);
}

id sub_10026A148(unsigned int *a1)
{
  v7[0] = @"PowerState";
  v2 = [NSNumber numberWithInt:a1[8]];
  v8[0] = v2;
  v7[1] = @"ServiceState";
  v3 = [NSNumber numberWithInt:a1[9]];
  v8[1] = v3;
  v7[2] = @"SecureROMState";
  v4 = [NSNumber numberWithInt:a1[10]];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id sub_10026A284(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:-v3];
  [v2 setObject:v4 forKeyedSubscript:@"TimeSinceFirstError"];

  v5 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v2 setObject:v5 forKeyedSubscript:@"ErrorType"];

  v6 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v2 setObject:v6 forKeyedSubscript:@"CumulativeErrors"];

  if (*(a1 + 48) == 2)
  {
    v7 = [NSNumber numberWithInteger:*(a1 + 52)];
    [v2 setObject:v7 forKeyedSubscript:@"MaxChipResetsReason"];
  }

  return v2;
}

uint64_t sub_10026A3DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 6)
  {
    goto LABEL_7;
  }

  if (v1 > 3)
  {
    goto LABEL_12;
  }

  switch(v1)
  {
    case 1:
LABEL_20:
      abort_report_np();
      goto LABEL_21;
    case 2:
LABEL_24:
      abort_report_np();
      goto LABEL_25;
    case 3:
      abort_report_np();
LABEL_7:
      if (v1 > 9)
      {
LABEL_16:
        switch(v1)
        {
          case 10:
LABEL_23:
            abort_report_np();
            goto LABEL_24;
          case 11:
LABEL_27:
            abort_report_np();
            goto LABEL_28;
          case 12:
            abort_report_np();
            goto LABEL_20;
        }

        break;
      }

      if (v1 == 7)
      {
LABEL_21:
        abort_report_np();
        goto LABEL_22;
      }

      if (v1 == 8)
      {
LABEL_25:
        abort_report_np();
        goto LABEL_26;
      }

      if (v1 != 9)
      {
        break;
      }

      abort_report_np();
LABEL_12:
      if (v1 == 4)
      {
LABEL_22:
        abort_report_np();
        goto LABEL_23;
      }

      if (v1 == 5)
      {
LABEL_26:
        abort_report_np();
        goto LABEL_27;
      }

      if (v1 != 6)
      {
        break;
      }

      abort_report_np();
      goto LABEL_16;
  }

LABEL_28:
  v2 = abort_report_np();
  return sub_10026A500(v2);
}

uint64_t sub_10026A510(uint64_t a1)
{
  dispatch_assert_queue_not_V2(*(a1 + 8));
  __lk.__m_ = (a1 + 1608);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 1608));
  v2 = atomic_load((a1 + 1240));
  if (v2 == 9)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4BBC();
    }

    goto LABEL_25;
  }

  *(a1 + 1672) = 0;
  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026A720;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 30000000000;
  do
  {
    if (*(a1 + 1672))
    {
      goto LABEL_22;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v4.__d_.__rep_)
    {
      break;
    }

    v5.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v5.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v6.__d_.__rep_)
      {
        v7 = 0;
        goto LABEL_18;
      }

      if (v6.__d_.__rep_ < 1)
      {
        if (v6.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7 = 0x8000000000000000;
          goto LABEL_18;
        }
      }

      else if (v6.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_16;
      }

      v7 = 1000 * v6.__d_.__rep_;
LABEL_16:
      if (v7 > (v5.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
        std::condition_variable::__do_timed_wait((a1 + 1560), &__lk, v8);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_18:
      v8.__d_.__rep_ = v7 + v5.__d_.__rep_;
      goto LABEL_19;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v4.__d_.__rep_);
  if (*(a1 + 1672))
  {
LABEL_22:
    dispatch_async(*(a1 + 16), &stru_1009A0C20);
    v9 = 1;
    goto LABEL_26;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4B88();
  }

LABEL_25:
  v9 = 0;
LABEL_26:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v9;
}

void sub_10026A730(uint64_t a1)
{
  dispatch_assert_queue_not_V2(*(a1 + 8));
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026A7B4;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v2, block);
}

NSDictionary *__cdecl sub_10026A7D8(id a1)
{
  v4[0] = @"NumberOfFailures";
  v4[1] = @"Reason";
  v5[0] = &off_1009C4028;
  v1 = [NSNumber numberWithInt:1];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

NSDictionary *__cdecl sub_10026A8B8(id a1)
{
  v4[0] = @"NumberOfFailures";
  v4[1] = @"Reason";
  v5[0] = &off_1009C4028;
  v1 = [NSNumber numberWithInt:2];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

_BYTE *sub_10026A998(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = 0;
  if (*(a2 + 96) == 1)
  {
    sub_10026AA00(a1, a2);
    a1[96] = 1;
  }

  return a1;
}

void sub_10026A9E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    sub_10026ACD4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026AA00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10026AADC(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10026ABDC(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10026AC58(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v4 = *(a2 + 80);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 80) = v4;
  return a1;
}

void sub_10026AAA8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026AADC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10026AB3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026AB58(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10026AB94(a1, a2);
  }

  sub_100019B38();
}

void sub_10026AB94(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10026ABDC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10026AC3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026AC58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10026ACB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10026ACD4(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10026AD28(uint64_t a1, char a2, char a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  __src = a3;
  sub_10026ADA4((a1 + 8), &__src, &v6, 1uLL);
  return a1;
}

void sub_10026AD88(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10026ADA4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100009AC4(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_10026AED4(uint64_t a1, char a2, __int16 **a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100426E3C(a1, a3);
  return a1;
}

void sub_10026AF10(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10026AF30(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  if (v5 >= 0x20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "string length exceeds maximum");
  }

  return __dst;
}

void sub_10026AFFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026B028(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 31) < 0)
  {
    sub_1000056BC((a1 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = *(a2 + 4);
  if (*(a2 + 63) < 0)
  {
    sub_1000056BC((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 10);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  return a1;
}

void sub_10026B0B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***sub_10026B0D4(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100193514((a1 + 1), 16);
  return a1;
}

void sub_10026B218(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10026B240(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_10026B35C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026B3E4(result, a4);
  }

  return result;
}

void sub_10026B3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100189A94(&a9);
  _Unwind_Resume(a1);
}

void sub_10026B3E4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_10026B420(a1, a2);
  }

  sub_100019B38();
}

void sub_10026B420(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10026B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100009A48(v4 + 8, *(v6 + 8), *(v6 + 16), *(v6 + 16) - *(v6 + 8));
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10026B520(v8);
  return v4;
}

uint64_t sub_10026B520(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100189E18(a1);
  }

  return a1;
}

__n128 sub_10026B5D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A0CF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10026B60C(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10026B638(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B684(uint64_t a1)
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

__n128 sub_10026B780(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A0DB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10026B7B8(void *a1, unsigned int *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t sub_10026B7E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B834(uint64_t a1)
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

uint64_t sub_10026B8B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026B3E4(result, a4);
  }

  return result;
}

void sub_10026B91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100189A94(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10026B93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100009A48(v4 + 8, *(v6 + 8), *(v6 + 16), *(v6 + 16) - *(v6 + 8));
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10026B520(v8);
  return v4;
}

uint64_t sub_10026BA64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A0E58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10026BA90(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_100426398(a2))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4BF0();
    }
  }

  else if (sub_10042640C(a2) == 5)
  {
    v6 = sub_100462E10(a3);
    v7 = v6;
    if (!v6)
    {
      return 0;
    }

    v8 = *(a1 + 8);
    *v8 = v6;
    *(v8 + 2) = 1;
    if ((v6 & 0x100000000) != 0)
    {
      std::to_string(&v15, BYTE3(v6));
    }

    else
    {
      sub_100004A08(&v15, "N/A");
    }

    v10 = qword_1009F2630;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004279E4(v7, __p);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = &v15;
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v15.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v17 = v11;
      v18 = 1024;
      v19 = BYTE2(v7);
      v20 = 2080;
      v21 = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "PRRose:applyConfigOptions,regulatory,failed to send regulatory config. Status: %s, numConfigsSetSuccessfully: %u, firstErroneousConfigId: %s", buf, 0x1Cu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4C64();
  }

  return 1;
}