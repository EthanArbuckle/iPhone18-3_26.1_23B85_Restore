void sub_1001BCEA0(_Unwind_Exception *a1)
{
  if (STACK[0x2C0])
  {
    sub_100008080(STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001BCEDC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 1224);
    v5 = *(a1 + 1249);
    v6 = *(a1 + 2499);
    v7 = *(a1 + 1222);
    v8 = *(a1 + 744);
    v12[0] = 68290562;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v3;
    v17 = 1026;
    v18 = v4;
    v19 = 1026;
    v20 = v5;
    v21 = 1026;
    v22 = v6;
    v23 = 1026;
    v24 = v7;
    v25 = 1026;
    v26 = v8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:expectedState, fDeviceReady:%{public}hhd, fPreventSessionsDueToPendingApSleep:%{public}hhd, fNilrActive:%{public}hhd, fNilrLockoutStatus:%{public}hhd, fIsConformanceMode:%{public}hhd, fHasClient:%{public}hhd}", v12, 0x36u);
  }

  if (*(a1 + 8) != 1 || (*(a1 + 1224) & 1) != 0 || *(a1 + 748) != 1)
  {
    return 0;
  }

  if (sub_1001B57D8() || *(a1 + 1249) != 1 || *(a1 + 2499) == 1)
  {
    v9 = sub_1001B57D8() && sub_1001B589C();
    v10 = *(a1 + 1222);
    if ((v10 & 1) == 0)
    {
      if ((*(a1 + 744) & 1) != 0 || sub_100265700(a1 + 1228))
      {
        return 1;
      }

      v10 = *(a1 + 1222);
    }

    return (v10 & v9 & 1) != 0 && (*(a1 + 1249) & 1) != 0;
  }

  return 2;
}

uint64_t sub_1001BD094(void *a1, int a2)
{
  switch(a2)
  {
    case 0:
      sub_1001B59B8(a1);
      a1[92] = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.gnss.on"];
      v6 = a1[142];
      if (v6)
      {
        sub_1001C0938(v6);
      }

      *(a1 + 1360) = 0;
      *(a1 + 341) = sub_1000081AC();
      sub_1001B6020(v16, (a1 + 73));
      sub_1001B60DC(a1, v16);
      sub_1001C5560(v16);
      v7 = a1[388];
      if (v7)
      {
        sub_1007FD3D4(v7);
      }

      sub_1001C55E4(a1);
      *(a1 + 2570) = 0;
      goto LABEL_75;
    case 1:
      sub_1001C55E4(a1);
      if (a1[112])
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v8 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#rti,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019414D4();
        }

        sub_1002546D0(a1[112], 0);
      }

      if (a1[106])
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v9 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#ee,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019415B8();
        }

        sub_100256634(a1[106], 0);
      }

      if (a1[109])
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v10 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#rte,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194169C();
        }

        sub_1002568F8(a1[109], 0, 0);
      }

      if (a1[118])
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#rof,reverting to nominal download rates on session exit", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101941780();
        }

        sub_1002568F8(a1[118], 0, 1);
      }

      sub_1001B59B8(a1);
      sub_1001B6020(v15, (a1 + 77));
      sub_1007FD590(a1, v15);
      sub_1001C5560(v15);
      v12 = a1[92];
      if (v12)
      {

        a1[92] = 0;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v13 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "os transaction already nil", v14, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101941864();
        }
      }

      if (*(a1 + 2570) == 1 && *a1)
      {
        (*(**a1 + 32))(*a1);
      }

      goto LABEL_75;
    case 2:
    case 5:
    case 7:
    case 9:
    case 11:
    case 13:
      v3 = sub_1001BCEDC(a1);
      if (!v3)
      {
        if ((a1[96] & 1) == 0)
        {
          if (qword_1025D4650 != -1)
          {
            sub_10194117C();
          }

          v5 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#GnssController,debounce timer not running when expected to be running", v14, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1019413E8();
          }

          sub_1002660A8(a1);
        }

        goto LABEL_75;
      }

      if (v3 == 1)
      {
        sub_1001B59B8(a1);
        goto LABEL_75;
      }

      return 2;
    case 3:
    case 12:
    case 14:
      result = sub_1001BCEDC(a1);
      if (result)
      {
        return result;
      }

      if (sub_100265160(a1, 1) > 0.0)
      {
        sub_1002660A8(a1);
        goto LABEL_75;
      }

LABEL_8:
      result = 0;
      break;
    case 4:
      if ((sub_10001CF3C() & 1) != 0 || (a1[71] & 0xFFFFFFFE) != 0xA)
      {
        sub_1002660A8(a1);
        if (*a1)
        {
          (*(**a1 + 32))(*a1);
        }

LABEL_75:
        result = 1;
      }

      else
      {
        result = 0;
        *(a1 + 2570) = 1;
      }

      break;
    case 6:
    case 8:
    case 10:
    case 16:
      goto LABEL_8;
    case 15:
      sub_1007FD0BC(a1);
      goto LABEL_75;
    case 17:

      return sub_1001BCEDC(a1);
    default:
      goto LABEL_75;
  }

  return result;
}

void sub_1001BD61C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001C5560(va);
  _Unwind_Resume(a1);
}

void sub_1001BD68C(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  if (*(a1 + 2506) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134284033;
      Current = CFAbsoluteTimeGetCurrent();
      v22 = 1025;
      v23 = a2;
      v24 = 1025;
      v25 = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gnssca,handleGnssSessionEventForAnalytics, eventTime,%{private}.1lf, eventType,%{private}d, eventStatus,%{private}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB5A4(a3, a2);
    }
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (!a3)
      {
        v16 = sub_1001B5AB4(a1, 1);
        if (v16)
        {
          buf[0] = 0;
          sub_1001C992C(v16, &v19, buf);
        }

        *buf = 2;
        v17 = *(a1 + 2320);
        if (!v17)
        {
          return;
        }

        while (1)
        {
          if (sub_1000735F4(v17 + 3, buf))
          {
            v18 = sub_1000735F4(v17 + 3, buf);
            if (!v18)
            {
LABEL_49:
              sub_1000432E8("unordered_map::at: key not found");
            }

            if (v18[5])
            {
              break;
            }
          }

          v17 = *v17;
          if (!v17)
          {
            return;
          }
        }

LABEL_19:
        v10 = a1;
        v11 = 5;
LABEL_24:
        sub_1001BE898(v10, v11);
        return;
      }

      v12 = sub_1001BE898(a1, 1);
      if (!v12)
      {
        goto LABEL_34;
      }

      buf[0] = 1;
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      if (a3)
      {
        v7 = sub_1001BE898(a1, 2);
        if (v7)
        {
          buf[0] = 1;
          sub_1001C992C(v7, &v19, buf);
        }

        *buf = 1;
        v8 = *(a1 + 2320);
        if (v8)
        {
          while (1)
          {
            if (sub_1000735F4(v8 + 3, buf))
            {
              v9 = sub_1000735F4(v8 + 3, buf);
              if (!v9)
              {
                goto LABEL_49;
              }

              if (v9[5])
              {
                return;
              }
            }

            v8 = *v8;
            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        goto LABEL_19;
      }

      v12 = sub_1001B5AB4(a1, 2);
      if (!v12)
      {
        goto LABEL_34;
      }

      buf[0] = 0;
    }

    sub_1001C992C(v12, &v19, buf);
LABEL_34:
    v14 = a1;
    v15 = 5;
    goto LABEL_36;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a3)
    {
      sub_1001BE1D0(a1);
      v10 = a1;
      v11 = 4;
      goto LABEL_24;
    }

    v14 = a1;
    v15 = 4;
LABEL_36:
    sub_1001B5AB4(v14, v15);
    return;
  }

  if (a3)
  {
    v13 = sub_1001BE898(a1, 3);
    if (!v13)
    {
      return;
    }

    buf[0] = 1;
  }

  else
  {
    v13 = sub_1001B5AB4(a1, 3);
    if (!v13)
    {
      return;
    }

    buf[0] = 0;
  }

  sub_1001C992C(v13, &v19, buf);
}

void sub_1001BD950(uint64_t a1, uint64_t *a2)
{
  sub_1001B6830(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_1001BD9F4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_10045E858(a1, (v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1001BDAD4(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  sub_10018F070(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

id sub_1001BDB40(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 752);
  if (v3 != (a1 + 760))
  {
    do
    {
      v4 = v3 + 4;
      if (*(v3 + 55) < 0)
      {
        v4 = *v4;
      }

      [v2 addObject:{-[CLClientKeyPath legacyClientKey](+[CLClientKeyPath clientKeyPathWithClientKey:](CLClientKeyPath, "clientKeyPathWithClientKey:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v4)), "legacyClientKey")}];
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (a1 + 760));
  }

  return v2;
}

void sub_1001BDC1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B92D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

BOOL sub_1001BDC70()
{
  v0 = sub_10006FE30();
  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "EnableGnssB13FilterInAllSessions", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

void sub_1001BDCE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001BDD00(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024B9AC8;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001BDD28(int a1)
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 == 1)
  {
    if ((atomic_load_explicit(&qword_102659238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659238))
    {
      sub_10001CAF4(buf);
      LOBYTE(v13[0]) = 0;
      v11 = sub_10001CB4C(*buf, "GnssForceRequireBC", v13);
      v12 = v11 & v13[0];
      if (v19)
      {
        sub_100008080(v19);
      }

      byte_102659230 = v12;
      __cxa_guard_release(&qword_102659238);
    }

    if (qword_1026592D8 != -1)
    {
      sub_10191C250();
    }

    v2 = dword_1026592D0;
    if (sub_1001B3D90())
    {
      v3 = 0;
    }

    else
    {
      v5 = !sub_100718F78();
      v3 = v2 == 174 || v5;
    }

    if (qword_102659268 != -1)
    {
      sub_10191CC50();
    }

    v6 = byte_102659260;
    if (v3 & 1 | ((byte_102659260 & 1) == 0) || !a1)
    {
      v4 = byte_102659230;
    }

    else
    {
      v4 = 1;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10191C518();
    }

    v7 = v6 & 1;
    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67175169;
      *&buf[4] = v4 & 1;
      LOWORD(v19) = 1025;
      *(&v19 + 2) = a1;
      HIWORD(v19) = 1025;
      v20 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#bcr,%{private}d,in region,%{private}d,region sku,%{private}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10191C518();
      }

      v13[0] = 67175169;
      v13[1] = v4 & 1;
      v14 = 1025;
      v15 = a1;
      v16 = 1025;
      v17 = v7;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLPlatformInfo::isBeiDouConsistencySupported(BOOL)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1001BE010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  __cxa_guard_abort(&qword_102659238);
  _Unwind_Resume(a1);
}

uint64_t sub_1001BE044(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 2 * (v3 & 1) + (v3 & 2) + ((v3 >> 1) & 2);
    if ((v3 & 8) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 24);
    }

    result = ((v3 >> 3) & 2) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_1001BE0B8(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 17), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 8), a2, a4);
    if ((*(v5 + 24) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 18), a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 19);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

void sub_1001BE17C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001BE1D0(uint64_t a1)
{
  v2 = sub_1001B8DBC();
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 2384);
  if (qword_1025D4650 != -1)
  {
    sub_1016C8A14();
  }

  v5 = Current - v4;
  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 2376);
    *buf = 134284033;
    *v58 = v2;
    *&v58[8] = 2049;
    v59 = v7;
    *v60 = 2049;
    *&v60[2] = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#gnssca,submitGnssDailyUseMetricsOnDayChange,currentSecondsIntoDay_s,%{private}.1lf,secondsIntoDayAtLastGnssSessionStart_s,%{private}.1lf,timeSinceGnssDailyUseMetricsInitialization_s,%{private}.1lf,", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v17 = *(a1 + 2376);
    v33 = 134284033;
    *v34 = v2;
    *&v34[8] = 2049;
    v35 = v17;
    *v36 = 2049;
    *&v36[2] = v5;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::submitGnssDailyUseMetricsOnDayChange()", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if (v5 > 86400.0 && *(a1 + 2376) > v2)
  {
    v32 = a1;
    v31 = 0u;
    v20 = sub_1016C6990(&v32, 0, 4);
    v21 = sub_1016C6990(&v32, 0, 1);
    v22 = sub_1016C6990(&v32, 0, 2);
    v23 = sub_1016C6990(&v32, 0, 3);
    v24 = sub_1016C6990(&v32, 0, 5);
    v25 = sub_1016C6990(&v32, 1, 1);
    v26 = sub_1016C6990(&v32, 1, 3);
    v27 = sub_1016C6990(&v32, 2, 1);
    v28 = sub_1016C6990(&v32, 2, 3);
    v29 = sub_1016C6990(&v32, 3, 1);
    v30 = sub_1016C6990(&v32, 3, 3);
    LODWORD(v31) = sub_1016C6990(&v32, 4, 1);
    v8 = sub_1016C6990(&v32, 4, 3);
    *(&v31 + 4) = __PAIR64__(*(a1 + 2400), v8);
    HIDWORD(v31) = (*(a1 + 2768) - *(a1 + 2760));
    v9 = sub_1001EC310();
    sub_1006FE900(v9, &v20);
    if (*(a1 + 2506) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67178241;
        *v58 = v20;
        *&v58[4] = 1025;
        *&v58[6] = v21;
        LOWORD(v59) = 1025;
        *(&v59 + 2) = v22;
        HIWORD(v59) = 1025;
        *v60 = v23;
        *&v60[4] = 1025;
        *&v60[6] = v24;
        v61 = 1025;
        v62 = v25;
        v63 = 1025;
        v64 = v26;
        v65 = 1025;
        v66 = v27;
        v67 = 1025;
        v68 = v28;
        v69 = 1025;
        v70 = v29;
        v71 = 1025;
        v72 = v30;
        v73 = 1025;
        v74 = v31;
        v75 = 1025;
        v76 = DWORD1(v31);
        v77 = 1025;
        v78 = DWORD2(v31);
        v79 = 1025;
        v80 = HIDWORD(v31);
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#gnssca,submitGnssDailyUseMetricsOnDayChange,dailyGnssUsageSeconds,%{private}d,dailyClientSessionSeconds,%{private}d,dailyProactiveGnssSeconds,%{private}d,dailyDebouncePeriodSeconds,%{private}d,dailyExclusiveProactiveGnssSeconds,%{private}d,dailyClientGnssDisplayOnOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOnInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnInsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffInsideVisitSeconds,%{private}d,dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds,%{private}d,dailyGnssUsageNetProactiveLocationBalanceSeconds,%{private}d", buf, 0x5Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016C8BF0();
        }

        v33 = 67178241;
        *v34 = v20;
        *&v34[4] = 1025;
        *&v34[6] = v21;
        LOWORD(v35) = 1025;
        *(&v35 + 2) = v22;
        HIWORD(v35) = 1025;
        *v36 = v23;
        *&v36[4] = 1025;
        *&v36[6] = v24;
        v37 = 1025;
        v38 = v25;
        v39 = 1025;
        v40 = v26;
        v41 = 1025;
        v42 = v27;
        v43 = 1025;
        v44 = v28;
        v45 = 1025;
        v46 = v29;
        v47 = 1025;
        v48 = v30;
        v49 = 1025;
        v50 = v31;
        v51 = 1025;
        v52 = DWORD1(v31);
        v53 = 1025;
        v54 = DWORD2(v31);
        v55 = 1025;
        v56 = HIDWORD(v31);
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAWD::submitGnssDailyUseMetricsOnDayChange()", "%s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    for (i = *(a1 + 2320); i; i = *i)
    {
      for (j = i[5]; j; j = *j)
      {
        j[3] = 0;
      }
    }

    *(a1 + 2400) = 0;
    if (*(a1 + 2506))
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016C8BF0();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#gnssca,submitGnssDailyUseMetricsOnDayChange,cleared daily usage metrics", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CB1E4();
      }
    }
  }

  *(a1 + 2376) = v2;
  if (*(a1 + 2506) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v14 = (a1 + 2376);
    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v14;
      *buf = 134283521;
      *v58 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#gnssca,submitGnssDailyUseMetricsOnDayChange,Set SecondsIntoDayAtLastGnssSessionStart,%{private}.1lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB2C0();
    }
  }
}

uint64_t *sub_1001BE898(unsigned __int8 *a1, int a2)
{
  v4 = sub_1001B8E0C(a1, 0, a2);
  v5 = a1[2412];
  v6 = a1[2392];
  v7 = v6 ^ 1;
  if (((v5 ^ 1) & 1) != 0 || v7)
  {
    v9 = v5 ^ 1 | v6;
    if (v5 | v7)
    {
      v10 = 4;
    }

    else
    {
      v10 = 3;
    }

    if (v9 == 1)
    {
      v8 = v10;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  sub_1001B8E0C(a1, v8, a2);
  if (a1[2506] == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8A14();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = a1[2412];
      v13 = a1[2392];
      v15[0] = 67174913;
      v15[1] = v12;
      v16 = 1025;
      v17 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#gnssca,initializeGnssDailyUseMetricsAtEventStart,isDisplayOn,%{private}d,isOutsideVisit,%{private}d", v15, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CB3AC();
    }
  }

  return v4;
}

void sub_1001BE9FC(uint64_t a1)
{
  v6 = 0u;
  *(&v5 + 1) = &v6;
  v7 = -1;
  *a1 = 0;
  *(a1 + 2) = 0;
  v2 = (a1 + 16);
  sub_1003C93BC(a1 + 8, *(a1 + 16));
  v3 = v6;
  *(a1 + 8) = *(&v5 + 1);
  *v2 = v3;
  v4 = *(&v6 + 1);
  *(a1 + 24) = *(&v6 + 1);
  if (v4)
  {
    v3[2] = v2;
    *(&v5 + 1) = &v6;
    v6 = 0uLL;
    v3 = 0;
  }

  else
  {
    *(a1 + 8) = v2;
  }

  *(a1 + 32) = v7;
  sub_1003C93BC(&v5 + 8, v3);
  *(a1 + 264) = 0;
}

void sub_1001BEAA4(uint64_t a1)
{
  v2 = *(a1 + 1184);
  if (v2)
  {
    sub_1001B9150(v2);
  }

  v3 = *(a1 + 1192);
  if (v3)
  {
    sub_1010C0528(v3);
  }

  sub_1001B9940(a1);
}

uint64_t sub_1001BEAF0()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = 0;
  v1 = (dword_1026592D0 - 124) > 0x3D || ((1 << (dword_1026592D0 - 124)) & 0x3FF0000000000003) == 0;
  if (v1 && ((dword_1026592D0 - 196) > 0x3E || ((1 << (dword_1026592D0 + 60)) & 0x6000100000001401) == 0) && dword_1026592D0 != 115)
  {
    v0 = sub_1001C0C18();
    sub_10001CAF4(&v3);
    v5 = 0;
    if (sub_10001CB4C(v3, "GnssL5AntTunerContentionWithCell", &v5))
    {
      v0 = v5;
    }

    if (v4)
    {
      sub_100008080(v4);
    }
  }

  return v0 & 1;
}

void sub_1001BEBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1001BEC04()
{
  v5 = -1;
  sub_10001CAF4(buf);
  v0 = sub_10005BBE4(*buf, "GnssForceL5Desire", &v5);
  if (v7)
  {
    sub_100008080(v7);
  }

  if (!v0)
  {
    goto LABEL_12;
  }

  if (v5 >= 3)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "L5Context,unhandled defaults,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A66134(&v5);
    }

LABEL_12:
    v2 = 0;
    v1 = 0;
    return v1 | v2;
  }

  v1 = v5 << 8;
  v2 = dword_100000000;
  return v1 | v2;
}

void sub_1001BED38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001BED58()
{
  result = sub_1001C0C18();
  if (result)
  {
    result = sub_10006FDD0();
    if (result)
    {
      if (sub_10006FEAC())
      {
        return 0;
      }

      else
      {
        return sub_1007192A4() ^ 1;
      }
    }
  }

  return result;
}

uint64_t sub_1001BED94(int *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[676];
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#clgda,getGnssBandAtBasebandCausesL1InterferenceModeAssertion,%d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019468FC(a1);
  }

  return a1[676];
}

uint64_t sub_1001BEE70(uint64_t result)
{
  *result = off_1024B9348;
  *(result + 12) = 0;
  *(result + 8) = 0;
  return result;
}

_BYTE *sub_1001BEE98(_BYTE *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101B77F98();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "feed assistance time when starting GPS session", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B784FC();
  }

  sub_1001BEF40(a1);
  return sub_1001B9F9C(a1);
}

void sub_1001BEF40(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664800))
  {
    v19 = sub_100719CE4();
    v20 = 1.0;
    if (v19)
    {
      v21 = sub_1001B589C();
      v20 = 0.1;
      if (v21)
      {
        v20 = 0.0;
      }
    }

    qword_1026647F8 = *&v20;
    __cxa_guard_release(&qword_102664800);
  }

  v2 = sub_1000081AC();
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0;
  if (off_102633D30(&v24, &v23, &v22))
  {
    v3 = v22 == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = sub_1000081AC();
    v7 = v6 - v2;
    v8 = *&qword_1026647F8;
    v9 = fmax(*&qword_1026647F8, 2.0);
    if (v23 > 0.2)
    {
      v8 = v9;
    }

    if (v7 * 0.5 + v23 * 2.0 >= v8)
    {
      v10 = v7 * 0.5 + v23 * 2.0;
    }

    else
    {
      v10 = v8;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B77E74();
    }

    v11 = (v2 + v6) * 0.5;
    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v36 = v7;
      v37 = 2050;
      v38 = v10;
      v39 = 2050;
      v40 = v11;
      v41 = 2050;
      v42 = v24;
      v43 = 2050;
      v44 = v23;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "referenceTime,delaySec,%{public}.3f,netUnc,%{public}.3f,applicabilityMct,%{public}.3f,referenceTime,%{public}.3f,%{public}.3f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B77E74();
      }

      v25 = 134350080;
      v26 = v7;
      v27 = 2050;
      v28 = v10;
      v29 = 2050;
      v30 = v11;
      v31 = 2050;
      v32 = v24;
      v33 = 2050;
      v34 = v23;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceTime::feedAssistanceTime()", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    if (v23 <= *(a1 + 64))
    {
      if (v24 <= 0.0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B77E74();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
        {
          *buf = 134349312;
          v36 = v24;
          v37 = 2050;
          v38 = v23;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,referenceTime before the 0 epoch for iPhoneTime", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101B782C8(&v24);
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101B77E74();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v36 = v24;
          v37 = 2048;
          v38 = v23;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "feeding,referenceTime,%.6lf,referenceTimeUnc,%.6lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B783E8(&v24);
        }

        sub_100153008(a1 + 24, v24, v10, v11);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101B77E74();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 64);
        *buf = 134349568;
        v36 = v24;
        v37 = 2050;
        v38 = v23;
        v39 = 2050;
        v40 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,uncThreshold,%{public}.3lf", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101B77E74();
        }

        v15 = *(a1 + 64);
        v25 = 134349568;
        v26 = v24;
        v27 = 2050;
        v28 = v23;
        v29 = 2050;
        v30 = v15;
        v5 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceTime::feedAssistanceTime()", "%s\n", v5);
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B77E74();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      v36 = v24;
      v37 = 2050;
      v38 = v23;
      v39 = 1026;
      LODWORD(v40) = v22;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning not feeding,referenceTime,%{public}.6lf,referenceTimeUnc,%{public}.6lf,referenceTimeReliability,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B77E74();
      }

      v25 = 134349568;
      v26 = v24;
      v27 = 2050;
      v28 = v23;
      v29 = 1026;
      LODWORD(v30) = v22;
      v5 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceTime::feedAssistanceTime()", "%s\n", v5);
LABEL_33:
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

uint64_t sub_1001BF630(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 88);
  v86 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    sub_101942F2C();
  }

  v6 = a1;
  if ((*(a1 + 48) & 1) == 0)
  {
    sub_10194284C(qword_1025D4650 == -1);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v8 = qword_1025D4658;
  LODWORD(v2) = *(v6 + 120);
  if (os_log_type_enabled(qword_1025D4658, *(v6 + 120)))
  {
    v9 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v9 = *v9;
    }

    v10 = *(v6 + 4);
    if (v10 > 2)
    {
      v11 = "StateUnknown";
    }

    else
    {
      v11 = (&off_102474410)[v10];
    }

    sub_10000EC00(__p, v11);
    v5 = SHIBYTE(v90);
    v12 = *__p;
    v4 = v93;
    sub_1001B5660(a2, v93);
    v13 = __p;
    if (v5 < 0)
    {
      v13 = v12;
    }

    if (v96 >= 0)
    {
      v14 = v93;
    }

    else
    {
      v14 = *v93;
    }

    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    *&buf[24] = v14;
    _os_log_impl(dword_100000000, v8, v2, "%scurrent_state,%s,event,%s", buf, 0x20u);
    if (v96 < 0)
    {
      operator delete(*v93);
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v59 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v59 = *v59;
    }

    v60 = *(v6 + 4);
    if (v60 > 2)
    {
      v61 = "StateUnknown";
    }

    else
    {
      v61 = (&off_102474410)[v60];
    }

    LODWORD(v2) = *(v6 + 120);
    sub_10000EC00(v93, v61);
    v5 = v96;
    v62 = *v93;
    v4 = v84;
    sub_1001B5660(a2, v84);
    v63 = v93;
    if (v5 < 0)
    {
      v63 = v62;
    }

    if (v85 >= 0)
    {
      v64 = v84;
    }

    else
    {
      v64 = v84[0];
    }

    *__p = 136315650;
    *&__p[4] = v59;
    v88 = 2080;
    v89 = v63;
    v90 = 2080;
    v91 = v64;
    v65 = _os_log_send_and_compose_impl();
    if (v85 < 0)
    {
      operator delete(v84[0]);
    }

    if (v96 < 0)
    {
      operator delete(*v93);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v65);
    if (v65 != buf)
    {
      free(v65);
    }
  }

  v15 = *(v6 + 16);
  if (!v15)
  {
    goto LABEL_28;
  }

  v5 = v6 + 8;
  v16 = *(v6 + 4);
  v17 = v6 + 16;
  do
  {
    if (*(v15 + 32) >= v16)
    {
      v17 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v16));
  }

  while (v15);
  if (v17 == v6 + 16 || v16 < *(v17 + 32))
  {
LABEL_28:
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }
    }

    v19 = qword_1025D4658;
    if (os_signpost_enabled(qword_1025D4658))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "handlerFn != std::end(state_handlers)";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    goto LABEL_159;
  }

  v20 = *(v17 + 40);
  v21 = *(v17 + 48);
  v22 = (*(v6 + 32) + (v21 >> 1));
  if (v21)
  {
    v20 = *(*v22 + v20);
  }

  v23 = v20(v22, a2);
  v2 = v23;
  v83 = v23;
  if (a2 <= 1 && v23 != v86)
  {
    sub_1019429C8();
  }

  if (*(v6 + 88) >= 2u)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v25 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_ERROR, "%sNested invocation of state machine", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101942B38();
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v26 = qword_1025D4658;
  v27 = *(v6 + 120);
  if (os_log_type_enabled(qword_1025D4658, v27))
  {
    v28 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v28 = *v28;
    }

    if (v2 > 2)
    {
      v29 = "StateUnknown";
    }

    else
    {
      v29 = (&off_102474410)[v2];
    }

    sub_10000EC00(buf, v29);
    if (buf[23] >= 0)
    {
      v30 = buf;
    }

    else
    {
      v30 = *buf;
    }

    *__p = 136315394;
    *&__p[4] = v28;
    v88 = 2080;
    v89 = v30;
    _os_log_impl(dword_100000000, v26, v27, "%snewState,%s", __p, 0x16u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v66 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v66 = *v66;
    }

    if (v2 > 2)
    {
      v67 = "StateUnknown";
    }

    else
    {
      v67 = (&off_102474410)[v2];
    }

    sub_10000EC00(__p, v67);
    if (v90 >= 0)
    {
      v68 = __p;
    }

    else
    {
      v68 = *__p;
    }

    *v93 = 136315394;
    *&v93[4] = v66;
    v94 = 2080;
    v95 = v68;
    v69 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v90) < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v69);
    if (v69 != buf)
    {
      free(v69);
    }
  }

  if (v2 != v86)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v31 = qword_1025D4658;
    v32 = *(v6 + 120);
    if (os_log_type_enabled(qword_1025D4658, v32))
    {
      v33 = (v6 + 96);
      if (*(v6 + 119) < 0)
      {
        v33 = *v33;
      }

      if (v86 > 2)
      {
        v34 = "StateUnknown";
      }

      else
      {
        v34 = (&off_102474410)[v86];
      }

      sub_10000EC00(__p, v34);
      v35 = SHIBYTE(v90);
      v36 = *__p;
      sub_10000EC00(v93, "Exit");
      v37 = __p;
      if (v35 < 0)
      {
        v37 = v36;
      }

      if (v96 >= 0)
      {
        v38 = v93;
      }

      else
      {
        v38 = *v93;
      }

      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = v37;
      *&buf[22] = 2080;
      *&buf[24] = v38;
      _os_log_impl(dword_100000000, v31, v32, "%soldState,%s,event,%s", buf, 0x20u);
      if (v96 < 0)
      {
        operator delete(*v93);
      }

      if (SHIBYTE(v90) < 0)
      {
        operator delete(*__p);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_85;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v4 = (v6 + 96);
    if (*(v6 + 119) < 0)
    {
      v4 = *v4;
    }

    if (v86 <= 2)
    {
      v70 = (&off_102474410)[v86];
LABEL_161:
      sub_10000EC00(v93, v70);
      v73 = v96;
      v74 = *v93;
      sub_10000EC00(v84, "Exit");
      v75 = v93;
      if (v73 < 0)
      {
        v75 = v74;
      }

      if (v85 >= 0)
      {
        v76 = v84;
      }

      else
      {
        v76 = v84[0];
      }

      *__p = 136315650;
      *&__p[4] = v4;
      v88 = 2080;
      v89 = v75;
      v90 = 2080;
      v91 = v76;
      v77 = _os_log_send_and_compose_impl();
      if (v85 < 0)
      {
        operator delete(v84[0]);
      }

      if (v96 < 0)
      {
        operator delete(*v93);
      }

      sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v77);
      if (v77 != buf)
      {
        free(v77);
      }

LABEL_85:
      v39 = *(v6 + 32);
      *buf = &v86;
      v40 = sub_1001B58E4(v5, &v86);
      v41 = v40[5];
      v42 = v40[6];
      v43 = (v39 + (v42 >> 1));
      if (v42)
      {
        v41 = *(*v43 + v41);
      }

      v44 = v41(v43, 1);
      if (v44 != v86)
      {
        sub_101942C4C();
      }

      *(v6 + 4) = v2;
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v45 = p_info[203];
      v46 = *(v6 + 120);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v47 = *v47;
        }

        if (v2 > 2)
        {
          v48 = "StateUnknown";
        }

        else
        {
          v48 = (&off_102474410)[v2];
        }

        sub_10000EC00(__p, v48);
        v49 = SHIBYTE(v90);
        v50 = *__p;
        sub_10000EC00(v93, "Enter");
        v51 = __p;
        if (v49 < 0)
        {
          v51 = v50;
        }

        if (v96 >= 0)
        {
          v52 = v93;
        }

        else
        {
          v52 = *v93;
        }

        *buf = 136315650;
        *&buf[4] = v47;
        *&buf[12] = 2080;
        *&buf[14] = v51;
        *&buf[22] = 2080;
        *&buf[24] = v52;
        _os_log_impl(dword_100000000, v45, v46, "%snewState,%s,event,%s", buf, 0x20u);
        if (v96 < 0)
        {
          operator delete(*v93);
        }

        if (SHIBYTE(v90) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v71 = (v6 + 96);
        if (*(v6 + 119) < 0)
        {
          v71 = *v71;
        }

        if (v2 > 2)
        {
          v72 = "StateUnknown";
        }

        else
        {
          v72 = (&off_102474410)[v2];
        }

        sub_10000EC00(v93, v72);
        v78 = v96;
        v79 = *v93;
        sub_10000EC00(v84, "Enter");
        v80 = v93;
        if (v78 < 0)
        {
          v80 = v79;
        }

        if (v85 >= 0)
        {
          v81 = v84;
        }

        else
        {
          v81 = v84[0];
        }

        *__p = 136315650;
        *&__p[4] = v71;
        v88 = 2080;
        v89 = v80;
        v90 = 2080;
        v91 = v81;
        v82 = _os_log_send_and_compose_impl();
        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (v96 < 0)
        {
          operator delete(*v93);
        }

        sub_100152C7C("Generic", 1, 0, 2, "State CLStateMachine<CLGnssController>::handleEvent(Event) [T = CLGnssController]", "%s\n", v82);
        if (v82 != buf)
        {
          free(v82);
        }
      }

      v53 = *(v6 + 32);
      *buf = &v83;
      v54 = sub_1001B58E4(v5, &v83);
      v55 = v54[5];
      v56 = v54[6];
      v57 = (v53 + (v56 >> 1));
      if (v56)
      {
        v55 = *(*v57 + v55);
      }

      v2 = v55(v57, 0);
      if (v2 != v83)
      {
        sub_101942DBC();
      }

      goto LABEL_109;
    }

LABEL_160:
    v70 = "StateUnknown";
    goto LABEL_161;
  }

LABEL_109:
  --*(v6 + 88);
  return v2;
}

void sub_1001C0488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C04E8(uint64_t a1, signed int a2)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    goto LABEL_30;
  }

  v5 = a1 + 64;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 != a1 + 64 && *(v5 + 32) <= a2 && (v6 = *(v5 + 40)) != 0)
  {
    dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    v8 = *(a1 + 120);
    if (os_log_type_enabled(qword_1025D4658, v8))
    {
      v9 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v9 = *v9;
      }

      sub_1001B5660(a2, __p);
      if (v28 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v9;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(dword_100000000, v7, v8, "%scancel timer,event,%s", buf, 0x16u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v11 = *v11;
      }

      sub_1001B5660(a2, buf);
      if (v22 >= 0)
      {
        v12 = buf;
      }

      else
      {
        v12 = *buf;
      }

      v23 = 136315394;
      v24 = v11;
      v25 = 2080;
      v26 = v12;
      v13 = _os_log_send_and_compose_impl();
      if (v22 < 0)
      {
        operator delete(*buf);
      }

LABEL_51:
      sub_100152C7C("Generic", 1, 0, 2, "void CLStateMachine<CLGnssController>::cancelTimeoutEvent(Event) [T = CLGnssController]", "%s\n", v13);
      if (v13 != __p)
      {
        free(v13);
      }
    }
  }

  else
  {
LABEL_30:
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v15 = *v15;
      }

      sub_1001B5660(a2, __p);
      if (v28 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v15;
      v20 = 2080;
      v21 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning,%s,cancel timer,notFound, event,%s", buf, 0x16u);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v17 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v17 = *v17;
      }

      sub_1001B5660(a2, buf);
      if (v22 >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      v23 = 136315394;
      v24 = v17;
      v25 = 2080;
      v26 = v18;
      v13 = _os_log_send_and_compose_impl();
      if (v22 < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_51;
    }
  }
}

uint64_t sub_1001C0938(uint64_t a1)
{
  v2 = [objc_msgSend(*a1 "vendor")];
  [v2 registerDelegate:sub_1000736A8(a1 + 2544) inSilo:{objc_msgSend(*a1, "silo")}];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C6EA0;
  v8[3] = &unk_1024FA0C8;
  v8[4] = a1;
  [v2 fetchLocationClientKeysWithReply:v8];
  if (!*(a1 + 2520))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#gnssawd,creating fOrientationDispatcher,onSessionStart()", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CA694();
    }

    [*a1 silo];
    operator new();
  }

  result = sub_100023B30();
  if ((result & 0x80) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016C8BF0();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssawd,subscribing to device orientation,onSessionStart(),non-alwaysOnOrientation device", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016CA778();
    }

    v5 = sub_1003EA530();
    return sub_100178498(v5, 0, *(a1 + 2520), -1.0);
  }

  return result;
}

id sub_1001C0B9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1001B9078(v1);
  v2 = v1[127];
  if (v2)
  {
    sub_1001C873C(v2);
  }

  v3 = v1[129];
  if (v3)
  {
    sub_1001C8D48(v3);
  }

  v4 = v1[132];
  if (v4)
  {
    sub_1001C42D0(v4);
  }

  v5 = v1[126];
  if (v5)
  {
    sub_1001C53A4(v5);
  }

  result = v1[130];
  if (result)
  {

    return sub_1001C54B4(result);
  }

  return result;
}

uint64_t sub_1001C0C18()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = 0;
  switch(dword_1026592D0)
  {
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 188:
    case 190:
    case 191:
    case 196:
    case 206:
    case 208:
    case 214:
    case 216:
    case 222:
    case 224:
    case 226:
    case 228:
    case 230:
    case 232:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
    case 243:
    case 245:
    case 247:
    case 249:
    case 251:
    case 253:
    case 255:
    case 256:
    case 258:
      goto LABEL_6;
    case 186:
    case 187:
    case 189:
    case 192:
    case 193:
    case 194:
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 207:
    case 209:
    case 210:
    case 211:
    case 212:
    case 213:
    case 215:
    case 217:
    case 218:
    case 219:
    case 220:
    case 221:
    case 223:
    case 225:
    case 227:
    case 229:
    case 231:
    case 233:
    case 241:
    case 242:
    case 244:
    case 246:
    case 248:
    case 250:
    case 252:
    case 254:
    case 257:
      break;
    default:
      if ((dword_1026592D0 - 115) <= 0xA && ((1 << (dword_1026592D0 - 115)) & 0x601) != 0)
      {
LABEL_6:
        v0 = 1;
      }

      break;
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "GnssSupportsL5", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0;
  }

  return v3 & 1;
}

void sub_1001C0D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C0E9C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9348;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001C0EF0(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v4 = (*(*a1 + 864))(a1, v3);
  CFRelease(v3);
  return v4;
}

uint64_t sub_1001C0F70(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

void sub_1001C1024(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 824);
    v6 = sub_1001B4D38(a1 + 1700);
    v7 = *(a2 + 84);
    v8 = *(a2 + 828);
    *buf = 67109888;
    *v96 = v5;
    *&v96[4] = 1024;
    *&v96[6] = v6;
    LOWORD(v97) = 1024;
    *(&v97 + 2) = v7;
    HIWORD(v97) = 1024;
    *v98 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gpsd,injectPosition,tightlyCoupled,%d,inEmergency,%d,confidence,%d,assistanceType,%d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101775390(a2, a1, v9, v10, v11, v12, v13, v14);
  }

  if (!sub_1001B4D38(a1 + 1700) && *(a1 + 1722) == 1 && *(a1 + 1723) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#gpsd,dropping airborne pos asst", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017754D4();
    }

    return;
  }

  if (*(a2 + 828) == 2 && !sub_10071B104())
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v28 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "#gpsd,dropping TEPA on this platform", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017755B8();
    }

    return;
  }

  v16 = (a2 + 84);
  v17 = *(a2 + 824);
  v18 = *(a2 + 84) > 0x41u;
  if (!(v17 & 1 | !sub_1001B4D38(a1 + 1700) | v18))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v25 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_1001B4D38(a1 + 1700);
      v27 = *v16;
      *buf = 67109376;
      *v96 = v26;
      *&v96[4] = 1024;
      *&v96[6] = v27;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#gpsd,Not feeding reference position,inCellularEmergency,%d,confidence,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10177569C(a1 + 1700, v16);
    }

    return;
  }

  sub_1001324C4(v73);
  if (!sub_100132484(8u))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  v74 = 8;
  v76 |= 0xCu;
  v19 = v75;
  if (!v75)
  {
    operator new();
  }

  v20 = sub_1001B4E38(*(a2 + 828));
  if (!sub_10041ECF8(v20))
  {
    __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9430, "::proto::gnss::PositionAssistType_IsValid(value)");
  }

  v21 = *(v19 + 36);
  *(v19 + 16) = v20;
  v22 = 504;
  if (*(a2 + 828) == 1)
  {
    v22 = 512;
  }

  ++*(a1 + v22);
  *(v19 + 36) = v21 | 3;
  v23 = *(v19 + 8);
  if (!v23)
  {
    operator new();
  }

  if (*(a2 + 132) == 1)
  {
    *(v23 + 96) |= 3u;
    v24 = *(a2 + 4);
  }

  else
  {
    if (*(a2 + 136) != 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v29 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#gpsd,Require WGS84 coordinates for injection", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017700B0(buf);
        LOWORD(v77) = 0;
        v72 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v72);
        if (v72 != buf)
        {
          free(v72);
        }
      }

      goto LABEL_49;
    }

    *(v23 + 96) |= 3u;
    v24 = *(a2 + 100);
  }

  *(v23 + 8) = v24;
LABEL_49:
  v30 = *(v23 + 96);
  *(v23 + 24) = *(a2 + 28);
  *(v23 + 32) = *(a2 + 476);
  v31 = *(a2 + 36);
  *(v23 + 96) = v30 | 0x1C;
  *(v23 + 40) = v31;
  v32 = *(a2 + 200);
  if (v32 <= 0.0 || (v33 = *(a2 + 204), v33 <= 0.0) || (v34 = *(a2 + 208), v34 < 0.0) || v34 > 180.0)
  {
    v37 = sqrt(*(a2 + 20) * (*(a2 + 20) * 0.5));
    *(v23 + 48) = v37;
    *(v23 + 56) = v37;
    v36 = 0.0;
  }

  else
  {
    v35.f64[0] = v32;
    v35.f64[1] = v33;
    *(v23 + 48) = vdivq_f64(v35, vdupq_n_s64(0x400399999999999AuLL));
    v36 = v34;
  }

  *(v23 + 96) = v30 | 0xFC;
  *(v23 + 64) = v36;
  v38 = *(a2 + 808);
  if (v38)
  {
    v39 = sub_1001B4D48(v38);
    if (!sub_1001348E0(v39))
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v40 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "#Warning,#gpsd,unset asst pos reliability", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      LOWORD(v77) = 0;
      v71 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v71);
      if (v71 != buf)
      {
        free(v71);
      }
    }

    if (!sub_1001348E0(0xAu))
    {
LABEL_93:
      __assert_rtn("set_reliability", "GnssTypes.pb.h", 1975, "::proto::gnss::Reliability_IsValid(value)");
    }

    v39 = 10;
  }

  v41 = *(v23 + 96);
  *(v23 + 76) = v39;
  v42 = *(a2 + 96);
  *(v23 + 96) = v41 | 0x300;
  *(v23 + 72) = v42;
  v44 = *(a2 + 36) > 0.0 && *(a2 + 828) != 2;
  v45 = *(v19 + 36) | 4;
  *(v19 + 36) = v45;
  *(v19 + 20) = v44;
  v46 = *(a2 + 504);
  if (v46 < 1.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v47 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a2 + 816);
      *buf = 134349312;
      *v96 = v46;
      *&v96[8] = 2050;
      v97 = v48;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "#Warning,#gpsd,unset asst pos time,%{public}.3f,age,%{public}.3f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017700B0(buf);
      v69 = *(a2 + 816);
      v77 = 134349312;
      v78 = v46;
      v79 = 2050;
      v80 = v69;
      v70 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }

    v46 = sub_1000081AC();
    v45 = *(v19 + 36);
  }

  *(v19 + 36) = v45 | 8;
  *(v19 + 24) = (v46 * 1000000000.0);
  if (*(a1 + 1264) == 1)
  {
    if ((*(a1 + 208) & 0x80000000) != 0)
    {
      *(a1 + 1184) = *(a2 + 808);
      *(a1 + 1192) = *(a2 + 20);
      *(a1 + 1200) = *(a2 + 828);
      *(a1 + 1248) = *(a2 + 4);
    }

    *(a1 + 1264) = 0;
  }

  if (*(a2 + 96) == 4)
  {
    *(a1 + 1204) = 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v49 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v50 = *(v23 + 8);
    v51 = *(v23 + 16);
    v52 = *(v23 + 24);
    v54 = *(v23 + 40);
    v53 = *(v23 + 48);
    v55 = *(a2 + 816);
    v56 = *(a2 + 808);
    v57 = *(a2 + 96);
    v58 = *(a2 + 828);
    *buf = 134547713;
    *v96 = v50;
    *&v96[8] = 2053;
    v97 = v51;
    *v98 = 2048;
    *&v98[2] = v52;
    v99 = 2048;
    v100 = v53;
    v101 = 2048;
    v102 = v54;
    v103 = 2048;
    v104 = v55;
    v105 = 1024;
    v106 = v56;
    v107 = 1024;
    v108 = v57;
    v109 = 1024;
    v110 = v58;
    _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#gpsd,feeding reference location,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,alt,%.3lf,hunc,%.3lf,vunc,%.3lf,age,%f,rel,%d,locType,%d,assistType,%d", buf, 0x50u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017700B0(buf);
    v59 = *(v23 + 8);
    v60 = *(v23 + 16);
    v61 = *(v23 + 24);
    v63 = *(v23 + 40);
    v62 = *(v23 + 48);
    v64 = *(a2 + 816);
    v65 = *(a2 + 808);
    v66 = *(a2 + 96);
    v67 = *(a2 + 828);
    v77 = 134547713;
    v78 = v59;
    v79 = 2053;
    v80 = v60;
    v81 = 2048;
    v82 = v61;
    v83 = 2048;
    v84 = v62;
    v85 = 2048;
    v86 = v63;
    v87 = 2048;
    v88 = v64;
    v89 = 1024;
    v90 = v65;
    v91 = 1024;
    v92 = v66;
    v93 = 1024;
    v94 = v67;
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectPositionAssistance(const CLGnssPositionAssistanceData &)", "%s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }

  sub_10013256C(a1, v73);
  sub_100133DCC(v73);
}

void sub_1001C1B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

void sub_1001C1B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _os_activity_create(dword_100000000, "CL: Incoming message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CLConnectionMessage::name(*a3);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v10 = *(a2 + 72);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2082;
    v24 = v9;
    v25 = 2050;
    v26 = a2;
    v27 = 1026;
    v28 = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Incoming message, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s, this:%{public}p, registrationReceived:%{public}hhd}", buf, 0x36u);
  }

  if ((*(a2 + 72) & 1) != 0 || *(a1 + 32) == 1)
  {
    v11 = sub_1001C1E08(a2);
    v12 = *(a3 + 8);
    v14 = *a3;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, v11, &v14);
    if (v15)
    {
      sub_100008080(v15);
    }
  }

  os_activity_scope_leave(&state);
}

void sub_1001C1DA4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1001C1B94(a1 + 8, v3, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }
}

void sub_1001C1DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001C1E08(uint64_t a1)
{
  *buf = &v4;
  v1 = sub_1000583C0((a1 + 288), &v4)[3];
  if (!v1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "28CLPlaceInferenceSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating subscription due to demand, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    operator new();
  }

  if (!result)
  {
    sub_1019F19A4();
  }

  return result;
}

uint64_t sub_1001C2010(uint64_t a1)
{
  sub_1001C3550(a1);
  if (*(a1 + 43) == 1)
  {
    v2 = sub_100BCAA84(a1);
    [*(*v2 + 16) register:*(*v2 + 8) forNotification:3 registrationInfo:0];
    v3 = *(*sub_100BCAA84(a1) + 16);
    LOBYTE(__p) = 0;
    v9 = 0;
    [v3 syncgetStartScanWithType:10 lowPriority:0 lowLatency:*(a1 + 104) == 7 passive:0 requester:"placeinference" channels:&__p];
    if (v9 == 1)
    {
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }
    }
  }

  [*(a1 + 80) setNextFireDelay:*(a1 + 88)];
  *(a1 + 42) = 1;
  if (*(a1 + 88) == 40.0)
  {
    sub_10001CAF4(&__p);
    v4 = __p;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100116D68(v4, "PlaceInferenceTimestampOfLastBestLocationRequestForFidelityLowWithPreciseLocation", &Current);
    if (v8)
    {
      sub_100008080(v8);
    }
  }

  return sub_1001C3758(a1);
}

void sub_1001C2124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_1018CD5F8(&a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C2158(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v6 = off_10249C748;
  *(v6 + 41) = 0x10000;
  *(v6 + 45) = 0;
  *(v6 + 48) = 0xBFF0000000000000;
  *(v6 + 56) = 0;
  *(a1 + 64) = objc_alloc_init(CLPlaceInferenceSubscriptionAdapter);
  *(a1 + 80) = [objc_msgSend(*(a1 + 8) "silo")];
  *(a1 + 112) = 0;
  *(a1 + 120) = objc_alloc_init(NSMutableArray);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = objc_alloc_init(NSMutableArray);
  *(a1 + 160) = off_10245B020;
  operator new();
}

void sub_1001C244C()
{
  if (*(v0 + 423) < 0)
  {
    operator delete(*(v0 + 400));
  }

  if (*(v0 + 287) < 0)
  {
    operator delete(*v2);
  }

  sub_1001130E4(v1);
}

void sub_1001C2520(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  [*(a1 + 8) silo];
  if (*(a1 + 41) == 1)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dsa #warning Already running a place inference request, but asked to start again}", buf, 0x12u);
    }

    goto LABEL_63;
  }

  *(a1 + 41) = 1;
  sub_10000EC00(buf, "com.apple.locationd.place_inference");
  if (sub_1001C2F40(a1))
  {
    v6 = 0;
  }

  else
  {
    sub_10000EC00(v34, "com.apple.locationd.emergencyplace_inference");
    v6 = sub_1001C2F40(a1) ^ 1;
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }
  }

  if (SBYTE3(v33) < 0)
  {
    operator delete(*buf);
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6)
  {
LABEL_12:
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v7 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 24);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v32 = 2114;
      v33 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#dsa Client does not have appropriate entitlement to get place inference, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }
    }

    v9 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v10 = *(a1 + 24);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v32 = 2114;
      v33 = v10;
      _os_signpost_emit_with_name_impl(dword_100000000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dsa Client does not have appropriate entitlement to get place inference", "{msg%{public}.0s:#dsa Client does not have appropriate entitlement to get place inference, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

LABEL_19:
    sub_100BCBD60(a1, [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:0]);
    goto LABEL_63;
  }

  v11 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessagePlaceInferenceFidelityPolicyKey"];
  if (v11)
  {
    if (sub_100030B7C(a1, 4))
    {
      v12 = [v11 unsignedIntValue];
      v13 = v12;
      switch(v12)
      {
        case 6u:
          v24 = *(a1 + 56);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100312454;
          v30[3] = &unk_1024571C0;
          v30[4] = a1;
          [v24 fetchCachedPlaceInferencesWithReply:v30];
          goto LABEL_63;
        case 5u:
          *(a1 + 112) = 1;
          break;
        case 4u:
          sub_10000EC00(buf, "com.apple.locationd.emergencyplace_inference");
          v14 = sub_1001C2F40(a1);
          if (SBYTE3(v33) < 0)
          {
            operator delete(*buf);
          }

          if ((v14 & 1) == 0)
          {
            if (qword_1025D4790 != -1)
            {
              sub_101A11E98();
            }

            v15 = qword_1025D4798;
            if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 24);
              *buf = 138543362;
              *&buf[4] = v16;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#dsa client '%{public}@' not authorized for Emergency Fidelity policy", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A14CBC(buf);
              v28 = *(a1 + 24);
              LODWORD(v34[0]) = 138543362;
              *(v34 + 4) = v28;
              v29 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v29);
              if (v29 != buf)
              {
                free(v29);
              }
            }

            goto LABEL_19;
          }

          break;
      }

      *(a1 + 136) = objc_alloc_init(NSDate);
      *(a1 + 104) = v13;
      *(a1 + 184) = v13;
      sub_1001C2F68(a1);
      sub_1001C2010(a1);
      goto LABEL_63;
    }

    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 24);
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#dsa client '%{public}@' not authorized for location; not starting yet in handleRequestPlaceInference", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A14CBC(buf);
      v25 = *(a1 + 24);
      LODWORD(v34[0]) = 138543362;
      *(v34 + 4) = v25;
      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    sub_100BCBD60(a1, [NSError errorWithDomain:kCLErrorDomain code:1 userInfo:0]);
    *(a1 + 520) = 6;
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v21 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#era CA result - kERAResultErrorLSOff", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A14CBC(buf);
      LOWORD(v34[0]) = 0;
      v27 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    *(a1 + 328) = 6;
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v22 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "#dsa AWD result - kDSAResultErrorLSOff", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A14CBC(buf);
      LOWORD(v34[0]) = 0;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLPlaceInferenceSubscription::handleRequestPlaceInference(std::shared_ptr<CLConnectionMessage>)", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v17 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#dsa Place inference request is missing required field: fidelityPolicy}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }
    }

    v18 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dsa Place inference request is missing required field: fidelityPolicy", "{msg%{public}.0s:#dsa Place inference request is missing required field: fidelityPolicy}", buf, 0x12u);
    }

    sub_100BCBD60(a1, [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:0]);
  }

LABEL_63:
}

void sub_1001C2F68(uint64_t a1)
{
  [*(a1 + 8) silo];
  if (([*(a1 + 16) isAuthorizedForServiceType:12] & 1) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 24);
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v20 = 2114;
      v21 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dsa client is authorized only for coarse, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    *(a1 + 72) = 2;
    *(a1 + 88) = 0x3FB999999999999ALL;
    *(a1 + 96) = 4;
    *(a1 + 43) = 256;
    goto LABEL_48;
  }

  v2 = *(a1 + 104);
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        *(a1 + 72) = 1;
        *(a1 + 88) = 0x3FF8000000000000;
        *(a1 + 96) = 5;
LABEL_47:
        *(a1 + 43) = 1;
        goto LABEL_48;
      }

      *(a1 + 72) = 0;
      v5 = 0x4014000000000000;
LABEL_46:
      *(a1 + 88) = v5;
      *(a1 + 96) = 7;
      goto LABEL_47;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      *(a1 + 72) = 1;
      *(a1 + 88) = 0x3FB999999999999ALL;
      *(a1 + 96) = 4;
    }

    else
    {
      *(a1 + 72) = 1;
      *(a1 + 88) = 0x3FB999999999999ALL;
      *(a1 + 96) = 0;
    }

LABEL_43:
    *(a1 + 43) = 0;
    goto LABEL_48;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      *(a1 + 72) = 0;
      *(a1 + 88) = 0x4014000000000000;
      *(a1 + 96) = 7;
      *(a1 + 43) = 1;
      *(a1 + 45) = 1;
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_10001CAF4(buf);
    v18 = 0.0;
    if (sub_1000B9370(*buf, "PlaceInferenceTimestampOfLastBestLocationRequestForFidelityLowWithPreciseLocation", &v18))
    {
      v7 = v18;
    }

    else
    {
      v7 = -1.0;
    }

    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (qword_1025D4790 != -1)
    {
      sub_101A11E98();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 112);
      *buf = 134217984;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#placeInfer fFidelityLowWithPreciseLocationQueriesCount = %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A12180();
    }

    v10 = *(a1 + 112);
    if (v10 == 2)
    {
      if (Current - v7 <= 43200.0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }

        v17 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "#placeInfer no GPS budget remaining, configuring a cached location request", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A12274();
        }

        *(a1 + 72) = 1;
        *(a1 + 88) = 0x4008000000000000;
        *(a1 + 96) = 24;
        *(a1 + 43) = 0;
        *(a1 + 45) = 0;
        v12 = 3;
        goto LABEL_79;
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      v14 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#placeInfer GPS budget is still available, configuring a smoothed GPS query", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A12358();
      }

      *(a1 + 72) = 0;
      v15 = 0x4044000000000000;
    }

    else
    {
      if (v10 == 1)
      {
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }

        v11 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#placeInfer configuring a high accuracy LOI query", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A1243C();
        }

        v12 = 1;
        *(a1 + 72) = 1;
        *(a1 + 88) = 0x4008000000000000;
        *(a1 + 96) = 8;
        *(a1 + 43) = 0;
        *(a1 + 45) = 0;
        goto LABEL_79;
      }

      if (qword_1025D4790 != -1)
      {
        sub_101A11E98();
      }

      v16 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#placeInfer configuring an extra GPS request", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A12520();
      }

      *(a1 + 72) = 0;
      v15 = 0x4034000000000000;
    }

    *(a1 + 88) = v15;
    *(a1 + 96) = 26;
    *(a1 + 43) = 0;
    *(a1 + 45) = 0;
    v12 = 2;
LABEL_79:
    *(a1 + 224) = v12;
    return;
  }

  switch(v2)
  {
    case 6:
      *(a1 + 72) = 1;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      goto LABEL_43;
    case 7:
      *(a1 + 72) = 0;
      v5 = 0x3FF8000000000000;
      goto LABEL_46;
    case 8:
      *(a1 + 72) = 1;
      *(a1 + 88) = 0x3FF8000000000000;
      *(a1 + 96) = 1;
      *(a1 + 43) = 1;
LABEL_48:
      *(a1 + 45) = 0;
      return;
  }

LABEL_50:
  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v13 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "#dsa Please update initializePlaceInferencesOptions", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101A12604();
  }
}

void sub_1001C3530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

id sub_1001C3550(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v2 = sub_1001C3698(a1);
    [*(*v2 + 16) unregister:*(*v2 + 8) forNotification:*(a1 + 72)];
    v3 = sub_1001C35D8(a1);
  }

  else
  {
    v4 = sub_1001C35D8(a1);
    [*(*v4 + 16) unregister:*(*v4 + 8) forNotification:*(a1 + 72)];
    v3 = sub_1001C3698(a1);
  }

  v6 = *(*v3 + 8);
  v5 = *(*v3 + 16);
  v7 = *(a1 + 72);

  return [v5 register:v6 forNotification:v7 registrationInfo:0];
}

uint64_t sub_1001C35D8(uint64_t a1)
{
  if (!*(a1 + 656))
  {
    sub_1000EE0B0();
  }

  return a1 + 656;
}

uint64_t sub_1001C3698(uint64_t a1)
{
  if (!*(a1 + 648))
  {
    sub_1000EE2FC();
  }

  return a1 + 648;
}

uint64_t sub_1001C3794@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 42))
  {
    v3 = result;
    result = sub_1001C3948(*(result + 72));
    if ((v4 & 1) == 0)
    {
      if (qword_1025D4790 != -1)
      {
        sub_101A11D98();
      }

      v5 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        v6 = *(v3 + 72);
        v9 = 68289282;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2050;
        v14 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#dsa Couldn't convert location notification to accuracy, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", &v9, 0x1Cu);
        if (qword_1025D4790 != -1)
        {
          sub_101A11E98();
        }
      }

      v7 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v8 = *(v3 + 72);
        v9 = 68289282;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2050;
        v14 = v8;
        _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dsa Couldn't convert location notification to accuracy", "{msg%{public}.0s:#dsa Couldn't convert location notification to accuracy, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", &v9, 0x1Cu);
      }

      result = 0xBFF0000000000000;
    }

    *a2 = 1;
    *(a2 + 8) = result;
    *(a2 + 16) = 0;
    *(a2 + 23) = 0;
    *(a2 + 32) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1001C3948(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_101D1B710[a1];
  }
}

void sub_1001C3970(uint64_t a1, int *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A11CBC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPlaceInferenceSubscription::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A11CD0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPlaceInferenceSubscription::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001C3B3C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001C3B3C(uint64_t a1, uint64_t a2, int *a3, __int128 *a4)
{
  if (*a3 < 2)
  {
    v6 = [CLLocation alloc];
    v7 = a4[7];
    v26 = a4[6];
    v27 = v7;
    v28[0] = a4[8];
    *(v28 + 12) = *(a4 + 140);
    v8 = a4[3];
    v22 = a4[2];
    v23 = v8;
    v9 = a4[5];
    v24 = a4[4];
    v25 = v9;
    v10 = a4[1];
    v20 = *a4;
    v21 = v10;
    v11 = [v6 initWithClientLocation:&v20];
LABEL_5:
    sub_1001C3CDC(a1, v11);
    return;
  }

  if (*a3 == 2)
  {
    v12 = [CLLocation alloc];
    v13 = a4[7];
    v26 = a4[6];
    v27 = v13;
    v28[0] = a4[8];
    *(v28 + 12) = *(a4 + 140);
    v14 = a4[3];
    v22 = a4[2];
    v23 = v14;
    v15 = a4[5];
    v24 = a4[4];
    v25 = v15;
    v16 = a4[1];
    v20 = *a4;
    v21 = v16;
    v11 = [v12 initWithClientLocation:&v20 coarseMetaData:*(a4 + 165)];
    goto LABEL_5;
  }

  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v18 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v19 = *a3;
    LODWORD(v20) = 67240192;
    DWORD1(v20) = v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#dsa received unhandled notification %{public, location:CLLocationProvider_Type::Notification}d In onLocationNotification", &v20, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A14E10(a3);
  }
}

id sub_1001C3CDC(uint64_t a1, void *a2)
{
  [*(a1 + 120) addObject:a2];
  if ([a2 type] == 1)
  {
    ++*(a1 + 196);
  }

  else if ([a2 type] == 4)
  {
    ++*(a1 + 200);
  }

  else if ([a2 type] == 6)
  {
    ++*(a1 + 204);
  }

  else
  {
    ++*(a1 + 208);
  }

  ++*(a1 + 192);
  v4 = *(a1 + 144);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_12;
  }

  [v4 horizontalAccuracy];
  v6 = v5;
  [a2 horizontalAccuracy];
  if (v6 > v7)
  {
    v8 = *(a1 + 144);
LABEL_12:

    *(a1 + 144) = a2;
  }

  result = [a2 horizontalAccuracy];
  if (v10 < 200.0)
  {
    if ([a2 type] == 1 || objc_msgSend(a2, "type") == 4 || objc_msgSend(a2, "type") == 11 || (result = objc_msgSend(a2, "type"), result == 13))
    {

      result = a2;
      *(a1 + 128) = result;
    }
  }

  return result;
}

void sub_1001C3E2C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1016ADBCC();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#imag,start", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016ADEB0();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  while (v3 != v4)
  {
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    v3 += 48;
  }

  *(a1 + 64) = 0;
  *(a1 + 82) = 0;
  *(a1 + 80) = 0;
  *(a1 + 73) = 1;
  *(a1 + 76) = 0;
}

_BYTE *sub_1001C3EF8(_BYTE *result)
{
  if ((result[624] & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4650 != -1)
    {
      sub_10199A148();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering motion activity", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10199A7F8();
    }

    [*(*(v1 + 13) + 16) register:*(*(v1 + 13) + 8) forNotification:1 registrationInfo:0];
    if ((v1[466] & 1) == 0)
    {
      [*(*(v1 + 14) + 16) register:*(*(v1 + 14) + 8) forNotification:0 registrationInfo:0];
    }

    [*(*(v1 + 15) + 16) register:*(*(v1 + 15) + 8) forNotification:2 registrationInfo:0];
    result = [*(*(v1 + 10) + 16) register:*(*(v1 + 10) + 8) forNotification:2 registrationInfo:0];
    v1[624] = 1;
  }

  return result;
}

uint64_t sub_1001C3FFC()
{
  if (qword_10265BAB8 != -1)
  {
    sub_10198BE14();
  }

  return qword_102637710;
}

double sub_1001C403C(uint64_t a1, int a2, uint64_t *a3)
{
  if (a2)
  {
    if (qword_1025D4300 != -1)
    {
      sub_100311618();
    }

    v3 = qword_1025D4308;
    if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Unrecognized notification", &v10, 2u);
    }

    v4 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_10198BE28();
    }
  }

  else
  {
    v4 = 0;
    if (sub_1001C4EAC(a1))
    {
      if (qword_1025D4300 != -1)
      {
        sub_100311618();
      }

      v7 = qword_1025D4308;
      if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_INFO))
      {
        v8 = *a3;
        v10 = 134349056;
        v11 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Setting accelerometer update interval to %{public}f", &v10, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10198BF14(a3);
      }

      sub_10017A1F4(*(a1 + 40), *a3);
      v4 = *a3;
    }
  }

  return *&v4;
}

void sub_1001C41E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1001C4280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C42D0(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1002981A0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "DEM,start", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016FFA88();
  }

  if ((*(a1 + 153) & 1) == 0)
  {
    [*(*(a1 + 160) + 16) register:*(*(a1 + 160) + 8) forNotification:4 registrationInfo:0];
    if (qword_1025D4650 != -1)
    {
      sub_1016FF8FC();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "DEM,TBA,registered for TBA notifications", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016FFB6C();
    }

    *(a1 + 153) = 1;
  }

  *(a1 + 114) = 1;
}

BOOL sub_1001C4404(_BYTE *a1, char a2)
{
  a1[84] = a2;
  v2 = *a1;
  v3 = (*(**a1 + 24))(*a1);
  v4 = *(v2 + 8);

  return sub_1001752AC(v4, v3);
}

_UNKNOWN **sub_1001C4468(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(*a1 + 16))(a1);
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, start event, state:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  v4 = a1[1];
  *(v4 + 88) = 0x7FF8000000000000;
  *(v4 + 80) = 0;
}

uint64_t sub_1001C457C(uint64_t a1, uint64_t a2)
{
  *a1 = off_1024F9498;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if ((*(a2 + 88) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v3 = *(a2 + 72);
    v4 = sub_1000081AC();
    v5 = *(a1 + 8);
    if (*(v5 + 84) == 1)
    {
      v6 = sub_1000081AC();
      v7 = *(*(a1 + 8) + 88);
      if (qword_1025D4650 != -1)
      {
        sub_10168BBC0();
      }

      v8 = v7 - v6 + 10.0;
      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#tt,fContinuousPulsingModeOn,1,timeUntilNextInterval,%f", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168C558();
      }
    }

    else
    {
      v8 = v3 - (v4 - *(v5 + 88));
    }

    if (v8 >= 1.0)
    {
      [*(*(a1 + 8) + 48) setNextFireDelay:v8];
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v12 = 134217984;
        v13 = v8;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#tt, timer setNextFireDelay, %f", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168C654();
      }
    }

    else
    {
      *(a1 + 16) = 1;
      sub_100175108(a1);
    }
  }

  else
  {
    *(a1 + 16) = 1;
    sub_100175108(a1);
  }

  return a1;
}

void sub_1001C4798(_BYTE *a1, uint64_t a2)
{
  if (sub_1001C4BF4())
  {
    if (a1[1680] == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injection ignored in simulator mode", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017752AC();
      }
    }

    else if (a1[1696] & 1) != 0 || sub_100C3DAB0((a1 + 1700)) || (a1[1681])
    {
      v14 = 0xBFF0000000000000;
      sub_1016B0E50(a2, &v14, &__str);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v8 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injectRavenOrbitFile", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1017700B0(buf);
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectRavenOrbitFile(const std::string &)", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }

        sub_1001324C4(buf);
        if (!sub_100132484(0x27u))
        {
          __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
        }

        v16 = 39;
        v18 |= 0x40000004u;
        v9 = v17;
        if (!v17)
        {
          operator new();
        }

        *(v17 + 20) |= 1u;
        v10 = *(v9 + 8);
        if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v10, &__str);
        sub_10013256C(a1, buf);
        sub_100133DCC(buf);
        v7 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      if (v7 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1002981B4();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injection ignored outside of session", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017751C8();
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#gpsd,#rof,injection ignored on unsupported devices", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017750E4();
    }
  }
}

void sub_1001C4B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C4BF4()
{
  if (qword_102659228 != -1)
  {
    sub_10191CC3C();
  }

  return byte_102659220;
}

_BYTE *sub_1001C4C2C(_BYTE *result)
{
  if (*(result + 12))
  {
    v1 = result;
    if ((result[625] & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10199A148();
      }

      v2 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "registering,HighSpeedTransit", v3, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10199A478();
      }

      result = [*(*(v1 + 12) + 16) register:*(*(v1 + 12) + 8) forNotification:48 registrationInfo:0];
      v1[625] = 1;
    }
  }

  return result;
}

void sub_1001C4CF4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = off_1025019A0;
  *a1 = off_102474248;
  a1[1] = 0;
  v8 = a2;
  a1[5] = 0;
  a1[2] = v8;
  a1[3] = a3;
  a1[4] = a5;
  a1[6] = 0;
  operator new[]();
}

void sub_1001C4E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  sub_1017E7D44(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C4EAC(uint64_t a1)
{
  v2 = sub_100177B18();
  if ((v2 & 4) != 0)
  {
    if (!*(a1 + 40))
    {
      v3 = sub_1009B38EC();
      v6 = 0x30000FF00;
      v7 = 0;
      sub_101860780(v3);
    }
  }

  else
  {
    if (qword_1025D4300 != -1)
    {
      sub_100311618();
    }

    v4 = qword_1025D4308;
    if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Accel unavailable, unable to establish hid interface", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10198C00C();
    }
  }

  return (v2 >> 2) & 1;
}

uint64_t sub_1001C51D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 336) == 1)
  {
    *(v2 + 336) = 0;
  }

  v3 = *(v2 + 352);
  v4 = *(v2 + 360);
  *(v2 + 384) = 0;
  v5 = (v4 - v3) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v6 = *(v2 + 360);
      v3 = (*(v2 + 352) + 8);
      *(v2 + 352) = v3;
      v5 = (v6 - v3) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 11;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v7 = 22;
  }

  *(v2 + 376) = v7;
LABEL_10:
  v8 = *(a1 + 8);
  v9 = v8[50];
  v10 = v8[51];
  if (v10 == v9)
  {
    v15 = v8 + 54;
    v10 = v8[50];
  }

  else
  {
    v11 = v8[53];
    v12 = &v9[v11 >> 4];
    v13 = *v12;
    v14 = *v12 + 808 * (v11 & 0xF);
    v15 = v8 + 54;
    v16 = *(v9 + (((v8[54] + v11) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 808 * ((*(v8 + 108) + v11) & 0xF);
    if (v14 != v16)
    {
      do
      {
        v17 = *(v14 + 688);
        if (v17)
        {
          sub_100008080(v17);
          v13 = *v12;
        }

        v14 += 808;
        if (v14 - v13 == 12928)
        {
          v18 = v12[1];
          ++v12;
          v13 = v18;
          v14 = v18;
        }
      }

      while (v14 != v16);
      v9 = v8[50];
      v10 = v8[51];
    }
  }

  *v15 = 0;
  v19 = v10 - v9;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v9);
      v20 = v8[51];
      v9 = (v8[50] + 8);
      v8[50] = v9;
      v19 = (v20 - v9) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 8;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_26;
    }

    v21 = 16;
  }

  v8[53] = v21;
LABEL_26:
  v22 = *(a1 + 8);
  if (*(v22 + 1248) == 1)
  {
    v23 = *(v22 + 1128);
    v24 = *(a1 + 8);
    if (v23)
    {
      sub_100008080(v23);
      v24 = *(a1 + 8);
    }

    *(v22 + 1248) = 0;
    v22 = v24;
  }

  if (*(v22 + 1264) == 1)
  {
    *(v22 + 1264) = 0;
  }

  return 1;
}

void *sub_1001C53A4(void *result)
{
  if (*(result + 56) == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    if (qword_1025D4650 != -1)
    {
      sub_1019E808C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLGnssAssistanceMapVector,start", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019E8308();
    }

    [*(*v3 + 16) register:*(*v3 + 8) forNotification:0 registrationInfo:0];
    if (sub_1001C5490())
    {
      [*(*v3 + 16) register:*(*v3 + 8) forNotification:1 registrationInfo:0];
    }

    return [*(v3[1] + 16) register:*(v3[1] + 8) forNotification:0 registrationInfo:0];
  }

  return result;
}

uint64_t sub_1001C5490()
{
  result = sub_10006FDD0();
  if (result)
  {
    return sub_10006FEAC() ^ 1;
  }

  return result;
}

id sub_1001C54B4(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_101928290();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,CLGnssAssistanceSignalEnv,start", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019284E4();
  }

  return [*(*a1 + 16) register:*(*a1 + 8) forNotification:0 registrationInfo:0];
}

uint64_t sub_1001C5560(uint64_t a1)
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

void sub_1001C55E4(void *a1)
{
  v2 = a1[388];
  if (v2)
  {
    sub_1007FF118(v2);
  }

  v3 = a1[383];
  if (v3)
  {
    sub_100C041AC(v3);
    v4 = a1[384];
    a1[383] = 0;
    a1[384] = 0;
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  if (*a1)
  {
    (*(**a1 + 240))(*a1);
  }

  a1[387] = 0xBFF0000000000000;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#raven,deconstructRavenController", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194238C();
  }
}

uint64_t sub_1001C5740(uint64_t a1)
{
  sub_1001C7A78(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001C577C(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *buf = 134284033;
    v32 = v5;
    v33 = 2049;
    v34 = v6;
    v35 = 2049;
    v36 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,gnss,notifyClientWithGnssStatusRequest,lastGnssStartTime_s,%{private}.3lf,lastGnssStopTime_s,%{private}.3lf,lastGnssYieldTime_s,%{private}.3lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A77EC8(a2);
  }

  *buf = 45;
  if (sub_10000608C(a1, buf, 1))
  {
    sub_100021AFC(v16);
    v23 = *a2;
    v24 = a2[2];
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      *buf = 134284033;
      v32 = v9;
      v33 = 2049;
      v34 = v10;
      v35 = 2049;
      v36 = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,gnss,notifyClientWithGnssStatusRequest,lastGnssStartTime_s,%{private}.3lf,lastGnssStopTime_s,%{private}.3lf,lastGnssYieldTime_s,%{private}.3lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A77C90(buf);
      v12 = *a2;
      v13 = a2[1];
      v14 = a2[2];
      v25 = 134284033;
      v26 = v12;
      v27 = 2049;
      v28 = v13;
      v29 = 2049;
      v30 = v14;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyClientWithGnssStatusRequest(const CLLocationProvider_Type::CLGNSSStateQueryAssertionReportData &)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *buf = 45;
    (*(*a1 + 152))(a1, buf, v16, 1, 0xFFFFFFFFLL, 0);

    if (v21)
    {
      sub_100008080(v21);
    }

    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v18)
    {
      sub_100008080(v18);
    }

    if (v17)
    {
      sub_100008080(v17);
    }
  }
}

void sub_1001C5A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001C5AB8(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A772C8();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a4;
    v10 = *(a1 + 3356);
    v11 = *(a1 + 3322);
    *buf = 67241216;
    v28 = a2;
    v29 = 1026;
    v30 = a3;
    v31 = 1026;
    v32 = v9;
    v33 = 1026;
    v34 = v10;
    v35 = 1026;
    v36 = v11;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLGnssProvider,updateGnssModeOfOperation,enable,%{public}d,numberOfClients,%{public}d,notification,%{public}d,prevNumberOfActiveGNSSClients,%{public}d,previousRhythmicGnssRunning,%{public}d", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::updateGnssModeOfOperation(const BOOL, const uint32_t, const CLLocationProvider_Type::Notification &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  if (*a4)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLGnssProvider,invalid notification to update the state", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7837C();
    }

    return;
  }

  *(a1 + 3356) = a3;
  if (!a2)
  {
    if (a3 == 1)
    {
      if (!*(a1 + 3322))
      {
        goto LABEL_80;
      }

      if (sub_1001C6358(a1 + 3368))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v15 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz off", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A78618();
        }

        goto LABEL_64;
      }

      if (*(a1 + 3322) & 1) == 0 || (sub_1001C6358(a1 + 3368))
      {
LABEL_80:
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v21 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz active", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7853C();
        }

        return;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v25 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic Off", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A78460();
      }
    }

    else if (a3)
    {
      if (!*(a1 + 3322) || (sub_1001C6358(a1 + 3368) & 1) != 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,one of 1Hz de-registered", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A78988();
        }

        return;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v24 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic off,1hz On", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A788AC();
      }
    }

    else
    {
      if (!*(a1 + 3322) || (sub_1001C6358(a1 + 3368) & 1) != 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v14 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz only off", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A787D0();
        }

        goto LABEL_64;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Only Rhythmic Client off", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A786F4();
      }
    }

    *(a1 + 3322) = 0;
    return;
  }

  if (!a3)
  {
    goto LABEL_65;
  }

  if (a3 == 1)
  {
    if (sub_1001C6358(a1 + 3368))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Only Rhythmic Client", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A78B40();
      }

LABEL_94:
      *(a1 + 3322) = 1;
      return;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,1Hz Only", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78A64();
    }

    goto LABEL_64;
  }

  if (*(a1 + 3322) != 1)
  {
    goto LABEL_122;
  }

  if (sub_1001C6358(a1 + 3368))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic+1Hz", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78DD4();
    }

LABEL_64:
    a3 = 1;
LABEL_65:
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      v28 = a3;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,send1HzupdateNoti,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78EB0(a3);
      if (!a3)
      {
        return;
      }
    }

    else if (!a3)
    {
      return;
    }

    sub_1001C92EC(a1, 0, a2, -1);
    return;
  }

  if ((*(a1 + 3322) & 1) == 0)
  {
LABEL_122:
    if (sub_1001C6358(a1 + 3368))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v22 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,Rhythmic started,1Hz", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A78C1C();
      }

      goto LABEL_94;
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A773B8();
  }

  v23 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLGnssProvider,updateGnssModeOfOperation,addition 1Hz", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A78CF8();
  }
}

uint64_t sub_1001C6358(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return sub_1001C6368(result);
  }

  return result;
}

void sub_1001C6380(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    if (*a2 == 1 && (v4 = *(a2 + 8), v4 < 3))
    {
      v5 = dword_101CAFC4C[v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 4);
    v9[0] = 67240448;
    v9[1] = v5;
    v10 = 1026;
    v11 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "feedRhythmicGnssStatus,eventType,%{public}d,eventStatus,%{public}d", v9, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947BAC(a2, v5);
  }

  v8 = *(a1 + 1136);
  if (v8)
  {
    sub_1001BD68C(v8, v5, *(a2 + 4));
  }
}

void sub_1001C64C0(uint64_t a1)
{
  if (sub_1001C92A8())
  {
    sub_100021AFC(v7);
    v2 = sub_1000081AC() - *(a1 + 3264);
    v3 = (v2 >= 1200.0) & (*(a1 + 3344) >> 1);
    if (sub_10001CF3C() && !(v3 & 1 | !sub_10006FE30()))
    {
      v4 = *(a1 + 3320);
    }

    else
    {
      v4 = 1;
    }

    v14 = v4 & 1;
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      v22 = v14;
      v23 = 2050;
      v24 = v2;
      v25 = 1026;
      v26 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#ilsa,CLGnssProvider,notifyRhythmicStreamingControl,isStreamingAllowed,%{public}d,timeSinceLastGnssFix_s,%{public}.3lf,streamingForced,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A77C90(buf);
      v15 = 67240704;
      v16 = v14;
      v17 = 2050;
      v18 = v2;
      v19 = 1026;
      v20 = v3;
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyRhythmicGnssStreamingControlStateToClients()", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    *buf = 42;
    (*(*a1 + 152))(a1, buf, v7, 1, 0xFFFFFFFFLL, 0);

    if (v12)
    {
      sub_100008080(v12);
    }

    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (v9)
    {
      sub_100008080(v9);
    }

    if (v8)
    {
      sub_100008080(v8);
    }
  }
}

void sub_1001C6754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001C678C(unsigned __int8 *a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  if (a1[943] < 0)
  {
    **(a1 + 115) = 0;
    *(a1 + 116) = 0;
  }

  else
  {
    a1[920] = 0;
    a1[943] = 0;
  }

  if (a1[967] < 0)
  {
    **(a1 + 118) = 0;
    *(a1 + 119) = 0;
  }

  else
  {
    a1[944] = 0;
    a1[967] = 0;
  }

  if (a1[991] < 0)
  {
    **(a1 + 121) = 0;
    *(a1 + 122) = 0;
  }

  else
  {
    a1[968] = 0;
    a1[991] = 0;
  }

  sub_1001C6988(a1);
  v3 = sub_1000081AC();
  sub_1001C7214((a1 + 2664), v3);
  *(a1 + 310) = 0;
  a1[2488] = 1;
  v4 = [qword_102658FB0 startLocation];

  if (v4)
  {
    if ((a1[2049] & 1) == 0)
    {
      sub_1006F5304(a1);
    }

    if ((a1[2050] & 1) == 0)
    {
      sub_1006F5478(a1);
    }

    sub_1006F2158(a1);
  }

  else
  {
    v7[0] = 9;
    (*(*a1 + 144))(a1, v7, 1, 0xFFFFFFFFLL);
  }

  sub_1001C7344(a1);
  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v5 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[2021];
    v7[0] = 67240192;
    v7[1] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Accessory,StartLocation,IgnoreAccessoryLocation,%{public}d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101913700(a1);
  }
}

void sub_1001C6988(uint64_t a1)
{
  v2 = a1 + 4096;
  if ((*(a1 + 6377) & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLAccessory,registered for unfiltered location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019139A4();
    }

    [*(*(a1 + 1320) + 16) register:*(*(a1 + 1320) + 8) forNotification:10 registrationInfo:0];
    *(v2 + 2281) = 1;
  }

  if ((*(a1 + 1984) & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessory,registered for propagated location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913A88();
    }

    [*(*(a1 + 1320) + 16) register:*(*(a1 + 1320) + 8) forNotification:27 registrationInfo:0];
    *(a1 + 1984) = 1;
  }

  if ((*(v2 + 2280) & 1) == 0)
  {
    v5 = sub_1001C9C28();
    if (byte_102658F9F < 0)
    {
      sub_100007244(__p, xmmword_102658F88, *(&xmmword_102658F88 + 1));
    }

    else
    {
      *__p = xmmword_102658F88;
      v8 = unk_102658F98;
    }

    v6 = [objc_msgSend(*(a1 + 32) silo];
    v10[0] = off_10246BFD0;
    v10[1] = a1;
    v10[3] = v10;
    sub_1001C6BF4(v5, __p, v6, v10);
    sub_1001C9C60(v10);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }

    *(v2 + 2280) = 1;
  }
}

void sub_1001C6BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1001C9C60(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001C6BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 8));
  if ((*(a1 + 96) & 1) == 0)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100007244(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
      v17 = *(a2 + 16);
    }

    v18 = a3;
    sub_1001C7078(v19, a4);
    sub_1001C71AC((a1 + 72), &__dst);
    if (qword_1025D46B0 != -1)
    {
      sub_10195E914();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v9 = a2;
      if (*(a2 + 23) < 0)
      {
        v9 = *a2;
      }

      v10 = (*(a1 + 80) - *(a1 + 72)) >> 6;
      *buf = 136315394;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,addObserver,%s,size,%lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10195E914();
      }

      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMapRouteHintController::addObserver(std::string, dispatch_queue_t, std::function<void (const CLMapsRouteHintData &)>)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_1001C9C60(v19);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst);
    }
  }

  std::mutex::unlock((a1 + 8));
}

void sub_1001C6E58(_Unwind_Exception *a1)
{
  sub_100866BA8(v2 - 144);
  std::mutex::unlock((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1001C6EA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([a2 count])
  {
    v4 = [objc_msgSend(a2 "allObjects")];
    if (v4)
    {
      v5 = [v4 UTF8String];
      v6 = strlen(v5);
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v12) = v6;
      if (v6)
      {
        memmove(&v11, v5, v6);
      }

      *(&v11 + v7) = 0;
      v8 = (v3 + 2480);
      if (*(v3 + 2503) < 0)
      {
        operator delete(*v8);
      }

      *v8 = v11;
      *(v3 + 2496) = v12;
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v10 = (v3 + 2480);
        if (*(v3 + 2503) < 0)
        {
          v10 = *v8;
        }

        LODWORD(v11) = 136446210;
        *(&v11 + 4) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#gnssawd Selected LocationClientKey ,%{public}s", &v11, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CA85C((v3 + 2503), (v3 + 2480));
      }
    }
  }
}

uint64_t sub_1001C7078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1001C7110(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100007244(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  result = sub_1001C7078(v4 + 32, (a2 + 2));
  *(a1 + 8) = v4 + 64;
  return result;
}

uint64_t sub_1001C71AC(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1008668A4(a1, a2);
  }

  else
  {
    sub_1001C7110(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1001C71EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246BFD0;
  a2[1] = v2;
  return result;
}

void sub_1001C7214(uint64_t a1, double a2)
{
  if (*(a1 + 3048) < 0.0)
  {
    v4 = (a1 + 236);
    v3 = *(a1 + 236);
    *(a1 + 3048) = a2;
    *(a1 + 236) = v3 + 1;
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = *(a1 + 3048);
      v8 = *v4;
      v9 = 134349568;
      v10 = Current;
      v11 = 2050;
      v12 = v7;
      v13 = 1026;
      v14 = v8;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,locationSession,start,%{public}.1lf,sessions,%{public}d", &v9, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B13138((a1 + 3048), v4);
    }

    *(a1 + 3104) = 0;
  }
}

void sub_1001C7344(uint64_t a1)
{
  if (*(a1 + 2020) == 1 && (*(a1 + 2016) & 0x80000000) != 0)
  {
    v2 = (a1 + 2016);
    v3 = (a1 + 2024);
    if (*(a1 + 2047) < 0)
    {
      v3 = *v3;
    }

    v4 = open(v3, 526, 420);
    *v2 = v4;
    if (v4 < 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v6 = *v2;
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 67109378;
        v10 = v6;
        v11 = 2080;
        v12 = v8;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Unable to open nmea fifo FD %d %s.", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101914BC8(v2);
      }
    }
  }
}

double sub_1001C747C(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    if (qword_1025D4300 != -1)
    {
      sub_100311618();
    }

    v4 = qword_1025D4308;
    if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unrecognized notification %{public}d", &v11, 8u);
    }

    v5 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_10198C16C(a2);
    }
  }

  else
  {
    v5 = 0;
    if (sub_1001C4EAC(a1))
    {
      if (qword_1025D4300 != -1)
      {
        sub_100311618();
      }

      v8 = qword_1025D4308;
      if (os_log_type_enabled(qword_1025D4308, OS_LOG_TYPE_INFO))
      {
        v9 = *a3;
        v11 = 134349056;
        v12 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Setting batch interval to %{public}f", &v11, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10198C26C(a3);
      }

      sub_100179350(*(a1 + 40), *a3);
      v5 = *a3;
    }
  }

  return *&v5;
}

uint64_t sub_1001C7624(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_101BB629C();
  }

  v5 = a1 + 128;
  v4 = *(a1 + 128);
  if (v4 && ((*(*v4 + 72))(v4) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      (*(*a2 + 56))(__p, a2);
      v12 = v20 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: could not handle exiting %s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB6048();
    }

LABEL_34:
    sub_10131EFC4(a1);
  }

  if (qword_1025D4650 != -1)
  {
    sub_101BB4D50();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    (*(*a2 + 56))(__p, a2);
    v7 = v20 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: entering %s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101BB50D0();
    }

    (*(*a2 + 56))(buf, a2);
    if (v16 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    v17 = 136315138;
    v18 = v13;
    v14 = _os_log_send_and_compose_impl();
    if (v16 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLGNSSPedometerAssistanceController::ChangeState(PedometerAssistanceState *const)", "%s\n", v14);
    if (v14 != __p)
    {
      free(v14);
    }
  }

  *v5 = a2;
  result = (*(*a2 + 64))(a2);
  if ((result & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB50D0();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      (*(**v5 + 56))(__p);
      if (v20 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: could not handle entering %s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB616C(v5);
    }

    goto LABEL_34;
  }

  return result;
}

void sub_1001C7A78(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1016679C4(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1001C7ABC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A650AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssL5Context::onGnssModeOfOperationStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A650C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssL5Context::onGnssModeOfOperationStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001C7C88(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001C7C88(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    v10[0] = 67240192;
    v10[1] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "L5Context,onGnssModeOfOperationStatusNotification,%{public}d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A65A98(a3);
  }

  if (*a3 == 41)
  {
    sub_1001C7D88(a1, v9, a4);
  }
}

void sub_1001C7D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 1448);
  v5 = *(a3 + 1452);
  v6 = *(a3 + 1456);
  v7 = *(a3 + 1464);
  v8 = *(a3 + 1472);
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67241472;
    v17 = v4;
    v18 = 1026;
    v19 = v6;
    v20 = 1026;
    v21 = v7 & 1;
    v22 = 1026;
    v23 = (v7 >> 1) & 1;
    v24 = 1026;
    v25 = v5;
    v26 = 1026;
    v27 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "L5Context,RhythmicModeNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssL5Context::onRhythmicModeOfOperationNotification(const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v11 = (a1 + 57);
  v10 = *(a1 + 57);
  v12 = (v7 & 3) == 2 && (v5 & 1) != 0;
  *v11 = v12;
  if (v10 != v12)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A65084();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v11;
      *buf = 67240192;
      v17 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "L5Context,onlyRhythmicGnss,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A65B84((a1 + 57));
    }

    sub_10017DC7C(a1);
  }
}

void sub_1001C8054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1017E6C4C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLRhythmicGnssUtility::onRhythmicModeOfOperationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1017E6C60();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRhythmicGnssUtility::onRhythmicModeOfOperationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001C8218(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001C8218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 1448);
  v6 = *(a4 + 1452);
  v7 = *(a4 + 1456);
  v8 = *(a4 + 1464);
  if (qword_1025D4650 != -1)
  {
    sub_1017E6E7C();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241216;
    v13 = v5;
    v14 = 1026;
    v15 = v7;
    v16 = 1026;
    v17 = v8 & 1;
    v18 = 1026;
    v19 = (v8 >> 1) & 1;
    v20 = 1026;
    v21 = v6;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLRhythmicGnssUtility,onRhythmicModeOfOperationNotification,modeOfOps,%{public}d,powerMode,%{public}d,1Hz,%{public}d,rhythmic,%{public}d,state,%{public}d", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1017E6E90();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLRhythmicGnssUtility::onRhythmicModeOfOperationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  if (v6)
  {
    if (v5 >= 2)
    {
      sub_1000432E8("bitset set argument out of range");
    }

    v10 = *(a1 + 32) | (1 << v5);
  }

  else
  {
    if (v5 >= 2)
    {
      sub_1000432E8("bitset reset argument out of range");
    }

    v10 = *(a1 + 32) & ~(1 << v5);
  }

  *(a1 + 32) = v10;
  *(a1 + 20) = v6;
}

uint64_t sub_1001C8478(uint64_t a1, uint64_t a2, int *a3)
{
  v14 = a2;
  if (!*a3)
  {
    *buf = &v14;
    v5 = [sub_1000488C8(a1 + 80 &v14)[8]];
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v14;
      v8 = [v5 UTF8String];
      *buf = 67240450;
      *&buf[4] = v7;
      v18 = 2082;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#wigo,on,GnssProviderBare,%{public}d,%{public}s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A78F9C(&v14, v5);
    }

    v15[0] = @"ServiceName";
    v15[1] = @"Register";
    v16[0] = v5;
    v16[1] = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    PLLogRegisteredEvent();
    a2 = v14;
  }

  v9 = sub_1000F50D8(a1, a2, a3);
  if (v9)
  {
    *buf = *a3;
    if (sub_10000608C(a1, buf, 1) >= 2)
    {
      sub_10017DE58(a1, a3);
    }

    if (!*a3)
    {
      *buf = 0;
      v10 = sub_10000608C(a1, buf, 1);
      sub_1001C5AB8(a1, 1, v10, a3);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A773B8();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v12 = *a3;
      *buf = 67240448;
      *&buf[4] = v14;
      v18 = 1026;
      LODWORD(v19) = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Registering for client,%{public}d,notification,%{public}d,failed", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A790B0();
    }
  }

  return v9;
}

uint64_t sub_1001C873C(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10199A148();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#gwo,CLGnssAssistanceMotion,start", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10199A71C();
  }

  sub_1001C3EF8(a1);
  sub_1001C4C2C(a1);
  sub_1001C881C(a1);
  return sub_1001C891C((a1 + 632), sub_100137C30, [*a1 silo], a1, 10.0, 1.0);
}

_BYTE *sub_1001C881C(_BYTE *result)
{
  if (result[657] == 1)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    result = sub_1001C88E8();
    if (result)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10199A148();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "turning on", v5, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10199A8D4();
      }

      result = [*(*(v3 + 81) + 16) register:*(*(v3 + 81) + 8) forNotification:0 registrationInfo:0];
      v3[656] = 1;
    }
  }

  return result;
}

unint64_t sub_1001C88E8()
{
  if (qword_102655CA8)
  {
    return 1;
  }

  else
  {
    return (sub_100023B30() >> 26) & 1;
  }
}

uint64_t sub_1001C891C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v27 = a5;
      v28 = 2050;
      v29 = a6;
      v30 = 2050;
      v31 = a2;
      v32 = 2050;
      v33 = a3;
      v34 = 2050;
      v35 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,GNSS_SEN,StartingSensorWhenAlreadyRunning,StoppingExisting,SampleRate,%{public}lf,ReportRate,%{public}lf,Callback,%{public}p,silo,%{public}p,context,%{public}p", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssSensorAdapter<CLAccelerometer, 0>::start(double, double, DataHandler, CLSilo *, void *) [SensorType = CLAccelerometer, notification = 0]", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v21 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v22 = ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a5 >= 0.0)
  {
    v22 = 0;
    v21 = 0;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v21 = 1;
  }

  v23 = (*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v21;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if (a6 > a5 || ((v23 | v22) & 1) != 0 || a6 <= 0.0)
  {
LABEL_8:
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v27 = a5;
      v28 = 2050;
      v29 = a6;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "GNSS_SEN,InvalidParameters,sampleRate,%{public}lf,reportRate,%{public}lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945164(result, v14, v15, v16, v17, v18, v19, v20);
      return 0;
    }
  }

  else
  {
    if (sub_1001C3FFC())
    {
      operator new();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor controller", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945078();
      return 0;
    }
  }

  return result;
}

void sub_1001C8D18(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C8D48(uint64_t a1)
{
  (*(**(a1 + 128) + 56))(buf);
  sub_10000EC00(__p, "PedometerAssistanceDisabledState");
  v2 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = v13;
  }

  v4 = v11;
  v5 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (v3 != v4)
  {
    v8 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v6 = buf;
  }

  else
  {
    v6 = *buf;
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = memcmp(v6, v7, v3) == 0;
  if (v5 < 0)
  {
LABEL_16:
    operator delete(__p[0]);
    v2 = v14;
  }

LABEL_17:
  if ((v2 & 0x80) != 0)
  {
    operator delete(*buf);
    if (!v8)
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101BB50D0();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: received external feature enable command", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB79FC();
  }

  sub_1001C7624(a1, a1 + 80);
}

void sub_1001C8EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001C8EDC(uint64_t a1)
{
  if ((*(a1 + 58) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: registering for notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB5944();
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      [*(v3 + 16) register:*(v3 + 8) forNotification:5 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: location notifications unavailable", v20, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5A20();
      }
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      [*(v5 + 16) register:*(v5 + 8) forNotification:1 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: motion state notifications unavailable", v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5AFC();
      }
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      [*(v7 + 16) register:*(v7 + 8) forNotification:0 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v18 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: motion state observer notifications unavailable", v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5BD8();
      }
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      [*(v9 + 16) register:*(v9 + 8) forNotification:2 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: natalimetry notifications unavailable", v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5CB4();
      }
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      [*(v11 + 16) register:*(v11 + 8) forNotification:2 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: status notifications unavailable", v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5D90();
      }
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      [*(v13 + 16) register:*(v13 + 8) forNotification:0 registrationInfo:0];
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BB50D0();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: step count notifications unavailable", v15, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BB5E6C();
      }
    }

    *(a1 + 58) = 1;
  }
}

uint64_t sub_1001C92A8()
{
  if (sub_1001C98B4())
  {
    return 1;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  return byte_102659168;
}

void sub_1001C92EC(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (!sub_1001C92A8())
  {
    return;
  }

  sub_100021AFC(v17);
  if (a2 >= 2)
  {
    if (a2 == 2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CLGnssProvider,#Warning,invalid mode of operation", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A77C90(buf);
        LOWORD(v29) = 0;
        v9 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyGnssModeOfOperationToClients(const CLLocationProvider_Type::GnssModeOfOperation, const BOOL, const CLRhythmicGnssWakeMode)", "%s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }

      goto LABEL_32;
    }
  }

  else
  {
    v24 = a2;
  }

  v25 = a3;
  v26 = a4;
  if (!a3)
  {
    if (v24 < 2)
    {
      v10 = *(a1 + 3344) & ~(1 << v24);
      goto LABEL_17;
    }

    v16 = "bitset reset argument out of range";
LABEL_47:
    sub_1000432E8(v16);
  }

  if (v24 > 1)
  {
    v16 = "bitset set argument out of range";
    goto LABEL_47;
  }

  v10 = *(a1 + 3344) | (1 << v24);
LABEL_17:
  *(a1 + 3344) = v10;
  v28 = sub_1001C6370(a1 + 3368);
  v11 = *(a1 + 3344);
  if (*(a1 + 3321) == 1)
  {
    if ((sub_1001C6358(a1 + 3368) | v11))
    {
      v11 = *(a1 + 3344);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLGnssProvider,notifyRhythmicStatus,overwrite 1Hz client state", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A77C90(buf);
        LOWORD(v29) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssProvider::notifyGnssModeOfOperationToClients(const CLLocationProvider_Type::GnssModeOfOperation, const BOOL, const CLRhythmicGnssWakeMode)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      v11 = *(a1 + 3344) | 1;
      *(a1 + 3344) = v11;
    }
  }

  v27 = v11;
  if (qword_1025D4650 != -1)
  {
    sub_101A773B8();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67241472;
    v42 = v24;
    v43 = 1026;
    v44 = v26;
    v45 = 1026;
    v46 = v27 & 1;
    v47 = 1026;
    v48 = (v27 >> 1) & 1;
    v49 = 1026;
    v50 = v25;
    v51 = 1026;
    v52 = v28;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLGnssProvider,notifyRhythmicStatus,modeOfOps,%{public}d,powerMode,%{public}d,currentModesOfOps,%{public}d,%{public}d,state,%{public}d,hasRhythmicClients,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A77C90(buf);
    v29 = 67241472;
    v30 = v24;
    v31 = 1026;
    v32 = v26;
    v33 = 1026;
    v34 = v27 & 1;
    v35 = 1026;
    v36 = (v27 >> 1) & 1;
    v37 = 1026;
    v38 = v25;
    v39 = 1026;
    v40 = v28;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssProvider::notifyGnssModeOfOperationToClients(const CLLocationProvider_Type::GnssModeOfOperation, const BOOL, const CLRhythmicGnssWakeMode)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *(a1 + 3328) = v24;
  *(a1 + 3336) = v26;
  *(a1 + 3332) = v25;
  *(a1 + 3352) = v28;
  sub_1001C6380(a1 + 120, a1 + 3328);
  *buf = 41;
  (*(*a1 + 152))(a1, buf, v17, 1, 0xFFFFFFFFLL, 0);
  sub_1001C64C0(a1);
LABEL_32:

  if (v22)
  {
    sub_100008080(v22);
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_100008080(v19);
  }

  if (v18)
  {
    sub_100008080(v18);
  }
}

void sub_1001C9870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001C98B4()
{
  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10001CB4C(v3, "EnableRhythmicWakingGnss", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  return v0 & v1;
}

void sub_1001C9914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001C992C(uint64_t a1, unsigned int *a2, unsigned __int8 *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *a2;
  if (qword_1025D4650 != -1)
  {
    sub_1016C8A14();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = Current;
    v18 = 1026;
    v19 = v6;
    v20 = 1026;
    v21 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:gnssSessionEventPowerLog, eventCfTimeSec:%{public}f, eventType:%{public}d, eventStatus:%{public}d}", buf, 0x28u);
  }

  v11[0] = [NSNumber numberWithDouble:Current, @"eventCfTimeSec"];
  v10[1] = @"eventType";
  v11[1] = [NSNumber numberWithInt:v6];
  v10[2] = @"eventStatus";
  v11[2] = [NSNumber numberWithBool:*a3];
  return sub_10006FFF0([NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3], "GnssSession");
}

uint64_t sub_1001C9AB8(unsigned __int8 *a1, int *a2)
{
  sub_1000F4588();
  v4 = *a2;
  if (*a2 == 40)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLAccessory,PauseExternalLocation,1", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913548();
    }

    v8 = sub_1000081AC();
    sub_1006F14E8(a1, 1, v8);
  }

  else if (v4 == 29)
  {
    if ((a1[1371] & 1) == 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v5 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLAccessory,EnableAccessoryNMEAScreening,0,airborne,1", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101913624();
      }

      v6 = sub_1000081AC();
      sub_10107C280((a1 + 2664), 0, v6);
      a1[2057] = 0;
      sub_1006F6794((a1 + 2056));
    }
  }

  else if (!v4)
  {
    sub_1001C678C(a1);
  }

  return 1;
}

uint64_t sub_1001C9C28()
{
  if (qword_10265AE28 != -1)
  {
    sub_10195E900();
  }

  return qword_102637300;
}

uint64_t sub_1001C9C60(uint64_t a1)
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

void sub_1001CA064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_10063A344(&a9);
  sub_10063A344(&a39);
  _Unwind_Resume(a1);
}

void sub_1001CA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 16) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10197D0A8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssOdometer::onRhythmicModeOfOperationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10197D0BC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssOdometer::onRhythmicModeOfOperationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100182360(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001CA254(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1001CA334(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1001CA354(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B198A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAutopauseProviderConcrete::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B198B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAutopauseProviderConcrete::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CA520(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001CA520(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 >= 2)
  {
    if (*a3 == 2)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_1001CA6BC(a1 + 144, &Current, a4, (a4 + 4));
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B1984C();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        LODWORD(Current) = 67109120;
        HIDWORD(Current) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning PAUSE: Unknown notification %d", &Current, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B19DD8(a3);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101B1984C();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a3;
      LODWORD(Current) = 67109120;
      HIDWORD(Current) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning PAUSE: unexpected notification %d", &Current, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B19CE4(a3);
    }
  }
}

__n128 sub_1001CA6BC(uint64_t a1, unint64_t *a2, unsigned int *a3, int *a4)
{
  result.n128_u64[0] = *a2;
  *(a1 + 24) = *a2;
  v5 = (a1 + 24);
  v6 = *a3;
  v7 = *a4;
  *(a1 + 32) = *a3;
  *(a1 + 36) = v7;
  v8 = v6 > 0xB;
  v9 = (1 << v6) & 0xC06;
  if (v8 || v9 == 0)
  {
    result = *v5;
    *(a1 + 40) = *v5;
  }

  else if (*(a1 + 48) != 2)
  {
    *(a1 + 40) = result.n128_u64[0];
    *(a1 + 48) = 2;
    *(a1 + 52) = v7;
  }

  return result;
}

uint64_t sub_1001CA718(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

void sub_1001CA7F8(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B198A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAutopauseProviderConcrete::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B198B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAutopauseProviderConcrete::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CBB3C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double sub_1001CA9C4()
{
  v9 = 0;
  v8 = 4;
  if ((byte_1026567C8 & 1) == 0)
  {
    if (sysctlnametomib("kern.monotonicclock", dword_1026567CC, &dword_1025D6568))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A35E8();
      }

      v0 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "Error occurred, no mib to monotonic clock conversion", buf, 2u);
      }

      v1 = -1.0;
      if (sub_10000A100(121, 0))
      {
        sub_1018A4690();
      }

      return v1;
    }

    byte_1026567C8 = 1;
  }

  if (sysctl(dword_1026567CC, dword_1025D6568, &v9, &v8, 0, 0))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 67240450;
      v11 = v4;
      v12 = 2082;
      v13 = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Error occurred %{public}d %{public}s", buf, 0x12u);
    }

    v1 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_1018A4774();
    }
  }

  else
  {
    LODWORD(v2) = v9;
    return v2 + 0.5;
  }

  return v1;
}

id sub_1001CABAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 202);
  v5 = *(a1 + 201);
  v6 = *(a1 + 200);
  v14 = 0;
  sub_1001CAE50(a1 + 144, a2, &v14);
  result = sub_1001CBA48(*(a2 + 96));
  if (result)
  {
    result = [*(a1 + 136) setNextFireDelay:900.0];
  }

  if (v14 == 1)
  {
    v8 = *(a1 + 202);
    v9 = *(a1 + 201);
    if (v4 == v8)
    {
      v10 = *(a1 + 200);
      if (v5 == v9 && v6 == v10)
      {
        return result;
      }
    }

    else
    {
      v10 = *(a1 + 200);
    }

    v13[0] = *(a1 + 202);
    v13[1] = v9;
    v13[2] = v10;
    if (qword_1025D48A0 != -1)
    {
      sub_101B19CBC();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v22 = v10;
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "PAUSE: Pause state changed, notifying - fitness: %d navigation: %d other: %d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101B19CBC();
      }

      v15 = 67109632;
      v16 = v10;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v8;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAutopauseProviderConcrete::onLocationNotificationHelper(const CLDaemonLocation &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    (*(*a1 + 200))(a1);
    *buf = 0;
    return (*(*a1 + 152))(a1, buf, v13, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

void sub_1001CAE50(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = a2[7];
  v123 = a2[6];
  v124 = v5;
  v125[0] = a2[8];
  *(v125 + 12) = *(a2 + 140);
  v6 = a2[3];
  v121[2] = a2[2];
  v121[3] = v6;
  v7 = a2[5];
  v122[0] = a2[4];
  v122[1] = v7;
  v8 = a2[1];
  v121[0] = *a2;
  v121[1] = v8;
  *a3 = 0;
  v9 = v123;
  if (sub_1001CBA48(v123))
  {
    v10 = sub_1001CA9C4();
    *(v122 + 12) = v10;
    if (*(a1 + 92) > 0.0 && v10 - *(a1 + 148) > *(a1 + 64))
    {
      sub_1001EC8AC(a1);
      *a3 = 1;
    }

    v11 = v124;
    *(a1 + 168) = v123;
    *(a1 + 184) = v11;
    *(a1 + 200) = v125[0];
    *(a1 + 212) = *(v125 + 12);
    v12 = v121[3];
    *(a1 + 104) = v121[2];
    *(a1 + 120) = v12;
    v13 = v122[1];
    *(a1 + 136) = v122[0];
    *(a1 + 152) = v13;
    v14 = v121[1];
    *(a1 + 72) = v121[0];
    *(a1 + 88) = v14;
    if (v9 > 9 || ((1 << v9) & 0x20E) == 0 || *(&v121[2] + 12) < 0.0)
    {
      goto LABEL_23;
    }

    if (!*(a1 + 304))
    {
LABEL_22:
      sub_10023F928(a1 + 232, (&v121[2] + 12));
      *(a1 + 312) = *(v122 + 12);
      goto LABEL_23;
    }

    if (v10 - *(a1 + 312) < 3.0)
    {
      sub_10023F928(a1 + 232, (&v121[2] + 12));
      *(a1 + 312) = *(v122 + 12);
      v15 = *(a1 + 304);
      if (v15 && v15 >= *(a1 + 240) && *(a1 + 248) / v15 > 6.0)
      {
        sub_1001EC8AC(a1);
LABEL_64:
        *a3 = 1;
        return;
      }

LABEL_23:
      if (*(a1 + 8) < 0.0)
      {
        *(a1 + 8) = v10;
      }

      if (*(&v121[2] + 4) > 0.0)
      {
        *(a1 + 16) = *(&v121[1] + 12);
      }

      v21 = sub_1001CBA48(v123);
      if (v21)
      {
        v117 = *&v10;
        v118 = *(v121 + 4);
        v119 = *(&v121[1] + 4);
        v120 = *(a1 + 32);
        sub_1001CBCC8((a1 + 360), &v117);
        if (*(a1 + 400) >= 0x3CuLL)
        {
          v115 = 0.0;
          v116 = 0;
          v112 = 0u;
          v113 = 0u;
          memset(v114, 0, 28);
          sub_100F33D64(a1, &v112, (a1 + 360));
          *&v112 = v10;
          sub_100F342F8((a1 + 408), &v112);
          v22 = *(a1 + 368);
          v23 = *(a1 + 376);
          *(a1 + 400) = 0;
          v24 = (v23 - v22) >> 3;
          if (v24 >= 3)
          {
            do
            {
              operator delete(*v22);
              v25 = *(a1 + 376);
              v22 = (*(a1 + 368) + 8);
              *(a1 + 368) = v22;
              v24 = (v25 - v22) >> 3;
            }

            while (v24 > 2);
          }

          if (v24 == 1)
          {
            v26 = 51;
          }

          else
          {
            if (v24 != 2)
            {
              goto LABEL_36;
            }

            v26 = 102;
          }

          *(a1 + 392) = v26;
        }
      }

LABEL_36:
      v27 = *(a1 + 64);
      if (v10 - *(a1 + 8) <= v27)
      {
        return;
      }

      v28 = *(a1 + 448);
      if (v28)
      {
        v29 = 0;
        v30 = *(a1 + 440);
        v31 = *(a1 + 416);
        while (v10 - *(*(v31 + 8 * ((v30 + v29) / 0x33)) + 80 * ((v30 + v29) % 0x33)) <= v27)
        {
          if (v28 == ++v29)
          {
            v29 = *(a1 + 448);
            break;
          }
        }

        v32 = (v31 + 8 * (v30 / 0x33));
        if (*(a1 + 424) == v31)
        {
          v33 = 0;
        }

        else
        {
          v33 = *v32 + 80 * (v30 % 0x33);
        }

        *&v112 = v32;
        *(&v112 + 1) = v33;
        sub_1007D4424(&v112, v29);
        v34 = *(a1 + 440) + *(a1 + 448);
        v35 = *(a1 + 416);
        v36 = (v35 + 8 * (v34 / 0x33));
        if (*(a1 + 424) == v35)
        {
          v37 = 0;
        }

        else
        {
          v37 = (*v36 + 80 * (v34 % 0x33));
        }

        v21 = sub_100F343A8((a1 + 408), v112, *(&v112 + 1), v36, v37);
      }

      v38 = *(a1 + 400);
      if (v38)
      {
        v39 = 0;
        v40 = *(a1 + 392);
        v41 = *(a1 + 368);
        while (v10 - *(*(v41 + 8 * ((v40 + v39) / 0x66)) + 40 * ((v40 + v39) % 0x66)) <= *(a1 + 64))
        {
          if (v38 == ++v39)
          {
            v39 = *(a1 + 400);
            break;
          }
        }

        v42 = (v41 + 8 * (v40 / 0x66));
        if (*(a1 + 376) == v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = *v42 + 40 * (v40 % 0x66);
        }

        *&v112 = v42;
        *(&v112 + 1) = v43;
        sub_1000C5804(&v112, v39);
        v44 = *(a1 + 392) + *(a1 + 400);
        v45 = *(a1 + 368);
        v46 = (v45 + 8 * (v44 / 0x66));
        if (*(a1 + 376) == v45)
        {
          v47 = 0;
        }

        else
        {
          v47 = (*v46 + 40 * (v44 % 0x66));
        }

        v21 = sub_100F3460C((a1 + 360), v112, *(&v112 + 1), v46, v47);
      }

      if (*(a1 + 48) == 2)
      {
        v48 = *(a1 + 64);
        if (v10 - *(a1 + 40) > v48)
        {
          *(a1 + 58) = 1;
          *(a1 + 56) = 257;
          *(a1 + 8) = v10 - v48 + 60.0;
          goto LABEL_64;
        }
      }

      v49 = 0.0;
      if (!*(a1 + 448))
      {
        v57 = 0;
        v54 = 1;
        v55 = 1;
        goto LABEL_83;
      }

      v50 = 0;
      LODWORD(v112) = 0;
      LODWORD(v117) = 0;
      v111 = 0;
      v110 = 0;
      do
      {
        sub_100F33BA0(v21, *(*(*(a1 + 416) + 8 * ((v50 + *(a1 + 440)) / 0x33)) + 80 * ((v50 + *(a1 + 440)) % 0x33) + 72), &v112, &v117, &v111 + 1, &v111, &v110);
        ++v50;
        v51 = *(a1 + 448);
      }

      while (v51 > v50);
      v52 = (HIDWORD(v111) + v117) / v51 * 100.0;
      v53 = v111 / v51 * 100.0;
      v54 = v53 <= 25.0;
      if (v53 > 25.0)
      {
        *(a1 + 57) = 0;
        *a3 = 1;
      }

      v55 = v52 <= 25.0;
      if (v52 > 25.0)
      {
        *(a1 + 56) = 0;
        *a3 = 1;
      }

      v56 = *(*(*(a1 + 416) + 8 * (*(a1 + 440) / 0x33uLL)) + 80 * (*(a1 + 440) % 0x33uLL) + 72);
      if (v56 != 8)
      {
        if (v56 == 5)
        {
          v54 = 0;
          *(a1 + 57) = 0;
          goto LABEL_78;
        }

        if (v56 != 4)
        {
          goto LABEL_79;
        }
      }

      v55 = 0;
      *(a1 + 56) = 0;
LABEL_78:
      *a3 = 1;
LABEL_79:
      v57 = 0;
      if (v51)
      {
        v58 = *(a1 + 440);
        v59 = 0.0;
        v49 = 0.0;
        do
        {
          v60 = *(*(a1 + 416) + 8 * (v58 / 0x33)) + 80 * (v58 % 0x33);
          v61 = *(v60 + 56);
          v59 = v59 + *(v60 + 8) * v61;
          v49 = v49 + *(v60 + 16) * v61;
          v57 += v61;
          ++v58;
          --v51;
        }

        while (v51);
        goto LABEL_84;
      }

LABEL_83:
      v59 = 0.0;
LABEL_84:
      v115 = 0.0;
      v116 = 0;
      v112 = 0u;
      v113 = 0u;
      memset(v114, 0, 28);
      if (*(a1 + 400))
      {
        sub_100F33D64(a1, &v112, (a1 + 360));
        v59 = v59 + *(&v112 + 1) * SDWORD2(v114[1]);
        v49 = v49 + *&v113 * SDWORD2(v114[1]);
        v57 += DWORD2(v114[1]);
        v62 = SDWORD2(v114[1]) > 0;
      }

      else
      {
        v62 = 0;
      }

      if (v57 <= 0)
      {
        *(a1 + 8) = *(v122 + 12) - *(a1 + 64) + 60.0;
        return;
      }

      v63 = v59 / v57;
      v64 = 2;
      if (!v62)
      {
        v64 = 0;
      }

      v65 = v49 / v57;
      sub_100E3C32C(&v117, v64 + 2 * *(a1 + 448));
      if (*(a1 + 448))
      {
        v66 = 0;
        v67 = 0;
        v68 = *(a1 + 440);
        v69 = *(a1 + 416);
        do
        {
          v70 = *(v69 + 8 * ((v68 + v67) / 0x33)) + 80 * ((v68 + v67) % 0x33);
          v71 = sub_100109D18((a1 + 320), v63, v65, *(v70 + 24), *(v70 + 40), *(a1 + 16));
          v72 = (*(*(a1 + 416) + 8 * ((v67 + *(a1 + 440)) / 0x33)) + 80 * ((v67 + *(a1 + 440)) % 0x33));
          v73 = v71 - v72[8];
          v117[v66] = v73;
          v74 = sub_100109D18((a1 + 320), v63, v65, v72[4], v72[6], *(a1 + 16));
          v68 = *(a1 + 440);
          v69 = *(a1 + 416);
          *&v74 = v74 - *(*(v69 + 8 * ((v67 + v68) / 0x33)) + 80 * ((v67 + v68) % 0x33) + 64);
          v117[v66 + 1] = *&v74;
          v66 += 2;
          ++v67;
        }

        while (*(a1 + 448) > v67);
        if (!v62)
        {
LABEL_94:
          if (!v55)
          {
            goto LABEL_95;
          }

          goto LABEL_100;
        }
      }

      else
      {
        LODWORD(v66) = 0;
        if (!v62)
        {
          goto LABEL_94;
        }
      }

      v75 = sub_100109D18((a1 + 320), v63, v65, *(&v113 + 1), *(v114 + 1), *(a1 + 16));
      v76 = v115;
      v77 = v75 - v115;
      v117[v66] = v77;
      v78 = sub_100109D18((a1 + 320), v63, v65, *v114, *&v114[1], *(a1 + 16));
      v79 = v78 - v76;
      v117[v66 | 1] = v79;
      if (!v55)
      {
LABEL_95:
        if (!v54)
        {
          goto LABEL_126;
        }

LABEL_112:
        v86 = 300.0;
        if ((*(a1 + 32) & 0xFFFFFFFE) == 0xA)
        {
          v86 = 110.0;
        }

        if (v118 == v117)
        {
          v89 = 1;
        }

        else
        {
          v87 = (v118 - v117) >> 2;
          if (v87 <= 1)
          {
            v88 = 1;
          }

          else
          {
            v88 = (v118 - v117) >> 2;
          }

          if (*v117 <= v86)
          {
            v90 = 1;
            do
            {
              v91 = v90;
              if (v88 == v90)
              {
                break;
              }

              v92 = v117[v90++];
            }

            while (v92 <= v86);
            v89 = v87 <= v91;
          }

          else
          {
            v89 = 0;
          }
        }

        *(a1 + 57) = v89;
LABEL_126:
        v93 = sub_100F33C34(a1);
        if (v93 > 4)
        {
          if (v93 == 5)
          {
            v94 = v117;
            if (v118 != v117)
            {
              v95 = (v118 - v117) >> 2;
              if (v95 <= 1)
              {
                v106 = 1;
              }

              else
              {
                v106 = (v118 - v117) >> 2;
              }

              if (*v117 <= 300.0)
              {
                v108 = 1;
                do
                {
                  v98 = v108;
                  if (v106 == v108)
                  {
                    break;
                  }

                  v109 = v117[v108++];
                }

                while (v109 <= 300.0);
                goto LABEL_168;
              }

              goto LABEL_163;
            }

            goto LABEL_164;
          }

          if (v93 != 8)
          {
LABEL_129:
            v94 = v117;
            if (v118 != v117)
            {
              v95 = (v118 - v117) >> 2;
              if (v95 <= 1)
              {
                v96 = 1;
              }

              else
              {
                v96 = (v118 - v117) >> 2;
              }

              if (*v117 <= 200.0)
              {
                v97 = 1;
                do
                {
                  v98 = v97;
                  if (v96 == v97)
                  {
                    break;
                  }

                  v99 = v117[v97++];
                }

                while (v99 <= 200.0);
LABEL_168:
                v107 = v95 <= v98;
LABEL_169:
                *(a1 + 58) = v107;
                *a3 = 1;
                *(a1 + 8) = v10 - *(a1 + 64) + 60.0;
                if (v94)
                {
                  *&v118 = v94;
                  operator delete(v94);
                }

                return;
              }

              goto LABEL_163;
            }

            goto LABEL_164;
          }
        }

        else
        {
          if (v93 == 2)
          {
            v94 = v117;
            if (v118 != v117)
            {
              v95 = (v118 - v117) >> 2;
              if (v95 <= 1)
              {
                v103 = 1;
              }

              else
              {
                v103 = (v118 - v117) >> 2;
              }

              if (*v117 <= 250.0)
              {
                v104 = 1;
                do
                {
                  v98 = v104;
                  if (v103 == v104)
                  {
                    break;
                  }

                  v105 = v117[v104++];
                }

                while (v105 <= 250.0);
                goto LABEL_168;
              }

              goto LABEL_163;
            }

            goto LABEL_164;
          }

          if (v93 != 4)
          {
            goto LABEL_129;
          }
        }

        v94 = v117;
        if (v118 != v117)
        {
          v95 = (v118 - v117) >> 2;
          if (v95 <= 1)
          {
            v100 = 1;
          }

          else
          {
            v100 = (v118 - v117) >> 2;
          }

          if (*v117 <= 78.5)
          {
            v101 = 1;
            do
            {
              v98 = v101;
              if (v100 == v101)
              {
                break;
              }

              v102 = v117[v101++];
            }

            while (v102 <= 78.5);
            goto LABEL_168;
          }

LABEL_163:
          v107 = 0;
          goto LABEL_169;
        }

LABEL_164:
        v107 = 1;
        goto LABEL_169;
      }

LABEL_100:
      if (v118 == v117)
      {
        v82 = 1;
      }

      else
      {
        v80 = (v118 - v117) >> 2;
        if (v80 <= 1)
        {
          v81 = 1;
        }

        else
        {
          v81 = (v118 - v117) >> 2;
        }

        if (*v117 <= 78.5)
        {
          v83 = 1;
          do
          {
            v84 = v83;
            if (v81 == v83)
            {
              break;
            }

            v85 = v117[v83++];
          }

          while (v85 <= 78.5);
          v82 = v80 <= v84;
        }

        else
        {
          v82 = 0;
        }
      }

      *(a1 + 56) = v82;
      if (!v54)
      {
        goto LABEL_126;
      }

      goto LABEL_112;
    }

    v16 = *(a1 + 272);
    v17 = *(a1 + 280);
    *(a1 + 304) = 0;
    v18 = (v17 - v16) >> 3;
    if (v18 >= 3)
    {
      do
      {
        operator delete(*v16);
        v19 = *(a1 + 280);
        v16 = (*(a1 + 272) + 8);
        *(a1 + 272) = v16;
        v18 = (v19 - v16) >> 3;
      }

      while (v18 > 2);
    }

    if (v18 == 1)
    {
      v20 = 256;
    }

    else
    {
      if (v18 != 2)
      {
LABEL_21:
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        goto LABEL_22;
      }

      v20 = 512;
    }

    *(a1 + 296) = v20;
    goto LABEL_21;
  }
}

void sub_1001CBA28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001CBA48(unsigned int a1)
{
  if (a1 >= 0xF)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101ACF858();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v6[0] = 67240192;
      v6[1] = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Unknown whether or not provider %{public}d is a candidate for autopause", v6, 8u);
    }

    v4 = sub_10000A100(121, 0);
    LOBYTE(v2) = 0;
    if (v4)
    {
      sub_101ACF86C(a1);
      LOBYTE(v2) = 0;
    }
  }

  else
  {
    v2 = 0x2E1Eu >> a1;
  }

  return v2 & 1;
}

id sub_1001CBB3C(id result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    v5 = result;
    v6 = *(a4 + 808);
    if (v6 && sub_10030D934(v6))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B1984C();
      }

      v7 = (a4 + 808);
      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = sub_10030D934(*v7);
        v11 = 134217984;
        v12 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "PAUSE: Batched notification response in auto-pause with %zu locations.", &v11, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B19BA4(v7);
      }

      result = sub_10030D934(*v7);
      if (result)
      {
        for (i = 0; i < result; ++i)
        {
          sub_10030E2C0(*v7, i, &v11);
          sub_1001CABAC(v5, &v11);
          result = sub_10030D934(*v7);
        }
      }
    }

    else
    {

      return sub_1001CABAC(v5, a4);
    }
  }

  return result;
}

int64x2_t sub_1001CBCC8(int64x2_t *a1, __int128 *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_100F3491C(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x66));
  v7 = *v6 + 40 * (v4 % 0x66);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4080;
  }

  v8 = *a2;
  v9 = a2[1];
  *(v7 - 8) = *(a2 + 4);
  *(v7 - 24) = v9;
  *(v7 - 40) = v8;
  result = vaddq_s64(a1[2], xmmword_101C79510);
  a1[2] = result;
  return result;
}

BOOL sub_1001CBD74@<W0>(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_10265A580, memory_order_acquire) & 1) == 0)
  {
    sub_10194CF04();
  }

  if (!xmmword_10265A590 || !(result = sub_10018E854(xmmword_10265A590)))
  {
    sub_10082C9DC();
  }

  v3 = *(&xmmword_10265A590 + 1);
  *a1 = xmmword_10265A590;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

id sub_1001CBE30(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "null";
  }

  sub_1001CBF58(a1 + 192);
  ++*(a1 + 3484);
  sub_1001CBF60(a1, "refresh");
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@CellFlow, refresh, %{public}s", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A6123C();
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
}

void sub_1001CBF60(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "null";
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CellFlow, clearcells, %{public}s", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A616B8();
  }

  *(a1 + 2552) = 0;
  v5 = *(a1 + 2488);
  v6 = *(a1 + 2480);
  while (v5 != v6)
  {
    v5 -= 696;
    sub_1000720CC(v5);
  }

  *(a1 + 2488) = v6;
  for (i = 2504; i != 2552; i += 24)
  {
    buf = 0uLL;
    v12 = 0;
    sub_100071F88(&buf, *(a1 + i), *(a1 + i + 8), 0x66FD0EB66FD0EB67 * ((*(a1 + i + 8) - *(a1 + i)) >> 3));
    v8 = *(&buf + 1);
    v9 = buf;
    while (v8 != v9)
    {
      v8 -= 696;
      sub_1000720CC(v8);
    }

    *(&buf + 1) = v9;
    p_buf = &buf;
    sub_100072124(&p_buf);
  }
}

uint64_t sub_1001CC0F4(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1001CC1D4(char *a1, int a2, unsigned int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v13 = sub_10006E830(a3);
      v16 = *(v10 + 6);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 7) >= v13)
        {
          v17 = v14;
        }

        v14 = *&v14[8 * (*(v14 + 7) < v13)];
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 7))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = sub_10006E830(a3);
      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v18)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v18)];
      }

      while (v19);
      if (v20 != a1 + 64 && v18 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        *buf = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10058B134();
        }

        sub_10006E914(buf);
        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v30 = a1 + 64;
        v21 = byte_1025D6F39;
        v29 = sub_10006E830(a3);
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v21;
        v29 = sub_10006E830(a3);
        *buf = &v29;
        v22 = sub_100024014((a1 + 56), &v29);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v24 = *a4;
        v29 = sub_10006E830(a3);
        *buf = &v29;
        v25 = sub_100024014((a1 + 56), &v29);
        *buf = &v32;
        *(sub_100007FA0((v25 + 5), &v32) + 32) = v24;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        v26 = v31;
        *buf = sub_10006E830(a3);
        sub_1003C9410((v26 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018C9738();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018CC57C(a1);
    return 0;
  }

  return result;
}

void sub_1001CC5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10006E914(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CC5D0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  sub_1003C93BC(a2, *(a2 + 8));
  *a2 = v4;
  *(a2 + 16) = 0;
  *v4 = 0;
  v5 = *(a1 + 232);
  if (v5 == (a1 + 240))
  {
    goto LABEL_30;
  }

  v6 = 0;
  do
  {
    if (*(v5 + 911) != 1)
    {
      goto LABEL_15;
    }

    v7 = *(v5 + 226);
    if (v7 == 10)
    {
      if (*(a1 + 713))
      {
        goto LABEL_14;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Indoor provider active, but pipelined not activated", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F7E18(v22);
      }
    }

    else
    {
      if (v7 != 11 || (*(a1 + 714) & 1) != 0)
      {
LABEL_14:
        *buf = *(v5 + 226);
        sub_1003C9410(a2, buf);
        v6 |= *(v5 + 226) == 1;
        goto LABEL_15;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Wifi2 provider active, but pipelined not activated", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F7F10(v23);
      }
    }

LABEL_15:
    v9 = v5[1];
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
        v10 = v5[2];
        v11 = *v10 == v5;
        v5 = v10;
      }

      while (!v11);
    }

    v5 = v10;
  }

  while (v10 != (a1 + 240));
  if (v6)
  {
    v13 = 1;
    goto LABEL_38;
  }

LABEL_30:
  if (*(a1 + 712) == 1)
  {
    *buf = 1;
    sub_1003C9410(a2, buf);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "GPSController indicates hardware active while client is not active", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8008();
    }
  }

  v13 = 0;
LABEL_38:
  *buf = 13;
  sub_1003C9410(a2, buf);
  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v15 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a2 + 16);
    v17 = *(a1 + 712);
    *buf = 134349568;
    v31 = v16;
    v32 = 1026;
    v33 = v13;
    v34 = 1026;
    v35 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#techstatus,enquired,sz,%{public}zu,gpsClientActive,%{public}d,gpsHwActive,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v19 = *(a2 + 16);
    v20 = *(a1 + 712);
    v24 = 134349568;
    v25 = v19;
    v26 = 1026;
    v27 = v13;
    v28 = 1026;
    v29 = v20;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::getActiveTechs(std::set<int> &)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  return 1;
}

double sub_1001CCA3C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 344) <= 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = *(a1 + 76);
  }

  else
  {
    Current = sub_1000081AC();
    v4 = *(a2 + 344);
  }

  return Current - v4;
}

NSDictionary *sub_1001CCA84(uint64_t a1)
{
  v4[0] = @"na";
  v3[0] = @"name";
  v3[1] = @"clients";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v3[2] = @"daily";
  v4[1] = v1;
  v4[2] = &off_10254FA58;
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

uint64_t sub_1001CCB30(CFDictionaryRef theDict, BOOL *a2)
{
  sub_100005548(v7, theDict);
  v3 = sub_10001CBC0(v7, @"kCellMonitorRefreshResultKey", a2);
  if ((v3 & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B4CB70();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "copyValuesFromCellMonitorRefreshResultDictionary, couldn't get dictionary values", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B4CB98(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCoreTelephonyUtils::copyValuesFromCellMonitorRefreshResultDictionary(CFDictionaryRef, BOOL &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  sub_100005DA4(v7);
  return v3;
}

void sub_1001CCCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CCD00(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018C726C();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLTelephonyService, Refresh Cell Monitor", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C7280();
  }

  sub_1001CCDA8(a1 + 176, 255);
  return 1;
}

void sub_1001CCDA8(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101976024();
    }

    if (a2 == 1)
    {
      v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:2];
      if (qword_1025D4650 != -1)
      {
        sub_10196F27C();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh for SimTwo", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101976100();
      }
    }

    else if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];
      if (qword_1025D4650 != -1)
      {
        sub_10196F27C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh for SimOne", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019761DC();
      }
    }

    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001CEE08;
    v10[3] = &unk_102449B88;
    v10[4] = a1;
    [v9 refreshCellMonitor:v5 completion:v10];
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "triggerCellMonitorRefresh";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#ctcl %s fCTClient is null ", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019762B8();
    }
  }
}

void sub_1001CD078(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A26E74();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSignificantChangeManager::onAwarenessNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A26E88();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSignificantChangeManager::onAwarenessNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CD23C(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001CD23C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101A26EB0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 68289538;
    *&v11[8] = 2082;
    *&v11[10] = "";
    *&v11[18] = 1040;
    *&v11[20] = LocationLogEncryptionDataSize();
    *&v11[24] = 2098;
    *&v11[26] = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SLC Got location, location:%{public, location:Encrypted_CLClientLocation}.*P}", v11, 0x22u);
  }

  v7 = a4[7];
  v15 = a4[6];
  v16 = v7;
  v17[0] = a4[8];
  *(v17 + 12) = *(a4 + 140);
  v8 = a4[3];
  *&v11[32] = a4[2];
  v12 = v8;
  v9 = a4[5];
  v13 = a4[4];
  v14 = v9;
  v10 = a4[1];
  *v11 = *a4;
  *&v11[16] = v10;
  sub_1001CD380(a1, v11);
}

void sub_1001CD380(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 357) != 1)
  {
    v8 = (a2 + 20);
    v9 = *(a2 + 20);
    if (v9 < 0.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A26EB0();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SLC Significant location change got invalid location!}", buf, 0x12u);
        if (qword_1025D47A0 != -1)
        {
          sub_101A26E08();
        }
      }

      v11 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SLC Significant location change got invalid location!", "{msg%{public}.0s:#SLC Significant location change got invalid location!}", buf, 0x12u);
      }

      return;
    }

    v12 = *(a2 + 96);
    if (v9 >= 20000.0 || (v12 - 9) >= 0xFFFFFFFE)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A26EB0();
      }

      v14 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate location}";
      goto LABEL_26;
    }

    if (v12 > 8)
    {
      if (v12 == 13)
      {
        if (v9 < 250.0)
        {
          goto LABEL_46;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_101A26EB0();
        }

        v14 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate LoiOverride location}";
        goto LABEL_26;
      }

      if (v12 != 9)
      {
        goto LABEL_46;
      }
    }

    else if (v12 != 1)
    {
LABEL_35:
      if (v12 == 4 && v9 >= 250.0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A26EB0();
        }

        v14 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          return;
        }

        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate WIFI location}";
        goto LABEL_26;
      }

LABEL_46:
      if ((*(a1 + 356) & 1) == 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101A26EB0();
        }

        v20 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Warning #SLC Significant location change monitoring not active; not handling}", buf, 0x12u);
        }

        sub_100021AFC(buf);
        v21 = *(a2 + 112);
        *v179 = *(a2 + 96);
        *&v179[16] = v21;
        v180[0] = *(a2 + 128);
        *(v180 + 12) = *(a2 + 140);
        v22 = *(a2 + 48);
        *&buf[32] = *(a2 + 32);
        *&buf[48] = v22;
        v23 = *(a2 + 80);
        *v178 = *(a2 + 64);
        *&v178[16] = v23;
        v24 = *(a2 + 16);
        *buf = *a2;
        *&buf[16] = v24;
        v165 = 0;
        (*(*a1 + 136))(a1, &v165, buf);

        if (v185)
        {
          sub_100008080(v185);
        }

        if (v184 < 0)
        {
          operator delete(__p);
        }

        if (v182)
        {
          sub_100008080(v182);
        }

        if (v181)
        {
          sub_100008080(v181);
        }

        return;
      }

      v16 = v12 - 6;
      v17 = 1000.0;
      if (v9 >= 1000.0 || v16 >= 3)
      {
        v19 = (a2 + 88);
        if (*(a2 + 88) >= 0.0)
        {
          goto LABEL_74;
        }

        if (v9 <= 0.0)
        {
          *v19 = 0.0;
LABEL_74:
          v164 = 0.0;
          Current = CFAbsoluteTimeGetCurrent();
          v27 = *v8 >= 0.0 && Current - *(a2 + 76) < 10.0;
          v28 = Current - *(a1 + 408);
          v163 = v28;
          v29 = (a1 + 200);
          v30 = *(a1 + 220);
          v31 = v30 < 0.0;
          if (v30 < 0.0)
          {
            if (qword_1025D47A0 != -1)
            {
              sub_101A26EB0();
            }

            v32 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#SLC got first location, sending SLC notification", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A277DC();
            }

            v33 = *(a2 + 16);
            *v29 = *a2;
            *(a1 + 216) = v33;
            v34 = *(a2 + 32);
            v35 = *(a2 + 48);
            v36 = *(a2 + 80);
            *(a1 + 264) = *(a2 + 64);
            *(a1 + 280) = v36;
            *(a1 + 232) = v34;
            *(a1 + 248) = v35;
            v37 = *(a2 + 96);
            v38 = *(a2 + 112);
            v39 = *(a2 + 128);
            *(a1 + 340) = *(a2 + 140);
            *(a1 + 312) = v38;
            *(a1 + 328) = v39;
            *(a1 + 296) = v37;
            *(a1 + 408) = 0;
            v40 = 0.0;
            if (v27)
            {
              goto LABEL_86;
            }

            v42 = 1;
          }

          else
          {
            sub_1001097CC((a1 + 120), a2, a1 + 200);
            v40 = v43;
            v164 = v43;
            v44 = (a1 + 276);
            v45 = *(a1 + 276);
            v46 = *(a2 + 76);
            if (qword_1025D47A0 != -1)
            {
              sub_101A26EB0();
            }

            v47 = vabdd_f64(v45, v46);
            v48 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218496;
              *&buf[4] = v40;
              *&buf[12] = 2048;
              *&buf[14] = v47;
              *&buf[22] = 2048;
              *&buf[24] = 0x3FD5555555555555;
              _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "#SLC handleSignificantLocationChange, distance, %.1lf, timeDelta, %.1lf, maxFactor, %.1lf", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A274A8(v40, v47);
            }

            if (v27)
            {
              if (v40 < 500.0 || (v49 = *v8, v40 < *v8))
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v50 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  v51 = *(a2 + 4);
                  v52 = *(a2 + 12);
                  v53 = *(a2 + 20);
                  v54 = *(a1 + 204);
                  v55 = *(a1 + 212);
                  v56 = *(a1 + 220);
                  *buf = 134547201;
                  *&buf[4] = v51;
                  *&buf[12] = 2053;
                  *&buf[14] = v52;
                  *&buf[22] = 2048;
                  *&buf[24] = v53;
                  *&buf[32] = 2048;
                  *&buf[34] = v40;
                  *&buf[42] = 2053;
                  *&buf[44] = v54;
                  *&buf[52] = 2053;
                  *&buf[54] = v55;
                  *&buf[62] = 2048;
                  *v178 = v56;
                  _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "#SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f moved only %.2fm from previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f, discarding", buf, 0x48u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v157 = *(a2 + 4);
                v158 = *(a2 + 12);
                v159 = *(a2 + 20);
                v160 = *(a1 + 204);
                v161 = *(a1 + 212);
                v162 = *(a1 + 220);
                v165 = 134547201;
                v166 = v157;
                v167 = 2053;
                *v168 = v158;
                *&v168[8] = 2048;
                *&v168[10] = v159;
                *&v168[18] = 2048;
                *&v168[20] = v40;
                *&v168[28] = 2053;
                *&v168[30] = v160;
                *&v168[38] = 2053;
                *&v168[40] = v161;
                *&v168[48] = 2048;
                *v169 = v162;
                v96 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v96);
LABEL_198:
                if (v96 != buf)
                {
                  free(v96);
                }

LABEL_107:
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v57 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "#SLC no location change", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A276F8();
                }

                v42 = 0;
                v31 = 0;
LABEL_127:
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v64 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
                {
                  *buf = 68289795;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  *&buf[18] = 1026;
                  *&buf[20] = v42;
                  *&buf[24] = 2049;
                  *&buf[26] = v40;
                  *&buf[34] = 2050;
                  *&buf[36] = v28;
                  _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#SLC Location inspection complete, isSignificantlocationchange:%{public}hhd, distance:%{private}f, secondsSinceLastSLC_s:%{public}.09f}", buf, 0x2Cu);
                }

                if (sub_100071CA0())
                {
                  sub_10004FD18(buf);
                  v165 = v42;
                  sub_10004345C(buf, "slcUpdate", &v165);
                  sub_100116D68(buf, "distance", &v164);
                  sub_100116D68(buf, "hAcc", v8);
                  sub_100116D68(buf, "secondsSinceLastSLC", &v163);
                  sub_100071CAC(buf, "locationd");
                  sub_100005DA4(buf);
                }

                if (v31)
                {
                  if (qword_1025D48C0 != -1)
                  {
                    sub_101A27A88();
                  }

                  v65 = qword_1025D48C8;
                  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
                  {
                    v66 = *(a2 + 4);
                    v67 = *(a2 + 12);
                    v68 = *(a2 + 20);
                    v69 = *(a2 + 88);
                    v70 = *(a2 + 96);
                    v71 = *(a1 + 204);
                    v72 = *(a1 + 212);
                    v73 = *(a1 + 220);
                    v74 = *(a2 + 76) - *(a1 + 276);
                    *buf = 136317955;
                    *&buf[4] = "SignificantChange";
                    *&buf[12] = 1024;
                    *&buf[14] = 1;
                    *&buf[18] = 2053;
                    *&buf[20] = v66;
                    *&buf[28] = 2053;
                    *&buf[30] = v67;
                    *&buf[38] = 2048;
                    *&buf[40] = v68;
                    *&buf[48] = 2048;
                    *&buf[50] = v69;
                    *&buf[58] = 1024;
                    *&buf[60] = v70;
                    *v178 = 2053;
                    *&v178[2] = v71;
                    *&v178[10] = 2053;
                    *&v178[12] = v72;
                    *&v178[20] = 2048;
                    *&v178[22] = v73;
                    *&v178[30] = 2048;
                    *v179 = v164;
                    *&v179[8] = 2048;
                    *&v179[10] = v74;
                    _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Lifespan,%.2f,LocationType,%d,PrevLocation,%{sensitive}+.8f,%{sensitive}+.8f,%.2f,Distance,%.2f,DeltaTime,%.3f,", buf, 0x72u);
                  }

                  if (sub_10000A100(123, 2))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1025D48C0 != -1)
                    {
                      sub_101A27A88();
                    }

                    v142 = *(a2 + 4);
                    v143 = *(a2 + 12);
                    v144 = *(a2 + 20);
                    v145 = *(a2 + 88);
                    v146 = *(a2 + 96);
                    v147 = *(a1 + 204);
                    v148 = *(a1 + 212);
                    v149 = *(a1 + 220);
                    v150 = *(a2 + 76) - *(a1 + 276);
                    v165 = 136317955;
                    v166 = "SignificantChange";
                    v167 = 1024;
                    *v168 = 1;
                    *&v168[4] = 2053;
                    *&v168[6] = v142;
                    *&v168[14] = 2053;
                    *&v168[16] = v143;
                    *&v168[24] = 2048;
                    *&v168[26] = v144;
                    *&v168[34] = 2048;
                    *&v168[36] = v145;
                    *&v168[44] = 1024;
                    *&v168[46] = v146;
                    *v169 = 2053;
                    *&v169[2] = v147;
                    *v170 = 2053;
                    *&v170[2] = v148;
                    v171 = 2048;
                    v172 = v149;
                    v173 = 2048;
                    v174 = v164;
                    v175 = 2048;
                    v176 = v150;
                    v151 = _os_log_send_and_compose_impl();
                    sub_100152C7C("LOCATION", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v151);
                    if (v151 != buf)
                    {
                      free(v151);
                    }
                  }

                  *(a1 + 184) = v164;
                  *(a1 + 192) = *(a2 + 76) - *(a1 + 276);
                  v75 = *(a2 + 140);
                  v77 = *(a2 + 112);
                  v76 = *(a2 + 128);
                  *(a1 + 296) = *(a2 + 96);
                  *(a1 + 312) = v77;
                  *(a1 + 328) = v76;
                  *(a1 + 340) = v75;
                  v79 = *(a2 + 32);
                  v78 = *(a2 + 48);
                  v80 = *(a2 + 80);
                  *(a1 + 264) = *(a2 + 64);
                  *(a1 + 280) = v80;
                  *(a1 + 232) = v79;
                  *(a1 + 248) = v78;
                  v81 = *(a2 + 16);
                  *v29 = *a2;
                  *(a1 + 216) = v81;
                  *(a1 + 276) = Current;
                  *(a1 + 408) = Current;
                  sub_100C0E020(a1);
                }

                return;
              }

              if (*(a1 + 296) == *(a2 + 96))
              {
                v82 = *v44;
              }

              else
              {
                v97 = *(a1 + 288);
                v82 = *v44;
                if (v97 >= 0.0 && v97 + v82 > Current)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_101A26E08();
                  }

                  v98 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                  {
                    v99 = *(a1 + 204);
                    v100 = *(a1 + 212);
                    v101 = *(a1 + 220);
                    v102 = *v44;
                    v103 = *(a1 + 288);
                    v104 = *(a2 + 4);
                    v105 = *(a2 + 12);
                    v106 = *(a2 + 20);
                    *buf = 134547457;
                    *&buf[4] = v99;
                    *&buf[12] = 2053;
                    *&buf[14] = v100;
                    *&buf[22] = 2048;
                    *&buf[24] = v101;
                    *&buf[32] = 2048;
                    *&buf[34] = v102;
                    *&buf[42] = 2048;
                    *&buf[44] = v103;
                    *&buf[52] = 2053;
                    *&buf[54] = v104;
                    *&buf[62] = 2053;
                    *v178 = v105;
                    *&v178[8] = 2048;
                    *&v178[10] = v106;
                    _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_DEBUG, "#SLC Lifespan of previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f has not expired (timestamp %.2f, lifespan %.2f), discarding <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f", buf, 0x52u);
                  }

                  if (!sub_10000A100(121, 2))
                  {
                    goto LABEL_107;
                  }

                  bzero(buf, 0x65CuLL);
                  if (qword_1025D47A0 != -1)
                  {
                    sub_101A26E08();
                  }

                  v107 = *(a1 + 204);
                  v108 = *(a1 + 212);
                  v109 = *(a1 + 220);
                  v110 = *v44;
                  v111 = *(a1 + 288);
                  v112 = *(a2 + 4);
                  v113 = *(a2 + 12);
                  v114 = *(a2 + 20);
                  v165 = 134547457;
                  v166 = v107;
                  v167 = 2053;
                  *v168 = v108;
                  *&v168[8] = 2048;
                  *&v168[10] = v109;
                  *&v168[18] = 2048;
                  *&v168[20] = v110;
                  *&v168[28] = 2048;
                  *&v168[30] = v111;
                  *&v168[38] = 2053;
                  *&v168[40] = v112;
                  *&v168[48] = 2053;
                  *v169 = v113;
                  *&v169[8] = 2048;
                  *v170 = v114;
                  v96 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v96);
                  goto LABEL_198;
                }
              }

              if (vabdd_f64(Current, v82) < 10.0 && *(a1 + 220) <= v49)
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v129 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  v130 = *v44;
                  v131 = *(a1 + 204);
                  v132 = *(a1 + 212);
                  v133 = *(a2 + 4);
                  v134 = *(a2 + 12);
                  v135 = *(a2 + 20);
                  *buf = 134219521;
                  *&buf[4] = v130;
                  *&buf[12] = 2053;
                  *&buf[14] = v131;
                  *&buf[22] = 2053;
                  *&buf[24] = v132;
                  *&buf[32] = 2048;
                  *&buf[34] = 0x4024000000000000;
                  *&buf[42] = 2053;
                  *&buf[44] = v133;
                  *&buf[52] = 2053;
                  *&buf[54] = v134;
                  *&buf[62] = 2048;
                  *v178 = v135;
                  _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEBUG, "#SLC Timestamp %.2f of previous significant location <%{sensitive}+.8f,%{sensitive}+.8f> is less than %.2f seconds ago; discarding <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f", buf, 0x48u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v136 = *v44;
                v137 = *(a1 + 204);
                v138 = *(a1 + 212);
                v139 = *(a2 + 4);
                v140 = *(a2 + 12);
                v141 = *(a2 + 20);
                v165 = 134219521;
                v166 = *&v136;
                v167 = 2053;
                *v168 = v137;
                *&v168[8] = 2053;
                *&v168[10] = v138;
                *&v168[18] = 2048;
                *&v168[20] = 0x4024000000000000;
                *&v168[28] = 2053;
                *&v168[30] = v139;
                *&v168[38] = 2053;
                *&v168[40] = v140;
                *&v168[48] = 2048;
                *v169 = v141;
                v96 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v96);
                goto LABEL_198;
              }

              if (v47 * 340.0 < v40 && v40 > v49 + *(a1 + 220))
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v83 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = *(a2 + 4);
                  v85 = *(a2 + 12);
                  v86 = *(a2 + 20);
                  v87 = *(a1 + 204);
                  v88 = *(a1 + 212);
                  v89 = *(a1 + 220);
                  *buf = 134547457;
                  *&buf[4] = v84;
                  *&buf[12] = 2053;
                  *&buf[14] = v85;
                  *&buf[22] = 2048;
                  *&buf[24] = v86;
                  *&buf[32] = 2048;
                  *&buf[34] = v40;
                  *&buf[42] = 2053;
                  *&buf[44] = v87;
                  *&buf[52] = 2053;
                  *&buf[54] = v88;
                  *&buf[62] = 2048;
                  *v178 = v89;
                  *&v178[8] = 2048;
                  *&v178[10] = v47;
                  _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "#Warning #SLC Location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f is too far (distance %.2f) from previous location <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f from %.3fs ago, discarding", buf, 0x52u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v90 = *(a2 + 4);
                v91 = *(a2 + 12);
                v92 = *(a2 + 20);
                v93 = *(a1 + 204);
                v94 = *(a1 + 212);
                v95 = *(a1 + 220);
                v165 = 134547457;
                v166 = v90;
                v167 = 2053;
                *v168 = v91;
                *&v168[8] = 2048;
                *&v168[10] = v92;
                *&v168[18] = 2048;
                *&v168[20] = v40;
                *&v168[28] = 2053;
                *&v168[30] = v93;
                *&v168[38] = 2053;
                *&v168[40] = v94;
                *&v168[48] = 2048;
                *v169 = v95;
                *&v169[8] = 2048;
                *v170 = v47;
                v96 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v96);
                goto LABEL_198;
              }

              if (v28 <= 300.0)
              {
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v116 = off_1025D47A8;
                if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
                {
                  v117 = *(a1 + 204);
                  v118 = *(a1 + 212);
                  v119 = *(a1 + 220);
                  v120 = *(a2 + 4);
                  v121 = *(a2 + 12);
                  v122 = *(a2 + 20);
                  *buf = 134219521;
                  *&buf[4] = v28;
                  *&buf[12] = 2053;
                  *&buf[14] = v117;
                  *&buf[22] = 2053;
                  *&buf[24] = v118;
                  *&buf[32] = 2048;
                  *&buf[34] = v119;
                  *&buf[42] = 2053;
                  *&buf[44] = v120;
                  *&buf[52] = 2053;
                  *&buf[54] = v121;
                  *&buf[62] = 2048;
                  *v178 = v122;
                  _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_DEBUG, "#SLC avoiding too frequent SLC notifications, age, %.1f, prev location, <%{sensitive}+.8f,%{sensitive}+.8f>, acc, %.2lf, new location, <%{sensitive}+.8f,%{sensitive}+.8f>, acc, %.2f", buf, 0x48u);
                }

                if (!sub_10000A100(121, 2))
                {
                  goto LABEL_107;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1025D47A0 != -1)
                {
                  sub_101A26E08();
                }

                v123 = *(a1 + 204);
                v124 = *(a1 + 212);
                v125 = *(a1 + 220);
                v126 = *(a2 + 4);
                v127 = *(a2 + 12);
                v128 = *(a2 + 20);
                v165 = 134219521;
                v166 = *&v28;
                v167 = 2053;
                *v168 = v123;
                *&v168[8] = 2053;
                *&v168[10] = v124;
                *&v168[18] = 2048;
                *&v168[20] = v125;
                *&v168[28] = 2053;
                *&v168[30] = v126;
                *&v168[38] = 2053;
                *&v168[40] = v127;
                *&v168[48] = 2048;
                *v169 = v128;
                v96 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v96);
                goto LABEL_198;
              }

              if (qword_1025D47A0 != -1)
              {
                sub_101A26E08();
              }

              v115 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = v40;
                _os_log_impl(dword_100000000, v115, OS_LOG_TYPE_DEBUG, "#SLC issue notification, distance, %.1lf", buf, 0xCu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A275E0(v40);
              }

LABEL_86:
              if (qword_1025D47A0 != -1)
              {
                sub_101A26E08();
              }

              v41 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#SLC reporting a location change", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A279A4();
              }

              *(a1 + 408) = 0;
              v42 = 1;
              v31 = 1;
              goto LABEL_127;
            }

            if (qword_1025D47A0 != -1)
            {
              sub_101A26E08();
            }

            v58 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
            {
              v59 = *(a2 + 4);
              v60 = *(a2 + 12);
              v61 = *(a2 + 20);
              v62 = *(a2 + 76);
              *buf = 134546433;
              *&buf[4] = v59;
              *&buf[12] = 2053;
              *&buf[14] = v60;
              *&buf[22] = 2048;
              *&buf[24] = v61;
              *&buf[32] = 2048;
              *&buf[34] = v62;
              _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "#SLC <%{sensitive}+.8f,%{sensitive}+.8f> acc %.2f timestamp %.2f is stale, discarding", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47A0 != -1)
              {
                sub_101A26E08();
              }

              v152 = *(a2 + 4);
              v153 = *(a2 + 12);
              v154 = *(a2 + 20);
              v155 = *(a2 + 76);
              v165 = 134546433;
              v166 = v152;
              v167 = 2053;
              *v168 = v153;
              *&v168[8] = 2048;
              *&v168[10] = v154;
              *&v168[18] = 2048;
              *&v168[20] = v155;
              v156 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantChangeManager::handleSignificantLocationChange(CLDaemonLocation)", "%s\n", v156);
              if (v156 != buf)
              {
                free(v156);
              }
            }

            v42 = 0;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_101A26E08();
          }

          v63 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "#SLC new location is not useful", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A278C0();
          }

          goto LABEL_127;
        }

        v17 = *(a2 + 20);
      }

      else
      {
        v19 = (a2 + 88);
        v25 = *(a2 + 88);
        *(a2 + 20) = 0x408F400000000000;
        if (v25 >= 0.0)
        {
          goto LABEL_74;
        }
      }

      *v19 = v17 / 250.0;
      goto LABEL_74;
    }

    if (v9 < 30.0)
    {
      goto LABEL_35;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101A26EB0();
    }

    v14 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v4 = "{msg%{public}.0s:#SLC Ignoring inaccurate GPS location}";
LABEL_26:
    v5 = v14;
    v6 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101A26EB0();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #SLC Currently sending significant location changes read from defaults.}", buf, 0x12u);
    if (qword_1025D47A0 != -1)
    {
      sub_101A26E08();
    }
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v4 = "{msg%{public}.0s:#Warning #SLC Delete 'SpoofSignificantLocationChange' from defaults to continue monitoring SLC updates.}";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
LABEL_27:
    _os_log_impl(dword_100000000, v5, v6, v4, buf, 0x12u);
  }
}