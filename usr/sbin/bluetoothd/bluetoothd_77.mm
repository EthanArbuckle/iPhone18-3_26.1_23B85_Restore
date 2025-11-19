uint64_t sub_10057A304(uint64_t a1)
{
  v2 = sub_100017F4C();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10057A384;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v2, v4);
  return 0;
}

void sub_10057A38C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning asynchronous power shutdown", v3, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100844898();
  }

  sub_1005A189C(off_100B50A98);
  *(a1 + 112) = 4;
  sub_10057AD28(a1, 4u);
}

uint64_t sub_10057A430(uint64_t a1)
{
  v2 = sub_100017F4C();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10057A4B0;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v2, v4);
  return 0;
}

void sub_10057A4B8(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beginning asynchronous power reset", v6, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100844898();
  }

  v3 = sub_1005A189C(off_100B50A98);
  if (v3 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008449B8();
  }

  v4 = sub_10009BD9C();
  if ((*(*v4 + 24))(v4))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100844A20();
    }
  }

  else if (!v3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100844898();
    }

    if (sub_10059D8D0(off_100B50A98))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008448C0();
      }

      v5 = sub_10009BD9C();
      if ((*(*v5 + 16))(v5) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100844928();
      }
    }

    else
    {
      sub_10057AD28(a1, 1u);
    }
  }
}

uint64_t sub_10057A688(uint64_t a1)
{
  *(a1 + 112) = 2;
  if (qword_100B50AA0 != -1)
  {
    sub_100844A88();
  }

  v2 = sub_1005A1268(off_100B50A98);
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100844A9C();
    }
  }

  else
  {
    *(a1 + 112) = 0;
  }

  return v2;
}

BOOL sub_10057A710(uint64_t a1)
{
  v1 = *(a1 + 116);
  v2 = *sub_10009BD9C();
  if (v1 == 1)
  {
    return (*(v2 + 104))() != 0;
  }

  else
  {
    return (*(v2 + 88))() == 1;
  }
}

BOOL sub_10057A7A0(uint64_t a1)
{
  v2 = sub_100017E6C();
  if ((*(*v2 + 280))(v2))
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Bluetooth is running inside a Virtual Machine, so skipping chip initialization", buf, 2u);
    }

    return sub_10009B9DC() == 10;
  }

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
  v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  memset(v23, 0, sizeof(v23));
  sub_100008760(buf);
  while (1)
  {
    v5 = sub_10009BD9C();
    v6 = (**v5)(v5);
    v7 = v6;
    if (v6 <= 23)
    {
      break;
    }

    if (v6 != 24 && v6 != 213)
    {
      goto LABEL_13;
    }

LABEL_11:
    sub_100007774(buf);
    v8 = 1;
LABEL_18:
    sub_10057B954(a1, 2);
    v10 = qword_100BCE8D8;
    v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      std::stringbuf::str();
      v12 = v18;
      if (v19 < 0)
      {
        v12 = v18[0];
      }

      *v37 = 136315394;
      *&v37[4] = v12;
      v38 = 1024;
      v39 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s - %{bluetooth:OI_STATUS}u", v37, 0x12u);
      if (v19 < 0)
      {
        operator delete(v18[0]);
      }

      if (v8)
      {
LABEL_30:
        sub_1001BA810(v11);
        v13 = sub_10000F034();
        std::stringbuf::str();
        if (v40 >= 0)
        {
          v14 = v37;
        }

        else
        {
          v14 = *v37;
        }

        sub_100007E30(v18, v14);
        (*(*v13 + 120))(v13, v7, v18);
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        if (v40 < 0)
        {
          operator delete(*v37);
        }

        if (qword_100B50AA0 != -1)
        {
          sub_100844898();
        }

        v15 = off_100B50A98;
        std::stringbuf::str();
        sub_1005A5110(v15, v7, 0, &v16);
        if (v17 < 0)
        {
          operator delete(v16);
        }

        usleep(0xF4240u);
        _exit(1);
      }
    }

    else if (v8)
    {
      goto LABEL_30;
    }
  }

  if (v6 == 2)
  {
    goto LABEL_11;
  }

  if (v6)
  {
LABEL_13:
    sub_100007774(buf);
    std::ostream::operator<<();
    sub_10057B954(a1, 2);
    if (qword_100B50AA0 != -1)
    {
      sub_100844898();
    }

    v9 = off_100B50A98;
    std::stringbuf::str();
    sub_1005A5110(v9, v7, 1, &__p);
    if (v21 < 0)
    {
      operator delete(__p);
    }

    v8 = 0;
    goto LABEL_18;
  }

  sub_10057B954(a1, 1);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(*(&v24 + 1));
  }

  std::locale::~locale(v23);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_10057AC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10057AD28(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending 'power state changed' event for local device - {powerstate: %d}", buf, 8u);
  }

  v5 = qword_100BCE9D8;
  if (os_log_type_enabled(qword_100BCE9D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Power state change - {powerstate: %d}", buf, 8u);
  }

  if (a2 <= 1)
  {
    v6 = sub_100017F4C();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10057BA84;
    v9[3] = &unk_100AE0900;
    v10 = a2;
    sub_10000CA94(v6, v9);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10057BBD8;
  v7[3] = &unk_100AFD9A8;
  v8 = a2;
  sub_10057BB0C(a1 + 80, v7);
}

void sub_10057AED0(uint64_t a1, int a2)
{
  if (*(a1 + 116) == a2)
  {
    return;
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    if (a2)
    {
      v5 = "true";
    }

    v29 = 136446210;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting airplane mode to %{public}s", &v29, 0xCu);
  }

  *(a1 + 116) = a2;
  v6 = +[MCProfileConnection sharedConnection];
  v7 = [v6 isBluetoothModificationAllowed];

  if (v7)
  {
    v8 = *(a1 + 112);
    if (a2)
    {
      if (!v8)
      {
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Override power state transition : Don't turn on bluetooth in airplane mode if current power state is off", &v29, 2u);
        }

        v10 = sub_10009BD9C();
        (*(*v10 + 112))(v10, 0);
LABEL_21:
        v15 = 1;
LABEL_23:
        v16 = sub_10009BD9C();
        v17 = (*(*v16 + 104))(v16);
        v18 = sub_10009BD9C();
        v19 = (*(*v18 + 88))(v18);
        if (qword_100B50AA0 != -1)
        {
          sub_100844898();
        }

        v20 = sub_1005A6978(off_100B50A98);
        if (a2)
        {
          if ((v15 & 1) == 0)
          {
            v21 = *(a1 + 112);
            if (v17 == 1)
            {
              v22 = v20;
              if (v21 != 1)
              {
                v23 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v29) = 0;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Turn power on for airplane mode", &v29, 2u);
                }

                sub_100579DB0(a1);
              }

              if (v22 == 2)
              {
                v24 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v29) = 0;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Default airplane mode denylist state is enabled. Entering grant list mode for AirplaneMode", &v29, 2u);
                }

                if (qword_100B50AA0 != -1)
                {
                  sub_100844898();
                }

                sub_1005A0484(off_100B50A98, 1);
              }
            }

            else if (!v17 && v21)
            {
              v27 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v29) = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Turn power off for airplane mode", &v29, 2u);
              }

              sub_10057A198(a1);
            }
          }
        }

        else
        {
          if (*(a1 + 112) == v19)
          {
            v25 = 1;
          }

          else
          {
            v25 = v15;
          }

          if ((v25 & 1) == 0)
          {
            if (v19)
            {
              if (v19 == 1)
              {
                v26 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v29) = 0;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Exiting airplane mode : Turn power on", &v29, 2u);
                }

                sub_100579DB0(a1);
              }
            }

            else
            {
              v28 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v29) = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Exiting airplane mode : Turn power off", &v29, 2u);
              }

              sub_10057A198(a1);
            }
          }

          if (qword_100B50AA0 != -1)
          {
            sub_100844898();
          }

          sub_1005A0484(off_100B50A98, 0);
        }

        return;
      }
    }

    else if (v8)
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Override power state transition : Don't turn off bluetooth in normal mode if current airplane mode power is on", &v29, 2u);
      }

      v14 = sub_10009BD9C();
      (*(*v14 + 96))(v14, 1);
      goto LABEL_21;
    }

    v15 = 0;
    goto LABEL_23;
  }

  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "false";
    if (a2)
    {
      v12 = "true";
    }

    v29 = 136446210;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Bluetooth modification is not allowed. Ignore airplane mode change to %{public}s", &v29, 0xCu);
  }
}

uint64_t sub_10057B3C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a2 = CFPrefs_GetInt64();
  *a3 = CFPrefs_GetInt64();
  *a4 = CFPrefs_GetInt64();
  result = CFPrefs_GetInt64();
  *a5 = result;
  if (!result)
  {
    *a5 = sub_10057B4D4();
    return CFPrefs_SetInt64();
  }

  return result;
}

uint64_t sub_10057B4D4()
{
  result = qword_100B6F098;
  if (!qword_100B6F098)
  {
    v5 = 0;
    v6 = 0;
    v4 = 16;
    if (sysctlbyname("kern.boottime", &v5, &v4, 0, 0) == -1)
    {
      qword_100B6F098 = 0;
      v1 = qword_100BCE8D8;
      v2 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
      result = 0;
      if (v2)
      {
        *v3 = 0;
        _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to read kern.boottime", v3, 2u);
        return qword_100B6F098;
      }
    }

    else
    {
      result = v6 + 1000000 * v5;
      qword_100B6F098 = result;
    }
  }

  return result;
}

uint64_t sub_10057B5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  CFPrefs_SetInt64();
  CFPrefs_SetInt64();
  result = CFPrefs_SetInt64();
  if (a5)
  {
    sub_10057B4D4();

    return CFPrefs_SetInt64();
  }

  return result;
}

BOOL sub_10057B658(uint64_t a1, uint64_t a2)
{
  v3 = sub_10057B4D4();
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Check device boot time: current: %llu last: %llu", &v7, 0x16u);
  }

  if (v3)
  {
    v5 = v3 == a2;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

void sub_10057B724(uint64_t a1, uint64_t *a2, char *a3)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v13 = 0;
  v7 = sub_10057B3C4(a1, &v16, &v15, &v14, &v13);
  if (*a2 < 2)
  {
    if (v16 >= 2)
    {
      sub_10057B5A8(v7, 0, 0, 0, 0);
    }

    goto LABEL_9;
  }

  if (v16 < 2)
  {
LABEL_10:
    v10 = 1;
    sub_10057B5A8(v7, *a2, v6, 1, 1);
    *a2 = 0;
    goto LABEL_11;
  }

  v8 = sub_10057B658(v7, v13);
  if (v8)
  {
    v9 = qword_100BCE8D8;
    v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device was rebooted since last reported bluetooth Hardware Status sent.", buf, 2u);
    }

    goto LABEL_10;
  }

  if (v14 <= 2)
  {
    sub_10057B5A8(v8, *a2, v6, v14 + 1, 0);
    *a2 = 0;
LABEL_9:
    v10 = 1;
    goto LABEL_11;
  }

  if (v14 == 3)
  {
    sub_10057B5A8(v8, *a2, v6, 4, 0);
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a2;
      *buf = 134217984;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending %llu state to mobilerepaird", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (v6 - v15 >= 0xD18C2E28000)
  {
    sub_10057B5A8(v8, 0, 0, 0, 0);
  }

  v10 = 0;
LABEL_11:
  *a3 = v10;
}

void sub_10057B954(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3 = 0;
  sub_10057B724(a1, &v4, &v3);
  if (v3 == 1)
  {
    v2 = objc_opt_new();
    [v2 postComponentStatusEventFor:5 status:v4 withReply:&stru_100AFD988];
  }
}

void sub_10057B9F4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = qword_100BCE8D8;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100844B04(a2, v4, v5);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_100844B90(a2, v5);
  }
}

uint64_t sub_10057BA84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B50910 != -1)
  {
    sub_100844C0C();
  }

  sub_1005BBA18(off_100B50908, v1 == 1);
  v2 = *(*sub_10000F034() + 152);

  return v2();
}

void sub_10057BB0C(uint64_t a1, void *a2)
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

uint64_t sub_10057BC08(uint64_t a1)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 16);
  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "statedump: Power Assertion History:", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v22 = objc_alloc_init(NSDateFormatter);
  [v22 setDateFormat:@"yyyy-MM-dd H:mm:ss"];
  for (i = *(a1 + 160); i != a1 + 152; i = *(i + 8))
  {
    v5 = *(i + 16);
    v4 = *(i + 20);
    v6 = *(i + 24);
    v7 = *(i + 32);
    v8 = *(i + 40);
    v9 = *(i + 44);
    v10 = *(i + 48);
    v25 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
    v11 = [v22 stringFromDate:?];
    LODWORD(v12) = llround((v7 - floor(v7)) * 1000.0);
    v24 = v11;
    v13 = [NSString stringWithFormat:@"%@.%000d", v11, v12];
    log = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v13 UTF8String];
      v16 = sub_10008E07C(a1, v5);
      v17 = "Unknown";
      if (v4 == 1)
      {
        v17 = "Destroy";
      }

      if (v4)
      {
        v18 = v17;
      }

      else
      {
        v18 = "Create";
      }

      v19 = sub_10008D004(a1, v6);
      *buf = 136317186;
      v28 = v15;
      v29 = 2048;
      v30 = v7;
      v31 = 2048;
      v32 = Current - v7;
      v33 = 2080;
      v34 = v16;
      v35 = 2080;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      v39 = 1024;
      v40 = v8;
      v41 = 1024;
      v42 = v9 & 1;
      v43 = 1024;
      v44 = v10;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "statedump: time:%s %.3f secs(%-12.2f secs ago) source:%-22s event:%-7s %@ ret:%d fw:%d ID:%08X", buf, 0x50u);
    }
  }

  return sub_1000088CC(v26);
}

void sub_10057BEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10057BF4C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------- Power Manager -------------------", &v7, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 116))
    {
      v3 = "On";
    }

    else
    {
      v3 = "Off";
    }

    v7 = 136446210;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Airplane Mode: %{public}s", &v7, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 117))
    {
      v4 = "On";
    }

    else
    {
      v4 = "Off";
    }

    v7 = 136446210;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Low Power Mode: %{public}s", &v7, 0xCu);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 112))
    {
      v5 = "On";
    }

    else
    {
      v5 = "Off";
    }

    v7 = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Power State: %{public}s", &v7, 0xCu);
  }

  return sub_10057BC08(a1);
}

uint64_t sub_10057C100(uint64_t a1)
{
  *a1 = off_100AFD938;
  *(a1 + 8) = &off_100AFD978;
  sub_100028EB4((a1 + 152));

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 16);
  return a1;
}

void sub_10057C188(uint64_t a1)
{
  *a1 = off_100AFD938;
  *(a1 + 8) = &off_100AFD978;
  sub_100028EB4((a1 + 152));

  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 16);

  operator delete();
}

uint64_t sub_10057C4B4(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  v4 = *(a3 + 8);
  *(a1 + 8) = &off_100AE0A78;
  *(a1 + 16) = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  *(a1 + 24) = 0;
  return a1;
}

size_t sub_10057C50C(uint64_t a1, void *a2, size_t __n)
{
  result = sub_10004B8FC(a1 + 8, a2, *(a1 + 24), __n);
  *(a1 + 24) += result;
  return result;
}

uint64_t sub_10057C548(uint64_t a1)
{
  __dst = 0;
  *(a1 + 24) += sub_10004B8FC(a1 + 8, &__dst, *(a1 + 24), 1uLL);
  return __dst;
}

uint64_t sub_10057C598(uint64_t a1)
{
  __dst = 0;
  *(a1 + 24) += sub_10004B8FC(a1 + 8, &__dst, *(a1 + 24), 2uLL);
  v2 = bswap32(__dst) >> 16;
  if (*a1 == 1)
  {
    return v2;
  }

  else
  {
    return __dst;
  }
}

uint64_t sub_10057C600(uint64_t a1)
{
  __dst = 0;
  *(a1 + 24) += sub_10004B8FC(a1 + 8, &__dst, *(a1 + 24), 4uLL);
  v2 = bswap32(__dst);
  if (*a1 == 1)
  {
    return v2;
  }

  else
  {
    return __dst;
  }
}

unint64_t sub_10057C660(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24) + a2;
  *(a1 + 24) = v3;
  result = sub_10000C5E0(a1 + 8);
  if (v3 > result)
  {
    result = sub_10000C5E0(a1 + 8);
    *(a1 + 24) = result;
  }

  return result;
}

uint64_t sub_10057C6A8(uint64_t result, int a2)
{
  *result = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  return result;
}

char *sub_10057C70C(uint64_t a1, __int16 a2)
{
  __src = a2;
  if (*a1 == 1)
  {
    __src = __rev16(a2);
  }

  return sub_10057C7FC(a1 + 8, *(a1 + 16), &__src, &vars0, 2);
}

char *sub_10057C75C(uint64_t a1, unsigned int a2)
{
  __src = a2;
  if (*a1 == 1)
  {
    __src = bswap32(a2);
  }

  return sub_10057C7FC(a1 + 8, *(a1 + 16), &__src, &vars0, 4);
}

char *sub_10057C7AC(uint64_t a1, unint64_t a2)
{
  __src = a2;
  if (*a1 == 1)
  {
    __src = bswap64(a2);
  }

  return sub_10057C7FC(a1 + 8, *(a1 + 16), &__src, &vars0, 8);
}

char *sub_10057C7FC(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_1000C7698();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_10057CA24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 16);
    if (*(a1 + 80))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100844CAC(a1);
      }

      goto LABEL_5;
    }

    *(a1 + 80) = 3;
    *(a1 + 8) = a2;
    sub_10000801C(v6);
    v4 = (*(*a1 + 40))(a1);
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100844D28();
      }
    }

    else
    {
      v4 = (*(*a1 + 48))(a1);
      if (!v4)
      {
        sub_100007FB8(v6);
        *(a1 + 80) = 1;
        sub_10000801C(v6);
LABEL_5:
        v4 = 0;
LABEL_17:
        sub_1000088CC(v6);
        return v4;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100844DA4();
      }

      (*(*a1 + 64))(a1);
    }

    *(a1 + 80) = 0;
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100844E20(a1);
  }

  return 1;
}

const char *sub_10057CC18(unsigned int a1)
{
  if (a1 > 0x19)
  {
    return "Unknown";
  }

  else
  {
    return off_100AFDC20[a1];
  }
}

uint64_t sub_10057CC3C(uint64_t a1, int a2)
{
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, a1 + 16);
  if (*(a1 + 80) == 2)
  {
    sub_10000801C(v27);
    v26[0] = 0;
    v26[1] = 0;
    sub_100007F88(v26, a1 + 88);
    v4 = *(a1 + 152);
    v5 = *(a1 + 160);
    if (v4 == v5 && *(a1 + 176) == *(a1 + 184) && *(a1 + 200) == *(a1 + 208))
    {
      sub_10000801C(v26);
      if ((*(*a1 + 56))(a1))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100844EC4();
        }

        v17 = sub_10000E92C();
        v18 = sub_10057CC18(*(a1 + 248));
        sub_100007E30(v22, v18);
        sub_100693260(v17, 9504, v22, 1);
      }

      if ((*(*a1 + 64))(a1))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100844F40();
        }

        v19 = sub_10000E92C();
        v20 = sub_10057CC18(*(a1 + 248));
        sub_100007E30(v21, v20);
        sub_100693260(v19, 9505, v21, 1);
      }

      sub_100007FB8(v27);
      *(a1 + 80) = 0;
      sub_10000801C(v27);
      if (a2)
      {
        sub_100589B60(*(a1 + 8));
      }
    }

    else
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v7 = sub_10057CC18(*(a1 + 248));
        v8 = (*(a1 + 184) - *(a1 + 176)) >> 3;
        v9 = (*(a1 + 208) - *(a1 + 200)) >> 3;
        *buf = 136446978;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = (v5 - v4) >> 3;
        *&buf[22] = 2048;
        v31 = v8;
        v32 = 2048;
        v33 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Can't stop %{public}s profile - there are still devices attached: connecting %lu connected %lu disconnecting %lu", buf, 0x2Au);
        v4 = *(a1 + 152);
        v5 = *(a1 + 160);
      }

      memset(buf, 0, sizeof(buf));
      sub_10057EB60(buf, 0, v4, v5, (v5 - v4) >> 3);
      sub_10057EB60(buf, *&buf[8], *(a1 + 176), *(a1 + 184), (*(a1 + 184) - *(a1 + 176)) >> 3);
      sub_10057EB60(buf, *&buf[8], *(a1 + 200), *(a1 + 208), (*(a1 + 208) - *(a1 + 200)) >> 3);
      v10 = *buf;
      for (i = *&buf[8]; v10 != i; ++v10)
      {
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(*v10, __p);
          v13 = v25 >= 0 ? __p : __p[0];
          *v28 = 136446210;
          v29 = v13;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Still attached device: %{public}s", v28, 0xCu);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if ((a2 & 1) == 0)
      {
        if (qword_100B512C8 != -1)
        {
          sub_100844E9C();
        }

        if (sub_10000EE78(off_100B512C0) == 1)
        {
          v15 = sub_10000E92C();
          v16 = sub_10057CC18(*(a1 + 248));
          sub_100007E30(v23, v16);
          sub_100693260(v15, 9503, v23, 1);
        }
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    sub_1000088CC(v26);
  }

  return sub_1000088CC(v27);
}

void sub_10057D074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a32);
  sub_1000088CC(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_10057D10C(uint64_t a1)
{
  v32 = 0;
  __dst = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v28[0] = 0;
  v28[1] = 0;
  sub_100007F88(v28, a1 + 16);
  if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 2;
    sub_10000801C(v28);
    v27[0] = 0;
    v27[1] = 0;
    sub_100007F88(v27, a1 + 88);
    sub_10057EB60(&v32, __dst, *(a1 + 152), *(a1 + 160), (*(a1 + 160) - *(a1 + 152)) >> 3);
    sub_10057EB60(&v32, __dst, *(a1 + 176), *(a1 + 184), (*(a1 + 184) - *(a1 + 176)) >> 3);
    if (&v29 != (a1 + 176))
    {
      sub_10051AE40(&v29, *(a1 + 176), *(a1 + 184), (*(a1 + 184) - *(a1 + 176)) >> 3);
    }

    sub_10000801C(v27);
    v2 = v32;
    v3 = __dst;
    if (v32 == __dst)
    {
      goto LABEL_41;
    }

    do
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 248);
        sub_1000E5A58(*v2, __p);
        v6 = sub_10057CC18(v5);
        v7 = v26 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v36 = v6;
        v37 = 2082;
        v38 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s profile waiting for device %{public}s to disconnect", buf, 0x16u);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v2;
    }

    while (v2 != v3);
    v9 = v29;
    v8 = v30;
    if (v29 != v30)
    {
      do
      {
        v10 = *v9;
        v11 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 248);
          sub_1000E5A58(v10, __p);
          v13 = sub_10057CC18(v12);
          v14 = v26 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v36 = v13;
          v37 = 2082;
          v38 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s profile is disconnecting device %{public}s", buf, 0x16u);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10057D5F0(a1, v10))
        {
          v15 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 248);
            sub_1000E5A58(v10, __p);
            v19 = sub_10057CC18(v18);
            v20 = v26 >= 0 ? __p : __p[0];
            *buf = 136446466;
            v36 = v19;
            v37 = 2082;
            v38 = v20;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}s profile failed to disconnect device %{public}s, forcing disconnection", buf, 0x16u);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v24 = 0;
          sub_1000216B4(&v24);
          v16 = sub_10023BD60(v10 + 128);
          sub_100022214(&v24);
          if (v16)
          {
            v17 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_1000E5A58(v10, __p);
              v21 = v26 >= 0 ? __p : __p[0];
              *buf = 136446466;
              v36 = v21;
              v37 = 1024;
              LODWORD(v38) = v16;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Force disconnect for device %{public}s failed with reason %{bluetooth:OI_STATUS}u", buf, 0x12u);
              if (v26 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          sub_10056923C(&v32, v10);
          sub_10002249C(&v24);
        }

        ++v9;
      }

      while (v9 != v8);
    }

    if (v32 == __dst)
    {
LABEL_41:
      sub_10057CC3C(a1, 0);
      v22 = 0;
    }

    else
    {
      v22 = 113;
    }

    sub_1000088CC(v27);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100844FBC(a1);
    }

    v22 = 0;
  }

  sub_1000088CC(v28);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32)
  {
    __dst = v32;
    operator delete(v32);
  }

  return v22;
}

uint64_t sub_10057D5F0(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 88);
  if (sub_1000E69B8(a1 + 176, a2))
  {
    if (sub_1000E69B8(a1 + 200, a2))
    {
      v4 = 0;
      goto LABEL_7;
    }

    sub_10000801C(v6);
    if (!(*(*a1 + 80))(a1, a2))
    {
      sub_10057DB70(a1, a2);
    }
  }

  v4 = 306;
LABEL_7:
  sub_1000088CC(v6);
  return v4;
}

uint64_t sub_10057D6C4(_DWORD *a1, uint64_t a2)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, (a1 + 4));
  if (a1[20] == 1)
  {
    sub_10000801C(v13);
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, (a1 + 22));
    if (!sub_1000E69B8((a1 + 38), a2))
    {
      if (sub_1000E69B8((a1 + 44), a2))
      {
        operator new();
      }

      sub_10000801C(buf);
      (*(*a1 + 72))(a1, a2);
      sub_10057D9B0(a1, a2);
    }

    v4 = 0;
    sub_1000088CC(buf);
  }

  else
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      if (v12 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = sub_10057CC18(a1[62]);
      v9 = "starting";
      v10 = a1[20];
      if (v10 == 2)
      {
        v9 = "stopping";
      }

      *buf = 136446722;
      *&buf[4] = v7;
      *&buf[12] = 2082;
      *&buf[14] = v8;
      if (!v10)
      {
        v9 = "stopped";
      }

      v15 = 2082;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Can't connect to device %{public}s as %{public}s profile state is %{public}s, not started", buf, 0x20u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v4 = 105;
  }

  sub_1000088CC(v13);
  return v4;
}

void sub_10057D978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1000088CC(va1);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10057D9B0(uint64_t a1, uint64_t a2)
{
  v3[1] = 0;
  v4 = a2;
  v3[0] = 0;
  sub_100007F88(v3, a1 + 88);
  sub_1000C2484(a1 + 152, &v4);
  operator new();
}

void sub_10057DA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10057DA84(uint64_t a1, uint64_t a2, int a3)
{
  v6[1] = 0;
  v7 = a2;
  v6[0] = 0;
  sub_100007F88(v6, a1 + 88);
  sub_10056923C((a1 + 152), a2);
  if (a3)
  {
    sub_100075DC4((a1 + 224), &v7);
  }

  else
  {
    sub_1000C2484(a1 + 176, &v7);
  }

  operator new();
}

void sub_10057DB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10057DB70(uint64_t a1, uint64_t a2)
{
  v7[1] = 0;
  v8 = a2;
  v7[0] = 0;
  sub_100007F88(v7, a1 + 88);
  sub_1000C2484(a1 + 200, &v8);
  if (*(a1 + 248) == 24)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v8, __p);
      if (v6 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AACPClient reportDisconnectionAttempt for %{public}s", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  operator new();
}

void sub_10057DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10057DD08(void *a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, (a1 + 11));
  v2 = a1[22];
  v3 = a1[23];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      if (!sub_1000E69B8((a1 + 25), *v2))
      {
        if (!(*(*a1 + 80))(a1, v5))
        {
          sub_10057DB70(a1, v5);
        }

        v4 = 1;
      }

      ++v2;
    }

    while (v2 != v3);
  }

  sub_1000088CC(v7);
  return v4 & 1;
}

BOOL sub_10057DDF0(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 88);
  v2 = *(a1 + 176) != *(a1 + 184);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10057DE40(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 88);
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *v2;
      if (!v5 || v5 > sub_10054D4E0(*v2))
      {
        v5 = sub_10054D4E0(v6);
        v4 = v6;
      }

      ++v2;
    }

    while (v2 != v3);
  }

  sub_1000088CC(v8);
  return v4;
}

uint64_t sub_10057DEF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 88);
  sub_100007F20(a2, (a1 + 176));
  return sub_1000088CC(v5);
}

uint64_t sub_10057DF5C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 88);
  v2 = (*(a1 + 184) - *(a1 + 176)) >> 3;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_10057DFAC(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 16);
  if (!a2 || *(a1 + 80) != 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100845128();
    }

    goto LABEL_10;
  }

  sub_10000801C(v12);
  if (qword_100B512C8 != -1)
  {
    sub_100844E9C();
  }

  if (sub_10000EE78(off_100B512C0) != 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100845038(a1);
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 88);
  v5 = *(a1 + 176);
  v4 = *(a1 + 184);
  if ((*(*a1 + 16))(a1) <= ((v4 - v5) >> 3))
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 248);
      v10 = (*(*a1 + 16))(a1);
      sub_1008450B4(v9, v13, v10, v8);
    }

    v6 = 0;
  }

  else
  {
    v6 = (*(**(a1 + 8) + 128))(*(a1 + 8), a2, *(a1 + 248));
  }

  sub_1000088CC(v11);
LABEL_11:
  sub_1000088CC(v12);
  return v6;
}

void sub_10057E1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1000088CC(&a9);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10057E218(uint64_t a1, unint64_t a2, __int16 a3)
{
  v22[1] = 0;
  v23[0] = a2;
  v22[0] = 0;
  sub_100007F88(v22, a1 + 88);
  v8 = *(a1 + 232);
  v7 = a1 + 232;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) <= a2)
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_1008451C8(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  v23[2] = v23;
  *(sub_10057EDF4(v7 - 8, v23) + 20) = a3;
  return sub_1000088CC(v22);
}

void sub_10057E2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10057E30C(void *a1, unint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, (a1 + 11));
  if (a2)
  {
    v4 = a1[29];
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = a1 + 29;
    do
    {
      v6 = v4[4];
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 == a1 + 29 || v5[4] > a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((*(*a1 + 16))(a1) >= 2)
    {
      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_100845240(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v5 = a1[28];
  }

  if (v5 == a1 + 29)
  {
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  v17 = *(v5 + 20);
LABEL_18:
  sub_1000088CC(v19);
  return v17;
}

uint64_t sub_10057E420(void *a1, int a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, (a1 + 11));
  if (a2)
  {
    v4 = a1[28];
    if (v4 != a1 + 29)
    {
      while (*(v4 + 20) != a2)
      {
        v5 = v4[1];
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
            v6 = v4[2];
            v7 = *v6 == v4;
            v4 = v6;
          }

          while (!v7);
        }

        v4 = v6;
        if (v6 == a1 + 29)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_15;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if ((*(*a1 + 16))(a1) >= 2)
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100845240(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v4 = a1[28];
  if (v4 == a1 + 29)
  {
    goto LABEL_16;
  }

LABEL_15:
  v16 = v4[4];
LABEL_17:
  sub_1000088CC(v18);
  return v16;
}

uint64_t sub_10057E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(**(a1 + 8) + 160))(*(a1 + 8), a2, *(a1 + 248), a3);
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 16);
  if (*(a1 + 80) == 2)
  {
    sub_10000801C(v7);
    if (v3)
    {
      sub_10057CC3C(a1, 1);
    }

    else
    {
      sub_10057D5F0(a1, a2);
    }
  }

  return sub_1000088CC(v7);
}

uint64_t sub_10057E614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 248);
  if (qword_100B50AA0 != -1)
  {
    sub_1008452B8();
  }

  v10 = sub_1000DD584(off_100B50A98, a4, 10000);
  (*(*v8 + 168))(v8, a2, v9, a3, v10);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, a1 + 16);
  if (*(a1 + 80) == 2)
  {
    sub_10000801C(v12);
    sub_10057CC3C(a1, 1);
  }

  return sub_1000088CC(v12);
}

uint64_t sub_10057E710(uint64_t a1, uint64_t a2, int a3)
{
  v14[1] = 0;
  v15 = a2;
  v14[0] = 0;
  sub_100007F88(v14, a1 + 88);
  if (*(a1 + 248) == 24 && (v6 = qword_100BCE8D8, os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT)) && ((sub_1000E5A58(a2, __p), v13 >= 0) ? (v7 = __p) : (v7 = __p[0]), *buf = 136446210, v17 = v7, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AACPClient reportDisconnectionResult for %{public}s", buf, 0xCu), v13 < 0))
  {
    operator delete(__p[0]);
    if (a3)
    {
      return sub_1000088CC(v14);
    }
  }

  else if (a3)
  {
    return sub_1000088CC(v14);
  }

  v8 = sub_10056923C((a1 + 152), a2);
  v9 = sub_10056923C((a1 + 176), a2);
  if (v8 && v9)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008452CC((a1 + 248), v10);
    }
  }

  sub_10056923C((a1 + 200), a2);
  sub_100075DC4((a1 + 224), &v15);
  if (v8)
  {
    operator new();
  }

  if (v9)
  {
    operator new();
  }

  return sub_1000088CC(v14);
}

void sub_10057E964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

char *sub_10057EB60(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_1000C7698();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_100008108(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *sub_10057EDF4(uint64_t a1, unint64_t *a2)
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

const char *sub_10057EF30(uint64_t a1)
{
  v2 = *(a1 + 248);

  return sub_10057CC18(v2);
}

uint64_t sub_10057EF48(uint64_t result)
{
  *result = off_100AFDD00;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 48) = result + 56;
  return result;
}

void sub_10057EF84(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 72);
  *(a1 + 72) = v2;

  if (qword_100B50AA0 != -1)
  {
    sub_100845358();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v12 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "ATT");
  sub_100007E30(__p, "ResponseTimeout");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v12);
  if (v12)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(*buf);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v7 = qword_100BCE910;
  v8 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  v9 = v12;
  if (v8)
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overriding the ATT Response timeout to %d", buf, 8u);
    v9 = v12;
  }

  sub_1002D69CC(v9);
}

void sub_10057F118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_10057F154(unsigned __int8 *a1, __int16 a2, uint64_t a3, int a4, int a5)
{
  if (a4 == 1)
  {
    v10 = (a1[48] << 40) | (a1[49] << 32) | (a1[50] << 24) | (a1[51] << 16) | (a1[52] << 8) | a1[53];
  }

  else
  {
    if (a1[55] == 1)
    {
      v11 = (a1[57] << 40) | (a1[58] << 32) | (a1[59] << 24) | (a1[60] << 16) | (a1[61] << 8) | a1[62];
      v12 = a1[56];
    }

    else
    {
      v11 = (a1[49] << 40) | (a1[50] << 32) | (a1[51] << 24) | (a1[52] << 16) | (a1[53] << 8) | a1[54];
      v12 = a1[48];
    }

    v10 = v11 | (v12 << 48);
  }

  v13 = sub_100007EE8();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100580D34;
  v14[3] = &unk_100AFDDF8;
  v14[4] = a1;
  v14[5] = v10;
  v17 = a2;
  v14[6] = a3;
  v15 = a4;
  v16 = a5;
  sub_10000CA94(v13, v14);
}

void sub_10057F2B4(uint64_t a1, int a2)
{
  v4 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100580DAC;
  v5[3] = &unk_100ADF940;
  v5[4] = a1;
  v6 = a2;
  sub_10000CA94(v4, v5);
}

void sub_10057F338(__int16 *a1, char a2, __int16 a3, int a4)
{
  v8 = *a1;
  v9 = sub_100007EE8();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100580E04;
  v10[3] = &unk_100AEAF08;
  v10[4] = a1;
  v14 = a2;
  v12 = a3;
  v13 = v8;
  v11 = a4;
  sub_10000CA94(v9, v10);
}

double sub_10057F3E4(uint64_t a1)
{
  *(a1 + 8) = 1;
  *&result = sub_1002D6964(off_100AFDD30).n128_u64[0];
  return result;
}

void sub_10057F3F8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100845358();
  }

  v2 = off_100B50A98 + 64;

  sub_10007A3F0(v2, a1);
}

void sub_10057F450(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Gatt::stackWillStop enter", buf, 2u);
  }

  v4 = *(a1 + 56);
  v3 = (a1 + 56);
  *(v3 - 48) = 0;
  sub_10000CEDC((v3 - 1), v4);
  *v3 = 0;
  v3[1] = 0;
  *(v3 - 1) = v3;
  sub_1002D69B8();
  v5 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gatt::stackWillStop exit", v6, 2u);
  }
}

void sub_10057F524(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  if (*(a1 + 8) == 1)
  {
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    if (a6 == 1)
    {
      sub_1007774DC();
    }

    else
    {
      sub_100063D0C();
    }
    v14 = ;
    if (a7)
    {
      v15 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *v40 = v14;
        *&v40[8] = 1024;
        *&v40[10] = a7;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Gatt device %{public}@ connected with error %{bluetooth:OI_STATUS}u", buf, 0x12u);
        v15 = qword_100BCE910;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_10084536C(a7, v15);
      }

LABEL_37:

      return;
    }

    v16 = qword_100BCE910;
    if (!a5 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *v40 = "pAttDBSession";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v16 = qword_100BCE910;
      if (a4)
      {
        goto LABEL_15;
      }
    }

    else if (a4)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *v40 = "gattHandle != LE_GATT_INVALID_SESSION_HANDLE";
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v16 = qword_100BCE910;
    }

LABEL_15:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      *v40 = a6;
      *&v40[4] = 2048;
      *&v40[6] = a2;
      *&v40[14] = 2114;
      *&v40[16] = v14;
      v41 = 1024;
      v42 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Gatt device connected on transport %d on handle %p address:%{public}@ with status %{bluetooth:OI_STATUS}u", buf, 0x22u);
    }

    if (a6 == 2)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10084540C();
      }

      if (!sub_100748908(off_100B508A8, a2, uu) || uuid_is_null(uu))
      {
        v17 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v18 = sub_100063D0C();
          *buf = 138543362;
          *v40 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Warning: Device %{public}@ wasn't being tracked by le device manager, ignoring connection indication", buf, 0xCu);
        }

        goto LABEL_37;
      }
    }

    else if (a6 == 1)
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008453E4();
      }

      sub_1000498D4(off_100B508C8, a3, 1u, 0, 0, 0, buf);
      uuid_copy(uu, buf);
      if (qword_100B508D0 != -1)
      {
        sub_1008453E4();
      }

      v19 = off_100B508C8;
      v20 = sub_10004DF60(uu);
      sub_10078B574(v19, v20, 1, a3);

      if (qword_100B508D0 != -1)
      {
        sub_1008453E4();
      }

      v21 = off_100B508C8;
      v22 = sub_10004DF60(uu);
      sub_10078C720(v21, v22, 1, 1, 0);
    }

    v23 = sub_10004DF60(uu);
    v24 = sub_10057FB10(a1, v23, a6);

    if (v24)
    {
      v25 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sub_10004DF60(uu);
        *buf = 138543618;
        *v40 = v26;
        *&v40[8] = 2114;
        *&v40[10] = v14;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Waiting on disconnection of BR/EDR GATT L2CAP for device %{public}@ %{public}@", buf, 0x16u);
      }

      sub_10004DF60(uu);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10057FDE8;
      block[3] = &unk_100AFDD50;
      v27 = v34 = a1;
      v33 = v27;
      v35 = a2;
      v36 = a5;
      v37 = a6;
      v38 = a4;
      v28 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      v29 = *(a1 + 72);
      v30 = objc_retainBlock(v28);
      [v29 setObject:v30 forKey:v27];
    }

    else
    {
      v31 = sub_10004DF60(uu);
      sub_10057FE00(a1, v31, a2, a6, a4, a5);
    }

    goto LABEL_37;
  }
}

uint64_t sub_10057FB10(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (!sub_100052A90(a1, v5))
  {
    goto LABEL_27;
  }

  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GATT is connected on 2 transports! Serializing disconnection of prev in favor of current.", __p, 2u);
  }

  sub_10004DFB4(__p, v5);
  if (*(a1 + 8) != 1)
  {
    goto LABEL_27;
  }

  v7 = sub_10004E34C(a1 + 48, __p);
  if (a1 + 56 == v7)
  {
    goto LABEL_27;
  }

  v8 = *(v7 + 56);
  if (a3 != 2 || v8 != 1)
  {
    v14 = qword_100BCE910;
    v15 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT);
    if (a3 == 1 && v8 == 2)
    {
      if (v15)
      {
        sub_100845434(v5, v14);
      }
    }

    else if (v15)
    {
      *__p = 138543874;
      *&__p[4] = v5;
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = a3;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Gatt device %{public}@ connected twice with previousTransport %d and currentTransport %d", __p, 0x18u);
    }

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008453E4();
  }

  v9 = sub_100046458(off_100B508C8, v5, 0);
  if (qword_100B508F0 != -1)
  {
    sub_1008454AC();
  }

  v10 = sub_1000504C8(off_100B508E8, v9, 0);
  v11 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, __p);
    v12 = v21 >= 0 ? __p : *__p;
    *buf = 136446466;
    v23 = v12;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disconnecting classic device %{public}s because LE GATT connected for device %{public}@", buf, 0x16u);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*__p);
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_1008454D4();
  }

  sub_100593A4C(off_100B50AB8, v10, 0x100000);
  v13 = 1;
LABEL_28:

  return v13;
}

void sub_10057FE00(uint64_t a1, void *a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v11 = a2;
  v21 = 0;
  sub_1000216B4(&v21);
  v12 = sub_1002D44B0(a3);
  sub_100022214(&v21);
  if (v12 == a5 && v12)
  {
    sub_10004DFB4(buf, v11);
    v22 = buf;
    v13 = sub_10058127C(a1 + 48, buf);
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    *(v13 + 60) = 0;
    v14 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "CLASSIC";
      *buf = 138543874;
      v24 = v11;
      if (a4 == 2)
      {
        v15 = "LE";
      }

      v25 = 2080;
      *v26 = v15;
      *&v26[8] = 2048;
      *&v26[10] = a3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notify gattDeviceConnected %{public}@ transport=%s handle=%p", buf, 0x20u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100580810;
    v17[3] = &unk_100AFDDD8;
    v20 = a5;
    v18 = v11;
    v19 = a6;
    sub_100580F04(a1 + 16, v17);
  }

  else
  {
    v16 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v24 = v11;
      v25 = 1024;
      *v26 = a5;
      *&v26[4] = 2048;
      *&v26[6] = a6;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Gatt device %{public}@ with gattHandle %d ATT_DB_Session %p is no longer connected, not notifying of connection", buf, 0x1Cu);
    }
  }

  sub_10002249C(&v21);
}

void sub_100580048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17)
{
  sub_10002249C(&a17);

  _Unwind_Resume(a1);
}

void sub_100580084(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 8) == 1)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134218240;
      v26 = a2;
      v27 = 1024;
      LODWORD(v28) = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Gatt device disconnected on handle %p with status %{bluetooth:OI_STATUS}u", &v25, 0x12u);
    }

    v7 = *(a1 + 48);
    if (v7 == (a1 + 56))
    {
LABEL_12:
      v12 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_1008454FC(v12);
      }
    }

    else
    {
      while (1)
      {
        v8 = *(v7 + 6);
        if (v8 == a2)
        {
          break;
        }

        v9 = *(v7 + 1);
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
            v10 = *(v7 + 2);
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
        if (v10 == (a1 + 56))
        {
          goto LABEL_12;
        }
      }

      v13 = *(v7 + 7);
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, v7 + 32);
      if (qword_100B508D0 != -1)
      {
        sub_1008453E4();
      }

      v14 = off_100B508C8;
      v15 = sub_10004DF60(dst);
      sub_10078B7D8(v14, v15, 0);

      sub_10002717C((a1 + 48), v7);
      operator delete(v7);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3321888768;
      v29[2] = sub_1005803BC;
      v29[3] = &unk_100AFDD70;
      uuid_copy(v30, dst);
      v29[4] = v8;
      v29[5] = v13;
      sub_100580F04(a1 + 16, v29);
      v16 = *(a1 + 72);
      v17 = sub_10004DF60(dst);
      v18 = [v16 objectForKey:v17];

      if (v18)
      {
        v19 = *(a1 + 72);
        v20 = sub_10004DF60(dst);
        [v19 removeObjectForKey:v20];

        v21 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v22 = sub_10004DF60(dst);
          v23 = [*(a1 + 72) count];
          v25 = 138543618;
          v26 = v22;
          v27 = 2048;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found pending connection to be processed for device %{public}@. transitioningGattDevices size: %lu", &v25, 0x16u);
        }

        v24 = sub_100007EE8();
        sub_10000CA94(v24, v18);
      }
    }
  }
}

void sub_1005803BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 48));
  (*(*a2 + 8))(a2);
}

void sub_100580460(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4, __int16 a5, int a6)
{
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (*(a1 + 8) == 1)
  {
    v12 = qword_100BCE910;
    if (a6)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        v24 = a6;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Gatt callback connected with error %{bluetooth:OI_STATUS}u", buf, 8u);
        v12 = qword_100BCE910;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100845540(a6, v12);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v24 = a4;
        v25 = 1024;
        v26 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Gatt device ready with mtu %d and status %{bluetooth:OI_STATUS}u", buf, 0xEu);
      }

      v13 = *(a1 + 48);
      if (v13 == (a1 + 56))
      {
LABEL_17:
        v17 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
        {
          sub_1008455B8(v17);
        }
      }

      else
      {
        while (*(v13 + 6) != a2)
        {
          v14 = *(v13 + 1);
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
              v15 = *(v13 + 2);
              v16 = *v15 == v13;
              v13 = v15;
            }

            while (!v16);
          }

          v13 = v15;
          if (v15 == (a1 + 56))
          {
            goto LABEL_17;
          }
        }

        uuid_copy(uu, v13 + 32);
        if (qword_100B508D0 != -1)
        {
          sub_1008453E4();
        }

        v18 = off_100B508C8;
        v19 = sub_10004DF60(uu);
        sub_1007899C4(v18, v19, a5);

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3321888768;
        v20[2] = sub_100580700;
        v20[3] = &unk_100AFDDA0;
        uuid_copy(v22, uu);
        v22[16] = a3;
        v21 = a4;
        sub_100580F04(a1 + 16, v20);
      }
    }
  }
}

void sub_100580700(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004DF60((a1 + 34));
  (*(*a2 + 16))(a2);
}

uint64_t sub_1005807A8(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (*(a1 + 8) != 1)
  {
    return 408;
  }

  v5 = sub_10004E34C(a1 + 48, a2);
  if (a1 + 56 == v5)
  {
    return 1;
  }

  v6 = v5;
  result = 0;
  *a3 = *(v6 + 56);
  return result;
}

BOOL sub_100580844(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B508D0 != -1)
  {
    sub_1008455FC();
  }

  *uu2 = 0;
  v6 = 0;
  sub_1000498D4(off_100B508C8, (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133], 0, 1u, 0, 0, uu2);
  return a1 + 56 != sub_10004E34C(a1 + 48, uu2);
}

uint64_t sub_100580920(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508C0 != -1)
  {
    sub_100845610();
  }

  if (sub_10004EE74(off_100B508B8, v2))
  {
    v3 = 1;
  }

  else
  {
    if (qword_100B508D0 != -1)
    {
      sub_1008455FC();
    }

    v4 = sub_100046458(off_100B508C8, v2, 0);
    if ((v4 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100845624();
      }

      v3 = sub_1000504C8(off_100B508E8, v4, 0);
      if (v3)
      {
        if (qword_100B50F88 != -1)
        {
          sub_100845638();
        }

        v3 = sub_1006E0D68(off_100B50F80, v3);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_100580A48(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unsigned int a4)
{
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a3 ? "Enabling" : "Disabling";
    memset(out, 0, sizeof(out));
    uuid_unparse_upper(a2, out);
    sub_100007E30(__p, out);
    v10 = v20 >= 0 ? __p : __p[0];
    *out = 136446722;
    *&out[4] = v9;
    *&out[12] = 1024;
    *&out[14] = a4;
    *&out[18] = 2082;
    *&out[20] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s high priority stream for %d ms for device UUID %{public}s", out, 0x1Cu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  uuid_copy(out, a2);
  if (*(a1 + 8) != 1 || (v11 = sub_10004E34C(a1 + 48, out), a1 + 56 == v11))
  {
    v16 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      memset(out, 0, sizeof(out));
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      v17 = v20 >= 0 ? __p : __p[0];
      *out = 136446210;
      *&out[4] = v17;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to find acl connection handle for %{public}s", out, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v12 = *(v11 + 48);
    if (a3)
    {
      if (qword_100B50910 != -1)
      {
        sub_10084564C();
      }

      ++*(off_100B50908 + 27);
    }

    if (*(sub_10000C7D0() + 800) < 0x7D0u || *(sub_10000C7D0() + 800) > 0xF9Fu)
    {
      v18 = sub_10000C7D0();
      (*(*v18 + 56))(v18, *(v12 + 48) | (*(v12 + 52) << 32), 17, 4, a3, 1, 1, 0);
    }

    else
    {
      v13 = sub_10000C7D0();
      if (a3)
      {
        v14 = 4;
      }

      else
      {
        v14 = 0;
      }

      if (a3)
      {
        v15 = a4;
      }

      else
      {
        v15 = 0;
      }

      (*(*v13 + 1976))(v13, v12, v14, v15);
    }
  }
}

void sub_100580D34(uint64_t a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_100845674();
  }

  sub_10057F524(qword_100B50F70, *(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 48), *(a1 + 56), *(a1 + 60));
  if (qword_100B50910 != -1)
  {
    sub_100845688();
  }

  *(off_100B50908 + 27) = 0;
}

void sub_100580DAC(uint64_t a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_100845674();
  }

  v2 = qword_100B50F70;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_100580084(v2, v3, v4);
}

void sub_100580E04(uint64_t a1)
{
  if (qword_100B50F78 != -1)
  {
    sub_100845674();
  }

  v2 = qword_100B50F70;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 44);
  v6 = *(a1 + 46);
  v7 = *(a1 + 40);

  sub_100580460(v2, v3, v4, v5, v6, v7);
}

void sub_100580E70(uint64_t a1, uint64_t a2)
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
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_1005816B4((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_100580F04(uint64_t a1, void *a2)
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

void sub_100580FD8(uint64_t a1)
{
  sub_100581010(a1);

  operator delete();
}

uint64_t sub_100581010(uint64_t a1)
{
  *a1 = off_100AFDD00;

  sub_10000CEDC(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10058127C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100581320();
  }

  return result;
}

void sub_10058138C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

char *sub_1005816B4(void *a1, char *__src, char *a3)
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

void sub_100581850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10058188C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1005818EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_100044BBC(a1 + 48);
  *(a1 + 112) = a2;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = -1;
  *(a1 + 148) = 0;
  *(a1 + 156) = 2;
  return a1;
}

uint64_t sub_100581958(void *a1)
{
  sub_10007A068(a1 + 6);

  return sub_1004F26D8(a1);
}

uint64_t sub_100581994()
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, &unk_100BCE5B0);
  qword_100BCE5F0 = 0;
  sub_10000801C(v7);
  v0 = qword_100B6F0D0;
  if (qword_100B6F0D0)
  {
    free(qword_100B6F0D0);
    qword_100B6F0D0 = 0;
  }

  sub_100581BC8(v0, 0);
  v1 = sub_10000E92C();
  sub_100007E30(buf, "SDPMirroring");
  sub_100007E30(__p, "DisableSDPMirroring");
  (*(*v1 + 72))(v1, buf, __p, &byte_100B6F0D8);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(*buf);
  }

  v2 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = byte_100B6F0D8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SDP Mirroring is disabled: %d", buf, 8u);
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v3 = sub_1002FA280(&off_100AFDF38);
  sub_1002F8CF0(byte_100B6F0D8);
  sub_100022214(buf);
  if (v3 && os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
  {
    sub_10084569C();
  }

  sub_10002249C(buf);
  return sub_1000088CC(v7);
}

uint64_t sub_100581BC8(uint64_t a1, char a2)
{
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, &unk_100BCE5B0);
  v3 = *(&xmmword_100BCE618 + 1);
  if (*(&xmmword_100BCE618 + 1))
  {
    v4 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing the client queue (had %lu queries)", buf, 0xCu);
    }

    sub_1005868D0(v11, &qword_100BCE5F8);
    while (*(&xmmword_100BCE618 + 1))
    {
      *&xmmword_100BCE618 = xmmword_100BCE618 + 1;
      --*(&xmmword_100BCE618 + 1);
      sub_100374F94(&qword_100BCE5F8, 1);
    }
  }

  if ((a2 & 1) == 0)
  {
    v5 = qword_100BCE5F0;
    if (qword_100BCE5F0)
    {
      v6 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We don't want to keep the current query alive", buf, 2u);
        v5 = qword_100BCE5F0;
      }

      *(v5 + 120) = 0;
    }
  }

  sub_10000801C(v10);
  if (*(&v12 + 1))
  {
    v7 = *(*(*(&v11[0] + 1) + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF));
    v8 = v7[15];
    if (v8)
    {
      (*(*v8 + 16))(v8, v7, 308);
    }

    sub_10007A068(v7 + 6);
    sub_1004F26D8(v7);
    operator delete();
  }

  sub_1000088CC(v10);
  return sub_1003617DC(v11);
}

void sub_100581E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1003617DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100581E58()
{
  v0 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SdpClient::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v5 = 0;
  sub_100007F88(buf, &unk_100BCE5B0);
  if (qword_100B6F0D0)
  {
    *(qword_100B6F0D0 + 212) = 1;
  }

  sub_10000801C(buf);
  v1 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SdpClient::stackWillStop exit", v3, 2u);
  }

  return sub_1000088CC(buf);
}

void sub_100581F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100581F48(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, &unk_100BCE628);
  if (byte_100B54900)
  {
    sub_10000801C(v9);
    *(a1 + 120) = a2;
    *(a1 + 128) = 1;
    v8[0] = 0;
    v8[1] = 0;
    sub_100007F88(v8, &unk_100BCE5B0);
    if (qword_100BCE5F0)
    {
      *buf = a1;
      sub_10058660C(&qword_100BCE5F8, buf);
    }

    else
    {
      if (*(&xmmword_100BCE618 + 1))
      {
        sub_1000D660C();
      }

      qword_100BCE5F0 = a1;
    }

    v5 = *(&xmmword_100BCE618 + 1);
    sub_10000801C(v8);
    if (v5)
    {
      v6 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Waiting for %zu queries ahead of us", buf, 0xCu);
      }
    }

    else
    {
      sub_100582148(a1, 0);
    }

    sub_1000088CC(v8);
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_10084570C();
    }

    sub_10000801C(v9);
    v4 = 17;
    (*(*a2 + 16))(a2, a1, 17);
  }

  sub_1000088CC(v9);
  return v4;
}

void sub_100582114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1000088CC(&a9);
  sub_1000088CC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100582148(uint64_t a1, int a2)
{
  v3 = qword_100B6F0D0;
  if (qword_100B6F0D0)
  {
    v4 = *qword_100B6F0D0;
  }

  else
  {
    v3 = malloc_type_malloc(0xD8uLL, 0x1020040C4BBD58BuLL);
    qword_100B6F0D0 = v3;
    v4 = *(a1 + 112);
    *v3 = v4;
    v3[52] = 0;
    *(v3 + 212) = 0;
  }

  v6 = qword_100BCE938;
  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      if (v3[52])
      {
        v7 = "Retrying connection to";
      }

      else
      {
        v7 = "Connecting to";
      }

      sub_1000E5A58(v4, __p);
      if (v19 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      *buf = 136446466;
      v21 = v7;
      v22 = 2082;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s SDP server for device %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(*__p);
      }

      v6 = qword_100BCE938;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1005825C4(*(qword_100BCE5F0 + 132));
      *__p = 136315394;
      *&__p[4] = v9;
      *&__p[12] = 2080;
      *&__p[14] = "SDP_CONNECT_STATE";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", __p, 0x16u);
    }

    *(qword_100BCE5F0 + 132) = 1;
    if (sub_100538D24(*qword_100B6F0D0))
    {
      v10 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*qword_100B6F0D0, __p);
        v11 = v19 >= 0 ? __p : *__p;
        *buf = 136446210;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Applying SDP workaround for Type S Game Controllers to device %{public}s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(*__p);
        }
      }

      sub_1002F5AD8();
    }

    if (a2)
    {
      v12 = sub_1002F5AE8(sub_1005825E8, sub_100582670, *qword_100B6F0D0 + 128);
      if (v12)
      {
        goto LABEL_27;
      }
    }

    else
    {
      __p[0] = 0;
      sub_1000216B4(__p);
      v12 = sub_1002F5AE8(sub_1005825E8, sub_100582670, *qword_100B6F0D0 + 128);
      sub_10002249C(__p);
      if (v12)
      {
LABEL_27:
        v13 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
        {
          sub_100845748(v12, v13);
        }

        *__p = 0;
        *&__p[8] = 0;
        sub_100007F88(__p, &unk_100BCE5B0);
        v14 = qword_100BCE5F0;
        if (!qword_100BCE5F0)
        {
          sub_1000D660C();
          v14 = qword_100BCE5F0;
        }

        qword_100BCE5F0 = 0;
        if (*(&xmmword_100BCE618 + 1))
        {
          v15 = *(*(qword_100BCE600 + ((xmmword_100BCE618 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (xmmword_100BCE618 & 0x1FF));
          *&xmmword_100BCE618 = xmmword_100BCE618 + 1;
          --*(&xmmword_100BCE618 + 1);
          sub_100374F94(&qword_100BCE5F8, 1);
          qword_100BCE5F0 = v15;
        }

        sub_10000801C(__p);
        v17 = v14[15];
        if (v17)
        {
          (*(*v17 + 16))(v17, v14, 309);
        }

        sub_10007A068(v14 + 6);
        sub_1004F26D8(v14);
        operator delete();
      }
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_1008458A8();
    }

    return 1;
  }
}

const char *sub_1005825C4(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "unknown sdp state";
  }

  else
  {
    return off_100AFE098[a1];
  }
}

void sub_1005825E8(uint64_t a1)
{
  if (a1)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_1008458E4();
    }

    *(qword_100BCE5F0 + 128) = sub_1000DD584(off_100B50A98, a1, 10000);
    v3 = sub_100017F4C();

    sub_10000CA94(v3, &stru_100AFDF88);
  }

  else
  {

    sub_1005826A0();
  }
}

void sub_100582670()
{
  v0 = sub_100017F4C();

  sub_10000CA94(v0, &stru_100AFDF88);
}

void sub_1005826A0()
{
  v24 = xmmword_1008AA1A0;
  v0 = sub_10053C304(*qword_100B6F0D0, &v24);
  v1 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_100BCE5F0)
    {
      v2 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    }

    else
    {
      v2 = "";
    }

    v3 = *(*qword_100B6F0D0 + 792);
    v4 = sub_100539FE8(*qword_100B6F0D0);
    v5 = *(*qword_100B6F0D0 + 583);
    *buf = 136316162;
    v26 = v2;
    v27 = 1024;
    *v28 = v3;
    *&v28[4] = 1024;
    *&v28[6] = v0;
    v29 = 1024;
    v30 = v4;
    v31 = 1024;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Statemachine start: %s, d2d %d, isLocalServiceDiscoveryClassExist %d, AppleBT %d isFullSDPRequired %d", buf, 0x24u);
  }

  v6 = *qword_100B6F0D0;
  if (*(*qword_100B6F0D0 + 792) == 1)
  {
    *(v6 + 792) = 0;
    v23 = unk_100AFDF48;
    v7 = sub_1002F6300(sub_100582B94, 0x30u, &v23);
    if (v7)
    {
      goto LABEL_29;
    }

    v8 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1005825C4(*(qword_100BCE5F0 + 132));
      *buf = 136315394;
      v26 = v9;
      v27 = 2080;
      *v28 = "SDP_SEARCH_D2D_STATE";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
    }

    v10 = qword_100BCE5F0;
    v11 = 3;
    goto LABEL_28;
  }

  if (v0 && sub_10053A020(v6, &v24, 0x201u) && *(qword_100BCE5F0 + 132) != 7 && (*(*qword_100B6F0D0 + 583) & 1) == 0)
  {
    v19 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Executing Service Database State lookup", buf, 2u);
    }

    v23 = unk_100AFDF58;
    v7 = sub_1002F6694(sub_100582D30, 0, &v23);
    v20 = qword_100BCE938;
    if (!v7)
    {
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_1005825C4(*(qword_100BCE5F0 + 132));
        *buf = 136315394;
        v26 = v21;
        v27 = 2080;
        *v28 = "SDP_DATABASE_QUERY_STATE";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
      }

      v10 = qword_100BCE5F0;
      v11 = 5;
      goto LABEL_28;
    }

    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_1008458F8();
    }
  }

  else
  {
    v12 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Executing full SDP", buf, 2u);
    }

    *(*qword_100B6F0D0 + 583) = 0;
    v23 = 0uLL;
    v22 = 0;
    v13 = *(qword_100BCE5F0 + 112);
    v14 = sub_10023E4C8(v13 + 128, &v22);
    v15 = &unk_1008AA1E0;
    if (!v14 && v22 == 97)
    {
      if (sub_100538D24(v13))
      {
        v16 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Overriding SDP search for unauthorized Type S controller", buf, 2u);
        }

        v15 = &unk_1008AA1D0;
      }

      else
      {
        v15 = &unk_1008AA1E0;
      }
    }

    LOBYTE(v23) = 6;
    WORD1(v23) = 1;
    *(&v23 + 1) = v15;
    v7 = sub_1002F6300(sub_100582B94, 0x30u, &v23);
    if (!v7)
    {
      v17 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_1005825C4(*(qword_100BCE5F0 + 132));
        *buf = 136315394;
        v26 = v18;
        v27 = 2080;
        *v28 = "SDP_SEARCH_STATE";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
      }

      v10 = qword_100BCE5F0;
      v11 = 2;
LABEL_28:
      *(v10 + 132) = v11;
    }
  }

LABEL_29:
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_100845968();
    }

    *(qword_100BCE5F0 + 128) = 0;
    sub_100583504();
  }
}

void sub_100582B94(int *a1, unsigned int a2, int a3)
{
  v6 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    v13[0] = 67109634;
    v13[1] = a2;
    v14 = 1024;
    v15 = a3;
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Service search response with %d records, status %{bluetooth:OI_STATUS}u with state %s", v13, 0x18u);
  }

  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_1008459D8();
    }

    *(qword_100BCE5F0 + 128) = 1;
LABEL_7:
    sub_100583504();
    return;
  }

  if (!a2)
  {
    v12 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Service search yields no records, we're done", v13, 2u);
    }

    *(qword_100BCE5F0 + 128) = 0;
    goto LABEL_7;
  }

  v8 = qword_100B6F0D0;
  *(qword_100B6F0D0 + 200) = a2;
  v9 = (v8 + 8);
  v10 = a2;
  do
  {
    v11 = *a1++;
    *v9++ = v11;
    --v10;
  }

  while (v10);
  *(v8 + 204) = 0;
  sub_100583C98();
}

void sub_100582D30(unsigned __int8 *a1, int a2, int a3)
{
  v6 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 1024;
    *&buf[20] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Service database state response with state %s, more %d, status %{bluetooth:OI_STATUS}u", buf, 0x18u);
  }

  if (!a3)
  {
    if ((*a1 & 0xFE) != 6)
    {
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
      {
        sub_100845A48();
      }

      return;
    }

    v12 = qword_100BCE5F0;
    if (*(qword_100BCE5F0 + 132) != 5)
    {
LABEL_62:
      *(v12 + 140) = -1;
      return;
    }

    v43 = xmmword_1008AA1A0;
    v13 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting SDP database state matching", buf, 2u);
    }

    sub_100584D18(a1);
    v14 = qword_100BCE5F0;
    if (*(qword_100BCE5F0 + 140) != -1)
    {
      memset(buf, 0, sizeof(buf));
      v15 = sub_10053BFB4(*(qword_100BCE5F0 + 112), &v43, 0x201u, buf);
      if (v15 && **buf == 1)
      {
        v17 = *(*buf + 8);
        v18 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(qword_100BCE5F0 + 140);
          *v44 = 67109376;
          *&v44[4] = v17;
          *&v44[8] = 1024;
          *&v44[10] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SdpServiceDataBaseState [local 0x%x, remote 0x%x]", v44, 0xEu);
        }

        v20 = qword_100BCE5F0;
        v21 = *(qword_100BCE5F0 + 140);
        v22 = qword_100BCE938;
        v15 = os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT);
        if (v17 == v21)
        {
          if (v15)
          {
            v23 = sub_1005825C4(*(v20 + 132));
            *v44 = 136315394;
            *&v44[4] = v23;
            *&v44[12] = 2080;
            *&v44[14] = "SDP_DATABASE_VERIFY_COMPLETE_STATE";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", v44, 0x16u);
            v20 = qword_100BCE5F0;
          }

          v24 = 8;
        }

        else
        {
          if (v15)
          {
            v28 = sub_1005825C4(*(v20 + 132));
            *v44 = 136315394;
            *&v44[4] = v28;
            *&v44[12] = 2080;
            *&v44[14] = "SDP_DATABASE_CACHE_UPDATE_REQUIRED";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", v44, 0x16u);
            v20 = qword_100BCE5F0;
          }

          v24 = 7;
        }

        *(v20 + 132) = v24;
      }

      v29 = *buf;
      if (*buf != *&buf[8])
      {
        do
        {
          *v44 = 0;
          *&v44[8] = 0;
          *v44 = *v29;
          sub_10037D4F4(v44);
          ++v29;
        }

        while (v29 != *&buf[8]);
        v29 = *buf;
      }

      if (v29)
      {
        *&buf[8] = v29;
        operator delete(v29);
      }

      v14 = qword_100BCE5F0;
      v27 = *(qword_100BCE5F0 + 132);
      if (v27 > 6)
      {
        if (v27 == 7)
        {
          sub_1005826A0(v15, v16);
          goto LABEL_49;
        }

        if (v27 == 8)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v27 == 5)
        {
          v37 = *(qword_100BCE5F0 + 140);
          v38 = qword_100BCE938;
          v39 = os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT);
          if (v37 != -1)
          {
            if (v39)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Local database state not found, but remote state exists, full SDP", buf, 2u);
              v38 = qword_100BCE938;
              v14 = qword_100BCE5F0;
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v40 = sub_1005825C4(*(v14 + 132));
              *buf = 136315394;
              *&buf[4] = v40;
              *&buf[12] = 2080;
              *&buf[14] = "SDP_DATABASE_CACHE_UPDATE_REQUIRED";
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
              v14 = qword_100BCE5F0;
            }

            *(v14 + 132) = 7;
            v41 = sub_100017F4C();
            sub_10000CA94(v41, &stru_100AFE018);
            goto LABEL_49;
          }

          if (v39)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Local database state not found and remote state does not exist, move onto RFCOMM", buf, 2u);
            v38 = qword_100BCE938;
            v14 = qword_100BCE5F0;
          }

          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_48;
          }

          v42 = sub_1005825C4(*(v14 + 132));
          *buf = 136315394;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = "SDP_DATABASE_RFCOMM_UPDATE_STATE";
          v32 = v38;
          goto LABEL_47;
        }

        if (v27 == 6)
        {
LABEL_45:
          v30 = qword_100BCE938;
          if (!os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
LABEL_48:
            *(v14 + 132) = 9;
LABEL_49:
            if (*(qword_100BCE5F0 + 132) == 9)
            {
              v33 = sub_10054CCA8(*(qword_100BCE5F0 + 112), qword_100BCE5F0);
              v34 = qword_100BCE938;
              v35 = os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT);
              if (v33)
              {
                if (v35)
                {
                  v36 = *(qword_100BCE5F0 + 40);
                  *buf = 134217984;
                  *&buf[4] = v36;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found %lu services supported RFCOMM, starting channel query", buf, 0xCu);
                }

                byte_100B54901 = 0;
                sub_100585124();
              }

              else
              {
                if (v35)
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No RFCOMM services, we're done", buf, 2u);
                }

                *(qword_100BCE5F0 + 128) = 0;
                sub_100583504();
              }
            }

            v12 = qword_100BCE5F0;
            goto LABEL_62;
          }

          v31 = sub_1005825C4(v27);
          *buf = 136315394;
          *&buf[4] = v31;
          *&buf[12] = 2080;
          *&buf[14] = "SDP_DATABASE_RFCOMM_UPDATE_STATE";
          v32 = v30;
LABEL_47:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
          v14 = qword_100BCE5F0;
          goto LABEL_48;
        }
      }

      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
      {
        sub_100845A84(v27);
      }

      goto LABEL_49;
    }

    v25 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_1005825C4(*(v14 + 132));
      *buf = 136315394;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = "SDP_DATABASE_REMOTE_STATE_NOT_FOUND";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
      v14 = qword_100BCE5F0;
    }

    v27 = 6;
    *(v14 + 132) = 6;
    goto LABEL_45;
  }

  if (a3 == 802)
  {
    v8 = qword_100BCE5F0;
    v9 = qword_100BCE938;
    if (*(qword_100BCE5F0 + 132) == 5)
    {
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote device does not support ServiceDataBaseState restarting full SDP", buf, 2u);
        v9 = qword_100BCE938;
        v8 = qword_100BCE5F0;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_1005825C4(*(v8 + 132));
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = "SDP_DATABASE_CACHE_UPDATE_REQUIRED";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
        v8 = qword_100BCE5F0;
      }

      *(v8 + 132) = 7;
      v11 = sub_100017F4C();
      sub_10000CA94(v11, &stru_100AFDFF8);
      return;
    }
  }

  else
  {
    v9 = qword_100BCE938;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100845B00();
  }

  *(qword_100BCE5F0 + 128) = 1;
  sub_100583504();
}

void sub_1005834DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100583504()
{
  v0 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v1 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    v3 = 136315394;
    v4 = v1;
    v5 = 2080;
    v6 = "SDP_DISCONNECT_STATE";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", &v3, 0x16u);
  }

  *(qword_100BCE5F0 + 132) = 10;
  if (sub_1002F61A8())
  {
    v2 = sub_100017F4C();
    sub_10000CA94(v2, &stru_100AFDF88);
  }
}

void sub_1005835EC()
{
  v0 = *qword_100B6F0D0;
  v20 = *(*qword_100B6F0D0 + 132);
  v19 = *(*qword_100B6F0D0 + 128);
  if (bswap64(v19 | (v20 << 32)) >= 0xA9539FFFF0001 && bswap64(v19 | (v20 << 32)) <= 0xA9551FFFFFFFFLL)
  {
    v1 = qword_100BCE5F0;
    v2 = *(qword_100BCE5F0 + 128);
    if (v2 == 307 || (v2 - 316) <= 0x12)
    {
      v4 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v0, __p);
        if (v24 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = *__p;
        }

        *buf = 136446210;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unsupported legacy Q6 keyboard discovered in device %{public}s", buf, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*__p);
        }

        v1 = qword_100BCE5F0;
      }

      *(v1 + 128) = 109;
LABEL_16:
      if (qword_100B6F0D0)
      {
        free(qword_100B6F0D0);
        qword_100B6F0D0 = 0;
      }

      *__p = 0;
      *&__p[8] = 0;
      sub_100007F88(__p, &unk_100BCE5B0);
      v6 = qword_100BCE5F0;
      if (!qword_100BCE5F0)
      {
        sub_1000D660C();
        v6 = qword_100BCE5F0;
      }

      qword_100BCE5F0 = 0;
      if (*(&xmmword_100BCE618 + 1))
      {
        v7 = *(*(qword_100BCE600 + ((xmmword_100BCE618 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (xmmword_100BCE618 & 0x1FF));
        *&xmmword_100BCE618 = xmmword_100BCE618 + 1;
        --*(&xmmword_100BCE618 + 1);
        sub_100374F94(&qword_100BCE5F8, 1);
        qword_100BCE5F0 = v7;
      }

      sub_10000801C(__p);
      v16 = *(v6 + 120);
      if (v16)
      {
        (*(*v16 + 16))(v16, v6, *(v6 + 128));
      }

      sub_10007A068(v6 + 48);
      sub_1004F26D8(v6);
      operator delete();
    }
  }

  if (*(qword_100B6F0D0 + 212))
  {
    goto LABEL_16;
  }

  v8 = *(qword_100B6F0D0 + 208);
  v9 = qword_100BCE5F0;
  v10 = *(qword_100BCE5F0 + 156);
  v11 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v0, buf);
    if (v22 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    v13 = *(qword_100BCE5F0 + 128);
    *__p = 136316162;
    *&__p[4] = "handleDisconnectInd";
    *&__p[12] = 2082;
    *&__p[14] = v12;
    v24 = 1024;
    v25 = v13;
    v26 = 1024;
    v27 = v8;
    v28 = 1024;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: device %{public}s, result %d, attempts %d, totalRetries %d", __p, 0x28u);
    if (v22 < 0)
    {
      operator delete(*buf);
    }

    v9 = qword_100BCE5F0;
  }

  v14 = *(v9 + 128);
  if (v14 != 307 && (v14 - 316) > 0x12)
  {
    if (v14 != 314 && v14 != 310)
    {
      goto LABEL_16;
    }

    if (v8 >= v10 && v8 != 0)
    {
      goto LABEL_16;
    }

    ++*(qword_100B6F0D0 + 208);
    v18 = sub_100017F4C();
    sub_10008E008(v18, 500, &stru_100AFDF68);
  }

  else
  {
    if (v8 >= v10)
    {
      goto LABEL_16;
    }

    ++*(qword_100B6F0D0 + 208);
    sub_100582148(v9, 1);
  }
}

void sub_100583A00()
{
  v0 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v1 = __p;
    sub_1000E5A58(*qword_100B6F0D0, __p);
    if (v13 < 0)
    {
      v1 = __p[0];
    }

    v2 = *(qword_100B6F0D0 + 208);
    v3 = *(qword_100BCE5F0 + 128);
    v4 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    *buf = 136446978;
    v15 = v1;
    v16 = 1024;
    *v17 = v3;
    *&v17[4] = 1024;
    *&v17[6] = v2;
    v18 = 2080;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "SDP disconnected from device %{public}s with result %d, outstanding attempts %d, state %s", buf, 0x22u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = qword_100BCE5F0;
  if ((*(qword_100BCE5F0 + 132) - 2) <= 2)
  {
    v6 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(v5 + 112) + 616);
      *buf = 67109120;
      LODWORD(v15) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SDP disconnected during query states, version %d", buf, 8u);
      v5 = qword_100BCE5F0;
    }

    v8 = *(v5 + 112);
    if (!*(v8 + 616))
    {
      sub_100536730(v8);
      v5 = qword_100BCE5F0;
    }
  }

  v9 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1005825C4(*(v5 + 132));
    *buf = 136315394;
    v15 = v10;
    v16 = 2080;
    *v17 = "SDP_IDLE_STATE";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
    v5 = qword_100BCE5F0;
  }

  *(v5 + 132) = 0;
  if (*(qword_100B6F0D0 + 212))
  {
    v11 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SDPClient Disconnect dispatch called during system shut down, clean up", buf, 2u);
    }

    sub_1005835EC();
  }

  else
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_1005835EC();
    sub_10002249C(buf);
  }
}

void sub_100583C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_100583C98()
{
  v23 = unk_100AFDFA8;
  v0 = qword_100B6F0D0;
  v1 = *(qword_100B6F0D0 + 204);
  v2 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v0 + 200);
    if (qword_100BCE5F0)
    {
      v4 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    }

    else
    {
      v4 = "";
    }

    *buf = 67109634;
    *v25 = v1;
    *&v25[4] = 1024;
    *&v25[6] = v3;
    *v26 = 2080;
    *&v26[2] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Issuing attribute request service-index [current %d, total %d], state %s", buf, 0x18u);
    v6 = qword_100B6F0D0;
    v5 = *(qword_100B6F0D0 + 204);
  }

  else
  {
    v5 = v1;
    v6 = v0;
  }

  if (v5 == *(v6 + 200))
  {
    v7 = qword_100BCE5F0;
    v8 = *(qword_100BCE5F0 + 132);
    if (v8 == 3)
    {
      v12 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "D2D look up complete";
        goto LABEL_23;
      }
    }

    else
    {
      if (v8 != 5)
      {
        if (v8 == 4)
        {
          v22 = unk_100AFDFB8;
          v9 = qword_100BCE938;
          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DID complete, start service discovery class search", buf, 2u);
          }

          v10 = sub_1002F6300(sub_100582B94, 0x30u, &v22);
          v11 = qword_100BCE938;
          if (v10)
          {
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
            {
              sub_100845C64();
            }

LABEL_30:
            *(qword_100BCE5F0 + 128) = 0;
            goto LABEL_31;
          }

          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
            v18 = sub_1005825C4(*(qword_100BCE5F0 + 132));
            *buf = 136315394;
            *v25 = v18;
            *&v25[8] = 2080;
            *v26 = "SDP_DATABASE_QUERY_STATE";
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
          }

          v19 = qword_100BCE5F0;
          v20 = 5;
        }

        else
        {
          v14 = qword_100BCE938;
          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
            v15 = sub_1005825C4(v8);
            *buf = 136315138;
            *v25 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found all services, starting DID while in state %s", buf, 0xCu);
          }

          v22 = unk_100AFDFC8;
          v16 = sub_1002F6300(sub_100582B94, 0x30u, &v22);
          v17 = qword_100BCE938;
          if (v16)
          {
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
            {
              sub_100845CD4();
            }

            goto LABEL_30;
          }

          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
            v21 = sub_1005825C4(*(qword_100BCE5F0 + 132));
            *buf = 136315394;
            *v25 = v21;
            *&v25[8] = 2080;
            *v26 = "SDP_DID_STATE";
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SDP Client State Change: %s -> %s\n", buf, 0x16u);
          }

          v19 = qword_100BCE5F0;
          v20 = 4;
        }

        *(v19 + 132) = v20;
        return;
      }

      v12 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "Database state lookup complete";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
        v7 = qword_100BCE5F0;
      }
    }

    *(v7 + 128) = 0;
LABEL_31:
    sub_100583504();
    return;
  }

  if (sub_1002F6694(sub_1005840D4, *(v0 + 8 + 4 * v1), &v23) && os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
  {
    sub_100845BF4();
  }
}

void sub_1005840D4(uint64_t a1, int a2, int a3)
{
  v6 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    *buf = 67109378;
    *&buf[4] = a2;
    *&buf[8] = 2080;
    *&buf[10] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Service attribute response, more %d, state is %s", buf, 0x12u);
  }

  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_100845D44();
    }

    v8 = qword_100BCE5F0;
    v9 = *(qword_100BCE5F0 + 112);
    if (v9)
    {
      if (a3 == 802 && *(qword_100BCE5F0 + 132) == 5)
      {
        *(qword_100BCE5F0 + 128) = 0;
        sub_100583504();
      }

      else
      {
        if (!*(v9 + 616))
        {
          sub_100536730(v9);
          v8 = qword_100BCE5F0;
        }

        *(v8 + 128) = 1;
        sub_100583504();
      }
    }

    else if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_100845DB4();
    }

    return;
  }

  if ((*a1 & 0xFE) == 6)
  {
    v10 = *(a1 + 2);
    if (v10)
    {
      v39 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "This is weird, there are an odd number of elements in this sdp query %d", buf, 8u);
      }
    }

    else if (*(a1 + 2))
    {
      v11 = 0;
      while (1)
      {
        __p[0] = 0;
        __p[1] = 0;
        v12 = (*(a1 + 8) + 16 * v11);
        *__p = *v12;
        v76 = 0uLL;
        v76 = v12[1];
        v75 = 0uLL;
        if (LOBYTE(__p[0]) != 1)
        {
          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
          {
            sub_100845DF0(&v73, v74);
          }

          goto LABEL_73;
        }

        v13 = __p[1];
        if (LODWORD(__p[1]) == 9)
        {
          break;
        }

        if (LODWORD(__p[1]) != 1)
        {
          goto LABEL_51;
        }

        if (v76 == 6 && WORD1(v76))
        {
          v14 = 0;
          v15 = 0;
          do
          {
            if (*(*(&v76 + 1) + v14) == 3 && sub_10037E830(&v75, (*(&v76 + 1) + v14)))
            {
              v16 = qword_100B6F0A8;
              if (qword_100B6F0A8 >= qword_100B6F0B0)
              {
                v18 = (qword_100B6F0A8 - qword_100B6F0A0) >> 4;
                v19 = v18 + 1;
                if ((v18 + 1) >> 60)
                {
                  sub_1000C7698();
                }

                v20 = qword_100B6F0B0 - qword_100B6F0A0;
                if ((qword_100B6F0B0 - qword_100B6F0A0) >> 3 > v19)
                {
                  v19 = v20 >> 3;
                }

                if (v20 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v21 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v21 = v19;
                }

                if (v21)
                {
                  sub_100551490(&qword_100B6F0A0, v21);
                }

                v22 = (16 * v18);
                *v22 = v75;
                v17 = 16 * v18 + 16;
                v23 = v22 - (qword_100B6F0A8 - qword_100B6F0A0);
                memcpy(v23, qword_100B6F0A0, qword_100B6F0A8 - qword_100B6F0A0);
                v24 = qword_100B6F0A0;
                qword_100B6F0A0 = v23;
                qword_100B6F0A8 = v17;
                qword_100B6F0B0 = 0;
                if (v24)
                {
                  operator delete(v24);
                }
              }

              else
              {
                *qword_100B6F0A8 = v75;
                v17 = v16 + 16;
              }

              qword_100B6F0A8 = v17;
              v25 = qword_100BCE938;
              if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
              {
                v26 = sub_10030253C(*(*(&v76 + 1) + v14 + 8));
                *buf = 136446466;
                *&buf[4] = v26;
                *&buf[12] = 1024;
                *&buf[14] = 1;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found service class %{public}s HFP: %d", buf, 0x12u);
              }
            }

            ++v15;
            v14 += 16;
          }

          while (v15 < WORD1(v76));
        }

LABEL_73:
        v11 += 2;
        if (v11 >= *(a1 + 2))
        {
          goto LABEL_84;
        }
      }

      if (v76 != 6)
      {
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
        {
          sub_100845E1C(&v71, v72);
        }

        goto LABEL_73;
      }

      v27 = WORD1(v76);
      if (WORD1(v76))
      {
        v28 = 0;
        v29 = 0;
        do
        {
          if (*(*(&v76 + 1) + v28) == 6)
          {
            v30 = *(&v76 + 1) + v28;
            v31 = qword_100BCE5F0;
            *(qword_100BCE5F0 + 148) = *(*(*(&v76 + 1) + v28 + 8) + 8);
            *(v31 + 152) = *(*(v30 + 8) + 24);
          }

          else
          {
            v32 = qword_100BCE938;
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "AttributeValue inside OI_ATTRID_BluetoothProfileDescriptorList wasn't a OI_DATAELEM_SEQ, skipping", buf, 2u);
              v27 = WORD1(v76);
            }
          }

          ++v29;
          v28 += 16;
        }

        while (v29 < v27);
        v13 = __p[1];
LABEL_51:
        if (v13 != 4)
        {
          goto LABEL_64;
        }

        if (v76 != 6)
        {
          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
          {
            sub_100845E1C(&v69, v70);
          }

          goto LABEL_73;
        }

        if (WORD1(v76))
        {
          v33 = 0;
          v34 = 0;
          do
          {
            if (*(*(&v76 + 1) + v33) == 6)
            {
              v35 = *(*(&v76 + 1) + v33 + 8);
              v36 = *(v35 + 8);
              v37 = *(v35 + 24);
              if (v36 == 25)
              {
                sub_100543A38(*(qword_100BCE5F0 + 112), v37);
              }

              else if (v36 == 23)
              {
                sub_100543B38(*(qword_100BCE5F0 + 112), v37);
              }
            }

            else if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
            {
              sub_100845E48(&v67, v68);
            }

            ++v34;
            v33 += 16;
          }

          while (v34 < WORD1(v76));
          v13 = __p[1];
LABEL_64:
          if (v13 == 785)
          {
            if (v76 != 1)
            {
              if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
              {
                sub_100845E74(&v65, v66);
              }

              goto LABEL_73;
            }

            *(qword_100BCE5F0 + 154) = WORD4(v76);
          }
        }
      }

      if (sub_10037E830(&v75, &v76))
      {
        *buf = &__p[1];
        v38 = sub_10041F130(&qword_100B6F0B8, &__p[1]);
        *(v38 + 5) = v75;
      }

      goto LABEL_73;
    }

LABEL_84:
    if (a2)
    {
      if (!sub_1002F6C78())
      {
        return;
      }
    }

    else
    {
      *&v76 = 0;
      v40 = sub_10023DB58(*(qword_100BCE5F0 + 112) + 128, &v76);
      v42 = qword_100B6F0A0;
      v41 = qword_100B6F0A8;
      if (v40)
      {
        v43 = 1;
      }

      else
      {
        v43 = qword_100B6F0A0 == qword_100B6F0A8;
      }

      if (!v43)
      {
        do
        {
          v44 = *(v42 + 8);
          if ((v44 - 4364) > 0x12 || ((1 << (v44 - 12)) & 0x4000D) == 0)
          {
            v51 = qword_100BCE938;
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
            {
              v52 = sub_10030253C(v44);
              v53 = *(qword_100BCE5F0 + 152);
              v54 = *(qword_100BCE5F0 + 154);
              sub_1000E5A58(*(qword_100BCE5F0 + 112), __p);
              v55 = __p;
              if (v64 < 0)
              {
                v55 = __p[0];
              }

              *buf = 136447234;
              *&buf[4] = v52;
              *&buf[12] = 1024;
              *&buf[14] = v53;
              v78 = 1024;
              v79 = v54;
              v80 = 2082;
              v81 = v55;
              v82 = 2048;
              v83 = v76;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Found service class %{public}s with profile version: %x, supported features: %x. Not creating remote SDP record for device %{public}s with hci handle: %p", buf, 0x2Cu);
              if (v64 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          else
          {
            v46 = qword_100BCE938;
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
            {
              v47 = sub_10030253C(v44);
              v48 = *(qword_100BCE5F0 + 152);
              v49 = *(qword_100BCE5F0 + 154);
              sub_1000E5A58(*(qword_100BCE5F0 + 112), __p);
              v50 = __p;
              if (v64 < 0)
              {
                v50 = __p[0];
              }

              *buf = 136447234;
              *&buf[4] = v47;
              *&buf[12] = 1024;
              *&buf[14] = v48;
              v78 = 1024;
              v79 = v49;
              v80 = 2082;
              v81 = v50;
              v82 = 2048;
              v83 = v76;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Found service class %{public}s with profile version: %x, supported features: %x. Creating/Updating remote SDP record for device %{public}s with hci handle: %p", buf, 0x2Cu);
              if (v64 < 0)
              {
                operator delete(__p[0]);
              }
            }

            sub_1002F8998(v76, v44, *(qword_100BCE5F0 + 152), *(qword_100BCE5F0 + 154));
          }

          if (v44 > 4381)
          {
            if (v44 <= 4402)
            {
              if (v44 == 4382)
              {
                sub_100542FF0(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                sub_100543134(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 154));
              }

              else if (v44 == 4388)
              {
                sub_100543738(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
              }
            }

            else
            {
              switch(v44)
              {
                case 0x1133:
                  sub_100543338(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                  break;
                case 0x1200:
                  sub_100543538(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                  break;
                case 0x1801:
                  sub_100543838(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                  break;
              }
            }
          }

          else if (v44 > 4363)
          {
            if ((v44 - 4366) >= 2)
            {
              if (v44 == 4364)
              {
                sub_100542DE4(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                sub_100542F28(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 154));
              }
            }

            else
            {
              sub_100542BD8(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
              sub_100542D1C(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 154));
            }
          }

          else
          {
            switch(v44)
            {
              case 0x1101:
                sub_100543638(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                break;
              case 0x1105:
                sub_100543438(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                break;
              case 0x110B:
                sub_1005431B4(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 152));
                sub_1005432B4(*(qword_100BCE5F0 + 112), *(qword_100BCE5F0 + 154));
                break;
            }
          }

          v42 += 16;
          v41 = qword_100B6F0A8;
        }

        while (v42 != qword_100B6F0A8);
        v42 = qword_100B6F0A0;
      }

      *(qword_100BCE5F0 + 148) = 0;
      if (v42 != v41)
      {
        do
        {
          *buf = *v42;
          v56 = *(qword_100BCE5F0 + 112);
          sub_10041F568(v62, &qword_100B6F0B8);
          sub_10053B3EC(v56, buf, v62);
          sub_10000CEDC(v62, v62[1]);
          sub_10037D4F4(buf);
          v42 += 16;
        }

        while (v42 != qword_100B6F0A8);
      }

      v57 = qword_100B6F0B8;
      if (qword_100B6F0B8 != &qword_100B6F0C0)
      {
        do
        {
          *buf = *(v57 + 40);
          sub_10037D4F4(buf);
          v58 = *(v57 + 8);
          if (v58)
          {
            do
            {
              v59 = v58;
              v58 = *v58;
            }

            while (v58);
          }

          else
          {
            do
            {
              v59 = *(v57 + 16);
              v43 = *v59 == v57;
              v57 = v59;
            }

            while (!v43);
          }

          v57 = v59;
        }

        while (v59 != &qword_100B6F0C0);
      }

      sub_10000CEDC(&qword_100B6F0B8, qword_100B6F0C0);
      qword_100B6F0B8 = &qword_100B6F0C0;
      qword_100B6F0C8 = 0;
      qword_100B6F0C0 = 0;
      qword_100B6F0A8 = qword_100B6F0A0;
    }

    v60 = qword_100BCE5F0;
    if (*(qword_100BCE5F0 + 132) == 5)
    {
      v61 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Database state lookup complete", buf, 2u);
        v60 = qword_100BCE5F0;
      }

      *(v60 + 128) = 0;
      sub_100583504();
    }

    else
    {
      ++*(qword_100B6F0D0 + 204);
      sub_100583C98();
    }
  }

  else if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
  {
    sub_100845A48();
  }
}

void sub_100584D18(unsigned __int8 *a1)
{
  v2 = *a1;
  if ((v2 - 1) < 2)
  {
    v4 = qword_100BCE5F0;
    v5 = *(qword_100BCE5F0 + 136);
    if (v5 == 2)
    {
      *(qword_100BCE5F0 + 140) = *(a1 + 2);
      v10 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "SDP_PARSER_FOUND_ATTRIBUTE_ID_STATE";
        v14 = 2080;
        v15 = "SDP_PARSER_IDLE_STATE";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SDP Client Parser State Change: %s -> %s\n", buf, 0x16u);
        v4 = qword_100BCE5F0;
      }

      *(v4 + 136) = 0;
    }

    else if (v5 == 1 && *(a1 + 2) == 513)
    {
      v6 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "SDP_PARSER_FOUND_SERVICE_CLASS_STATE";
        v14 = 2080;
        v15 = "SDP_PARSER_FOUND_ATTRIBUTE_ID_STATE";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SDP Client Parser State Change: %s -> %s\n", buf, 0x16u);
        v4 = qword_100BCE5F0;
      }

      *(v4 + 136) = 2;
    }
  }

  else if ((v2 - 6) >= 2)
  {
    if (v2 == 3)
    {
      v11 = xmmword_1008AA100;
      if (sub_10037E730(a1, &v11))
      {
        v7 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(qword_100BCE5F0 + 136);
          if (v8 > 3)
          {
            v9 = "unknown sdp parser state";
          }

          else
          {
            v9 = off_100AFE0F0[v8];
          }

          *buf = 136315394;
          v13 = v9;
          v14 = 2080;
          v15 = "SDP_PARSER_FOUND_SERVICE_CLASS_STATE";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SDP Client Parser State Change: %s -> %s\n", buf, 0x16u);
        }

        *(qword_100BCE5F0 + 136) = 1;
      }
    }
  }

  else if (*(a1 + 1))
  {
    v3 = 0;
    do
    {
      sub_100584D18(*(a1 + 1) + 16 * v3++);
    }

    while (*(a1 + 1) > v3);
  }
}

void sub_100584FA4(unsigned __int8 *a1)
{
  v2 = *a1;
  if ((v2 - 1) < 2)
  {
    if (*(qword_100BCE5F0 + 136) == 3)
    {
      *(qword_100BCE5F0 + 144) = *(a1 + 2);
    }
  }

  else if ((v2 - 6) >= 2)
  {
    if (v2 == 3)
    {
      v7 = xmmword_1008A5270;
      if (sub_10037E730(a1, &v7))
      {
        v4 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(qword_100BCE5F0 + 136);
          if (v5 > 3)
          {
            v6 = "unknown sdp parser state";
          }

          else
          {
            v6 = off_100AFE0F0[v5];
          }

          *buf = 136315394;
          v9 = v6;
          v10 = 2080;
          v11 = "SDP_PARSER_FOUND_RFCOMM_UUID_STATE";
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDP Client Parser State Change: %s -> %s\n", buf, 0x16u);
        }

        *(qword_100BCE5F0 + 136) = 3;
      }
    }
  }

  else if (*(a1 + 1))
  {
    v3 = 0;
    do
    {
      sub_100584FA4(*(a1 + 1) + 16 * v3++);
    }

    while (*(a1 + 1) > v3);
  }
}

void sub_100585124()
{
  v0 = qword_100BCE5F0;
  v1 = *(qword_100BCE5F0 + 132);
  if (v1 != 9)
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_100845EA0(v1);
    }

    return;
  }

  if (*(qword_100BCE5F0 + 40))
  {
    while (1)
    {
      v41 = xmmword_1008AA120;
      v42 = xmmword_1008AA110;
      v39 = xmmword_1008AA140;
      v40 = xmmword_1008AA130;
      v38 = xmmword_1008AA150;
      v36 = xmmword_1008AA170;
      v37 = xmmword_1008AA160;
      v34 = unk_100AFDFD8;
      v35 = xmmword_1008AA180;
      v33 = unk_100AFDFE8;
      v32 = 0uLL;
      v32 = *(*(*(v0 + 8) + ((*(v0 + 32) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v0 + 32));
      if (!sub_10037E730(&v32, &v42) && !sub_10037E730(&v32, &v41) && !sub_10037E730(&v32, &v40) && !sub_10037E730(&v32, &v39) && !sub_10037E730(&v32, &v38) && !sub_10037E730(&v32, &v36) && !sub_10037E730(&v32, &v35) && !sub_10037E730(&v32, &v37))
      {
        if (byte_100B54901 != 1)
        {
          goto LABEL_24;
        }

        if (!sub_10037E730(&v32, &v34))
        {
          if ((byte_100B54901 & 1) == 0)
          {
LABEL_24:
            v4 = 0;
            goto LABEL_26;
          }

          if (!sub_10037E730(&v32, &v33))
          {
            break;
          }
        }
      }

      v2 = qword_100BCE5F0;
      *(qword_100BCE5F0 + 32) = vaddq_s64(*(qword_100BCE5F0 + 32), xmmword_1008A6430);
      sub_1004F2E10(v2, 1);
      v0 = qword_100BCE5F0;
      if (!*(qword_100BCE5F0 + 40))
      {
        goto LABEL_16;
      }
    }

    v4 = byte_100B54901;
LABEL_26:
    v51[0] = 0;
    v51[1] = 0;
    *buf = 1048579;
    v48 = v51;
    v49 = 131075;
    v50 = 3;
    v46[0] = xmmword_1008AA240;
    v46[1] = unk_1008AA250;
    v45 = xmmword_1008AA190;
    v30 = 0;
    v31 = 0;
    v29[0] = 0;
    if ((v4 & 1) != 0 || sub_10037E730(&v32, &v34) || sub_10037E730(&v32, &v33))
    {
      byte_100B54901 = 1;
    }

    if (v32 != 3)
    {
LABEL_43:
      LOBYTE(v29[0]) = 6;
      WORD1(v29[0]) = 1;
      v29[1] = &v45;
      v26 = sub_1002F69AC(sub_10058565C, &v30, v29);
      if (v26)
      {
        v27 = v26;
        v28 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
        {
          *v43 = 67109120;
          LODWORD(v44) = v27;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Service+RFCOMM search failed with %{bluetooth:OI_STATUS}u", v43, 8u);
        }

        *(qword_100BCE5F0 + 128) = 0;
        goto LABEL_20;
      }

      return;
    }

    v5 = WORD1(v32);
    v6 = sub_10000C240();
    if (v5 > 4)
    {
      if (v6)
      {
        v16 = sub_100302240(*(&v32 + 1));
        sub_10000AF54("Querying RFCOMM Service : %s", v17, v18, v19, v20, v21, v22, v23, v16);
        v15 = sub_10000C050(0x5Cu);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }
      }
    }

    else if (v6)
    {
      v7 = sub_10030253C(DWORD2(v32));
      sub_10000AF54("Querying RFCOMM Service : %s", v8, v9, v10, v11, v12, v13, v14, v7);
      v15 = sub_10000C050(0x5Cu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_37:
        v24 = sub_10000C0FC();
        *v43 = 136446210;
        v44 = v24;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, " %{public}s", v43, 0xCu);
      }
    }

    if (v32 == 3)
    {
      if (WORD1(v32) == 16)
      {
        *v48 = **(&v32 + 1);
        v25 = buf;
      }

      else
      {
        DWORD2(v46[0]) = DWORD2(v32);
        v25 = v46;
      }

      LOBYTE(v30) = 6;
      WORD1(v30) = 2;
      v31 = v25;
    }

    goto LABEL_43;
  }

LABEL_16:
  if (*(v0 + 132) == 9)
  {
    v3 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RFCOMM channel update complete", buf, 2u);
      v0 = qword_100BCE5F0;
    }

    *(v0 + 128) = 0;
LABEL_20:
    sub_100583504();
  }
}

void sub_10058565C(unsigned __int8 *a1, int a2, int a3)
{
  v6 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    v7 = qword_100BCE5F0;
    v8 = sub_1005825C4(*(qword_100BCE5F0 + 132));
    v9 = *(v7 + 40);
    LODWORD(v12) = 67109890;
    DWORD1(v12) = a2;
    WORD4(v12) = 1024;
    *(&v12 + 10) = a3;
    HIWORD(v12) = 2080;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RFCOMM service attribute response: more %d, status %{bluetooth:OI_STATUS}u, state %s RFCOMM service size %lu", &v12, 0x22u);
  }

  if (a3)
  {
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
    {
      sub_100845F1C();
    }

    *(qword_100BCE5F0 + 128) = 1;
    sub_100583504();
  }

  else if ((*a1 & 0xFE) == 6)
  {
    if (*(qword_100BCE5F0 + 40))
    {
      v12 = *(*(*(qword_100BCE5F0 + 8) + ((*(qword_100BCE5F0 + 32) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(qword_100BCE5F0 + 32));
      *(qword_100BCE5F0 + 144) = -1;
      sub_100584FA4(a1);
      v10 = qword_100BCE5F0;
      if (*(qword_100BCE5F0 + 144) != -1)
      {
        sub_10054CB4C(*(qword_100BCE5F0 + 112), &v12, *(qword_100BCE5F0 + 144));
        v10 = qword_100BCE5F0;
      }

      v10[2] = vaddq_s64(v10[2], xmmword_1008A6430);
      v11 = sub_1004F2E10(v10, 1);
      sub_100585124(v11);
    }
  }

  else if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
  {
    sub_100845A48();
  }
}

void sub_100585848(id a1)
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_1005826A0();
  sub_10002249C(&v1);
}

void sub_100585898(id a1)
{
  v1 = 0;
  sub_1000216B4(&v1);
  sub_1005826A0();
  sub_10002249C(&v1);
}

uint64_t sub_1005858E8(uint64_t a1, char a2)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, &unk_100BCE628);
  byte_100B54900 = a2;
  sub_10000801C(v4);
  return sub_1000088CC(v4);
}

BOOL sub_100585950()
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, &unk_100BCE5B0);
  if (qword_100BCE5F0)
  {
    v0 = *(qword_100BCE5F0 + 132);
    v2 = v0 != 10 && v0 != 0;
  }

  else
  {
    v2 = 0;
  }

  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005859B8(uint64_t a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, &unk_100BCE5B0);
  if (qword_100BCE5F0)
  {
    v3 = *(qword_100BCE5F0 + 112);
    if (v3)
    {
      v4 = *(v3 + 128);
      v5 = *(v3 + 132);
      if (v4 == *(a2 + 128) && v5 == *(a2 + 132))
      {
LABEL_22:
        v15 = 1;
        goto LABEL_23;
      }
    }
  }

  if (*(&xmmword_100BCE618 + 1))
  {
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    sub_100586EE0(v17, &qword_100BCE5F8);
    v7 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      v8 = *(&v17[0] + 1);
      v9 = v18;
      while (1)
      {
        v10 = (*(v8 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)))[v9 & 0x1FF];
        if (v10)
        {
          v11 = *(v10 + 112);
          if (v11)
          {
            v12 = *(v11 + 128);
            v13 = *(v11 + 132);
            if (v12 == *(a2 + 128) && v13 == *(a2 + 132))
            {
              break;
            }
          }
        }

        --v7;
        *&v18 = ++v9;
        *(&v18 + 1) = v7;
        if (v9 >= 0x400)
        {
          operator delete(*v8);
          v7 = *(&v18 + 1);
          v8 = (*(&v17[0] + 1) + 8);
          v9 = v18 - 512;
          *(&v17[0] + 1) += 8;
          *&v18 = v18 - 512;
        }

        if (!v7)
        {
          goto LABEL_19;
        }
      }

      sub_1003617DC(v17);
      goto LABEL_22;
    }

LABEL_19:
    sub_1003617DC(v17);
  }

  v15 = 0;
LABEL_23:
  sub_1000088CC(v19);
  return v15;
}

uint64_t sub_100585B0C(uint64_t a1, int a2)
{
  v4 = qword_100BCE5F0;
  v5 = qword_100BCE938;
  if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558531;
    *&buf[4] = 1752392040;
    *&buf[12] = 1041;
    *&buf[14] = 6;
    *&buf[18] = 2097;
    *&buf[20] = a1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Incoming SDP request from %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
  }

  if (v4 && (v6 = *(v4 + 112)) != 0 && ((v7 = *(v6 + 128), v8 = *(v6 + 132), v7 == *a1) ? (v9 = v8 == *(a1 + 4)) : (v9 = 0), v9))
  {
    v13 = qword_100BCE938;
    if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 1041;
      *&buf[14] = 6;
      *&buf[18] = 2097;
      *&buf[20] = a1;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Already have outgoing SDP with %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
    }
  }

  else
  {
    if ((byte_100B6F0D8 & 1) == 0)
    {
      if (qword_100B508F0 != -1)
      {
        sub_100845F8C();
      }

      *buf = *a1;
      *&buf[4] = *(a1 + 4);
      v10 = sub_1000E6554(off_100B508E8, buf, 0);
      v11 = v10;
      if (v10)
      {
        if (sub_1005457A8(v10))
        {
          v12 = qword_100BCE938;
          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558787;
            *&buf[4] = 1752392040;
            *&buf[12] = 1041;
            *&buf[14] = 6;
            *&buf[18] = 2097;
            *&buf[20] = a1;
            *&buf[28] = 1024;
            *&buf[30] = a2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "stalling incoming SDP request from %{private,bluetooth:BD_ADDR,mask.hash}.6P for cid: %d. Initiating an outgoing SDP request for SDP Mirroring", buf, 0x22u);
          }

          sub_100540EBC(v11, 1);
          sub_100540F4C(v11, a2);
          if (qword_100B54670 != -1)
          {
            sub_100845FB4();
          }

          sub_100587D6C(qword_100B54668, v11);
        }

        v47 = 0;
        if (!sub_10023DB58(v11 + 128, &v47))
        {
          v14 = qword_100BCE938;
          if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558787;
            *&buf[4] = 1752392040;
            *&buf[12] = 1041;
            *&buf[14] = 6;
            *&buf[18] = 2097;
            *&buf[20] = a1;
            *&buf[28] = 2048;
            *&buf[30] = v47;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No need to stall incoming SDP request from %{private,bluetooth:BD_ADDR,mask.hash}.6P with handle %p", buf, 0x26u);
          }

          v15 = v47;
          v16 = sub_100542FA8(v11);
          v17 = sub_1005430EC(v11);
          sub_1002F8998(v15, 4382, v16, v17);
          if (sub_10053A888(v11))
          {
            v18 = qword_100BCE938;
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000DEEA4(v11, buf);
              v19 = (buf[23] & 0x80u) == 0 ? buf : *buf;
              *v48 = 136315138;
              *&v48[4] = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Forcing legacy AVRCP SDP for device %s", v48, 0xCu);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }
            }

            sub_1002F8998(v47, 4364, 260, 0);
            sub_1002F8998(v47, 4367, 260, 0);
          }

          else
          {
            v20 = v47;
            v21 = sub_100542D9C(v11);
            v22 = sub_100542EE0(v11);
            sub_1002F8998(v20, 4364, v21, v22);
            v23 = v47;
            v24 = sub_100542B90(v11);
            v25 = sub_100542CD4(v11);
            sub_1002F8998(v23, 4367, v24, v25);
          }

          v60 = 0;
          v59 = 0u;
          memset(v58, 0, sizeof(v58));
          v56 = 0u;
          *__p = 0u;
          *v55 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_1000DE474(&buf[1]);
          buf[18] = 0;
          buf[20] = 0;
          BYTE2(v55[0]) = 0;
          BYTE4(v55[0]) = 0;
          DWORD1(v58[1]) = 0;
          memset(&buf[24], 0, 24);
          LOBYTE(v55[0]) = 0;
          v56 = 0uLL;
          v55[1] = 0;
          LOBYTE(__p[0]) = 0;
          memset(v58, 0, 19);
          __p[1] = 0;
          BYTE8(v58[1]) = 1;
          *(&v58[1] + 14) = 0;
          *(&v58[1] + 9) = 0;
          v59 = 0uLL;
          *(&v58[2] + 1) = 0;
          LOBYTE(v60) = 0;
          *(&v60 + 2) = 0;
          if (sub_100536A18(v11, buf) && (BYTE1(v59) & 1) != 0 || sub_10053A674(v11))
          {
            v26 = qword_100BCE938;
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000DEEA4(v11, v48);
              v27 = v51 >= 0 ? v48 : *v48;
              *v52 = 136315138;
              v53 = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Forcing legacy PBAP SDP for device %s", v52, 0xCu);
              if (v51 < 0)
              {
                operator delete(*v48);
              }
            }

            sub_1002F8998(v47, 4398, 256, 0);
          }

          if (sub_100536A18(v11, buf) && BYTE2(v59) == 1)
          {
            v28 = qword_100BCE938;
            if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000DEEA4(v11, v48);
              v29 = v51 >= 0 ? v48 : *v48;
              *v52 = 136315138;
              v53 = v29;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Forcing legacy MAP SDP for device %s", v52, 0xCu);
              if (v51 < 0)
              {
                operator delete(*v48);
              }
            }

            sub_1002F8998(v47, 4404, 257, 0);
          }

          if (SHIBYTE(v58[0]) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(v56) < 0)
          {
            operator delete(v55[1]);
          }

          if (buf[47] < 0)
          {
            operator delete(*&buf[24]);
          }

          nullsub_21(&buf[1]);
        }

        v30 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(v11 + 1032);
          *buf = 136315907;
          if (v31)
          {
            v32 = "true";
          }

          else
          {
            v32 = "false";
          }

          *&buf[4] = v32;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 1041;
          *&buf[24] = 6;
          *&buf[28] = 2097;
          *&buf[30] = a1;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Wireless Splitter set guest device not in contacts to '%s ' into the remote SDP record for %{private,bluetooth:BD_ADDR,mask.hash}.6P ", buf, 0x26u);
        }

        sub_1002F86A8(v47, *(v11 + 1032));
        v33 = sub_1000E2140(v11, 12);
        v34 = qword_100BCE938;
        if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v33 ? "false" : "true";
          sub_1000DEEA4(v11, buf);
          v36 = (buf[23] & 0x80u) == 0 ? buf : *buf;
          *v48 = 136315394;
          *&v48[4] = v35;
          v49 = 2080;
          v50 = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Setting requiresLegacyPnPInformationRecord to %s for device %s", v48, 0x16u);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_1002F8820(v47, !v33);
      }
    }

    if (qword_100B50AA0 != -1)
    {
      sub_100845FDC();
    }

    sub_1005A8184(off_100B50A98, a1);
    v37 = sub_1002413D0(a1);
    *v48 = *a1;
    *&v48[4] = *(a1 + 4);
    if (qword_100B508F0 != -1)
    {
      sub_100845F8C();
    }

    *buf = *v48;
    *&buf[4] = *&v48[4];
    v38 = sub_1000E6554(off_100B508E8, buf, 1);
    if ((v37 & 0x1FFC) == 0x41C || (v37 & 0x1FFC) == 0x20C)
    {
      v39 = qword_100BCE938;
      if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 1041;
        *&buf[14] = 6;
        *&buf[18] = 2097;
        *&buf[20] = a1;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Received incoming SDP connection from possible iPhone/iPod %{private,bluetooth:BD_ADDR,mask.hash}.6P", buf, 0x1Cu);
      }

      if (qword_100B54670 != -1)
      {
        sub_100845FB4();
      }

      sub_10058826C();
    }

    v40 = v38;
    v41 = sub_100017F4C();
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1005864A4;
    v43[3] = &unk_100AE0EF8;
    v43[4] = v40;
    v44 = v37;
    v45 = *v48;
    v46 = *&v48[4];
    sub_10000CA94(v41, v43);
  }

  return 845;
}

void sub_100586480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_100320BE8(va);
  _Unwind_Resume(a1);
}

void sub_1005864A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_100B508F0 != -1)
    {
      sub_100846004();
    }

    v2 = off_100B508E8;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    sub_10056B7FC(v2, v3, v4);
  }

  else if (os_log_type_enabled(qword_100BCE938, OS_LOG_TYPE_ERROR))
  {
    sub_100846018();
  }
}

void *sub_10058660C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_100586694(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_100586694(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1003138F4(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1003613B4(a1, &v10);
}

void sub_10058681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1005868D0(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a2[4];
    v5 = a2[1];
    v6 = a2[2];
    v7 = (v5 + 8 * (v4 >> 9));
    if (v6 == v5)
    {
      v8 = 0;
      v11 = 0;
      v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
    }

    else
    {
      v8 = &(*v7)[8 * (v4 & 0x1FF)];
      v9 = a2[5] + v4;
      v10 = (v5 + 8 * (v9 >> 9));
      v11 = (*v10 + 8 * (v9 & 0x1FF));
    }

    sub_100586964(a1, v7, v8, v10, v11);
  }

  return a1;
}

void *sub_100586964(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  return sub_100586998(a1, a2, a3, v5);
}

void *sub_100586998(void *a1, char **a2, char *a3, unint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v7 = a1[5];
  if (v7 >= a4)
  {
    v14 = a1[1];
    v15 = (v14 + 8 * (a1[4] >> 9));
    if (a1[2] == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15 + 8 * (a1[4] & 0x1FFLL);
    }

    v22[0] = a2;
    v22[1] = a3;
    v18 = sub_100361350(v22, a4);
    v23 = v15;
    v24 = v16;
    sub_100363478(a2, a3, v18, v19, &v23);
    return sub_10036337C(a1, v23, v24);
  }

  else
  {
    v9 = sub_100361350(&v20, v7);
    v10 = v8;
    v11 = a1[1];
    if (a1[2] == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 8 * (a1[4] >> 9)) + 8 * (a1[4] & 0x1FFLL);
    }

    v23 = (v11 + 8 * (a1[4] >> 9));
    v24 = v12;
    sub_100363478(v20, v21, v9, v8, &v23);
    return sub_100586AC0(a1, v9, v10, a4 - a1[5]);
  }
}

void *sub_100586AC0(void *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 6) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100586BFC(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 9));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 8 * (v11 & 0x1FF);
    v15 = v14;
  }

  v24[0] = v13;
  v24[1] = v15;
  result = sub_100361350(v24, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3++;
          *v20++ = v21;
          if ((a3 - *a2) == 4096)
          {
            v22 = a2[1];
            ++a2;
            a3 = v22;
          }
        }

        while (v20 != v19);
      }

      v18 += (v19 - v14) >> 3;
      if (v13 == result)
      {
        break;
      }

      v23 = v13[1];
      ++v13;
      v14 = v23;
    }

    while (v23 != v17);
    a1[5] = v18;
  }

  return result;
}

void *sub_100586BFC(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_1003613B4(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_1003138F4(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_1003613B4(v2, v16);
    }
  }

  return result;
}

void sub_100586EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100586EE0(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
  }

  else
  {
    v8 = (*v7 + 8 * (v4 & 0x1FF));
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 9));
    v11 = (*v10 + 8 * (v9 & 0x1FF));
  }

  sub_100586F8C(a1, v7, v8, v10, v11);
  return a1;
}

void *sub_100586F8C(void *a1, char *a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  return sub_100586AC0(a1, a2, a3, v5);
}

void sub_100586FC0()
{
  v0 = objc_autoreleasePoolPush();
  sub_100044BBC(&unk_100BCE5B0);
  __cxa_atexit(sub_10007A068, &unk_100BCE5B0, &_mh_execute_header);
  *&qword_100BCE5F8 = 0u;
  unk_100BCE608 = 0u;
  xmmword_100BCE618 = 0u;
  __cxa_atexit(sub_100581888, &qword_100BCE5F8, &_mh_execute_header);
  sub_100044BBC(&unk_100BCE628);
  __cxa_atexit(sub_10007A068, &unk_100BCE628, &_mh_execute_header);
  qword_100B6F0A8 = 0;
  qword_100B6F0B0 = 0;
  qword_100B6F0A0 = 0;
  __cxa_atexit(sub_10058188C, &qword_100B6F0A0, &_mh_execute_header);
  qword_100B6F0C8 = 0;
  qword_100B6F0C0 = 0;
  qword_100B6F0B8 = &qword_100B6F0C0;
  __cxa_atexit(sub_1005818C0, &qword_100B6F0B8, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

void *sub_1005870DC(void *a1)
{
  *a1 = off_100AFE120;
  sub_100044BBC(a1 + 1);
  a1[9] = 0;
  return a1;
}

void *sub_100587124(void *a1)
{
  *a1 = off_100AFE120;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SDP Manager deconstructor", v5, 2u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008460B4();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1);
  v3 = a1[9];
  if (v3)
  {
    sub_1005711C4(v3);
    operator delete();
  }

  sub_10007A068(a1 + 1);
  return a1;
}

void sub_10058721C(void *a1)
{
  sub_100587124(a1);

  operator delete();
}

void sub_1005872FC(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SDP Manager stackDidStart", v3, 2u);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, a1 + 8);
  sub_100570C90(*(a1 + 72), QOS_CLASS_USER_INITIATED);
  *(a1 + 80) = 1;
  operator new();
}

void sub_100587420(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SdpManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v4 = 0;
  sub_100007F88(buf, a1 + 8);
  sub_100571164(*(a1 + 72));
  *(a1 + 80) = 0;
  operator new();
}

uint64_t sub_100587580(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100070A6C(*(a1 + 72), a2);
  return sub_1000088CC(v5);
}

void sub_1005876B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = qword_100BCE8D8;
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v2, __p);
      v5 = (SBYTE7(v33) & 0x80u) == 0 ? __p : __p[0];
      v6 = *(a2 + 24);
      *buf = 136446466;
      *&buf[4] = v5;
      v29 = 1024;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDP query has completed for device %{public}s with status %d", buf, 0x12u);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v27 = 0;
    sub_1005379CC(v2, &v27);
    if (!*(a2 + 24))
    {
      sub_10054D6D8(v2, 1);
      if (sub_1000295DC(v2))
      {
        v7 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v2, __p);
          v8 = (SBYTE7(v33) & 0x80u) == 0 ? __p : __p[0];
          *buf = 136446210;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Identification - SDP query complete. Checking if we need to generate hash for device %{public}s", buf, 0xCu);
          if (SBYTE7(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100538900(v2);
        sub_100545910(v2);
      }
    }

    v26 = 0;
    sub_1000216B4(&v26);
    if (sub_100540F04(v2))
    {
      v9 = sub_100540F94(v2);
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v2, __p);
        v11 = (SBYTE7(v33) & 0x80u) == 0 ? __p : __p[0];
        *buf = 136446466;
        *&buf[4] = v11;
        v29 = 1024;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We have a stalled incoming SDP request from device %{public}s with cid: %d. Responding to stalled request", buf, 0x12u);
        if (SBYTE7(v33) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1002FA2AC(*(a2 + 24) == 0, v9);
      sub_100540EBC(v2, 0);
      sub_100540F4C(v2, 0);
    }

    v12 = sub_100241454((v2 + 128), v27);
    if (v12)
    {
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Set Remote Device class failed with %{bluetooth:OI_STATUS}u", __p, 8u);
      }
    }

    if (qword_100B50AA0 != -1)
    {
      sub_1008460B4();
    }

    sub_1005A8184(off_100B50A98, (v2 + 128));
    sub_100022214(&v26);
    v25 = 0;
    v40 = 0;
    v39 = 0u;
    memset(v38, 0, sizeof(v38));
    v36 = 0u;
    *v37 = 0u;
    v34 = 0u;
    *v35 = 0u;
    *__p = 0u;
    v33 = 0u;
    sub_1000DE474(__p + 1);
    BYTE2(v33) = 0;
    BYTE4(v33) = 0;
    BYTE2(v35[0]) = 0;
    BYTE4(v35[0]) = 0;
    DWORD1(v38[1]) = 0;
    v34 = 0uLL;
    *(&v33 + 1) = 0;
    LOBYTE(v35[0]) = 0;
    v36 = 0uLL;
    v35[1] = 0;
    LOBYTE(v37[0]) = 0;
    memset(v38, 0, 19);
    v37[1] = 0;
    BYTE8(v38[1]) = 1;
    *(&v38[1] + 14) = 0;
    *(&v38[1] + 9) = 0;
    v39 = 0uLL;
    *(&v38[2] + 1) = 0;
    LOBYTE(v40) = 0;
    *(&v40 + 2) = 0;
    sub_100536A18(v2, __p);
    v14 = sub_10000C7D0();
    if (sub_1004106D0(v14, 0xBB8u) && BYTE4(v40) == 1)
    {
      v15 = sub_10000E92C();
      sub_100007E30(buf, "SDPMirroring");
      sub_100007E30(v23, "DisableSDPMirroring");
      v16 = (*(*v15 + 72))(v15, buf, v23, &v25);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v31 < 0)
      {
        operator delete(*buf);
        if (!v16)
        {
          goto LABEL_48;
        }
      }

      else if (!v16)
      {
LABEL_48:
        v19 = sub_10000C798();
        if ((*(*v19 + 416))(v19))
        {
          v20 = sub_100536B0C(v2);
          v21 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Number of services %d found using PSM/RFCOMM", buf, 8u);
          }
        }

        v22 = *(a2 + 16);
        if (v22)
        {
          (*(*v22 + 16))(v22, *(a2 + 8), *(a2 + 24));
        }

        (*(*a2 + 8))(a2);
        if (SHIBYTE(v38[0]) < 0)
        {
          operator delete(v37[1]);
        }

        if (SHIBYTE(v36) < 0)
        {
          operator delete(v35[1]);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(*(&v33 + 1));
        }

        nullsub_21(__p + 1);
        sub_10002249C(&v26);
        return;
      }

      v18 = v25 ^ 1;
    }

    else
    {
      v17 = sub_10000E92C();
      sub_100007E30(buf, "SDPMirroring");
      sub_100007E30(v23, "DisableSDPMirroring");
      (*(*v17 + 72))(v17, buf, v23, &v25);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v31 < 0)
      {
        operator delete(*buf);
      }

      if (v25)
      {
        goto LABEL_48;
      }

      v18 = 0;
    }

    sub_1005457F0(v2, v18 & 1);
    goto LABEL_48;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_1008460F0(v3);
  }
}

void sub_100587CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100320BE8(&a25);
  sub_10002249C(&a17);
  _Unwind_Resume(a1);
}

void sub_100587D6C(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136446210;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running SDP on device %{public}s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_100588138()
{
  if (qword_100B54670 != -1)
  {
    sub_100846134();
  }

  sub_1005875E4();
}

void sub_100588184(uint64_t a1)
{
  if (qword_100B54670 != -1)
  {
    sub_100846134();
  }

  v2 = *(a1 + 16);

  sub_1005876B4(a1, v2);
}

void sub_1005881D0(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = a3;
  if (qword_100B54670 != -1)
  {
    sub_100846134();
  }

  operator new();
}

_BYTE *sub_1005882E8(uint64_t a1)
{
  v9 = 0;
  sub_1000216B4(&v9);
  v2 = sub_1002413D0(*(a1 + 16));
  sub_100022214(&v9);
  if (qword_100B508F0 != -1)
  {
    sub_100846148();
  }

  v3 = *(a1 + 16);
  v4 = *(v3 + 2);
  v7 = *v3;
  v8 = v4;
  v5 = sub_1000E6554(off_100B508E8, &v7, 1);
  if (v5)
  {
    if (qword_100B508F0 != -1)
    {
      sub_100846148();
    }

    sub_10056B7FC(off_100B508E8, v5, v2);
    if (!sub_10053C3E8(v5))
    {
      v5[49].n128_u8[8] = 1;
      if (qword_100B50AC0 != -1)
      {
        sub_100846170();
      }

      sub_100598044(off_100B50AB8, v5);
      operator new();
    }
  }

  return sub_10002249C(&v9);
}

void **sub_1005887F0(void **a1)
{
  v3 = a1;
  sub_100588CE4(&v3);
  return a1;
}

void *sub_100588828(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1005888A8(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1005888A8(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100588944(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100588944(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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

void *sub_100588AEC(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1005888A8(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_100588B6C(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1005888A8(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_100588BEC(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_1003A4F88(result, a3);
  }

  return result;
}

void *sub_100588C54(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 == a3)
  {
    v6 = result[1];
  }

  else
  {
    v5 = a2 + 8;
    v6 = result[1];
    do
    {
      v7 = v5 - 8;
      *v6 = *(v5 - 8);
      result = sub_1003A5D88((v6 + 8), v5);
      *(v6 + 32) = *(v5 + 24);
      v6 += 40;
      v5 += 40;
    }

    while (v7 + 40 != a3);
  }

  v3[1] = v6;
  return result;
}

void sub_100588CE4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100588D38(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100588D38(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_100588D88()
{
  v0 = objc_autoreleasePoolPush();
  LODWORD(__dst[0]) = 0;
  WORD2(__dst[0]) = 1;
  DWORD2(__dst[0]) = 1;
  WORD6(__dst[0]) = 2;
  sub_100588828(qword_100BCE668, __dst, 2);
  __cxa_atexit(sub_10058876C, qword_100BCE668, &_mh_execute_header);
  __dst[0] = xmmword_1008AA2E8;
  __dst[1] = unk_1008AA2F8;
  *&__dst[2] = 0x57E00000004;
  sub_100588AEC(qword_100BCE680, __dst, 5);
  __cxa_atexit(sub_100588798, qword_100BCE680, &_mh_execute_header);
  memcpy(__dst, &unk_1008AA310, 0x150uLL);
  sub_100588B6C(qword_100BCE698, __dst, 42);
  __cxa_atexit(sub_1005887C4, qword_100BCE698, &_mh_execute_header);
  memset(__dst, 0, 36);
  *(&__dst[2] + 1) = 0x100000001;
  memset(&__dst[3], 0, 28);
  *&__dst[5] = 0x100000001;
  v32 = xmmword_1008AA260;
  sub_100588BEC(&__dst[5] + 1, &v32, 4uLL);
  *(&__dst[7] + 1) = 0;
  LODWORD(__dst[7]) = 1;
  v31[0] = xmmword_1008AA460;
  v31[1] = unk_1008AA470;
  v31[2] = xmmword_1008AA480;
  sub_100588BEC(&__dst[8], v31, 0xCuLL);
  *&__dst[10] = 0;
  DWORD2(__dst[9]) = 2;
  v29[0] = xmmword_1008AA490;
  v29[1] = unk_1008AA4A0;
  v29[2] = xmmword_1008AA4B0;
  v30 = 0x1200000011;
  sub_100588BEC(&__dst[10] + 1, v29, 0xEuLL);
  LODWORD(__dst[12]) = 3;
  *(&__dst[12] + 1) = 0x100000001;
  v27[0] = xmmword_1008AA490;
  v27[1] = unk_1008AA4A0;
  v27[2] = xmmword_1008AA4B0;
  v28 = 0x1200000011;
  sub_100588BEC(&__dst[13], v27, 0xEuLL);
  *&__dst[15] = 0;
  DWORD2(__dst[14]) = 3;
  v26[0] = xmmword_1008AA4C8;
  v26[1] = unk_1008AA4D8;
  sub_100588BEC(&__dst[15] + 1, v26, 8uLL);
  LODWORD(__dst[17]) = 4;
  *(&__dst[17] + 1) = 0x100000001;
  v25[0] = xmmword_1008AA4C8;
  v25[1] = unk_1008AA4D8;
  sub_100588BEC(&__dst[18], v25, 8uLL);
  DWORD2(__dst[19]) = 4;
  *&__dst[20] = 0;
  v24 = xmmword_1008AA270;
  sub_100588BEC(&__dst[20] + 1, &v24, 4uLL);
  v34 = 5;
  v35 = 0x100000001;
  v23 = xmmword_1008AA270;
  sub_100588BEC(v36, &v23, 4uLL);
  v37 = 5;
  v38 = 0;
  v22 = xmmword_1008AA280;
  sub_100588BEC(v39, &v22, 4uLL);
  v40 = 6;
  v41 = 0x100000001;
  v21 = xmmword_1008AA280;
  sub_100588BEC(v42, &v21, 4uLL);
  v43 = 6;
  v44 = 0;
  v19 = 0x1700000016;
  v20 = 24;
  sub_100588BEC(v45, &v19, 3uLL);
  v46 = 7;
  v47 = 0;
  v18 = 0x1800000017;
  sub_100588BEC(v48, &v18, 2uLL);
  v49 = 8;
  v50 = 0;
  v17 = 0x1500000014;
  sub_100588BEC(v51, &v17, 2uLL);
  v52 = 9;
  v53 = 0x200000001;
  v16 = 0x1D0000001CLL;
  sub_100588BEC(v54, &v16, 2uLL);
  v55 = 11;
  v56 = 0x200000001;
  v3 = 29;
  sub_100588BEC(v57, &v3, 1uLL);
  v58 = 12;
  v59 = 0x200000001;
  v2 = 30;
  sub_100588BEC(v60, &v2, 1uLL);
  v61 = 13;
  v62 = 0x200000001;
  v1 = 31;
  sub_100588BEC(v63, &v1, 1uLL);
  v64 = 14;
  v65 = 0x200000001;
  v15 = 0x2100000020;
  sub_100588BEC(v66, &v15, 2uLL);
  v67 = 15;
  v68 = 0x200000001;
  v13 = xmmword_1008AA4E8;
  v14 = 0x2100000020;
  sub_100588BEC(v69, &v13, 6uLL);
  v70 = 16;
  v71 = 0x300000001;
  v11 = xmmword_1008AA500;
  v12 = 38;
  sub_100588BEC(v72, &v11, 5uLL);
  v73 = 17;
  v74 = 0x300000001;
  v9 = 0x2500000024;
  v10 = 38;
  sub_100588BEC(v75, &v9, 3uLL);
  v76 = 18;
  v77 = 0x400000001;
  v7 = 0x2800000027;
  v8 = 41;
  sub_100588BEC(v78, &v7, 3uLL);
  v79 = 19;
  v80 = 0x300000001;
  v6 = 0x2300000022;
  sub_100588BEC(v81, &v6, 2uLL);
  v82 = 20;
  v83 = 0x300000001;
  v4 = 0x2500000024;
  v5 = 38;
  sub_100588BEC(v84, &v4, 3uLL);
  v85 = 21;
  qword_100BCE6B8 = 0;
  qword_100BCE6C0 = 0;
  qword_100BCE6B0 = 0;
  operator new();
}

void sub_100589490(_Unwind_Exception *a1)
{
  for (i = (v1 + 1000); i != &STACK[0x230]; i -= 5)
  {
    v3 = *(i - 4);
    if (v3)
    {
      *(i - 3) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100589578(uint64_t a1, char *a2, int a3)
{
  *a1 = off_100AFE2D0;
  sub_100007E30((a1 + 8), a2);
  *(a1 + 40) = 0u;
  *(a1 + 32) = a3;
  *(a1 + 56) = 0u;
  sub_100044BBC(a1 + 72);
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  sub_100044BBC(a1 + 184);
  *(a1 + 248) = 0;
  sub_100044BBC(a1 + 256);
  *(a1 + 320) = 0;
  return a1;
}

void sub_10058961C(_Unwind_Exception *a1)
{
  sub_10007A068(v3 + 6);
  sub_10058BE28(v3);
  sub_10007A068(v4 + 4);
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100589670(uint64_t a1)
{
  *a1 = off_100AFE2D0;
  v2 = *(a1 + 248);
  if (v2)
  {
    sub_1005711C4(v2);
    operator delete();
  }

  sub_10007A068(a1 + 256);
  sub_10007A068(a1 + 184);
  sub_10058BE28((a1 + 136));
  sub_10007A068(a1 + 72);
  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100589718(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 184);
  v2 = *(a1 + 248);
  if (!v2)
  {
    operator new();
  }

  sub_1000088CC(v4);
  return v2;
}

void sub_1005897E0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100589718(a1);
  sub_10000CA94(v3, v4);
}

BOOL sub_100589848(uint64_t a1, _BYTE *a2)
{
  v3 = sub_100589718(a1);

  return sub_100070A6C(v3, a2);
}

void sub_100589880(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_10057CC18(*(a2 + 248));
    v6 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v6 = *v6;
    }

    v21 = 136446466;
    v22 = v5;
    v23 = 2082;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registering %{public}s profile in %{public}s", &v21, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v7;
  if (v7 != v8)
  {
    while (*v9 != a2)
    {
      if (++v9 == v8)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_10:
    v10 = *(a1 + 56);
    if (v8 >= v10)
    {
      v12 = v8 - v7;
      if ((v12 + 1) >> 61)
      {
        sub_1000C7698();
      }

      v13 = v10 - v7;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        sub_100008108(a1 + 40, v15);
      }

      v16 = (8 * v12);
      *v16 = a2;
      v11 = 8 * v12 + 8;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48) - v17;
      v19 = v16 - v18;
      memcpy(v16 - v18, v17, v18);
      v20 = *(a1 + 40);
      *(a1 + 40) = v19;
      *(a1 + 48) = v11;
      *(a1 + 56) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v8 = a2;
      v11 = (v8 + 1);
    }

    *(a1 + 48) = v11;
  }
}

uint64_t sub_100589A28(uint64_t a1)
{
  if ((*(*a1 + 32))(a1))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008461E8();
    }

    return 0;
  }

  else
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, a1 + 256);
    *(a1 + 320) = 1;
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, a1 + 184);
    v3 = *(a1 + 248);
    if (v3)
    {
      sub_100570C90(v3, QOS_CLASS_USER_INITIATED);
    }

    sub_10000801C(v6);
    for (i = *(a1 + 40); i != *(a1 + 48); ++i)
    {
      v2 = sub_10057CA24(*i, a1);
      if (v2)
      {
        goto LABEL_12;
      }
    }

    v2 = 0;
LABEL_12:
    sub_1000088CC(v6);
    sub_1000088CC(v7);
  }

  return v2;
}

void sub_100589B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100589B60(uint64_t a1)
{
  v2 = *(a1 + 64) - 1;
  *(a1 + 64) = v2;
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      *buf = 136446466;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s still has %zu profile(s) pending disconnection", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v6 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s has stopped", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1 + 256);
    *(a1 + 320) = 0;
    sub_10000801C(buf);
    v8[0] = 0;
    v8[1] = 0;
    sub_100007F88(v8, a1 + 184);
    v7 = *(a1 + 248);
    if (v7)
    {
      sub_100571164(v7);
    }

    sub_10000801C(v8);
    if (qword_100B50AC0 != -1)
    {
      sub_100846258();
    }

    sub_100590608(off_100B50AB8, a1);
    sub_1000088CC(v8);
    sub_1000088CC(buf);
  }
}

void sub_100589CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100589D2C(uint64_t a1)
{
  v24[0] = 0;
  v24[1] = 0;
  sub_100007F88(v24, a1 + 256);
  v2 = qword_100BCE8D8;
  if (*(a1 + 320))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping %{public}s and its registered profiles", buf, 0xCu);
    }

    sub_10000801C(v24);
    v23[0] = 0;
    v23[1] = 0;
    sub_100007F88(v23, a1 + 72);
    v4 = *(a1 + 144);
    v5 = *(a1 + 152);
    *(a1 + 176) = 0;
    v6 = (v5 - v4) >> 3;
    if (v6 >= 3)
    {
      do
      {
        operator delete(*v4);
        v7 = *(a1 + 152);
        v4 = (*(a1 + 144) + 8);
        *(a1 + 144) = v4;
        v6 = (v7 - v4) >> 3;
      }

      while (v6 > 2);
    }

    if (v6 == 1)
    {
      v8 = 51;
    }

    else
    {
      if (v6 != 2)
      {
LABEL_16:
        sub_10000801C(v23);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48) - v10;
        v12 = v11 >> 3;
        *(a1 + 64) = v11 >> 3;
        if (v11)
        {
          do
          {
            v13 = sub_10057D10C(*v10);
            v14 = v13;
            if (v13 != 113)
            {
              if (v13)
              {
                v15 = qword_100BCE8D8;
                if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
                {
                  v16 = a1 + 8;
                  if (*(a1 + 31) < 0)
                  {
                    v16 = *(a1 + 8);
                  }

                  *buf = 136446466;
                  *&buf[4] = v16;
                  *&buf[12] = 1024;
                  *&buf[14] = v14;
                  _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to stop %{public}s with result %d", buf, 0x12u);
                }
              }

              else
              {
                --*(a1 + 64);
              }
            }

            ++v10;
          }

          while (v10 != *(a1 + 48));
          v12 = *(a1 + 64);
        }

        if (v12)
        {
          v17 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v18 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v18 = *v18;
            }

            *buf = 136446466;
            *&buf[4] = v18;
            *&buf[12] = 2048;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s still has %zu profile(s) pending disconnection - delaying stop", buf, 0x16u);
          }

          v9 = 113;
        }

        else
        {
          sub_100007FB8(v24);
          *(a1 + 320) = 0;
          sub_10000801C(v24);
          *buf = 0;
          *&buf[8] = 0;
          sub_100007F88(buf, a1 + 184);
          v19 = *(a1 + 248);
          if (v19)
          {
            sub_100571164(v19);
          }

          sub_10000801C(buf);
          v20 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v21 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v21 = *v21;
            }

            *v25 = 136446210;
            v26 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s has stopped", v25, 0xCu);
          }

          sub_1000088CC(buf);
          v9 = 0;
        }

        sub_1000088CC(v23);
        goto LABEL_40;
      }

      v8 = 102;
    }

    *(a1 + 168) = v8;
    goto LABEL_16;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100846280();
  }

  v9 = 0;
LABEL_40:
  sub_1000088CC(v24);
  return v9;
}

void sub_10058A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10058A0F4(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if ((*(*a1 + 32))(a1))
  {
    if ((*(*a1 + 48))(a1, a2))
    {
      if ((*(*a1 + 56))(a1, a2))
      {
        v45[0] = 0;
        v45[1] = 0;
        sub_100007F88(v45, a1 + 72);
        v12 = *(a1 + 176);
        if (v12)
        {
          v13 = *(a1 + 168);
          v14 = *(a1 + 144);
          v15 = *(a1 + 152);
          v16 = (v14 + 8 * (v13 / 0x66));
          if (v15 == v14)
          {
            v17 = 0;
          }

          else
          {
            v17 = &(*v16)[5 * (v13 % 0x66)];
          }

          v23 = v13 + v12;
          v24 = v23 / 0x66;
          v25 = v23 % 0x66;
LABEL_26:
          v26 = v17 - 510;
          while (1)
          {
            v27 = v15 == v14 ? 0 : *(v14 + 8 * v24) + 40 * v25;
            if (v17 == v27)
            {
              break;
            }

            if (*v17 == a2)
            {
              v33 = qword_100BCE8D8;
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
              {
                v34 = (a1 + 8);
                if (*(a1 + 31) < 0)
                {
                  v34 = *v34;
                }

                sub_1000E5A58(a2, &__p);
                if (v41 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                *buf = 136446466;
                v47 = v34;
                v48 = 2082;
                v49 = p_p;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%{public}s is currently processing another connection for device %{public}s - ignoring duplicate request", buf, 0x16u);
                if (SHIBYTE(v41) < 0)
                {
                  operator delete(__p);
                }
              }

              v18 = 302;
              goto LABEL_54;
            }

            v17 += 5;
            v26 += 5;
            if (*v16 == v26)
            {
              v28 = v16[1];
              ++v16;
              v17 = v28;
              goto LABEL_26;
            }
          }
        }

        v29 = *(a1 + 32);
        __p = a2;
        v40 = 0;
        v41 = 0;
        v42 = v29;
        v43 = 2;
        v44 = mach_continuous_time();
        sub_10058A618((a1 + 136), &__p);
        if (*(a1 + 176) < 2uLL)
        {
          sub_10000801C(v45);
          v18 = sub_10058A6D0(a1);
        }

        else
        {
          v30 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v31 = (a1 + 8);
            if (*(a1 + 31) < 0)
            {
              v31 = *v31;
            }

            sub_1000E5A58(a2, &__p);
            if (v41 >= 0)
            {
              v32 = &__p;
            }

            else
            {
              v32 = __p;
            }

            *buf = 136446466;
            v47 = v31;
            v48 = 2082;
            v49 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s is currently processing another connection - queueing connection to device %{public}s", buf, 0x16u);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(__p);
            }
          }

          v18 = 303;
        }

LABEL_54:
        sub_1000088CC(v45);
      }

      else
      {
        v22 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          v37 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v37 = *v37;
          }

          sub_1000E5A58(a2, &__p);
          if (v41 >= 0)
          {
            v38 = &__p;
          }

          else
          {
            v38 = __p;
          }

          *buf = 136446466;
          v47 = v37;
          v48 = 2082;
          v49 = v38;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}s is not available on device %{public}s", buf, 0x16u);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p);
          }
        }

        return 114;
      }
    }

    else
    {
      v19 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        v20 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v20 = *v20;
        }

        sub_1000E5A58(a2, &__p);
        if (v41 >= 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p;
        }

        *buf = 136446466;
        v47 = v20;
        v48 = 2082;
        v49 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%{public}s is not supported by device %{public}s", buf, 0x16u);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p);
        }
      }

      return 108;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100846368();
    }

    return 105;
  }

  return v18;
}

void sub_10058A5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

__n128 sub_10058A618(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10058BF3C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 32) = *(a2 + 32);
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

uint64_t sub_10058A6D0(uint64_t a1)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 72);
  if (*(a1 + 176) && (v2 = *(a1 + 168), v3 = *(*(a1 + 144) + 8 * (v2 / 0x66)), v4 = v2 % 0x66, v5 = v3 + 40 * (v2 % 0x66), !*(v5 + 8)))
  {
    v8 = *v5;
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v10 = *v10;
      }

      sub_1000E5A58(v8, __p);
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446466;
      v22 = v10;
      v23 = 2082;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - handling connection that was pending for device %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = *(a1 + 168);
      v3 = *(*(a1 + 144) + 8 * (v12 / 0x66));
      v4 = v12 % 0x66;
    }

    *(v3 + 40 * v4 + 8) = 3;
    for (i = *(a1 + 40); i != *(a1 + 48); ++i)
    {
      v14 = *i;
      if ((*(**i + 24))(*i, v8))
      {
        *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 16) = v14;
        sub_10000801C(v20);
        operator new();
      }
    }

    sub_10000801C(v20);
    v15 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v16 = *v16;
      }

      sub_1000E5A58(v8, __p);
      if (v19 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136446466;
      v22 = v16;
      v23 = 2082;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s found no connectable profiles on device %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(a1 + 168) = vaddq_s64(*(a1 + 168), xmmword_1008A6430);
    v6 = 1;
    sub_10058C110(a1 + 136, 1);
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(v20);
  return v6;
}

void sub_10058AA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058AA30(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (((*(*a1 + 32))(a1) & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100846368();
  }

  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 72);
  if (*(a1 + 176))
  {
    v12 = *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 16);
  }

  else
  {
    v12 = 0;
  }

  sub_10000801C(v22);
  if (v12)
  {
    v13 = sub_10057DF5C(v12);
    if (v13 >= (*(*v12 + 16))(v12) && (v14 = sub_10057DE40(v12)) != 0 && ((*(*a1 + 120))(a1, a2) & 1) == 0)
    {
      sub_100007FB8(v22);
      if (*(a1 + 176))
      {
        *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 8) = 2;
        sub_10000801C(v22);
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v16 = (a1 + 8);
          if (*(a1 + 31) < 0)
          {
            v16 = *v16;
          }

          v17 = (*(*v12 + 16))(v12);
          sub_1000E5A58(v14, __p);
          if (v21 >= 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          *buf = 136446722;
          v24 = v16;
          v25 = 1024;
          v26 = v17;
          v27 = 2082;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s connection would exceed maximum allowed connections (%d) - disconnecting device %{public}s", buf, 0x1Cu);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10057D5F0(v12, v14);
      }
    }

    else
    {
      sub_10057D6C4(v12, a2);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008463D8();
  }

  return sub_1000088CC(v22);
}

void sub_10058AD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10058AD94(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 72);
  v12 = *(a1 + 176);
  if (v12)
  {
    v13 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v14 = *v14;
      }

      sub_1000E5A58(a2, __p);
      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136446466;
      v21 = v14;
      v22 = 2082;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s already has a pending outgoing connection to device %{public}s", buf, 0x16u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    sub_10000801C(v19);
  }

  sub_1000088CC(v19);
  return v12 == 0;
}

void sub_10058AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058AF18(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008462F0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, (a1 + 9));
  v12 = a1[22];
  if (v12)
  {
    v13 = a1[21];
    v14 = a1[18];
    v15 = a1[19];
    v16 = (v14 + 8 * (v13 / 0x66));
    if (v15 == v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*v16 + 40 * (v13 % 0x66));
    }

    v18 = v13 + v12;
    v19 = v18 / 0x66;
    v20 = v18 % 0x66;
LABEL_9:
    v21 = v17 - 510;
    while (1)
    {
      v22 = v15 == v14 ? 0 : *(v14 + 8 * v19) + 40 * v20;
      if (v17 == v22)
      {
        break;
      }

      if (*v17 == a2)
      {
        v24 = 1;
        goto LABEL_19;
      }

      v17 += 5;
      v21 += 5;
      if (*v16 == v21)
      {
        v23 = v16[1];
        ++v16;
        v17 = v23;
        goto LABEL_9;
      }
    }
  }

  sub_10000801C(v26);
  v24 = 0;
LABEL_19:
  sub_1000088CC(v26);
  return v24;
}

uint64_t sub_10058B070(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (!a2 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = "device != NULL";
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", __p, 0xCu);
    v4 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v5 = *v5;
    }

    sub_1000E5A58(a2, __p);
    if (v21 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446466;
    v23 = v5;
    v24 = 2082;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s is disconnecting device %{public}s", buf, 0x16u);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((*(*a1 + 32))(a1))
  {
    *__p = 0uLL;
    sub_100007F88(__p, a1 + 72);
    v7 = *(a1 + 168);
    v8 = *(a1 + 144);
    v9 = *(a1 + 152);
    v10 = (v8 + 8 * (v7 / 0x66));
    if (v9 == v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = *v10 + 40 * (v7 % 0x66);
    }

LABEL_19:
    v13 = v11;
    while (1)
    {
      v14 = v9 == v8 ? 0 : *(v8 + 8 * ((*(a1 + 176) + v7) / 0x66)) + 40 * ((*(a1 + 176) + v7) % 0x66);
      if (v13 == v14)
      {
        break;
      }

      if (*v13 == a2)
      {
        v18 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Connection was still pending - cancelling", buf, 2u);
        }

        sub_10058B3B8((a1 + 136), v10, v11);
        v12 = 0;
        goto LABEL_36;
      }

      v13 += 5;
      v11 += 40;
      if (*v10 + 4080 == v11)
      {
        v15 = v10[1];
        ++v10;
        v11 = v15;
        goto LABEL_19;
      }
    }

    sub_10000801C(__p);
    for (i = *(a1 + 40); ; ++i)
    {
      if (i == *(a1 + 48))
      {
        v12 = 1;
        goto LABEL_36;
      }

      v17 = *i;
      if (sub_1000E0954(*i, a2))
      {
        break;
      }
    }

    v12 = sub_10057D5F0(v17, a2);
LABEL_36:
    sub_1000088CC(__p);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100846368();
    }

    return 105;
  }

  return v12;
}

unint64_t sub_10058B3B8(int64x2_t *a1, void *a2, uint64_t a3)
{
  v4 = a1[2].u64[0];
  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x66));
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 40 * (v4 % 0x66);
  }

  if (a3 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 102 * (a2 - v6) - 0x3333333333333333 * ((a3 - *a2) >> 3) + 0x3333333333333333 * ((v7 - *v6) >> 3);
  }

  v32.n128_u64[0] = v5 + 8 * (v4 / 0x66);
  v32.n128_u64[1] = v7;
  sub_10058C1E8(&v32, v8);
  v9 = v32;
  v10 = a1[2].i64[1];
  v11 = v32.n128_u64[1] - *v32.n128_u64[0];
  v12 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3);
  if (v8 <= (v10 - 1) >> 1)
  {
    if (v11 < -39)
    {
      v25 = 100 - v12;
      v26 = (100 - v12) / 0x66;
      v18 = (v32.n128_u64[0] - 8 * v26);
      v19 = *v18 + 40 * (102 * v26 - v25) + 4040;
    }

    else
    {
      v16 = v12 + 1;
      v17 = (v12 + 1) / 0x66;
      v18 = (v32.n128_u64[0] + 8 * v17);
      v19 = *v18 + 40 * (v16 - 102 * v17);
    }

    memset(&v32, 0, 32);
    sub_10058C294(v6, v7, v9.n128_u64[0], v9.n128_i64[1], v18, v19, &v32);
    a1[2] = vaddq_s64(a1[2], xmmword_1008A6430);
    sub_10058C110(a1, 1);
  }

  else
  {
    if (v11 < -39)
    {
      v20 = 100 - v12;
      v14 = (v32.n128_u64[0] - 8 * (v20 / 0x66));
      v15 = (*v14 + 40 * (102 * (v20 / 0x66) - v20) + 4040);
    }

    else
    {
      v13 = v12 + 1;
      v14 = (v32.n128_u64[0] + 8 * (v13 / 0x66));
      v15 = (*v14 + 40 * (v13 % 0x66));
    }

    v21 = a1[2].i64[0] + v10;
    v22 = a1->i64[1];
    v23 = (v22 + 8 * (v21 / 0x66));
    if (a1[1].i64[0] == v22)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + 40 * (v21 % 0x66));
    }

    sub_10058C448(v14, v15, v23, v24, &v32);
    --a1[2].i64[1];
    sub_10058C170(a1, 1);
  }

  v27 = a1[2].u64[0];
  v28 = a1->i64[1];
  v29 = (v28 + 8 * (v27 / 0x66));
  if (a1[1].i64[0] == v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = *v29 + 40 * (v27 % 0x66);
  }

  v32.n128_u64[0] = v29;
  v32.n128_u64[1] = v30;
  sub_10058C1E8(&v32, v8);
  return v32.n128_u64[0];
}

uint64_t sub_10058B670(void *a1)
{
  if (!(*(*a1 + 32))(a1) || (v2 = a1[5], v2 == a1[6]))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v2++;
      v3 |= sub_10057DD08(v4);
    }

    while (v2 != a1[6]);
  }

  return v3 & 1;
}

uint64_t sub_10058B6F4(void *a1)
{
  if ((*(*a1 + 32))(a1))
  {
    for (i = a1[5]; i != a1[6]; ++i)
    {
      v3 = *i;
      if (sub_10057DDF0(*i))
      {

        return sub_10057DE40(v3);
      }
    }
  }

  return 0;
}

uint64_t sub_10058B794(void *a1)
{
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    v3 = a1[5];
    if (v3 == a1[6])
    {
      return 0;
    }

    else
    {
      do
      {
        result = sub_10057DDF0(*v3);
        if (result)
        {
          break;
        }

        ++v3;
      }

      while (v3 != a1[6]);
    }
  }

  return result;
}

uint64_t sub_10058B80C(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  v8 = off_100B50AB8;
  v9 = *(a1 + 32);

  return sub_100592EE8(v8, a2, v9, a3, a4);
}

uint64_t sub_10058B880(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  v4 = off_100B50AB8;
  v5 = *(a1 + 32);

  return sub_100593D1C(v4, a2, v5);
}

uint64_t sub_10058B8F4(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 72);
  v8 = *(a1 + 176);
  if (v8)
  {
    v9 = *(a1 + 168);
    if (*(*(*(a1 + 144) + 8 * (v9 / 0x66)) + 40 * (v9 % 0x66)) == a2)
    {
      *(a1 + 168) = v9 + 1;
      *(a1 + 176) = v8 - 1;
      sub_10058C110(a1 + 136, 1);
    }
  }

  sub_10000801C(v15);
  if (qword_100B50AC0 != -1)
  {
    sub_100846258();
  }

  sub_100591B18(off_100B50AB8, a2, *(a1 + 32), a3, a4);
  if (!a4)
  {
    if ((*(*a1 + 72))(a1) && (sub_1000295DC(a2) & 1) == 0)
    {
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, v14);
        sub_10084645C(v14, a1, buf, v10);
      }

      operator new();
    }

    v11 = *(a1 + 32);
    v16 = 0;
    sub_100016250(&v16);
    *&v13 = v16;
    *(&v13 + 1) = SWORD2(v16);
    sub_100539554(a2, v11, 4, &v13, 0);
  }

  sub_10058A6D0(a1);
  return sub_1000088CC(v15);
}

void sub_10058BB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10058BB40(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  result = sub_100593DA0(off_100B50AB8, a2, *(a1 + 32), a3, a4, a5);
  if (!a4)
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 72);
    if (*(a1 + 176) && *(*(*(a1 + 144) + 8 * (*(a1 + 168) / 0x66uLL)) + 40 * (*(a1 + 168) % 0x66uLL) + 8) == 2)
    {
      sub_10000801C(v13);
      v11 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v12 = *v12;
        }

        *buf = 136446210;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s had a queued connection pending this disconnection", buf, 0xCu);
      }

      operator new();
    }

    return sub_1000088CC(v13);
  }

  return result;
}

uint64_t sub_10058BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B50AC0 != -1)
  {
    sub_100846448();
  }

  v10 = off_100B50AB8;
  v11 = *(a1 + 32);

  return sub_100594AA0(v10, a2, v11, a3, a4, a5);
}

uint64_t sub_10058BE28(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 102;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

void *sub_10058BF3C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_100008108(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1004F3500(a1, &v10);
}

void sub_10058C0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058C110(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

uint64_t sub_10058C170(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_10058C1E8(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_10058C294@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v22 = 0;
    v23 = 0uLL;
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v22 = 0;
    v23 = 0uLL;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10058C384(v16, v18, v13, v14, &v22);
      v14 = v23.n128_i64[1];
      v13 = v23.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v22 = 0;
      v23 = 0uLL;
      v18 = v19 + 4080;
    }

    v20 = *v17;
    v22 = 0;
    v23 = 0uLL;
    v12 = v20 + 4080;
    v11 = a2;
  }

  sub_10058C384(v11, v12, v13, v14, &v22);
  result = v23;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void sub_10058C384(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  if (a1 == a2)
  {
    a2 = a1;
  }

  else
  {
    v5 = *a3;
    v6 = a4;
    v7 = a2;
    while (1)
    {
      v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v5) >> 3);
      if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - a1) >> 3)) < v8)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - a1) >> 3);
      }

      if (v8)
      {
        v9 = -40 * v8;
        v10 = (v7 - 40);
        do
        {
          a4 = v6 - 40;
          v11 = *v10;
          v12 = v10[1];
          *(v6 - 8) = *(v10 + 4);
          *(v6 - 24) = v12;
          *(v6 - 40) = v11;
          v10 = (v10 - 40);
          v6 -= 40;
          v9 += 40;
        }

        while (v9);
      }

      else
      {
        a4 = v6;
      }

      v7 -= 40 * v8;
      if (v7 == a1)
      {
        break;
      }

      v13 = *--a3;
      v5 = v13;
      v6 = v13 + 4080;
    }

    if (*a3 + 4080 == a4)
    {
      v14 = a3[1];
      ++a3;
      a4 = v14;
    }
  }

  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
}