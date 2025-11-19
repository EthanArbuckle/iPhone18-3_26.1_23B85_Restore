uint64_t sub_10081B304(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1007F05F0(result);

    operator delete();
  }

  return result;
}

void sub_10081B350(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = 0;
  sub_10081B380(v2, a2, &v3, a2);
}

void sub_10081B380(uint64_t a1, uint64_t a2, int *a3, _OWORD *a4)
{
  if (qword_1025D42D0 != -1)
  {
    sub_101949E84();
  }

  v7 = qword_1025D42D8;
  if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Received Bias Notification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101949E98();
  }

  if (*a3)
  {
    if (qword_1025D4310 != -1)
    {
      sub_101949F9C();
    }

    v8 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_ERROR))
    {
      v9 = *a3;
      *buf = 67240192;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Unexpected pressure bias notification.notification,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101949FC4(a3);
    }
  }

  else
  {
    *buf = *a4;
    *&buf[13] = *(a4 + 13);
    v10 = sub_100011660();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10081B658;
    v11[3] = &unk_1024725B8;
    v11[4] = a1;
    v12[0] = *buf;
    *(v12 + 13) = *&buf[13];
    sub_100042800(v10, v11);
  }
}

void *sub_10081B554(void *a1)
{
  *a1 = off_102474D10;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10081B304(a1 + 5, 0);

  return sub_10095D914(a1);
}

void sub_10081B620(void *a1)
{
  sub_10081B554(a1);

  operator delete();
}

uint64_t sub_10081B658(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  *(v1 + 89) = *(result + 53);
  *(v1 + 76) = v2;
  if (*(result + 52) != 3.4028e38 || *(result + 44) != 0.0 || *(result + 48) != 0.0)
  {
    *(v1 + 57) = 1;
  }

  return result;
}

double sub_10081B6A8(void *a1, void *a2, uint64_t *a3)
{
  if (a2 > 1)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194A0C4();
    }

    v9 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unrecognized pressure notification %{public}d", &v11, 8u);
    }

    v7 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_10194A0D8(a2);
    }
  }

  else
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194A0C4();
    }

    v5 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
    {
      v6 = *a3;
      v11 = 134349056;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Setting pressure data update interval to %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A1D4();
    }

    return sub_10081B830(a1);
  }

  return v7;
}

double sub_10081B830(void *a1)
{
  v2 = 0;
  v3 = 1;
  v4 = 0.0;
  do
  {
    v5 = v3;
    v6 = sub_10027E6E4(a1, v2);
    if (v4 == 0.0 || (v6 > 0.0 ? (v7 = v6 < v4) : (v7 = 0), v7))
    {
      v4 = v6;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  a1[8] = 0;
  if (a1[5])
  {
    v8 = sub_10027E6E4(a1, 1);
    v9 = a1[5];
    if (v8 == 0.0)
    {
      sub_1007F0B34(v9);
    }

    else
    {
      sub_1007F05F4(v9);
    }
  }

  if (a1[6])
  {
    v10 = sub_10027E6E4(a1, 1);
    v11 = a1[6];
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    if (v10 == 0.0)
    {
      [v12 unregister:v13 forNotification:0];
    }

    else
    {
      [v12 register:v13 forNotification:0 registrationInfo:0];
    }
  }

  if (!a1[15] && (sub_100177B18() & 0x10) != 0)
  {
    v14 = sub_1009B38EC();
    sub_101860780(v14);
  }

  sub_10017A1F4(a1[15], v4);
  v15 = sub_100179350(a1[15], v4);
  if (qword_1025D4310 != -1)
  {
    sub_101949F9C();
  }

  v16 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = v15;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "Setting pressure batch interval to: %{public}ld us", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194A2C8();
  }

  return v4;
}

void sub_10081BA40(uint64_t a1, int a2)
{
  if (sub_10071BCEC())
  {
    v8 = 0x3FA0E5604189374CLL;
    if (a2)
    {
      v4 = &v8;
    }

    else
    {
      v4 = &unk_101CAFEB8;
    }

    sub_10183A3AC(buf, "PressureTempMaxUpdateInterval", v4, 0);
    *(a1 + 112) = *&v10[4];
    v5 = (a1 + 112);
    if (qword_1025D4310 != -1)
    {
      sub_101949F9C();
    }

    v6 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
    {
      v7 = *v5 * 1000.0;
      *buf = 134349056;
      *v10 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Temperature update interval set to %{public}f ms", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A3C0();
    }
  }
}

void sub_10081BB74(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (sub_10071BCEC() && !*a3)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194A0C4();
    }

    v6 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 8);
      v8 = 134349056;
      v9 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Notified of workout event type %{public}ld", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A4C0();
    }

    if (qword_10265A3C8 != -1)
    {
      sub_10194A5B4();
    }

    if (qword_1026372C0)
    {
      sub_10081BA40(qword_1026372C0, *(a4 + 8) != 0);
    }
  }
}

uint64_t sub_10081BD2C()
{
  if ((atomic_load_explicit(&qword_10265A3D8, memory_order_acquire) & 1) == 0)
  {
    sub_10194A728();
  }

  result = qword_10265A3D0;
  if (!qword_10265A3D0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10081BDB4(unint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLARSessionState,Received unhandled ar session state: %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLARSessionState(const _CLARSessionState, CLP::LogEntry::Vision::ARSessionState &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    LODWORD(v3) = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_10081BF40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10081BF4C(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v57 = 0;
      sub_10081C7D8([a1 trackingState], &v57);
      v4 = v57;
      if (!sub_100AB8CC0(v57))
      {
        __assert_rtn("set_tracking_state", "CLPVisionEvent.pb.h", 3498, "::CLP::LogEntry::Vision::VIOTrackingState_IsValid(value)");
      }

      v5 = *(a2 + 88);
      *(a2 + 80) = v4;
      *(a2 + 88) = v5 | 3;
      v6 = *(a2 + 8);
      if (!v6)
      {
        operator new();
      }

      [a1 originTimestamp];
      v8 = sub_10081C970(v6, v7);
      *(a2 + 88) |= 4u;
      v9 = *(a2 + 16);
      if (!v9)
      {
        operator new();
      }

      [a1 timestamp];
      v11 = sub_10081C970(v9, v10);
      [a1 inertialStateInfo];
      *(a2 + 88) |= 8u;
      v13 = *(a2 + 24);
      if (!v13)
      {
        operator new();
      }

      v14 = v13[4].i32[0];
      v13->i64[1] = *v58;
      v12.i32[0] = *&v58[8];
      v15 = vmovl_u16(*&vmovl_u8(v12));
      v13[1] = v15;
      v15.i32[0] = v59;
      v13[2] = vmovl_u16(*&vmovl_u8(*v15.i8));
      v16 = v61;
      v13[3].i32[0] = v60;
      v13[3].i32[1] = v16;
      v17 = v62;
      v13[4].i32[0] = v14 | 0xFFF;
      v13[3].i32[2] = v17;
      if ([a1 inertialState])
      {
        v18 = [objc_msgSend(a1 "inertialState")];
        v19 = [objc_msgSend(a1 "inertialState")];
        v20 = v19;
        if (v19 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_57;
        }

        if (v19 >= 0x17)
        {
          operator new();
        }

        BYTE7(v64) = v19;
        if (v19)
        {
          memmove(buf, v18, v19);
        }

        buf[v20] = 0;
        *(a2 + 88) |= 0x10u;
        v25 = *(a2 + 32);
        if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v25, buf);
        if (SBYTE7(v64) < 0)
        {
          operator delete(*buf);
        }
      }

      [a1 inertialCovarianceInfo];
      *(a2 + 88) |= 0x20u;
      v27 = *(a2 + 40);
      if (!v27)
      {
        operator new();
      }

      v28 = v27[4].i32[0];
      v27->i64[1] = v51;
      v26.i32[0] = v52;
      v29 = vmovl_u16(*&vmovl_u8(v26));
      v27[1] = v29;
      v29.i32[0] = v53;
      v27[2] = vmovl_u16(*&vmovl_u8(*v29.i8));
      v27[3].i32[0] = v54;
      v27[3].i32[1] = v55;
      v27[4].i32[0] = v28 | 0xFFF;
      v27[3].i32[2] = v56;
      if (![a1 inertialCovariance])
      {
        goto LABEL_48;
      }

      v30 = [objc_msgSend(a1 "inertialCovariance")];
      v31 = [objc_msgSend(a1 "inertialCovariance")];
      v32 = v31;
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v31 >= 0x17)
        {
          operator new();
        }

        BYTE7(v64) = v31;
        if (v31)
        {
          memmove(buf, v30, v31);
        }

        buf[v32] = 0;
        *(a2 + 88) |= 0x40u;
        v33 = *(a2 + 48);
        if (v33 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v33, buf);
        if (SBYTE7(v64) < 0)
        {
          operator delete(*buf);
        }

LABEL_48:
        *(a2 + 88) |= 0x80u;
        v34 = *(a2 + 56);
        if (!v34)
        {
          operator new();
        }

        [a1 cameraPose];
        *buf = v35;
        v64 = v36;
        v65 = v37;
        v66 = v38;
        v39 = sub_10081CEAC(buf, v34);
        *(a2 + 88) |= 0x100u;
        v40 = *(a2 + 64);
        if (!v40)
        {
          operator new();
        }

        [a1 cameraIntrinsics];
        *&buf[8] = v41;
        DWORD2(v64) = v42;
        *buf = v43;
        *&v64 = v44;
        DWORD2(v65) = v45;
        *&v65 = v46;
        v47 = sub_10081D210(buf, v40);
        [a1 cameraImageResolution];
        *(a2 + 88) |= 0x200u;
        v50 = *(a2 + 72);
        if (!v50)
        {
          operator new();
        }

        *(v50 + 28) |= 3u;
        result = v8 & v11 & v39 & v47;
        *(v50 + 8) = v48;
        *(v50 + 16) = v49;
        return result;
      }

LABEL_57:
      sub_100061080();
    }

    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v23 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVIOEstimation,Invalid output pointer,pEstimationMsg,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v21 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVIOEstimation,Invalid input pointer,estimation,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
LABEL_26:
      sub_10194A7B0(buf);
      *v58 = 134283521;
      *&v58[4] = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVIOEstimation(const _CLVIOEstimation *const, CLP::LogEntry::Vision::VIOEstimation *)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081C704(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081C7D8(unsigned int a1, int *a2)
{
  v3 = a1;
  if (a1 >= 5)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCV3DVIOTrackingState,Received unhandled vio tracking state: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCV3DVIOTrackingState(const CV3DVIOTrackingState, CLP::LogEntry::Vision::VIOTrackingState &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_10081C964(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10081C970(uint64_t a1, double a2)
{
  v22 = a2;
  if (a1)
  {
    *(a1 + 36) |= 2u;
    *(a1 + 16) = a2;
    if (*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v23[0] = 0.0;
      v7 = sub_10081BD2C();
      v8 = sub_100309F2C(v7, &v22, v23);
      if (v8)
      {
        v9 = v23[0];
        *(a1 + 36) |= 1u;
        *(a1 + 8) = v9;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v14 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToCFAbsolute_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          LOWORD(v21) = 0;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      v21 = 0;
      v15 = sub_10081BD2C();
      v16 = sub_100131674(v15, &v22, &v21);
      if (v16)
      {
        v17 = v21;
        *(a1 + 36) |= 4u;
        *(a1 + 24) = v17;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v18 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToMachContinuous_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }

      return v8 & v16;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A79C();
      }

      v13 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v25 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid input value,machAbsoluteTime,%{public}.3lf", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_10194A7B0(buf);
        LODWORD(v23[0]) = 134349056;
        *(v23 + 4) = v22;
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v12);
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v10 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v25 = 0.0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid output pointer,pTimeStampMsg,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      LODWORD(v23[0]) = 134283521;
      *(v23 + 4) = 0.0;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v12);
LABEL_27:
      if (v12 != buf)
      {
        free(v12);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081CEA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10081CEAC(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 4);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821DC0();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_100821934(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v17) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat4x4,fromSimdFloat4(matrix.columns[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat4x4(const simd_float4x4 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 16;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v13 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v17 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat4x4,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat4x4(const simd_float4x4 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081D200(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081D210(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 3);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821DC0();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_100821738(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v17) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat3x3,fromSimdFloat3(matrix.columns[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat3x3(const simd_float3x3 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 16;
    }

    while (v4 != 3);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v13 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v17 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat3x3,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat3x3(const simd_float3x3 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081D564(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081D574(void *a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v15 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v19 = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVLLocalizationResult,Invalid input pointer,localizationResult,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

LABEL_24:
    sub_10194A7B0(buf);
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVLLocalizationResult(const _CLVLLocalizationResult *const, CLP::LogEntry::Vision::VLLocalizationResult *)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  if (a2)
  {
    *(a2 + 56) |= 1u;
    v4 = *(a2 + 8);
    if (!v4)
    {
      operator new();
    }

    [a1 timestamp];
    v6 = sub_10081C970(v4, v5);
    *(a2 + 56) |= 2u;
    v7 = *(a2 + 16);
    if (!v7)
    {
      operator new();
    }

    [a1 location];
    v8 = sub_10081DA0C(buf, v7);
    *(a2 + 56) |= 4u;
    v9 = *(a2 + 24);
    if (!v9)
    {
      operator new();
    }

    [a1 transform];
    v10 = sub_10081DC34(buf, v9);
    *(a2 + 56) |= 8u;
    v11 = *(a2 + 32);
    if (!v11)
    {
      operator new();
    }

    [a1 covariance];
    v12 = sub_10081DF98(buf, v11);
    [a1 confidence];
    result = v6 & v8 & v10 & v12;
    *(a2 + 56) |= 0x10u;
    *(a2 + 48) = v14;
    return result;
  }

  if (qword_1025D46A0 != -1)
  {
    sub_10194A79C();
  }

  v16 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134283521;
    v19 = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVLLocalizationResult,Invalid output pointer,pLocalizationResultMsg,%{private}p", buf, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    goto LABEL_24;
  }

  return result;
}

void sub_10081D970(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10081DA0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 28) |= 1u;
    v4 = *(a2 + 8);
    if (!v4)
    {
      operator new();
    }

    result = sub_10081E76C(a1, v4);
    v6 = *(a1 + 32);
    *(a2 + 28) |= 2u;
    *(a2 + 16) = v6;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v7 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v10 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocation,Invalid output pointer,pLocationMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocation(const VLLocation &, CLP::LogEntry::Vision::VLLocation *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    return 0;
  }

  return result;
}

void sub_10081DBF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081DC34(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 4);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821E24();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_100821B30(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v17) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble4x4,fromSimdDouble4(matrix.columns[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble4x4(const simd_double4x4 &, CLP::LogEntry::Vision::simd_doubleMxN *)", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 32;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v13 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v17 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble4x4,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble4x4(const simd_double4x4 &, CLP::LogEntry::Vision::simd_doubleMxN *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081DF88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081DF98(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 6);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821D5C();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_10081E974(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v17) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromVLMatrixf6x6,fromVLVectorf6(matrix.v[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v12 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLMatrixf6x6(const VLMatrixf6x6 &, CLP::LogEntry::Vision::VLMatrixfMxN *)", "%s\n", v12);
          if (v12 != buf)
          {
            free(v12);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 24;
    }

    while (v4 != 6);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v13 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v17 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLVPC,fromVLMatrixf6x6,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLMatrixf6x6(const VLMatrixf6x6 &, CLP::LogEntry::Vision::VLMatrixfMxN *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081E2EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081E2FC(void *a1, uint64_t a2)
{
  if (sub_10081D574(a1, a2))
  {
    if ([a1 debugInfo])
    {
      *(a2 + 56) |= 0x20u;
      v4 = *(a2 + 40);
      if (!v4)
      {
        operator new();
      }

      v5 = [a1 debugInfo];

      return sub_10081E52C(v5, v4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v7 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVLLocalizationResultForHarvest,Failed in VL estimate conversion", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVLLocalizationResultForHarvest(const _CLVLLocalizationResult *const, CLP::LogEntry::Vision::VLLocalizationResult *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081E4F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081E52C(void *a1, uint64_t a2)
{
  if (a1)
  {
    if ([a1 maps488Details])
    {
      *(a2 + 20) |= 1u;
      v4 = *(a2 + 8);
      if (!v4)
      {
        operator new();
      }

      v5 = [a1 maps488Details];

      return sub_10081EB6C(v5, v4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v7 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v10 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationDebugInfo,Invalid input pointer,debugInfo,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationDebugInfo(const _CLVLLocalizationDebugInfo *const, CLP::LogEntry::Vision::VLLocalizationDebugInfo *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081E730(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10081E76C(_OWORD *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 16) = 0;
    sub_1003C7898(a2 + 8, 3);
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      v6 = a1[1];
      v12[0] = *a1;
      v12[1] = v6;
      v7 = *(v12 + (v4 & 3));
      if (v5 == *(a2 + 20))
      {
        sub_1003C7898(a2 + 8, v5 + 1);
        v5 = *(a2 + 16);
      }

      v8 = *(a2 + 8);
      *(a2 + 16) = v5 + 1;
      *(v8 + 8 * v5) = v7;
      ++v4;
      ++v5;
    }

    while (v4 != 3);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v9 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v16 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble3,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v13 = 134283521;
      v14 = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble3(const simd_double3 &, CLP::LogEntry::Vision::simd_doubleM *)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a2 != 0;
}

void sub_10081E964(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10081E974(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 16) = 0;
    sub_1003945DC(a2 + 8, 6);
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      v6 = *(a1 + v4);
      if (v5 == *(a2 + 20))
      {
        sub_1003945DC(a2 + 8, v5 + 1);
        v5 = *(a2 + 16);
      }

      v7 = *(a2 + 8);
      *(a2 + 16) = v5 + 1;
      *(v7 + 4 * v5) = v6;
      v4 += 4;
      ++v5;
    }

    while (v4 != 24);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v12 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromVLVectorf6,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLVectorf6(const float (&)[6], CLP::LogEntry::Vision::VLVectorfM *)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return a2 != 0;
}

void sub_10081EB5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081EB6C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 inliersCount];
    *(a2 + 276) |= 1u;
    *(a2 + 8) = v4;
    *(a2 + 24) = 0;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    if (![a1 inliersCount] || objc_msgSend(a1, "points2D") && objc_msgSend(a1, "points3D") && objc_msgSend(a1, "inlierIndices"))
    {
      v5 = [a1 points2D];
      v6 = [a1 points3D];
      v7 = [a1 inlierIndices];
      v8 = [a1 inliersCount];
      sub_1003945DC(a2 + 16, 2 * v8);
      sub_1003C7898(a2 + 32, 3 * v8);
      sub_1003945DC(a2 + 48, v8);
      if (v8 >= 1)
      {
        v9 = v8 & 0x7FFFFFFF;
        v10 = (v6 + 16);
        v11 = (v5 + 4);
        do
        {
          v12 = *(v11 - 1);
          v13 = *(a2 + 24);
          v14 = *(a2 + 28);
          if (v13 == v14)
          {
            sub_1003945DC(a2 + 16, v13 + 1);
            v13 = *(a2 + 24);
            v14 = *(a2 + 28);
          }

          v15 = *(a2 + 16);
          v16 = v13 + 1;
          *(a2 + 24) = v13 + 1;
          *(v15 + 4 * v13) = v12;
          v17 = *v11;
          if (v13 + 1 == v14)
          {
            sub_1003945DC(a2 + 16, v13 + 2);
            v16 = *(a2 + 24);
            v15 = *(a2 + 16);
          }

          *(a2 + 24) = v16 + 1;
          *(v15 + 4 * v16) = v17;
          v18 = *(v10 - 2);
          v20 = *(a2 + 40);
          v19 = *(a2 + 44);
          if (v20 == v19)
          {
            sub_1003C7898(a2 + 32, v20 + 1);
            v20 = *(a2 + 40);
            v19 = *(a2 + 44);
          }

          v21 = *(a2 + 32);
          v22 = v20 + 1;
          *(a2 + 40) = v20 + 1;
          *(v21 + 8 * v20) = v18;
          v23 = *(v10 - 1);
          if (v20 + 1 == v19)
          {
            sub_1003C7898(a2 + 32, v20 + 2);
            v21 = *(a2 + 32);
            v22 = *(a2 + 40);
            v19 = *(a2 + 44);
          }

          v24 = v22 + 1;
          *(a2 + 40) = v22 + 1;
          *(v21 + 8 * v22) = v23;
          v25 = *v10;
          if (v22 + 1 == v19)
          {
            sub_1003C7898(a2 + 32, v22 + 2);
            v24 = *(a2 + 40);
            v21 = *(a2 + 32);
          }

          *(a2 + 40) = v24 + 1;
          *(v21 + 8 * v24) = v25;
          v26 = *v7;
          v27 = *(a2 + 56);
          if (v27 == *(a2 + 60))
          {
            sub_1003945DC(a2 + 48, v27 + 1);
            v27 = *(a2 + 56);
          }

          v28 = *(a2 + 48);
          *(a2 + 56) = v27 + 1;
          *(v28 + 4 * v27) = v26;
          v10 += 3;
          v11 += 2;
          ++v7;
          --v9;
        }

        while (v9);
      }

      v118 = 1;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A79C();
      }

      v32 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid inliers", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194A7B0(buf);
        v116 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v116);
        if (v116 != buf)
        {
          free(v116);
        }
      }

      v118 = 0;
    }

    v33 = [a1 slamOrigin];
    *(a2 + 72) = 0;
    sub_1003C7898(a2 + 64, 6);
    v34 = 0;
    v35 = *(a2 + 72);
    do
    {
      v36 = *&v33[v34];
      if (v35 == *(a2 + 76))
      {
        sub_1003C7898(a2 + 64, v35 + 1);
        v35 = *(a2 + 72);
      }

      v37 = *(a2 + 64);
      *(a2 + 72) = v35 + 1;
      *(v37 + 8 * v35) = v36;
      v34 += 8;
      ++v35;
    }

    while (v34 != 48);
    v38 = [a1 slamTracksCount];
    *(a2 + 276) |= 0x20u;
    *(a2 + 80) = v38;
    v39 = [a1 descriptorDimension];
    *(a2 + 276) |= 0x80u;
    *(a2 + 104) = v39;
    *(a2 + 96) = 0;
    v40 = *(a2 + 112);
    if (v40 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v40 + 23) < 0)
      {
        **v40 = 0;
        *(v40 + 8) = 0;
      }

      else
      {
        *v40 = 0;
        *(v40 + 23) = 0;
      }
    }

    *(a2 + 276) &= ~0x100u;
    *(a2 + 128) = 0;
    *(a2 + 144) = 0;
    *(a2 + 160) = 0;
    if (![a1 slamTracksCount] || objc_msgSend(a1, "slamTracks") && (!objc_msgSend(a1, "descriptorDimension") || objc_msgSend(a1, "slamTrackDescriptors")) && objc_msgSend(a1, "slamTrackObservations") && (!objc_msgSend(a1, "totalObservationsCount") || objc_msgSend(a1, "slamTracks2D")) && (!objc_msgSend(a1, "totalObservationsCount") || objc_msgSend(a1, "slamTrackImageIndices")))
    {
      v41 = [a1 slamTracks];
      v42 = [a1 slamTrackObservations];
      v43 = [a1 slamTracksCount];
      sub_1003945DC(a2 + 88, 3 * v43);
      sub_1003945DC(a2 + 120, v43);
      if (v43 >= 1)
      {
        v44 = v43 & 0x7FFFFFFF;
        v45 = (v41 + 8);
        do
        {
          v46 = *(v45 - 2);
          v48 = *(a2 + 96);
          v47 = *(a2 + 100);
          if (v48 == v47)
          {
            sub_1003945DC(a2 + 88, v48 + 1);
            v48 = *(a2 + 96);
            v47 = *(a2 + 100);
          }

          v49 = *(a2 + 88);
          v50 = v48 + 1;
          *(a2 + 96) = v48 + 1;
          *(v49 + 4 * v48) = v46;
          v51 = *(v45 - 1);
          if (v48 + 1 == v47)
          {
            sub_1003945DC(a2 + 88, v48 + 2);
            v49 = *(a2 + 88);
            v50 = *(a2 + 96);
            v47 = *(a2 + 100);
          }

          v52 = v50 + 1;
          *(a2 + 96) = v50 + 1;
          *(v49 + 4 * v50) = v51;
          v53 = *v45;
          if (v50 + 1 == v47)
          {
            sub_1003945DC(a2 + 88, v50 + 2);
            v52 = *(a2 + 96);
            v49 = *(a2 + 88);
          }

          *(a2 + 96) = v52 + 1;
          *(v49 + 4 * v52) = v53;
          v54 = *v42;
          v55 = *(a2 + 128);
          if (v55 == *(a2 + 132))
          {
            sub_1003945DC(a2 + 120, v55 + 1);
            v55 = *(a2 + 128);
          }

          v56 = *(a2 + 120);
          *(a2 + 128) = v55 + 1;
          *(v56 + 4 * v55) = v54;
          v45 += 3;
          ++v42;
          --v44;
        }

        while (v44);
      }

      v57 = [a1 descriptorDimension];
      v58 = [a1 slamTracksCount];
      v59 = [a1 slamTrackDescriptors];
      if (v59)
      {
        v60 = v58 * v57;
        if (v60 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        if (v60 >= 0x17)
        {
          operator new();
        }

        *(&buf[0].__r_.__value_.__s + 23) = v60;
        if (v60)
        {
          memmove(buf, v59, v60);
        }

        buf[0].__r_.__value_.__s.__data_[v60] = 0;
        *(a2 + 276) |= 0x100u;
        v62 = *(a2 + 112);
        if (v62 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v62, buf);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      v63 = [a1 slamTracks2D];
      v64 = [a1 slamTrackImageIndices];
      v65 = [a1 totalObservationsCount];
      sub_1003945DC(a2 + 136, 2 * v65);
      sub_1003945DC(a2 + 152, v65);
      if (v65 >= 1)
      {
        v66 = v65 & 0x7FFFFFFF;
        v67 = (v63 + 4);
        do
        {
          v68 = *(v67 - 1);
          v69 = *(a2 + 144);
          v70 = *(a2 + 148);
          if (v69 == v70)
          {
            sub_1003945DC(a2 + 136, v69 + 1);
            v69 = *(a2 + 144);
            v70 = *(a2 + 148);
          }

          v71 = *(a2 + 136);
          v72 = v69 + 1;
          *(a2 + 144) = v69 + 1;
          *(v71 + 4 * v69) = v68;
          v73 = *v67;
          if (v69 + 1 == v70)
          {
            sub_1003945DC(a2 + 136, v69 + 2);
            v72 = *(a2 + 144);
            v71 = *(a2 + 136);
          }

          *(a2 + 144) = v72 + 1;
          *(v71 + 4 * v72) = v73;
          v74 = *v64;
          v75 = *(a2 + 160);
          if (v75 == *(a2 + 164))
          {
            sub_1003945DC(a2 + 152, v75 + 1);
            v75 = *(a2 + 160);
          }

          v76 = *(a2 + 152);
          *(a2 + 160) = v75 + 1;
          *(v76 + 4 * v75) = v74;
          v67 += 2;
          ++v64;
          --v66;
        }

        while (v66);
      }

      v117 = 1;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A7F4();
      }

      v61 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid slamTracks", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194A7B0(buf);
        v115 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v115);
        if (v115 != buf)
        {
          free(v115);
        }
      }

      v117 = 0;
    }

    v77 = [a1 frameCount];
    *(a2 + 276) |= 0x1000u;
    *(a2 + 168) = v77;
    *(a2 + 184) = 0;
    *(a2 + 200) = 0;
    *(a2 + 216) = 0;
    *(a2 + 232) = 0;
    if (![a1 frameCount] || objc_msgSend(a1, "perFrameVioStatusCodes") && objc_msgSend(a1, "perFrameVioPoses") && objc_msgSend(a1, "perFrameCalibrationMatrices") && objc_msgSend(a1, "perFrameDistortion"))
    {
      v78 = [a1 perFrameVioStatusCodes];
      v79 = [a1 perFrameVioPoses];
      v80 = [a1 perFrameCalibrationMatrices];
      v81 = [a1 perFrameDistortion];
      v82 = [a1 frameCount];
      sub_1003945DC(a2 + 176, v82);
      sub_1003945DC(a2 + 192, 12 * v82);
      sub_1003945DC(a2 + 208, 9 * v82);
      sub_1003945DC(a2 + 224, 2 * v82);
      if (v82 >= 1)
      {
        v83 = 0;
        v84 = v82 & 0x7FFFFFFF;
        do
        {
          v85 = v78[v83];
          v86 = *(a2 + 184);
          if (v86 == *(a2 + 188))
          {
            sub_1003945DC(a2 + 176, v86 + 1);
            v86 = *(a2 + 184);
          }

          v87 = 0;
          v88 = *(a2 + 176);
          *(a2 + 184) = v86 + 1;
          *(v88 + 4 * v86) = v85;
          v89 = *(a2 + 200);
          do
          {
            v90 = *&v79[v87];
            if (v89 == *(a2 + 204))
            {
              sub_1003945DC(a2 + 192, v89 + 1);
              v89 = *(a2 + 200);
            }

            v91 = *(a2 + 192);
            *(a2 + 200) = v89 + 1;
            *(v91 + 4 * v89) = v90;
            v87 += 4;
            ++v89;
          }

          while (v87 != 48);
          v92 = 0;
          v93 = *(a2 + 216);
          do
          {
            v94 = *&v80[v92];
            if (v93 == *(a2 + 220))
            {
              sub_1003945DC(a2 + 208, v93 + 1);
              v93 = *(a2 + 216);
            }

            v95 = *(a2 + 208);
            *(a2 + 216) = v93 + 1;
            *(v95 + 4 * v93) = v94;
            v92 += 4;
            ++v93;
          }

          while (v92 != 36);
          v96 = v81[2 * v83];
          v97 = *(a2 + 232);
          v98 = *(a2 + 236);
          if (v97 == v98)
          {
            sub_1003945DC(a2 + 224, v97 + 1);
            v97 = *(a2 + 232);
            v98 = *(a2 + 236);
          }

          v99 = *(a2 + 224);
          v100 = v97 + 1;
          *(a2 + 232) = v97 + 1;
          *(v99 + 4 * v97) = v96;
          v101 = v81[2 * v83 + 1];
          if (v97 + 1 == v98)
          {
            sub_1003945DC(a2 + 224, v97 + 2);
            v100 = *(a2 + 232);
            v99 = *(a2 + 224);
          }

          *(a2 + 232) = v100 + 1;
          *(v99 + 4 * v100) = v101;
          ++v83;
          v79 += 48;
          v80 += 36;
        }

        while (v83 != v84);
      }

      v102 = 1;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A7F4();
      }

      v103 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid frames", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194A7B0(buf);
        v114 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v114);
        if (v114 != buf)
        {
          free(v114);
        }
      }

      v102 = 0;
    }

    v104 = [a1 resultPoseRotation];
    *(a2 + 248) = 0;
    sub_1003C7898(a2 + 240, 9);
    v105 = 0;
    v106 = *(a2 + 248);
    do
    {
      v107 = *&v104[v105];
      if (v106 == *(a2 + 252))
      {
        sub_1003C7898(a2 + 240, v106 + 1);
        v106 = *(a2 + 248);
      }

      v108 = *(a2 + 240);
      *(a2 + 248) = v106 + 1;
      *(v108 + 8 * v106) = v107;
      v105 += 8;
      ++v106;
    }

    while (v105 != 72);
    v109 = [a1 resultPoseTranslation];
    *(a2 + 264) = 0;
    sub_1003C7898(a2 + 256, 3);
    v110 = 0;
    v111 = *(a2 + 264);
    do
    {
      v112 = *&v109[v110];
      if (v111 == *(a2 + 268))
      {
        sub_1003C7898(a2 + 256, v111 + 1);
        v111 = *(a2 + 264);
      }

      v113 = *(a2 + 256);
      *(a2 + 264) = v111 + 1;
      *(v113 + 8 * v111) = v112;
      v110 += 8;
      ++v111;
    }

    while (v110 != 24);
    return v118 & v117 & v102;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v29 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134283521;
      *(buf[0].__r_.__value_.__r.__words + 4) = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid input pointer,maps488Details,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081F920(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081F970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *buf = 0;
    sub_10081FDA8(*a1, buf);
    v4 = *buf;
    if (sub_1001E06EC(*buf))
    {
      v5 = *(a2 + 152);
      *(a2 + 48) = v4;
      *(a2 + 152) = v5 | 3;
      v6 = *(a2 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = sub_10081FF4C((a1 + 4), v6);
      v8 = *(a2 + 152);
      *(a2 + 16) = *(a1 + 20);
      *(a2 + 32) = *(a1 + 36);
      *(a2 + 56) = *(a1 + 52);
      *(a2 + 152) = v8 | 0x3FC;
      *(a2 + 72) = *(a1 + 68);
      *(a2 + 52) = *(a1 + 84);
      v9 = *(a1 + 88);
      *(a2 + 152) = v8 | 0xFFC;
      *(a2 + 88) = v9;
      v29 = 0;
      sub_1008200F0(*(a1 + 96), &v29);
      v10 = v29;
      if (sub_100108BCC(v29))
      {
        v11 = *(a2 + 152);
        *(a2 + 104) = v10;
        *(a2 + 152) = v11 | 0x3000;
        v12 = *(a2 + 96);
        if (!v12)
        {
          operator new();
        }

        v13 = sub_10081FF4C((a1 + 100), v12);
        v14 = *(a1 + 116);
        v15 = *(a2 + 152);
        *(a2 + 152) = v15 | 0x4000;
        *(a2 + 112) = v14;
        v16 = *(a1 + 124);
        *(a2 + 152) = v15 | 0xC000;
        *(a2 + 108) = v16;
        v28 = 0;
        sub_100820288(*(a1 + 128), &v28);
        v17 = v28;
        if (sub_1001E0708(v28))
        {
          *(a2 + 152) |= 0x10000u;
          *(a2 + 120) = v17;
          v27 = 0;
          sub_100820444(*(a1 + 132), &v27);
          v18 = v27;
          if (sub_10041ECEC(v27))
          {
            *(a2 + 152) |= 0x20000u;
            *(a2 + 124) = v18;
            v26 = 0;
            sub_100820444(*(a1 + 136), &v26);
            v19 = v26;
            if (sub_10041ECEC(v26))
            {
              result = v7 & v13;
              *(a2 + 152) |= 0x40000u;
              *(a2 + 128) = v19;
              return result;
            }

            v22 = "::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)";
            v23 = 15471;
            v24 = "set_raw_reference_frame";
          }

          else
          {
            v22 = "::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)";
            v23 = 15448;
            v24 = "set_reference_frame";
          }
        }

        else
        {
          v22 = "::CLP::LogEntry::PrivateData::DaemonLocation_LocationIntegrityType_IsValid(value)";
          v23 = 15425;
          v24 = "set_integrity";
        }
      }

      else
      {
        v22 = "::CLP::LogEntry::PrivateData::LocationType_IsValid(value)";
        v23 = 15316;
        v24 = "set_type";
      }
    }

    else
    {
      v22 = "::CLP::LogEntry::PrivateData::DaemonLocation_ClientLocationSuitabilityType_IsValid(value)";
      v23 = 15031;
      v24 = "set_suitability";
    }

    __assert_rtn(v24, "CLPPrivateDataShared.pb.h", v23, v22);
  }

  if (qword_1025D46A0 != -1)
  {
    sub_10194A79C();
  }

  v21 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134283521;
    v32 = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLVPC,fromCLDaemonLocation,Invalid output pointer, pLocationMsg,%{private}p", buf, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10194A7B0(buf);
    v29 = 134283521;
    v30 = 0;
    v25 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLDaemonLocation(const CLDaemonLocation &, CLP::LogEntry::PrivateData::DaemonLocation *)", "%s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }

    return 0;
  }

  return result;
}

void sub_10081FD4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081FDA8(int a1, _DWORD *a2)
{
  v3 = a1;
  if ((a1 - 1) >= 2 && a1 != 0xFFFF)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v5 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationSuitability,Received unhandled location suitability: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationSuitability(const CLClientLocationSuitability, CLP::LogEntry::PrivateData::DaemonLocation_ClientLocationSuitabilityType &)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_10081FF40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10081FF4C(_OWORD *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 28) |= 3u;
    *(a2 + 8) = *a1;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v3 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v7 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "CLVPC,fromCLClientLocationCoordinate,Invalid output pointer,pCoordinateMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v5 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLClientLocationCoordinate(const CLClientLocationCoordinate &, CLP::LogEntry::PrivateData::ClientLocationCoordinate *)", "%s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  return a2 != 0;
}

void sub_1008200E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1008200F0(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  if (a1 >= 0xE)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLLocationType,Received unhandled location type: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLLocationType(const CLLocationType, CLP::LogEntry::PrivateData::LocationType &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_10082027C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100820288(int a1, int *a2)
{
  v3 = a1;
  if (((a1 - 25) > 0x32 || ((1 << (a1 - 25)) & 0x4000002000001) == 0) && a1)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLLocationIntegrity,Received unhandled location integrity: %u", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLLocationIntegrity(const CLLocationIntegrity, CLP::LogEntry::PrivateData::DaemonLocation_LocationIntegrityType &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_100820438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100820444(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationReferenceFrame,Received unhandled location reference frame: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationReferenceFrame(const CLClientLocationReferenceFrame, CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_1008205D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1008205DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 368);
    *(a2 + 8) = *a1;
    *(a2 + 24) = *(a1 + 16);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 40);
    *(a2 + 56) = *(a1 + 48);
    v5 = *(a1 + 52);
    *(a2 + 368) = v4 | 0x1FF;
    *(a2 + 112) = v5;
    *buf = 0;
    sub_100820B80(*(a1 + 56), buf);
    v6 = *buf;
    if (sub_10041ECF8(*buf))
    {
      v7 = *(a2 + 368);
      *(a2 + 60) = v6;
      *(a2 + 368) = v7 | 0x600;
      v8 = *(a2 + 64);
      if (!v8)
      {
        operator new();
      }

      v9 = sub_10081FF4C((a1 + 64), v8);
      v10 = *(a1 + 80);
      v11 = *(a2 + 368);
      *(a2 + 368) = v11 | 0x800;
      *(a2 + 72) = v10;
      v12 = *(a1 + 88);
      *(a2 + 368) = v11 | 0x1800;
      *(a2 + 80) = v12;
      *(a2 + 84) = *(a1 + 92);
      *(a2 + 113) = *(a1 + 96);
      *(a2 + 368) = v11 | 0x807800;
      v13 = *(a2 + 136);
      if (!v13)
      {
        operator new();
      }

      v14 = sub_100820D1C(a1 + 104, v13);
      *(a2 + 368) |= 0x8000u;
      v15 = *(a2 + 88);
      if (!v15)
      {
        operator new();
      }

      *(v15 + 28) |= 3u;
      *(v15 + 8) = *(a1 + 296);
      v34 = 0;
      sub_100820EC8(*(a1 + 312), &v34);
      v16 = v34;
      if (sub_1001F162C(v34))
      {
        v17 = *(a2 + 368);
        *(a2 + 96) = v16;
        *(a2 + 100) = *(a1 + 316);
        *(a2 + 368) = v17 | 0x70000;
        v18 = *(a2 + 104);
        if (!v18)
        {
          operator new();
        }

        v19 = sub_10081FF4C((a1 + 320), v18);
        *(a2 + 368) |= 0x180000u;
        *(a2 + 120) = *(a1 + 336);
        v33 = 0;
        sub_100821064(*(a1 + 352), &v33);
        v20 = v33;
        if (sub_10041ECEC(v33))
        {
          *(a2 + 116) = v20;
          *(a2 + 114) = *(a1 + 356);
          *(a2 + 144) = *(a1 + 360);
          *(a2 + 160) = *(a1 + 376);
          *(a2 + 176) = *(a1 + 496);
          *(a2 + 115) = *(a1 + 512);
          *(a2 + 192) = *(a1 + 392);
          *(a2 + 200) = *(a1 + 416);
          *(a2 + 276) = *(a1 + 424);
          *(a2 + 368) = vorr_s8(*(a2 + 368), 0x7FF600000);
          v21 = *(a2 + 208);
          if (!v21)
          {
            operator new();
          }

          v22 = sub_10081FF4C((a1 + 432), v21);
          v23 = *(a1 + 448);
          *(a2 + 372) |= 8u;
          *(a2 + 216) = v23;
          v32 = 0;
          sub_100820444(*(a1 + 456), &v32);
          v24 = v32;
          if (sub_10041ECEC(v32))
          {
            result = (v9 && v14 && v19) & v22;
            v26 = *(a2 + 372);
            *(a2 + 272) = v24;
            *(a2 + 372) = v26 | 0x70;
            *(a2 + 224) = *(a1 + 480);
            return result;
          }

          v28 = "::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)";
          v29 = 16874;
          v30 = "set_fused_reference_frame";
        }

        else
        {
          v28 = "::CLP::LogEntry::PrivateData::DaemonLocationPrivate_ClientLocationOriginDeviceType_IsValid(value)";
          v29 = 16503;
          v30 = "set_origin_device";
        }
      }

      else
      {
        v28 = "::CLP::LogEntry::PrivateData::DaemonLocationPrivate_UndulationModelType_IsValid(value)";
        v29 = 16372;
        v30 = "set_undulation_model";
      }
    }

    else
    {
      v28 = "::CLP::LogEntry::PrivateData::DaemonLocationPrivate_MatchQualityType_IsValid(value)";
      v29 = 16177;
      v30 = "set_match_quality";
    }

    __assert_rtn(v30, "CLPPrivateDataShared.pb.h", v29, v28);
  }

  if (qword_1025D46A0 != -1)
  {
    sub_10194A79C();
  }

  v27 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134283521;
    v37 = 0;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "CLVPC,fromCLDaemonLocationPrivate,Invalid output pointer,pLocationPrivateMsg,%{private}p", buf, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10194A7B0(buf);
    v34 = 134283521;
    v35 = 0;
    v31 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLDaemonLocationPrivate(const CLDaemonLocationPrivate &, CLP::LogEntry::PrivateData::DaemonLocationPrivate *)", "%s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }

    return 0;
  }

  return result;
}

void sub_100820AE0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100820B80(int a1, _DWORD *a2)
{
  v3 = a1;
  if ((a1 - 1) >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationMatchQuality,Received unhandled match quality: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationMatchQuality(const CLClientLocationMatchQuality, CLP::LogEntry::PrivateData::DaemonLocationPrivate_MatchQualityType &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_100820D10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_100820D1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 24) = *(a1 + 16);
    *(a2 + 32) = v3 | 0xF;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v8 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLMapMatcherData,Invalid output pointer,pMapMatcherDataMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLMapMatcherData(const CLMapMatcherData &, CLP::LogEntry::PrivateData::MapMatcherData *)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return a2 != 0;
}

void sub_100820EBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100820EC8(int a1, int *a2)
{
  v3 = a1;
  if ((a1 + 1) >= 4)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLUndulationModelType,Received unhandled undulation model type: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLUndulationModelType(const CLUndulationModelType, CLP::LogEntry::PrivateData::DaemonLocationPrivate_UndulationModelType &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_100821058(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100821064(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationOriginDevice,Received unhandled location origin device: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v6 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationOriginDevice(const CLClientLocationOriginDevice, CLP::LogEntry::PrivateData::DaemonLocationPrivate_ClientLocationOriginDeviceType &)", "%s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_1008211F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1008211FC(uint64_t a1, double a2)
{
  v22 = a2;
  if (a1)
  {
    *(a1 + 44) |= 2u;
    *(a1 + 16) = a2;
    if (*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v23[0] = 0.0;
      v7 = sub_10081BD2C();
      v8 = sub_100309F2C(v7, &v22, v23);
      if (v8)
      {
        v9 = v23[0];
        *(a1 + 44) |= 1u;
        *(a1 + 8) = v9;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v14 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToCFAbsolute_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          LOWORD(v21) = 0;
          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      v21 = 0;
      v15 = sub_10081BD2C();
      v16 = sub_100131674(v15, &v22, &v21);
      if (v16)
      {
        v17 = v21;
        *(a1 + 44) |= 4u;
        *(a1 + 24) = v17;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v18 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToMachContinuous_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v20 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }

      return v8 & v16;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A79C();
      }

      v13 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v25 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid input value,machAbsoluteTime,%{public}.3lf", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_10194A7B0(buf);
        LODWORD(v23[0]) = 134349056;
        *(v23 + 4) = v22;
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v12);
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v10 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v25 = 0.0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid output pointer,pTimeStampMsg,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      LODWORD(v23[0]) = 134283521;
      *(v23 + 4) = 0.0;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v12);
LABEL_27:
      if (v12 != buf)
      {
        free(v12);
      }

      return 0;
    }
  }

  return result;
}

void sub_10082172C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_100821738(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 16) = 0;
    sub_1003945DC(a2 + 8, 3);
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      v6 = *(a1 + 4 * (v4 & 3));
      if (v5 == *(a2 + 20))
      {
        sub_1003945DC(a2 + 8, v5 + 1);
        v5 = *(a2 + 16);
      }

      v7 = *(a2 + 8);
      *(a2 + 16) = v5 + 1;
      *(v7 + 4 * v5) = v6;
      ++v4;
      ++v5;
    }

    while (v4 != 3);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v12 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat3,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat3(const simd_float3 &, CLP::LogEntry::Vision::simd_floatM *)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return a2 != 0;
}

void sub_100821924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100821934(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 16) = 0;
    sub_1003945DC(a2 + 8, 4);
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      v6 = *(a1 + 4 * (v4 & 3));
      if (v5 == *(a2 + 20))
      {
        sub_1003945DC(a2 + 8, v5 + 1);
        v5 = *(a2 + 16);
      }

      v7 = *(a2 + 8);
      *(a2 + 16) = v5 + 1;
      *(v7 + 4 * v5) = v6;
      ++v4;
      ++v5;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v12 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat4,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat4(const simd_float4 &, CLP::LogEntry::Vision::simd_floatM *)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return a2 != 0;
}

void sub_100821B20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100821B30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 16) = 0;
    sub_1003C7898(a2 + 8, 4);
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      v6 = *(a1 + 8 * (v4 & 3));
      if (v5 == *(a2 + 20))
      {
        sub_1003C7898(a2 + 8, v5 + 1);
        v5 = *(a2 + 16);
      }

      v7 = *(a2 + 8);
      *(a2 + 16) = v5 + 1;
      *(v7 + 8 * v5) = v6;
      ++v4;
      ++v5;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v12 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble4,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble4(const simd_double4 &, CLP::LogEntry::Vision::simd_doubleM *)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  return a2 != 0;
}

void sub_100821D1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100822380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

id sub_1008223A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  v6[4] = *(a1 + 64);
  v6[5] = v2;
  v6[6] = *(a1 + 96);
  v7 = *(a1 + 112);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v4;
  return [a2 onAddBout:v6];
}

void sub_100822A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100822A28(uint64_t a1)
{
  if (qword_1025D4430 != -1)
  {
    sub_10194A830();
  }

  v2 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating bout records", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194ABE4();
  }

  return sub_1003EF91C(*(*(a1 + 32) + 56));
}

double sub_100822CFC(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_100822D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100822DFC(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_100822E4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100822F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10082301C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100823068(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[42];
    if (v3)
    {
      v2[43] = v3;
      operator delete(v3);
    }

    sub_1001FB750(v2 + 28);
    v4 = v2[25];
    if (v4)
    {
      v2[26] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      sub_100008080(v5);
    }

    operator delete();
  }

  return result;
}

void sub_1008232EC(uint64_t a1, void *a2)
{
  v3 = [CMAbsoluteAltitudeData alloc];
  [a2 altitude];
  v5 = v4;
  [a2 accuracy];
  v7 = v6;
  [a2 precision];
  v9 = v8;
  [a2 filteredPressure];
  v11 = v10;
  v12 = [a2 statusInfo];
  [a2 timestamp];
  v14 = [v3 initWithAltitude:v12 accuracy:v5 precision:v7 filteredPressure:v9 status:v11 timestamp:v13];
  v15 = CMAbsoluteAltitudeKey;
  v16 = v14;
  [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  sub_100825CC4();
}

void sub_100823478(uint64_t a1, uint64_t a2)
{
  v2 = [[CMSignificantElevationSample alloc] initWithSignificantElevation:a2];
  v3 = CMSignificantElevationKeySample;
  v4 = v2;
  [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];

  sub_100825388();
}

void sub_100823628(uint64_t a1, void *a2)
{
  v3 = [CMCompanionRelativeElevationData alloc];
  [a2 timestamp];
  v5 = v4;
  [a2 relativeElevation];
  *&v7 = v6;
  v8 = [v3 initWithTimestamp:v5 companionRelativeElevation:v7];
  v9 = CMCompanionRelativeElevationKey;
  v10 = v8;
  [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  sub_100825D48();
}

void sub_100823718(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v5 = off_102475068;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  sub_100156C60();
}

void sub_100823880(_Unwind_Exception *a1)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100114E74(v1);
  _Unwind_Resume(a1);
}

void sub_1008238C8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10194AE08();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLElevationSubscription::onOdometerUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10194AE1C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLElevationSubscription::onOdometerUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100825264(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100823A98(uint64_t a1)
{
  *a1 = off_102475068;

  [*(a1 + 64) setValid:0];
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  [*(a1 + 72) invalidate];

  *(a1 + 72) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_100114E74(a1);
}

void sub_100823B80(uint64_t a1)
{
  sub_100823A98(a1);

  operator delete();
}

uint64_t sub_100823BB8@<X0>(uint64_t a1@<X8>)
{
  v11[0] = off_102475388;
  v11[1] = sub_100823F68;
  v11[2] = 0;
  v11[3] = v11;
  sub_10000EC00(v12, "kCLConnectionMessageSignificantElevationUpdate");
  sub_100825E2C(&v13, v11);
  v8 = off_102475388;
  v9[0] = sub_1008242F8;
  v9[1] = 0;
  v10 = &v8;
  sub_10000EC00(v14, "kCLConnectionMessageFilteredElevationUpdate");
  sub_100825E2C(&v15, &v8);
  v7[0] = off_102475438;
  v7[1] = sub_1008246A0;
  v7[2] = 0;
  v7[3] = v7;
  sub_10000EC00(v16, "kCLConnectionMessageSignificantElevationDeltaQuery");
  sub_100825E2C(&v17, v7);
  v6[0] = off_102475388;
  v6[1] = sub_100824A44;
  v6[2] = 0;
  v6[3] = v6;
  sub_10000EC00(v18, "kCLConnectionMessageAbsoluteAltitudeUpdate");
  sub_100825E2C(&v19, v6);
  v5[0] = off_102475388;
  v5[1] = nullsub_461;
  v5[2] = 0;
  v5[3] = v5;
  sub_10000EC00(v20, "kCLConnectionMessageCompanionRelativeElevationUpdate");
  sub_100825E2C(&v21, v5);
  v4[0] = off_102475438;
  v4[1] = sub_100824DE0;
  v4[2] = 0;
  v4[3] = v4;
  sub_10000EC00(v22, "kCLConnectionMessageElevationProfileQuery");
  sub_100825E2C(&v23, v4);
  sub_1008268C0(a1, v12, 6);
  v2 = 42;
  do
  {
    sub_1008266A4(&v11[v2]);
    if (SHIBYTE((&v10)[v2]) < 0)
    {
      operator delete(v9[v2]);
    }

    v2 -= 7;
  }

  while (v2 * 8);
  sub_1008266A4(v4);
  sub_1008266A4(v5);
  sub_1008266A4(v6);
  sub_1008266A4(v7);
  sub_1008266A4(&v8);
  return sub_1008266A4(v11);
}

void sub_100823E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v32 = -336;
  v33 = v30;
  do
  {
    v33 = sub_100825EAC(v33) - 56;
    v32 += 56;
  }

  while (v32);
  sub_1008266A4(&a10);
  sub_1008266A4(&a14);
  sub_1008266A4(&a18);
  sub_1008266A4(&a22);
  sub_1008266A4(&a26);
  sub_1008266A4(&a30);
  _Unwind_Resume(a1);
}

void sub_100823F68(void *a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D4310 != -1)
  {
    sub_10194AE44();
  }

  v5 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[3];
    *buf = 138412802;
    *&buf[4] = v6;
    v22 = 2048;
    v23 = a1;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "SignificantElevation subscription changed, %@, %p, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194AE58(buf);
    v10 = a1[3];
    v15 = 138412802;
    v16 = v10;
    v17 = 2048;
    v18 = a1;
    v19 = 1024;
    v20 = a2;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestSignificantElevationUpdate(BOOL, const CLNameValuePair &)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v15 = 0;
  if ((sub_100825490(a1, &v15) & 1) == 0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194AE9C();
    }

    v9 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Failed to subscribe to significant elevation updates.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194AE58(buf);
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestSignificantElevationUpdate(BOOL, const CLNameValuePair &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = CMErrorMessage;
    v14 = [NSNumber numberWithUnsignedInt:v15];
    *buf = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    sub_10082556C();
  }

  sub_1000F3B70(a1);
  v7 = a1[7];
  v8 = a1[8];
  if (a2)
  {
    [v7 registerClient:v8 forNotification:5];
  }

  else
  {
    [v7 unregisterClient:v8 forNotification:5];
  }
}

void sub_1008242F8(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (!sub_1004D2ECC(*(a1 + 8)) || (sub_100177B18() & 0x10) == 0)
  {
    v11 = CMErrorMessage;
    v12 = &off_10254EFA8;
    *buf = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    sub_100825600();
  }

  if ((sub_100275B0C(a1) & 1) == 0)
  {
    v8 = CMErrorMessage;
    v9 = &off_10254EFC0;
    *buf = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    sub_100825600();
  }

  sub_1000F3B70(a1);
  v5 = *(a1 + 48);
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (a2)
  {
    [v6 register:v7 forNotification:3 registrationInfo:0];
    [*(*(a1 + 48) + 16) register:*(*(a1 + 48) + 8) forNotification:7 registrationInfo:0];
  }

  else
  {
    [v6 unregister:v7 forNotification:3];
    [*(*(a1 + 48) + 16) unregister:*(*(a1 + 48) + 8) forNotification:7];
  }
}

void sub_1008246A0(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v20 = 0;
  if (sub_100825490(a1, &v20))
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
    v8 = DictionaryOfClasses;
    if (DictionaryOfClasses && (v9 = CMSignificantElevationKeyQueryTimeRange, [DictionaryOfClasses objectForKeyedSubscript:CMSignificantElevationKeyQueryTimeRange]))
    {
      sub_10000FF38(buf, "CLDaemonClient.OdometerNotifier.SignificantElevationDeltaQuery", 0);
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = *(*(a1 + 48) + 16);
      v12 = [v10 startDate];
      v13 = [v10 endDate];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3321888768;
      v17[2] = sub_100825694;
      v17[3] = &unk_102475088;
      v14 = *(a2 + 8);
      v17[4] = *a2;
      v18 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v11 querySignificantElevationDeltaFromDate:v12 toDate:v13 withReply:v17];
      if (v18)
      {
        sub_100008080(v18);
      }

      sub_10001A420(buf);
    }

    else
    {
      if (qword_1025D4310 != -1)
      {
        sub_10194AE44();
      }

      v15 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Programmer error: Wrong parameters were passed.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194AE58(buf);
        v19 = 0;
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLElevationSubscription::handleMessageSignificantElevationDeltaQuery(std::shared_ptr<CLConnectionMessage>)", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v21 = CMErrorMessage;
      v22 = &off_10254EFD8;
      [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      CLConnectionMessage::sendReply();
    }
  }

  else
  {
    v24 = CMErrorMessage;
    v25 = [NSNumber numberWithUnsignedInt:v20];
    [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    CLConnectionMessage::sendReply();
  }
}

void sub_100824A44(void *a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D4310 != -1)
  {
    sub_10194AE44();
  }

  v5 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[3];
    *buf = 138412802;
    *&buf[4] = v6;
    v22 = 2048;
    v23 = a1;
    v24 = 1024;
    v25 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "AbsoluteAltitude subscription changed, %@, %p, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194AE58(buf);
    v10 = a1[3];
    v15 = 138412802;
    v16 = v10;
    v17 = 2048;
    v18 = a1;
    v19 = 1024;
    v20 = a2;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestAbsoluteAltitudeUpdate(BOOL, const CLNameValuePair &)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v15 = 0;
  if ((sub_1008259C4(a1, &v15) & 1) == 0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194AE9C();
    }

    v9 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Failed to subscribe to absolute altitude updates.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194AE58(buf);
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestAbsoluteAltitudeUpdate(BOOL, const CLNameValuePair &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = CMErrorMessage;
    v14 = [NSNumber numberWithUnsignedInt:v15];
    *buf = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    sub_100825B18();
  }

  sub_1000F3B70(a1);
  v7 = a1[7];
  v8 = a1[8];
  if (a2)
  {
    [v7 registerClient:v8 forNotification:1];
    sub_100825BAC(a1);
  }

  else
  {
    [v7 unregisterClient:v8 forNotification:1];
  }
}

void sub_100824DE0(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v26 = 0;
  if (sub_100825490(a1, &v26))
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    v6 = Dictionary;
    if (Dictionary && (v7 = [Dictionary objectForKeyedSubscript:CMElevationProfileKeyQueryStartTime]) != 0 && (v8 = objc_msgSend(v6, "objectForKeyedSubscript:", CMElevationProfileKeyQueryEndTime)) != 0 && (v9 = CMElevationProfileKeyQueryFromRecordId, objc_msgSend(v6, "objectForKeyedSubscript:", CMElevationProfileKeyQueryFromRecordId)) && (v10 = CMElevationProfileKeyQueryBatchSize, objc_msgSend(v6, "objectForKeyedSubscript:", CMElevationProfileKeyQueryBatchSize)))
    {
      [v7 doubleValue];
      v12 = v11;
      [v8 doubleValue];
      v14 = v13;
      if (v12 <= v13)
      {
        v16 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v12];
        v17 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v14];
        v18 = [v6 objectForKeyedSubscript:v9];
        v19 = [v6 objectForKeyedSubscript:v10];
        sub_10000FF38(buf, "CLDaemonClient.ElevationProfileQuery", 0);
        v20 = *(a1 + 56);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3321888768;
        v23[2] = sub_100825760;
        v23[3] = &unk_1024750B8;
        v21 = *(a2 + 8);
        v23[4] = *a2;
        v24 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [v20 queryElevationsFromDate:v16 toDate:v17 withBatchSize:v19 fromRecordId:v18 withReply:v23];

        if (v24)
        {
          sub_100008080(v24);
        }

        sub_10001A420(buf);
      }

      else
      {
        v27 = CMErrorMessage;
        v28 = &off_10254EFD8;
        [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        CLConnectionMessage::sendReply();
      }
    }

    else
    {
      if (qword_1025D4310 != -1)
      {
        sub_10194AE44();
      }

      v15 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Programmer error: Wrong parameters were passed.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194AE58(buf);
        v25 = 0;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLElevationSubscription::handleMessageElevationProfileQuery(std::shared_ptr<CLConnectionMessage>)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v29 = CMErrorMessage;
      v30 = &off_10254EFD8;
      [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      CLConnectionMessage::sendReply();
    }
  }

  else
  {
    v32 = CMErrorMessage;
    v33 = [NSNumber numberWithUnsignedInt:v26];
    [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    CLConnectionMessage::sendReply();
  }
}

void sub_100825264(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = *a3;
  if (*a3 == 3 || v4 == 7)
  {
    v6 = [[CMSignificantElevationSample alloc] initWithFilteredElevation:a4];
    v8 = CMFilteredElevationKeySample;
    v9 = v6;
    [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

    sub_10082540C();
  }

  if (v4 == 6)
  {
    v7 = [[CMSignificantElevationSample alloc] initWithSignificantElevation:a4];
    v10 = CMSignificantElevationKeySample;
    v11 = v7;
    [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    sub_100825388();
  }
}

void sub_1008253F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100825478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100825490(uint64_t a1, int *a2)
{
  if (sub_100275B0C(a1))
  {
    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      sub_10000EC00(&__p, "com.apple.locationd.natalimetry");
      v4 = sub_1001C2F40(a1);
      v5 = v4;
      if (v9 < 0)
      {
        operator delete(__p);
        if ((v5 & 1) == 0)
        {
LABEL_13:
          v6 = 110;
          goto LABEL_14;
        }
      }

      else if ((v4 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((sub_100177B18() & 0x10) == 0)
    {
LABEL_12:
      v6 = 109;
      goto LABEL_14;
    }

    if (sub_1004D2ECC(*(a1 + 8)))
    {
      return 1;
    }

    goto LABEL_12;
  }

  v6 = 111;
LABEL_14:
  result = 0;
  *a2 = v6;
  return result;
}

void sub_100825550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008255E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082567C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100825694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMSignificantElevationKeySample;
    v4 = a2;
    [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  }

  else
  {
    v5 = CMErrorMessage;
    v6 = &off_10254EFA8;
    [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  return CLConnectionMessage::sendReply();
}

void sub_100825760(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [a2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v11 = [CMAbsoluteAltitudeData alloc];
          [v10 altitude];
          v13 = v12;
          [v10 accuracy];
          v15 = v14;
          [v10 precision];
          v17 = v16;
          [v10 filteredPressure];
          v19 = v18;
          v20 = [v10 statusInfo];
          [v10 timestamp];
          v22 = [v11 initWithAltitude:v20 accuracy:v13 precision:v15 filteredPressure:v17 status:v19 timestamp:v21];
          [v5 addObject:v22];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [a2 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v7);
    }

    v30[0] = v5;
    v29[0] = CMElevationProfileKeyAltitudeArray;
    v29[1] = CMElevationProfileKeyLastBatch;
    v30[1] = [NSNumber numberWithBool:a3];
    v29[2] = CMElevationProfileKeyQueryFromRecordId;
    v30[2] = [NSNumber numberWithInt:a4];
    [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    CLConnectionMessage::sendReply();
  }

  else
  {
    v32 = CMErrorMessage;
    v33 = &off_10254EFA8;
    [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    CLConnectionMessage::sendReply();
  }
}

uint64_t sub_1008259C4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_100275B0C(a1);
  sub_10000EC00(__p, "com.apple.locationd.absolute_altimeter");
  v5 = sub_1001C2F40(a1);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v6 = v4 | v5;
  if ((v6 & 1) == 0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194AE9C();
    }

    v7 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 24);
      *__p = 138543362;
      *&__p[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "%{public}@ is not entitled for motion updates", __p, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194AEC4(a1);
    }

    *a2 = 111;
  }

  return v6 & 1;
}

void sub_100825AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100825B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_100825BAC(uint64_t a1)
{
  v2 = [*(a1 + 72) arrayForKey:@"ElevationThresholds" defaultValue:0];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) floatValue];
        [*(a1 + 56) registerClient:*(a1 + 64) forElevationThreshold:{1.79769313e308, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_100825D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100825DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100825E2C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100825EAC(uint64_t a1)
{
  sub_1008266A4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_100825FA0(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_100825FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1008260A0(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1008260F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008261D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008262C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100826368(uint64_t a1, uint64_t a2)
{
  *a2 = off_102475388;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100826398(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_100826444(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1008263E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008263F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100826444(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_10194AFC4();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_10194AFC4();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4(v15);
}

uint64_t sub_1008266A4(uint64_t a1)
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

__n128 sub_100826780(uint64_t a1, uint64_t a2)
{
  *a2 = off_102475438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1008267B0(uint64_t a1, uint64_t a2, uint64_t *a3)
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

void sub_100826850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t sub_100826874(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008268C0(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_10082693C(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_10082693C(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
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
    sub_100826B98();
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

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100826B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100826C14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100826C14(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100826D70(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_100826C60(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100826CD8((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100826CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100826CD8(uint64_t a1, uint64_t a2)
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

void sub_100826D70(uint64_t a1)
{
  sub_1008266A4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100826DC0(uint64_t a1)
{
  sub_100826DFC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100826DFC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100826D70((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100826E40()
{
  qword_10265A488 = off_102475188;
  qword_10265A4A0 = &qword_10265A488;
  __cxa_atexit(sub_1003EE78C, &qword_10265A488, dword_100000000);
  qword_10265A4A8 = off_102475208;
  qword_10265A4C0 = &qword_10265A4A8;
  __cxa_atexit(sub_1003EE78C, &qword_10265A4A8, dword_100000000);
  qword_10265A4C8 = off_102475288;
  qword_10265A4E0 = &qword_10265A4C8;
  __cxa_atexit(sub_1003EE790, &qword_10265A4C8, dword_100000000);
  qword_10265A4E8 = off_102475308;
  qword_10265A500 = &qword_10265A4E8;

  return __cxa_atexit(sub_1003EE790, &qword_10265A4E8, dword_100000000);
}

uint64_t sub_1008270C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008278F4;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A528 != -1)
  {
    dispatch_once(&qword_10265A528, block);
  }

  return qword_1026372C8;
}

void sub_10082731C(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    byte_10265A518 = 1;
  }
}

const void *sub_100827348(const void *a1, void *a2)
{
  v3 = sub_1008274F8(a1, "CLWatchOrientationSettingsNotifier", a2);
  *v3 = off_102475518;
  sub_1008275A4(v3);
  sub_1008277E8(a1);
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Watch Orientation,Orientation Notifier Instantiated", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194B1BC(buf);
    v6 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLWatchOrientationSettingsNotifier::CLWatchOrientationSettingsNotifier(id<CLIntersiloUniverse>)", "%s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  return a1;
}

uint64_t sub_1008274F8(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024756C0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100827588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008275A4(uint64_t a1)
{
  v14 = 0;
  v2 = sub_1004E8644(@"invertUI", @"com.apple.nano", &v14);
  if (v14)
  {
    v3 = v2 == 0;
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Watch Orientation,Crown orientation setting key is invalid, defaulting to crown on right (not inverted)", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194B228();
    }

    v3 = 1;
  }

  *(a1 + 116) = v3;
  v5 = (a1 + 116);
  v14 = 0;
  v6 = sub_1004E8644(@"wornOnRightArm", @"com.apple.nano", &v14);
  if (v14)
  {
    v7 = v6 != 0;
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Watch Orientation,Wrist orientation setting key is invalid, defaulting to left wrist", buf, 2u);
    }

    v9 = sub_10000A100(121, 0);
    v7 = 0;
    if (v9)
    {
      sub_10194B314();
      v7 = 0;
    }
  }

  *(a1 + 112) = v7;
  v10 = (a1 + 112);
  if (qword_1025D4200 != -1)
  {
    sub_10194B200();
  }

  v11 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v5;
    v13 = *v10;
    *buf = 67240448;
    v16 = v12;
    v17 = 1026;
    v18 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Watch Orientation,crown,%{public}d,wrist,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194B400(v5, v10);
  }
}

void sub_1008277E8(const void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100827F98, @"com.apple.nano.invertUIChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100827F98, @"com.apple.nano.wristOrientationChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_100827870(uint64_t a1)
{
  *a1 = off_1024756C0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100827964(_BYTE *a1)
{
  *a1 = off_102475518;
  sub_1008279F8(a1);

  return sub_100827870(a1);
}

void sub_1008279C0(_BYTE *a1)
{
  sub_100827964(a1);

  operator delete();
}

void sub_1008279F8(_BYTE *a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Watch Orientation,Orientation Notifier is shutting down.", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194B51C();
  }

  sub_100827AA0(a1);
  a1[108] = 1;
}

void sub_100827AA0(const void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.nano.invertUIChangedNotification", 0);

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.nano.wristOrientationChangedNotification", 0);
}

uint64_t sub_100827B7C(void *a1, int *a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = *a2;
    v5 = v12[0];
    v6 = sub_10000608C(a1, v12, 1);
    *buf = 67109376;
    *&buf[4] = v5;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Watch Orientation,Added client for %d, count %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v8 = *a2;
    v11 = v8;
    v9 = sub_10000608C(a1, &v11, 1);
    v12[0] = 67109376;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWatchOrientationSettingsNotifier::registerForNotificationInternal(const CLWatchOrientationSettingsNotifier_Type::Notification &)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v17 = 0;
  v18 = 0;
  *buf = a1[14];
  v16 = 0;
  v12[0] = 0;
  (*(*a1 + 152))(a1, v12, buf, 1, 0xFFFFFFFFLL, 0);
  return 1;
}

uint64_t sub_100827DB0(uint64_t a1, int *a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = *a2;
    v5 = v12[0];
    v6 = sub_10000608C(a1, v12, 1);
    *buf = 67109376;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Watch Orientation,Removed client for %d, count %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v8 = *a2;
    v11 = v8;
    v9 = sub_10000608C(a1, &v11, 1);
    v12[0] = 67109376;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWatchOrientationSettingsNotifier::unregisterForNotificationInternal(const CLWatchOrientationSettingsNotifier_Type::Notification &)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return 1;
}

void sub_100827F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10194B608();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLWatchOrientationSettingsNotifier::onOrientationSettingsChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10194B61C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWatchOrientationSettingsNotifier::onOrientationSettingsChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100829AF4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100828284(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1008282B4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102475810;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100828398(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10194B608();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194B644(a1, a2);
      }
    }
  }
}

uint64_t sub_10082853C(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_1008286F4(char *a1, void *a2, int *a3, char *a4)
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
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32) + 32) = v28;
        memset(buf, 0, 32);
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10082A694();
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D8A09;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10194B608();
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
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10194B74C(a1, a2);
    return 0;
  }

  return result;
}

BOOL sub_100828AB0(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_10194B608();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_10194B854(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100828C44(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10194B61C();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10194B61C();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLWatchOrientationSettingsNotifier_Type::Notification, CLWatchOrientationSettingsNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLWatchOrientationSettingsNotifier_Type::Notification, NotificationData_T = CLWatchOrientationSettingsNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_100828FE8(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = v8[1];
  *a3 = *v8;
  a3[1] = v9;
  return 1;
}

void sub_100829178(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_100829B70();
    }
  }
}

void sub_10082964C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_100829678(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10194B608();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194BA80(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_10194B608();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194B95C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_10194B61C();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = a1 + 8;
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_10194B61C();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLWatchOrientationSettingsNotifier_Type::Notification, CLWatchOrientationSettingsNotifier_Type::NotificationData>::listClients() [Notification_T = CLWatchOrientationSettingsNotifier_Type::Notification, NotificationData_T = CLWatchOrientationSettingsNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
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
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
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
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_100829A3C(uint64_t a1)
{
  sub_10082A624(a1);

  operator delete();
}

id sub_100829A74(uint64_t a1, int a2, void *a3)
{
  result = sub_10082A16C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100829AF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1008275A4(v1);
  v4[0] = v1[14];
  memset(&v4[1], 0, 24);
  v3 = 0;
  return (*(*v1 + 152))(v1, &v3, v4, 1, 0xFFFFFFFFLL, 0);
}

void sub_100829C1C(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_10082A16C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_100829FD8(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10194B61C();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10194B61C();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLWatchOrientationSettingsNotifier_Type::Notification, CLWatchOrientationSettingsNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLWatchOrientationSettingsNotifier_Type::Notification, NotificationData_T = CLWatchOrientationSettingsNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_100829FD8(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10082A16C(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_10082A0F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024757A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10082A14C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10082A16C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10082A208(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10082A3A4(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10082A208(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10082A56C(&v8, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10194BB94();
    }

    v3 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_10194BB94();
    }

    v7 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v7;
    v5 = OS_LOG_TYPE_FAULT;
  }

  _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
  return 0;
}

id sub_10082A3A4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10194BB94();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10194BB94();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101CB0A96 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

id sub_10082A56C(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EFF0))
  {
    if ([objc_msgSend(a2 "serialized")] != 32)
    {
      sub_10194BBA8();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_10082A624(uint64_t a1)
{
  *a1 = off_102475810;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_10082A740(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10082A760(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 4536);
  v6 = *(a2 + 4540);
  v7 = *(a2 + 4544);
  v8 = *(a2 + 4548);
  v9 = (*(*a1 + 40))(a1);
  v10 = v9;
  v11 = v9 & dword_100000000;
  v12 = 0.0;
  if ((v9 & dword_100000000) != 0)
  {
    v13 = *&v9;
  }

  else
  {
    v13 = 0.0;
  }

  v27 = *(a2 + 24);
  v14 = (*(*a2 + 16))(a2);
  v15 = (*(*a2 + 8))(a2);
  v16 = v15;
  v17 = (fmaxf(v13, 0.0) * 4.5665) + 2.9705;
  v18 = 2.1;
  if (v13 <= 0.0)
  {
    v19 = 2.1;
  }

  else
  {
    v19 = v17;
  }

  if ((v10 & 0x100000000) != 0 || v14)
  {
    if (v15)
    {
      v21 = *(a2 + 352);
      v22 = (v8 - v21) / (v8 - v7);
      v18 = v5 * sub_100161F00(v22, v6);
      v20 = 1;
      v12 = v18;
    }

    else if (v11)
    {
      v20 = 0;
      v18 = v19;
    }

    else
    {
      v18 = sub_1010D0044(*(a2 + 48));
      v20 = 3;
    }
  }

  else
  {
    v20 = 5;
  }

  if (qword_1025D4230 != -1)
  {
    sub_10194BD2C();
  }

  v23 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a2 + 352);
    v25 = *(a2 + 392);
    *buf = 134220800;
    v29 = v24;
    v30 = 2048;
    v31 = v27;
    v32 = 2048;
    v33 = v25;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v7;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v19;
    v42 = 2048;
    v43 = v12;
    v44 = 2048;
    v45 = v18;
    v46 = 1024;
    v47 = v16;
    v48 = 1024;
    v49 = v14;
    v50 = 1024;
    v51 = HIDWORD(v11);
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Stair Climbing, hr, %f, timestamp, %f, sinceLastGood, %f, hrmax, %f, hrmin, %f, stepRate, %f, wrmets, %f, hrmets, %f, mets, %f, hrGood, %d, hrAvail, %d, stepRateAvail, %d", buf, 0x6Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_10194BD40();
    }

    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLNatalieStairClimbingModel::computeMETS(const CLNatalieModelInput &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  *a3 = v12;
  *(a3 + 4) = v19;
  *(a3 + 8) = 0;
  *(a3 + 12) = v19;
  *(a3 + 16) = 0;
  *(a3 + 20) = v18;
  *(a3 + 24) = v20;
  *(a3 + 28) = 0;
  *(a3 + 32) = 0xA00000003;
}

void sub_10082ABA8(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1.n128_f64[0];
  if (sub_1000CD414(a3 + 3728, a1))
  {
    sub_1004A2080(a3 + 3728, v5, v4);
    if (v5[208] == 1)
    {
      sub_1004A243C(a3 + 3296);
    }
  }
}

void sub_10082AC7C(int a1)
{
  if (a1)
  {
    operator new();
  }

  operator new();
}

void sub_10082AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  operator delete();
}

void *sub_10082AD8C(void *result, uint64_t a2)
{
  *result = off_1024758C8;
  result[1] = a2;
  return result;
}

id sub_10082ADBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 8) vendor];
  v6 = &v5;
  sub_100072124(&v6);
  return v3;
}

void sub_10082AE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100072124(&a12);
  _Unwind_Resume(a1);
}

id sub_10082BB58(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#diagnosticManager Interruption handler called", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194C928();
  }

  return [*(a1 + 32) setConnection:0];
}

id sub_10082BC08(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10194BECC();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#diagnosticManager Invalidation handler called", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194CA04();
  }

  return [*(a1 + 32) setConnection:0];
}

void sub_10082BEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082BF10(id a1)
{
  v4 = 6;
  strcpy(v3, "mobile");
  sub_10016C650(v3, __p);
  if (v6 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = [NSString stringWithUTF8String:v1];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  qword_10265A530 = [[NSURL alloc] initWithString:{-[NSString stringByAppendingPathComponent:](v2, "stringByAppendingPathComponent:", objc_msgSend(&off_102554450, "componentsJoinedByString:", @"/"}];
}

void sub_10082BFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082C084(id a1)
{
  v1 = objc_opt_new();
  qword_10265A540 = v1;

  [v1 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
}

uint64_t sub_10082C194(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0x500000000;
  *(a1 + 40) = 0x400000000;
  if (!a2 || *(a2 + 16) >= 5u)
  {
    sub_10194CD14(a1);
  }

  *(a1 + 12) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_10082C1FC(uint64_t result)
{
  *(result + 12) = 0;
  *(result + 40) = 0;
  return result;
}

unsigned __int16 *sub_10082C20C(unsigned __int16 *result, float a2)
{
  v2 = result;
  v4 = result + 6;
  v3 = result[6];
  v5 = result[7];
  v6 = *(result + 4);
  if (v3 + v5 >= v6)
  {
    v7 = *(result + 4);
  }

  else
  {
    v7 = 0;
  }

  *&result[2 * (v3 + v5 - v7) + 10] = a2;
  if (v6 <= v5)
  {
    v8 = v3 + 1;
    if (v8 < v6)
    {
      LOWORD(v6) = 0;
    }

    *v4 = v8 - v6;
  }

  else
  {
    result[7] = v5 + 1;
    v5 = (v5 + 1);
  }

  v9 = *(*result + 16);
  v10 = result[21];
  if (v10 >= v9)
  {
    v14 = 0;
    *(result + 2) = 0;
    do
    {
      v15 = v14;
      v16 = v14;
      v17 = *(**v2 + 4 * v14);
      v18 = *(v2 + 2) + (v17 * *sub_100457AE8(v4, v5 + ~v14));
      *(v2 + 2) = v18;
      if (v16)
      {
        v19 = *(*(*v2 + 8) + 4 * v15);
        v18 = *(v2 + 2) - (v19 * *sub_100457AE8(v2 + 20, v10 - v15));
        *(v2 + 2) = v18;
      }

      v14 = v15 + 1;
    }

    while (v9 >= (v15 + 1));
    *(v2 + 2) = v18 / **(*v2 + 8);
    return sub_100623A2C(v2 + 20, v2 + 2);
  }

  else
  {
    v11 = *(result + 11);
    v12 = result[20];
    if (v12 + v10 >= v11)
    {
      v13 = *(result + 11);
    }

    else
    {
      v13 = 0;
    }

    *&result[2 * (v12 + v10 - v13) + 24] = a2;
    if (v11 <= v10)
    {
      v20 = v12 + 1;
      if (v20 < v11)
      {
        LOWORD(v11) = 0;
      }

      result[20] = v20 - v11;
    }

    else
    {
      result[21] = v10 + 1;
    }

    *(result + 2) = a2;
  }

  return result;
}

uint64_t sub_10082C3A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

uint64_t sub_10082C3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v24 = *(a2 + 16);
  }

  v18 = dword_100000000 + 2;
  v19 = 256;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v21 = *(a3 + 16);
  }

  v22 = 0;
  sub_100F7938C(a1, __dst, &v18, -1.0);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  *a1 = off_102475A10;
  sub_10000EC00(&v18, "ff:ff:ff:ff:ff:ff");
  *(a1 + 256) = sub_100196E8C(&v18);
  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v18);
  }

  sub_10018D404(a1 + 264);
  sub_100AABCE0(a1 + 304);
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  sub_10000EC00((a1 + 384), "UnknownHarvest");
  *(a1 + 408) = 0x10000000000000;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = qword_10265A558;
  if (byte_10265A567 >= 0)
  {
    v8 = byte_10265A567;
  }

  if (v7 == v8)
  {
    v9 = v6 >= 0 ? a2 : *a2;
    v10 = byte_10265A567 >= 0 ? &qword_10265A550 : qword_10265A550;
    if (!memcmp(v9, v10, v7))
    {
      if (*(a1 + 407) < 0)
      {
        *(a1 + 392) = 10;
        v15 = *(a1 + 384);
      }

      else
      {
        *(a1 + 407) = 10;
        v15 = a1 + 384;
      }

      *(v15 + 8) = 29811;
      *v15 = *"GpsHarvest";
      v16 = (v15 + 10);
      goto LABEL_44;
    }
  }

  v11 = qword_10265A570;
  if (byte_10265A57F >= 0)
  {
    v11 = byte_10265A57F;
  }

  if (v7 == v11)
  {
    v12 = v6 >= 0 ? a2 : *a2;
    v13 = byte_10265A57F >= 0 ? &qword_10265A568 : qword_10265A568;
    if (!memcmp(v12, v13, v7))
    {
      if (*(a1 + 407) < 0)
      {
        *(a1 + 392) = 11;
        v14 = *(a1 + 384);
      }

      else
      {
        *(a1 + 407) = 11;
        v14 = a1 + 384;
      }

      *(v14 + 7) = 1953719670;
      *v14 = *"WifiHarvest";
      v16 = (v14 + 11);
LABEL_44:
      *v16 = 0;
    }
  }

  sub_100AABD0C(a1 + 304, (a1 + 384));
  return a1;
}

void sub_10082C670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082C6FC(uint64_t a1)
{
  *a1 = off_1024C2398;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_1006526BC(a1);
}

void sub_10082C7BC(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (v2 - *(a1 + 408) >= 14400.0)
  {
    sub_10082C810(a1);
    *(a1 + 408) = v2;
  }
}

uint64_t sub_10082C810(uint64_t a1)
{
  v2 = sub_100100690();
  v4 = sub_1001B0A10(v2);
  sub_1001B0B4C(a1, &v4);
  sub_1001B2334(a1);
  return sub_1001B2F54(a1);
}

uint64_t sub_10082C860(uint64_t a1)
{
  *a1 = off_102475A10;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *a1 = off_1024C2398;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  return sub_1006526BC(a1);
}

void sub_10082C8FC(uint64_t a1)
{
  *a1 = off_102475A10;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  *a1 = off_1024C2398;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  sub_1006526BC(a1);

  operator delete();
}

void *sub_10082CA48(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102475A70;
  sub_10082CB40((a1 + 3), a2);
  return a1;
}

void sub_10082CAC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102475A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10082CB40(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(__p, "");
  sub_10082C3D0(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10082CBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082CC30(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102475A70;
  sub_10082C3D0((a1 + 3), a2, a3);
  return a1;
}

void sub_10082CC8C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_10082CCF0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_10082CDA8()
{
  sub_10000EC00(&qword_10265A550, "WifiAssociatedApHarvestTable");
  __cxa_atexit(&std::string::~string, &qword_10265A550, dword_100000000);
  sub_10000EC00(&qword_10265A568, "WifiAssociatedApWifiHarvestTable");

  return __cxa_atexit(&std::string::~string, &qword_10265A568, dword_100000000);
}

double sub_10082CE40(void *a1)
{
  v1 = sub_100C71B10(a1);
  *v1 = off_102475AC0;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 76) = 0u;
  *(v1 + 92) = 1065353216;
  *(v1 + 25) = 0;
  *(v1 + 54) = 0;
  *(v1 + 110) = 0;
  *&result = 0x1E00000000;
  v1[14] = 0x1E00000000;
  *(v1 + 152) = 1;
  v1[21] = 0x1E00000000;
  *(v1 + 41) = 1031798784;
  return result;
}

void sub_10082CEC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 74);
  if (v3)
  {
    *(a1 + 16) = *a2;
    *(a1 + 20) = *(a2 + 4);
    *(a1 + 24) = *(a2 + 8);
    *(a1 + 28) = *(a2 + 12);
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 36) = *(a2 + 20);
    *(a1 + 40) = *(a2 + 24);
    *(a1 + 48) = *(a2 + 32);
    *(a1 + 52) = *(a2 + 36);
    *(a1 + 56) = *(a2 + 40);
    *(a1 + 60) = *(a2 + 44);
    *(a1 + 64) = *(a2 + 48);
    v4 = *(a2 + 64);
    *(a1 + 76) = v4;
    *(a1 + 86) = *(a2 + 68);
    *(a1 + 84) = *(a2 + 72) != 0;
    v5 = *(a2 + 73);
    v6 = *(a2 + 56);
    *(a1 + 112) = 0;
    v7 = (a1 + 112);
    *(a1 + 85) = v5 != 0;
    *(a1 + 68) = v6;
    *(a1 + 110) = v3;
    if ((v4 - 1) <= 0x1C)
    {
      sub_10082CFB0(v7, v4);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 90) = v8;
}

void sub_10082CFB0(unsigned __int16 *a1, uint64_t a2)
{
  if (a1[1] || *a1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10194D1B0();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v5 = a1[1];
      v6 = *a1;
      *buf = 67109376;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Assertion failed: fHeadAndSize.fSize == 0 && fHeadAndSize.fHead == 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 78,size,%u,head,%u.", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_10194D1C4();
      }

      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CMQueue<BOOL>::setCapacity(size_t) [T = BOOL]", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  if (a2)
  {
    *(a1 + 1) = a2;
  }
}

void sub_10082D180(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10194D1B0();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 52);
    v4 = *(a1 + 56);
    v5 = *(a1 + 60);
    v6 = *(a1 + 64);
    v25 = 67109888;
    *v26 = v3;
    *&v26[4] = 1024;
    *&v26[6] = v4;
    LOWORD(v27) = 1024;
    *(&v27 + 2) = v5;
    HIWORD(v27) = 1024;
    *v28 = v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "configuration: low band = [%d %d] high band [%d %d]", &v25, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D1EC(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10194D1C4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 44);
    v10 = *(a1 + 48);
    v25 = 134218496;
    *v26 = v8;
    *&v26[8] = 2048;
    v27 = v9;
    *v28 = 2048;
    *&v28[2] = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "configuration: classifierMinLowPower = %f, classifierMaxLowPower = %f, classifierMaxHighPower = %f", &v25, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D300(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10194D1C4();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 20);
    v14 = *(a1 + 24);
    v15 = *(a1 + 28);
    v16 = *(a1 + 32);
    v17 = *(a1 + 36);
    v25 = 134219264;
    *v26 = v12;
    *&v26[8] = 2048;
    v27 = v13;
    *v28 = 2048;
    *&v28[2] = v14;
    v29 = 2048;
    *v30 = v15;
    *&v30[8] = 2048;
    *v31 = v16;
    *&v31[8] = 2048;
    v32 = v17;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "configuration: theta = [%.2f %.2f %.2f %.2f %.2f %.2f]", &v25, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D41C(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10194D1C4();
  }

  v18 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 68);
    v20 = *(a1 + 76);
    v21 = *(a1 + 86);
    v22 = *(a1 + 84);
    v23 = *(a1 + 85);
    v24 = *(a1 + 72);
    v25 = 134219264;
    *v26 = v19;
    *&v26[8] = 2048;
    v27 = v20;
    *v28 = 2048;
    *&v28[2] = v21;
    v29 = 1024;
    *v30 = v22;
    *&v30[4] = 1024;
    *&v30[6] = v23;
    *v31 = 2048;
    *&v31[2] = v24;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "configuration: oddsThreshold = %f, medianFilterSize = %zu, confidenceThreshold = %f, useHysteresis = %d, useAngleOverride = %d, angleMetricThreshold = %f", &v25, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D560(a1);
  }
}

uint64_t sub_10082D4B0(uint64_t result)
{
  *(result + 92) = 1065353216;
  *(result + 108) = 0;
  *(result + 112) = 0;
  return result;
}

void sub_10082D4C4(uint64_t a1, float a2, float a3)
{
  v3 = a2 * 100.0;
  if ((a2 * 100.0) <= (*(a1 + 44) * 100.0) && v3 >= (*(a1 + 40) * 100.0))
  {
    v5 = a3 * 100.0;
    if (!sub_100D88B70(*(a1 + 110)) || v5 <= (*(a1 + 48) * 100.0))
    {
      expf(((((*(a1 + 16) + (*(a1 + 20) * v3)) + (*(a1 + 24) * v5)) + ((v3 * *(a1 + 28)) * v5)) + ((v3 * *(a1 + 32)) * v3)) + ((v5 * *(a1 + 36)) * v5));
    }
  }
}

unint64_t sub_10082D58C(uint64_t a1)
{
  if (*(a1 + 90) != 1)
  {
    v3 = 0;
    v4 = 3;
    return v4 | v3;
  }

  if (*(a1 + 91) == 1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10194D1B0();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v25 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Accel saturation detected, forcing OnBody.", v25, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194D6A4();
    }

    v3 = dword_100000000;
    v4 = 1;
    return v4 | v3;
  }

  sub_10082D4C4(a1, *(a1 + 96), *(a1 + 100));
  *(a1 + 92) = v5;
  if (*(a1 + 85) == 1)
  {
    sub_100623A2C((a1 + 168), (a1 + 104));
    *(a1 + 152) = 1;
  }

  v6 = *(a1 + 112);
  v7 = *(a1 + 114);
  v8 = *(a1 + 116);
  if (*(a1 + 114) && v8 == v7)
  {
    v9 = v6 + 1;
    if (v6 + 1 >= v7)
    {
      v10 = *(a1 + 114);
    }

    else
    {
      v10 = 0;
    }

    LOWORD(v6) = v9 - v10;
    *(a1 + 112) = v6;
    v11 = v7 - 1;
    *(a1 + 114) = v7 - 1;
    LODWORD(v7) = (v7 - 1);
  }

  else
  {
    v11 = *(a1 + 114);
  }

  v12 = v6 + v11;
  if (v12 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + v12 - v13 + 120) = *(a1 + 92) > *(a1 + 68);
  if (v8 <= v7)
  {
    if (v6 + 1 < v8)
    {
      LOWORD(v8) = 0;
    }

    *(a1 + 112) = v6 + 1 - v8;
  }

  else
  {
    *(a1 + 114) = ++v11;
  }

  v14 = *(a1 + 108);
  if (v14 < v11)
  {
    v15 = 0;
    *(a1 + 108) = v14 + 1;
    v16 = *(a1 + 92);
    v4 = 3;
    if ((*(a1 + 84) & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (!v11)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      LOWORD(v19) = 0;
      goto LABEL_42;
    }

    v19 = 0;
    v18 = 0;
    v11 = 0;
LABEL_41:
    v21 = v18 >= (v19 + 1) >> 1;
    LOWORD(v19) = v11;
    if (!v21)
    {
      goto LABEL_42;
    }

LABEL_44:
    v16 = *(a1 + 92);
    v15 = 1;
    v4 = 1;
    if (!v20)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v18 += *sub_10082DC28((a1 + 112), v17++);
    v19 = *(a1 + 114);
  }

  while (v17 < v19);
  v20 = *(a1 + 84);
  if ((v20 & 1) == 0)
  {
    v11 = *(a1 + 114);
    goto LABEL_41;
  }

  v20 = 1;
  v11 = *(a1 + 114);
  if (v18)
  {
    goto LABEL_44;
  }

LABEL_42:
  v15 = 0;
  v4 = 0;
  v16 = 1.0 - *(a1 + 92);
  v11 = v19;
  if ((v20 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_45:
  v22 = sub_10082DC28((a1 + 112), v11 - 1);
  if (v15 && !*v22)
  {
    v23 = 0;
    goto LABEL_49;
  }

LABEL_48:
  v23 = v16 > *(a1 + 86);
LABEL_49:
  if (v15 && (*(a1 + 85) & 1) != 0)
  {
    if (*(a1 + 152) == 1)
    {
      sub_100457CE4(a1 + 152);
    }

    if (*(a1 + 156) <= *(a1 + 72))
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v23 = 1;
    }
  }

  v3 = v23 << 32;
  return v4 | v3;
}

float sub_10082D888(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v23 = 256;
  v20 = 1031798784;
  do
  {
    v5 = *sub_100457AE8(a1 + 538, v2);
    v6 = sub_100457AE8(a1 + 1062, v2);
    v7 = sqrtf((v5 * v5) + (*v6 * *v6));
    v8 = sub_100457AE8(a1 + 14, v2);
    v9 = atan2f(*v8, v7);
    v10 = v3 + v4;
    if (v10 >= 0x100)
    {
      v11 = -1000;
    }

    else
    {
      v11 = 24;
    }

    *&v17[4 * v10 + v11] = v9;
    if (v4 >= 0xFFu)
    {
      v12 = -256;
    }

    else
    {
      v12 = 0;
    }

    v13 = v4 + v12;
    if (v3 > 0xFF)
    {
      v4 = v13 + 1;
    }

    else
    {
      ++v3;
    }

    ++v2;
  }

  while (v2 != 256);
  v22 = v3;
  v21 = v4;
  v17[0] = 1;
  sub_100457CE4(v17);
  v14 = v19;
  if (v17[0])
  {
    sub_100457CE4(v17);
  }

  v15 = v18;
  if (v18 <= 0.0)
  {
    v15 = -v18;
  }

  return sqrtf(v14) / v15;
}

BOOL sub_10082D9FC(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = sub_100457AE8(a1 + 14, v2);
    v5 = *v4 * *v4;
    v6 = sub_100457AE8(a1 + 538, v2);
    v7 = v5 + (*v6 * *v6);
    v8 = sub_100457AE8(a1 + 1062, v2);
    if (sqrtf(v7 + (*v8 * *v8)) > 10.0)
    {
      ++v3;
    }

    ++v2;
  }

  while (v2 != 256);
  return v3 > 0xE6;
}

void sub_10082DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 8) == 100)
  {
    *(a1 + 91) = sub_10082D9FC(a2);
    v10 = *(a1 + 52);
    v11 = *(a1 + 56);
    v12 = *(a1 + 110);
    v13 = 0.0;
    v14 = 0.0;
    if (v10 <= v11)
    {
      v15 = (a4 + 4 * v10);
      v16 = (a6 + 4 * v10);
      do
      {
        v17 = *v16;
        if (v12 == 18)
        {
          v17 = v17 - *v15;
        }

        v14 = v14 + v17;
        ++v15;
        ++v10;
        ++v16;
      }

      while (v11 >= v10);
    }

    *(a1 + 96) = v14;
    v18 = *(a1 + 60);
    v19 = *(a1 + 64);
    if (v18 <= v19)
    {
      v20 = (a4 + 4 * v18);
      v21 = 0.0;
      v22 = (a6 + 4 * v18);
      do
      {
        v23 = *v22;
        if (v12 == 18)
        {
          v23 = v23 - *v20;
        }

        v21 = v21 + v23;
        ++v20;
        ++v18;
        ++v22;
      }

      while (v19 >= v18);
      v13 = v21 * 0.125;
    }

    *(a1 + 96) = v14 * 0.125;
    *(a1 + 100) = v13;
    *(a1 + 104) = sub_10082D888(a2);
  }
}

void sub_10082DBC8(void *a1)
{
  *a1 = off_102475AC0;
  sub_100C71B3C(a1);

  operator delete();
}

uint64_t sub_10082DC28(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_102475B20);
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
        dispatch_once(&qword_1025D48A0, &stru_102475B20);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<BOOL>::operator[](const size_t) const [T = BOOL]", "%s\n", v9);
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

  return a1 + v4 - v5 + 8;
}

uint64_t sub_10082DE24(uint64_t a1, uint64_t a2, int a3, char a4, char a5)
{
  v9 = sub_10015EFE0(a1, a3);
  *v9 = off_102475B50;
  *(v9 + 200) = off_102475BB8;
  sub_100D0A5A8(v9 + 200, *(v9 + 8), a5);
  *a1 = off_102475B50;
  *(a1 + 200) = off_102475BB8;
  *(a1 + 274) = a4;
  *(a1 + 275) = 0;
  *(a1 + 280) = 0;
  v10 = sub_10098EAD4();
  v12 = sub_10098F674(v10, (a1 + 24));
  sub_100A61118(a1 + 288, &v12, a1 + 16, a2);
  return a1;
}

uint64_t sub_10082DF30(void *a1)
{
  *a1 = off_102475B50;
  v2 = a1 + 25;
  a1[25] = off_102475BB8;
  sub_100D0A984((a1 + 25));
  sub_100D0A640(v2);
  sub_100D0A6AC(v2);
  sub_100A611A8(a1 + 36);
  sub_100D0A5E8(v2);

  return sub_10015AC4C(a1);
}

void sub_10082DFD8(void *a1)
{
  sub_10082DF30(a1);

  operator delete();
}

void sub_10082E010(uint64_t a1)
{
  sub_10082DF30((a1 - 200));

  operator delete();
}

uint64_t sub_10082E04C(uint64_t a1)
{
  sub_100A611EC(a1 + 288);
  if (*(a1 + 274) == 1)
  {
    sub_100D0A9C0(a1 + 200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 0xBFF0000000000000;
    v3 = sub_1000137E0();
    sub_100A62AF4(a1 + 288, &v6, &v5, &v4, &v3);
  }

  sub_100D0A7CC(a1 + 200);
  sub_100D0A8F4(a1 + 200);
  v6 = 2;
  result = sub_10015E1D8(a1, &v6);
  *(a1 + 275) = 0;
  *(a1 + 280) = 0;
  return result;
}

void *sub_10082E0F4(uint64_t a1)
{
  sub_100D0A984(a1 + 200);
  sub_100D0A640((a1 + 200));

  return sub_100D0A6AC((a1 + 200));
}

void sub_10082E138(uint64_t a1, int a2)
{
  if (qword_1025D42C0 != -1)
  {
    sub_10194D7A8();
  }

  v4 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Application state changed, %d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194D7BC(a2);
  }

  *(a1 + 275) = a2 ^ 1;
}

void sub_10082E220(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 304;
  v5 = *(a2 + 12);
  *v26 = *(a2 + 8);
  v24 = *(a2 + 16);
  *buf = v5;
  sub_100A61478(a1 + 288, v26, buf, &v24, a2);
  v6.i64[0] = *(a1 + 464);
  if (*v6.i64 <= 0.0)
  {
    v7 = 0;
    v8 = 0.0;
  }

  else
  {
    sub_100A6223C(v26, v4);
    v6 = vsubq_f64(vcvtq_f64_f32(*(a1 + 472)), *v26);
    v7 = vcvt_f32_f64(v6);
    *v6.i64 = *(a1 + 480) - *&v26[16];
    v8 = *v6.i64;
  }

  v9 = *(a1 + 452);
  *&v26[16] = 0;
  *v26 = 0xBFF0000000000000;
  v10 = *(v4 + 140);
  sub_10011E648(&v26[8], v6);
  memset(&v26[24], 0, 36);
  __asm { FMOV            V0.2S, #-1.0 }

  *&v26[60] = _D0;
  v27 = 0;
  v28 = 0;
  v29 = 0x1FF00000000;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  *v26 = *a2;
  v16 = *(v4 + 16);
  *buf = vcvt_hight_f32_f64(vcvt_f32_f64(*v4), v16);
  sub_10011E648(buf, v16);
  *&v26[8] = *buf;
  *&v26[24] = v7;
  *&v26[32] = v8;
  *&v26[36] = v10;
  *&v26[44] = v9;
  WORD2(v29) = 511;
  *&v26[48] = xmmword_101C79550;
  *&v26[64] = -1082130432;
  v17 = HIWORD(v29) & 0xFFE7;
  if (*(a1 + 252))
  {
    v17 = HIWORD(v29) & 0xFFE7 | 0x10;
  }

  HIWORD(v29) = v17;
  if (sub_100A611E4(a1 + 288))
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  HIWORD(v29) = HIWORD(v29) & 0xFEFF | v18;
  v30 = 3;
  v32 = 0;
  v31 = *(a2 + 22);
  v19 = *a2;
  v20 = *(a1 + 280);
  if (v20 != 0.0)
  {
    v21 = v19 - v20;
    if (v19 - v20 > 0.100000001)
    {
      if (qword_1025D42C0 != -1)
      {
        sub_10194D8D0();
      }

      v22 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v21;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "Large time gap, %lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194D8F8(v21);
      }

      if (*(a1 + 275) == 1)
      {
        if (qword_1025D42C0 != -1)
        {
          sub_10194D8D0();
        }

        v23 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "Reset while backgrounded", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10194DA14();
        }

        sub_100A611EC(a1 + 288);
      }
    }
  }

  *(a1 + 280) = v19;
  sub_10015EB18(a1, v26);
}

void sub_10082E554(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v5 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = v2;
  sub_100A62AF4(a1 + 288, &v5, &v4, &v3, a2);
}

void sub_10082E5DC(uint64_t a1)
{
  if (qword_1025D4760 != -1)
  {
    sub_10194DB14();
  }

  v2 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Unregistering for ALS", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194DB28();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    [v3 unregisterNotificationForKeys:&off_102554480];
    [*(a1 + 24) registerNotificationBlock:0];

    *(a1 + 24) = 0;
  }
}

void sub_10082E6A0(uint64_t a1)
{
  if (qword_1025D4760 != -1)
  {
    sub_10194DB14();
  }

  v2 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 24) != 0;
    *buf = 67109120;
    v7 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Registering for ALS, hasExistingRegistration, %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194DC2C(a1);
  }

  if (!*(a1 + 24))
  {
    v4 = objc_alloc_init(BrightnessSystemClient);
    *(a1 + 24) = v4;
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000E681C;
      v5[3] = &unk_102468960;
      v5[4] = a1;
      [v4 registerNotificationBlock:v5 forProperties:&off_102554468];
      [*(a1 + 24) setProperty:kCFBooleanTrue forKey:@"ActivateALS"];
    }
  }
}

uint64_t *sub_10082E878(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10082E8F4(a1, v2);
  }

  return a1;
}

void sub_10082E8F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10082E5DC(a2);

    operator delete();
  }
}

CFTypeRef sub_10082E954(int a1, char *name, uint64_t a3)
{
  v4 = IOServiceNameMatching(name);
  if (!v4)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    return 0;
  }

  v6 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, [NSString stringWithUTF8String:a3], kCFAllocatorDefault, 0);
  IOObjectRelease(v6);
  return CFProperty;
}

const void *sub_10082E9E0(int a1)
{
  v1 = sub_10082E954(a1, "compass", "compass-calibration");
  if (!v1)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v5 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Invalid cpas data.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194DE44();
    }

    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 != CFDataGetTypeID())
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v4 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "The cpas data is not a CFData type.", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194DD60();
    }

    CFRelease(v2);
    return 0;
  }

  return v2;
}

BOOL sub_10082EB28(int a1)
{
  v1 = sub_10082E9E0(a1);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    if (!BytePtr)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v14 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning Cpas pointer is NULL.", &v34, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194E50C();
      }

      goto LABEL_50;
    }

    v4 = BytePtr;
    Length = CFDataGetLength(v2);
    if (Length < 2)
    {
      goto LABEL_44;
    }

    v6 = Length;
    v7 = sub_1003CCBA8(v4);
    if (v7 == 5 && v6 == 76)
    {
      v15 = 5;
    }

    else
    {
      v9 = v7;
      if (v7 != 6 || v6 != 76)
      {
        if (qword_1025D42E0 != -1)
        {
          sub_10194DD4C();
        }

        v11 = qword_1025D42E8;
        if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
        {
          v34 = 67109120;
          LODWORD(v35) = v9;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Unexpected cpas version: %u.", &v34, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194DF28(v9);
        }

LABEL_50:
        v17 = 0;
LABEL_51:
        v13 = 0;
        v21 = v2;
        goto LABEL_52;
      }

      v15 = 8;
    }

    v16 = CFDataCreate(kCFAllocatorDefault, v4 + 2, v15);
    if (!v16)
    {
LABEL_44:
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v28 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "Original serial number data is NULL.", &v34, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194E428();
      }

      goto LABEL_50;
    }

    v17 = v16;
    v18 = CFDataGetBytePtr(v16);
    if (!v18)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v31 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "Original serial number pointer is NULL.", &v34, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194E344();
      }

      goto LABEL_51;
    }

    v19 = v18;
    v20 = sub_10082E954(v18, "AppleH4CamIn", "BackCameraSerialNumber");
    v21 = v20;
    if (v20)
    {
      v22 = CFGetTypeID(v20);
      if (v22 == CFDataGetTypeID())
      {
        if (CFDataGetLength(v21) == v15)
        {
          v23 = CFDataGetBytePtr(v21);
          if (v23)
          {
            if (*v19 == *v23)
            {
              v24 = 1;
              do
              {
                v25 = v24;
                if (v15 == v24)
                {
                  break;
                }

                v26 = v19[v24];
                v27 = v23[v24++];
              }

              while (v26 == v27);
              v13 = v25 >= v15;
LABEL_63:
              CFRelease(v2);
              if (!v21)
              {
LABEL_53:
                if (v17)
                {
                  CFRelease(v17);
                }

                return v13;
              }

LABEL_52:
              CFRelease(v21);
              goto LABEL_53;
            }

LABEL_62:
            v13 = 0;
            goto LABEL_63;
          }

          if (qword_1025D42E0 != -1)
          {
            sub_10194DD4C();
          }

          v33 = qword_1025D42E8;
          if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v34) = 0;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "Current serial number data is NULL.", &v34, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10194E17C();
          }
        }

        else
        {
          if (qword_1025D42E0 != -1)
          {
            sub_10194DD4C();
          }

          v32 = qword_1025D42E8;
          if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
          {
            v34 = 134218240;
            v35 = CFDataGetLength(v21);
            v36 = 2048;
            v37 = v15;
            _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_FAULT, "Incorrect back camera serial number length. Actual length %ld. Expected length %lu.", &v34, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10194E040(v21, v15);
          }
        }

        CFRelease(v2);
        v13 = 0;
        goto LABEL_52;
      }
    }

    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v30 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v34) = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "Invalid back camera serial number data.", &v34, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194E260();
    }

    goto LABEL_62;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_10194DD4C();
  }

  v12 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v34) = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Cpas data is NULL.", &v34, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194E5F0();
  }

  return 0;
}

NSNumber *sub_10082F0CC(int a1)
{
  v1 = sub_10082E954(a1, "AppleH4CamIn", "BackCameraModuleFocusActuatorID");
  v2 = v1;
  valuePtr = -1;
  if (v1 && (v3 = CFGetTypeID(v1), v3 == CFNumberGetTypeID()))
  {
    if (CFNumberGetType(v2) == kCFNumberSInt32Type)
    {
      if (!CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = -1;
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v5 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        Type = CFNumberGetType(v2);
        v10 = 1024;
        v11 = 3;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "VCM actuator ID data type %d does not match expected type %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194E6D4(v2);
      }
    }
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      sub_10194DD4C();
    }

    v4 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Bailing while checking VCM actuator ID.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194E808();
      if (!v2)
      {
        return 0;
      }
    }

    else if (!v2)
    {
      return 0;
    }
  }

  CFRelease(v2);
  if (valuePtr != -1)
  {
    return [NSNumber numberWithInt:?];
  }

  return 0;
}

id sub_10082F2C0(int a1)
{
  v1 = sub_10082E9E0(a1);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    if (BytePtr)
    {
      v4 = BytePtr;
      Length = CFDataGetLength(v2);
      if (Length >= 2)
      {
        v6 = Length;
        v7 = sub_1003CCBA8(v4);
        v8 = [(__CFData *)v2 mutableCopy];
        v9 = v8;
        if (v8)
        {
          if (v7 == 5 && v6 == 76)
          {
            v12 = 5;
          }

          else
          {
            if (v7 != 6 || v6 != 76)
            {
              goto LABEL_29;
            }

            v12 = 8;
          }

          [v8 resetBytesInRange:{2, v12}];
        }

LABEL_29:
        CFRelease(v2);
        return v9;
      }
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_10194DD4C();
      }

      v14 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning CPAS pointer is NULL.", v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194E8EC();
      }
    }

    v9 = 0;
    goto LABEL_29;
  }

  if (qword_1025D42E0 != -1)
  {
    sub_10194DD4C();
  }

  v13 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning CPAS data is NULL.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194E9D0();
  }

  return 0;
}

void sub_10082F4C0(uint64_t a1, void *a2)
{
  *a1 = off_102475C90;
  *(a1 + 8) = *a2;
  v2 = a2[1];
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x4004000000000000;
  *(a1 + 64) = 0;
  if (!*a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "LCOutputBuffer,invalid pointer to LCFusion", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194EAC8(buf);
      v4 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLLocationControllerOutputBuffer::CLLocationControllerOutputBuffer(std::shared_ptr<CLLocationControllerFusionBase>, std::shared_ptr<const CLProactiveInertialOdometryBuffer>, const double, const double)", "%s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  operator new();
}

void sub_10082FBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = v16[6];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = v16[4];
  if (v19)
  {
    sub_100008080(v19);
  }

  v20 = v16[2];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082FC2C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1008313B4(a1, a2);
  }

  else
  {
    *v3 = off_1024DE5F8;
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v6;
    *(v3 + 24) = v5;
    *(v3 + 8) = v4;
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 104);
    *(v3 + 120) = *(a2 + 120);
    *(v3 + 104) = v9;
    *(v3 + 88) = v8;
    *(v3 + 72) = v7;
    *(v3 + 128) = *(a2 + 128);
    result = v3 + 144;
  }

  a1[1] = result;
  return result;
}

id sub_10082FCD0(double *a1, double a2)
{
  if (*(*(a1 + 5) + 68) <= 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,%{public}.3f,buffer is empty", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F1F0();
    }

    return 0;
  }

  v4 = sub_10000B1F8();
  sub_10000AED4(v4, v47);
  v46 = 0.0;
  if ((sub_100125300(v47, &v46) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EB0C();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,could not compute machContinuousToCFAbsoluteOffsetSec from local time", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194F0EC();
    }

    return 0;
  }

  v5 = a2 - v46;
  (*(*a1 + 32))(&v36, a1, a2 - v46);
  if (!sub_100028030(&v36) || !BYTE8(v45))
  {
    sub_1008304E4(a1, buf, v5);
    v41 = *&buf[72];
    v42 = *&buf[88];
    v43 = *&buf[104];
    v44 = *&buf[120];
    v37 = *&buf[8];
    v38 = *&buf[24];
    v39 = *&buf[40];
    v40 = *&buf[56];
    v45 = *&buf[128];
    if (sub_100028030(&v36))
    {
      if (BYTE8(v45))
      {
        if (qword_1025D4600 != -1)
        {
          sub_10194EB0C();
        }

        v6 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v7 = *(a1 + 7);
          *buf = 134350336;
          *&buf[4] = v37;
          *&buf[12] = 2050;
          *&buf[14] = a2;
          *&buf[22] = 2050;
          *&buf[24] = *(&v37 + 1);
          *&buf[32] = 2050;
          *&buf[34] = v5;
          *&buf[42] = 2050;
          *&buf[44] = vabdd_f64(*(&v37 + 1), v5);
          *&buf[52] = 2050;
          *&buf[54] = v7;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtCfatWithTolerance,found nearest CFAT %{public}.3f,requestedCfatSec,%{public}.3f,foundMctSec,%{public}.3f,anticipatedMctSec,%{public}.3f,diffMctSec,%{public}.3f,tolerance_sec,%{public}.3f", buf, 0x3Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10194EB0C();
          }

          v24 = *(a1 + 7);
          *v48 = 134350336;
          *&v48[4] = v37;
          *&v48[12] = 2050;
          *&v48[14] = a2;
          *&v48[22] = 2050;
          *&v48[24] = *(&v37 + 1);
          *v49 = 2050;
          *&v49[2] = v5;
          *&v49[10] = 2050;
          *&v49[12] = vabdd_f64(*(&v37 + 1), v5);
          *&v49[20] = 2050;
          *&v49[22] = v24;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationExtendedTimestamps *CLLocationControllerOutputBuffer::getLocationExtendedTimestampAtCfatWithTolerance(const CFAbsoluteTime) const", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }
      }
    }
  }

  v8 = sub_100028030(&v36);
  result = 0;
  if (v8 && BYTE8(v45))
  {
    v10 = vabdd_f64(*&v37, a2);
    if (v10 > a1[7])
    {
      if (qword_1025D4600 != -1)
      {
        sub_10194EB0C();
      }

      v11 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 134349824;
        *&buf[4] = a2;
        *&buf[12] = 2050;
        *&buf[14] = v5;
        *&buf[22] = 2050;
        *&buf[24] = v37;
        *&buf[32] = 2050;
        *&buf[34] = v10;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationAtCfat,#Warning: the requested user CFAT %{public}.3f points to buffer MCT %{public}.3f with actual CFAT %{public}.3f,diff,%{public}.1f sec,yielding location anyway", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10194EB0C();
        }

        *v48 = 134349824;
        *&v48[4] = a2;
        *&v48[12] = 2050;
        *&v48[14] = v5;
        *&v48[22] = 2050;
        *&v48[24] = v37;
        *v49 = 2050;
        *&v49[2] = v10;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationExtendedTimestamps *CLLocationControllerOutputBuffer::getLocationExtendedTimestampAtCfatWithTolerance(const CFAbsoluteTime) const", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    if (BYTE8(v45) - 2 <= 2)
    {
      HIDWORD(v44) = 5;
    }

    v26 = off_1024DE5F8;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v35 = v45;
    if (v5 >= *(&v37 + 1))
    {
      if (v5 <= *(&v37 + 1))
      {
LABEL_41:
        *&buf[12] = 0;
        *&buf[4] = 0;
        *&buf[20] = xmmword_101C75BF0;
        __asm { FMOV            V0.2D, #-1.0 }

        *&buf[36] = _Q0;
        *&buf[52] = _Q0;
        *&buf[68] = _Q0;
        *buf = 0xFFFF;
        *&buf[84] = 0;
        *&buf[88] = 0xBFF0000000000000;
        memset(&buf[96], 0, 20);
        *&buf[116] = 0xBFF0000000000000;
        *&buf[124] = 0x7FFFFFFF;
        memset(&buf[128], 0, 25);
        sub_10002790C(&v26, buf);
        v19 = [CLLocation alloc];
        v52 = *&buf[96];
        v53 = *&buf[112];
        v54[0] = *&buf[128];
        *(v54 + 12) = *&buf[140];
        *v49 = *&buf[32];
        *&v49[16] = *&buf[48];
        v50 = *&buf[64];
        v51 = *&buf[80];
        *v48 = *buf;
        *&v48[16] = *&buf[16];
        v20 = [v19 initWithClientLocation:v48];
        v21 = [CLLocationExtendedTimestamps alloc];
        v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v35];
        return [v21 initWithCLLocation:v20 systemTime:v22 machContinuousTimeSec:*(&v27 + 1)];
      }

      (*(*a1 + 32))(v48, a1, v5 + *(*(a1 + 5) + 8));
      sub_100830650(a1, &v36, v48, buf, v5);
    }

    else
    {
      (*(*a1 + 32))(v48, a1, v5 - *(*(a1 + 5) + 8));
      sub_100830650(a1, v48, &v36, buf, v5);
    }

    v31 = *&buf[72];
    v32 = *&buf[88];
    v33 = *&buf[104];
    v34 = *&buf[120];
    v27 = *&buf[8];
    v28 = *&buf[24];
    v29 = *&buf[40];
    v30 = *&buf[56];
    v35 = *&buf[128];
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1008304E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 24) = 0u;
  *a2 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 40) = 0xBFF0000000000000;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 72) = _Q0;
  *(a2 + 88) = _Q0;
  *(a2 + 104) = 0xBFF0000000000000;
  *(a2 + 116) = 0;
  *(a2 + 124) = 0;
  *(a2 + 140) = 7;
  *(a2 + 8) = _Q0;
  v8 = a2 + 8;
  *(a2 + 128) = 0xBFF0000000000000;
  v9 = (a2 + 128);
  v10 = *(result + 56);
  v11 = a3 - v10;
  v12 = v10 + a3;
  if (a3 - v10 <= v10 + a3)
  {
    v13 = result;
    result = *(result + 40);
    v14 = *(result + 8) * *(result + 64);
    v15 = a3 - v10;
    do
    {
      v16 = sub_1006A9A14(result, v15);
      if (sub_100028030(v16) && *(v16 + 136))
      {
        v17 = *(v16 + 16);
        v18 = v17 <= v11 || v17 > v12;
        v19 = vabdd_f64(v17, a3);
        if (!v18 && v19 < v14)
        {
          v21 = *(v16 + 8);
          v22 = *(v16 + 24);
          v23 = *(v16 + 56);
          *(v8 + 32) = *(v16 + 40);
          *(v8 + 48) = v23;
          *v8 = v21;
          *(v8 + 16) = v22;
          v24 = *(v16 + 72);
          v25 = *(v16 + 88);
          v26 = *(v16 + 104);
          *(v8 + 112) = *(v16 + 120);
          *(v8 + 80) = v25;
          *(v8 + 96) = v26;
          *(v8 + 64) = v24;
          *v9 = *(v16 + 128);
          v14 = v19;
        }
      }

      result = *(v13 + 40);
      v15 = v15 + *(result + 8);
    }

    while (v15 <= v12);
  }

  return result;
}

void sub_100830650(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = a2;
  v9 = *(a1 + 56);
  *(a4 + 24) = 0u;
  v10 = (a4 + 24);
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 104) = 0u;
  *a4 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a4 + 8) = _Q0;
  v16 = a4 + 8;
  *(a4 + 40) = 0xBFF0000000000000;
  *(a4 + 56) = 0xBFF0000000000000;
  *(a4 + 72) = _Q0;
  *(a4 + 88) = _Q0;
  *(a4 + 104) = 0xBFF0000000000000;
  *(a4 + 124) = 0;
  *(a4 + 116) = 0;
  *(a4 + 128) = 0xBFF0000000000000;
  v17 = (a4 + 128);
  *(a4 + 136) = 0;
  *(a4 + 140) = 7;
  if (sub_100028030(a2) && *(v6 + 136) || sub_100028030(a3) && *(a3 + 136))
  {
    v18 = 0;
    if (sub_100028030(v6) && *(v6 + 136))
    {
      v18 = sub_1012E9430(v6) && sub_1012E93FC(v6);
    }

    if (sub_100028030(a3) && *(a3 + 136) && sub_1012E9430(a3))
    {
      v20 = sub_1012E93FC(a3);
      if (v18 && v20)
      {
        if (a5 - *(v6 + 16) > *(a3 + 16) - a5)
        {
          v6 = a3;
        }

        goto LABEL_37;
      }

      if (v18)
      {
        v36 = v6;
      }

      else
      {
        v36 = a3;
      }

      if (v18 || v20)
      {
        v6 = v36;
        goto LABEL_37;
      }
    }

    else if (v18)
    {
LABEL_37:
      *(v16 + 112) = *(v6 + 120);
      v23 = *(v6 + 104);
      v24 = *(v6 + 72);
      *(v16 + 80) = *(v6 + 88);
      *(v16 + 96) = v23;
      v25 = *(v6 + 24);
      *v16 = *(v6 + 8);
      *(v16 + 16) = v25;
      v26 = *(v6 + 56);
      *(v16 + 32) = *(v6 + 40);
      *(v16 + 48) = v26;
      *(v16 + 64) = v24;
      *v17 = *(v6 + 128);
      v27 = a5 - *(a4 + 16);
      v28 = v27 > v9;
      if (v27 > v9)
      {
        v27 = v9;
      }

      v29 = v27 < -v9 || v28;
      if (v27 < -v9)
      {
        v27 = -v9;
      }

      *&v38 = v27;
      if (sub_1012E93FC(a4) && sub_1012E9430(a4))
      {
        v30 = *(a4 + 88);
        if (*&v38 < 0.0)
        {
          v30 = v30 + 180.0;
        }

        sub_1001D08A4(v30);
        v32 = v31;
        if ((atomic_load_explicit(&qword_10265A5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265A5D8))
        {
          sub_10018D404(xmmword_10265A5B0);
          __cxa_guard_release(&qword_10265A5D8);
        }

        sub_100FE3EFC(xmmword_10265A5B0, v10, (a4 + 32), *(a4 + 24), *(a4 + 32), *(a4 + 48), fabs(*&v38), *(a4 + 72), v32);
        v33 = *(a4 + 80);
      }

      else
      {
        v33 = sub_100E621D4(*(a4 + 140));
      }

      *(a4 + 40) = sqrt(*(a4 + 40) * *(a4 + 40) + *&v38 * *&v38 * (v33 * v33));
      *(a4 + 128) = *&v38 + *(a4 + 128);
      *(a4 + 8) = vaddq_f64(vdupq_lane_s64(v38, 0), *(a4 + 8));
      if (v29)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10194EAB4();
        }

        v34 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v35 = *(a4 + 16);
          *buf = 134349568;
          v40 = a5;
          v41 = 2050;
          v42 = v9;
          v43 = 2050;
          v44 = v35;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "LCOutputBuffer,propagateToMct,%{public}.3f,#Warning: propagation time exceeds max threshold of %{public}.1f sec,propagated to MCT %{public}.3f sec", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10194EB0C();
          }

          v37 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "CLLocationBufferBase::LCBufferLocation CLLocationControllerOutputBuffer::propagateLocationUsingNearestBin(const CLLocationBufferBase::LCBufferLocation &, const CFTimeInterval, const CLLocationBufferBase::LCBufferLocation &) const", "%s\n", v37);
          if (v37 != buf)
          {
            free(v37);
          }
        }
      }

      return;
    }

    if (sub_100028030(v6) && *(v6 + 136) && sub_100028030(a3) && *(a3 + 136))
    {
      if (*(v6 + 40) >= *(a3 + 40))
      {
        v6 = a3;
      }
    }

    else
    {
      v21 = sub_100028030(v6);
      if (*(v6 + 136))
      {
        v22 = v6;
      }

      else
      {
        v22 = a3;
      }

      if (v21)
      {
        v6 = v22;
      }

      else
      {
        v6 = a3;
      }
    }

    goto LABEL_37;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10194EAB4();
  }

  v19 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    v40 = a5;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "LCOutputBuffer,propagateToMct,%{public}.3f,invalid input locations", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10194F2E8();
  }
}

id sub_100830BCC(void *a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  if (*(a1[5] + 68) <= 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtMctWithTolerance,%{public}.3f,buffer is empty", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194F3EC();
    }

    return 0;
  }

  else
  {
    (*(*a1 + 32))(&v30, a2);
    if (!sub_100028030(&v30) || !BYTE8(v39))
    {
      sub_1008304E4(a1, buf, v2);
      v35 = *&buf[72];
      v36 = *&buf[88];
      v37 = *&buf[104];
      v38 = *&buf[120];
      v31 = *&buf[8];
      v32 = *&buf[24];
      v33 = *&buf[40];
      v34 = *&buf[56];
      v39 = *&buf[128];
      if (sub_100028030(&v30))
      {
        if (BYTE8(v39))
        {
          if (qword_1025D4600 != -1)
          {
            sub_10194EB0C();
          }

          v4 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v5 = a1[7];
            *buf = 134349824;
            *&buf[4] = *(&v31 + 1);
            *&buf[12] = 2050;
            *&buf[14] = v2;
            *&buf[22] = 2050;
            *&buf[24] = vabdd_f64(*(&v31 + 1), v2);
            *&buf[32] = 2050;
            *&buf[34] = v5;
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationExtendedTimestampAtMctWithTolerance,found nearest MCT %{public}.3f,requestedMctSec,%{public}.3f,diff,%{public}.3f,tolerance_sec,%{public}.3f", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_10194EB0C();
            }

            v18 = a1[7];
            *v40 = 134349824;
            *&v40[4] = *(&v31 + 1);
            *&v40[12] = 2050;
            *&v40[14] = v2;
            *&v40[22] = 2050;
            *&v40[24] = vabdd_f64(*(&v31 + 1), v2);
            LOWORD(v41) = 2050;
            *(&v41 + 2) = v18;
            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual CLLocationExtendedTimestamps *CLLocationControllerOutputBuffer::getLocationExtendedTimestampAtMctWithTolerance(const double) const", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }
        }
      }
    }

    v6 = sub_100028030(&v30);
    result = 0;
    if (v6 && BYTE8(v39))
    {
      if (BYTE8(v39) - 2 <= 2)
      {
        HIDWORD(v38) = 5;
      }

      v20 = off_1024DE5F8;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v29 = v39;
      if (*(&v31 + 1) <= v2)
      {
        if (*(&v31 + 1) >= v2)
        {
LABEL_27:
          *&buf[12] = 0;
          *&buf[4] = 0;
          *&buf[20] = xmmword_101C75BF0;
          __asm { FMOV            V0.2D, #-1.0 }

          *&buf[36] = _Q0;
          *&buf[52] = _Q0;
          *&buf[68] = _Q0;
          *buf = 0xFFFF;
          *&buf[84] = 0;
          *&buf[88] = 0xBFF0000000000000;
          memset(&buf[96], 0, 20);
          *&buf[116] = 0xBFF0000000000000;
          *&buf[124] = 0x7FFFFFFF;
          memset(&buf[128], 0, 25);
          sub_10002790C(&v20, buf);
          v14 = [CLLocation alloc];
          v45 = *&buf[96];
          v46 = *&buf[112];
          v47[0] = *&buf[128];
          *(v47 + 12) = *&buf[140];
          v41 = *&buf[32];
          v42 = *&buf[48];
          v43 = *&buf[64];
          v44 = *&buf[80];
          *v40 = *buf;
          *&v40[16] = *&buf[16];
          v15 = [v14 initWithClientLocation:v40];
          v16 = [CLLocationExtendedTimestamps alloc];
          v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v29];
          return [v16 initWithCLLocation:v15 systemTime:v17 machContinuousTimeSec:*(&v21 + 1)];
        }

        (*(*a1 + 32))(v40, a1, *(a1[5] + 8) + v2);
        sub_100830650(a1, &v30, v40, buf, v2);
      }

      else
      {
        (*(*a1 + 32))(v40, a1, v2 - *(a1[5] + 8));
        sub_100830650(a1, v40, &v30, buf, v2);
      }

      v25 = *&buf[72];
      v26 = *&buf[88];
      v27 = *&buf[104];
      v28 = *&buf[120];
      v21 = *&buf[8];
      v22 = *&buf[24];
      v23 = *&buf[40];
      v24 = *&buf[56];
      v29 = *&buf[128];
      goto LABEL_27;
    }
  }

  return result;
}