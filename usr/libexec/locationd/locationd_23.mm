void sub_10018E410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&state);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018E434(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 436);
  v4 = (a2 + 96);
  v3 = *(a2 + 96);
  if (v3 > 0xD)
  {
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
    {
      v6 = *v4;
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "The location type is undefined (%d).", v7, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B14E8C(v4);
    }

    ++*(a1 + 496);
  }

  else
  {
    ++*(a1 + 4 * v3 + 440);
  }

  if (*(a1 + 58) == 1)
  {
    ++*(a1 + 500);
  }
}

id sub_10018E568(uint64_t a1)
{
  result = [*(a1 + 376) setNextFireDelay:1.79769313e308];
  if (*(a1 + 408) == 1)
  {
    if (qword_1025D42E0 != -1)
    {
      dispatch_once(&qword_1025D42E0, &stru_1025044C8);
    }

    v3 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "stopping coarse location for computing geomagnetic data", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        dispatch_once(&qword_1025D42E0, &stru_1025044C8);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGeomagneticModelProviderDaemon::stopCoarseLocationUpdates()", "%s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    result = [*(*(a1 + 400) + 16) unregister:*(*(a1 + 400) + 8) forNotification:2];
    *(a1 + 408) = 0;
  }

  return result;
}

id sub_10018E72C(uint64_t a1, void *a2)
{
  if ([*(a1 + 136) hasValueForKey:@"isHarvestableSystemService" atKeyPath:a2])
  {
    v4 = *(a1 + 136);

    return [v4 BOOLForKey:@"isHarvestableSystemService" atKeyPath:a2 defaultValue:0];
  }

  else
  {
    v6 = [a2 bundlePath];
    if (!v6)
    {
      return 0;
    }

    v7 = sub_1000E67F0(v6);
    [*(a1 + 136) setBool:v7 forKey:@"isHarvestableSystemService" atKeyPath:a2];
    return v7;
  }
}

BOOL sub_10018E7E0(uint64_t a1)
{
  if (*(a1 + 20) <= 0.0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 36) > 0.0)
  {
    v3 = fabs(*(a1 + 4));
    if (v3 <= 90.0)
    {
      v4 = fabs(*(a1 + 12));
      if (v4 <= 180.0)
      {
        return v4 >= 0.0000001 || v3 >= 0.0000001;
      }
    }
  }

  return result;
}

void sub_10018E860(uint64_t a1, char a2)
{
  if (*(a1 + 520) <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 50);
      v15[0] = 67240192;
      v15[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,startBestAccuracySession,fromLocationController,%{public}d", v15, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018759C4(a1);
    }

    *(a1 + 468) = 0;
    *(a1 + 464) = 0;
    *(a1 + 500) = 0;
    *(a1 + 508) = 0;
    *(a1 + 492) = 0;
    *(a1 + 520) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 528) = _Q0;
    v11 = sub_10000B1F8();
    v15[0] = 1;
    v12 = sub_10001A6B0(v11, v15);
    *(a1 + 520) = v12;
    *(a1 + 469) = *(a1 + 50);
    v13 = *(a1 + 144);
    v14 = v13 > 0.0;
    if (v12 - v13 <= 15.0)
    {
      v14 = 0;
    }

    *(a1 + 464) = v14;
    *(a1 + 467) = *(a1 + 104);
    *(a1 + 466) = *(a1 + 88);
    sub_10017683C(a1, a2, (a1 + 520));
  }
}

void sub_10018EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 8);
  if ([*(a1 + 8) state] == 2)
  {
    if ([*v6 pipelinedSeeded])
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        if (*(a3 + 23) >= 0)
        {
          v8 = a3;
        }

        else
        {
          v8 = *a3;
        }

        *__p = 136315138;
        *&__p[4] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Already seeded - ignoring request to start due to %s", __p, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10186BBB4();
      }
    }

    else
    {
      v12 = sub_10017FA6C(a1, a2);
      if (qword_1025D4620 != -1)
      {
        sub_101869E48();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        *__p = 136446466;
        *&__p[4] = v14;
        v28 = 2082;
        v29 = sub_10017FC28(v12);
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@IndoorFlow, turnon, %{public}s, %{public}s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186BCB0(a3, v12);
      }

      v15 = *v6;
      if (v12)
      {
        if ([v15 latestReason] != v12)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v16 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v17 = a3;
            }

            else
            {
              v17 = *a3;
            }

            v18 = sub_10017FC28(v12);
            *__p = 136315394;
            *&__p[4] = v17;
            v28 = 2080;
            v29 = v18;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "%s - cannot start indoor: %s", __p, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186BDBC(a3, v12);
          }

          [*v6 setLatestReason:v12];
        }
      }

      else
      {
        [v15 setLatestReason:0];
        sub_1001B81F8(a1, a2, a3);
        if ([objc_msgSend(*(a1 + 8) "pipelinedVenues")])
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v19 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v20 = a3;
            }

            else
            {
              v20 = *a3;
            }

            *__p = 136315138;
            *&__p[4] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "%s - starting pipelined via startDaemonLocalizingImpl", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186BEC0();
          }

          if ((*(**(a1 + 24) + 104))(*(a1 + 24)))
          {
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v21 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 0;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#Warning daemon is loaded but pipelined is not seeded", __p, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186BFB4();
            }
          }

          if (sub_10025D18C(a1, a2))
          {
            [*v6 setLatestReason:5];
            if (qword_1025D4620 != -1)
            {
              sub_101869E5C();
            }

            v22 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              if (*(a3 + 23) >= 0)
              {
                v23 = a3;
              }

              else
              {
                v23 = *a3;
              }

              v24 = sub_10017FC28([*v6 latestReason]);
              *__p = 136315394;
              *&__p[4] = v23;
              v28 = 2080;
              v29 = v24;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "%s - cannot start indoor: %s", __p, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10186C098();
            }
          }

          else
          {
            sub_10025D484(a1);
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101869E5C();
          }

          v25 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v26 = a3;
            }

            else
            {
              v26 = *a3;
            }

            *__p = 136315138;
            *&__p[4] = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "%s - not in a recognized venue, not launching pipelined", __p, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10186C19C();
          }

          if ([*v6 pipelinedSeeded])
          {
            sub_10186C290();
          }

          sub_10000EC00(__p, "startIndoorIfPossible but no venues");
          sub_100264D7C(a1, __p);
          if (v30 < 0)
          {
            operator delete(*__p);
          }
        }
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      v11 = (*(**(a1 + 24) + 200))(*(a1 + 24));
      *__p = 136315394;
      *&__p[4] = v10;
      v28 = 1024;
      LODWORD(v29) = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s -- we're not in a runnable state (i.e. no clients; clients = %d)", __p, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186BA84();
    }
  }
}

void sub_10018F04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10018F070(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10018F070(a1, *a2);
    sub_10018F070(a1, a2[1]);
    sub_1003C93BC((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_10018F0D0(std::string *a1@<X8>)
{
  sub_1000ECEAC(&__str);
  v2 = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v2 >= SHIBYTE(__str.__r_.__value_.__r.__words[2]))
    {
      return;
    }

LABEL_6:
    if (v2)
    {
      std::string::push_back(a1, 58);
    }

    std::string::append(a1, &__str, v2, 2uLL);
    v2 += 2;
  }

  if (v2 < __str.__r_.__value_.__l.__size_)
  {
    goto LABEL_6;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
}

void sub_10018F160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10018F18C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 32);
  result = *(a2 + 56);
  *a1 = *a2;
  v7 = *(a3 + 140);
  v9 = a3[7];
  v8 = a3[8];
  *(a1 + 104) = a3[6];
  *(a1 + 120) = v9;
  *(a1 + 136) = v8;
  *(a1 + 148) = v7;
  v11 = a3[4];
  v10 = a3[5];
  v12 = a3[3];
  *(a1 + 40) = a3[2];
  *(a1 + 56) = v12;
  *(a1 + 72) = v11;
  *(a1 + 88) = v10;
  v13 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 24) = v13;
  *(a1 + 164) = v4;
  *(a1 + 168) = v5;
  *(a1 + 176) = result;
  *(a1 + 184) = a4;
  return result;
}

void sub_10018F1F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10018FE0C(a1, &v19);
    v4 = std::string::append(&v19, " WHERE ", 7uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v20, "MAC", 3uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v17, " = ? ", 5uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_1001901C8(&v18);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18.__r_.__value_.__r.__words[0];
    }

    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v18.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v16, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v22 = v12->__r_.__value_.__r.__words[2];
    v21 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (v22 >= 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21;
    }

    sub_1000388D8(a1 + 64, v14);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v15 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getEntriesForMac() without a backing database in CLWifiHarvestDatabase!", &v16, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE3618();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_10018F754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018F858(uint64_t a1, void *a2)
{
  if (!sub_10018E854(a1))
  {
    return 0;
  }

  *buf = *a2;
  sub_10018F1F0(a1, &v29);
  if (sub_1001903EC(a1, a2, &v29))
  {
    v4 = sub_1001AFC18(a1, a2);
    sub_10082C7BC(a1);
  }

  else
  {
    v5 = v30 - 192;
    if (sub_1002485A0(a1, a2, (v30 - 192)))
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v6 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v7 = SHIBYTE(v38);
        v8 = *__p;
        sub_1001912D0(v5, v45);
        v9 = __p;
        if (v7 < 0)
        {
          v9 = v8;
        }

        if (v48 >= 0)
        {
          v10 = v45;
        }

        else
        {
          v10 = *v45;
        }

        v11 = *(a2 + 84);
        *buf = 136315651;
        *&buf[4] = v9;
        v41 = 2085;
        v42 = v10;
        v43 = 2050;
        v44 = v11;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "%s, updating associated AP latest harvest sample %{sensitive}s with timestamp %{public}.1f", buf, 0x20u);
        if (v48 < 0)
        {
          operator delete(*v45);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194CFF4(buf);
        std::operator+<char>();
        v18 = v48;
        v19 = *v45;
        sub_1001912D0(v5, v31);
        v20 = v45;
        if (v18 < 0)
        {
          v20 = v19;
        }

        if (v34 >= 0)
        {
          v21 = v31;
        }

        else
        {
          v21 = *v31;
        }

        v22 = *(a2 + 84);
        *__p = 136315651;
        *&__p[4] = v20;
        v36 = 2085;
        v37 = v21;
        v38 = 2050;
        v39 = v22;
        v23 = _os_log_send_and_compose_impl();
        if (v34 < 0)
        {
          operator delete(*v31);
        }

        if (v48 < 0)
        {
          operator delete(*v45);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSampleIfNecessary(const CLWifiHarvestDatabaseEntry &)", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      v4 = sub_10024C340(a1, a2, v5);
    }

    else
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v12 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v13 = SHIBYTE(v43);
        v14 = *buf;
        sub_1001912D0(a2, __p);
        v15 = buf;
        if (v13 < 0)
        {
          v15 = v14;
        }

        if (v38 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = *__p;
        }

        *v45 = 136315395;
        *&v45[4] = v15;
        v46 = 2085;
        v47 = v16;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "%s, skip adding associated AP harvest sample: %{sensitive}s", v45, 0x16u);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(*__p);
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194CFF4(buf);
        std::operator+<char>();
        v24 = SHIBYTE(v38);
        v25 = *__p;
        sub_1001912D0(a2, v45);
        v26 = __p;
        if (v24 < 0)
        {
          v26 = v25;
        }

        if (v48 >= 0)
        {
          v27 = v45;
        }

        else
        {
          v27 = *v45;
        }

        *v31 = 136315395;
        *&v31[4] = v26;
        v32 = 2085;
        v33 = v27;
        v28 = _os_log_send_and_compose_impl();
        if (v48 < 0)
        {
          operator delete(*v45);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(*__p);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::addHarvestSampleIfNecessary(const CLWifiHarvestDatabaseEntry &)", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      v4 = 0;
    }
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v4;
}

void sub_10018FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10018FE0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v41);
  v4 = sub_100038730(&v42, "SELECT ", 7);
  v5 = sub_100038730(v4, "MAC", 3);
  v6 = sub_100038730(v5, ",", 1);
  v7 = sub_100038730(v6, "Channel", 7);
  v8 = sub_100038730(v7, ",", 1);
  v9 = sub_100038730(v8, "Rssi", 4);
  v10 = sub_100038730(v9, ",", 1);
  v11 = sub_100038730(v10, "ScanTimestamp", 13);
  v12 = sub_100038730(v11, ",", 1);
  v13 = strlen("Timestamp");
  v14 = sub_100038730(v12, "Timestamp", v13);
  v15 = sub_100038730(v14, ",", 1);
  v16 = strlen("Latitude");
  v17 = sub_100038730(v15, "Latitude", v16);
  v18 = sub_100038730(v17, ",", 1);
  v19 = strlen("Longitude");
  v20 = sub_100038730(v18, "Longitude", v19);
  v21 = sub_100038730(v20, ",", 1);
  v22 = strlen("HorizontalAccuracy");
  v23 = sub_100038730(v21, "HorizontalAccuracy", v22);
  v24 = sub_100038730(v23, ",", 1);
  v25 = strlen("Altitude");
  v26 = sub_100038730(v24, "Altitude", v25);
  v27 = sub_100038730(v26, ",", 1);
  v28 = strlen("VerticalAccuracy");
  v29 = sub_100038730(v27, "VerticalAccuracy", v28);
  v30 = sub_100038730(v29, ",", 1);
  v31 = sub_100038730(v30, "LoiType", 7);
  v32 = sub_100038730(v31, " FROM ", 6);
  v35 = *(a1 + 232);
  v34 = a1 + 232;
  v33 = v35;
  v36 = *(v34 + 23);
  if (v36 >= 0)
  {
    v37 = v34;
  }

  else
  {
    v37 = v33;
  }

  if (v36 >= 0)
  {
    v38 = *(v34 + 23);
  }

  else
  {
    v38 = *(v34 + 8);
  }

  sub_100038730(v32, v37, v38);
  sub_100073518(v41, a2);
  v42 = v39;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001901B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_1001901C8(std::string *a1@<X8>)
{
  v2 = strlen("Timestamp");
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v2;
  if (v2)
  {
    memmove(&__dst, "Timestamp", v2);
  }

  __dst.__r_.__value_.__s.__data_[v3] = 0;
  v4 = std::string::insert(&__dst, 0, "ORDER BY ", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v8, " ASC", 4uLL);
  *a1 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_100190308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10019033C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100190394(uint64_t result, void *a2, __int128 *a3, int a4, int a5, uint64_t a6, double a7)
{
  *result = *a2;
  v7 = *a3;
  *(result + 24) = a3[1];
  *(result + 8) = v7;
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[4];
  *(result + 88) = a3[5];
  *(result + 72) = v10;
  *(result + 56) = v9;
  *(result + 40) = v8;
  v11 = a3[6];
  v12 = a3[7];
  v13 = a3[8];
  *(result + 148) = *(a3 + 140);
  *(result + 136) = v13;
  *(result + 120) = v12;
  *(result + 104) = v11;
  *(result + 164) = a4;
  *(result + 168) = a5;
  *(result + 176) = a7;
  *(result + 184) = a6;
  return result;
}

uint64_t sub_1001903EC(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_10018E854(a1))
  {
    v6 = *(sub_100100690() + 4);
    v7 = a3[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a3) >> 6) < v6)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194D038();
      }

      v8 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        sub_10018F0D0(&__p);
        v9 = v80;
        if (v80[23] < 0)
        {
          v9 = *v80;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = p_p;
        *&buf[22] = 2048;
        *&buf[24] = v11;
        *v90 = 1024;
        *&v90[2] = v6;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as it has %lu samples, less than threshold %d", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      std::operator+<char>();
      v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v13 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v87);
      v14 = &__p;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v87;
      }

      else
      {
        v15 = v87.__r_.__value_.__r.__words[0];
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
      *v80 = 136315906;
      *&v80[4] = v14;
      *&v80[12] = 2080;
      *&v80[14] = v15;
      *&v80[22] = 2048;
      *&v80[24] = v16;
      *v81 = 1024;
      *&v81[2] = v6;
      v17 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_147:
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::shouldAddHarvestSample(const CLWifiHarvestDatabaseEntry &, const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }

      return 1;
    }

    v29 = *(a2 + 84) - *(v7 - 108);
    v30 = *(sub_100100690() + 5);
    if (v29 >= v30)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194D038();
      }

      v55 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        sub_10018F0D0(&__p);
        v56 = v80;
        if (v80[23] < 0)
        {
          v56 = *v80;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &__p;
        }

        else
        {
          v57 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v56;
        *&buf[12] = 2080;
        *&buf[14] = v57;
        *&buf[22] = 2048;
        *&buf[24] = v29;
        *v90 = 2048;
        *&v90[2] = v30;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as timelapse %.1lf >= threshold %.1lf", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      std::operator+<char>();
      v58 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v59 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v87);
      v60 = &__p;
      if (v58 < 0)
      {
        v60 = v59;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v87;
      }

      else
      {
        v61 = v87.__r_.__value_.__r.__words[0];
      }

      *v80 = 136315906;
      *&v80[4] = v60;
      *&v80[12] = 2080;
      *&v80[14] = v61;
      *&v80[22] = 2048;
      *&v80[24] = v29;
      *v81 = 2048;
      *&v81[2] = v30;
      v17 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_147;
    }

    v31 = *(a3[1] - 108) - *(a3[1] - 300);
    if (v31 >= v30)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194D038();
      }

      v62 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        sub_10018F0D0(&__p);
        v63 = v80;
        if (v80[23] < 0)
        {
          v63 = *v80;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &__p;
        }

        else
        {
          v64 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = v64;
        *&buf[22] = 2048;
        *&buf[24] = v31;
        *v90 = 2048;
        *&v90[2] = v30;
        _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as timelapse %.1lf >= threshold %.1lf for latest two harvest samples", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      std::operator+<char>();
      v76 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v77 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v87);
      v78 = &__p;
      if (v76 < 0)
      {
        v78 = v77;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v87;
      }

      else
      {
        v79 = v87.__r_.__value_.__r.__words[0];
      }

      *v80 = 136315906;
      *&v80[4] = v78;
      *&v80[12] = 2080;
      *&v80[14] = v79;
      *&v80[22] = 2048;
      *&v80[24] = v31;
      *v81 = 2048;
      *&v81[2] = v30;
      v17 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_147;
    }

    v32 = *(v7 - 168);
    *buf = *(v7 - 184);
    *&buf[16] = v32;
    v33 = *(v7 - 152);
    v34 = *(v7 - 136);
    v35 = *(v7 - 104);
    v91 = *(v7 - 120);
    v92 = v35;
    *v90 = v33;
    *&v90[16] = v34;
    v36 = *(v7 - 88);
    v37 = *(v7 - 72);
    v38 = *(v7 - 56);
    *(v95 + 12) = *(v7 - 44);
    v94 = v37;
    v95[0] = v38;
    v93 = v36;
    v39 = *(a2 + 120);
    v84 = *(a2 + 104);
    v85 = v39;
    v86[0] = *(a2 + 136);
    *(v86 + 12) = *(a2 + 148);
    v40 = *(a2 + 56);
    *v81 = *(a2 + 40);
    *&v81[16] = v40;
    v41 = *(a2 + 88);
    v82 = *(a2 + 72);
    v83 = v41;
    v42 = *(a2 + 24);
    *v80 = *(a2 + 8);
    *&v80[16] = v42;
    sub_1001097CC((a1 + 264), buf, v80);
    v44 = v43;
    v45 = *(sub_1001CBE20() + 10);
    if (v44 > v45)
    {
      if (qword_1025D4850 != -1)
      {
        sub_10194CFCC();
      }

      v46 = off_1025D4858;
      if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
      {
        std::operator+<char>();
        v47 = v80[23];
        v48 = *v80;
        sub_10018F0D0(&__p);
        v49 = v80;
        if (v47 < 0)
        {
          v49 = v48;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v50 = &__p;
        }

        else
        {
          v50 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = v49;
        *&buf[12] = 2080;
        *&buf[14] = v50;
        *&buf[22] = 2048;
        *&buf[24] = v44;
        *v90 = 2048;
        *&v90[2] = v45;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "%s, will harvest for associated AP %s as distance %.1lf greater than threshold %.1lf", buf, 0x2Au);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        return 1;
      }

      sub_10194CFF4(buf);
      std::operator+<char>();
      v51 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v52 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v87);
      v53 = &__p;
      if (v51 < 0)
      {
        v53 = v52;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v87;
      }

      else
      {
        v54 = v87.__r_.__value_.__r.__words[0];
      }

      *v80 = 136315906;
      *&v80[4] = v53;
      *&v80[12] = 2080;
      *&v80[14] = v54;
      *&v80[22] = 2048;
      *&v80[24] = v44;
      *v81 = 2048;
      *&v81[2] = v45;
      v17 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_147;
    }

    if (qword_1025D4850 != -1)
    {
      sub_10194CFCC();
    }

    v65 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      v66 = v80[23];
      v67 = *v80;
      sub_10018F0D0(&__p);
      v68 = v80;
      if (v66 < 0)
      {
        v68 = v67;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &__p;
      }

      else
      {
        v69 = __p.__r_.__value_.__r.__words[0];
      }

      v70 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
      *buf = 136316162;
      *&buf[4] = v68;
      *&buf[12] = 2080;
      *&buf[14] = v69;
      *&buf[22] = 2048;
      *&buf[24] = v70;
      *v90 = 2048;
      *&v90[2] = v29;
      *&v90[10] = 2048;
      *&v90[12] = v44;
      _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "%s, will not harvest for associated AP %s as it has %lu samples, timelapse %.1lf, distance %.1lf", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v80[23] & 0x80000000) != 0)
      {
        operator delete(*v80);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10194CFF4(buf);
      std::operator+<char>();
      v71 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v72 = __p.__r_.__value_.__r.__words[0];
      sub_10018F0D0(&v87);
      v73 = &__p;
      if (v71 < 0)
      {
        v73 = v72;
      }

      if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = &v87;
      }

      else
      {
        v74 = v87.__r_.__value_.__r.__words[0];
      }

      v75 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 6);
      *v80 = 136316162;
      *&v80[4] = v73;
      *&v80[12] = 2080;
      *&v80[14] = v74;
      *&v80[22] = 2048;
      *&v80[24] = v75;
      *v81 = 2048;
      *&v81[2] = v29;
      *&v81[10] = 2048;
      *&v81[12] = v44;
      v28 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v87.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_48:
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiAssociatedApHarvestDatabase::shouldAddHarvestSample(const CLWifiHarvestDatabaseEntry &, const std::vector<CLWifiHarvestDatabaseEntry> &)", "%s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10194D038();
    }

    v18 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      std::operator+<char>();
      v19 = buf[23];
      v20 = *buf;
      sub_10018F0D0(v80);
      v21 = buf;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v80[23] >= 0)
      {
        v22 = v80;
      }

      else
      {
        v22 = *v80;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v21;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "%s, #warning, will not harvest for associated AP %s as database is invalid", &__p, 0x16u);
      if ((v80[23] & 0x80000000) != 0)
      {
        operator delete(*v80);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10194CFF4(buf);
      std::operator+<char>();
      v24 = v80[23];
      v25 = *v80;
      sub_10018F0D0(&__p);
      v26 = v80;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &__p;
      }

      else
      {
        v27 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v87.__r_.__value_.__l.__data_) = 136315394;
      *(v87.__r_.__value_.__r.__words + 4) = v26;
      WORD2(v87.__r_.__value_.__r.__words[1]) = 2080;
      *(&v87.__r_.__value_.__r.__words[1] + 6) = v27;
      v28 = _os_log_send_and_compose_impl();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v80[23] & 0x80000000) != 0)
      {
        operator delete(*v80);
      }

      goto LABEL_48;
    }
  }

  return result;
}

void sub_100191260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001912D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  CFAbsoluteTimeGetCurrent();
  sub_10003848C(v37);
  v4 = sub_100038730(&v38, "mac, ", 5);
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_100038730(v4, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = sub_100038730(&v38, ", lat, ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 8;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v9 = sub_100038730(&v38, ", lon, ", 7);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 16) = 8;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v11 = sub_100038730(&v38, ", alt, ", 7);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 16) = 1;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v13 = sub_100038730(&v38, ", acc, ", 7);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 16) = 1;
  *(v13 + *(v14 - 24) + 8) = *(v13 + *(v14 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v15 = sub_100038730(&v38, ", vacc, ", 8);
  v16 = *v15;
  *(v15 + *(*v15 - 24) + 16) = 1;
  *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v17 = sub_100038730(&v38, ", channel, ", 11);
  v18 = *v17;
  *(v17 + *(*v17 - 24) + 16) = 0;
  *(v17 + *(v18 - 24) + 8) = *(v17 + *(v18 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v19 = sub_100038730(&v38, ", rssi, ", 8);
  v20 = *v19;
  *(v19 + *(*v19 - 24) + 16) = 0;
  *(v19 + *(v20 - 24) + 8) = *(v19 + *(v20 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v21 = sub_100038730(&v38, ", locationTime, ", 16);
  v22 = *v21;
  *(v21 + *(*v21 - 24) + 16) = 1;
  *(v21 + *(v22 - 24) + 8) = *(v21 + *(v22 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v23 = sub_100038730(&v38, ", age, ", 7);
  v24 = *v23;
  *(v23 + *(*v23 - 24) + 16) = 4;
  *(v23 + *(v24 - 24) + 8) = *(v23 + *(v24 - 24) + 8) & 0xFFFFFEFB | 4;
  v25 = std::ostream::operator<<();
  sub_100038730(v25, "h", 1);
  v26 = sub_100038730(&v38, ", scanTime, ", 12);
  v27 = *v26;
  *(v26 + *(*v26 - 24) + 16) = 1;
  *(v26 + *(v27 - 24) + 8) = *(v26 + *(v27 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v28 = sub_100038730(&v38, ", LOI, ", 7);
  sub_100191B4C(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  sub_100038730(v28, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v45 & 0x10) != 0)
  {
    v32 = v44;
    if (v44 < v41)
    {
      v44 = v41;
      v32 = v41;
    }

    locale = v40[4].__locale_;
  }

  else
  {
    if ((v45 & 8) == 0)
    {
      v31 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v40[1].__locale_;
    v32 = v40[3].__locale_;
  }

  v31 = v32 - locale;
  if ((v32 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v31 >= 0x17)
  {
    operator new();
  }

  a2[23] = v31;
  if (v31)
  {
    memmove(a2, locale, v31);
  }

LABEL_30:
  a2[v31] = 0;
  v38 = v34;
  if (v43 < 0)
  {
    operator delete(v42);
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100191AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100191B68(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 9936);
  if (*(a1 + 1577) == 1 && (*(a1 + 1545) & 1) == 0)
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v14 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GpsReferenceLocation is set}";
      goto LABEL_72;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v23 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    buf = 68289026;
    v130 = 2082;
    v131 = "";
    v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GpsReferenceLocation is set}";
LABEL_83:
    v69 = v23;
    v70 = OS_LOG_TYPE_DEBUG;
    goto LABEL_84;
  }

  if (*(a1 + 1576) != 1)
  {
    goto LABEL_104;
  }

  v7 = (a1 + 4692);
  v8 = (a1 + 4688);
  v9 = *(a1 + 4708);
  if (v9 >= 0.0)
  {
    if (v9 > 10000.0 && *(a2 + 20) < 10000.0)
    {
      goto LABEL_33;
    }

    sub_1001097CC((a1 + 11656), a2, a1 + 4688);
    v17 = v16;
    if (v16 > 10000.0)
    {
      if (v6[1832])
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v18 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_33;
        }

        v19 = *(a2 + 4);
        v20 = *(a2 + 12);
        v21 = *v7;
        v22 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v19;
        *&v133[8] = 2053;
        *&v133[10] = v20;
        *&v133[18] = 2053;
        *&v133[20] = v21;
        *&v133[28] = 2053;
        *&v133[30] = v22;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v11 = "{msg%{public}.0s:#GnssAssistancePosition, #Warning new assistance location differ from prev, sending to GPS, newLat:%{sensitive}.7f, newLon:%{sensitive}.7f, oldLat:%{sensitive}.7f, oldLon:%{sensitive}.7f, dist:%{private}.2f}";
        v12 = v18;
        v13 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v92 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_33;
        }

        v93 = *(a2 + 4);
        v94 = *(a2 + 12);
        v95 = *v7;
        v96 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v93;
        *&v133[8] = 2053;
        *&v133[10] = v94;
        *&v133[18] = 2053;
        *&v133[20] = v95;
        *&v133[28] = 2053;
        *&v133[30] = v96;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v11 = "{msg%{public}.0s:#GnssAssistancePosition, #Warning new assistance location differ from prev, sending to GPS, newLat:%{sensitive}.7f, newLon:%{sensitive}.7f, oldLat:%{sensitive}.7f, oldLon:%{sensitive}.7f, dist:%{private}.2f}";
        v12 = v92;
        v13 = OS_LOG_TYPE_DEBUG;
      }

      v25 = 68;
      goto LABEL_32;
    }

    if (v6[1832])
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v82 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v83 = *(a2 + 4);
        v84 = *(a2 + 12);
        v85 = *v7;
        v86 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v83;
        *&v133[8] = 2053;
        *&v133[10] = v84;
        *&v133[18] = 2053;
        *&v133[20] = v85;
        *&v133[28] = 2053;
        *&v133[30] = v86;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v87 = v82;
        v88 = OS_LOG_TYPE_DEFAULT;
LABEL_103:
        _os_log_impl(dword_100000000, v87, v88, "{msg%{public}.0s:#GnssAssistancePosition, drop,new assistance location differ slightly from prev, not sending to GPS, newLat:%{sensitive}.7f, newLon:%{sensitive}.7f, oldLat:%{sensitive}.7f, oldLon:%{sensitive}.7f, dist:%{private}.2f}", &buf, 0x44u);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v97 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v98 = *(a2 + 4);
        v99 = *(a2 + 12);
        v100 = *v7;
        v101 = *(a1 + 4700);
        buf = 68290307;
        v130 = 2082;
        v131 = "";
        v132 = 2053;
        *v133 = v98;
        *&v133[8] = 2053;
        *&v133[10] = v99;
        *&v133[18] = 2053;
        *&v133[20] = v100;
        *&v133[28] = 2053;
        *&v133[30] = v101;
        *&v133[38] = 2049;
        *&v133[40] = v17;
        v87 = v97;
        v88 = OS_LOG_TYPE_DEBUG;
        goto LABEL_103;
      }
    }

LABEL_104:
    if (v6[1832] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v102 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v103 = *(a2 + 96);
      v104 = *(a2 + 4);
      v105 = *(a2 + 12);
      v106 = *(a2 + 28);
      v107 = *(a2 + 20);
      v108 = *(a2 + 36);
      v109 = *(a1 + 1576);
      buf = 68290819;
      v130 = 2082;
      v131 = "";
      v132 = 1026;
      *v133 = v103;
      *&v133[4] = 2053;
      *&v133[6] = v104;
      *&v133[14] = 2053;
      *&v133[16] = v105;
      *&v133[24] = 2050;
      *&v133[26] = v106;
      *&v133[34] = 2050;
      *&v133[36] = v107;
      *&v133[44] = 2050;
      *&v133[46] = v108;
      v134 = 1026;
      v135 = v109;
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not using location assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, GpsUseCachedLocation:%{public}hhd}";
      v69 = v102;
      v70 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v110 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v111 = *(a2 + 96);
      v112 = *(a2 + 4);
      v113 = *(a2 + 12);
      v114 = *(a2 + 28);
      v115 = *(a2 + 20);
      v116 = *(a2 + 36);
      v117 = *(a1 + 1576);
      buf = 68290819;
      v130 = 2082;
      v131 = "";
      v132 = 1026;
      *v133 = v111;
      *&v133[4] = 2053;
      *&v133[6] = v112;
      *&v133[14] = 2053;
      *&v133[16] = v113;
      *&v133[24] = 2050;
      *&v133[26] = v114;
      *&v133[34] = 2050;
      *&v133[36] = v115;
      *&v133[44] = 2050;
      *&v133[46] = v116;
      v134 = 1026;
      v135 = v117;
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not using location assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, GpsUseCachedLocation:%{public}hhd}";
      v69 = v110;
      v70 = OS_LOG_TYPE_DEBUG;
    }

    v81 = 80;
    goto LABEL_114;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v11 = "{msg%{public}.0s:#GnssAssistancePosition, assistance location now available, sending to GPS}";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_31:
      v25 = 18;
LABEL_32:
      _os_log_impl(dword_100000000, v12, v13, v11, &buf, v25);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v11 = "{msg%{public}.0s:#GnssAssistancePosition, assistance location now available, sending to GPS}";
      v12 = v24;
      v13 = OS_LOG_TYPE_DEBUG;
      goto LABEL_31;
    }
  }

LABEL_33:
  v26 = *(a2 + 16);
  *(a1 + 9112) = *a2;
  *(a1 + 9128) = v26;
  v27 = *(a2 + 32);
  v28 = *(a2 + 48);
  v29 = *(a2 + 80);
  *(a1 + 9176) = *(a2 + 64);
  *(a1 + 9192) = v29;
  *(a1 + 9144) = v27;
  *(a1 + 9160) = v28;
  v30 = *(a2 + 96);
  v31 = *(a2 + 112);
  v32 = *(a2 + 128);
  *(a1 + 9252) = *(a2 + 140);
  *(a1 + 9224) = v31;
  *(a1 + 9240) = v32;
  *(a1 + 9208) = v30;
  memcpy((a1 + 9272), (a2 + 160), 0x201uLL);
  v33 = *(a2 + 680);
  v34 = *(a2 + 688);
  if (v34)
  {
    atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 9792) = v33;
  v35 = *(a1 + 9800);
  *(a1 + 9800) = v34;
  if (v35)
  {
    sub_100008080(v35);
  }

  v36 = (a1 + 1584);
  v37 = *(a2 + 696);
  v38 = *(a2 + 712);
  *(a1 + 9840) = *(a2 + 728);
  *(a1 + 9824) = v38;
  *(a1 + 9808) = v37;
  v39 = *(a2 + 744);
  v40 = *(a2 + 760);
  v41 = *(a2 + 776);
  *(a1 + 9897) = *(a2 + 785);
  *(a1 + 9888) = v41;
  *(a1 + 9872) = v40;
  *(a1 + 9856) = v39;
  *v6 = 0;
  v42 = *(a1 + 9196);
  if (v42 <= 74)
  {
    if (v42 <= 49)
    {
      if (v42 <= 24)
      {
        v43 = 1;
      }

      else
      {
        v43 = 2;
      }
    }

    else
    {
      v43 = 3;
    }
  }

  else
  {
    v43 = 4;
  }

  *(a1 + 9920) = v43;
  *(a1 + 9924) = v43;
  *(a1 + 9940) = 0;
  v44 = *(a1 + 9224);
  *(a1 + 1680) = *(a1 + 9208);
  *(a1 + 1696) = v44;
  *(a1 + 1712) = *(a1 + 9240);
  *(a1 + 1724) = *(a1 + 9252);
  v45 = *(a1 + 9160);
  *(a1 + 1616) = *(a1 + 9144);
  *(a1 + 1632) = v45;
  v46 = *(a1 + 9192);
  *(a1 + 1648) = *(a1 + 9176);
  *(a1 + 1664) = v46;
  v47 = *(a1 + 9128);
  *v36 = *(a1 + 9112);
  *(a1 + 1600) = v47;
  memcpy((a1 + 1744), (a1 + 9272), 0x201uLL);
  v48 = *(a1 + 9792);
  v49 = *(a1 + 9800);
  if (v49)
  {
    atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2264) = v48;
  v50 = *(a1 + 2272);
  *(a1 + 2272) = v49;
  if (v50)
  {
    sub_100008080(v50);
  }

  v51 = *(a1 + 9888);
  *(a1 + 2344) = *(a1 + 9872);
  *(a1 + 2360) = v51;
  *(a1 + 2369) = *(a1 + 9897);
  v52 = *(a1 + 9824);
  *(a1 + 2280) = *(a1 + 9808);
  *(a1 + 2296) = v52;
  v53 = *(a1 + 9856);
  *(a1 + 2312) = *(a1 + 9840);
  *(a1 + 2328) = v53;
  v54 = *(a1 + 488);
  if (v54 && a3)
  {
    v55 = *(a1 + 1696);
    v118[6] = *(a1 + 1680);
    v118[7] = v55;
    v119[0] = *(a1 + 1712);
    *(v119 + 12) = *(a1 + 1724);
    v56 = *(a1 + 1632);
    v118[2] = *(a1 + 1616);
    v118[3] = v56;
    v57 = *(a1 + 1664);
    v118[4] = *(a1 + 1648);
    v118[5] = v57;
    v58 = *(a1 + 1600);
    v118[0] = *v36;
    v118[1] = v58;
    memcpy(v120, (a1 + 1744), sizeof(v120));
    v121 = *(a1 + 2264);
    v59 = *(a1 + 2272);
    v122 = v59;
    if (v59)
    {
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v60 = *(a1 + 2360);
    v127 = *(a1 + 2344);
    v128[0] = v60;
    *(v128 + 9) = *(a1 + 2369);
    v61 = *(a1 + 2296);
    v123 = *(a1 + 2280);
    v124 = v61;
    v62 = *(a1 + 2328);
    v125 = *(a1 + 2312);
    v126 = v62;
    sub_1002248AC(v54, v118);
    if (v122)
    {
      sub_100008080(v122);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v63 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "GnssAssistancePosition: Feed cached location to position assistance maintenance", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A964F4();
    }
  }

  if (*(a1 + 1544) != 1)
  {
    if (v6[1832])
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v14 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      buf = 68289026;
      v130 = 2082;
      v131 = "";
      v15 = "{msg%{public}.0s:#GnssAssistancePosition, cache,location since position assistance engine not running}";
LABEL_72:
      v69 = v14;
      v70 = OS_LOG_TYPE_DEFAULT;
LABEL_84:
      v81 = 18;
LABEL_114:
      _os_log_impl(dword_100000000, v69, v70, v15, &buf, v81);
      return;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v23 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    buf = 68289026;
    v130 = 2082;
    v131 = "";
    v15 = "{msg%{public}.0s:#GnssAssistancePosition, cache,location since position assistance engine not running}";
    goto LABEL_83;
  }

  if (!v6[1832])
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v71 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_78;
    }

    v72 = *(a2 + 4);
    v73 = *(a2 + 12);
    buf = 68289795;
    v130 = 2082;
    v131 = "";
    v132 = 1025;
    *v133 = v43;
    *&v133[4] = 2053;
    *&v133[6] = v72;
    *&v133[14] = 2053;
    *&v133[16] = v73;
    v67 = v71;
    v68 = OS_LOG_TYPE_DEBUG;
    goto LABEL_77;
  }

  if (v6[1833])
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v64 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v65 = *(a2 + 4);
    v66 = *(a2 + 12);
    buf = 68289795;
    v130 = 2082;
    v131 = "";
    v132 = 1025;
    *v133 = v43;
    *&v133[4] = 2053;
    *&v133[6] = v65;
    *&v133[14] = 2053;
    *&v133[16] = v66;
    v67 = v64;
    v68 = OS_LOG_TYPE_DEFAULT;
LABEL_77:
    _os_log_impl(dword_100000000, v67, v68, "{msg%{public}.0s:#GnssAssistancePosition, feed,valid reference location, reliability:%{private}d, latitude:%{sensitive}.7f, longitude:%{sensitive}.7f}", &buf, 0x2Cu);
LABEL_78:
    sub_1001BBE34(a1, a1 + 9112);
    v74 = *(a2 + 16);
    *v8 = *a2;
    *(a1 + 4704) = v74;
    v75 = *(a2 + 32);
    v76 = *(a2 + 48);
    v77 = *(a2 + 80);
    *(a1 + 4752) = *(a2 + 64);
    *(a1 + 4768) = v77;
    *(a1 + 4720) = v75;
    *(a1 + 4736) = v76;
    v78 = *(a2 + 96);
    v79 = *(a2 + 112);
    v80 = *(a2 + 128);
    *(a1 + 4828) = *(a2 + 140);
    *(a1 + 4800) = v79;
    *(a1 + 4816) = v80;
    *(a1 + 4784) = v78;
    return;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1001A7560();
  }

  v89 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v90 = v6[1832];
    v91 = v6[1833];
    buf = 68289538;
    v130 = 2082;
    v131 = "";
    v132 = 1026;
    *v133 = v90;
    *&v133[4] = 1026;
    *&v133[6] = v91;
    v15 = "{msg%{public}.0s:#GnssAssistancePosition, drop,reference location, fInEmergency:%{public}d, fHeloEnabled:%{public}d}";
    v69 = v89;
    v70 = OS_LOG_TYPE_DEFAULT;
    v81 = 30;
    goto LABEL_114;
  }
}

void sub_100192848(_Unwind_Exception *a1)
{
  if (STACK[0x2B0])
  {
    sub_100008080(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100192868(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((sub_100019438(a2, v2 + 4) & 0x80) == 0)
      {
        if ((sub_100019438(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void sub_1001928D0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = (a1 + 11640);
  v8 = sub_1001CCA3C(a2, a2 + 160);
  Current = CFAbsoluteTimeGetCurrent();
  if (v7[128] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = *(a2 + 476);
      v13 = *(a2 + 472);
      v14 = *(a2 + 128);
      v15 = *(a2 + 132);
      v16 = *(a2 + 136);
      *buf = 68291331;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v11;
      *&v292[8] = 1026;
      *&v292[10] = v14;
      *&v292[14] = 2050;
      *&v292[16] = v12;
      *v293 = 1026;
      *&v293[2] = v13;
      *&v293[6] = 1026;
      *&v293[8] = v15;
      *v294 = 1026;
      *&v294[2] = v16;
      *v295 = 1026;
      *&v295[2] = a3;
      *v296 = 2050;
      *&v296[2] = v8;
      v297 = 1026;
      v298 = a4;
      v17 = v10;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = *(a2 + 476);
      v22 = *(a2 + 472);
      v23 = *(a2 + 128);
      v24 = *(a2 + 132);
      v25 = *(a2 + 136);
      *buf = 68291331;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v20;
      *&v292[8] = 1026;
      *&v292[10] = v23;
      *&v292[14] = 2050;
      *&v292[16] = v21;
      *v293 = 1026;
      *&v293[2] = v22;
      *&v293[6] = 1026;
      *&v293[8] = v24;
      *v294 = 1026;
      *&v294[2] = v25;
      *v295 = 1026;
      *&v295[2] = a3;
      *v296 = 2050;
      *&v296[2] = v8;
      v297 = 1026;
      v298 = a4;
      v17 = v19;
      v18 = OS_LOG_TYPE_DEBUG;
LABEL_16:
      _os_log_impl(dword_100000000, v17, v18, "{msg%{public}.0s:#GnssAssistancePosition, #GnssAssistancePosition,handlePositionAssistance, location,:%{sensitive, location:escape_only}s, integrity:%{public}d, undulation:%{public}f, undulationModel:%{public}d, referenceFrame:%{public}d, rawReferenceFrame:%{public}d, isCpiCandidate:%{public}d, age:%{public}.1f, isExternalLocationHandling:%{public}d}", buf, 0x54u);
      if (v286 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v26 = (a2 + 96);
  v27 = *(a2 + 96) == 0;
  if (*(a2 + 20) <= 0.0)
  {
    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v35 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 68289026;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,hunc invalid}";
      v36 = v35;
      v37 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v40 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 68289026;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,hunc invalid}";
      v36 = v40;
      v37 = OS_LOG_TYPE_DEBUG;
    }

    v41 = 18;
    goto LABEL_144;
  }

  v28 = *(a2 + 516);
  v29 = sub_100196658(a1);
  v30 = v29;
  if ((*v26 == 11 || *v26 == 4) && (v7[128] & 1) == 0 && ((v29 & 1) != 0 || *(a1 + 1579) == 1))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v42 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v43 = v7[128];
    v44 = *(a1 + 1579);
    *buf = 68289794;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v291 = 1026;
    *v292 = v43;
    *&v292[4] = 1026;
    *&v292[6] = v30;
    *&v292[10] = 1026;
    *&v292[12] = v44;
    v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,ignoring wifi location assistance in tunnel or airborne, InEmergency:%{public}d, InTunnel:%{public}d, IsAirborne:%{public}d}";
    v36 = v42;
    v37 = OS_LOG_TYPE_DEBUG;
    v41 = 36;
    goto LABEL_144;
  }

  v283 = (a1 + 2420);
  if (*(a1 + 6476) > 0.0)
  {
    v31 = 4688;
    if (a3)
    {
      v31 = 4844;
    }

    if (sub_100195BF8(a1, a2, a1 + v31))
    {
      if (v7[128] == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v32 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v33 = *v26;
        *buf = 68289282;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 1026;
        *v292 = v33;
        v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isCellOverridingRecentWifi, location.type:%{public}d}";
        goto LABEL_137;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v50 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v52 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v52;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isCellOverridingRecentWifi, location.type:%{public}d}";
LABEL_142:
      v36 = v50;
      v37 = OS_LOG_TYPE_DEBUG;
      goto LABEL_143;
    }
  }

  if (a3)
  {
    v38 = a1 + 4844;
  }

  else
  {
    v38 = a1 + 4688;
  }

  v282 = v38;
  if (sub_100195A14(a1, a2, v38))
  {
    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v32 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v39 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v39;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isWifiOverridingRecentPipeline, location.type:%{public}d}";
      goto LABEL_137;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v50 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v51 = *v26;
    *buf = 68289282;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v291 = 1026;
    *v292 = v51;
    v34 = "{msg%{public}.0s:#GnssAssistancePosition, validate,drop,isWifiOverridingRecentPipeline, location.type:%{public}d}";
    goto LABEL_142;
  }

  if (*v7 == 1)
  {
    v45 = sub_1001CCA3C(a1 + 10832, a1 + 10992);
    if (v45 < 0.0 || v45 > 10.0)
    {
      v46 = *(a1 + 8240);
      v47 = *(a1 + 8248);
      *(a1 + 8272) = 0;
      v48 = (v47 - v46) >> 3;
      if (v48 >= 3)
      {
        do
        {
          operator delete(*v46);
          v46 = (*(a1 + 8240) + 8);
          *(a1 + 8240) = v46;
          v48 = (*(a1 + 8248) - v46) >> 3;
        }

        while (v48 > 2);
      }

      if (v48 == 1)
      {
        v49 = 256;
        goto LABEL_73;
      }

      if (v48 == 2)
      {
        v49 = 512;
LABEL_73:
        *(a1 + 8264) = v49;
      }
    }
  }

  if (*(a2 + 44) >= 0.0 && *(a2 + 52) > 0.0)
  {
    sub_10029278C(a1 + 10832, a2);
    sub_1000A2B60((a1 + 8232), (a2 + 44));
    v53 = *(a1 + 8272);
    if (v53 >= 0x15)
    {
      v54 = *(a1 + 8264);
      *(a1 + 8272) = v53 - 1;
      *(a1 + 8264) = v54 + 1;
      sub_1000A2BE8(a1 + 8232, 1);
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v55 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v56 = v55;
        v57 = OS_LOG_TYPE_DEFAULT;
LABEL_87:
        _os_log_impl(dword_100000000, v56, v57, "{msg%{public}.0s:#GnssAssistancePosition, cache,valid speed}", buf, 0x12u);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v58 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v56 = v58;
        v57 = OS_LOG_TYPE_DEBUG;
        goto LABEL_87;
      }
    }
  }

  if (v8 <= 60.0 && v8 >= 0.0)
  {
    goto LABEL_90;
  }

  if (*(a2 + 20) < 500.0)
  {
    *(a2 + 20) = 0x407F400000000000;
    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v61 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        sub_100072AFC(a2, __p);
        if (v286 >= 0)
        {
          v62 = __p;
        }

        else
        {
          v62 = __p[0];
        }

        *buf = 68289283;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 2085;
        *v292 = v62;
        v63 = v61;
        v64 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_164;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v101 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        sub_100072AFC(a2, __p);
        if (v286 >= 0)
        {
          v102 = __p;
        }

        else
        {
          v102 = __p[0];
        }

        *buf = 68289283;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 2085;
        *v292 = v102;
        v63 = v101;
        v64 = OS_LOG_TYPE_DEBUG;
LABEL_164:
        _os_log_impl(dword_100000000, v63, v64, "{msg%{public}.0s:#GnssAssistancePosition, adjust,hunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
        if (v286 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v103 = *(a2 + 36);
  if (v103 <= 0.0 || v103 >= 200.0)
  {
    goto LABEL_90;
  }

  *(a2 + 36) = 0x4069000000000000;
  if (v7[128] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v104 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v105 = __p;
      }

      else
      {
        v105 = __p[0];
      }

      *buf = 68289283;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v105;
      v106 = v104;
      v107 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_183;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v108 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v109 = __p;
      }

      else
      {
        v109 = __p[0];
      }

      *buf = 68289283;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v109;
      v106 = v108;
      v107 = OS_LOG_TYPE_DEBUG;
LABEL_183:
      _os_log_impl(dword_100000000, v106, v107, "{msg%{public}.0s:#GnssAssistancePosition, adjust,vunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
      if (v286 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_90:
  v59 = v27 & v28;
  v60 = *v26;
  if (*v26 > 6)
  {
    if (v60 > 10)
    {
      if (v60 != 11)
      {
        if (v60 != 12 && v60 != 14)
        {
          goto LABEL_322;
        }

        goto LABEL_132;
      }

      v123 = sub_1000081AC();
      if (v123 - *(a1 + 11712) >= *(a1 + 11720))
      {
        *(a1 + 11712) = v123;
        goto LABEL_322;
      }

      if (v7[128] == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v65 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        sub_100072AFC(a2, __p);
        if (v286 >= 0)
        {
          v142 = __p;
        }

        else
        {
          v142 = __p[0];
        }

        v143 = *(a1 + 11712);
        *buf = 68289539;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v291 = 2085;
        *v292 = v142;
        *&v292[8] = 2050;
        *&v292[10] = v143;
        v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate WiFi2 location, location,:%{sensitive, location:escape_only}s, machTimeOfLastHighRateWifi2Assistance:%{public}f}";
        goto LABEL_262;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v144 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v151 = __p;
      }

      else
      {
        v151 = __p[0];
      }

      v152 = *(a1 + 11712);
      *buf = 68289539;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v151;
      *&v292[8] = 2050;
      *&v292[10] = v152;
      v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate WiFi2 location, location,:%{sensitive, location:escape_only}s, machTimeOfLastHighRateWifi2Assistance:%{public}f}";
      goto LABEL_289;
    }

    switch(v60)
    {
      case 7:
        v114 = *(a2 + 16);
        *(a1 + 8072) = *a2;
        *(a1 + 8088) = v114;
        v115 = *(a2 + 32);
        v116 = *(a2 + 48);
        v117 = *(a2 + 80);
        *(a1 + 8136) = *(a2 + 64);
        *(a1 + 8152) = v117;
        *(a1 + 8104) = v115;
        *(a1 + 8120) = v116;
        v118 = *(a2 + 96);
        v119 = *(a2 + 112);
        v120 = *(a2 + 128);
        *(a1 + 8212) = *(a2 + 140);
        *(a1 + 8184) = v119;
        *(a1 + 8200) = v120;
        *(a1 + 8168) = v118;
        if (v7[128] != 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v135 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_322;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,LAC location}";
          goto LABEL_241;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v93 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_322;
        }

        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,LAC location}";
        break;
      case 9:
LABEL_146:
        if (v8 >= 0.0 && v8 <= 6.0 && (*(a1 + 1580) & 1) != 0)
        {
          if (v7[128])
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v97 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v98 = __p;
            }

            else
            {
              v98 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v98;
            v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GPS fix, location,:%{sensitive, location:escape_only}s}";
            v99 = v97;
            v100 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v136 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v137 = __p;
            }

            else
            {
              v137 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v137;
            v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,GPS fix, location,:%{sensitive, location:escape_only}s}";
            v99 = v136;
            v100 = OS_LOG_TYPE_DEBUG;
          }

          v138 = 28;
LABEL_291:
          _os_log_impl(dword_100000000, v99, v100, v68, buf, v138);
          if (v286 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

        if (v7[128])
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v124 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_322;
          }

          sub_100072AFC(a2, __p);
          if (v286 >= 0)
          {
            v125 = __p;
          }

          else
          {
            v125 = __p[0];
          }

          *buf = 68289539;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v291 = 2085;
          *v292 = v125;
          *&v292[8] = 2050;
          *&v292[10] = v8;
          v126 = v124;
          v127 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v140 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_322;
          }

          sub_100072AFC(a2, __p);
          if (v286 >= 0)
          {
            v141 = __p;
          }

          else
          {
            v141 = __p[0];
          }

          *buf = 68289539;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v291 = 2085;
          *v292 = v141;
          *&v292[8] = 2050;
          *&v292[10] = v8;
          v126 = v140;
          v127 = OS_LOG_TYPE_DEBUG;
        }

        _os_log_impl(dword_100000000, v126, v127, "{msg%{public}.0s:#GnssAssistancePosition, qualified GPS location back to GPS as assistance, location,:%{sensitive, location:escape_only}s, age:%{public}.1f}", buf, 0x26u);
        if (v286 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_322:
        v172 = *(a1 + 1560);
        if (v172)
        {
          v173 = *v26;
          do
          {
            v174 = *(v172 + 7);
            if (v173 >= v174)
            {
              if (v174 >= v173)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1001A7560();
                }

                v190 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  v191 = *v26;
                  *buf = 67109120;
                  v288 = v191;
                  _os_log_impl(dword_100000000, v190, OS_LOG_TYPE_DEFAULT, "#GnssAssistancePosition,rejecting position assistance due to location type blocklist,%d", buf, 8u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A96314(v26);
                }

                return;
              }

              ++v172;
            }

            v172 = *v172;
          }

          while (v172);
        }

        if (a3)
        {
          v175 = *v26;
          if (*v26 != 4 && v175 != 11)
          {
            if (v7[128] == 1)
            {
              if (v175 != 10 && !(((v175 - 6) < 3) | v59 & 1))
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1001A7560();
                }

                v192 = qword_1025D4658;
                if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_504;
                }

                sub_100072AFC(a2, __p);
                if (v286 >= 0)
                {
                  v193 = __p;
                }

                else
                {
                  v193 = __p[0];
                }

                *buf = 68289539;
                v288 = 0;
                v289 = 2082;
                v290 = "";
                v291 = 2085;
                *v292 = v193;
                *&v292[8] = 1026;
                *&v292[10] = 0;
                v194 = v192;
                v195 = OS_LOG_TYPE_DEFAULT;
                goto LABEL_383;
              }
            }

            else if ((v59 & 1) == 0)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v196 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_504;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v197 = __p;
              }

              else
              {
                v197 = __p[0];
              }

              *buf = 68289539;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v197;
              *&v292[8] = 1026;
              *&v292[10] = 0;
              v194 = v196;
              v195 = OS_LOG_TYPE_DEBUG;
LABEL_383:
              _os_log_impl(dword_100000000, v194, v195, "{msg%{public}.0s:#GnssAssistancePosition, drop,not WiFi nor cell/pipelined during emergency and TunnelEndPointAssist location for CPI, location,:%{sensitive, location:escape_only}s, isTunnelEndPointAssistance:%{public}d}", buf, 0x22u);
              if (v286 < 0)
              {
                operator delete(__p[0]);
              }

              goto LABEL_504;
            }
          }
        }

        if (!sub_100195800(a1, a2, v282) || !sub_100195DDC(a1, a2, v8))
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v184 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_504;
            }

            *buf = 68289026;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, drop,repeated or invalid position}";
            v186 = v184;
            v187 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v188 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_504;
            }

            *buf = 68289026;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, drop,repeated or invalid position}";
            v186 = v188;
            v187 = OS_LOG_TYPE_DEBUG;
          }

          v189 = 18;
LABEL_358:
          _os_log_impl(dword_100000000, v186, v187, v185, buf, v189);
LABEL_504:
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v270 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v271 = *(a2 + 96);
            v272 = *(a2 + 4);
            v273 = *(a2 + 12);
            v274 = *(a2 + 28);
            v275 = *(a2 + 84);
            *buf = 68290307;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v271;
            *&v292[4] = 2053;
            *&v292[6] = v272;
            *&v292[14] = 2053;
            *&v292[16] = v273;
            *v293 = 2050;
            *&v293[2] = v274;
            *&v293[10] = 1026;
            *v294 = v275;
            v34 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding location, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, conf:%{public}d}";
            v36 = v270;
            v37 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v276 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              return;
            }

            v277 = *(a2 + 96);
            v278 = *(a2 + 4);
            v279 = *(a2 + 12);
            v280 = *(a2 + 28);
            v281 = *(a2 + 84);
            *buf = 68290307;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v277;
            *&v292[4] = 2053;
            *&v292[6] = v278;
            *&v292[14] = 2053;
            *&v292[16] = v279;
            *v293 = 2050;
            *&v293[2] = v280;
            *&v293[10] = 1026;
            *v294 = v281;
            v34 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding location, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, conf:%{public}d}";
            v36 = v276;
            v37 = OS_LOG_TYPE_DEBUG;
          }

          v41 = 60;
          goto LABEL_144;
        }

        if (*(a1 + 5668) > 0.0)
        {
          v177 = sub_1001CCA3C(a1 + 5648, a1 + 5808);
          v178 = v177 >= 0.0;
          if (v177 >= 3.0)
          {
            v178 = 0;
          }

          if ((v59 & v178) == 1)
          {
            if (v7[128] == 1)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v179 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_418;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v180 = __p;
              }

              else
              {
                v180 = __p[0];
              }

              *buf = 68289539;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v180;
              *&v292[8] = 2050;
              *&v292[10] = v177;
              v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding tunnel end point assistance,as GNSS is still fresh, location,:%{sensitive, location:escape_only}s, gpsAge:%{public}f}";
              v182 = v179;
              v183 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v200 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_418;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v201 = __p;
              }

              else
              {
                v201 = __p[0];
              }

              *buf = 68289539;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v201;
              *&v292[8] = 2050;
              *&v292[10] = v177;
              v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not feeding tunnel end point assistance,as GNSS is still fresh, location,:%{sensitive, location:escape_only}s, gpsAge:%{public}f}";
              v182 = v200;
              v183 = OS_LOG_TYPE_DEBUG;
            }

            v202 = 38;
LABEL_405:
            _os_log_impl(dword_100000000, v182, v183, v181, buf, v202);
            if (v286 < 0)
            {
              operator delete(__p[0]);
            }

LABEL_418:
            v203 = 0;
            goto LABEL_419;
          }

          if (v177 < 10.0)
          {
            if (v7[128] == 1)
            {
              if (v7[168] == 1 && (*(a2 + 84) < 0x45u || *(a2 + 20) > 100.0))
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1001A7560();
                }

                v198 = qword_1025D4658;
                if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_418;
                }

                sub_100072AFC(a2, __p);
                if (v286 >= 0)
                {
                  v199 = __p;
                }

                else
                {
                  v199 = __p[0];
                }

                *buf = 68289283;
                v288 = 0;
                v289 = 2082;
                v290 = "";
                v291 = 2085;
                *v292 = v199;
                v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,recent GPS low confidence, location,:%{sensitive, location:escape_only}s}";
                v182 = v198;
                v183 = OS_LOG_TYPE_DEFAULT;
                goto LABEL_417;
              }
            }

            else if (*(a2 + 84) < 0x45u || *(a2 + 20) > 100.0)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v204 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_418;
              }

              sub_100072AFC(a2, __p);
              if (v286 >= 0)
              {
                v205 = __p;
              }

              else
              {
                v205 = __p[0];
              }

              *buf = 68289283;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 2085;
              *v292 = v205;
              v181 = "{msg%{public}.0s:#GnssAssistancePosition, drop,recent GPS low confidence, location,:%{sensitive, location:escape_only}s}";
              v182 = v204;
              v183 = OS_LOG_TYPE_DEBUG;
LABEL_417:
              v202 = 28;
              goto LABEL_405;
            }
          }
        }

        v203 = 1;
LABEL_419:
        if (v7[128] != 1 || *(a2 + 36) > 0.0)
        {
LABEL_441:
          if (!v203)
          {
            goto LABEL_504;
          }

LABEL_442:
          v219 = sub_100196860(a1, a2);
          if (v219 != -1)
          {
            if (v7[128])
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v220 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_461;
              }

              v221 = *(a2 + 96);
              v222 = *(a2 + 4);
              v223 = *(a2 + 12);
              v224 = *(a2 + 28);
              v225 = *(a2 + 84);
              v226 = *(a2 + 36);
              *buf = 68291075;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v221;
              *&v292[4] = 2053;
              *&v292[6] = v222;
              *&v292[14] = 2053;
              *&v292[16] = v223;
              *v293 = 2050;
              *&v293[2] = v224;
              *&v293[10] = 1026;
              *v294 = v225;
              *&v294[4] = 1026;
              *v295 = a3;
              *&v295[4] = 1026;
              *v296 = v219;
              *&v296[4] = 1026;
              *&v296[6] = v226;
              v227 = v220;
              v228 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v233 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_461;
              }

              v234 = *(a2 + 96);
              v235 = *(a2 + 4);
              v236 = *(a2 + 12);
              v237 = *(a2 + 28);
              v238 = *(a2 + 84);
              v239 = *(a2 + 36);
              *buf = 68291075;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v234;
              *&v292[4] = 2053;
              *&v292[6] = v235;
              *&v292[14] = 2053;
              *&v292[16] = v236;
              *v293 = 2050;
              *&v293[2] = v237;
              *&v293[10] = 1026;
              *v294 = v238;
              *&v294[4] = 1026;
              *v295 = a3;
              *&v295[4] = 1026;
              *v296 = v219;
              *&v296[4] = 1026;
              *&v296[6] = v239;
              v227 = v233;
              v228 = OS_LOG_TYPE_DEBUG;
            }

            _os_log_impl(dword_100000000, v227, v228, "{msg%{public}.0s:#GnssAssistancePosition, adjust,confidence, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, confidence:%{public}d, isCpi:%{public}d, verifiedConf:%{public}d, altUnc:%{public}d}", buf, 0x4Eu);
LABEL_461:
            *(a2 + 84) = v219;
            if (sub_100073270(a1 + 4016, a2))
            {
              v240 = 1;
              *(a1 + 4011) = 1;
            }

            else
            {
              v240 = 0;
            }

            *(a1 + 4009) = v240;
            if (!a3)
            {
              sub_100191B68(a1, a2, a4);
              if (a4 && (*(a1 + 1580) & 1) == 0 && (*v26 | 8) == 9)
              {
                *(a1 + 1580) = 1;
              }

              return;
            }

            sub_1001540BC(a1, a2);
            if (v7[128] == 1)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v241 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                return;
              }

              v242 = *(a1 + 4011);
              v243 = *(a1 + 4009);
              v244 = *(a1 + 4010);
              v245 = *(a1 + 4012);
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v242;
              *&v292[4] = 1026;
              *&v292[6] = v243;
              *&v292[10] = 1026;
              *&v292[12] = v244;
              *&v292[16] = 1026;
              *&v292[18] = v245;
              v34 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,injected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
              v36 = v241;
              v37 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v258 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                return;
              }

              v259 = *(a1 + 4011);
              v260 = *(a1 + 4009);
              v261 = *(a1 + 4010);
              v262 = *(a1 + 4012);
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v259;
              *&v292[4] = 1026;
              *&v292[6] = v260;
              *&v292[10] = 1026;
              *&v292[12] = v261;
              *&v292[16] = 1026;
              *&v292[18] = v262;
              v34 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,injected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
              v36 = v258;
              v37 = OS_LOG_TYPE_DEBUG;
            }

            v41 = 42;
LABEL_144:
            _os_log_impl(dword_100000000, v36, v37, v34, buf, v41);
            return;
          }

          if (v7[128])
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v229 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_483;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v230 = __p;
            }

            else
            {
              v230 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v230;
            v231 = v229;
            v232 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v246 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_483;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v247 = __p;
            }

            else
            {
              v247 = __p[0];
            }

            *buf = 68289283;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v247;
            v231 = v246;
            v232 = OS_LOG_TYPE_DEBUG;
          }

          _os_log_impl(dword_100000000, v231, v232, "{msg%{public}.0s:#GnssAssistancePosition, drop,cell cross-check produce invalid location confidence, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
          if (v286 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_483:
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v248 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_504;
            }

            v249 = *(a1 + 4011);
            v250 = *(a1 + 4009);
            v251 = *(a1 + 4010);
            v252 = *(a1 + 4012);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v249;
            *&v292[4] = 1026;
            *&v292[6] = v250;
            *&v292[10] = 1026;
            *&v292[12] = v251;
            *&v292[16] = 1026;
            *&v292[18] = v252;
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,rejected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
            v186 = v248;
            v187 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v253 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_504;
            }

            v254 = *(a1 + 4011);
            v255 = *(a1 + 4009);
            v256 = *(a1 + 4010);
            v257 = *(a1 + 4012);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v254;
            *&v292[4] = 1026;
            *&v292[6] = v255;
            *&v292[10] = 1026;
            *&v292[12] = v256;
            *&v292[16] = 1026;
            *&v292[18] = v257;
            v185 = "{msg%{public}.0s:#GnssAssistancePosition, fGnssCachedInfo.fHELOAWDData,rejected, wasHELOInjected:%{public}d, wasLastHELOInjected:%{public}d, wasLastHELORejected:%{public}d, heloRejectReason:%{public}d}";
            v186 = v253;
            v187 = OS_LOG_TYPE_DEBUG;
          }

          v189 = 42;
          goto LABEL_358;
        }

        if (sub_10018E7E0(a1 + 2392) && *v283 != 0.0 && *(a1 + 2428) < 3000.0 && vabdd_f64(*(a2 + 76), *(a1 + 2468)) < 10.0)
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v206 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v207 = *(a2 + 28);
              v208 = *(a2 + 36);
              v209 = *(a1 + 2428);
              v210 = *v283;
              v211 = *(a2 + 96);
              v212 = *(a1 + 2488);
              *buf = 68290562;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v211;
              *&v292[4] = 1026;
              *&v292[6] = v212;
              *&v292[10] = 1026;
              *&v292[12] = v207;
              *&v292[16] = 1026;
              *&v292[18] = v208;
              *&v292[22] = 1026;
              *v293 = v210;
              *&v293[4] = 1026;
              *&v293[6] = v209;
              v213 = v206;
              v214 = OS_LOG_TYPE_DEFAULT;
LABEL_502:
              _os_log_impl(dword_100000000, v213, v214, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite altitude with prior TCP altitude, location type:%{public}d, last tightly coupled position type:%{public}d, altPrior:%{public}d, altUncPrior:%{public}d, altNew:%{public}d, altUncNew:%{public}d}", buf, 0x36u);
            }
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v263 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v264 = *(a2 + 28);
              v265 = *(a2 + 36);
              v266 = *(a1 + 2428);
              v267 = *v283;
              v268 = *(a2 + 96);
              v269 = *(a1 + 2488);
              *buf = 68290562;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v268;
              *&v292[4] = 1026;
              *&v292[6] = v269;
              *&v292[10] = 1026;
              *&v292[12] = v264;
              *&v292[16] = 1026;
              *&v292[18] = v265;
              *&v292[22] = 1026;
              *v293 = v267;
              *&v293[4] = 1026;
              *&v293[6] = v266;
              v213 = v263;
              v214 = OS_LOG_TYPE_DEBUG;
              goto LABEL_502;
            }
          }

          *(a2 + 28) = *v283;
          *(a2 + 476) = *(a1 + 2868);
          *(a2 + 472) = *(a1 + 2864);
          if (!v203)
          {
            goto LABEL_504;
          }

          goto LABEL_442;
        }

        if (v7[128] == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v215 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_440;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v216 = v215;
          v217 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v218 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_440;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v216 = v218;
          v217 = OS_LOG_TYPE_DEBUG;
        }

        _os_log_impl(dword_100000000, v216, v217, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite altitude with default invalid value}", buf, 0x12u);
LABEL_440:
        *(a2 + 28) = xmmword_101D02A00;
        goto LABEL_441;
      case 10:
        if (vabdd_f64(*(a1 + 11696), Current) < 1.0)
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v65 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            sub_100072AFC(a2, __p);
            if (v286 >= 0)
            {
              v66 = __p;
            }

            else
            {
              v66 = __p[0];
            }

            v67 = *(a1 + 11696);
            *buf = 68289539;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 2085;
            *v292 = v66;
            *&v292[8] = 2050;
            *&v292[10] = v67;
            v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate pipe location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
            goto LABEL_262;
          }

          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v144 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            return;
          }

          sub_100072AFC(a2, __p);
          if (v286 >= 0)
          {
            v145 = __p;
          }

          else
          {
            v145 = __p[0];
          }

          v146 = *(a1 + 11696);
          *buf = 68289539;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v291 = 2085;
          *v292 = v145;
          *&v292[8] = 2050;
          *&v292[10] = v146;
          v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate pipe location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
LABEL_289:
          v99 = v144;
          v100 = OS_LOG_TYPE_DEBUG;
          goto LABEL_290;
        }

        *(a1 + 11696) = Current;
        if (v7[128] != 1 || *(a2 + 36) > 0.0)
        {
          goto LABEL_322;
        }

        if (sub_10018E7E0(a1 + 4844) && vabdd_f64(*(a2 + 76), *(a1 + 4920)) < 10.0)
        {
          if (v7[128] == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v128 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_314;
            }

            v129 = *(a2 + 28);
            v130 = *(a2 + 36);
            v131 = *(a1 + 4872);
            v132 = *(a1 + 4880);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v129;
            *&v292[4] = 1026;
            *&v292[6] = v130;
            *&v292[10] = 1026;
            *&v292[12] = v131;
            *&v292[16] = 1026;
            *&v292[18] = v132;
            v133 = v128;
            v134 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v161 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_314;
            }

            v162 = *(a2 + 28);
            v163 = *(a2 + 36);
            v164 = *(a1 + 4872);
            v165 = *(a1 + 4880);
            *buf = 68290050;
            v288 = 0;
            v289 = 2082;
            v290 = "";
            v291 = 1026;
            *v292 = v162;
            *&v292[4] = 1026;
            *&v292[6] = v163;
            *&v292[10] = 1026;
            *&v292[12] = v164;
            *&v292[16] = 1026;
            *&v292[18] = v165;
            v133 = v161;
            v134 = OS_LOG_TYPE_DEBUG;
          }

          _os_log_impl(dword_100000000, v133, v134, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite pipelined altitude with prior TCP altitude, altPrior:%{public}d, altUncPrior:%{public}d, altNew:%{public}d, altUncNew:%{public}d}", buf, 0x2Au);
LABEL_314:
          *(a2 + 28) = *(a1 + 4872);
          *(a2 + 476) = *(a1 + 5316);
          v166 = *(a1 + 5312);
LABEL_321:
          *(a2 + 472) = v166;
          goto LABEL_322;
        }

        if (sub_10018E7E0(a1 + 7264))
        {
          v153 = (a1 + 7292);
          if (vabdd_f64(*(a2 + 76), *(a1 + 7340)) < 10.0)
          {
            if (v7[128] == 1)
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v154 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_320;
              }

              v155 = *(a2 + 28);
              v156 = *(a2 + 36);
              v157 = *(a1 + 7300);
              v158 = *v153;
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v155;
              *&v292[4] = 1026;
              *&v292[6] = v156;
              *&v292[10] = 1026;
              *&v292[12] = v158;
              *&v292[16] = 1026;
              *&v292[18] = v157;
              v159 = v154;
              v160 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_1001A7560();
              }

              v167 = qword_1025D4658;
              if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_320;
              }

              v168 = *(a2 + 28);
              v169 = *(a2 + 36);
              v170 = *(a1 + 7300);
              v171 = *v153;
              *buf = 68290050;
              v288 = 0;
              v289 = 2082;
              v290 = "";
              v291 = 1026;
              *v292 = v168;
              *&v292[4] = 1026;
              *&v292[6] = v169;
              *&v292[10] = 1026;
              *&v292[12] = v171;
              *&v292[16] = 1026;
              *&v292[18] = v170;
              v159 = v167;
              v160 = OS_LOG_TYPE_DEBUG;
            }

            _os_log_impl(dword_100000000, v159, v160, "{msg%{public}.0s:#GnssAssistancePosition, Overwrite pipelined altitude with prior cell location altitude, altPrior:%{public}d, altUncPrior:%{public}d, altNew:%{public}d, altUncNew:%{public}d}", buf, 0x2Au);
LABEL_320:
            *(a2 + 28) = *v153;
            *(a2 + 476) = *(a1 + 7740);
            v166 = *(a1 + 7736);
            goto LABEL_321;
          }
        }

        if (v7[128] != 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v135 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_322;
          }

          *buf = 68289026;
          v288 = 0;
          v289 = 2082;
          v290 = "";
          v94 = "{msg%{public}.0s:#GnssAssistancePosition, Stored TCP and cell locations are not valid}";
          goto LABEL_241;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v93 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_322;
        }

        *buf = 68289026;
        v288 = 0;
        v289 = 2082;
        v290 = "";
        v94 = "{msg%{public}.0s:#GnssAssistancePosition, Stored TCP and cell locations are not valid}";
        break;
      default:
        goto LABEL_322;
    }

LABEL_196:
    v112 = v93;
    v113 = OS_LOG_TYPE_DEFAULT;
LABEL_242:
    v139 = 18;
    goto LABEL_243;
  }

  if (v60 <= 2)
  {
    if (v60)
    {
      if (v60 != 1)
      {
        if (v60 != 2)
        {
          goto LABEL_322;
        }

        goto LABEL_132;
      }

      goto LABEL_146;
    }

    if (!v59)
    {
      goto LABEL_322;
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v110 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_322;
      }

      v111 = *(a2 + 76);
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2050;
      *v292 = v111;
      v94 = "{msg%{public}.0s:#GnssAssistancePosition, inTunnelEndPointAssistance, timestamp:%{public}f}";
      v112 = v110;
      v113 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v147 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_322;
      }

      v148 = *(a2 + 76);
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2050;
      *v292 = v148;
      v94 = "{msg%{public}.0s:#GnssAssistancePosition, inTunnelEndPointAssistance, timestamp:%{public}f}";
      v112 = v147;
      v113 = OS_LOG_TYPE_DEBUG;
    }

    v139 = 28;
LABEL_243:
    _os_log_impl(dword_100000000, v112, v113, v94, buf, v139);
    goto LABEL_322;
  }

  if (v60 == 3)
  {
    *(a1 + 11704) = sub_1000081AC();
    if (vabdd_f64(*(a1 + 11696), Current) >= 1.0)
    {
      *(a1 + 11696) = Current;
      goto LABEL_322;
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v65 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      sub_100072AFC(a2, __p);
      if (v286 >= 0)
      {
        v121 = __p;
      }

      else
      {
        v121 = __p[0];
      }

      v122 = *(a1 + 11696);
      *buf = 68289539;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 2085;
      *v292 = v121;
      *&v292[8] = 2050;
      *&v292[10] = v122;
      v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate accessory location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
LABEL_262:
      v99 = v65;
      v100 = OS_LOG_TYPE_DEFAULT;
LABEL_290:
      v138 = 38;
      goto LABEL_291;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v144 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    sub_100072AFC(a2, __p);
    if (v286 >= 0)
    {
      v149 = __p;
    }

    else
    {
      v149 = __p[0];
    }

    v150 = *(a1 + 11696);
    *buf = 68289539;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v291 = 2085;
    *v292 = v149;
    *&v292[8] = 2050;
    *&v292[10] = v150;
    v68 = "{msg%{public}.0s:#GnssAssistancePosition, drop,high rate accessory location, location,:%{sensitive, location:escape_only}s, timeOfLastHighRateAssistance:%{public}f}";
    goto LABEL_289;
  }

  if (v60 != 5)
  {
    if (v60 != 6)
    {
      goto LABEL_322;
    }

    v69 = *(a2 + 16);
    *(a1 + 6456) = *a2;
    *(a1 + 6472) = v69;
    v70 = *(a2 + 32);
    v71 = *(a2 + 48);
    v72 = *(a2 + 80);
    *(a1 + 6520) = *(a2 + 64);
    *(a1 + 6536) = v72;
    *(a1 + 6488) = v70;
    *(a1 + 6504) = v71;
    v73 = *(a2 + 96);
    v74 = *(a2 + 112);
    v75 = *(a2 + 128);
    *(a1 + 6596) = *(a2 + 140);
    *(a1 + 6568) = v74;
    *(a1 + 6584) = v75;
    *(a1 + 6552) = v73;
    memcpy((a1 + 6616), (a2 + 160), 0x201uLL);
    sub_100244238((a1 + 7136), (a2 + 680));
    v77 = *(a2 + 712);
    v76 = *(a2 + 728);
    *(a1 + 7152) = *(a2 + 696);
    *(a1 + 7168) = v77;
    *(a1 + 7184) = v76;
    v79 = *(a2 + 760);
    v78 = *(a2 + 776);
    v80 = *(a2 + 785);
    *(a1 + 7200) = *(a2 + 744);
    *(a1 + 7241) = v80;
    *(a1 + 7232) = v78;
    *(a1 + 7216) = v79;
    if (a3 && a4)
    {
      v81 = *a2;
      *(a1 + 7280) = *(a2 + 16);
      *(a1 + 7264) = v81;
      v82 = *(a2 + 32);
      v83 = *(a2 + 48);
      v84 = *(a2 + 64);
      *(a1 + 7344) = *(a2 + 80);
      *(a1 + 7328) = v84;
      *(a1 + 7312) = v83;
      *(a1 + 7296) = v82;
      v85 = *(a2 + 140);
      v86 = *(a2 + 96);
      v87 = *(a2 + 112);
      *(a1 + 7392) = *(a2 + 128);
      *(a1 + 7376) = v87;
      *(a1 + 7360) = v86;
      *(a1 + 7404) = v85;
      memcpy((a1 + 7424), (a2 + 160), 0x201uLL);
      sub_100244238((a1 + 7944), (a2 + 680));
      v89 = *(a2 + 712);
      v88 = *(a2 + 728);
      *(a1 + 7960) = *(a2 + 696);
      *(a1 + 7976) = v89;
      *(a1 + 7992) = v88;
      v91 = *(a2 + 760);
      v90 = *(a2 + 776);
      v92 = *(a2 + 744);
      *(a1 + 8049) = *(a2 + 785);
      *(a1 + 8024) = v91;
      *(a1 + 8040) = v90;
      *(a1 + 8008) = v92;
    }

    if (v7[128] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v93 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_322;
      }

      *buf = 68289026;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,cell location}";
      goto LABEL_196;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v135 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_322;
    }

    *buf = 68289026;
    v288 = 0;
    v289 = 2082;
    v290 = "";
    v94 = "{msg%{public}.0s:#GnssAssistancePosition, cache,cell location}";
LABEL_241:
    v112 = v135;
    v113 = OS_LOG_TYPE_DEBUG;
    goto LABEL_242;
  }

LABEL_132:
  if (v7[128] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v32 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v95;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, Unsupported, locationType:%{public}d}";
LABEL_137:
      v36 = v32;
      v37 = OS_LOG_TYPE_DEFAULT;
LABEL_143:
      v41 = 24;
      goto LABEL_144;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v50 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v96 = *v26;
      *buf = 68289282;
      v288 = 0;
      v289 = 2082;
      v290 = "";
      v291 = 1026;
      *v292 = v96;
      v34 = "{msg%{public}.0s:#GnssAssistancePosition, Unsupported, locationType:%{public}d}";
      goto LABEL_142;
    }
  }
}

BOOL sub_100195800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (((*(a2 + 96) == 0) & *(a2 + 516)) == 0 && *(a3 + 20) > 0.0)
  {
    v5 = *(a2 + 76) - *(a3 + 76);
    if (v5 >= 0.0 && v5 < 6.0)
    {
      v7 = *(a2 + 36);
      v8 = *(a3 + 36);
      if ((v7 <= 0.0 || v8 >= 0.0) && (v7 <= 0.0 || v8 <= 0.0 || vabdd_f64(*(a2 + 28), *(a3 + 28)) <= 1.0) && *(a2 + 84) <= *(a3 + 84))
      {
        sub_1001097CC((a1 + 11656), a2, a3);
        if (v9 > 1.0)
        {
          return 1;
        }

        if (*(a1 + 11768) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_100244280();
          }

          v10 = qword_1025D4658;
          result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            v14 = 68289026;
            v15 = 0;
            v16 = 2082;
            v17 = "";
            v11 = v10;
            v12 = OS_LOG_TYPE_DEFAULT;
LABEL_25:
            _os_log_impl(dword_100000000, v11, v12, "{msg%{public}.0s:#GnssAssistancePosition, same location}", &v14, 0x12u);
            return 0;
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_100244280();
          }

          v13 = qword_1025D4658;
          result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            v14 = 68289026;
            v15 = 0;
            v16 = 2082;
            v17 = "";
            v11 = v13;
            v12 = OS_LOG_TYPE_DEBUG;
            goto LABEL_25;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100195A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  if (v3 != 11 && v3 != 4)
  {
    return 0;
  }

  result = 0;
  if (*(a3 + 96) == 10 && *(a3 + 20) > 0.0)
  {
    if (vabdd_f64(*(a2 + 76), *(a3 + 76)) >= 6.0 || sub_10018E7E0(a2) && *(a3 + 36) > *(a2 + 36))
    {
      return 0;
    }

    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v9 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v10 = *(a2 + 96);
      v15 = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v10;
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v13 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v14 = *(a2 + 96);
      v15 = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v14;
      v11 = v13;
      v12 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v11, v12, "{msg%{public}.0s:#GnssAssistancePosition, Ignoring location assistance, recentGoodPipeline, location.type:%{public}d}", &v15, 0x18u);
    return 1;
  }

  return result;
}

uint64_t sub_100195BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 96) & 0xFFFFFFFE) != 6)
  {
    return 0;
  }

  v4 = *(a3 + 96);
  if (v4 == 4 || v4 == 11)
  {
    if (*(a3 + 84) >= 0x45u)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v6 = 0;
  if (v4 == 10 && *(a3 + 84) > 0x44u)
  {
LABEL_11:
    if (*(a3 + 20) > 0.0 && vabdd_f64(*(a2 + 76), *(a3 + 76)) < 1.0)
    {
      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v7 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v8 = *(a2 + 96);
        v14 = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 1026;
        v19 = v8;
        v9 = v7;
        v10 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v12 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v13 = *(a2 + 96);
        v14 = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 1026;
        v19 = v13;
        v9 = v12;
        v10 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(dword_100000000, v9, v10, "{msg%{public}.0s:#GnssAssistancePosition, Ignoring location assistance, recentGoodWifi, location.type:%{public}d}", &v14, 0x18u);
      return 1;
    }

    return 0;
  }

  return v6;
}

BOOL sub_100195DDC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 20);
  v7 = v6 > 0.0;
  if (v6 <= 0.0)
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v8 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v9 = *(a2 + 20);
      v48 = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2050;
      v53 = v9;
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v12 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      v13 = *(a2 + 20);
      v48 = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2050;
      v53 = v13;
      v10 = v12;
      v11 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v10, v11, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, horizontal accuracy:%{public}f}", &v48, 0x1Cu);
LABEL_12:
    v6 = *(a2 + 20);
  }

  if (v6 <= 200000.0)
  {
    goto LABEL_25;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v14 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v15 = *(a2 + 20);
    v48 = 68289538;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2050;
    v53 = v15;
    v54 = 2050;
    v55 = 0x41086A0000000000;
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v18 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v19 = *(a2 + 20);
    v48 = 68289538;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2050;
    v53 = v19;
    v54 = 2050;
    v55 = 0x41086A0000000000;
    v16 = v18;
    v17 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v16, v17, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, horizontalAccuracy:%{public}f, maximumAccuracy:%{public}f}", &v48, 0x26u);
LABEL_24:
  v7 = 0;
LABEL_25:
  if (a3 >= 0.0)
  {
    goto LABEL_37;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v20 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v21 = v20;
    v22 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v23 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v21 = v23;
    v22 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v21, v22, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, age < 0}", &v48, 0x12u);
LABEL_36:
  v7 = 0;
LABEL_37:
  if (!sub_10002807C(*(a2 + 4), *(a2 + 12)))
  {
    goto LABEL_49;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v24 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v25 = v24;
    v26 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v27 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v25 = v27;
    v26 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v25, v26, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location,null island}", &v48, 0x12u);
LABEL_48:
  v7 = 0;
LABEL_49:
  if (fabs(*(a2 + 4)) <= 90.0)
  {
    goto LABEL_61;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v28 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    v29 = *(a2 + 4);
    v48 = 68289283;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2053;
    v53 = v29;
    v30 = v28;
    v31 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v32 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_60;
    }

    v33 = *(a2 + 4);
    v48 = 68289283;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2053;
    v53 = v33;
    v30 = v32;
    v31 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v30, v31, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, latitude:%{sensitive}.7f}", &v48, 0x1Cu);
LABEL_60:
  v7 = 0;
LABEL_61:
  if (fabs(*(a2 + 12)) > 180.0)
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v34 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_72;
      }

      v35 = *(a2 + 12);
      v48 = 68289283;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2053;
      v53 = v35;
      v36 = v34;
      v37 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v38 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_72;
      }

      v39 = *(a2 + 12);
      v48 = 68289283;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2053;
      v53 = v39;
      v36 = v38;
      v37 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v36, v37, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, longitude:%{sensitive}.7f}", &v48, 0x1Cu);
LABEL_72:
    v7 = 0;
  }

  if (*(a2 + 36) > 0.0)
  {
    v40 = *(a2 + 28);
    if (v40 < -450.0 || v40 > 8850.0)
    {
      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v41 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        v42 = *(a2 + 28);
        v48 = 68289283;
        v49 = 0;
        v50 = 2082;
        v51 = "";
        v52 = 2053;
        v53 = v42;
        v43 = v41;
        v44 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v45 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v46 = *(a2 + 28);
        v48 = 68289283;
        v49 = 0;
        v50 = 2082;
        v51 = "";
        v52 = 2053;
        v53 = v46;
        v43 = v45;
        v44 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(dword_100000000, v43, v44, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, altitude:%{sensitive}.2f}", &v48, 0x1Cu);
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100196658(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (vabdd_f64(v2, *(a1 + 4640)) > 10.0)
  {
    return 0;
  }

  if (*(a1 + 4682) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v5 = qword_1025D4658;
    v3 = 1;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 4682);
      v7 = *(a1 + 4656);
      v13 = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v6;
      v19 = 2053;
      v20 = v7;
      v21 = 2053;
      v22 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#GnssAssistancePosition, TBA, isTunnel:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f}", &v13, 0x2Cu);
    }
  }

  else
  {
    v8 = *(a1 + 11760);
    if (v8 <= 0.0)
    {
      return 0;
    }

    v9 = vabdd_f64(v2, v8);
    v10 = *(a1 + 4680) == 1 && v9 < 10.0;
    if (!v10 || *(a1 + 11652) > 1u)
    {
      return 0;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 11652);
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v12;
      v19 = 2050;
      v20 = v9;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,TBA,Current location close to tunnel, gnssContent:%{public}d, gnssContentAge:%{public}.1f}", &v13, 0x22u);
    }

    return 1;
  }

  return v3;
}

uint64_t sub_100196860(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = *(a2 + 96);
  if (!v5 && (*(a2 + 516) & 1) != 0)
  {
    if (*(a1 + 11768))
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v6 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      v29 = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v7 = v6;
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v17 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return v4;
      }

      v29 = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v7 = v17;
      v8 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v7, v8, "{msg%{public}.0s:#GnssAssistancePosition, adjust,TEPA confidence}", &v29, 0x12u);
    return v4;
  }

  if (!*(a1 + 11768))
  {
    if (v5 != 4 || *(a2 + 20) <= 0.0 || v4 < 0x46)
    {
      return v4;
    }

    if (sub_100072814(a1 + 6456))
    {
      v14 = *(a1 + 6476);
      sub_1001097CC((a1 + 11656), a2, a1 + 6456);
      v16 = v15;
      if (v15 >= 0.0 && v15 <= v14)
      {
        return v4;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v24 = qword_1025D4658;
      v16 = -1.0;
      v14 = -1.0;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      v29 = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, No previous cell location stored}", &v29, 0x12u);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

LABEL_42:
    v25 = qword_1025D4658;
    v18 = 69;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return v18;
    }

    v29 = 68290050;
    v31 = 2082;
    v30 = 0;
    v32 = "";
    v33 = 2050;
    *v34 = v16;
    *&v34[8] = 2050;
    v35 = v14;
    v36 = 1026;
    v37 = v4;
    v38 = 1026;
    v39 = 69;
    v21 = "{msg%{public}.0s:#GnssAssistancePosition, distFromWifiToCellOrLAC:%{public}f, crossCheckThreshold:%{public}f, confPrior:%{public}d, reducedConf:%{public}d}";
    v22 = v25;
    v23 = OS_LOG_TYPE_DEBUG;
    v26 = 50;
LABEL_49:
    _os_log_impl(dword_100000000, v22, v23, v21, &v29, v26);
    return v18;
  }

  v9 = v5 > 0xA;
  v10 = (1 << v5) & 0x450;
  if (v9 || v10 == 0)
  {
    goto LABEL_32;
  }

  if (!sub_100072814(a2))
  {
    if ((*(a1 + 11768) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v27 = qword_1025D4658;
      v18 = 0xFFFFFFFFLL;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return v18;
      }

      v28 = *(a2 + 96);
      v29 = 68289794;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 1026;
      *v34 = v28;
      *&v34[4] = 1026;
      *&v34[6] = v4;
      LOWORD(v35) = 1026;
      *(&v35 + 2) = -1;
      v21 = "{msg%{public}.0s:#GnssAssistancePosition, invalid assistance during emergency, location type:%{public}d, conf:%{public}d, reduced conf:%{public}d}";
      v22 = v27;
      v23 = OS_LOG_TYPE_DEBUG;
LABEL_48:
      v26 = 36;
      goto LABEL_49;
    }

LABEL_32:
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v19 = qword_1025D4658;
    v18 = 0xFFFFFFFFLL;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      return v18;
    }

    v20 = *(a2 + 96);
    v29 = 68289794;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 1026;
    *v34 = v20;
    *&v34[4] = 1026;
    *&v34[6] = v4;
    LOWORD(v35) = 1026;
    *(&v35 + 2) = -1;
    v21 = "{msg%{public}.0s:#GnssAssistancePosition, invalid assistance during emergency, location type:%{public}d, conf:%{public}d, reduced conf:%{public}d}";
    v22 = v19;
    v23 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_48;
  }

  v12 = sub_100E0EF38(a1, a2);

  return sub_100E10138(a1, v12, a2);
}

uint64_t sub_100196D1C()
{
  if (qword_1026599F0 != -1)
  {
    sub_10192A690();
  }

  v0 = word_1026599E8;
  if ((word_1026599E8 & 0x100) == 0)
  {
    v0 = sub_1001CCA30()[24];
  }

  return v0 & 1;
}

void sub_100196D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100196DB8(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100196E8C(uint64_t a1)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = *a1;
      goto LABEL_6;
    }

LABEL_24:
    sub_10000EC00(v15, "empty");
    sub_10000EC00(__p, " ");
    v5 = sub_100A8CEF0(v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_29:
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    return v5;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_24;
  }

  v3 = a1;
LABEL_6:
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v3 - 1;
  do
  {
    v9 = *(v8 + v2);
    if (v9 == 58)
    {
      ++v7;
      if (v4 == 2)
      {
        v4 = 0;
        goto LABEL_20;
      }

      if (v4 != 1)
      {
        sub_10000EC00(v15, "multibyte");
        v11 = sub_100A8CEF0(v15, a1);
        goto LABEL_28;
      }

      v4 = 0;
    }

    else
    {
      v10 = v9 - 48;
      if ((v9 - 48) > 9)
      {
        if ((v9 - 65) > 5)
        {
          if ((v9 - 97) > 5)
          {
            goto LABEL_26;
          }

          v10 = v9 - 87;
        }

        else
        {
          v10 = v9 - 55;
        }
      }

      if (v10 == -1)
      {
LABEL_26:
        sub_10000EC00(v15, "nonhex");
        v11 = sub_100A8CEF0(v15, a1);
        goto LABEL_28;
      }

      v5 += v10 << v6;
      ++v4;
    }

    v6 += 4;
LABEL_20:
    --v2;
  }

  while (v2);
  if (v7 && v7 != 5)
  {
    sub_10000EC00(v15, "colons");
    v11 = sub_100A8CEF0(v15, a1);
LABEL_28:
    v5 = v11;
    goto LABEL_29;
  }

  return v5;
}

void sub_100197030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100197070(uint64_t a1, void *a2, void *a3)
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
        if (!sub_1001972D4(a3, v4 + 4))
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

      if (!sub_1001972D4(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
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

uint64_t sub_1001970F8(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  *result = a2;
  *(result + 8) = a8;
  *(result + 16) = a9;
  *(result + 24) = a10;
  *(result + 32) = a11;
  *(result + 40) = a12;
  *(result + 48) = a3;
  *(result + 52) = a4;
  *(result + 56) = a5;
  *(result + 64) = a13;
  *(result + 76) = a6;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 92) = a7;
  return result;
}

void *sub_100197128@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100198C70(a1, a2);
  if ((a1 + 8) == result)
  {
    v9 = 0;
  }

  else
  {
    v6 = result;
    result = result[8];
    if (*(a1 + 32) != result)
    {
      v8 = *result;
      v7 = result[1];
      *(v8 + 8) = v7;
      *v7 = v8;
      --*(a1 + 40);
      operator delete(result);
      operator new();
    }

    *(a3 + 4) = *(v6 + 5);
    *(a3 + 20) = v6[7];
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1001972E8(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_10019737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  if (!v3 || !sub_100023B68(v3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_10000EC00(&v8, "No connection to database when attempting to open transaction.");
    std::runtime_error::runtime_error(exception, &v8);
    exception->__vftable = &off_1024472C0;
  }

  v5 = *(a1 + 104);

  return sub_10019765C(v5, a2);
}

void sub_100197448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_100197480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  (*(*a3 + 16))(a3);
  *(a1 + 24) = 256;
  *(a1 + 32) = std::uncaught_exceptions();
  if (a2)
  {
    sub_10019754C(a1);
    return a1;
  }

  else
  {
    sub_101A59214();
    result = abort_report_np();
    __break(1u);
  }

  return result;
}

uint64_t sub_10019754C(sqlite3 **a1)
{
  result = sqlite3_exec(*a1, "BEGIN EXCLUSIVE TRANSACTION", 0, 0, 0);
  if (result)
  {
    if (qword_1025D4850 != -1)
    {
      sub_101A593DC();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#sqlitetransaction, begin exclusive transaction failed", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A593F0();
    }

    sub_100CD531C(a1, *a1, v6);
    exception = __cxa_allocate_exception(0x48uLL);
    sub_100CD55B0(exception, v6);
  }

  return result;
}

uint64_t sub_10019765C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_10000EC00(&v4, "No valid connection to CLSqliteDatabase database.");
    std::runtime_error::runtime_error(exception, &v4);
    exception->__vftable = &off_1024472C0;
  }

  return sub_100197658(a2);
}

void sub_100197718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_100197750@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  for (i = a2[151]; i; i = *i)
  {
    v10 = i[2];
    v7 = sub_10019D138(a1, &v10);
    if (!v7)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    sub_10019E848((i + 3), *(v7 + 14), *(v7 + 16), *(v7 + 10));
  }

  v8 = a2[412];
  v10 = a2[805];
  sub_10019E7C4(v8, &v10);
  return sub_100102FB8(a3, a2);
}

void *sub_1001977F0(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
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
LABEL_18:
    sub_10019E8A4();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100197A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002E4F74(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100197A50(uint64_t a1)
{
  sub_100197A88(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100197A88(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_100197AE4(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100197BD4(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100197C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001970F8(a2, *a1, *(a1 + 184), *(a1 + 180), *(a1 + 192), *(a1 + 176), *(a1 + 196), *(a1 + 12), *(a1 + 20), *(a1 + 36), *(a1 + 28), *(a1 + 44), *(a1 + 84));
  *(a2 + 88) = 0;
  return result;
}

void sub_100197CEC(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v2 = a2 + 1;
    v3 = *a2;
    if (*a2 != a2 + 1)
    {
      v5 = a1 + 8;
      do
      {
        if (v5 != sub_100198C70(a1, v3 + 4))
        {
          v6 = sub_1002F75C0(a1, v3 + 4);
          v8 = v6[1];
          v7 = v6[2];
          v9 = v6[4];
          v3[6] = v8;
          v3[7] = v7;
          v3[9] = v9;
          if (qword_1025D4620 != -1)
          {
            sub_1018BDFE8();
          }

          v10 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 16);
            sub_10018F0D0(&__p);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 134219011;
            v27 = v11;
            v28 = 2081;
            v29 = p_p;
            v30 = 2053;
            v31 = v8;
            v32 = 2053;
            v33 = v7;
            v34 = 2049;
            v35 = v9;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning, WifiCentroidOverrides (size %lu), overrode %{private}s centroid with latlon %{sensitive}.7f, %{sensitive}.7f, acc %{private}.1f", buf, 0x34u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_1018BDFE8();
            }

            v16 = *(a1 + 16);
            sub_10018F0D0(&v19);
            v17 = &v19;
            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v17 = v19.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 134219011;
            *(__p.__r_.__value_.__r.__words + 4) = v16;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2081;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v17;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 2053;
            v21 = v8;
            v22 = 2053;
            v23 = v7;
            v24 = 2049;
            v25 = v9;
            v18 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v19.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidDefaultsWriteOverrides::overrideMacCentroidsIfPossible(std::map<CLMacAddress, CLWifiAPLocation> &)", "%s\n", v18);
            if (v18 != buf)
            {
              free(v18);
            }
          }
        }

        v13 = v3[1];
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
            v14 = v3[2];
            v15 = *v14 == v3;
            v3 = v14;
          }

          while (!v15);
        }

        v3 = v14;
      }

      while (v14 != v2);
    }
  }
}

void sub_100197FEC(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>, double a5@<D0>)
{
  v6 = a2[1];
  if (*a2 == v6)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    sub_100198BF4(a4, (v6 - *a2) >> 3);
    (*(**a1 + 16))(&v91);
    v10 = *a2;
    if (a2[1] != *a2)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        if (&v97 != sub_100198C70(&v96, (v10 + v12)))
        {
          v14 = sub_1002F75C0(&v96, (v10 + v12));
          v15 = *a4 + v11;
          if (*(v15 + 20) == 1)
          {
            v16 = *v14;
            *(v15 + 8) = *(v14 + 8);
            *v15 = v16;
            *(v15 + 12) = *(v14 + 12);
          }

          else
          {
            v17 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v17;
            *(v15 + 20) = 1;
          }
        }

        ++v13;
        v10 = *a2;
        v12 += 8;
        v11 += 24;
      }

      while (v13 < (a2[1] - *a2) >> 3);
    }

    if (qword_1025D4630 != -1)
    {
      sub_101B582DC();
    }

    v18 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v19 = (a2[1] - *a2) >> 3;
      *buf = 67240960;
      *&buf[4] = v19;
      v107 = 1026;
      v108 = v98;
      v109 = 1026;
      v110 = v95;
      v111 = 1026;
      v112 = v93;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#wifitilecentroids, read cache, %{public}d, in_tiles, %{public}d, not_in_tiles, %{public}d, not_found, %{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B58304(buf);
      v72 = (a2[1] - *a2) >> 3;
      LODWORD(__src) = 67240960;
      HIDWORD(__src) = v72;
      LOWORD(v104) = 1026;
      *(&v104 + 2) = v98;
      HIWORD(v104) = 1026;
      LODWORD(v105[0]) = v95;
      WORD2(v105[0]) = 1026;
      *(v105 + 6) = v93;
      v73 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "std::vector<std::optional<std::tuple<CLTilesManager_Type::AccessPointEntry, WifiTileXY>>> CLWifiTileCacheLogic::findCentroids(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, const CLIWifiTileSearchDelegate *) const", "%s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    v78 = a1;
    __src = 0;
    v104 = 0;
    v105[0] = 0;
    __p = 0;
    v89 = 0;
    v90 = 0;
    v20 = *a2;
    if (a2[1] != *a2)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (&v92 != sub_100198C70(&v91, (v20 + v21)))
        {
          v23 = v104;
          if (v104 >= v105[0])
          {
            v25 = __src;
            v26 = v104 - __src;
            v27 = (v104 - __src) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v29 = v105[0] - __src;
            if ((v105[0] - __src) >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_1000B9708(&__src, v30);
            }

            v31 = (8 * v27);
            v32 = *(v20 + 8 * v22);
            v33 = &v31[-((v104 - __src) >> 3)];
            *v31 = v32;
            v24 = (v31 + 1);
            memcpy(v33, v25, v26);
            v34 = __src;
            __src = v33;
            v104 = v24;
            v105[0] = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v104 = *(v20 + 8 * v22);
            v24 = v23 + 8;
          }

          v104 = v24;
          v35 = v89;
          if (v89 >= v90)
          {
            v37 = __p;
            v38 = v89 - __p;
            v39 = (v89 - __p) >> 2;
            v40 = v39 + 1;
            if ((v39 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v41 = v90 - __p;
            if ((v90 - __p) >> 1 > v40)
            {
              v40 = v41 >> 1;
            }

            v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
            v43 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v42)
            {
              v43 = v40;
            }

            if (v43)
            {
              sub_1000B85D0(&__p, v43);
            }

            *(4 * v39) = v22;
            v36 = 4 * v39 + 4;
            memcpy(0, v37, v38);
            v44 = __p;
            __p = 0;
            v89 = v36;
            v90 = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *v89 = v22;
            v36 = (v35 + 4);
          }

          v89 = v36;
        }

        ++v22;
        v20 = *a2;
        v21 += 8;
      }

      while (v22 < (a2[1] - *a2) >> 3);
      if (__src != v104)
      {
        (*(*a3 + 16))(&v86, a5);
        v45 = v86;
        if (0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3) != (v104 - __src) >> 3)
        {
          sub_101B58348();
          abort_report_np();
          __break(1u);
        }

        v83 = 0;
        v84 = 0;
        v85 = 0;
        v81 = 0;
        v82 = 0;
        v80 = &v81;
        if (v87 != v86)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          do
          {
            v49 = __src + v47;
            v50 = &v45[v46];
            v51 = v45[v46 + 20];
            if (v51)
            {
              v52 = *a4 + 24 * *(__p + v48);
              if (*(v52 + 20) == v51)
              {
                if (*(v52 + 20))
                {
                  v53 = *v50;
                  *(v52 + 8) = *(v50 + 4);
                  *v52 = v53;
                  *(v52 + 12) = *&v45[v46 + 12];
                }
              }

              else if (*(v52 + 20))
              {
                *(v52 + 20) = 0;
              }

              else
              {
                v62 = *v50;
                *(v52 + 16) = *(v50 + 4);
                *v52 = v62;
                *(v52 + 20) = 1;
              }

              *buf = v49;
              v63 = sub_1011A43B0(&v80, v49);
              v64 = *v50;
              *(v63 + 48) = *(v50 + 4);
              *(v63 + 40) = v64;
              *(v63 + 52) = *&v45[v46 + 12];
            }

            else
            {
              v54 = v84;
              if (v84 >= v85)
              {
                v56 = v83;
                v57 = v84 - v83;
                v58 = (v84 - v83) >> 3;
                v59 = v58 + 1;
                if ((v58 + 1) >> 61)
                {
                  sub_10028C64C();
                }

                v60 = v85 - v83;
                if ((v85 - v83) >> 2 > v59)
                {
                  v59 = v60 >> 2;
                }

                v42 = v60 >= 0x7FFFFFFFFFFFFFF8;
                v61 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v42)
                {
                  v61 = v59;
                }

                if (v61)
                {
                  sub_1000B9708(&v83, v61);
                }

                *(8 * v58) = *v49;
                v55 = 8 * v58 + 8;
                memcpy(0, v56, v57);
                v65 = v83;
                v83 = 0;
                v84 = v55;
                v85 = 0;
                if (v65)
                {
                  operator delete(v65);
                }
              }

              else
              {
                *v84 = *v49;
                v55 = (v54 + 8);
              }

              v84 = v55;
            }

            ++v48;
            v45 = v86;
            v47 += 8;
            v46 += 24;
          }

          while (v48 < 0xAAAAAAAAAAAAAAABLL * ((v87 - v86) >> 3));
        }

        if (qword_1025D4630 == -1)
        {
          v66 = v78;
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        else
        {
          sub_101B582DC();
          v66 = v78;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v68 = p_info[199];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 67240448;
          *&buf[4] = (v104 - __src) >> 3;
          v107 = 1026;
          v108 = v82;
          _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_INFO, "#wifitilecentroids, search tiles, searched, %{public}d, found, %{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B58304(buf);
          v99 = 67240448;
          v100 = (v104 - __src) >> 3;
          v101 = 1026;
          v102 = v82;
          v74 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<std::optional<std::tuple<CLTilesManager_Type::AccessPointEntry, WifiTileXY>>> CLWifiTileCacheLogic::findCentroids(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, const CLIWifiTileSearchDelegate *) const", "%s\n", v74);
          if (v74 != buf)
          {
            free(v74);
          }

          v66 = v78;
        }

        (*(**v66 + 24))(*v66, &v83);
        (*(**v66 + 32))(*v66, &v80);
        if (qword_1025D4630 != -1)
        {
          sub_101B582DC();
        }

        v69 = p_info[199];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = (*(**v66 + 48))();
          v71 = (*(**v66 + 56))();
          *buf = 67240448;
          *&buf[4] = v70;
          v107 = 1026;
          v108 = v71;
          _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "#wifitilecentroids, write to cache, new size, %{public}du / %{public}du", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B58304(buf);
          v75 = (*(**v66 + 48))();
          v76 = (*(**v66 + 56))();
          v99 = 67240448;
          v100 = v75;
          v101 = 1026;
          v102 = v76;
          v77 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<std::optional<std::tuple<CLTilesManager_Type::AccessPointEntry, WifiTileXY>>> CLWifiTileCacheLogic::findCentroids(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, const CLIWifiTileSearchDelegate *) const", "%s\n", v77);
          if (v77 != buf)
          {
            free(v77);
          }
        }

        sub_1003C93BC(&v80, v81);
        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }
      }
    }

    if (__p)
    {
      v89 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      v104 = __src;
      operator delete(__src);
    }

    sub_1003C93BC(&v96, v97);
    sub_1003C93BC(v94, v94[1]);
    sub_1003C93BC(&v91, v92);
  }
}

void sub_100198B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  sub_1003C93BC(&a16, a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  sub_1011A4368(&a28);
  v42 = *v40;
  if (*v40)
  {
    *(v40 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void *sub_100198BF4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10019E858(result, a2);
  }

  return result;
}

void sub_100198C54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100198C70(uint64_t a1, void *a2)
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
    v6 = sub_1001972D4((v3 + 32), a2);
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
  if (v5 == v2 || sub_1001972D4(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_100198CF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = &v23;
  v19 = &v20;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      sub_100197128(a1 + 8, v4, v25);
      if (v25[0] == 1)
      {
        if (v25[24] == 1)
        {
          sub_1002F7510(&v16, v4);
        }

        else
        {
          sub_1001972E8(&v19, v4);
        }
      }

      else
      {
        sub_1001972E8(&v22, v4);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  a3[1] = 0;
  v7 = a3 + 1;
  a3[2] = 0;
  a3[4] = 0;
  v8 = a3 + 4;
  *a3 = a3 + 1;
  a3[3] = a3 + 4;
  a3[5] = 0;
  a3[7] = 0;
  v9 = a3 + 7;
  a3[6] = a3 + 7;
  a3[8] = 0;
  sub_1003C93BC(a3, 0);
  v10 = v23;
  *a3 = v22;
  a3[1] = v10;
  v11 = v24;
  a3[2] = v24;
  if (v11)
  {
    v10[2] = v7;
    v22 = &v23;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    *a3 = v7;
  }

  sub_1003C93BC((a3 + 3), a3[4]);
  v12 = v20;
  a3[3] = v19;
  a3[4] = v12;
  v13 = v21;
  a3[5] = v21;
  if (v13)
  {
    v12[2] = v8;
    v19 = &v20;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    a3[3] = v8;
  }

  sub_1003C93BC((a3 + 6), a3[7]);
  v14 = v17;
  a3[6] = v16;
  a3[7] = v14;
  v15 = v18;
  a3[8] = v18;
  if (v15)
  {
    v14[2] = v9;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v14 = 0;
  }

  else
  {
    a3[6] = v9;
  }

  sub_1003C93BC(&v16, v14);
  sub_1003C93BC(&v19, v20);
  sub_1003C93BC(&v22, v23);
}

void sub_100198F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *a16)
{
  sub_1003C93BC(&a9, a10);
  sub_1003C93BC(&a12, a13);
  sub_1003C93BC(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100198F4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 56);
  v30 = a1 + 56;
  (*(v10 + 16))();
  v32 = 256;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_100199830(a4, a2[2]);
  sub_100199828(*(a1 + 96), v29);
  v13 = *a2;
  v11 = a2 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    while (1)
    {
      if (*(v12 + 8))
      {
        sub_101B8296C();
        abort_report_np();
        __break(1u);
      }

      v28 = *(v12 + 36);
      v14 = sub_10023FD94(*(a1 + 96));
      if ((v15 & 1) == 0)
      {
        break;
      }

      if (vabdd_f64(a5, *&v14) < a3)
      {
        goto LABEL_11;
      }

      v16 = sub_101077FC0(*(a1 + 96), &v28);
LABEL_12:
      *buf = *(v12 + 2);
      v38 = v12[6];
      if (*(v12 + 79) < 0)
      {
        sub_100007244(&__p, v12[7], v12[8]);
      }

      else
      {
        __p = *(v12 + 7);
        v40 = v12[9];
      }

      v41 = v16;
      v18 = a4[1];
      if (v18 >= a4[2])
      {
        v21 = sub_101264C08(a4, buf);
        v22 = SHIBYTE(v40);
        a4[1] = v21;
        if (v22 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v19 = *buf;
        *(v18 + 16) = v38;
        *v18 = v19;
        v20 = __p;
        *(v18 + 40) = v40;
        *(v18 + 24) = v20;
        v40 = 0;
        __p = 0uLL;
        *(v18 + 48) = v41;
        a4[1] = v18 + 56;
      }

      v23 = v12[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v12[2];
          v25 = *v24 == v12;
          v12 = v24;
        }

        while (!v25);
      }

      v12 = v24;
      if (v24 == v11)
      {
        goto LABEL_28;
      }
    }

    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174913;
      *&buf[4] = v28;
      *&buf[8] = 1025;
      *&buf[10] = HIDWORD(v28);
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "attempted to update timestamp for tile that does not exist, x, %{private}d, y, %{private}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B82B18(buf);
      v33 = 67174913;
      v34 = v28;
      v35 = 1025;
      v36 = HIDWORD(v28);
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "std::vector<std::pair<TileId, BOOL>> CLWifiAccessPointLocationService::updateAccessTimestampsIfNecessary(const std::set<TileId> &, cl::chrono::CFAbsoluteTimeClock::time_point, cl::chrono::seconds) const", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

LABEL_28:
  result = sub_1001999F8(v29);
  if (HIBYTE(v32) == 1)
  {
    if (v32)
    {
      return pthread_mutex_unlock(v31);
    }

    else
    {
      return (*(*v30 + 24))(v30);
    }
  }

  return result;
}

void sub_100199320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t buf, __int16 a28, __int16 a29, uint64_t a30, __int16 __p_4)
{
  sub_1001999F8(&a17);
  if (a2 == 3)
  {
    v33 = __cxa_begin_catch(a1);
    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v34 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v35 = (*(*v33 + 16))(v33);
      buf = 68289283;
      a28 = 2082;
      *(&a28 + 1) = "";
      WORD1(a30) = 2081;
      *(&a30 + 4) = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:sqlite error updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }
    }

    v36 = qword_1025D4638;
    if (os_signpost_enabled(qword_1025D4638))
    {
      v37 = (*(*v33 + 16))(v33);
      buf = 68289283;
      a28 = 2082;
      *(&a28 + 1) = "";
      WORD1(a30) = 2081;
      *(&a30 + 4) = v37;
      _os_signpost_emit_with_name_impl(dword_100000000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "sqlite error updating access timestamps", "{msg%{public}.0s:sqlite error updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  else if (a2 == 2)
  {
    v38 = __cxa_begin_catch(a1);
    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v39 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v40 = (*(*v38 + 16))(v38);
      buf = 68289283;
      a28 = 2082;
      *(&a28 + 1) = "";
      WORD1(a30) = 2081;
      *(&a30 + 4) = v40;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:no database connection while updating timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }
    }

    v41 = qword_1025D4638;
    if (os_signpost_enabled(qword_1025D4638))
    {
      v42 = (*(*v38 + 16))(v38);
      buf = 68289283;
      a28 = 2082;
      *(&a28 + 1) = "";
      WORD1(a30) = 2081;
      *(&a30 + 4) = v42;
      _os_signpost_emit_with_name_impl(dword_100000000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "no database connection while updating timestamps", "{msg%{public}.0s:no database connection while updating timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      sub_100199B08(&buf);
      sub_1017EC98C(&a22);
      _Unwind_Resume(a1);
    }

    v43 = __cxa_begin_catch(a1);
    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v44 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v45 = (*(*v43 + 16))(v43);
      buf = 68289283;
      a28 = 2082;
      *(&a28 + 1) = "";
      WORD1(a30) = 2081;
      *(&a30 + 4) = v45;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:runtime error while updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }
    }

    v46 = qword_1025D4638;
    if (os_signpost_enabled(qword_1025D4638))
    {
      v47 = (*(*v43 + 16))(v43);
      buf = 68289283;
      a28 = 2082;
      *(&a28 + 1) = "";
      WORD1(a30) = 2081;
      *(&a30 + 4) = v47;
      _os_signpost_emit_with_name_impl(dword_100000000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "runtime error while updating access timestamps", "{msg%{public}.0s:runtime error while updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x100199264);
}

void *sub_100199830(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      sub_10023FE18(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_100199904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100242438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100199918(uint64_t a1)
{
  if (*a1)
  {
    if (std::uncaught_exceptions() <= *(a1 + 32))
    {
      sub_1001999FC(a1);
    }

    else
    {
      sub_100CD504C(a1);
    }
  }

  if (*(a1 + 25) == 1)
  {
    if (*(a1 + 24))
    {
      pthread_mutex_unlock(*(a1 + 16));
    }

    else
    {
      (*(**(a1 + 8) + 24))(*(a1 + 8));
    }

    *(a1 + 25) = 0;
  }

  return a1;
}

uint64_t sub_1001999FC(sqlite3 **a1)
{
  result = sqlite3_exec(*a1, "COMMIT", 0, 0, 0);
  if (result)
  {
    if (qword_1025D4850 != -1)
    {
      sub_101A593DC();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#sqlitetransaction, commit failed", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A59550();
    }

    sub_100CD531C(a1, *a1, v6);
    exception = __cxa_allocate_exception(0x48uLL);
    sub_100CD55B0(exception, v6);
  }

  return result;
}

void sub_100199B08(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10023FBD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100199B5C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100199B5C(a1, *a2);
    sub_100199B5C(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

void sub_100199BC0(_DWORD *a1, unsigned int a2, int a3, int a4)
{
  if (a4 + a3 <= a2)
  {
    ++a1[10];
    if (a2)
    {
      a1[4] += a2;
      if (a4 | a3)
      {
        ++a1[7];
        a1[1] += a4 + a3;
        if (a3)
        {
          ++a1[8];
          a1[2] += a3;
        }

        if (a4)
        {
          ++a1[9];
          a1[3] += a4;
        }
      }
    }

    else
    {
      ++a1[6];
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018E8CB0();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240704;
      v10 = a2;
      v11 = 1026;
      v12 = a3;
      v13 = 1026;
      v14 = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Invalid ap lookup/found counts: apLookupCount: %{public}u, foundInCacheCount: %{public}u, foundInTilesCount: %{public}u", buf, 0x14u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018E8CC4();
      }

      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiApLocationLookupMetrics::scanBufferApLocationLookup(unsigned int, unsigned int, unsigned int)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }
}

BOOL sub_100199E14(uint64_t a1)
{
  sub_1001A3B64(a1, 0x15180uLL);
  ++*(a1 + 12);
  v2 = *(a1 + 96);
  Current = CFAbsoluteTimeGetCurrent();
  result = sub_100199EB8(v2, Current);
  if (!result)
  {
    v9 = 28;
    goto LABEL_7;
  }

  ++*(a1 + 24);
  v5 = *(a1 + 96);
  v6 = CFAbsoluteTimeGetCurrent();
  if (sub_10019B6E0(v5, v6))
  {
    ++*(a1 + 16);
  }

  v7 = *(a1 + 96);
  v8 = CFAbsoluteTimeGetCurrent();
  result = sub_10019B77C(v7, v8);
  if (result)
  {
    v9 = 20;
LABEL_7:
    ++*(a1 + v9);
  }

  return result;
}

BOOL sub_100199EB8(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  v4 = sub_100199F08(a1, a2);
  std::mutex::unlock((a1 + 344));
  return v4;
}

BOOL sub_100199F08(void *a1, double a2)
{
  if (a1[20] && vabdd_f64(a2, *(*(a1[16] + 8 * (a1[19] / 0x1AuLL)) + 156 * (a1[19] % 0x1AuLL) + 76)) < 900.0)
  {
    return 1;
  }

  if (a1[32])
  {
    return a2 - *(*(a1[28] + 8 * (a1[31] / 0x1AuLL)) + 156 * (a1[31] % 0x1AuLL) + 76) < 900.0;
  }

  return 0;
}

BOOL sub_100199FB0(uint64_t a1)
{
  if (!sub_10018E854(*(a1 + 56)))
  {
    sub_10019C594(a1 + 72, 0);
    result = sub_10019C558((a1 + 72));
LABEL_5:
    sub_1008DB260(result, a1);
  }

  v2 = sub_10018E854(*(a1 + 64));
  v3 = v2;
  sub_10019C594(a1 + 72, v2);
  result = sub_10019C558((a1 + 72));
  if (!v3)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_10019A200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10019A228(double *a1, double *a2)
{
  v2 = *a2 - a1[2];
  v3 = *(a1 + 1);
  if (v2 >= v3)
  {
    (*(*a1 + 24))(a1);
    ++*(a1 + 8);
    (*(*a1 + 16))(a1);
    a1[2] = *a2;
  }

  return v2 >= v3;
}

uint64_t sub_10019A32C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v44 = *a2;
    result = sub_10018E854(v3);
    if (!result)
    {
      return result;
    }

    sub_10018C8C0(*a3, v33);
    if (v43 == 1)
    {
      if ((atomic_load_explicit(qword_10265B160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_10265B160))
      {
        sub_10018D404(xmmword_10265B138);
        __cxa_guard_release(qword_10265B160);
      }

      v31[6] = v40;
      v31[7] = v41;
      v32[0] = v42[0];
      *(v32 + 12) = *(v42 + 12);
      v31[2] = v36;
      v31[3] = v37;
      v31[4] = v38;
      v31[5] = v39;
      v31[0] = v34;
      v31[1] = v35;
      sub_1001AB7A0(a2, &v54);
      sub_1001097CC(xmmword_10265B138, v31, &v54);
      v8 = v7;
      if (v7 == 0.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019688C4();
        }

        v9 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_1002386FC(a2, &v54);
          v10 = SHIBYTE(v54.__r_.__value_.__r.__words[2]);
          v11 = v54.__r_.__value_.__r.__words[0];
          (*(**a3 + 16))(&__p);
          v12 = &v54;
          if (v10 < 0)
          {
            v12 = v11;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136643075;
          *(buf.__r_.__value_.__r.__words + 4) = v12;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "MovingApDetector, found the exact centroid %{sensitive}s in bad centroid database table %{private}s", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019688EC(&v54);
          sub_1002386FC(a2, &__p);
          v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v22 = __p.__r_.__value_.__r.__words[0];
          (*(**a3 + 16))(&buf);
          v23 = &__p;
          if (v21 < 0)
          {
            v23 = v22;
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v45 = 136643075;
          *&v45[4] = v23;
          v46 = 2081;
          v47 = p_buf;
          v25 = _os_log_send_and_compose_impl();
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::isBadCentroidFromDatabaseLookup(const CLWifiAPLocation &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v25);
          if (v25 != &v54)
          {
            free(v25);
          }
        }

        return 1;
      }

      else
      {
        v15 = *(sub_1001CCA30() + 2);
        if (qword_1025D4620 != -1)
        {
          sub_1019688C4();
        }

        v16 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_1002386FC(a2, &__p);
          v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v18 = __p.__r_.__value_.__r.__words[0];
          sub_100237CC8(&buf);
          v19 = &__p;
          if (v17 < 0)
          {
            v19 = v18;
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &buf;
          }

          else
          {
            v20 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v54.__r_.__value_.__l.__data_) = 136643587;
          *(v54.__r_.__value_.__r.__words + 4) = v19;
          WORD2(v54.__r_.__value_.__r.__words[1]) = 2085;
          *(&v54.__r_.__value_.__r.__words[1] + 6) = v20;
          HIWORD(v54.__r_.__value_.__r.__words[2]) = 2049;
          v55 = v8;
          v56 = 2049;
          v57 = v15;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "MovingApDetector, centroid under lookup: %{sensitive}s, database version: %{sensitive}s. distance: %{private}.1fm. threshold: %{private}.1fm", &v54, 0x2Au);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019688EC(&v54);
          sub_1002386FC(a2, &buf);
          v26 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          v27 = buf.__r_.__value_.__r.__words[0];
          sub_100237CC8(v45);
          v28 = &buf;
          if (v26 < 0)
          {
            v28 = v27;
          }

          if (v48 >= 0)
          {
            v29 = v45;
          }

          else
          {
            v29 = *v45;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136643587;
          *(__p.__r_.__value_.__r.__words + 4) = v28;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2085;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v29;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2049;
          v50 = v8;
          v51 = 2049;
          v52 = v15;
          v30 = _os_log_send_and_compose_impl();
          if (v48 < 0)
          {
            operator delete(*v45);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::isBadCentroidFromDatabaseLookup(const CLWifiAPLocation &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v30);
          if (v30 != &v54)
          {
            free(v30);
          }
        }

        return v8 <= v15;
      }
    }

    return 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101968930();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v54.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", &v54, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10196976C();
    return 0;
  }

  return result;
}

uint64_t sub_10019A9B8(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v9);
    v2 = sub_100038730(&v10, "SELECT COUNT(*) FROM ", 21);
    v3 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v3 = *v3;
    }

    v4 = strlen(v3);
    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, ";", 1);
    sub_100073518(v9, __p);
    if (v12 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    sub_1000388D8(a1 + 64, v6);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call count() without a backing database in CLWifiLocationDatabase!", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A9FC();
  }

  return 0;
}

void sub_10019ADC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  sub_10026C504(&a12);
  _Unwind_Resume(a1);
}

void sub_10019AE38(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    sub_10000EC00(&v43, "MovingApDetector, ");
    v4 = *(a1 + 24);
    Current = CFAbsoluteTimeGetCurrent();
    if (sub_10019B6E0(v4, Current))
    {
      v6 = *(a1 + 24);
      v7 = CFAbsoluteTimeGetCurrent();
      v8 = sub_10023854C(v6, v7);
      std::to_string(&v46, v8);
      v9 = std::string::insert(&v46, 0, "gps age: ", 9uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v47, "s", 1uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v45 = v11->__r_.__value_.__r.__words[2];
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v45 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v45 >= 0)
      {
        v14 = HIBYTE(v45);
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(&v43, v13, v14);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v43, "gps: no", 7uLL);
    }

    std::string::append(&v43, ", cell: ", 8uLL);
    v16 = *(a1 + 24);
    v17 = CFAbsoluteTimeGetCurrent();
    v18 = sub_10019B77C(v16, v17);
    if (v18)
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    std::string::append(&v43, v19, v20);
    if (!sub_10018E854(*a2))
    {
      std::string::append(&v43, ", database invalid", 0x12uLL);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v36 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v37 = &v43;
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v43.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v37;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "%s", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019688EC(__p);
        v38 = &v43;
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v43.__r_.__value_.__r.__words[0];
        }

        LODWORD(v47.__r_.__value_.__l.__data_) = 136315138;
        *(v47.__r_.__value_.__r.__words + 4) = v38;
        v39 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logGpsCellAndBadWifiCentroidDatabaseInfo(const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v39);
        if (v39 != __p)
        {
          free(v39);
        }
      }

      goto LABEL_86;
    }

    sub_10019B818(*a2, &v47);
    if (v47.__r_.__value_.__r.__words[0] == v47.__r_.__value_.__l.__size_)
    {
      std::string::append(&v43, ", database empty", 0x10uLL);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v40 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v41 = &v43;
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = v43.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "%s", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_84;
      }

      sub_1019688EC(__p);
      v35 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v43.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v21 = sub_10019A9B8(*a2);
      std::to_string(&v46, v21);
      v22 = std::string::insert(&v46, 0, ", database count: ", 0x12uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v45 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v45 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if (v45 >= 0)
      {
        v25 = HIBYTE(v45);
      }

      else
      {
        v25 = __p[1];
      }

      std::string::append(&v43, v24, v25);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      std::string::append(&v43, ", samples", 9uLL);
      v26 = 0;
      v27 = rand() % (0x8F5C28F5C28F5C29 * ((v47.__r_.__value_.__l.__size_ - v47.__r_.__value_.__r.__words[0]) >> 3));
      do
      {
        sub_10018F0D0(&v46);
        v28 = std::string::insert(&v46, 0, ", ", 2uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v45 = v28->__r_.__value_.__r.__words[2];
        *__p = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (v45 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (v45 >= 0)
        {
          v31 = HIBYTE(v45);
        }

        else
        {
          v31 = __p[1];
        }

        std::string::append(&v43, v30, v31);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }

      while (++v27 < 0x8F5C28F5C28F5C29 * ((v47.__r_.__value_.__l.__size_ - v47.__r_.__value_.__r.__words[0]) >> 3) && v26++ < 4);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v33 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v34 = &v43;
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v43.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "%s", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_84;
      }

      sub_1019688EC(__p);
      v35 = &v43;
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v35 = v43.__r_.__value_.__r.__words[0];
      }
    }

    LODWORD(v46.__r_.__value_.__l.__data_) = 136315138;
    *(v46.__r_.__value_.__r.__words + 4) = v35;
    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logGpsCellAndBadWifiCentroidDatabaseInfo(const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v42);
    if (v42 != __p)
    {
      free(v42);
    }

LABEL_84:
    if (v47.__r_.__value_.__r.__words[0])
    {
      v47.__r_.__value_.__l.__size_ = v47.__r_.__value_.__r.__words[0];
      operator delete(v47.__r_.__value_.__l.__data_);
    }

LABEL_86:
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101968930();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", __p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101968C98();
  }
}

void sub_10019B600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 96);
  if (v25)
  {
    *(v23 - 88) = v25;
    operator delete(v25);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10019B6E0(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  if (*(a1 + 160))
  {
    v4 = vabdd_f64(a2, *(*(*(a1 + 128) + 8 * (*(a1 + 152) / 0x1AuLL)) + 156 * (*(a1 + 152) % 0x1AuLL) + 76)) < 900.0;
  }

  else
  {
    v4 = 0;
  }

  std::mutex::unlock((a1 + 344));
  return v4;
}

BOOL sub_10019B77C(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  if (*(a1 + 256))
  {
    v4 = a2 - *(*(*(a1 + 224) + 8 * (*(a1 + 248) / 0x1AuLL)) + 156 * (*(a1 + 248) % 0x1AuLL) + 76) < 900.0;
  }

  else
  {
    v4 = 0;
  }

  std::mutex::unlock((a1 + 344));
  return v4;
}

void sub_10019B818(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v45, "SELECT ", 7);
    v5 = sub_100038730(v4, "MAC", 3);
    v6 = sub_100038730(v5, " , ", 3);
    v7 = strlen("Latitude");
    v8 = sub_100038730(v6, "Latitude", v7);
    v9 = sub_100038730(v8, " , ", 3);
    v10 = strlen("Longitude");
    v11 = sub_100038730(v9, "Longitude", v10);
    v12 = sub_100038730(v11, " , ", 3);
    v13 = strlen("Altitude");
    v14 = sub_100038730(v12, "Altitude", v13);
    v15 = sub_100038730(v14, " , ", 3);
    v16 = strlen("HorizontalAccuracy");
    v17 = sub_100038730(v15, "HorizontalAccuracy", v16);
    v18 = sub_100038730(v17, " , ", 3);
    v19 = strlen("VerticalAccuracy");
    v20 = sub_100038730(v18, "VerticalAccuracy", v19);
    v21 = sub_100038730(v20, " , ", 3);
    v22 = strlen("Score");
    v23 = sub_100038730(v21, "Score", v22);
    v24 = sub_100038730(v23, " , ", 3);
    v25 = strlen("Reach");
    v26 = sub_100038730(v24, "Reach", v25);
    v27 = sub_100038730(v26, " , ", 3);
    v28 = sub_100038730(v27, "Channel", 7);
    v29 = sub_100038730(v28, " , ", 3);
    v30 = sub_100038730(v29, "InfoMask", 8);
    v31 = sub_100038730(v30, " , ", 3);
    v32 = strlen("Timestamp");
    sub_100038730(v31, "Timestamp", v32);
    if ((*(a1 + 16) & 1) == 0)
    {
      v33 = sub_100038730(&v45, " , ", 3);
      v34 = strlen("ZaxisHarvestTraces");
      sub_100038730(v33, "ZaxisHarvestTraces", v34);
      v35 = sub_100038730(&v45, " , ", 3);
      sub_100038730(v35, "AlsQueryTimestamp", 17);
    }

    v36 = sub_100038730(&v45, " FROM ", 6);
    v37 = *(a1 + 295);
    if (v37 >= 0)
    {
      v38 = a1 + 272;
    }

    else
    {
      v38 = *(a1 + 272);
    }

    if (v37 >= 0)
    {
      v39 = *(a1 + 295);
    }

    else
    {
      v39 = *(a1 + 280);
    }

    sub_100038730(v36, v38, v39);
    sub_100073518(buf, __p);
    if (v43 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    sub_1000388D8(a1 + 64, v40);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v41 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getAllEntries() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B11C();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_10019C070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a22);
  _Unwind_Resume(a1);
}

void sub_10019C110(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (sub_100196D1C() && sub_10019C22C(a2) && sub_100027FB4(a3))
  {
    v8 = sub_1001D24B0(a3, a4);
    if (qword_102659A08 != -1)
    {
      sub_10192A67C();
    }

    v9 = &qword_1026599F8;
    if ((dword_102659A00 & 1) == 0)
    {
      v9 = (sub_1001CCA30() + 32);
    }

    if (v8 <= *v9)
    {
      v10 = *(a3 + 20);
      if (v10 <= *(sub_1001CCA30() + 5))
      {
        v13 = *a1;
        v11 = a1 + 1;
        v12 = v13;
        if (v13 != v11)
        {
          do
          {
            sub_1007592C8((v12 + 5), a2, a3, a4);
            v14 = v12[1];
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
                v15 = v12[2];
                v16 = *v15 == v12;
                v12 = v15;
              }

              while (!v16);
            }

            v12 = v15;
          }

          while (v15 != v11);
        }
      }
    }
  }
}

uint64_t sub_10019C234(void *a1, void *a2, void *a3)
{
  v3 = *sub_10019C3C4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_10019C2E4(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10019C234(v5, v5 + 1, v4 + 4);
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

void *sub_10019C36C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10019C2E4(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_10019C3C4(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1001972D4(a5, a2 + 4))
  {
    if (!sub_1001972D4(a2 + 4, a5))
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
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1001972D4(a5, v15 + 4))
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
      return v12 + 1;
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
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1001972D4(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100197070(a1, a3, a5);
}

uint64_t sub_10019C594(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(result + 88);
  }

  else
  {
    ++*(result + 92);
  }

  return result;
}

void sub_10019C5B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a4)
  {
    LODWORD(v41.__r_.__value_.__l.__data_) = 3;
    *__p = &v41;
    v7 = *(sub_1000B91DC(a3, &v41) + 8);
    LODWORD(v41.__r_.__value_.__l.__data_) = 0;
    *__p = &v41;
    v8 = *(sub_1000B91DC(a3, &v41) + 8);
    LODWORD(v41.__r_.__value_.__l.__data_) = 1;
    *__p = &v41;
    v9 = *(sub_1000B91DC(a3, &v41) + 8);
    LODWORD(v41.__r_.__value_.__l.__data_) = 2;
    *__p = &v41;
    v10 = *(sub_1000B91DC(a3, &v41) + 8);
    sub_10000EC00(&v40, "MovingApDetector, ");
    v11 = sub_10019A9B8(*a4);
    if (v11)
    {
      std::to_string(&v41, v11);
      v12 = std::string::insert(&v41, 0, "database count: ", 0x10uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v12->__r_.__value_.__l + 2);
      *__p = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (__p[23] >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = *__p;
      }

      if (__p[23] >= 0)
      {
        v15 = __p[23];
      }

      else
      {
        v15 = *&__p[8];
      }

      std::string::append(&v40, v14, v15);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v40, "database empty", 0xEuLL);
    }

    std::to_string(&v39, a2);
    v17 = std::string::insert(&v39, 0, ", cross-checked ", 0x10uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v41, " centroids", 0xAuLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v19->__r_.__value_.__l + 2);
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (__p[23] >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = *__p;
    }

    if (__p[23] >= 0)
    {
      v22 = __p[23];
    }

    else
    {
      v22 = *&__p[8];
    }

    std::string::append(&v40, v21, v22);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    if (v7 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v23 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v24 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v40.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "%s, all centroids are invalid!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v25 = &v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v40.__r_.__value_.__r.__words[0];
      }
    }

    else if (v10 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v27 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v27 = v40.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "%s, all centroids are unknown!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v25 = &v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v40.__r_.__value_.__r.__words[0];
      }
    }

    else if (v9 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v28 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v29 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v40.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "%s, all centroids are good!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v25 = &v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v40.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      if (v8 != a2)
      {
        if (v9 + v7 == a2)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1019688C4();
          }

          v33 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v34 = &v40;
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v34 = v40.__r_.__value_.__r.__words[0];
            }

            *__p = 136315650;
            *&__p[4] = v34;
            *&__p[12] = 1024;
            *&__p[14] = v7;
            *&__p[18] = 1024;
            *&__p[20] = v9;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "%s, %d invalid, all %d valid centroids are good!", __p, 0x18u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_94;
          }

          sub_1019688EC(__p);
          v35 = &v40;
          if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v40.__r_.__value_.__r.__words[0];
          }

          LODWORD(v41.__r_.__value_.__l.__data_) = 136315650;
          *(v41.__r_.__value_.__r.__words + 4) = v35;
          WORD2(v41.__r_.__value_.__r.__words[1]) = 1024;
          *(&v41.__r_.__value_.__r.__words[1] + 6) = v7;
          WORD1(v41.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(v41.__r_.__value_.__r.__words[2]) = v9;
          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v32);
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_1019688C4();
          }

          v36 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v37 = &v40;
            if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v37 = v40.__r_.__value_.__r.__words[0];
            }

            *__p = 136316162;
            *&__p[4] = v37;
            *&__p[12] = 1024;
            *&__p[14] = v7;
            *&__p[18] = 1024;
            *&__p[20] = v10;
            v47 = 1024;
            v48 = v9;
            v49 = 1024;
            v50 = v8;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "%s, %d invalid, %d unknown, %d good, %d bad!", __p, 0x24u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_94;
          }

          sub_1019688EC(__p);
          v38 = &v40;
          if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v38 = v40.__r_.__value_.__r.__words[0];
          }

          LODWORD(v41.__r_.__value_.__l.__data_) = 136316162;
          *(v41.__r_.__value_.__r.__words + 4) = v38;
          WORD2(v41.__r_.__value_.__r.__words[1]) = 1024;
          *(&v41.__r_.__value_.__r.__words[1] + 6) = v7;
          WORD1(v41.__r_.__value_.__r.__words[2]) = 1024;
          HIDWORD(v41.__r_.__value_.__r.__words[2]) = v10;
          v42 = 1024;
          v43 = v9;
          v44 = 1024;
          v45 = v8;
          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v32);
        }

        goto LABEL_100;
      }

      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v30 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v31 = &v40;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v40.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v31;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "%s, all centroids are bad!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v25 = &v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v40.__r_.__value_.__r.__words[0];
      }
    }

    LODWORD(v41.__r_.__value_.__l.__data_) = 136315138;
    *(v41.__r_.__value_.__r.__words + 4) = v25;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v32);
LABEL_100:
    if (v32 != __p)
    {
      free(v32);
    }

LABEL_94:
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101968930();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    *__p = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", __p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101969858();
  }
}

void sub_10019D080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10019D138(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
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
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (sub_100195A00(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
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

void sub_10019D234(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, double a10@<D0>, uint64_t a11, unsigned int a12)
{
  v140 = 0;
  v139 = 0;
  v138 = 0xBFF0000000000000;
  *&v134[12] = 0;
  *&v134[4] = 0;
  *&v134[20] = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *&v134[36] = _Q1;
  *&v134[52] = _Q1;
  *&v134[68] = _Q1;
  *v134 = 0xFFFF;
  *&v134[84] = 0;
  v135 = 0uLL;
  *&v134[88] = 0xBFF0000000000000;
  *(&v136 + 4) = 0xBFF0000000000000;
  LODWORD(v136) = 0;
  HIDWORD(v136) = 0x7FFFFFFF;
  memset(v137, 0, 25);
  v133 = -200;
  v132 = 0xC069000000000000;
  v131 = 0;
  v130 = a10;
  *(a11 + 120) = a10;
  v125 = 0;
  v126 = 0;
  v124 = &v125;
  v121[0] = 0;
  v121[1] = 0;
  v120 = v121;
  *v142 = 0;
  *&v142[8] = 0;
  *buf = v142;
  v18 = *a2;
  v19 = a2[1];
  while (v18 != v19)
  {
    *__p = *v18;
    sub_10018F0D0(__src);
    if ((__src[23] & 0x80000000) != 0)
    {
      sub_100007244(__p, *__src, *&__src[8]);
    }

    else
    {
      *__p = *__src;
      *&__p[16] = *&__src[16];
    }

    v20 = *v18;
    *&__p[40] = *(v18 + 16);
    *&__p[24] = v20;
    v21 = *(v18 + 32);
    v22 = *(v18 + 48);
    v23 = *(v18 + 64);
    *&__p[104] = *(v18 + 80);
    *&__p[88] = v23;
    *&__p[72] = v22;
    *&__p[56] = v21;
    sub_100196DB8(&v124, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_1000F2BC4(&v120, __src);
    if ((__src[23] & 0x80000000) != 0)
    {
      operator delete(*__src);
    }

    v18 += 96;
  }

  v24 = *a3;
  v25 = a3[1];
  if (*a3 != v25)
  {
    do
    {
      *__p = *v24;
      sub_10018F0D0(__src);
      if ((__src[23] & 0x80000000) != 0)
      {
        sub_100007244(__p, *__src, *&__src[8]);
      }

      else
      {
        *__p = *__src;
        *&__p[16] = *&__src[16];
      }

      v26 = *v24;
      *&__p[40] = *(v24 + 16);
      *&__p[24] = v26;
      v27 = *(v24 + 32);
      v28 = *(v24 + 48);
      v29 = *(v24 + 64);
      *&__p[104] = *(v24 + 80);
      *&__p[88] = v29;
      *&__p[72] = v28;
      *&__p[56] = v27;
      sub_100196DB8(&v124, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_1000F2BC4(buf, __src);
      if ((__src[23] & 0x80000000) != 0)
      {
        operator delete(*__src);
      }

      v24 += 96;
    }

    while (v24 != v25);
  }

  v112 = a3;
  v30 = v124;
  if (v124 != &v125)
  {
    v31 = 0;
    do
    {
      sub_10000EC00(v146, "type");
      v32 = v30 + 4;
      if (sub_100192868(buf, v30 + 4))
      {
        std::string::append(v146, "_ZAxis", 6uLL);
      }

      if (sub_100192868(&v120, v30 + 4))
      {
        std::string::append(v146, "_LatLon", 7uLL);
      }

      v33 = v31 + 1;
      if (v31 < sub_10019E6F8())
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v34 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v35 = v30 + 4;
          if (*(v30 + 55) < 0)
          {
            v35 = *v32;
          }

          v36 = v30[8];
          v37 = v30[9];
          v39 = v30[10];
          v38 = v30[11];
          v40 = v30[12];
          v41 = *(v30 + 32);
          v42 = *(v30 + 26);
          v43 = *(v30 + 27);
          v44 = v30[17];
          v45 = v30[15];
          v46 = v146;
          if (v146[23] < 0)
          {
            v46 = *v146;
          }

          *__p = 67243523;
          *&__p[4] = v33;
          *&__p[8] = 2050;
          *&__p[10] = v126;
          *&__p[18] = 2081;
          *&__p[20] = v35;
          *&__p[28] = 2053;
          *&__p[30] = v36;
          *&__p[38] = 2053;
          *&__p[40] = v37;
          *&__p[48] = 2050;
          *&__p[50] = v38;
          *&__p[58] = 1026;
          *&__p[60] = v42;
          *&__p[64] = 2049;
          *&__p[66] = v39;
          *&__p[74] = 2050;
          *&__p[76] = v40;
          *&__p[84] = 1026;
          *&__p[86] = v41;
          *&__p[90] = 1026;
          *&__p[92] = v43;
          *&__p[96] = 2050;
          *&__p[98] = v44;
          *&__p[106] = 2050;
          *&__p[108] = v45;
          *&__p[116] = 2081;
          *&__p[118] = v46;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "WifiCalc, input AP, %{public}d / %{public}zu, %{private}s, %{sensitive}.7f, %{sensitive}.7f, hacc, %{public}.6f, reach, %{public}d, altitude, %{private}.2f, vacc, %{public}.2f, rssi, %{public}d, channel, %{public}d, scan timestamp, %{public}.3lf, query timestamp, %{public}.3lf, %{private}s", __p, 0x7Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_10196A0D4();
          }

          if (*(v30 + 55) < 0)
          {
            v32 = *v32;
          }

          v49 = v30[8];
          v50 = v30[9];
          v52 = v30[10];
          v51 = v30[11];
          v53 = v30[12];
          v54 = *(v30 + 32);
          v55 = *(v30 + 26);
          v56 = *(v30 + 27);
          v57 = v30[17];
          v58 = v30[15];
          v59 = v146;
          if (v146[23] < 0)
          {
            v59 = *v146;
          }

          *__src = 67243523;
          *&__src[4] = v33;
          *&__src[8] = 2050;
          *&__src[10] = v126;
          *&__src[18] = 2081;
          *&__src[20] = v32;
          *&__src[28] = 2053;
          *&__src[30] = v49;
          *&__src[38] = 2053;
          v150 = v50;
          v151 = 2050;
          *v152 = v51;
          *&v152[8] = 1026;
          *&v152[10] = v55;
          *v153 = 2049;
          *&v153[2] = v52;
          *&v153[10] = 2050;
          *&v153[12] = v53;
          *&v153[20] = 1026;
          *&v153[22] = v54;
          *&v153[26] = 1026;
          *&v153[28] = v56;
          *v154 = 2050;
          *&v154[2] = v57;
          *&v154[10] = 2050;
          *&v154[12] = v58;
          *&v154[20] = 2081;
          *&v154[22] = v59;
          v60 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::logWifiApLocations(const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &)", "%s\n", v60);
          if (v60 != __p)
          {
            free(v60);
          }
        }
      }

      if ((v146[23] & 0x80000000) != 0)
      {
        operator delete(*v146);
      }

      v47 = v30[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v30[2];
          _ZF = *v48 == v30;
          v30 = v48;
        }

        while (!_ZF);
      }

      v31 = v33;
      v30 = v48;
    }

    while (v48 != &v125);
  }

  sub_10001AF44(buf, *v142);
  sub_10001AF44(&v120, v121[0]);
  sub_10001AF44(&v124, v125);
  if (*a2 != a2[1])
  {
    sub_1001A1A30(a1, a2, v112, 100.0, v130, 500.0, 90, 4, 4, &v140 + 1, &v140, &v138, a4, v134, &v133, &v132, &v131, &v139, a8, a11, a12);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v61 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    v63 = *(a4 + 20) > 0.0;
    *__p = 134349824;
    *&__p[4] = v62;
    *&__p[12] = 1026;
    *&__p[14] = v140;
    *&__p[18] = 1026;
    *&__p[20] = v139;
    *&__p[24] = 1026;
    *&__p[26] = v63;
    _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "@WifiAps, compute, %{public}lu, used, %{public}u, used_vert, %{public}u, hint, %{public}d", __p, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_10196A140();
    }

    v103 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    v104 = *(a4 + 20) > 0.0;
    *__src = 134349824;
    *&__src[4] = v103;
    *&__src[12] = 1026;
    *&__src[14] = v140;
    *&__src[18] = 1026;
    *&__src[20] = v139;
    *&__src[24] = 1026;
    *&__src[26] = v104;
    v105 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static Types::ComputedLocation CL::Wifi1::Policies::PositionCalculation::HandleEvent::computePosition(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, const CLDaemonLocation &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, CLWifiAltitudeKalmanFilter *, const CL::Wifi1::Types::ElevationHistory *, CLLocationCalculator::LatLonDebuggingData &, CLLocationCalculator::ZaxisDebuggingData &, CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v105);
    if (v105 != __p)
    {
      free(v105);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10196A0D4();
  }

  v64 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v65 = *(a11 + 145);
    *__p = 67240192;
    *&__p[4] = v65;
    _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, isWsb, %{public}d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A388(a11);
  }

  if (!a7 || !a6 || *a2 == a2[1])
  {
    *(a11 + 128) = *&v134[28];
    v69 = v140;
    v70 = v139;
    v71 = v138;
    v72 = *(a11 + 152);
    v73 = v136;
    v74 = a9;
    a9[6] = v135;
    a9[7] = v73;
    a9[8] = *v137;
    *(a9 + 140) = *&v137[12];
    v75 = *&v134[48];
    a9[2] = *&v134[32];
    a9[3] = v75;
    v76 = *&v134[80];
    a9[4] = *&v134[64];
    a9[5] = v76;
    v77 = *v134;
    v78 = *&v134[16];
    goto LABEL_117;
  }

  sub_1001A75A8(a6, __src);
  if (qword_1025D4620 != -1)
  {
    sub_10196A0D4();
  }

  v66 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    if (v154[24])
    {
      v67 = "Yes";
    }

    else
    {
      v67 = "No";
    }

    *__p = 136450051;
    *&__p[4] = v67;
    *&__p[12] = 2049;
    *&__p[14] = *&v154[16];
    *&__p[22] = 2049;
    *&__p[24] = v155;
    *&__p[32] = 2049;
    *&__p[34] = *__src;
    *&__p[42] = 2049;
    *&__p[44] = *&__src[16];
    *&__p[52] = 2049;
    *&__p[54] = *&__src[8];
    *&__p[62] = 2049;
    *&__p[64] = *&__src[24];
    *&__p[72] = 2049;
    *&__p[74] = *&__src[32];
    *&__p[82] = 2049;
    *&__p[84] = v150;
    *&__p[92] = 2049;
    *&__p[94] = *&v152[6];
    *&__p[102] = 2049;
    *&__p[104] = *v153;
    *&__p[112] = 2049;
    *&__p[114] = *&v153[8];
    *&__p[122] = 2049;
    *&__p[124] = *&v153[16];
    v157 = 2049;
    v158 = *v154;
    v159 = 2049;
    v160 = *&v153[24];
    v161 = 2049;
    v162 = *&v154[8];
    _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis input kalmanFilter, initialized, %{public}s, relative altitude, %{private}.6f, wifiAltUncAve, %{private}.6f, alt_k_k, %{private}.6f, alt_k1_k, %{private}.6f, cov_k_k, %{private}.6f, cov_k1_k, %{private}.6f, process noise variance, stable, %{private}.6f, unstable, %{private}.6f, measurement variance, %{private}.6f, timestamp, propagate, %{private}.3lf, update, %{private}.3lf, relative altitude timestamp, %{private}.3lf, wifi time interval, %{private}.6f, relative altitude time interval, %{private}.6f, altitude change during baro outage, %{private}.6f", __p, 0xA2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A47C(__src);
  }

  v129 = 0xBFF0000000000000;
  v68 = *&v134[36];
  if (*&v134[36] < 0.0)
  {
    goto LABEL_85;
  }

  if (*(a5 + 36) < 0.0)
  {
    v68 = *(sub_1000F7F38() + 42);
    goto LABEL_85;
  }

  v79 = v130;
  v80 = *(a5 + 76);
  if (v79 - v80 < *(sub_1000F7F38() + 41) || (v81 = *(a5 + 28), v82 = *&v134[28], v83 = sub_1000F7F38(), v84 = vabdd_f64(v81, v82), v68 = -1.0, v84 <= *(v83 + 43)))
  {
    v68 = *(a5 + 36);
LABEL_85:
    v129 = *&v68;
    if (v68 > 0.0)
    {
      v85 = *(sub_1000F7F38() + 40);
      v86 = *&v134[36];
      v68 = v86 * *(sub_1000F7F38() + 40) + v68 * (1.0 - v85);
      v129 = *&v68;
    }
  }

  *(a11 + 16) = v68;
  sub_1001A9800(__p, a7 + 1);
  v87 = *&__p[40];
  sub_100102BC8(__p);
  if (v87)
  {
    v88 = (*(*a7 + 16))(a7, &v130);
    sub_1001A9800(__p, a7 + 1);
    *(a11 + 96) = *(*(*&__p[8] + (((*&__p[40] + *&__p[32] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (__p[40] + __p[32] - 1));
    *(a11 + 89) = 1;
    sub_100102BC8(__p);
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v89 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1001A9800(__p, a7 + 1);
      v90 = *&__p[40];
      sub_1001A9800(&v124, a7 + 1);
      v91 = *(*&v125[((v128 + v127 - 1) >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * (v128 + v127 - 1));
      sub_1001A9800(&v120, a7 + 1);
      v92 = "No";
      v93 = *(*&v121[0][((v123 + v122 - 1) >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * (v123 + v122 - 1) + 8);
      *buf = 67240963;
      if (v88)
      {
        v92 = "Yes";
      }

      *&buf[4] = v90;
      *v142 = 2049;
      *&v142[2] = v91;
      *&v142[10] = 2050;
      *&v142[12] = v93;
      v143 = 2082;
      *v144 = v92;
      _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis input elevation, size, %{public}d, relative altitude, %{private}.6f, timestamp, %{public}.3lf, elevation steady, %{public}s", buf, 0x26u);
      sub_100102BC8(&v120);
      sub_100102BC8(&v124);
      sub_100102BC8(__p);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(__p);
      sub_1001A9800(&v124, a7 + 1);
      v106 = v128;
      sub_1001A9800(&v120, a7 + 1);
      v107 = *(*&v121[0][((v123 + v122 - 1) >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * (v123 + v122 - 1));
      sub_1001A9800(buf, a7 + 1);
      v108 = "No";
      v109 = *(*(*v142 + (((v145 + *&v144[2] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v145 + v144[2] - 1) + 8);
      *v146 = 67240963;
      if (v88)
      {
        v108 = "Yes";
      }

      *&v146[4] = v106;
      *&v146[8] = 2049;
      *&v146[10] = v107;
      *&v146[18] = 2050;
      *&v146[20] = v109;
      v147 = 2082;
      v148 = v108;
      v110 = _os_log_send_and_compose_impl();
      sub_100102BC8(buf);
      sub_100102BC8(&v120);
      sub_100102BC8(&v124);
      sub_100152C7C("Generic", 1, 0, 2, "static Types::ComputedLocation CL::Wifi1::Policies::PositionCalculation::HandleEvent::computePosition(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, const CLDaemonLocation &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, CLWifiAltitudeKalmanFilter *, const CL::Wifi1::Types::ElevationHistory *, CLLocationCalculator::LatLonDebuggingData &, CLLocationCalculator::ZaxisDebuggingData &, CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v110);
      if (v110 != __p)
      {
        free(v110);
      }
    }
  }

  if (sub_1001A5778(a6))
  {
    if (sub_1002ABC10(a6, &v130, a7, &v134[28], &v134[36], &v131))
    {
      sub_1002AC598(a6, &v134[28], &v134[36]);
    }
  }

  else
  {
    *__p = v133;
    sub_1001A5780(a6, &v130, &v134[28], &v129, a7, __p, &v132);
  }

  if (sub_1001A5778(a6))
  {
    *(a11 + 24) = *&v134[28];
    *(a11 + 88) = 1;
  }

  v94 = sub_1001A5778(a6);
  v95 = *&v134[36];
  if (*&v134[36] <= 0.0)
  {
    v96 = 1;
  }

  else
  {
    v96 = v94;
  }

  if ((v96 & 1) == 0)
  {
    v95 = v129;
    *&v134[36] = v129;
  }

  *(a11 + 128) = *&v134[28];
  *(a11 + 136) = v95;
  v97 = sub_1001A4254(&v134[28], &v134[36]);
  if (*&v134[36] == -1.0)
  {
    v98 = 1;
  }

  else
  {
    v98 = v97;
  }

  if ((v98 & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v99 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *__p = 134283777;
      *&__p[4] = *&v134[28];
      *&__p[12] = 2049;
      *&__p[14] = *&v134[36];
      _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_FAULT, "WifiCalc, zaxis, reported invalid alt, %{private}.2f, unc, %{private}.2f", __p, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10196A638(&v134[28]);
    }
  }

  v69 = v140;
  v70 = v139;
  v71 = v138;
  v72 = *(a11 + 152);
  v100 = v136;
  v74 = a9;
  a9[6] = v135;
  a9[7] = v100;
  a9[8] = *v137;
  *(a9 + 140) = *&v137[12];
  v101 = *&v134[48];
  a9[2] = *&v134[32];
  a9[3] = v101;
  v102 = *&v134[80];
  a9[4] = *&v134[64];
  a9[5] = v102;
  v77 = *v134;
  v78 = *&v134[16];
LABEL_117:
  *v74 = v77;
  v74[1] = v78;
  *(v74 + 39) = v69;
  *(v74 + 40) = v70;
  *(v74 + 21) = v71;
  *(v74 + 44) = v72;
  *(v74 + 45) = 0;
}