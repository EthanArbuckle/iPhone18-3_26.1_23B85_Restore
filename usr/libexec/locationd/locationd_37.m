void sub_10027C3E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B3AC0;
  sub_10027C450(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10027C450(void *result)
{
  if (qword_102637DF8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10027C4F0(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  if (!a4)
  {
    sub_101A35DE8();
  }

  if (*a2 == 11)
  {
    *(a4 + 65) = *a3;
  }

  else if (*a2 == 10)
  {
    *(a4 + 64) = *a3;
  }
}

void sub_10027C530(uint64_t a1)
{
  if (*(a1 + 1952))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 1784) ^ 1;
  }

  v3 = (v2 & 1);
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67240192;
    v8[1] = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationController,gnss debounce benefit low:%{public}d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FB7DC(v3);
  }

  if (*(a1 + 5288) != v3)
  {
    *(a1 + 5288) = v3;
    if (*(a1 + 336))
    {
      if ((*(a1 + 5289) & 1) != 0 || !v3)
      {
        if (*(a1 + 5289))
        {
          if ((v3 & 1) == 0)
          {
            v7 = sub_1003DD9F8(a1 + 256, (a1 + 336));
            [*(*v7 + 16) unregister:*(*v7 + 8) forNotification:44];
            *(a1 + 5289) = 0;
          }
        }
      }

      else
      {
        v5 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v5 + 16) register:*(*v5 + 8) forNotification:44 registrationInfo:0];
        *(a1 + 5289) = 1;
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "LocationController,GpsProvider not available for Gnss debounce notification", v8, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FB8C8();
      }
    }
  }
}

void sub_10027C714(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10192947C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBTLEFenceManagerConcrete::onDaemonStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101929490();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBTLEFenceManagerConcrete::onDaemonStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10027C8E0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10027C8E0(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  if (*a3 == 10 && *a4 == 1)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1019294B8();
    }

    v5 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v27 = 2082;
      *&v27[2] = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:iB: Received display on notification}", buf, 0x12u);
    }

    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    v6 = *(a1 + 160);
    if (v6 != (a1 + 168))
    {
      do
      {
        if (*(v6 + 24) == 2)
        {
          v7 = v6[9];
          if (v7 != v6 + 10)
          {
            do
            {
              if ((v7[18] & 4) != 0)
              {
                if (qword_1025D4610 != -1)
                {
                  sub_101929410();
                }

                v8 = qword_1025D4618;
                if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
                {
                  (*(v7[4] + 16))(__p, v7 + 4);
                  v9 = __p;
                  if (v23 < 0)
                  {
                    v9 = __p[0];
                  }

                  *buf = 68289283;
                  *&buf[4] = 0;
                  *v27 = 2082;
                  *&v27[2] = "";
                  *&v27[10] = 2081;
                  *&v27[12] = v9;
                  _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Display turned on, notifying region, region:%{private, location:escape_only}s}", buf, 0x1Cu);
                  if (v23 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }

                memset(v27, 0, sizeof(v27));
                *buf = off_1024576F0;
                memset(v28, 0, sizeof(v28));
                memset(&v29, 0, sizeof(v29));
                v31 = 0;
                v32 = off_102457740;
                v33 = 0u;
                v34 = 0u;
                v35 = 1;
                std::string::operator=(v27, (v7 + 5));
                *&v27[24] = v7[8];
                std::string::operator=(v28, v7 + 3);
                std::string::operator=(&v28[1], v7 + 4);
                std::string::operator=(&v29, v7 + 5);
                v30 = *(v7 + 36);
                v35 = 2;
                LODWORD(__p[0]) = 3;
                (*(*a1 + 152))(a1, __p, buf, 0, 0xFFFFFFFFLL, 0);
                __p[0] = v7 + 4;
                sub_10075661C(a1 + 304, (v7 + 4));
                __p[0] = COERCE_VOID_(CFAbsoluteTimeGetCurrent());
                sub_1007567B4();
              }

              v10 = v7[1];
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
                  v11 = v7[2];
                  v12 = *v11 == v7;
                  v7 = v11;
                }

                while (!v12);
              }

              v7 = v11;
            }

            while (v11 != v6 + 10);
          }
        }

        v13 = v6[1];
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
            v14 = v6[2];
            v12 = *v14 == v6;
            v6 = v14;
          }

          while (!v12);
        }

        v6 = v14;
      }

      while (v14 != (a1 + 168));
      v15 = v24;
      if (v24 != v25)
      {
        do
        {
          if (qword_1025D4610 != -1)
          {
            sub_101929410();
          }

          v16 = qword_1025D4618;
          if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v15 + 4;
            if (*(v15 + 55) < 0)
            {
              v17 = *v17;
            }

            *buf = 68289283;
            *&buf[4] = 0;
            *v27 = 2082;
            *&v27[2] = "";
            *&v27[10] = 2081;
            *&v27[12] = v17;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:@iB: Launching application for notification (if necessary), bundle:%{private, location:escape_only}s}", buf, 0x1Cu);
          }

          v18 = [objc_msgSend(*(a1 + 32) "vendor")];
          v19 = v15 + 4;
          if (*(v15 + 55) < 0)
          {
            v19 = *v19;
          }

          [v18 launchApplication:+[NSString stringWithUTF8String:](NSString requiringAuthForServiceMask:{"stringWithUTF8String:", v19), 1}];
          v20 = v15[1];
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
              v21 = v15[2];
              v12 = *v21 == v15;
              v15 = v21;
            }

            while (!v12);
          }

          v15 = v21;
        }

        while (v21 != v25);
      }
    }

    sub_10001AF44(&v24, v25[0]);
  }
}

void sub_10027CEC4(uint64_t a1, char a2)
{
  *(a1 + 2744) = a2;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 2744);
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "GnssDebounceUserBenefitLow,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947CB0((a1 + 2744));
  }
}

uint64_t sub_10027CFA0(uint64_t a1)
{
  result = IOHIDEventGetType();
  if (result == 20)
  {
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    IOHIDEventGetFloatValue();
    TimeStamp = IOHIDEventGetTimeStamp();
    sub_1000080EC(TimeStamp);
    IOHIDEventGetIntegerValue();
    return sub_10027D05C(a1);
  }

  return result;
}

uint64_t sub_10027D05C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v8 = v1;
  v9 = *(v1 + 72);
  v10 = *v2;
  if (v9 > 0.0 && v10 > v9 + *(v1 + 48))
  {
    v46 = *v2;
    v11 = sub_10098F914(v1, &v47);
    if (qword_1025D42D0 != -1)
    {
      sub_10198F9E8();
    }

    v12 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v64 = COERCE_DOUBLE("CLGyro");
      v65 = 1026;
      LODWORD(v66) = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Type,%{public}s,ret=%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10198F9FC(v11);
    }

    if (v11)
    {
      if (qword_1025D42D0 != -1)
      {
        sub_10198FB1C();
      }

      v13 = qword_1025D42D8;
      if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v64 = COERCE_DOUBLE("GyroTemperature");
        v65 = 2050;
        v66 = *&v47;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Type,%{public}s,temperature,%{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10198FB44();
      }

      if (*(v8 + 96) == 1)
      {
        *v51 = off_102490EE8;
        *&v51[8] = CFAbsoluteTimeGetCurrent();
        *&v51[20] = v47;
        v14 = sub_10015ADF4();
        sub_1010CF5BC(v14, v51);
        sub_10152D354(buf);
        sub_1015551C4(buf);
        v84 |= 1u;
        v81 = *&v51[8];
        v15 = v83;
        v16 = v47;
        *(v83 + 16) |= 2u;
        *(v15 + 12) = v16;
        if (qword_102637F48 != -1)
        {
          sub_10198F650();
        }

        if (qword_102637F50)
        {
          sub_1017F73BC(qword_102637F50, buf);
        }

        sub_101532FA8(buf);
      }

      sub_100061FD8(v8, 1, &v46, 16);
    }

    v10 = *v5;
    *(v8 + 48) = *v5;
  }

  v46 = v10;
  v47 = *v7;
  v48 = *(v7 + 2);
  v49 = HIWORD(v4);
  v50 = (~v4 & 0x300) == 0;
  if (qword_1025D42F0 != -1)
  {
    sub_10028BD50();
  }

  v17 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEBUG))
  {
    v19 = *v7;
    v18 = v7[1];
    v20 = v7[2];
    v21 = *v5;
    v22 = sub_1000137E0();
    *buf = 134220032;
    v64 = v19;
    v65 = 2048;
    v66 = v18;
    v67 = 2048;
    v68 = v20;
    v69 = 2048;
    v70 = v21;
    v71 = 1024;
    v72 = v4;
    v73 = 1024;
    v74 = HIWORD(v4) % 3u;
    v75 = 1024;
    v76 = (v4 >> 8) & 1;
    v77 = 1024;
    v78 = (v4 >> 9) & 1;
    v79 = 2048;
    v80 = v22;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "[CLGyro] x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f,subType,%d,sampleNum%%3,%d,triggerEnabled,%d,triggerOn,%d,now,%f", buf, 0x4Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42F0 != -1)
    {
      sub_10028BD50();
    }

    v41 = *v7;
    v40 = v7[1];
    v42 = v7[2];
    v43 = *v5;
    v44 = sub_1000137E0();
    *v51 = 134220032;
    *&v51[4] = v41;
    *&v51[12] = 2048;
    *&v51[14] = v40;
    *&v51[22] = 2048;
    v52 = v42;
    *v53 = 2048;
    *&v53[2] = v43;
    *&v53[10] = 1024;
    v54 = v4;
    v55 = 1024;
    v56 = HIWORD(v4) % 3u;
    v57 = 1024;
    v58 = (v4 >> 8) & 1;
    v59 = 1024;
    v60 = (v4 >> 9) & 1;
    v61 = 2048;
    v62 = v44;
    v45 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGyro::onGyroData(const CLMotionTypeRotationRate &, const CLMotionTypeTimestamp &, unsigned int)", "%s\n", v45);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  if (*v5 < *(v8 + 56))
  {
    if (qword_1025D42F0 != -1)
    {
      sub_10028BD50();
    }

    v23 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_ERROR))
    {
      v24 = *(v8 + 56);
      v25 = *v5;
      *buf = 134218240;
      v64 = v24;
      v65 = 2048;
      v66 = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "Gyro time rollback, last timestamp, %f, current timestamp, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10198FC64((v8 + 56));
    }
  }

  if (*(v8 + 96) == 1)
  {
    *v51 = off_102490E38;
    Current = CFAbsoluteTimeGetCurrent();
    v27 = *v5;
    *&v51[8] = Current;
    v28 = *v7;
    v52 = v27;
    *v53 = v28;
    *&v53[8] = v7[2];
    v54 = v4;
    LOBYTE(v55) = BYTE2(v4) - 3 * ((43691 * HIWORD(v4)) >> 17);
    HIBYTE(v55) = BYTE1(v4) & 1;
    LOBYTE(v56) = (v4 & 0x200) != 0;
    v29 = sub_10015ADF4();
    sub_1010CF5BC(v29, v51);
    sub_10152D354(buf);
    sub_1015550A4(buf);
    v84 |= 1u;
    v81 = *&v51[8];
    v30 = v82;
    v31 = *v5;
    *(v82 + 44) |= 1u;
    *(v30 + 8) = v31;
    v32 = v82;
    *&v31 = *v7;
    *(v82 + 44) |= 0x10u;
    *(v32 + 28) = LODWORD(v31);
    v33 = v82;
    *&v31 = v7[1];
    *(v82 + 44) |= 0x20u;
    *(v33 + 32) = LODWORD(v31);
    v34 = v82;
    *&v31 = v7[2];
    *(v82 + 44) |= 0x40u;
    *(v34 + 36) = LODWORD(v31);
    v35 = v82;
    *(v82 + 44) |= 8u;
    *(v35 + 24) = v4;
    v36 = v82;
    *(v82 + 44) |= 4u;
    *(v36 + 20) = HIWORD(v4) % 3u;
    v37 = v82;
    *(v82 + 44) |= 0x80u;
    *(v37 + 40) = BYTE1(v4) & 1;
    v38 = v82;
    *(v82 + 44) |= 0x100u;
    *(v38 + 41) = (v4 & 0x200) != 0;
    if (qword_102637F48 != -1)
    {
      sub_10198F650();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  result = sub_100061FD8(v8, 0, &v46, 24);
  *(v8 + 56) = *v5;
  return result;
}

void sub_10027D80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

__n128 sub_10027D83C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v7 = (*(a1 + 56) + 24 * *(a1 + 64));
  result = *a3;
  v7[1].n128_u64[0] = a3[1].n128_u64[0];
  *v7 = result;
  v9 = *(a1 + 68);
  v10 = *(a1 + 64) + 1;
  *(a1 + 64) = v10;
  if (v10 >= v9)
  {
    v18 = v4;
    v19 = v3;
    v20 = v5;
    v21 = v6;
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 16);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100282B3C;
    v16[3] = &unk_102474290;
    v16[4] = v13;
    v16[5] = v12;
    v17 = v10;
    v16[6] = v14;
    v16[7] = v11;
    [v15 async:v16];
    operator new[]();
  }

  return result;
}

uint64_t sub_10027D928(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 352);
  *v17 = v4;
  if (*(a1 + 653) == 1 && (*(a1 + 652) & 1) == 0)
  {
    sub_10026D1A4(a1);
    *(a1 + 653) = 0;
  }

  v5 = v4 + *(a1 + 664);
  *&v17[1] = v5;
  v6 = a2[1];
  v18 = a2[1];
  v7 = a2[2];
  v19 = a2[2];
  v8 = a2[3];
  v20 = a2[3];
  v9 = a2[4];
  v21 = a2[4];
  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v10 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v11 = "Undefined";
    v12 = "Above 30mph";
    if (v6 != 16)
    {
      v12 = "Undefined";
    }

    if (v6 == 1)
    {
      v12 = "Below 30mph";
    }

    if (v7 <= 5)
    {
      v11 = off_1024C11D8[v7];
    }

    *buf = 134219778;
    v39 = v4;
    v40 = 2048;
    v41 = v5;
    v42 = 256;
    v43 = v6;
    v44 = 256;
    v45 = v7;
    v46 = 1024;
    v47 = v8;
    v48 = 1024;
    v49 = v9;
    v50 = 2080;
    v51 = v12;
    v52 = 2080;
    v53 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Baseband speed,timestamp,%f,startTime,%f,speedThreshold,0x%02hhx,speedRange,0x%02hhx,scaledValue,0x%02x,reserved,0x%02x,speedThresholdStr,%s,speedRangeStr,%s", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_101AD9CD8();
    }

    v14 = "Undefined";
    if (v6 == 16)
    {
      v14 = "Above 30mph";
    }

    if (v6 == 1)
    {
      v15 = "Below 30mph";
    }

    else
    {
      v15 = v14;
    }

    v22 = 134219778;
    v23 = v4;
    v24 = 2048;
    v25 = v5;
    v26 = 256;
    v27 = v6;
    v28 = 256;
    v29 = v7;
    v30 = 1024;
    v31 = v8;
    v32 = 1024;
    v33 = v9;
    v34 = 2080;
    v35 = v15;
    v36 = 2080;
    v37 = sub_100F5A62C(v7);
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitBasebandSpeed(const CMMotionCoprocessorReply::BasebandSpeed *)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return sub_100013B00(a1, 12, v17, 232);
}

void *sub_10027DC44(void *result)
{
  if (result)
  {
    v1 = result;
    TimeStamp = IOHIDEventGetTimeStamp();
    v3 = sub_1000080EC(TimeStamp);
    v4 = v1[5];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100287BDC;
    v5[3] = &unk_10245D2A8;
    v5[4] = v1;
    *&v5[5] = v3;
    return [v4 async:v5];
  }

  return result;
}

uint64_t sub_10027E024(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_10027E208(a1, 1);
}

uint64_t sub_10027E0AC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0xAA];
    v7 = *v6;
    v8 = *v6 + 24 * (v5 % 0xAA);
    v9 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 23) < 0)
        {
          operator delete(*v8);
          v7 = *v6;
        }

        v8 += 24;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 85;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 170;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_10027E208(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0xAA)
  {
    a2 = 1;
  }

  if (v2 < 0x154)
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
    *(a1 + 32) -= 170;
  }

  return v4 ^ 1u;
}

void sub_10027E268(uint64_t a1, uint64_t *a2, double *a3)
{
  if (sub_10027E6E4(a1, 0) != 0.0 || sub_10027E6E4(a1, 1) != 0.0)
  {
    v6 = *a3;
    v18 = *a3;
    v7 = *a2;
    v19 = *a2;
    v8 = *(a1 + 64);
    if (v8 == 0.0 || v6 - v8 > *(a1 + 112))
    {
      v9 = sub_10028EE78(a1, (a1 + 72));
      if (qword_1025D4310 != -1)
      {
        sub_10194A0C4();
      }

      v10 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v31) = v9;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Pressure Temperature=%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194A5DC();
      }

      *(a1 + 64) = *a3;
    }

    v11 = *(a1 + 72);
    HIDWORD(v19) = v11;
    if (*(a1 + 56) == 1)
    {
      sub_10152D354(buf);
      sub_101552B84(buf);
      Current = CFAbsoluteTimeGetCurrent();
      v42 |= 1u;
      v40 = Current;
      sub_1015D4E5C(v41);
      v13 = *(v41 + 8);
      *(v13 + 24) |= 1u;
      *(v13 + 8) = v6;
      v14 = *(v41 + 8);
      *(v14 + 24) |= 2u;
      *(v14 + 16) = v7;
      v15 = *(v41 + 8);
      *(v15 + 24) |= 4u;
      *(v15 + 20) = v11;
      if (qword_102637F48 != -1)
      {
        sub_10194A6D8();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, buf);
      }

      sub_101532FA8(buf);
    }

    if (sub_10027E6E4(a1, 0) != 0.0)
    {
      sub_100061FD8(a1, 0, &v18, 16);
    }

    if (*(a1 + 57) == 1)
    {
      *&v19 = *&v19 + (-(*(a1 + 84) - (*(a1 + 80) * fminf(*(a1 + 88), *(&v19 + 1)))) / -1000.0);
    }

    if (sub_10027E6E4(a1, 1) != 0.0)
    {
      sub_100061FD8(a1, 1, &v18, 16);
    }

    if (qword_1025D42D0 != -1)
    {
      sub_10194A700();
    }

    v16 = qword_1025D42D8;
    if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v31 = "Pressure";
      v32 = 2048;
      v33 = *&v19;
      v34 = 2048;
      v35 = *(&v19 + 1);
      v36 = 2048;
      v37 = v18;
      v38 = 2048;
      v39 = *&v7;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f,rawPressure,%.6f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42D0 != -1)
      {
        sub_10194A700();
      }

      v20 = 136316162;
      v21 = "Pressure";
      v22 = 2048;
      v23 = *&v19;
      v24 = 2048;
      v25 = *(&v19 + 1);
      v26 = 2048;
      v27 = v18;
      v28 = 2048;
      v29 = *&v7;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPressure::onPressureData(const CLMotionTypePressure &, const CLMotionTypeTimestamp &)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

void sub_10027E6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

double sub_10027E6E4(uint64_t a1, void *a2)
{
  if (*(a1 + 24) > a2)
  {
    return *(*(a1 + 16) + 80 * a2);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1019893E4();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unknown notification %d", v6, 8u);
  }

  v3 = -1.0;
  if (sub_10000A100(121, 0))
  {
    sub_101989A1C(a2);
  }

  return v3;
}

__n128 sub_10027E7E8(uint64_t a1, uint64_t a2, __n128 *a3)
{
  result = *a3;
  *(*(a1 + 56) + 16 * *(a1 + 64)) = *a3;
  v8 = *(a1 + 68);
  v9 = *(a1 + 64) + 1;
  *(a1 + 64) = v9;
  if (v9 >= v8)
  {
    v17 = v4;
    v18 = v3;
    v19 = v5;
    v20 = v6;
    v11 = *(a1 + 24);
    v10 = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 16);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100307580;
    v15[3] = &unk_102474290;
    v15[4] = v12;
    v15[5] = v11;
    v16 = v9;
    v15[6] = v13;
    v15[7] = v10;
    [v14 async:v15];
    operator new[]();
  }

  return result;
}

void sub_10027E8C0(uint64_t a1)
{
  if (IOHIDEventGetType() == 31)
  {
    IOHIDEventGetFloatValue();
    *&v2 = v2;
    LODWORD(v5) = LODWORD(v2);
    TimeStamp = IOHIDEventGetTimeStamp();
    v4 = sub_1000080EC(TimeStamp);
    sub_10027E268(a1, &v5, &v4);
  }
}

uint64_t sub_10027E930(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v4 = *(a2 + 36);
      *(a2 + 8) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      v5 = *a1;
      *(a2 + 36) = v4 | 7;
      *(a2 + 24) = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = v2;
    v10 = v3;
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v7 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "pProtoTimestamp is nullptr", v8, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101B83658();
      return 0;
    }
  }

  return result;
}

void sub_10027EA08(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 104) & 1) == 0)
  {
    if (*a2 == *(a2 + 8))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101754030();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "GPSSENSOR,no inertial sensor samples", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1017544AC();
      }
    }

    else
    {
      if (*(*a2 + 8) - 1 < 2)
      {
        sub_100281064(a2, &v28);
        if (v28 == v29)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101753FC4();
          }

          v11 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "GPSSENSOR,allSensorSampleBAD", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101753FEC(buf);
            LOWORD(v31) = 0;
            v12 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAssistanceInertial::process(const GNSS::RawSensorSampleVector &)", "%s\n", v12);
            if (v12 != buf)
            {
              free(v12);
            }
          }

          goto LABEL_61;
        }

        v4 = 32;
        if (*(v28 + 8) == 1)
        {
          v4 = 8;
        }

        v5 = (a1 + v4);
        sub_100281414(&v28, &__p, *(a1 + v4));
        if (__p == v27)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101753FC4();
          }

          v13 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(v29 - 16);
            v15 = *v5;
            v16 = *(v29 - 3);
            *buf = 16909056;
            v38 = v14;
            v39 = 2050;
            v40 = v15;
            v41 = 2050;
            v42 = v16;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning,GPSSENSOR,timeReset,eType,%{public}hhu,lastTime,%{public}.3lf,timestamp,%{public}.3lf", buf, 0x19u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101753FEC(buf);
            v21 = *(v29 - 16);
            v22 = *v5;
            v23 = *(v29 - 3);
            v31 = 16909056;
            v32 = v21;
            v33 = 2050;
            v34 = v22;
            v35 = 2050;
            v36 = v23;
            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceInertial::process(const GNSS::RawSensorSampleVector &)", "%s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          v17 = *(v29 - 1);
          *v5 = *(v29 - 3);
          v5[2] = v17;
          goto LABEL_59;
        }

        v6 = 0xAAAAAAAAAAAAAAABLL * ((v27 - __p) >> 3);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) - v6 < 2)
        {
          if (*(__p + 8) == 2)
          {
            if (v6 < 2)
            {
              if (qword_1025D4650 != -1)
              {
                sub_101753FC4();
              }

              v18 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning,GPSSENSOR,only 1 Gyro sample,no spur dectection", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101753FEC(buf);
                LOWORD(v31) = 0;
                v25 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceInertial::process(const GNSS::RawSensorSampleVector &)", "%s\n", v25);
                if (v25 != buf)
                {
                  free(v25);
                }
              }
            }

            else
            {
              sub_1002831AC(a1, &__p);
            }
          }

          v19 = *(v27 - 1);
          *v5 = *(v27 - 24);
          v5[2] = v19;
          sub_100281710(a1, &__p);
          if (*(a1 + 96))
          {
            if ((*(a1 + 66) & 1) == 0)
            {
              v30[0] = off_1024FBD18;
              v30[1] = &__p;
              v30[3] = v30;
              sub_100282BB4(a1 + 72);
              sub_1001767B8(v30);
            }

            goto LABEL_59;
          }

          if (*(a1 + 66))
          {
            goto LABEL_59;
          }

          if (qword_1025D4650 != -1)
          {
            sub_101753FC4();
          }

          v20 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "GPSSENSOR,no Device Command To Inject Accel or Gyro", buf, 2u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_59;
          }

          sub_101753FEC(buf);
          LOWORD(v31) = 0;
          v8 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLGnssAssistanceInertial::process(const GNSS::RawSensorSampleVector &)", "%s\n", v8);
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_101753FC4();
          }

          v7 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,GPSSENSOR,More than one sample timestamps have issue, sample block discarded", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_59;
          }

          sub_101753FEC(buf);
          LOWORD(v31) = 0;
          v8 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceInertial::process(const GNSS::RawSensorSampleVector &)", "%s\n", v8);
        }

        if (v8 != buf)
        {
          free(v8);
        }

LABEL_59:
        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

LABEL_61:
        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        return;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101754030();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "GPSSENSOR,type error,neither Accel nor Gyro", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1017543B4();
      }
    }
  }
}

void sub_10027F1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027F24C(uint64_t a1)
{
  result = 0;
  v3 = *a1;
  if (*a1 > 7)
  {
    switch(v3)
    {
      case 8:
        return *(a1 + 4) + 300;
      case 16:
        return *(a1 + 4) + 206;
      case 32:
        return *(a1 + 4) + 500;
    }
  }

  else
  {
    switch(v3)
    {
      case 1:
        return *(a1 + 4);
      case 2:
        v4 = *(a1 + 4);
        v5 = v4 - 1;
        v6 = v4 + 100;
        if (v5 <= 0x17)
        {
          return v6;
        }

        else
        {
          return 0;
        }

      case 4:
        return *(a1 + 4) + 200;
    }
  }

  return result;
}

void sub_10027F2E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100280DC8(a1);

  operator delete();
}

void sub_10027F320(uint64_t a1, void *a2)
{
  if (*(a1 + 289) == 1)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101A8C3B8();
    }

    v4 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      [a2 timestamp];
      v6 = v5;
      [a2 filteredPressure];
      *buf = 134218240;
      *&buf[4] = v6;
      v62 = 2048;
      v63 = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "sending requested pressure finding data to watch: timestamp %f, filteredPressure %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A8C4CC(a2, v8, v9, v10, v11, v12, v13, v14);
    }

    [a2 timestamp];
    v71[0] = [NSNumber numberWithDouble:?];
    [a2 filteredPressure];
    v71[1] = [NSNumber numberWithDouble:?];
    v15 = [NSArray arrayWithObjects:v71 count:2];
    *buf = 0;
    v16 = [NSJSONSerialization dataWithJSONObject:v15 options:0 error:buf];
    if (*buf)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101A8C5E0();
      }

      v17 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *v59 = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning error serializing Filtered Pressure entry", v59, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A8C608();
      }

      return;
    }

    sub_1005F5534(120.0, a1, 36, v16, 300, 0, 0, 1, 0, 0);
    *(a1 + 289) = 0;
  }

  if (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 256)) >= *(a1 + 272) && *(a1 + 288) == 1)
  {
    [a2 accuracy];
    if (v18 <= 140.0)
    {
      [a2 altitude];
      if (v21 <= -900.0 || ([a2 altitude], v22 >= 10000.0))
      {
        if (qword_1025D4410 != -1)
        {
          sub_101A8C5E0();
        }

        v25 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "invalid altitude, not sending to watch", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A8C6EC();
        }
      }

      else
      {
        [a2 timestamp];
        v70[0] = [NSNumber numberWithDouble:?];
        [a2 altitude];
        v70[1] = [NSNumber numberWithDouble:?];
        [a2 accuracy];
        v70[2] = [NSNumber numberWithDouble:?];
        [a2 precision];
        v70[3] = [NSNumber numberWithDouble:?];
        v70[4] = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a2 statusInfo]);
        *v59 = 0;
        v23 = [NSJSONSerialization dataWithJSONObject:[NSArray arrayWithObjects:v70 count:5] options:0 error:v59];
        if (*v59)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101A8C5E0();
          }

          v24 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#Warning error serializing Absolute Altitude entry", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A8C7D0();
          }
        }

        else
        {
          v26 = v23;
          if (qword_1025D4410 != -1)
          {
            sub_101A8C5E0();
          }

          v27 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [a2 timestamp];
            v29 = v28;
            [a2 altitude];
            v31 = v30;
            [a2 accuracy];
            v33 = v32;
            [a2 precision];
            v35 = v34;
            v36 = [a2 statusInfo];
            *buf = 134219008;
            *&buf[4] = v29;
            v62 = 2048;
            v63 = v31;
            v64 = 2048;
            v65 = v33;
            v66 = 2048;
            v67 = v35;
            v68 = 2048;
            v69 = v36;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#altimeter,sending altimeter data to watch,timestamp,%f, altitude,%f,accuracy,%f,precision,%f,statusInfo,%lu", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A8C8B4(a2, v37, v38, v39, v40, v41, v42, v43);
          }

          sub_1005F5534(120.0, a1, 20, v26, 300, 1, 0, 0, 0, 0);
          *(a1 + 256) = CFAbsoluteTimeGetCurrent();
          [a2 timestamp];
          v60[0] = [NSNumber numberWithDouble:?];
          [a2 filteredPressure];
          v60[1] = [NSNumber numberWithDouble:?];
          v58 = 0;
          v44 = [NSJSONSerialization dataWithJSONObject:[NSArray arrayWithObjects:v60 count:2] options:0 error:&v58];
          if (v58)
          {
            if (qword_1025D4410 != -1)
            {
              sub_101A8C5E0();
            }

            v45 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "#Warning error serializing Filtered Pressure entry", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A8C608();
            }
          }

          else
          {
            v46 = v44;
            if (qword_1025D4410 != -1)
            {
              sub_101A8C5E0();
            }

            v47 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              [a2 timestamp];
              v49 = v48;
              [a2 filteredPressure];
              *buf = 134218240;
              *&buf[4] = v49;
              v62 = 2048;
              v63 = v50;
              _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "requesting to send pressure data to watch: timestamp %f, filteredPressure, %f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A8CA2C(a2, v51, v52, v53, v54, v55, v56, v57);
            }

            [*(a1 + 240) requestPressureUpdateToWatch:v46];
          }
        }
      }
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101A8C5E0();
      }

      v19 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [a2 accuracy];
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "phone, not sending altitude to watch, uncertainty %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A8CB40();
      }
    }
  }
}

uint64_t sub_10027FA60(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
LABEL_1:
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_56;
        }

        *(a1 + 172) |= 1u;
        v8 = *(a1 + 8);
        if (!v8)
        {
          operator new();
        }

        v106[0] = 0;
        v9 = *(this + 1);
        if (v9 >= *(this + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v9;
          *(this + 1) = v9 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
        if (!sub_10028560C(v8, this, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v38 = *(this + 14);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 17)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
        goto LABEL_69;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = *v106;
        *(a1 + 172) |= 2u;
        v42 = *(this + 1);
        v16 = *(this + 2);
        if (v42 >= v16 || *v42 != 24)
        {
          continue;
        }

        v17 = v42 + 1;
        *(this + 1) = v17;
LABEL_73:
        v106[0] = 0;
        if (v17 >= v16 || (v43 = *v17, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v43 = v106[0];
        }

        else
        {
          *(this + 1) = v17 + 1;
        }

        if (v43 <= 6)
        {
          *(a1 + 172) |= 4u;
          *(a1 + 56) = v43;
        }

        v45 = *(this + 1);
        if (v45 >= *(this + 2) || *v45 != 34)
        {
          continue;
        }

        do
        {
          *(this + 1) = v45 + 1;
LABEL_83:
          v46 = *(a1 + 36);
          v47 = *(a1 + 32);
          if (v47 >= v46)
          {
            if (v46 == *(a1 + 40))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v46 + 1);
              v46 = *(a1 + 36);
            }

            *(a1 + 36) = v46 + 1;
            operator new();
          }

          v48 = *(a1 + 24);
          *(a1 + 32) = v47 + 1;
          v49 = *(v48 + 8 * v47);
          v106[0] = 0;
          v50 = *(this + 1);
          if (v50 >= *(this + 2) || *v50 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
            {
              return 0;
            }
          }

          else
          {
            v106[0] = *v50;
            *(this + 1) = v50 + 1;
          }

          v51 = *(this + 14);
          v52 = *(this + 15);
          *(this + 14) = v51 + 1;
          if (v51 >= v52)
          {
            return 0;
          }

          v53 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
          if (!sub_100284E4C(v49, this, v54) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v53);
          v55 = *(this + 14);
          v39 = __OFSUB__(v55, 1);
          v56 = v55 - 1;
          if (v56 < 0 == v39)
          {
            *(this + 14) = v56;
          }

          v45 = *(this + 1);
          if (v45 >= *(this + 2))
          {
            goto LABEL_1;
          }

          v57 = *v45;
        }

        while (v57 == 34);
        if (v57 != 41)
        {
          continue;
        }

        *(this + 1) = v45 + 1;
LABEL_101:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 48) = *v106;
        *(a1 + 172) |= 0x10u;
        v58 = *(this + 1);
        if (v58 >= *(this + 2) || *v58 != 49)
        {
          continue;
        }

        *(this + 1) = v58 + 1;
LABEL_105:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 64) = *v106;
        *(a1 + 172) |= 0x20u;
        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 57)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_109:
        *v106 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 72) = *v106;
        *(a1 + 172) |= 0x40u;
        v60 = *(this + 1);
        if (v60 >= *(this + 2) || *v60 != 69)
        {
          continue;
        }

        *(this + 1) = v60 + 1;
LABEL_113:
        v106[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 60) = v106[0];
        *(a1 + 172) |= 0x80u;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 != 77)
        {
          continue;
        }

        *(this + 1) = v61 + 1;
LABEL_117:
        v106[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v106) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 80) = v106[0];
        *(a1 + 172) |= 0x100u;
        v62 = *(this + 1);
        v26 = *(this + 2);
        if (v62 >= v26 || *v62 != 80)
        {
          continue;
        }

        v27 = v62 + 1;
        *(this + 1) = v27;
LABEL_121:
        v106[0] = 0;
        if (v27 >= v26 || (v63 = *v27, (v63 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v63 = v106[0];
        }

        else
        {
          *(this + 1) = v27 + 1;
        }

        if (v63 <= 4)
        {
          *(a1 + 172) |= 0x200u;
          *(a1 + 84) = v63;
        }

        v64 = *(this + 1);
        v14 = *(this + 2);
        if (v64 >= v14 || *v64 != 88)
        {
          continue;
        }

        v15 = v64 + 1;
        *(this + 1) = v15;
LABEL_131:
        v106[0] = 0;
        if (v15 >= v14 || (v65 = *v15, (v65 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v65 = v106[0];
        }

        else
        {
          *(this + 1) = v15 + 1;
        }

        if (v65 <= 4)
        {
          *(a1 + 172) |= 0x400u;
          *(a1 + 88) = v65;
        }

        v66 = *(this + 1);
        v24 = *(this + 2);
        if (v66 >= v24 || *v66 != 96)
        {
          continue;
        }

        v25 = v66 + 1;
        *(this + 1) = v25;
LABEL_141:
        v106[0] = 0;
        if (v25 >= v24 || (v67 = *v25, (v67 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v67 = v106[0];
        }

        else
        {
          *(this + 1) = v25 + 1;
        }

        if (v67 <= 4)
        {
          *(a1 + 172) |= 0x800u;
          *(a1 + 92) = v67;
        }

        v68 = *(this + 1);
        v20 = *(this + 2);
        if (v68 >= v20 || *v68 != 104)
        {
          continue;
        }

        v21 = v68 + 1;
        *(this + 1) = v21;
LABEL_151:
        v106[0] = 0;
        if (v21 >= v20 || (v69 = *v21, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v69 = v106[0];
        }

        else
        {
          *(this + 1) = v21 + 1;
        }

        if (v69 <= 4)
        {
          *(a1 + 172) |= 0x1000u;
          *(a1 + 96) = v69;
        }

        v70 = *(this + 1);
        v12 = *(this + 2);
        if (v70 >= v12 || *v70 != 112)
        {
          continue;
        }

        v13 = v70 + 1;
        *(this + 1) = v13;
LABEL_161:
        v106[0] = 0;
        if (v13 >= v12 || (v71 = *v13, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v71 = v106[0];
        }

        else
        {
          *(this + 1) = v13 + 1;
        }

        if (v71 <= 4)
        {
          *(a1 + 172) |= 0x2000u;
          *(a1 + 100) = v71;
        }

        v72 = *(this + 1);
        if (v72 >= *(this + 2) || *v72 != 122)
        {
          continue;
        }

        do
        {
          *(this + 1) = v72 + 1;
LABEL_171:
          v73 = *(a1 + 116);
          v74 = *(a1 + 112);
          if (v74 >= v73)
          {
            if (v73 == *(a1 + 120))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104), v73 + 1);
              v73 = *(a1 + 116);
            }

            *(a1 + 116) = v73 + 1;
            operator new();
          }

          v75 = *(a1 + 104);
          *(a1 + 112) = v74 + 1;
          v76 = *(v75 + 8 * v74);
          v106[0] = 0;
          v77 = *(this + 1);
          if (v77 >= *(this + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
            {
              return 0;
            }
          }

          else
          {
            v106[0] = *v77;
            *(this + 1) = v77 + 1;
          }

          v78 = *(this + 14);
          v79 = *(this + 15);
          *(this + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          v80 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
          if (!sub_100285084(v76, this, v81) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v80);
          v82 = *(this + 14);
          v39 = __OFSUB__(v82, 1);
          v83 = v82 - 1;
          if (v83 < 0 == v39)
          {
            *(this + 14) = v83;
          }

          v72 = *(this + 1);
          v84 = *(this + 2);
        }

        while (v72 < v84 && *v72 == 122);
        if (v84 - v72 < 2 || *v72 != 130 || v72[1] != 1)
        {
          continue;
        }

        *(this + 1) = v72 + 2;
LABEL_191:
        *(a1 + 172) |= 0x8000u;
        v85 = *(a1 + 128);
        if (!v85)
        {
          operator new();
        }

        v106[0] = 0;
        v86 = *(this + 1);
        if (v86 >= *(this + 2) || *v86 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106))
          {
            return 0;
          }
        }

        else
        {
          v106[0] = *v86;
          *(this + 1) = v86 + 1;
        }

        v87 = *(this + 14);
        v88 = *(this + 15);
        *(this + 14) = v87 + 1;
        if (v87 >= v88)
        {
          return 0;
        }

        v89 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v106[0]);
        if (!sub_100D140D8(v85, this, v90) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v89);
        v91 = *(this + 14);
        v39 = __OFSUB__(v91, 1);
        v92 = v91 - 1;
        if (v92 < 0 == v39)
        {
          *(this + 14) = v92;
        }

        v93 = *(this + 1);
        v30 = *(this + 2);
        if (v30 - v93 <= 1 || *v93 != 144 || v93[1] != 1)
        {
          continue;
        }

        v31 = (v93 + 2);
        *(this + 1) = v31;
LABEL_206:
        v106[0] = 0;
        if (v31 >= v30 || (v94 = *v31, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v94 = v106[0];
        }

        else
        {
          *(this + 1) = v31 + 1;
        }

        if (v94 <= 4)
        {
          *(a1 + 172) |= 0x10000u;
          *(a1 + 136) = v94;
        }

        v95 = *(this + 1);
        v28 = *(this + 2);
        if (v28 - v95 < 2 || *v95 != 152 || v95[1] != 1)
        {
          continue;
        }

        v29 = (v95 + 2);
        *(this + 1) = v29;
LABEL_217:
        v106[0] = 0;
        if (v29 >= v28 || (v96 = *v29, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v96 = v106[0];
        }

        else
        {
          *(this + 1) = v29 + 1;
        }

        if (v96 <= 4)
        {
          *(a1 + 172) |= 0x20000u;
          *(a1 + 140) = v96;
        }

        v97 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v97 < 2 || *v97 != 160 || v97[1] != 1)
        {
          continue;
        }

        v11 = (v97 + 2);
        *(this + 1) = v11;
LABEL_228:
        v106[0] = 0;
        if (v11 >= v10 || (v98 = *v11, (v98 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v98 = v106[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v98 <= 4)
        {
          *(a1 + 172) |= 0x40000u;
          *(a1 + 144) = v98;
        }

        v99 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v99 < 2 || *v99 != 168 || v99[1] != 1)
        {
          continue;
        }

        v23 = (v99 + 2);
        *(this + 1) = v23;
LABEL_239:
        v106[0] = 0;
        if (v23 >= v22 || (v100 = *v23, (v100 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v100 = v106[0];
        }

        else
        {
          *(this + 1) = v23 + 1;
        }

        if (v100 <= 4)
        {
          *(a1 + 172) |= 0x80000u;
          *(a1 + 148) = v100;
        }

        v101 = *(this + 1);
        v32 = *(this + 2);
        if (v32 - v101 < 2 || *v101 != 176 || v101[1] != 1)
        {
          continue;
        }

        v33 = (v101 + 2);
        *(this + 1) = v33;
LABEL_250:
        v106[0] = 0;
        if (v33 >= v32 || (v102 = *v33, (v102 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
          if (!result)
          {
            return result;
          }

          v102 = v106[0];
        }

        else
        {
          *(this + 1) = v33 + 1;
        }

        if (v102 <= 4)
        {
          *(a1 + 172) |= 0x100000u;
          *(a1 + 160) = v102;
        }

        v103 = *(this + 1);
        if (*(this + 4) - v103 < 2 || *v103 != 185 || v103[1] != 1)
        {
          continue;
        }

        *(this + 1) = v103 + 2;
LABEL_261:
        *v106 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v106))
        {
          *(a1 + 152) = *v106;
          *(a1 + 172) |= 0x200000u;
          v104 = *(this + 1);
          v18 = *(this + 2);
          if (v18 - v104 >= 2 && *v104 == 192 && v104[1] == 1)
          {
            v19 = (v104 + 2);
            *(this + 1) = v19;
LABEL_266:
            v106[0] = 0;
            if (v19 >= v18 || (v105 = *v19, (v105 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v106);
              if (!result)
              {
                return result;
              }

              v105 = v106[0];
            }

            else
            {
              *(this + 1) = v19 + 1;
            }

            if (v105 <= 3)
            {
              *(a1 + 172) |= 0x400000u;
              *(a1 + 164) = v105;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v17 = *(this + 1);
        v16 = *(this + 2);
        goto LABEL_73;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v7 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v7 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v27 = *(this + 1);
        v26 = *(this + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v15 = *(this + 1);
        v14 = *(this + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v25 = *(this + 1);
        v24 = *(this + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v21 = *(this + 1);
        v20 = *(this + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_161;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v31 = *(this + 1);
        v30 = *(this + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v29 = *(this + 1);
        v28 = *(this + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v33 = *(this + 1);
        v32 = *(this + 2);
        goto LABEL_250;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v19 = *(this + 1);
        v18 = *(this + 2);
        goto LABEL_266;
      default:
LABEL_56:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t sub_100280940(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_77;
            }
          }

          else if (v7 == 7 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v7 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v17 = *(this + 1);
          v9 = *(this + 2);
LABEL_61:
          if (v17 >= v9 || (v33 = *v17, v33 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v34 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v33;
            v34 = v17 + 1;
            *(this + 1) = v34;
          }

          *(a1 + 44) |= 8u;
          if (v34 < v9 && *v34 == 40)
          {
            v10 = v34 + 1;
            *(this + 1) = v10;
LABEL_69:
            if (v10 >= v9 || (v35 = *v10, v35 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v36 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v35;
              v36 = v10 + 1;
              *(this + 1) = v36;
            }

            *(a1 + 44) |= 0x10u;
            if (v36 < v9 && *v36 == 48)
            {
              v18 = v36 + 1;
              *(this + 1) = v18;
LABEL_77:
              if (v18 >= v9 || (v37 = *v18, v37 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v38 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v37;
                v38 = v18 + 1;
                *(this + 1) = v38;
              }

              *(a1 + 44) |= 0x20u;
              if (v38 < v9 && *v38 == 56)
              {
                v12 = v38 + 1;
                *(this + 1) = v12;
LABEL_85:
                if (v12 >= v9 || (v39 = *v12, v39 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                  if (!result)
                  {
                    return result;
                  }

                  v40 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 36) = v39;
                  v40 = v12 + 1;
                  *(this + 1) = v40;
                }

                *(a1 + 44) |= 0x40u;
                if (v40 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
                {
                  *(this + 8) = 0;
                  result = 1;
                  *(this + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v7 == 5 && (TagFallback & 7) == 0)
          {
            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_69;
          }

LABEL_30:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v14 = *(this + 1);
      v13 = *(this + 2);
      if (v14 >= v13 || (v15 = *v14, v15 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v13 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v15;
        v16 = v14 + 1;
        *(this + 1) = v16;
      }

      v19 = *(a1 + 44) | 1;
      *(a1 + 44) = v19;
      if (v16 < v13 && *v16 == 18)
      {
        *(this + 1) = v16 + 1;
        goto LABEL_39;
      }
    }

    if (v7 != 2)
    {
      if (v7 != 3 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_53;
    }

    if (v8 != 2)
    {
      goto LABEL_30;
    }

    v19 = *(a1 + 44);
LABEL_39:
    *(a1 + 44) = v19 | 2;
    v21 = *(a1 + 8);
    if (!v21)
    {
      operator new();
    }

    v41 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v22;
      *(this + 1) = v22 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
    if (!sub_100285D58(v21, this, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
    }

    v30 = *(this + 1);
    v9 = *(this + 2);
    if (v30 < v9 && *v30 == 24)
    {
      v11 = v30 + 1;
      *(this + 1) = v11;
LABEL_53:
      if (v11 >= v9 || (v31 = *v11, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
        if (!result)
        {
          return result;
        }

        v32 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 20) = v31;
        v32 = v11 + 1;
        *(this + 1) = v32;
      }

      *(a1 + 44) |= 4u;
      if (v32 < v9 && *v32 == 32)
      {
        v17 = v32 + 1;
        *(this + 1) = v17;
        goto LABEL_61;
      }
    }
  }
}

void sub_100280DC8(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A7EB0;
  if (qword_102637BB8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

uint64_t sub_100280E54(uint64_t a1, unsigned int *a2)
{
  v3 = a1 + 8;
  result = sub_100280EC4(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == result)
  {
    return v3;
  }

  v5 = *(result + 28);
  if (*a2 >= v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (*a2 == v5)
  {
    v7 = a2[1];
    v8 = *(result + 32);
    v9 = v7 >= v8;
    v10 = v7 == v8;
    v6 = -1;
    if (v9)
    {
      v6 = 1;
    }

    if (v10)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100280EC4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = a2[1];
    do
    {
      v7 = *(a3 + 28);
      v8 = v7 == v5;
      if (v7 >= v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v10 = *(a3 + 32);
        v11 = v10 == v6;
        v9 = v10 >= v6 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      v12 = v9 & 0x80;
      v8 = v12 == 0;
      v13 = v12 >> 4;
      if (v8)
      {
        result = a3;
      }

      a3 = *(a3 + v13);
    }

    while (a3);
  }

  return result;
}

uint64_t sub_100280F0C(double *a1, double *a2, float *a3, float *a4, float *a5)
{
  v5 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  result = 0;
  v7 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v5 > 0.0 && v7 > 0.0)
  {
    if ((v8 = (*a4 - *a3) / v5, v9 = (*a5 - *a4) / v7, v8 > 18000.0) && v9 < -18000.0 || (result = 0, v8 < -18000.0) && v9 > 18000.0)
    {
      v10 = v5 * (*a5 - *a3) / (v5 + v7) + *a3;
      *a4 = v10;
      return 1;
    }
  }

  return result;
}

void sub_100280FDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100281064(__int128 **a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if ((*v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 3) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v3[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v3 + 5) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v12 = *(a2 + 8);
        v11 = *(a2 + 16);
        if (v12 >= v11)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 3);
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x555555555555555)
          {
            v18 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            sub_100280FDC(a2, v18);
          }

          v19 = 24 * v15;
          v20 = *v3;
          *(v19 + 16) = *(v3 + 2);
          *v19 = v20;
          v14 = 24 * v15 + 24;
          v21 = *(a2 + 8) - *a2;
          v22 = 24 * v15 - v21;
          memcpy((v19 - v21), *a2, v21);
          v23 = *a2;
          *a2 = v22;
          *(a2 + 8) = v14;
          *(a2 + 16) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v13 = *v3;
          *(v12 + 16) = *(v3 + 2);
          *v12 = v13;
          v14 = v12 + 24;
        }

        *(a2 + 8) = v14;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101753FC4();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          v6 = *v3;
          v7 = *(v3 + 8);
          v8 = *(v3 + 3);
          v9 = *(v3 + 4);
          v10 = *(v3 + 5);
          *buf = 134350080;
          v26 = v6;
          v27 = 258;
          v28 = v7;
          v29 = 2;
          v30 = 8;
          v31 = v8;
          v32 = 2050;
          v33 = v9;
          v34 = 2050;
          v35 = v10;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "GPSSENSOR,badSample,timeStamp,%{public}.3lf,sensorType,%{public}hhu,x,%{public}.5f,y,%{public}.5f,z,%{public}.5f", buf, 0x2Du);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101753FEC(buf);
          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "GNSS::RawSensorSampleVector CLGnssAssistanceInertial::removeBadSamples(const GNSS::RawSensorSampleVector &)", "%s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }
}

void sub_1002813E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100281414(double **a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      if (*v4 <= a3)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101753FC4();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v4;
          *buf = 134349312;
          v24 = a3;
          v25 = 2050;
          v26 = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,GPSSENSOR,ReverseSampleTimestamp,lastTime,%{public}.3lf,timestamp,%{public}.3lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101753FEC(buf);
          v13 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "GNSS::RawSensorSampleVector CLGnssAssistanceInertial::getSamplesWithMonotonicTimeStamp(CFTimeInterval, const GNSS::RawSensorSampleVector &)", "%s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      else
      {
        v8 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v8 >= v7)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
          v15 = v14 + 1;
          if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v16 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
          if (2 * v16 > v15)
          {
            v15 = 2 * v16;
          }

          if (v16 >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            sub_100280FDC(a2, v17);
          }

          v18 = 24 * v14;
          v19 = *v4;
          *(v18 + 16) = v4[2];
          *v18 = v19;
          v10 = 24 * v14 + 24;
          v20 = *(a2 + 8) - *a2;
          v21 = 24 * v14 - v20;
          memcpy((v18 - v20), *a2, v20);
          v22 = *a2;
          *a2 = v21;
          *(a2 + 8) = v10;
          *(a2 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          v9 = *v4;
          *(v8 + 16) = v4[2];
          *v8 = v9;
          v10 = v8 + 24;
        }

        *(a2 + 8) = v10;
        a3 = *v4;
      }

      v4 += 3;
    }

    while (v4 != v5);
  }
}

void sub_1002816E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100281710(uint64_t a1, uint64_t **a2)
{
  if (*(a1 + 64))
  {
    v3 = *(*a2 + 8);
    if (v3 == 2)
    {
      *&v17 = off_102491360;
      *(&v17 + 1) = CFAbsoluteTimeGetCurrent();
      v15 = *a2;
      v14 = a2[1];
      while (v15 != v14)
      {
        *&v19[7] = *v15;
        *&v19[15] = *(v15 + 12);
        *&v19[23] = *(v15 + 5);
        v16 = sub_10015ADF4();
        sub_1010CF5BC(v16, &v17);
        v15 += 3;
      }
    }

    else if (v3 == 1)
    {
      *&v17 = off_102491308;
      *(&v17 + 1) = CFAbsoluteTimeGetCurrent();
      v5 = *a2;
      v4 = a2[1];
      while (v5 != v4)
      {
        *&v19[7] = *v5;
        *&v19[15] = *(v5 + 12);
        *&v19[23] = *(v5 + 5);
        v6 = sub_10015ADF4();
        sub_1010CF5BC(v6, &v17);
        v5 += 3;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101754030();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
      v9 = *(*a2 + 8);
      v10 = **a2;
      v11 = *(*a2 + 3);
      v12 = *(*a2 + 4);
      v13 = *(*a2 + 5);
      LODWORD(v17) = 134350336;
      *(&v17 + 4) = v8;
      WORD6(v17) = 258;
      BYTE14(v17) = v9;
      HIBYTE(v17) = 2;
      v18 = 8;
      *v19 = v10;
      *&v19[8] = 2050;
      *&v19[10] = v11;
      *&v19[18] = 2050;
      *&v19[20] = v12;
      v20 = 2050;
      v21 = v13;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "GPSSENSOR,sampleNumber,%{public}zu,sesnorType,%{public}hhu,timestamp,%{public}.3lf,x,%{public}.3f,y,%{public}.3f,z,%{public}.3f", &v17, 0x37u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101754044(a2);
    }
  }
}

uint64_t sub_100281950(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024FBD18;
  a2[1] = v2;
  return result;
}

void sub_100281974(double *a1, unsigned int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLGnssController::setGyroData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::setGyroData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_100282E90(a3, a1, a2);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_100281B44(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_100280FDC(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_100281C04(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    sub_1001324C4(v22);
    v4 = *(*a2 + 8);
    if (v4 == 2)
    {
      if (sub_100132484(0xFu))
      {
        v23 = 15;
        v26 |= 0x84u;
        v13 = v25;
        if (!v25)
        {
          operator new();
        }

        v14 = *a2;
        if (a2[1] != *a2)
        {
          v15 = 0;
          v16 = 0;
          do
          {
            v17 = v13[5];
            v18 = v13[4];
            if (v18 >= v17)
            {
              if (v17 == v13[6])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v13 + 2), v17 + 1);
                v17 = v13[5];
              }

              v13[5] = v17 + 1;
              sub_1002820D4();
            }

            v19 = *(v13 + 1);
            v13[4] = v18 + 1;
            sub_1002824F4(a1, v14 + v15, *(v19 + 8 * v18), v16++ == 0, 0.0174532925);
            v14 = *a2;
            v15 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v16);
        }

        *(a1 + 651) = 1;
        goto LABEL_34;
      }
    }

    else
    {
      if (v4 != 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v20 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "#gpsd,GPSSENSOR,unsupported Type", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1017700B0(buf);
          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "virtual void CLGnssDaemonDevice::injectRawSensorSamples(const GNSS::RawSensorSampleVector &)", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        goto LABEL_40;
      }

      if (sub_100132484(0xEu))
      {
        v23 = 14;
        v26 |= 0x44u;
        v5 = v24;
        if (!v24)
        {
          operator new();
        }

        v6 = *a2;
        if (a2[1] != *a2)
        {
          v7 = 0;
          v8 = 0;
          do
          {
            v9 = v5[5];
            v10 = v5[4];
            if (v10 >= v9)
            {
              if (v9 == v5[6])
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 2), v9 + 1);
                v9 = v5[5];
              }

              v5[5] = v9 + 1;
              sub_1002820D4();
            }

            v11 = *(v5 + 1);
            v5[4] = v10 + 1;
            sub_1002824F4(a1, v6 + v7, *(v11 + 8 * v10), v8++ == 0, -9.80665);
            v6 = *a2;
            v7 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v8);
        }

        *(a1 + 650) = 1;
LABEL_34:
        sub_10013256C(a1, v22);
LABEL_40:
        sub_100133DCC(v22);
        return;
      }
    }

    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "#gpsd,GPSSENSOR,No Sensor Samples", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101777338();
  }
}

void sub_100282080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100282138(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = result;
  return result;
}

uint64_t sub_1002821AC(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024B8DA8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_1002821D8(uint64_t a1, double *a2, unsigned int a3)
{
  LODWORD(v3) = a3;
  if (a3 - 101 > 0xFFFFFF9B)
  {
    if (sub_1002827C8(a2, a3, (a1 + 1176)))
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a2;
        LODWORD(__p) = 134349056;
        *(&__p + 4) = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,CLAccelerometer has sample before sleep,sampleTime,%{public}.6lf", &__p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194591C();
      }
    }

    else if (*(a1 + 1104))
    {
      __p = 0uLL;
      v3 = v3;
      v22 = 0;
      sub_100281B44(&__p, v3);
      v9 = a2 + 2;
      v10 = *(&__p + 1);
      do
      {
        v11 = *(v9 - 2);
        v13 = *(v9 - 2);
        v12 = *(v9 - 1);
        v14 = *v9;
        if (v10 >= v22)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v22 - __p) >> 3) > v16)
          {
            v16 = 0x5555555555555556 * ((v22 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3) >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            sub_100280FDC(&__p, v17);
          }

          v18 = 8 * ((v10 - __p) >> 3);
          *v18 = v11;
          *(v18 + 8) = 1;
          *(v18 + 12) = v13;
          *(v18 + 16) = v12;
          *(v18 + 20) = v14;
          v10 = 24 * v15 + 24;
          v19 = 24 * v15 - (*(&__p + 1) - __p);
          memcpy((v18 - (*(&__p + 1) - __p)), __p, *(&__p + 1) - __p);
          v20 = __p;
          *&__p = v19;
          *(&__p + 1) = v10;
          v22 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = v11;
          *(v10 + 8) = 1;
          *(v10 + 12) = v13;
          *(v10 + 16) = v12;
          *(v10 + 20) = v14;
          v10 += 24;
        }

        *(&__p + 1) = v10;
        v9 += 6;
        --v3;
      }

      while (v3);
      sub_10027EA08(*(a1 + 1104), &__p);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      LODWORD(__p) = 67240192;
      DWORD1(__p) = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "numsamples,%{public}u", &__p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101945A10();
    }
  }
}

void sub_1002824C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float32_t sub_1002824F4(uint64_t a1, uint64_t a2, float32x2_t *a3, char a4, double a5)
{
  v14 = 0;
  sub_100131D4C(a1, &v14, a4, *a2);
  if (v7)
  {
    v8 = v14;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#gpsd,Could not get cont time for inertial sensor sample", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101777424();
    }

    v8 = 0;
  }

  v10 = a3[4].i32[0];
  a3[1] = v8;
  a3[2] = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(a2 + 12)), a5));
  result = *(a2 + 20) * a5;
  a3[4].i32[0] = v10 | 0xF;
  a3[3].f32[0] = result;
  return result;
}

void sub_1002825FC(double *a1, unsigned int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 760) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101941E94();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLGnssController::setAccelData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101941EA8();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssController::setAccelData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_1002821D8(a3, a1, a2);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1002827C8(double *a1, unsigned int a2, uint64_t *a3)
{
  v5 = *a3;
  if (!*a3)
  {
    operator new();
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  if (!sub_10013176C(v5, &v11))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,failed to get last wake up time", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101945B10();
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (*a1 >= *(&v12 + 1))
  {
    a1 += 3;
    if (!--v6)
    {
      return 0;
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a1;
    *buf = 134349312;
    v15 = v10;
    v16 = 2050;
    v17 = *(&v12 + 1);
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,Sensor sample is before sleep,sampleTime,%{public}.6lf,wakeTime,%{public}.6lf", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101945BEC();
  }

  return 1;
}

uint64_t sub_1002829C8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_100282138(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_100282A48(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

void sub_100282AAC(uint64_t *a1)
{
  sub_100282AE4(a1);

  operator delete();
}

void sub_100282AE4(uint64_t *a1)
{
  *a1 = off_1024B8DA8;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100282B3C(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16))())
  {
    (*(a1 + 40))(*(a1 + 48), *(a1 + 64), *(a1 + 56));
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete[]();
  }

  return result;
}

uint64_t sub_100282BB4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_100282BFC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246D8F0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100282C50(uint64_t result)
{
  *result = off_10246D8F0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_100282C78(double *a1, unsigned int a2, uint64_t *a3)
{
  v5 = *a3;
  if (!*a3)
  {
    operator new();
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  if (!sub_10013176C(v5, &v11))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,failed to get last wake up time", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101945EE8();
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  while (*a1 >= *(&v12 + 1))
  {
    a1 += 3;
    if (!--v6)
    {
      return 0;
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a1;
    *buf = 134349312;
    v15 = v10;
    v16 = 2050;
    v17 = *(&v12 + 1);
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,Sensor sample is before sleep,sampleTime,%{public}.6lf,wakeTime,%{public}.6lf", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101945FC4();
  }

  return 1;
}

void sub_100282E90(uint64_t a1, double *a2, unsigned int a3)
{
  LODWORD(v3) = a3;
  if (a3 - 101 > 0xFFFFFF9B)
  {
    if (sub_100282C78(a2, a3, (a1 + 1176)))
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a2;
        LODWORD(__p) = 134349056;
        *(&__p + 4) = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#Warning,CLGyro has sample before sleep,sampleTime,%{public}.6lf", &__p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101945CF4();
      }
    }

    else if (*(a1 + 1104))
    {
      __p = 0uLL;
      v3 = v3;
      v22 = 0;
      sub_100281B44(&__p, v3);
      v9 = a2 + 2;
      v10 = *(&__p + 1);
      do
      {
        v11 = *(v9 - 2);
        v13 = *(v9 - 2);
        v12 = *(v9 - 1);
        v14 = *v9;
        if (v10 >= v22)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __p) >> 3);
          v16 = v15 + 1;
          if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v22 - __p) >> 3) > v16)
          {
            v16 = 0x5555555555555556 * ((v22 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v22 - __p) >> 3) >= 0x555555555555555)
          {
            v17 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            sub_100280FDC(&__p, v17);
          }

          v18 = 8 * ((v10 - __p) >> 3);
          *v18 = v11;
          *(v18 + 8) = 2;
          *(v18 + 12) = v13;
          *(v18 + 16) = v12;
          *(v18 + 20) = v14;
          v10 = 24 * v15 + 24;
          v19 = 24 * v15 - (*(&__p + 1) - __p);
          memcpy((v18 - (*(&__p + 1) - __p)), __p, *(&__p + 1) - __p);
          v20 = __p;
          *&__p = v19;
          *(&__p + 1) = v10;
          v22 = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v10 = v11;
          *(v10 + 8) = 2;
          *(v10 + 12) = v13;
          *(v10 + 16) = v12;
          *(v10 + 20) = v14;
          v10 += 24;
        }

        *(&__p + 1) = v10;
        v9 += 6;
        --v3;
      }

      while (v3);
      sub_10027EA08(*(a1 + 1104), &__p);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      LODWORD(__p) = 67240192;
      DWORD1(__p) = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "numsamples,%{public}u", &__p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101945DE8();
    }
  }
}

void sub_100283180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002831AC(uint64_t a1, uint64_t **a2)
{
  v2 = (a1 + 56);
  v3 = *(a1 + 56);
  if (v3 <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101754030();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v15 = *v2;
      *buf = 134349056;
      v27 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "GPSSENSOR,invalidInterval,%{public}.3lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1017541B8(v2);
    }
  }

  else if (*a1 == 1)
  {
    v6 = *a2;
    v7 = -1431655765 * ((a2[1] - *a2) >> 3);
    if (v7 >= 2)
    {
      v8 = *(a1 + 32);
      if (v8 <= 0.0 || (v9 = *v6 - v8, v24 = *(v6 + 3) - *v6, v25 = v9, v9 >= v3 * 2.1))
      {
        v13 = 0;
        v12 = 0;
        v11 = 0;
        v10 = 0;
      }

      else
      {
        v10 = sub_100280F0C(&v25, &v24, (a1 + 44), v6 + 3, v6 + 9);
        v11 = sub_100280F0C(&v25, &v24, (a1 + 48), *a2 + 4, *a2 + 10);
        v12 = sub_100280F0C(&v25, &v24, (a1 + 52), *a2 + 5, *a2 + 11);
        v13 = v10 | v11 | v12;
      }

      v16 = v7 - 1;
      if (v16 >= 2)
      {
        v17 = v16 - 1;
        v18 = 36;
        do
        {
          v19 = *a2 + v18;
          v20 = *(v19 - 12);
          v21 = v20 - *(v19 - 36);
          v24 = *(v19 + 12) - v20;
          v25 = v21;
          if (v10)
          {
            v10 = 0;
            if ((v11 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v10 = sub_100280F0C(&v25, &v24, v19 - 6, v19, v19 + 6);
            if ((v11 & 1) == 0)
            {
LABEL_19:
              v11 = sub_100280F0C(&v25, &v24, (*a2 + v18 - 20), (*a2 + v18 + 4), (*a2 + v18 + 28));
              if (v12)
              {
                goto LABEL_23;
              }

              goto LABEL_20;
            }
          }

          v11 = 0;
          if (v12)
          {
LABEL_23:
            v12 = 0;
            goto LABEL_24;
          }

LABEL_20:
          v12 = sub_100280F0C(&v25, &v24, (*a2 + v18 - 16), (*a2 + v18 + 8), (*a2 + v18 + 32));
LABEL_24:
          v13 |= v11 | v10 | v12;
          v18 += 24;
          --v17;
        }

        while (v17);
      }

      if ((v13 & 1) != 0 && *(a1 + 65) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101754030();
        }

        v22 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v23 = **a2;
          *buf = 134349056;
          v27 = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#Warning,GPSSENSOR,Gyro,SpuriousSampleDetected,%{public}.3f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1017542B4(a2);
        }
      }
    }
  }
}

uint64_t sub_1002834F0(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024B8E20;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_10028351C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_100282138(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_10028359C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

void sub_100283600(uint64_t *a1)
{
  sub_100283638(a1);

  operator delete();
}

void sub_100283638(uint64_t *a1)
{
  *a1 = off_1024B8E20;
  sub_100027438(a1 + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

uint64_t sub_100283690(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, v4, v7, a3);
}

void sub_1002844A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100284604(uint64_t a1, double a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101A8F920();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_10000B1F8();
    v12 = 0;
    v6 = sub_10001A6B0(v5, &v12);
    v7 = *(a1 + 3128);
    v8 = sub_10000B1F8();
    v9 = sub_100125220(v8);
    v12 = 134218752;
    v13 = v6;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v7;
    v18 = 2050;
    v19 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%.1lf,DeadReckoning,%.2lf,fLastAccessoryPropagationTime,%.2lf,propagation_us,%{public}.3f", &v12, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A8FA94(a1, a2);
  }

  v10 = *(a1 + 3128);
  return v10 < 0.0 || vabdd_f64(a2, v10) > 3.0;
}

uint64_t sub_100284758(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_10000B1F8();
    v15 = 0;
    v6 = sub_10001A6B0(v5, &v15);
    v7 = sub_1001FD6E4(*(a2 + 96));
    v8 = *(a2 + 504);
    v9 = *(a1 + 4096);
    v10 = *(a1 + 2536);
    v11 = sub_10000B1F8();
    v12 = sub_100125220(v11);
    v15 = 134350338;
    v16 = v6;
    v17 = 2082;
    v18 = v7;
    v19 = 2050;
    v20 = v8;
    v21 = 2050;
    v22 = v9;
    v23 = 2050;
    v24 = v10;
    v25 = 2050;
    v26 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%{public}.1lf,DeadReckoning,%{public}s,%{public}.2lf,Propagating solution,lastGPSTime,%{public}.2lf,lastAccessoryTime,%{public}.2lf,propagation_us,%{public}.3f", &v15, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AACB2C(a2, a1);
  }

  v13 = sub_100284948(a1 + 2032, *(a2 + 96), a2);
  result = (*(**(a1 + 280) + 240))(*(a1 + 280), a2, v13);
  if (result)
  {
    *(a2 + 516) = 1;
    *(a2 + 696) = 1;
    v15 = 27;
    return (*(*a1 + 152))(a1, &v15, a2, 0, 0xFFFFFFFFLL, 0);
  }

  return result;
}

double sub_100284948(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 1560;
  if (a2 == 3)
  {
    v3 = 0;
  }

  v4 = a1 + v3;
  *(a3 + 84) = *(v4 + 84);
  *(a3 + 128) = *(v4 + 128);
  result = *(v4 + 88);
  *(a3 + 88) = result;
  return result;
}

void sub_10028497C(_BYTE *a1, uint64_t a2)
{
  if (a1[674] == 1 && ((a1[675] & 1) != 0 || a1[676] == 1) && sub_100284604((a1 + 2032), *(a2 + 504)))
  {
    sub_100022008(v4, a2);
    v5 = 1;
    sub_100284758(a1, v4);

    if (v10)
    {
      sub_100008080(v10);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v7)
    {
      sub_100008080(v7);
    }

    if (v6)
    {
      sub_100008080(v6);
    }
  }
}

void sub_100284A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100284A54(uint64_t a1)
{
  result = *(a1 + 3912);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t sub_100284A84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 232);
  if (!v3)
  {
    return 0;
  }

  if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
  {
    isStatic = CLMotionActivity::isStatic((a1 + 40));
    v3 = *(a1 + 232);
    if (isStatic)
    {
      (*(*v3 + 24))(v3);
      return 0;
    }
  }

  v6 = *(*v3 + 16);

  return v6();
}

uint64_t sub_100284B3C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 420) & 0xFFFFFFFE) == 2)
  {
    return 0;
  }

  result = sub_100284A84(a1, a2);
  if (result)
  {
    sub_1002BD8D0(a1, a2, 0);
    return 1;
  }

  return result;
}

uint64_t *sub_100284B98(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t sub_100284E4C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v7 != 1)
        {
          goto LABEL_14;
        }

        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v20) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 8) = v20;
        v8 = *(a1 + 28) | 1;
        *(a1 + 28) = v8;
        v9 = *(this + 1);
        if (v9 < *(this + 2) && *v9 == 18)
        {
          *(this + 1) = v9 + 1;
          goto LABEL_18;
        }
      }

      if (v7 == 2)
      {
        break;
      }

LABEL_14:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    v8 = *(a1 + 28);
LABEL_18:
    *(a1 + 28) = v8 | 2;
    v10 = *(a1 + 16);
    if (!v10)
    {
      operator new();
    }

    v21 = 0;
    v11 = *(this + 1);
    if (v11 >= *(this + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v11;
      *(this + 1) = v11 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v21);
    if (!sub_10028585C(v10, this, v15) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
    v16 = *(this + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(this + 14) = v18;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_100285084(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v19[0] = 0;
        v11 = *(this + 1);
        if (v11 >= *(this + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v12 = v19[0];
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 <= 0xC)
        {
          *(a1 + 44) |= 1u;
          *(a1 + 24) = v12;
        }

        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 17)
        {
          *(this + 1) = v14 + 1;
LABEL_34:
          *v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 8) = *v19;
          *(a1 + 44) |= 2u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 25)
          {
            *(this + 1) = v15 + 1;
LABEL_38:
            *v19 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = *v19;
            *(a1 + 44) |= 4u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 33)
            {
              *(this + 1) = v16 + 1;
              goto LABEL_42;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_21;
      }

LABEL_42:
      *v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v19) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 32) = *v19;
      *(a1 + 44) |= 8u;
      v17 = *(this + 1);
      v9 = *(this + 2);
      if (v17 < v9 && *v17 == 40)
      {
        v10 = v17 + 1;
        *(this + 1) = v10;
LABEL_46:
        v19[0] = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v19);
          if (!result)
          {
            return result;
          }

          v18 = v19[0];
        }

        else
        {
          *(this + 1) = v10 + 1;
        }

        if (v18 <= 2)
        {
          *(a1 + 44) |= 0x10u;
          *(a1 + 28) = v18;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_46;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100285344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 16);
    *a2 = 0;
    v4 = (v3 - 1);
    if (v4 <= 0x3F)
    {
      if (((1 << (v3 - 1)) & 0x808B) != 0)
      {
LABEL_4:
        *a2 = v3;
        goto LABEL_5;
      }

      if (v4 == 63)
      {
        v3 = 32;
        goto LABEL_4;
      }
    }
  }

LABEL_5:
  if ((v2 & 2) == 0)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637BC0 + 8);
  }

  v6 = *(v5 + 44);
  if (v6)
  {
    v7 = *(v5 + 16);
  }

  else if ((v6 & 0x10) != 0)
  {
    v7 = *(v5 + 28);
  }

  else
  {
    if ((v6 & 2) != 0)
    {
      v9 = *(v5 + 8);
      if (!v9)
      {
        v9 = *(qword_102637BB8 + 8);
      }

      v10 = *(v9 + 24);
      if (v10)
      {
        v11 = *(v9 + 16);
        if (v11 != v11)
        {
          return 0;
        }

        *(a2 + 6) = v11;
        v10 = *(v9 + 24);
      }

      if ((v10 & 2) != 0)
      {
        v12 = *(v9 + 8);
        if (!v12)
        {
          v12 = *(qword_102637BB0 + 8);
        }

        v13 = *(v12 + 8);
        if (v13 > 0xFF)
        {
          return 0;
        }

        *(a2 + 4) = v13;
        v14 = *(v12 + 12);
        *(a2 + 5) = 0;
        v15 = v14 - 2;
        if (v15 <= 2)
        {
          *(a2 + 5) = v15 + 1;
        }
      }

      return 1;
    }

    if ((v6 & 4) != 0)
    {
      v7 = *(v5 + 20);
    }

    else if ((v6 & 8) != 0)
    {
      v7 = *(v5 + 24);
    }

    else
    {
      if ((v6 & 0x40) == 0)
      {
        return 0;
      }

      v7 = *(v5 + 36);
    }
  }

  if (v7 > 0xFF)
  {
    return 0;
  }

  *(a2 + 4) = v7;
  return 1;
}

uint64_t sub_100285480(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1002854C8(a1, a2);
  }

  else
  {
    sub_100285AB8(*(a1 + 8), a2);
    result = v3 + 144;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002854C8(uint64_t a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_10028C64C();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100285A5C(a1, v6);
  }

  v13 = 0;
  v14 = 144 * v2;
  sub_100285AB8(144 * v2, a2);
  v15 = 144 * v2 + 144;
  v7 = *(a1 + 8);
  v8 = 144 * v2 + *a1 - v7;
  sub_100285B38(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100285C24(&v13);
  return v12;
}

void sub_1002855F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100285C24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028560C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          v12 = *(a1 + 24);
          goto LABEL_22;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      v12 = *(a1 + 24) | 1;
      *(a1 + 24) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_22:
    *(a1 + 24) = v12 | 2;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v23 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
    if (!sub_100280940(v14, this, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10028585C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v8 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 24) = v12;
        *(a1 + 36) |= 4u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 1)
      {
        goto LABEL_20;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v12;
      *(a1 + 36) |= 1u;
      v9 = *(this + 1);
      if (v9 < *(this + 2) && *v9 == 17)
      {
        *(this + 1) = v9 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v12) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v12;
        *(a1 + 36) |= 2u;
        v10 = *(this + 1);
        if (v10 < *(this + 2) && *v10 == 25)
        {
          *(this + 1) = v10 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_100285A14(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100285A5C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_1001D0818();
}

__n128 sub_100285AB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 6);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a1 + 48) = v3;
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  result = a2[7];
  *(a1 + 112) = result;
  *(a1 + 128) = *(a2 + 16);
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a1 + 136) = *(a2 + 136);
  return result;
}

uint64_t sub_100285B38(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    i = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_100285AB8(a4, v6);
      v6 += 9;
      a4 = v14 + 144;
      v14 += 144;
    }

    while (v6 != a3);
    for (i = 1; v5 != a3; v5 += 9)
    {
      v7 = *(v5 + 14);
      if (v7)
      {
        *(v5 + 15) = v7;
        operator delete(v7);
      }

      v8 = *(v5 + 6);
      *(v5 + 6) = 0;
      if (v8)
      {
        operator delete();
      }

      v9 = *(v5 + 3);
      if (v9)
      {
        *(v5 + 4) = v9;
        operator delete(v9);
      }
    }
  }

  return sub_100285CC0(v11);
}

uint64_t sub_100285C24(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }

    v5 = *(i - 96);
    *(i - 96) = 0;
    if (v5)
    {
      operator delete();
    }

    v6 = *(i - 120);
    if (v6)
    {
      *(i - 112) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100285CC0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1016B20B0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

unsigned int *sub_100285D0C(unsigned int *result, _DWORD *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v3 = *result;
  if (v3 <= 0x20)
  {
    if (((1 << v3) & 0x10116) != 0)
    {
LABEL_3:
      *a2 = v3;
      *a3 = *(result + 4);
      return result;
    }

    if (v3 == 32)
    {
      LODWORD(v3) = 256;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t sub_100285D58(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 == 2)
        {
          v12 = *(a1 + 24);
          goto LABEL_22;
        }

LABEL_13:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v23 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23);
        if (!result)
        {
          return result;
        }

        v10 = v23;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 16) = v10;
      v12 = *(a1 + 24) | 1;
      *(a1 + 24) = v12;
    }

    while (v11 >= v8 || *v11 != 18);
    *(this + 1) = v11 + 1;
LABEL_22:
    *(a1 + 24) = v12 | 2;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v24 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v24);
    if (!sub_100285FA4(v14, this, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_100285FA4(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[5] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        v14 = 0;
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
          if (!result)
          {
            return result;
          }

          v12 = v14;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v12 <= 4)
        {
          a1[5] |= 2u;
          a1[3] = v12;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_100286138(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A7E38;
  if (qword_102637BB0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1002861C4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A7DC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100286218(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100286138(a1);

  operator delete();
}

NSString *sub_100286250(void *a1)
{
  if ([a1 length] != 6)
  {
    return 0;
  }

  v2 = [a1 bytes];
  return [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", *v2, v2[1], v2[2], v2[3], v2[4], v2[5]];
}

void sub_1002862E4(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101A7AFEC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "address")];
    v8 = a3;
    v9 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "advertisementData")];
    v10 = [a2 scanDate];
    v11 = [a2 rssi];
    v12 = [a2 status];
    v13 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "reserved")];
    sub_1000183C0(a1);
    *buf = 68290819;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2081;
    v31 = v7;
    v32 = 2081;
    v33 = v9;
    a3 = v8;
    v34 = 2113;
    v35 = v10;
    v36 = 2049;
    v37 = v11;
    v38 = 1025;
    v39 = v12;
    v40 = 2081;
    v41 = v13;
    v42 = 2050;
    v43 = sub_1000183C0(a1);
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onAvengerAdvertisementDetected convertToSPAdvertisement, address:%{private, location:escape_only}s, data:%{private, location:escape_only}s, date:%{private, location:escape_only}@, rssi:%{private}ld, status:%{private}u, reserved:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x54u);
  }

  if (([a2 isApple] & 1) == 0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A7AFC4();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000183C0(a1);
    v17 = sub_1000183C0(a1);
    *buf = 68289282;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2050;
    v31 = v17;
    v18 = "{msg%{public}.0s:onAvengerAdvertisementDetected: dropping non-Apple advertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_36:
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x1Cu);
    return;
  }

  v14 = sub_100286EE0(a2);
  if (!v14)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A7AFC4();
    }

    v16 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_1000183C0(a1);
    v19 = sub_1000183C0(a1);
    *buf = 68289282;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2050;
    v31 = v19;
    v18 = "{msg%{public}.0s:onAvengerAdvertisementDetected: could not convert advertisement into SPAdvertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_36;
  }

  v15 = v14;
  if ([objc_msgSend(v14 "advertisementData")] || objc_msgSend(a3, "type") == 1)
  {
    ++*(a1 + 456);
    if ([a2 isPosh])
    {
      ++*(a1 + 464);
    }

    else
    {
      ++*(a1 + 460);
    }

    if (sub_10028930C(a1, v15))
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A7AFC4();
      }

      v20 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "address")];
        *buf = 68289283;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2081;
        v31 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onAvengerAdvertisementDetected, skipping repeated advertisement,, address:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      ++*(a1 + 480);
      if ([a2 isPosh])
      {
        ++*(a1 + 488);
      }

      else
      {
        ++*(a1 + 484);
      }
    }

    else
    {
      ++*(a1 + 468);
      if ([a2 isPosh])
      {
        ++*(a1 + 476);
      }

      else
      {
        ++*(a1 + 472);
      }

      v22 = [[CLRecentLocationsFetchOptions alloc] initWithDate:objc_msgSend(v15 allowDelayedResponse:{"scanDate"), 1}];
      v23 = *(a1 + 424);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10028A5BC;
      v25[3] = &unk_1024ADF30;
      v25[4] = v15;
      v25[5] = a1;
      [v23 fetchRecentLocationsWithOptions:v22 withReply:v25];
    }

    return;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A7AFC4();
  }

  v16 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000183C0(a1);
    v24 = sub_1000183C0(a1);
    *buf = 68289282;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2050;
    v31 = v24;
    v18 = "{msg%{public}.0s:onAvengerAdvertisementDetected: advertisement is near-owner from other people and do not process it, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_36;
  }
}

void sub_100286844(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v5 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2050;
    v34 = 11;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onAvengerAdvertisementDetected: got avenger advertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "address")];
    v8 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "advertisementData")];
    v9 = [a2 scanDate];
    v10 = [a2 rssi];
    v11 = [a2 status];
    v12 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "reserved")];
    *buf = 68290819;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2081;
    v34 = v7;
    v35 = 2081;
    v36 = v8;
    v37 = 2113;
    v38 = v9;
    v39 = 2049;
    v40 = v10;
    v41 = 1025;
    v42 = v11;
    v43 = 2081;
    v44 = v12;
    v45 = 2050;
    v46 = 11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:convertToSPAdvertisement, address:%{private, location:escape_only}s, data:%{private, location:escape_only}s, date:%{private, location:escape_only}@, rssi:%{private}lu, status:%{private}u, reserved:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x54u);
  }

  if (([a2 isApple] & 1) == 0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v22 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2050;
    v34 = 11;
    v23 = "{msg%{public}.0s:onAvengerAdvertisementDetected: dropping non-Apple advertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_31:
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x1Cu);
    return;
  }

  v13 = [SPAdvertisement instancesRespondToSelector:NSSelectorFromString(@"initWithAddress:advertisementData:status:reserved:rssi:scanDate:isPosh:")];
  v14 = [SPAdvertisement alloc];
  v15 = [a2 address];
  v16 = [a2 advertisementData];
  v17 = [a2 status];
  v18 = [a2 reserved];
  v19 = [a2 rssi];
  v20 = [a2 scanDate];
  if (v13)
  {
    LOBYTE(v27) = [a2 isPosh];
    v21 = [v14 initWithAddress:v15 advertisementData:v16 status:v17 reserved:v18 rssi:v19 scanDate:v20 isPosh:v27];
  }

  else
  {
    v21 = [v14 initWithAddress:v15 advertisementData:v16 status:v17 reserved:v18 rssi:v19 scanDate:v20];
  }

  v24 = v21;
  if (!v24)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v22 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2050;
    v34 = 11;
    v23 = "{msg%{public}.0s:onAvengerAdvertisementDetected: could not convert advertisement into SPAdvertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_31;
  }

  v25 = v24;
  v26 = [[CLSubHarvesterAvengerAdvertisement alloc] initWithAdvertisement:v24 maxActivityBasedSpeedSinceAdvertisement:sub_100287088(a1, (a1 + 1504))];
  -[CLSubHarvesterAvengerAdvertisement setFromOwnerDevice:](v26, "setFromOwnerDevice:", [a3 type] == 1);
  if ([(CLSubHarvesterAvengerAdvertisement *)v26 type]|| [(CLSubHarvesterAvengerAdvertisement *)v26 fromOwnerDevice])
  {
    ++*(a1 + 1744);
    if ([a2 isPosh])
    {
      ++*(a1 + 1752);
    }

    else
    {
      ++*(a1 + 1748);
    }

    [*(a1 + 1992) receiveAdvertisement:v25];
    [*(a1 + 1472) addObject:v26];
    (*(*a1 + 176))(a1);
    sub_10028A848(a1);
    return;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A28FA8();
  }

  v22 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 2050;
    v34 = 11;
    v23 = "{msg%{public}.0s:onAvengerAdvertisementDetected: advertisement is near-owner from other people and do not process it, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_31;
  }
}

id sub_100286DD0(NSData *self, SEL a2)
{
  v3 = +[NSMutableString string];
  v4 = [(NSData *)self length];
  v5 = [(NSData *)self bytes];
  if (v4 >= 1)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v3 appendFormat:@"%02X", v7];
      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100286EE0(void *a1)
{
  v2 = [SPAdvertisement instancesRespondToSelector:NSSelectorFromString(@"initWithAddress:advertisementData:status:reserved:rssi:scanDate:isPosh:")];
  v3 = [SPAdvertisement alloc];
  v4 = [a1 address];
  v5 = [a1 advertisementData];
  v6 = [a1 status];
  v7 = [a1 reserved];
  v8 = [a1 rssi];
  v9 = [a1 scanDate];
  if (v2)
  {
    LOBYTE(v12) = [a1 isPosh];
    v10 = [v3 initWithAddress:v4 advertisementData:v5 status:v6 reserved:v7 rssi:v8 scanDate:v9 isPosh:v12];
  }

  else
  {
    v10 = [v3 initWithAddress:v4 advertisementData:v5 status:v6 reserved:v7 rssi:v8 scanDate:v9];
  }

  return v10;
}

double sub_100287088(uint64_t a1, unsigned int *a2)
{
  sub_10001A3E8();
  v4 = 0.0;
  if ((sub_1000F42C0() & 1) == 0)
  {
    if (*(a2 + 136) != 1)
    {
LABEL_6:
      v6 = 528;
      return *(a1 + v6);
    }

    v5 = *a2;
    if (v5 > 99)
    {
      if (v5 != 19150 && v5 != 100)
      {
LABEL_17:
        v6 = 552;
        return *(a1 + v6);
      }
    }

    else
    {
      if (v5 > 0x38)
      {
LABEL_16:
        if ((v5 - 1) < 2)
        {
          return v4;
        }

        goto LABEL_17;
      }

      if (((1 << v5) & 0x110000000000C20) != 0)
      {
        goto LABEL_6;
      }

      if (v5 != 6)
      {
        if (v5 == 8)
        {
          v6 = 544;
          return *(a1 + v6);
        }

        goto LABEL_16;
      }
    }

    v6 = 536;
    return *(a1 + v6);
  }

  return v4;
}

void sub_100287154(uint64_t a1, double a2)
{
  v3 = *(a1 + 8);
  if (v3 <= 0.0 || v3 <= a2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = (a1 + 256);
      if (*(a1 + 279) < 0)
      {
        v7 = *v7;
      }

      v8 = *(a1 + 8);
      *buf = 136446722;
      v11 = v7;
      v12 = 2050;
      v13 = a2;
      v14 = 2050;
      v15 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,set IO StaticPeriodStart at mct,%{public}.3f,intgStartTimeMCT,%{public}.3f", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::setDeviceStaticPeriodStart(const CFTimeInterval)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *(a1 + 112) = a2;
  }
}

void sub_100287350(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10028735C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 110))
  {
    v3 = *(a1 + 24);
    if (v3 <= 0.0 || v3 <= *(a2 + 8))
    {
      ++*(a1 + 112);
    }

    v5 = *(a1 + 304);
    if (*(a1 + 312) != v5)
    {
      v6 = *(a1 + 328);
      v7 = (v5 + 8 * (v6 >> 8));
      v8 = (*v7 + 16 * v6);
      v9 = *(v5 + (((*(a1 + 336) + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v6);
      while (v8 != v9)
      {
        v11 = *v8;
        v10 = v8[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11)
        {
          v12 = *(v11 + 8);
          if (v12 <= 0.0 || v12 <= *(a2 + 8))
          {
            ++*(v11 + 96);
          }
        }

        if (v10)
        {
          sub_100008080(v10);
        }

        v8 += 2;
        if ((v8 - *v7) == 4096)
        {
          v14 = v7[1];
          ++v7;
          v8 = v14;
        }
      }
    }
  }
}

void sub_100287454(uint64_t *a1)
{
  sub_100287644(a1);

  operator delete();
}

void *sub_10028748C(void *result)
{
  if (qword_102637CA8 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[16];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10028752C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100287564(a1);

  operator delete();
}

void sub_100287564(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A7F28;
  if (qword_102637BC0 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1002875F0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8B58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100287644(uint64_t *a1)
{
  *a1 = off_1024A8CC0;
  v2 = a1 + 13;
  sub_10028748C(a1);
  sub_100027438(v2);
  sub_100027438(a1 + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_1002876B4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100287740(a1);

  operator delete();
}

void sub_1002876EC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8AE0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100287740(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A8BD0;
  if (qword_102637C98 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_1002877CC(void *a1, uint64_t *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100287AC8(a1, *a2, (a2 + 1));
  return a1;
}

void sub_100287AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    sub_1008BDD68();
  }
}

void sub_100287BF0()
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v0 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    Current = CFAbsoluteTimeGetCurrent();
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, clienttimer, fired time %{public}.1f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCBD4();
  }

  v1 = 27;
  sub_1000FFE90();
}

void sub_1002883A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_1005F3518(&a16);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_1007BE994(v41);
  _Unwind_Resume(a1);
}

void *sub_100288420(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_1002884A4(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_1002884A4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100187DB8(result, a4);
  }

  return result;
}

void sub_100288534(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100288550(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1002885AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_1001005C4(v4, v6);
      v6 += 88;
      v4 = v11 + 88;
      v11 += 88;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10014E4B8(v8);
  return v4;
}

uint64_t sub_100288650(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002886D8(result, a4);
  }

  return result;
}

void sub_1002886B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000B96B4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002886D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_10014E350(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_100288728(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1002887D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100288820(a1, a2);
  }

  sub_10028C64C();
}

void sub_100288820(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_100288878(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_100288650(v4, *v6, v6[1], 0x2E8BA2E8BA2E8BA3 * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_100288940(v8);
  return v4;
}

uint64_t sub_100288940(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007BE788(a1);
  }

  return a1;
}

void sub_100288978(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1000BB5F0(a1);
    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
      {
        v10 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1002886D8(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1];
  if (0x2E8BA2E8BA2E8BA3 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 8), (v6 + 8));
        v17 = *(v6 + 48);
        v16 = *(v6 + 64);
        v18 = *(v6 + 32);
        *(v8 + 80) = *(v6 + 80);
        *(v8 + 48) = v17;
        *(v8 + 64) = v16;
        *(v8 + 32) = v18;
        v8 += 88;
        v6 += 88;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 57) < 0)
      {
        operator delete(*(v11 - 80));
      }

      v11 -= 88;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 8), (v6 + 8));
        v14 = *(v6 + 48);
        v13 = *(v6 + 64);
        v15 = *(v6 + 32);
        *(v8 + 80) = *(v6 + 80);
        *(v8 + 48) = v14;
        *(v8 + 64) = v13;
        *(v8 + 32) = v15;
        v6 += 88;
        v8 += 88;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_1002885AC(a1, v12, a3, v11);
  }
}

id sub_100288B60(void *a1, void *a2)
{
  v4 = [SPEstimatedLocation alloc];
  v5 = [a1 scanDate];
  [a2 coordinate];
  v24 = v6;
  [a2 coordinate];
  v8 = v7;
  [a2 horizontalAccuracy];
  v10 = v9;
  [a2 altitude];
  v12 = v11;
  [a2 verticalAccuracy];
  v14 = v13;
  [a2 speed];
  v16 = v15;
  [a2 speedAccuracy];
  v18 = v17;
  [a2 course];
  v20 = v19;
  [a2 courseAccuracy];
  v22 = [[SPBeaconPayload alloc] initWithAdvertisement:a1 location:{objc_msgSend(v4, "initWithTimestamp:latitude:longitude:horizontalAccuracy:altitude:verticalAccuracy:speed:speedAccuracy:course:courseAccuracy:floorLevel:", v5, objc_msgSend([NSNumber alloc], "initWithInteger:", objc_msgSend(objc_msgSend(a2, "floor"), "level")), v24, v8, v10, v12, v14, v16, v18, v20, v21)}];
  [v22 setObservationValue:1];
  [v22 setRefreshGeotag:0];
  return v22;
}

id sub_100288CE0(uint64_t a1, uint64_t a2)
{
  v3 = [NSArray arrayWithObjects:a2, 0];
  v4 = [*(a1 + 376) beaconPayloadCache];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10028BF98;
  v6[3] = &unk_1024AD220;
  v6[4] = v3;
  v6[5] = a1;
  return [v4 saveBeaconPayloads:v3 completion:v6];
}

uint64_t sub_100288D7C(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    [a3 horizontalAccuracy];
    if (v6 > 0.0)
    {
      [a3 horizontalAccuracy];
      if (v7 < 100.0)
      {
        ++*(a1 + 492);
      }

      [a3 horizontalAccuracy];
      if (v8 < 50.0)
      {
        ++*(a1 + 496);
      }

      [a3 horizontalAccuracy];
      if (v9 < 25.0)
      {
        ++*(a1 + 500);
      }
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  [objc_msgSend(a2 "scanDate")];
  v12 = Current - v11;
  if (v12 >= 5.0)
  {
    if (v12 >= 30.0)
    {
      if (v12 >= 120.0)
      {
        if (v12 >= 900.0)
        {
          ++*(a1 + 520);
        }

        else
        {
          ++*(a1 + 516);
        }
      }

      else
      {
        ++*(a1 + 512);
      }
    }

    else
    {
      ++*(a1 + 508);
    }
  }

  else
  {
    ++*(a1 + 504);
  }

  result = arc4random_uniform(0x14u);
  if (!result)
  {
    if (a2)
    {
      [objc_msgSend(a2 "advertisementData")];
    }

    if (*(a1 + 660) == 1 && *(a1 + 656) <= 2000)
    {
      CLMotionActivity::activityTypeToString();
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

BOOL sub_10028930C(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "address")];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v20) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  [objc_msgSend(a2 "scanDate")];
  v8 = v7;
  v9 = *(a1 + 432);
  v10 = (a1 + 440);
  if (v9 != a1 + 440)
  {
    do
    {
      if (v8 - *(v9 + 56) <= 1.95)
      {
        v12 = *(v9 + 8);
        if (v12)
        {
          do
          {
            v11 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v11 = *(v9 + 16);
            v13 = *v11 == v9;
            v9 = v11;
          }

          while (!v13);
        }
      }

      else
      {
        v11 = sub_1001D2ED0((a1 + 432), v9);
      }

      v9 = v11;
    }

    while (v11 != v10);
  }

  v14 = sub_10045EF04(a1 + 432, &__dst);
  if (v10 == v14)
  {
    if (SHIBYTE(v20) < 0)
    {
      sub_100007244(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      v17 = v20;
    }

    v18 = v8;
    sub_100288728(a1 + 432, __p);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }

  return v10 != v14;
}

void sub_1002894DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10028951C(uint64_t a1, int a2)
{
  result = *(a1 + 5984);
  if (result)
  {
    v3 = *result;
    if (a2)
    {
      return (*(v3 + 48))();
    }

    else
    {
      return (*(v3 + 56))();
    }
  }

  return result;
}

uint64_t sub_100289574(uint64_t a1)
{
  v2 = sub_1002895C8(a1);
  if (v2)
  {
    ++*(a1 + 20);
    Current = CFAbsoluteTimeGetCurrent();
    *(a1 + 80) = Current;
    sub_101157E40(a1, Current);
    sub_101157ED4(a1);
  }

  return v2;
}

uint64_t sub_1002895C8(uint64_t a1)
{
  if (*(a1 + 20) >= *(a1 + 16))
  {
    v1 = 0;
  }

  else if (*(a1 + 72) == 1)
  {
    v1 = *(a1 + 72) ^ 1 | (CFAbsoluteTimeGetCurrent() > *(a1 + 64));
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

id sub_100289634(uint64_t a1)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 1472) count];
    v4 = [*(a1 + 1480) count];
    v7[0] = 68289794;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2050;
    v11 = v3;
    v12 = 2050;
    v13 = v4;
    v14 = 2050;
    v15 = 11;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:derivedPruneHarvest, cacheSize:%{public}lu, beaconPayloadCacheSize:%{public}lu, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v7, 0x30u);
  }

  while ([*(a1 + 1472) count] > *(a1 + 400))
  {
    v5 = [objc_msgSend(*(a1 + 1472) objectAtIndexedSubscript:{0), "advertisement"}];
    if (sub_10028B1A8(v5, v5))
    {
      ++*(a1 + 1776);
    }

    else
    {
      ++*(a1 + 1772);
    }

    [*(a1 + 1472) removeObjectAtIndex:0];
    ++*(a1 + 1768);
  }

  while ([*(a1 + 1480) count] > *(a1 + 400))
  {
    [*(a1 + 1480) removeObjectAtIndex:0];
  }

  return [*(a1 + 1488) pruneCacheWithSize:?];
}

id sub_1002897D0(uint64_t a1, void *a2)
{
  v67 = +[NSDate now];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = a2;
  result = [a2 countByEnumeratingWithState:&v92 objects:v144 count:16];
  v69 = result;
  if (result)
  {
    v68 = *v93;
    do
    {
      v71 = 0;
      do
      {
        if (*v93 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v74 = *(*(&v92 + 1) + 8 * v71);
        v73 = [v74 advertisement];
        v72 = [objc_msgSend(v73 "address")];
        [v72 appendData:{objc_msgSend(v73, "advertisementData")}];
        if (qword_1025D47D0 != -1)
        {
          sub_101A28FA8();
        }

        v4 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          v5 = [objc_msgSend(objc_msgSend(v72 "cl_hexadecimalString")];
          *buf = 68289538;
          v97 = 0;
          v98 = 2082;
          v99 = "";
          v100 = 2082;
          v101 = v5;
          v102 = 2050;
          v103 = 11;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:prepareAdvertisementsForSPFinder, avengerPublicKey:%{public, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x26u);
        }

        if (*(a1 + 796) == 1)
        {
          v6 = *(a1 + 716);
          [objc_msgSend(v73 "scanDate")];
          v8 = v7;
          [v74 maxActivityBasedSpeedSinceAdvertisement];
          if (*(a1 + 1976) >= v9)
          {
            v9 = *(a1 + 1976);
          }

          v10 = fmax(*(a1 + 684), 0.0);
          if ((*(a1 + 1640) & 1) == 0 || (v11 = *(a1 + 1504), v11 <= 0x38) && ((1 << v11) & 0x110000000000CA8) != 0)
          {
            v10 = v10 + fmax(*(a1 + 692), 0.0);
          }

          if (v9 < v10)
          {
            v9 = v10;
          }

          v70 = sqrt((v6 - v8) * v9 * ((v6 - v8) * v9) + *(a1 + 660) * *(a1 + 660));
          sub_10028A4A4(a1, v9, v70, v74, 0, 1);
          if (![v74 fromOwnerDevice] || arc4random_uniform(0x14u))
          {
LABEL_25:
            if (qword_1025D47D0 != -1)
            {
              sub_101A28FA8();
            }
          }

          else
          {
            Current = CFAbsoluteTimeGetCurrent();
            sub_10028BD78(a1, 1, v70, Current - *(a1 + 716));
            if (qword_1025D47D0 != -1)
            {
              sub_101A28FA8();
            }

            v13 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289026;
              v97 = 0;
              v98 = 2082;
              v99 = "";
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:prepareAdvertisementsForSPFinder: location fetched for owned accessory advertisements, submitting metric}", buf, 0x12u);
              goto LABEL_25;
            }
          }

          v14 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            log = v14;
            v64 = [objc_msgSend(objc_msgSend(v72 "cl_hexadecimalString")];
            v63 = *(a1 + 716);
            v62 = [objc_msgSend(objc_msgSend(objc_msgSend(v74 "advertisement")];
            v61 = LocationLogEncryptionDataSize();
            v60 = LocationLogEncryptionEncryptData();
            v15 = LocationLogEncryptionDataSize();
            v16 = LocationLogEncryptionEncryptData();
            v18 = *(a1 + 660);
            v17 = *(a1 + 668);
            v20 = *(a1 + 676);
            v19 = *(a1 + 684);
            v22 = *(a1 + 692);
            v21 = *(a1 + 700);
            v23 = *(a1 + 708);
            v24 = *(a1 + 736);
            v57 = *(a1 + 768);
            v58 = *(a1 + 764);
            v59 = *(a1 + 1976);
            [v74 maxActivityBasedSpeedSinceAdvertisement];
            v26 = v25;
            v27 = [v74 fromOwnerDevice];
            *buf = 68294659;
            v97 = 0;
            v98 = 2082;
            v99 = "";
            v100 = 2082;
            v101 = v64;
            v102 = 2049;
            v103 = v63;
            v104 = 2081;
            v105 = v62;
            v106 = 1040;
            v107 = v61;
            v108 = 2098;
            v109 = v60;
            v110 = 1040;
            v111 = v15;
            v112 = 2098;
            v113 = v16;
            v114 = 2049;
            v115 = v17;
            v116 = 2049;
            v117 = v18;
            v118 = 2049;
            v119 = v70;
            v120 = 2049;
            v121 = v20;
            v122 = 2049;
            v123 = v19;
            v124 = 2049;
            v125 = v22;
            v126 = 2049;
            v127 = v21;
            v128 = 2049;
            v129 = v23;
            v130 = 2049;
            v131 = v24;
            v132 = 2049;
            v133 = v57;
            v134 = 2049;
            v135 = v58;
            v136 = 2049;
            v137 = v59;
            v138 = 2049;
            v139 = v26;
            v140 = 1026;
            v141 = v27;
            v142 = 2050;
            v143 = 11;
            _os_log_impl(dword_100000000, log, OS_LOG_TYPE_INFO, "{msg%{public}.0s:prepareAdvertisementsForSPFinder, avengerPublicKey:%{public, location:escape_only}s, timestamp:%{private}f, scantime:%{private, location:escape_only}s, latitude:%{public, location:Encrypted_latitude}.*P, longitude:%{public, location:Encrypted_longitude}.*P, altitude:%{private}f, rawHorizontalAccuracy:%{private}f, horizontalAccuracy:%{private}f, verticalAccuracy:%{private}f, speed:%{private}f, speedAccuracy:%{private}f, course:%{private}f, courseAccuracy:%{private}f, type:%{private}lu, integrity:%{private}lu, floor:%{private}lu, maxActivityBasedSpeedSinceLastLocation:%{private}f, maxActivityBasedSpeedSinceAdvertisement:%{private}f, ownedAccessory:%{public}hhd, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0xE2u);
          }

          v28 = a1;
          if (*(a1 + 632))
          {
            if (qword_1025D47A0 != -1)
            {
              sub_101A2924C();
              v28 = a1;
            }

            v29 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              sub_100037ACC(v28 + 2024, __p);
              v30 = __p;
              if (v91 < 0)
              {
                v30 = __p[0];
              }

              *buf = 68289282;
              v97 = 0;
              v98 = 2082;
              v99 = "";
              v100 = 2082;
              v101 = v30;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:markReceivingLocationInformation, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
              if (v91 < 0)
              {
                operator delete(__p[0]);
              }

              v28 = a1;
            }

            v31 = *(v28 + 632);
            sub_1000350D0(__dst, (v28 + 2024));
            [v31 markReceivingLocationInformation:sub_100061198(__dst)];
            if (v89 < 0)
            {
              operator delete(v88);
            }

            if (v87 < 0)
            {
              operator delete(v86);
            }

            if (v85 < 0)
            {
              operator delete(v84);
            }

            if (v83 < 0)
            {
              operator delete(v82);
            }

            if (v81 < 0)
            {
              operator delete(v80);
            }

            if (v79 < 0)
            {
              operator delete(v78);
            }

            if (v77 < 0)
            {
              operator delete(__dst[0]);
            }
          }

          if ([objc_msgSend(objc_msgSend(v74 "advertisement")] == 1)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_101A2924C();
            }

            v32 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              v33 = -[NSString UTF8String](+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter, "localizedStringFromDate:dateStyle:timeStyle:", [objc_msgSend(v74 "advertisement")], 1, 4), "UTF8String");
              v34 = [(NSString *)+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter UTF8String:v67];
              *buf = 68289538;
              v97 = 0;
              v98 = 2082;
              v99 = "";
              v100 = 2082;
              v101 = v33;
              v102 = 2082;
              v103 = v34;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#durian advertisement scan date in the future, scanDate:%{public, location:escape_only}s, now:%{public, location:escape_only}s}", buf, 0x26u);
              if (qword_1025D47A0 != -1)
              {
                sub_101A2924C();
              }
            }

            v35 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              v36 = -[NSString UTF8String](+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter, "localizedStringFromDate:dateStyle:timeStyle:", [objc_msgSend(v74 "advertisement")], 1, 4), "UTF8String");
              v37 = [(NSString *)+[NSDateFormatter localizedStringFromDate:dateStyle:timeStyle:](NSDateFormatter UTF8String:v67];
              *buf = 68289538;
              v97 = 0;
              v98 = 2082;
              v99 = "";
              v100 = 2082;
              v101 = v36;
              v102 = 2082;
              v103 = v37;
              _os_signpost_emit_with_name_impl(dword_100000000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian advertisement scan date in the future", "{msg%{public}.0s:#durian advertisement scan date in the future, scanDate:%{public, location:escape_only}s, now:%{public, location:escape_only}s}", buf, 0x26u);
            }
          }

          v38 = [SPEstimatedLocation alloc];
          v39 = [objc_msgSend(v74 "advertisement")];
          v40 = *(a1 + 644);
          v41 = *(a1 + 652);
          v42 = *(a1 + 668);
          v43 = *(a1 + 676);
          v44 = *(a1 + 684);
          v45 = *(a1 + 692);
          v47 = *(a1 + 700);
          v46 = *(a1 + 708);
          if (*(a1 + 736) == 10)
          {
            v48 = [NSNumber numberWithInt:*(a1 + 764)];
          }

          else
          {
            v48 = 0;
          }

          v50 = [v38 initWithTimestamp:v39 latitude:v48 longitude:v40 horizontalAccuracy:v41 altitude:v70 verticalAccuracy:v42 speed:v43 speedAccuracy:v44 course:v45 courseAccuracy:v47 floorLevel:v46];
          goto LABEL_70;
        }

        sub_10028A4A4(a1, 0.0, 0.0, v74, 0, 0);
        if ([v74 fromOwnerDevice])
        {
          sub_10028BD78(a1, 0, 0.0, 0.0);
          if (qword_1025D47D0 != -1)
          {
            sub_101A28FA8();
          }

          v49 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            v97 = 0;
            v98 = 2082;
            v99 = "";
            _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:prepareAdvertisementsForSPFinder: location not fetched for owned accessory advertisements, submitting metric}", buf, 0x12u);
          }
        }

        v50 = 0;
LABEL_70:
        v51 = [[SPBeaconPayload alloc] initWithAdvertisement:v73 location:v50];
        v52 = v51;
        if (v50)
        {
          v53 = *(a1 + 1456);
          if (v53 <= 3)
          {
            [v51 setObservationValue:qword_101CF18D8[v53]];
          }
        }

        [v52 setRefreshGeotag:0];
        if ([*(a1 + 1488) isNewPayload:v52])
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101A28FA8();
          }

          v54 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            *buf = 68289282;
            v97 = 0;
            v98 = 2082;
            v99 = "";
            v100 = 2050;
            v101 = 11;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_INFO, "{msg%{public}.0s:prepareAdvertisementsForSPFinder: added beacon payload to fBeaconPayloadCache, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
          }

          if (!((v50 == 0) | [v74 fromOwnerDevice] & 1))
          {
            if (qword_1025D47D0 != -1)
            {
              sub_101A28FA8();
            }

            v55 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
            {
              *buf = 68289282;
              v97 = 0;
              v98 = 2082;
              v99 = "";
              v100 = 2050;
              v101 = 11;
              _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_INFO, "{msg%{public}.0s:prepareAdvertisementsForSPFinder: added beacon payload to ActivityBasedBeaconPayloadCache for second geotagging, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
            }

            [*(a1 + 2000) receiveBeaconPayload:v52];
          }

          [*(a1 + 1480) addObject:v52];
          [*(a1 + 1992) receiveBeaconPayload:v52];
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101A28FA8();
          }

          v56 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
          {
            *buf = 68289282;
            v97 = 0;
            v98 = 2082;
            v99 = "";
            v100 = 2050;
            v101 = 11;
            _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_INFO, "{msg%{public}.0s:prepareAdvertisementsForSPFinder: beacon payload is redundant, skipped, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
          }
        }

        v71 = v71 + 1;
      }

      while (v69 != v71);
      result = [obj countByEnumeratingWithState:&v92 objects:v144 count:16];
      v69 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10028A4A4(_DWORD *a1, double a2, double a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a3 > 0.0 && a6 != 0)
  {
    if (a3 < 100.0)
    {
      ++a1[445];
    }

    if (a3 < 50.0)
    {
      ++a1[446];
    }

    if (a3 < 25.0)
    {
      ++a1[447];
    }
  }

  result = arc4random_uniform(0x14u);
  if (!result)
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t sub_10028A5BC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (a2 && !a3 && [a2 count] && objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", 0), "location"))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A7AFEC();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(a2 objectAtIndexedSubscript:{0), "machContinuousTimeSec"}];
      v8 = v7;
      [objc_msgSend(objc_msgSend(a2 objectAtIndexedSubscript:{0), "location"), "horizontalAccuracy"}];
      v10 = v9;
      if (*(v4 + 660) == 1)
      {
        v11 = *(v4 + 656);
      }

      else
      {
        v11 = -1;
      }

      sub_1000183C0(v4);
      v19 = 68290051;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2050;
      v24 = v8;
      v25 = 2050;
      v26 = v10;
      v27 = 1025;
      v28 = v11;
      v29 = 2050;
      v30 = sub_1000183C0(v4);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onAvengerAdvertisementDetected: fetched #ADL location, mct:%{public}.3f, hunc:%{public}.3f, motionType:%{private}d, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v19, 0x36u);
    }

    v17 = sub_100288B60(*(a1 + 32), [objc_msgSend(a2 objectAtIndexedSubscript:{0), "location"}]);
    sub_100288CE0(v4, v17);
    v18 = *(a1 + 32);
    v15 = [objc_msgSend(a2 objectAtIndexedSubscript:{0), "location"}];
    v14 = v4;
    v13 = v18;
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A7AFEC();
    }

    v12 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000183C0(v4);
      v19 = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2050;
      v24 = sub_1000183C0(v4);
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:onAvengerAdvertisementDetected: invalid location fetched, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v19, 0x1Cu);
    }

    v13 = *(a1 + 32);
    v14 = v4;
    v15 = 0;
  }

  return sub_100288D7C(v14, v13, v15);
}

void sub_10028A848(uint64_t a1)
{
  v2 = *(a1 + 1963);
  v3 = *(a1 + 1962);
  v4 = *(a1 + 1964);
  v5 = (*(**(a1 + 56) + 176))(*(a1 + 56));
  if (sub_10028AD30(v2, v3, v4, v5))
  {
    if (*(a1 + 796) != 1)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A2900C();
      }

      v18 = qword_1025D47D8;
      if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      *v34 = 11;
      v19 = "{msg%{public}.0s:WARN: processAdvertisementCache no last location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      v20 = v18;
      v21 = 28;
      goto LABEL_39;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      *v34 = 11;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:processAdvertisementCache with last location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &buf, 0x1Cu);
    }

    v7 = [*(a1 + 1472) copy];
    [*(a1 + 1472) removeObjectsInArray:{sub_10028AE9C(a1, v7, *(a1 + 1696), *(a1 + 716))}];

    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 1472) count];
      v10 = [*(a1 + 1480) count];
      buf = 68289794;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      *v34 = v9;
      *&v34[8] = 2050;
      *&v34[10] = v10;
      *&v34[18] = 2050;
      *&v34[20] = 11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:processAdvertisementCache: completed process, Remaining fAdvertisementCache.count:%{public}lu, fBeaconPayloadCache.count:%{public}lu, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &buf, 0x30u);
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v11 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      buf = 68289282;
      v31 = 2082;
      v32 = "";
      v33 = 2050;
      *v34 = 11;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:processAdvertisementCache: drop advertisements since geotagging is not allowed, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &buf, 0x1Cu);
    }

    *(a1 + 1768) += [*(a1 + 1472) count];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = *(a1 + 1472);
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v25 + 1) + 8 * i) advertisement];
          if (sub_10028B1A8(v17, v17))
          {
            ++*(a1 + 1776);
          }

          else
          {
            ++*(a1 + 1772);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    [*(a1 + 1472) removeAllObjects];
  }

  if ([*(a1 + 1480) count])
  {
    if (*(a1 + 560) <= 0.0)
    {
      sub_10028B5F0(a1);
    }

    else
    {
      sub_100C156EC(a1, 0);
    }
  }

  if ([*(a1 + 1472) count])
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A28FA8();
    }

    v22 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    v23 = *(a1 + 716);
    v24 = *(a1 + 1696);
    buf = 68289794;
    v31 = 2082;
    v32 = "";
    v33 = 1026;
    *v34 = v23;
    *&v34[4] = 2050;
    *&v34[6] = v24;
    *&v34[14] = 2050;
    *&v34[16] = 11;
    v19 = "{msg%{public}.0s:processAdvertisementCache: have last location, but it is stale, lastLocation.timestamp:%{public}d, fCurrentTimeOffsetThreshold:%{public}f, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    v20 = v22;
    v21 = 44;
LABEL_39:
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, v19, &buf, v21);
LABEL_40:
    sub_100C14EF0(a1);
  }
}

BOOL sub_10028AD30(int a1, char a2, char a3, int a4)
{
  if ((a2 & 1) != 0 || (a3 & 1) != 0 || a1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v4 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = 11;
      v6 = "{msg%{public}.0s:Device is inside Korea; location is not needed, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      goto LABEL_13;
    }
  }

  else if (a4)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v4 = qword_1025D47D8;
    result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v7 = 68289282;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2050;
      v12 = 11;
      v6 = "{msg%{public}.0s:Location is simulated, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_13:
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, v6, &v7, 0x1Cu);
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

NSArray *sub_10028AE9C(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = objc_alloc_init(NSMutableArray);
  v9 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [a2 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 advertisement];
        v16 = sub_10028B1A8(v15, v15);
        [objc_msgSend(objc_msgSend(v14 "advertisement")];
        v18 = a4 - v17;
        v19 = sub_10028B360(a4 - v17, a3);
        v20 = v19;
        if (v19 == 1)
        {
          [v9 addObject:v14];
          ++*(a1 + 1756);
          if (v16)
          {
            ++*(a1 + 1764);
          }

          else
          {
            ++*(a1 + 1760);
          }
        }

        else if (!v19)
        {
          [v8 addObject:v14];
          ++*(a1 + 1768);
          if (v16)
          {
            ++*(a1 + 1776);
          }

          else
          {
            ++*(a1 + 1772);
          }
        }

        sub_10028B520(a1, v14, v20, v18);
      }

      v11 = [a2 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v11);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A28FA8();
  }

  v21 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v22 = [*(a1 + 1472) count];
    v23 = [v9 count];
    v24 = [v8 count];
    *buf = 68290050;
    v33 = 2082;
    v32 = 0;
    v34 = "";
    v35 = 2050;
    v36 = v22;
    v37 = 2050;
    v38 = v23;
    v39 = 2050;
    v40 = v24;
    v41 = 2050;
    v42 = 11;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "{msg%{public}.0s:geotagAdvertisements: completed process, fAdvertisementCache.count:%{public}lu, saveableAdvertisements.count:%{public}lu, purgeableAdvertisements.count:%{public}lu, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x3Au);
  }

  sub_1002897D0(a1, v9);
  [v8 addObjectsFromArray:v9];
  v25 = +[NSArray array];
  if ([v8 count])
  {
    v25 = [NSArray arrayWithArray:v8];
  }

  return v25;
}

id sub_10028B1A8(uint64_t a1, void *a2)
{
  if (a2)
  {

    return [a2 isPosh];
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v3 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_ERROR))
    {
      v5 = 68289282;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = 11;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:processAdvertisementCache missing advertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v5, 0x1Cu);
      if (qword_1025D47D0 != -1)
      {
        sub_101A28FA8();
      }
    }

    v4 = qword_1025D47D8;
    if (os_signpost_enabled(qword_1025D47D8))
    {
      v5 = 68289282;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = 11;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "processAdvertisementCache missing advertisement", "{msg%{public}.0s:processAdvertisementCache missing advertisement, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v5, 0x1Cu);
    }

    return 0;
  }
}

uint64_t sub_10028B360(double a1, double a2)
{
  if (a1 <= a2)
  {
    if (fabs(a1) <= a2)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A2900C();
      }

      v7 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289794;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2050;
        v13 = a1;
        v14 = 2050;
        v15 = a2;
        v16 = 2050;
        v17 = 11;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:geotagSingleAdvertisement: advertisement within valid time window for location, timeOffset:%{public}f, fCurrentTimeOffsetThreshold:%{public}f, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v8, 0x30u);
      }

      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A2900C();
    }

    v4 = qword_1025D47D8;
    v5 = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v5)
    {
      v8 = 68289794;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = a1;
      v14 = 2050;
      v15 = a2;
      v16 = 2050;
      v17 = 11;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:geotagSingleAdvertisement: dropping avenger advertisement, too old, timeOffset:%{public}f, fCurrentTimeOffsetThreshold:%{public}f, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v8, 0x30u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10028B520(uint64_t result, void *a2, int a3, double a4)
{
  v5 = result;
  ++*(result + 1856);
  *(result + 1864) = *(result + 1864) + a4;
  *(result + 1872) = *(result + 1872) + a4 * a4;
  if (a3 == 1)
  {
    ++*(result + 1880);
    *(result + 1888) = *(result + 1888) + a4;
    *(result + 1896) = *(result + 1896) + a4 * a4;
  }

  else if (!a3)
  {
    sub_10028A4A4(result, 0.0, 0.0, a2, 1, 0);

    return sub_100C15414(v5, a2, a4);
  }

  return result;
}

void sub_10028B5F0(uint64_t a1)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 1480) count];
    v6 = *(a1 + 2017);
    *buf = 68289795;
    v40 = 2082;
    v39 = 0;
    v41 = "";
    v42 = 2049;
    v43 = v5;
    v44 = 1025;
    *v45 = v6;
    *&v45[4] = 2050;
    *&v45[6] = 11;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:saveBeaconPayloadCacheToSPFinder, fBeaconPayloadCache.count:%{private}lu, fIsCameraAppRunning:%{private}hhd, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x2Cu);
  }

  if ([*(a1 + 1480) count] && (*(a1 + 2017) & 1) == 0)
  {
    v7 = [*(a1 + 1480) copy];
    [*(a1 + 1480) removeAllObjects];
    if (sub_10028BAA0())
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101A28FA8();
      }

      v8 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000183C0(a1);
        v9 = sub_1000183C0(a1);
        *buf = 68289282;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2050;
        v43 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onAvengerAdvertisementDetected: saveBeaconPayloads SPFinder upload disabled., subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
      }

      v30 = a1;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v10 = [v7 countByEnumeratingWithState:&v34 objects:v60 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v34 + 1) + 8 * i);
            if (p_info[250] != -1)
            {
              sub_101A28FA8();
            }

            v15 = v3[251];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [objc_msgSend(objc_msgSend(v14 "location")];
              v17 = v16;
              [objc_msgSend(v14 "location")];
              v19 = v18;
              [objc_msgSend(v14 "location")];
              v21 = v20;
              [objc_msgSend(v14 "location")];
              v23 = v22;
              v32 = [objc_msgSend(v14 "advertisement")];
              v31 = [objc_msgSend(v14 "advertisement")];
              v24 = [objc_msgSend(v14 "advertisement")];
              v25 = p_info;
              v26 = [objc_msgSend(v14 "advertisement")];
              v27 = [objc_msgSend(objc_msgSend(objc_msgSend(v14 "advertisement")];
              sub_1000183C0(v30);
              v28 = sub_1000183C0(v30);
              *buf = 68291587;
              v39 = 0;
              v40 = 2082;
              v41 = "";
              v42 = 2049;
              v43 = v17;
              v44 = 2049;
              *v45 = v19;
              *&v45[8] = 2053;
              *&v45[10] = v21;
              v46 = 2053;
              v47 = v23;
              v48 = 2113;
              v49 = v32;
              v3 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v50 = 2049;
              v51 = v31;
              v52 = 1025;
              v53 = v24;
              v54 = 2049;
              v55 = v26;
              p_info = v25;
              v56 = 2081;
              v57 = v27;
              v58 = 2050;
              v59 = v28;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:saveBeacon, loc_age:%{private}f, h_accuracy:%{private}f, lat:%{sensitive}f, long:%{sensitive}f, adv_scan_time:%{private, location:escape_only}@, hash:%{private}lu, isPosh:%{private}hhd, rssi:%{private}lu, hex:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x72u);
            }
          }

          v11 = [v7 countByEnumeratingWithState:&v34 objects:v60 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v29 = [*(a1 + 1464) beaconPayloadCache];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100C16E14;
      v33[3] = &unk_102449B88;
      v33[4] = a1;
      [v29 saveBeaconPayloads:v7 completion:v33];
    }
  }
}

uint64_t sub_10028BAA0()
{
  if (!sub_10001CF04() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

id sub_10028BBBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  result = [objc_msgSend(objc_msgSend(a2 "advertisement")];
  if (v5 - v7 > 1.95)
  {
    v8 = *(a1 + 32);

    return [v8 addIndex:a3];
  }

  return result;
}

int64_t sub_10028BC38(id a1, id a2, id a3)
{
  v4 = [objc_msgSend(a2 "advertisement")];
  v5 = [objc_msgSend(a3 "advertisement")];

  return [v4 compare:v5];
}

uint64_t sub_10028BC94(uint64_t a1)
{
  if ((*(**(a1 + 48) + 224))(*(a1 + 48)) & 1) != 0 || ((*(**(a1 + 48) + 216))(*(a1 + 48)))
  {
    return 1;
  }

  v3 = *(**(a1 + 168) + 80);

  return v3();
}

uint64_t sub_10028BD78(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", a2), @"locationFetched"}];
  [v8 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", a4), @"locationAge"}];
  [v8 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", a3), @"locationAccuracy"}];
  [v8 setObject:@"ownerAdvertisement" forKeyedSubscript:@"accessoryObservationType"];
  [v8 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(a1 + 1706)), @"inVisit"}];
  v9 = *(a1 + 1460);
  if (v9 <= 6)
  {
    [v8 setObject:*(&off_10249E8D8 + v9) forKeyedSubscript:@"motionState"];
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v10 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2113;
    v17 = v8;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:prepareAdvertisementsForSPFinder: sending owner advertisement location tagged metrics, event:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  return AnalyticsSendEventLazy();
}

void sub_10028BF98(uint64_t a1, void *a2)
{
  v34 = *(a1 + 40);
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (a2)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A7AFEC();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_msgSend(a2 "description")];
      sub_1000183C0(v34);
      *buf = 68289538;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2082;
      v45 = v5;
      v46 = 2050;
      v47 = sub_1000183C0(v34);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WARN: onAvengerAdvertisementDetected: saveBeaconPayloads error received, error:%{public, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x26u);
      if (qword_1025D47D0 != -1)
      {
        sub_101A7AFC4();
      }
    }

    v6 = qword_1025D47D8;
    if (os_signpost_enabled(qword_1025D47D8))
    {
      v7 = [objc_msgSend(a2 "description")];
      sub_1000183C0(v34);
      v8 = sub_1000183C0(v34);
      *buf = 68289538;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2082;
      v45 = v7;
      v46 = 2050;
      v47 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WARN: onAvengerAdvertisementDetected: saveBeaconPayloads error received", "{msg%{public}.0s:WARN: onAvengerAdvertisementDetected: saveBeaconPayloads error received, error:%{public, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x26u);
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A7AFEC();
    }

    v10 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v11 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000183C0(v34);
      *buf = 68289282;
      v41 = 0;
      v42 = 2082;
      v43 = "";
      v44 = 2050;
      v45 = sub_1000183C0(v34);
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onAvengerAdvertisementDetected: saveBeaconPayloads SPFinder upload successful, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = *(a1 + 32);
    v12 = [obj countByEnumeratingWithState:&v36 objects:v64 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      v33 = *v37;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          if (p_info[250] != -1)
          {
            sub_101A7AFC4();
          }

          v17 = v10[251];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [objc_msgSend(objc_msgSend(v16 "location")];
            v19 = v18;
            [objc_msgSend(v16 "location")];
            v21 = v20;
            [objc_msgSend(v16 "location")];
            v23 = v22;
            [objc_msgSend(v16 "location")];
            v25 = v24;
            v26 = [objc_msgSend(v16 "advertisement")];
            v27 = [objc_msgSend(v16 "advertisement")];
            v28 = [objc_msgSend(v16 "advertisement")];
            v29 = v10;
            v30 = [objc_msgSend(v16 "advertisement")];
            v31 = [objc_msgSend(objc_msgSend(objc_msgSend(v16 "advertisement")];
            sub_1000183C0(v34);
            v32 = sub_1000183C0(v34);
            *buf = 68291587;
            v41 = 0;
            v42 = 2082;
            v43 = "";
            v44 = 2049;
            v45 = v19;
            v46 = 2049;
            v47 = v21;
            v48 = 2053;
            v49 = v23;
            v50 = 2053;
            v51 = v25;
            v52 = 2113;
            v53 = v26;
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            v14 = v33;
            v54 = 2049;
            v55 = v27;
            v56 = 1025;
            v57 = v28;
            v58 = 2049;
            v59 = v30;
            v10 = v29;
            v60 = 2081;
            v61 = v31;
            v62 = 2050;
            v63 = v32;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:saveBeacon, loc_age:%{private}f, h_accuracy:%{private}f, lat:%{sensitive}f, long:%{sensitive}f, adv_scan_time:%{private, location:escape_only}@, hash:%{private}lu, isPosh:%{private}hhd, rssi:%{private}ld, hex:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x72u);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v64 count:16];
      }

      while (v13);
    }
  }
}

void *sub_10028C478(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x19;
  v3 = v1 - 25;
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
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_10028C600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028C670(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_10245FEA8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMPedometerStep>::operator[](const size_t) const [T = CMPedometerStep]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[28 * (v4 - v5) + 4];
}

uint64_t sub_10028C870(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 3, &v4);
}

uint64_t sub_10028C8A4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  return sub_1000CE87C(v2, 8, &v4);
}

void sub_10028C910(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB9A84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLKappaNotifier::onAOP", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB9A98();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLKappaNotifier::onAOP, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10028CAD4(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10028CAD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3u:
        if (qword_1025D4340 != -1)
        {
          sub_101BB96A4();
        }

        v12 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
        {
          *v15 = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "received disarm client from AOP", v15, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BBB524();
        }

        v6 = a1 + 112;
        v7 = a2 + 2;
        v8 = 12;
        break;
      case 4u:
        if (qword_1025D4340 != -1)
        {
          sub_101BB96A4();
        }

        v13 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "received marty mode switch from AOP", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BBB448();
        }

        v6 = a1 + 112;
        v7 = a2 + 2;
        v8 = 13;
        break;
      case 5u:
        v9 = a1 + 112;
        v10 = 3;
        v11 = 0;
        goto LABEL_25;
      default:
        return;
    }

LABEL_35:
    sub_10028CD10(v6, v8, v7);
    return;
  }

  if (*(a2 + 1))
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return;
      }

      if (qword_1025D4340 != -1)
      {
        sub_101BB96A4();
      }

      v5 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "received arm client from AOP", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBB600();
      }

      v6 = a1 + 112;
      v7 = a2 + 2;
      v8 = 11;
      goto LABEL_35;
    }

    v9 = a1 + 112;
    v11 = a2 + 2;
    v10 = 2;
  }

  else
  {
    v9 = a1 + 112;
    v11 = a2 + 2;
    v10 = 1;
  }

LABEL_25:

  sub_10028CD10(v9, v10, v11);
}

void sub_10028CD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1 != &qword_1026399B0)
  {
    while (1)
    {
      v7 = (**v3)(v3, a2, a3);
      if (v7)
      {
        break;
      }

      v3 = v3[1];
      if (v3 == &qword_1026399B0)
      {
        return;
      }
    }

    v8 = v7;
    if (v7 == v3)
    {
      v16 = *(*v3 + 16);

      v16(v3, a2, a3);
    }

    else
    {
      v9 = *a1;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      sub_1005ED338(&v28, v9[2], v9[3], (v9[3] - v9[2]) >> 3);
      v26 = 0;
      v27 = 0;
      __p = 0;
      sub_1005ED338(&__p, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 3);
      v11 = v28;
      v10 = v29;
      if (v28 != v29)
      {
        v12 = v26 - 8;
        v13 = v29 - 8;
        while (v12 + 8 != __p)
        {
          if (*v13 != *v12)
          {
            goto LABEL_17;
          }

          v10 -= 8;
          v29 = v13;
          v26 = v12;
          v12 -= 8;
          v14 = v13 - 8;
          v15 = v13 == v28;
          v13 -= 8;
          if (v15)
          {
            v10 = v14 + 8;
            goto LABEL_17;
          }
        }

        v10 = v13 + 8;
      }

LABEL_17:
      if (v28 != v10)
      {
        do
        {
          v17 = *v11;
          (*(**v11 + 32))(*v11, a2, a3);
          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(v17 + 40);
            *buf = 134218242;
            v32 = a2;
            v33 = 2080;
            v34 = v19;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "event %llu, exit(%s)", buf, 0x16u);
          }

          v11 += 8;
        }

        while (v11 != v10);
      }

      (*(*v3 + 16))(v3, a2, a3);
      for (i = v26; ; i -= 8)
      {
        v21 = __p;
        if (i == __p)
        {
          break;
        }

        v22 = *(a1 + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(*(i - 1) + 40);
          *buf = 134218242;
          v32 = a2;
          v33 = 2080;
          v34 = v23;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "event %llu, enter(%s)", buf, 0x16u);
        }

        v24 = *(i - 1);
        (*(*v24 + 24))(v24, a2, a3);
      }

      *a1 = v8;
      if (i)
      {
        v26 = v21;
        operator delete(v21);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }
  }
}

void sub_10028D0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10028D0F0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = 0;
  if (a2 <= 5)
  {
    if (a2 == 1)
    {
      if (!*a3)
      {
        return *(a1 + 48) + 128;
      }

      return a1;
    }

    if (a2 != 2)
    {
      if (a2 != 5)
      {
        return result;
      }

      sub_101325AC4(0, a3);
      return a1;
    }

    v24 = *a3;
    if (qword_1025D4550 != -1)
    {
      sub_101BB996C();
    }

    v25 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 67240192;
      v41 = v24;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "Received AOP trigger, %{public}u", &v40, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BBED44(v24);
      if (v24)
      {
        goto LABEL_56;
      }
    }

    else if (v24)
    {
LABEL_56:
      v27 = a1 + 48;
      v26 = *(a1 + 48);
      if (*(v26 + 314) == 1)
      {
        ++*(v26 + 680);
        v28 = "CLIgneousMotionTriggerCountOnCharger";
        v29 = 680;
      }

      else
      {
        ++*(v26 + 684);
        v28 = "CLIgneousMotionTriggerCountOffCharger";
        v29 = 684;
      }

      v35 = sub_1000206B4();
      sub_10004345C(v35, v28, (*v27 + v29));
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v36 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(*v27 + 680);
        v38 = *(*v27 + 684);
        v40 = 67240448;
        v41 = v37;
        v42 = 1026;
        v43 = v38;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "Updated motion trigger counts, %{public}d, %{public}d", &v40, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBEE30();
      }

      v39 = sub_1000206B4();
      (*(*v39 + 944))(v39);
    }

    return *(a1 + 48) + 240;
  }

  if (a2 > 11)
  {
    if (a2 == 12)
    {
      if (qword_1025D4340 != -1)
      {
        sub_101BB96A4();
      }

      v16 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v40) = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "received kAOPDisarmClient", &v40, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBE6CC();
      }

      v17 = (a1 + 48);
      sub_101326D50(*(a1 + 48), a3);
      v18 = *(a1 + 48);
      v19 = *a3;
      v20 = v18[616];
      if ((v20 & v19) != 0)
      {
        v18[616] = v20 & ~v18[618];
        if (qword_1025D4340 != -1)
        {
          sub_101BB9C9C();
        }

        v21 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(*v17 + 618);
          v23 = *(*v17 + 616);
          v40 = 67109376;
          v41 = v22;
          v42 = 1024;
          v43 = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "disarm remote %d remote armed bitmap %d", &v40, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BBE7A8();
        }
      }

      else
      {
        v18[617] &= ~v19;
        if (qword_1025D4340 != -1)
        {
          sub_101BB9C9C();
        }

        v30 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
        {
          v31 = *a3;
          v32 = *(*v17 + 617);
          v40 = 67109376;
          v41 = v31;
          v42 = 1024;
          v43 = v32;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "disarm client %d locally armed bitmap %d", &v40, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BBE8AC();
        }

        v33 = *v17;
        if (!*(*v17 + 617))
        {
          if (qword_1025D4340 != -1)
          {
            sub_101BB9C9C();
          }

          v34 = qword_1025D4348;
          if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v40) = 0;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "turning off heartbeat", &v40, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101BBE9A8();
          }

          [*(*v17 + 608) setNextFireDelay:1.79769313e308 interval:1.79769313e308];
          v33 = *v17;
        }

        sub_1013265F0(v33, a3);
      }
    }

    else
    {
      if (a2 != 13)
      {
        return result;
      }

      sub_1013269F4(*(a1 + 48), a3);
    }
  }

  else if (a2 == 6)
  {
    sub_101325E58(0, a3);
  }

  else
  {
    if (a2 != 11)
    {
      return result;
    }

    if (qword_1025D4340 != -1)
    {
      sub_101BB96A4();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v40) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "received kAOPArmClient", &v40, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BBEA84();
    }

    v8 = (a1 + 48);
    v7 = *(a1 + 48);
    v9 = *a3;
    if ((*(v7 + 616) & *a3) == 0)
    {
      v10 = *(v7 + 617);
      if (!v10)
      {
        v11 = sub_101329AF8();
        if (qword_1025D4340 != -1)
        {
          sub_101BB9C9C();
        }

        v12 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
        {
          v40 = 67109120;
          v41 = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "setting heartbeat to %d seconds", &v40, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BBEB60(v11);
        }

        [*(*v8 + 608) setNextFireDelay:1.0 interval:v11];
        v9 = *a3;
        v7 = *v8;
        v10 = *(*v8 + 617);
      }

      *(v7 + 617) = v10 | v9;
      if (qword_1025D4340 != -1)
      {
        sub_101BB9C9C();
      }

      v13 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a3;
        v15 = *(*v8 + 617);
        v40 = 67109376;
        v41 = v14;
        v42 = 1024;
        v43 = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "arm client %d locally armed bitmap %d", &v40, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBEC48();
      }

      sub_1013261EC(*v8, a3);
    }
  }

  return a1;
}