uint64_t sub_1001E058C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 40) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

void sub_1001E0634(uint64_t *a1)
{
  *a1 = off_102452338;
  sub_1001D953C(a1);
  sub_100027438(a1 + 36);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

BOOL sub_1001E0708(int a1)
{
  result = 1;
  if ((a1 - 25) > 0x32 || ((1 << (a1 - 25)) & 0x4000002000001) == 0)
  {
    return (a1 + 1) < 2;
  }

  return result;
}

uint64_t sub_1001E074C(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_102452158;
  *(result + 24) = 0;
  return result;
}

void *sub_1001E0778(void *result)
{
  *result = off_1024521D0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1001E079C(unsigned __int8 *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private position context type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84C58(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E088C(int *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private loi location accuracy type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84E30(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E097C(int *a1)
{
  result = *a1;
  if (result >= 5)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client batched location fix type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84F1C(a1);
      return 0;
    }
  }

  return result;
}

void *sub_1001E0A6C(void *result)
{
  v1 = result;
  if (result >= 5)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v2 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67240192;
      v4[1] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "Invalid GES,%{public}d", v4, 8u);
    }

    v3 = sub_10000A100(121, 0);
    result = 0;
    if (v3)
    {
      sub_101B85008(v1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E0B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + v2;
  if (*(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 28) = v4;
  return v4;
}

void sub_1001E0BB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024522C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001E0C14(uint64_t a1, uint64_t a2)
{
  result = rand();
  if (result % 100 <= 0)
  {

    return sub_100F356A8(a1, a2);
  }

  return result;
}

void sub_1001E0CA4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 24) == 4)
  {
    if (*(a2 + 76) <= 0.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018818E4();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "location timestamp is not set!", v11, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018819CC();
      }
    }

    else
    {
      v2 = *a2;
      *(a1 + 56) = a2[1];
      *(a1 + 40) = v2;
      v3 = a2[2];
      v4 = a2[3];
      v5 = a2[4];
      *(a1 + 120) = a2[5];
      *(a1 + 104) = v5;
      *(a1 + 88) = v4;
      *(a1 + 72) = v3;
      v6 = a2[6];
      v7 = a2[7];
      v8 = a2[8];
      *(a1 + 180) = *(a2 + 140);
      *(a1 + 168) = v8;
      *(a1 + 152) = v7;
      *(a1 + 136) = v6;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "location type is not WiFi!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018818F8();
    }
  }
}

uint64_t sub_1001E0E04(uint64_t a1)
{
  v2 = sub_100100690();
  if ((sub_1001AC2B4(v2) & 1) == 0)
  {
    v6 = a1 + 888;
    v7 = 1;
LABEL_16:
    sub_1001E268C(v6, v7);
    return 0;
  }

  if (!sub_100072814(a1 + 312))
  {
    v6 = a1 + 888;
    v7 = 2;
    goto LABEL_16;
  }

  if (!sub_1001E9CC8(a1 + 1536, (a1 + 316), (a1 + 324), 4))
  {
    v8 = *(sub_100100690() + 9);
    v9 = (a1 + 332);
    if (*(a1 + 332) > v8)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_10018F0D0(&buf);
        v11 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        v12 = *v9;
        LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
        *(__p.__r_.__value_.__r.__words + 4) = v11;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v12;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2050;
        v76 = v8;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as its uncertainty %{public}.1f is greater than %{public}.1f", &__p, 0x20u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&__p, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        sub_10018F0D0(&v72);
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v72;
        }

        else
        {
          v54 = v72.__r_.__value_.__r.__words[0];
        }

        v55 = *v9;
        LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
        *(buf.__r_.__value_.__r.__words + 4) = v54;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v55;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v74 = v8;
        v56 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v56);
        if (v56 != &__p)
        {
          free(v56);
        }
      }

      sub_1001E268C(a1 + 888, 5);
      return 0;
    }

    if (*(a1 + 1528) != 2)
    {
      if ((*(a1 + 1488) & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3E94();
        }

        v29 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&__p);
          v30 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v30;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as we cannot determine its LOI type", &buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA4734();
        }

        sub_1001E268C(a1 + 888, 6);
        return 0;
      }

      v23 = *(a1 + 1480);
      v24 = sub_100100690();
      if ((sub_10023866C(v24, v23, v25) & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3E94();
        }

        v26 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&__p);
          p_p = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          v28 = (a1 + 1496);
          if (*(a1 + 1519) < 0)
          {
            v28 = *v28;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
          *(buf.__r_.__value_.__r.__words + 4) = p_p;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v28;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as its LOI type %{private}s is not enabled", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA483C();
        }

        sub_1001E268C(a1 + 888, 7);
        return 0;
      }
    }

    if (sub_1001E2324(a1))
    {
      if (sub_1001E2678((a1 + 512)) && (*(a1 + 616) & 1) == 0)
      {
        v13 = *(a1 + 624);
        *v71 = *(a1 + 512);
        memset(&v72, 0, sizeof(v72));
        sub_1006DFE88(&v72, v71, &v71[8], 1uLL);
        sub_1001E4A94(a1 + 696, &__p);
        Current_2 = j__CFAbsoluteTimeGetCurrent_2();
        (*(*v13 + 16))(&buf, v13, &v72, &__p, Current_2);
        if (v72.__r_.__value_.__r.__words[0])
        {
          v72.__r_.__value_.__l.__size_ = v72.__r_.__value_.__r.__words[0];
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        v15 = sub_100198C70(&buf, (a1 + 512));
        if (&buf.__r_.__value_.__r.__words[1] == v15)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v31 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v32 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(v72.__r_.__value_.__l.__data_) = 136315138;
            *(v72.__r_.__value_.__r.__words + 4) = v32;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "WifiCalc, still could not look up centroid from tile/als for associated AP %s", &v72, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA3FD8(&__p);
            sub_10018F0D0(&v72);
            if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v69 = &v72;
            }

            else
            {
              v69 = v72.__r_.__value_.__r.__words[0];
            }

            *v71 = 136315138;
            *&v71[4] = v69;
            v70 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v72.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v70);
            if (v70 != &__p)
            {
              free(v70);
            }
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v16 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(v72.__r_.__value_.__l.__data_) = 136315138;
            *(v72.__r_.__value_.__r.__words + 4) = v17;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "WifiCalc, found centroid from tile/als for associated AP %s", &v72, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA3FD8(&__p);
            sub_10018F0D0(&v72);
            if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v63 = &v72;
            }

            else
            {
              v63 = v72.__r_.__value_.__r.__words[0];
            }

            *v71 = 136315138;
            *&v71[4] = v63;
            v64 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v72.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v64);
            if (v64 != &__p)
            {
              free(v64);
            }
          }

          v18 = *(a1 + 616);
          v19 = *(v15 + 56);
          *(a1 + 520) = *(v15 + 40);
          *(a1 + 536) = v19;
          v20 = *(v15 + 88);
          v21 = *(v15 + 120);
          v22 = *(v15 + 72);
          *(a1 + 584) = *(v15 + 104);
          *(a1 + 600) = v21;
          *(a1 + 552) = v22;
          *(a1 + 568) = v20;
          if ((v18 & 1) == 0)
          {
            *(a1 + 616) = 1;
          }
        }

        sub_1003C93BC(&buf, buf.__r_.__value_.__l.__size_);
      }

      if (*(a1 + 616) == 1 && sub_1001E4BB4(a1 + 520))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v33 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&__p);
          v34 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v34;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "WifiCalc, warning, associated AP %{private}s server-side centroid from tile/als is moving", &buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA4984();
        }
      }

      v35 = *(sub_100100690() + 6);
      if (*(a1 + 1520) >= v35)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v41 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&buf);
          v42 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          v43 = *(a1 + 1520);
          LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
          *(__p.__r_.__value_.__r.__words + 4) = v42;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v43;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
          v76 = v35;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "WifiCalc, will update computed location using associated AP %{private}s as stationary time %.1f is no less than threshold %.1f", &__p, 0x20u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          sub_10018F0D0(&v72);
          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v72;
          }

          else
          {
            v60 = v72.__r_.__value_.__r.__words[0];
          }

          v61 = *(a1 + 1520);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
          *(buf.__r_.__value_.__r.__words + 4) = v60;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v61;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v74 = v35;
          v62 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v62);
          if (v62 != &__p)
          {
            free(v62);
          }
        }

        sub_1001E268C(a1 + 888, 9);
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v36 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&buf);
          v37 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          v38 = *(a1 + 1520);
          LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
          *(__p.__r_.__value_.__r.__words + 4) = v37;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v38;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
          v76 = v35;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "WifiCalc, associated AP %{private}s has stationary time %.1f, less than threshold %.1f", &__p, 0x20u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          sub_10018F0D0(&v72);
          if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v57 = &v72;
          }

          else
          {
            v57 = v72.__r_.__value_.__r.__words[0];
          }

          v58 = *(a1 + 1520);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
          *(buf.__r_.__value_.__r.__words + 4) = v57;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v58;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v74 = v35;
          v59 = _os_log_send_and_compose_impl();
          if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v72.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v59);
          if (v59 != &__p)
          {
            free(v59);
          }
        }

        if (sub_1001E2678((a1 + 512)) && (*(a1 + 616) & 1) == 0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v48 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v49 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = v49;
            _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as server-side centroid from tile/als is unavailable", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA4A88();
          }

          sub_1001E268C(a1 + 888, 10);
          return 0;
        }

        if (sub_1001E2678((a1 + 512)) && !sub_10019A2D4((a1 + 520)))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v52 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v53 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = v53;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as server-side centroid from tile/als is invalid", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA4B8C();
          }

          sub_1001E268C(a1 + 888, 11);
          return 0;
        }

        if (sub_1001E2678((a1 + 512)) || (sub_10001A3E8(), !sub_10001CF3C()))
        {
          v44 = sub_100109D18((a1 + 472), *(a1 + 528), *(a1 + 536), *(a1 + 696), *(a1 + 704), 0.0);
          v45 = *(sub_100100690() + 8);
          if (v44 > v45)
          {
            if (qword_1025D4620 != -1)
            {
              sub_101AA3FB0();
            }

            v50 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              sub_10018F0D0(&buf);
              v51 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
              LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
              *(__p.__r_.__value_.__r.__words + 4) = v51;
              WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = v44;
              HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
              v76 = v45;
              _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as distance %.1f is greater than threshold %.0f", &__p, 0x20u);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(&__p, 0x65CuLL);
              if (qword_1025D4620 != -1)
              {
                sub_101AA3FB0();
              }

              sub_10018F0D0(&v72);
              if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v67 = &v72;
              }

              else
              {
                v67 = v72.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
              *(buf.__r_.__value_.__r.__words + 4) = v67;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
              v74 = v45;
              v68 = _os_log_send_and_compose_impl();
              if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v72.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v68);
              if (v68 != &__p)
              {
                free(v68);
              }
            }

            sub_1001E268C(a1 + 888, 13);
            return 0;
          }

          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v46 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&buf);
            v47 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
            LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
            *(__p.__r_.__value_.__r.__words + 4) = v47;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v44;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
            v76 = v45;
            _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "WifiCalc, will update computed location using associated AP %{private}s as distance %.1f is no more than threshold %.0f", &__p, 0x20u);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(&__p, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101AA3FB0();
            }

            sub_10018F0D0(&v72);
            if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = &v72;
            }

            else
            {
              v65 = v72.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
            *(buf.__r_.__value_.__r.__words + 4) = v65;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v44;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
            v74 = v45;
            v66 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v72.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v66);
            if (v66 != &__p)
            {
              free(v66);
            }
          }

          sub_1001E268C(a1 + 888, 14);
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v39 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v40 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = v40;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "WifiCalc, will update computed location using associated AP %{private}s on residential devices", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA4C90();
          }

          sub_1001E268C(a1 + 888, 12);
        }
      }

      return 1;
    }

    v6 = a1 + 888;
    v7 = 8;
    goto LABEL_16;
  }

  sub_1001E268C(a1 + 888, 4);
  if (qword_1025D4620 != -1)
  {
    sub_101AA3E94();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10018F0D0(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &__p;
    }

    else
    {
      v4 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiCalc, skip updating computed location using associated AP %{private}s as it is KnownAC", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AA4D94();
    return 0;
  }

  return result;
}

uint64_t sub_1001E21E4(uint64_t a1, double *a2, double *a3, int a4)
{
  v7 = sub_1001E4A58();
  v8 = sub_1001E9838(v7, a2, a3, a4);
  v9 = sub_1001E22E8();
  sub_1001E2240(v9, v8, a4);
  return v8;
}

void sub_1001E2240(uint64_t a1, char a2, int a3)
{
  if (qword_102666B48 != -1)
  {
    sub_1016B3C90();
  }

  v5 = *off_102635870;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4AD4;
  block[3] = &unk_1024FA088;
  v8 = a2;
  v7 = a3;
  dispatch_async(v5, block);
}

void *sub_1001E22E8()
{
  if (qword_102666B48 != -1)
  {
    sub_1016B3C90();
  }

  return off_102635870;
}

uint64_t sub_1001E2324(uint64_t a1)
{
  v1 = *(a1 + 792);
  if (fabs(v1) > 90.0)
  {
    return 1;
  }

  v2 = *(a1 + 800);
  if (fabs(v2) > 180.0 || (*(a1 + 1528) & 0xFFFFFFFD) != 1)
  {
    return 1;
  }

  v3 = *(a1 + 696);
  if (fabs(v3) > 90.0 || (v4 = *(a1 + 704), fabs(v4) > 180.0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as GPS harvest centroid is invalid", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AA462C();
      return 0;
    }

    return result;
  }

  v8 = sub_100117154(v1, v2, v3, v4);
  v9 = *(sub_100100690() + 7);
  if (v8 <= v9)
  {
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101AA3E94();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_10018F0D0(&buf);
    v11 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
    *(__p.__r_.__value_.__r.__words + 4) = v11;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v8;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2050;
    v18 = v9;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as the distance between GPS harvest centroid and wifi harvest centroid is %{public}.1f, greater than %{public}.1f", &__p, 0x20u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101AA3FB0();
    }

    sub_10018F0D0(&v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v14;
    }

    else
    {
      v12 = v14.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
    *(buf.__r_.__value_.__r.__words + 4) = v12;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v16 = v9;
    v13 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::crossCheckGpsHarvestCentroidWithWifiHarvestCentroid() const", "%s\n", v13);
    if (v13 != &__p)
    {
      free(v13);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001E2694@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v16);
  v2 = v17;
  *(&v19[0].__locale_ + *(v17 - 24)) = 8;
  *(&v17 + *(v2 - 24) + 8) = *(&v17 + *(v2 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v3 = sub_100038730(&v17, ", ", 2);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 16) = 8;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v5 = sub_100038730(&v17, ", hacc, ", 8);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 16) = 1;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v7 = sub_100038730(&v17, ", alt, ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 1;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v9 = sub_100038730(&v17, ", vacc, ", 8);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 16) = 1;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  if ((v24 & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v12 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v11 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v19[1].__locale_;
    v12 = v19[3].__locale_;
  }

  v11 = v12 - locale;
  if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a1[23] = v11;
  if (v11)
  {
    memmove(a1, locale, v11);
  }

LABEL_14:
  a1[v11] = 0;
  v17 = v14;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E2B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001E2B70(uint64_t a1)
{
  result = sub_100072814(a1 + 40);
  if (result)
  {
    result = sub_100072814(a1 + 196);
    if (result)
    {
      result = rand();
      if (!(result % dword_1026562C0))
      {
        sub_1001097CC(a1, a1 + 40, a1 + 196);
        v4 = v3;
        if (qword_1025D4620 != -1)
        {
          sub_1018818E4();
        }

        v5 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v6 = (a1 + 568);
          if (*(a1 + 591) < 0)
          {
            v6 = *v6;
          }

          v7 = (a1 + 512);
          if (*(a1 + 535) < 0)
          {
            v7 = *v7;
          }

          *buf = 136446723;
          v10 = v6;
          v11 = 2050;
          v12 = v4;
          v13 = 2081;
          v14 = v7;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiPositionCalculatorWithAssociatedApAnalytics, fixType, %{public}s, wifiFixDistanceBeforeAndAfterUseOfAssociatedAp, %{public}.1fm, LOI %{private}s", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101881E34(a1, v4);
        }

        if (byte_1026562DF >= 0)
        {
          v8 = &qword_1026562C8;
        }

        else
        {
          v8 = qword_1026562C8;
        }

        [NSString stringWithUTF8String:v8];
        return AnalyticsSendEventLazy();
      }
    }
  }

  return result;
}

void sub_1001E2D44(uint64_t a1)
{
  if (*(a1 + 509) == 1 && sub_100072814(a1 + 352) && sub_100072814(a1 + 40) && sub_100072814(a1 + 196))
  {
    v2 = *(a1 + 272);
    if (*(a1 + 116) == v2)
    {
      if (vabdd_f64(*(a1 + 428), v2) <= 1.0)
      {
        sub_100419A78(a1);
        if (!(rand() % dword_1026562C0))
        {

          sub_100419FC4(a1);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018818E4();
      }

      v3 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "different timestamps between wifi locations before and after use of associated AP!", v4, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101881F88();
      }
    }
  }
}

uint64_t sub_1001E2E78(uint64_t a1)
{
  result = rand();
  if (!(result % dword_1026562C0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1004198FC(*(a1 + 536), __p);
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v8 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "wifiFixWithAssociatedApOutcome, %{private}s", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188205C(a1);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t sub_1001E2FF8(char *a1)
{
  result = rand();
  if (!(result % dword_1026562C0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = a1 + 544;
      if (a1[567] < 0)
      {
        v4 = *v4;
      }

      *buf = 136380675;
      v6 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "associatedApCentroidFetchOutcome, %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018821A4(a1);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t sub_1001E314C(uint64_t a1)
{
  sub_1003C93BC(a1 + 1776, *(a1 + 1784));
  sub_1003C93BC(a1 + 1544, *(a1 + 1552));
  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  if (*(a1 + 1479) < 0)
  {
    operator delete(*(a1 + 1456));
  }

  if (*(a1 + 1455) < 0)
  {
    operator delete(*(a1 + 1432));
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
  }

  v2 = *(a1 + 672);
  if (v2)
  {
    *(a1 + 680) = v2;
    operator delete(v2);
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  v3 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 632);
  if (v4)
  {
    sub_100008080(v4);
  }

  return a1;
}

BOOL sub_1001E3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 84);
  if (v5 > 0x4E)
  {
    v6 = 75;
LABEL_18:
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100C45B38(v6, &__p);
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446210;
      v32 = p_p;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, not bumping integrity %{public}s as it is not Medium", buf, 0xCu);
      if (v30 < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A3426C(v6);
    }

    return 0;
  }

  if (v5 <= 0x44)
  {
    if (v5 <= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = 25;
    }

    goto LABEL_18;
  }

  if (!sub_100072814(a2))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, multi-AP wifi reference location unavailable", &__p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A33D6C();
    }

    return 0;
  }

  if (*(a2 + 96) != 4)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a2 + 96);
      LODWORD(__p) = 67240192;
      HIDWORD(__p) = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, incorrect wifi location type, %{public}d", &__p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A33E60((a2 + 96));
    }

    return 0;
  }

  if (!sub_100072814(a4))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, cell reference location unavailable", &__p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A33F5C();
    }

    return 0;
  }

  if (*(a4 + 96) != 6)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a4 + 96);
      LODWORD(__p) = 67240192;
      HIDWORD(__p) = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, incorrect cell location type, %{public}d", &__p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A34050((a4 + 96));
    }

    return 0;
  }

  v12 = sub_1001AB6A8();
  v13 = *v12;
  if (*(a2 + 156) < *v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 156);
      LODWORD(__p) = 67240448;
      HIDWORD(__p) = v15;
      v28 = 1026;
      v29 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, multi-AP wifi fix unavailable, %{public}d APs, threshold, %{public}d, fail", &__p, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A3414C((a2 + 156));
    }

    return 0;
  }

  v25 = sub_1001AB6A8();
  if (!sub_1002AB68C(a1, a2, a3, *(v25 + 2)))
  {
    return 0;
  }

  v26 = *(sub_1001AB6A8() + 1);

  return sub_1002AB68C(a1, a4, a5, v26);
}

uint64_t sub_1001E36C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 4096;
  if (sub_100189470((a1 + 6096)))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + 2204);
  }

  v6 = *(a1 + 6472);
  v7 = *(v4 + 2380);

  return sub_1001E5214(a2, v7, v5 & 1, v6);
}

void sub_1001E3748(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void sub_1001E37B8(int *a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190A3AC();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "WifiFlow, reset, last, %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A3C0();
  }

  v4 = *a1;
  *a1 = 0;
  a1[1] = v4;
  a1[12] = 0;
  *(a1 + 5) = 0xBFF0000000000000;
  if (*(a1 + 39) < 0)
  {
    *(a1 + 3) = 7;
    v5 = *(a1 + 2);
  }

  else
  {
    v5 = (a1 + 4);
    *(a1 + 39) = 7;
  }

  strcpy(v5, "default");
}

void sub_1001E38E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 1436;
  v5 = *(a1 + 3508);
  v6 = *(a1 + 6440);
  if (!sub_1001883B8((a1 + 6096)) && !sub_1001E3C20((a1 + 6096)))
  {
LABEL_13:
    v16 = 0;
    *a2 = 0;
    goto LABEL_14;
  }

  v7 = v6 - v5;
  if (*v4 >= 0.0 || (*(a1 + 6433) & 1) != 0)
  {
    goto LABEL_5;
  }

  v8 = 0;
  v17 = *(a1 + 6428);
  if (v17 != 1 && v17 != 6)
  {
    if (*(a1 + 1136) < 5uLL)
    {
LABEL_5:
      v8 = 0;
      goto LABEL_6;
    }

    v18 = *(v4 + 2016);
    v19 = v18 < 600.0;
    if (v7 >= 12.0)
    {
      v19 = 0;
    }

    v8 = v18 >= 0.0 && v19;
  }

LABEL_6:
  if (qword_1025D4630 != -1)
  {
    sub_1019C7870();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 6433);
    v11 = *v4 < 0.0;
    v12 = *(a1 + 6428);
    v13 = *(a1 + 1136);
    v14 = *(v4 + 2016);
    *buf = 67241728;
    v22 = v8;
    v23 = 1026;
    v24 = v11;
    v25 = 1026;
    v26 = v10;
    v27 = 1026;
    v28 = v12;
    v29 = 2050;
    v30 = v13;
    v31 = 2050;
    v32 = v14;
    v33 = 1026;
    v34 = v7;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiFlow, cpitile, %{public}d, didfix, %{public}d, battsaver, %{public}d, sigenv, %{public}d, aps, %{public}ld, hacc, %{public}0.1f, scanAge, %{public}d", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_1019C7884();
    }

    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::optional<Decisions::WifiTileDownloadRequest> CL::Wifi1::Policies::TileRequest::HandleEvent::defaultDecisionLogic(const Input &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v16 = 1;
  *a2 = 1;
  *(a2 + 2) = 1;
  *(a2 + 8) = 0xBFF0000000000000;
  *(a2 + 16) = 3;
  *(a2 + 24) = Current;
  *(a2 + 32) = 1;
  *(a2 + 40) = *(v4 + 2000);
LABEL_14:
  *(a2 + 56) = v16;
}

uint64_t sub_1001E40AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 808);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 80);
  v8 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  v10 = *(a2 + 112);
  v9 = *(a2 + 128);
  v11 = *(a2 + 96);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v10;
  *(a1 + 128) = v9;
  *(a1 + 96) = v11;
  memcpy((a1 + 160), (a2 + 160), 0x201uLL);
  v12 = (a2 + 680);
  v13 = *(a2 + 680);
  if (v4 == 1)
  {
    v14 = *(a2 + 688);
    *v12 = 0;
    *(a2 + 688) = 0;
    *(a1 + 680) = v13;
    v15 = *(a1 + 688);
    *(a1 + 688) = v14;
    if (v15)
    {
      sub_100008080(v15);
    }

    v16 = *(a2 + 696);
    v17 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v17;
    *(a1 + 696) = v16;
    v18 = *(a2 + 744);
    v19 = *(a2 + 760);
    v20 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v19;
    *(a1 + 776) = v20;
    *(a1 + 744) = v18;
  }

  else
  {
    *(a1 + 680) = v13;
    *(a1 + 688) = *(a2 + 688);
    *v12 = 0;
    *(a2 + 688) = 0;
    v21 = *(a2 + 696);
    v22 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v22;
    *(a1 + 696) = v21;
    v23 = *(a2 + 744);
    v24 = *(a2 + 760);
    v25 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v24;
    *(a1 + 776) = v25;
    *(a1 + 744) = v23;
    *(a1 + 808) = 1;
  }

  return a1;
}

uint64_t sub_1001E41C8(_OWORD *a1, _OWORD *a2)
{
  if (!sub_100072814(a2))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101BCF2A8();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "@WifiPositionWiggleMetrics, invalid location LatLon", v15, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101BCF2BC();
    return 0;
  }

  if (*(a2 + 24) == 4)
  {
    sub_1001EACF0(a1, a2);
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[5];
    a1[4] = a2[4];
    a1[5] = v7;
    a1[2] = v5;
    a1[3] = v6;
    v8 = a2[6];
    v9 = a2[7];
    v10 = a2[8];
    *(a1 + 140) = *(a2 + 140);
    a1[7] = v9;
    a1[8] = v10;
    a1[6] = v8;
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101BCF2A8();
  }

  v13 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v14 = *(a2 + 24);
    v15[0] = 67240192;
    v15[1] = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "@WifiPositionWiggleMetrics, invalid location type %{public}d", v15, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101BCF3C0(a2 + 6);
    return 0;
  }

  return result;
}

void sub_1001E4380(int a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001E8968(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001E455C(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v6 = v3[5];
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v3[1];
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
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    result += v7;
    v3 = v9;
  }

  while (v9 != v2);
  return result;
}

void sub_1001E45DC(uint64_t *a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = sub_1001E9E38(a1, a2);
  if (v9)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v10 = *v9;
    if (*v9)
    {
      v11 = (a5 + 1.0);
      v12 = a4;
      __asm { FMOV            V0.2D, #-1.0 }

      v51 = _Q0;
      do
      {
        v18 = v10[1];
        if (v18)
        {
          if ((*(*v18 + 104))(v18))
          {
            v19 = v10[1];
            v52 = off_1024DE5F8;
            v20 = *(v19 + 24);
            v21 = *(v19 + 40);
            v22 = *(v19 + 56);
            v53 = *(v19 + 8);
            v56 = v22;
            v55 = v21;
            v54 = v20;
            v23 = *(v19 + 88);
            v24 = *(v19 + 104);
            v25 = *(v19 + 120);
            v57 = *(v19 + 72);
            v60 = v25;
            v59 = v24;
            v58 = v23;
            if (*&v53 <= v11)
            {
              if (*&v53 < v12)
              {
                return;
              }

              *&buf[12] = 0;
              *&buf[4] = 0;
              *&buf[20] = xmmword_101C75BF0;
              *&buf[36] = v51;
              *&buf[52] = v51;
              *&buf[68] = v51;
              *buf = 0xFFFF;
              *&buf[84] = 0;
              *&buf[88] = 0xBFF0000000000000;
              v62 = 0uLL;
              LODWORD(v63) = 0;
              *(&v63 + 4) = 0xBFF0000000000000;
              HIDWORD(v63) = 0x7FFFFFFF;
              memset(v64, 0, 25);
              sub_10002790C(&v52, buf);
              v26 = a3[1];
              v27 = a3[2];
              if (v26 >= v27)
              {
                v36 = *a3;
                v37 = v26 - *a3;
                v38 = 0x6F96F96F96F96F97 * (v37 >> 2) + 1;
                if (v38 > 0x1A41A41A41A41A4)
                {
                  sub_10028C64C();
                }

                v39 = 0x6F96F96F96F96F97 * ((v27 - v36) >> 2);
                if (2 * v39 > v38)
                {
                  v38 = 2 * v39;
                }

                if (v39 >= 0xD20D20D20D20D2)
                {
                  v38 = 0x1A41A41A41A41A4;
                }

                if (v38)
                {
                  sub_100238948(a3, v38);
                }

                v40 = (4 * (v37 >> 2));
                v41 = *&buf[16];
                *v40 = *buf;
                v40[1] = v41;
                v42 = *&buf[32];
                v43 = *&buf[48];
                v44 = *&buf[80];
                v40[4] = *&buf[64];
                v40[5] = v44;
                v40[2] = v42;
                v40[3] = v43;
                v45 = v62;
                v46 = v63;
                v47 = v64[0];
                *(v40 + 140) = *(v64 + 12);
                v40[7] = v46;
                v40[8] = v47;
                v40[6] = v45;
                v35 = v40 + 156;
                v48 = v40 - v37;
                memcpy(v40 - v37, v36, v37);
                v49 = *a3;
                *a3 = v48;
                a3[1] = v35;
                a3[2] = 0;
                if (v49)
                {
                  operator delete(v49);
                }
              }

              else
              {
                v28 = *&buf[16];
                *v26 = *buf;
                v26[1] = v28;
                v29 = *&buf[32];
                v30 = *&buf[48];
                v31 = *&buf[80];
                v26[4] = *&buf[64];
                v26[5] = v31;
                v26[2] = v29;
                v26[3] = v30;
                v32 = v62;
                v33 = v63;
                v34 = v64[0];
                *(v26 + 140) = *(v64 + 12);
                v26[7] = v33;
                v26[8] = v34;
                v26[6] = v32;
                v35 = v26 + 156;
              }

              a3[1] = v35;
            }
          }
        }

        v10 = *v10;
      }

      while (v10);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A836F8();
    }

    v50 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "LCInputBuffer,getLocationsForInterval,buffer for location type %d does not exist", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A83834();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1001E49C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664848))
  {
    unk_102664840 = sub_101226D48();
    __cxa_guard_release(&qword_102664848);
  }

  v2 = &unk_102664840;
  if (!byte_102664841)
  {
    v2 = (a1 + 140);
  }

  return *v2;
}

uint64_t sub_1001E4A58()
{
  if (qword_102666B00 != -1)
  {
    sub_10168DA9C();
  }

  return qword_102635860;
}

_DWORD *sub_1001E4AD4(uint64_t a1)
{
  if (qword_102666B48 != -1)
  {
    sub_1016B3C90();
  }

  v2 = off_102635870;
  v3 = *(a1 + 36);
  v4 = *(a1 + 32);

  return sub_1001E4B30(v2, v3, v4);
}

_DWORD *sub_1001E4B30(_DWORD *result, int a2, int a3)
{
  if (!a2)
  {
    return result;
  }

  if (a3 > 5)
  {
    if ((a3 - 6) < 3)
    {
      ++result[7];
      return result;
    }

    if (a3 != 11)
    {
      if (a3 == 9)
      {
        goto LABEL_12;
      }

      return result;
    }

LABEL_13:
    ++result[6];
    return result;
  }

  switch(a3)
  {
    case 1:
LABEL_12:
      ++result[5];
      return result;
    case 3:
      ++result[4];
      return result;
    case 4:
      goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E4BCC(char *a1)
{
  sub_1001E4C24();
  sub_1001E9CD4(a1);
  sub_1001E2B70(a1);
  sub_1001E2D44(a1);
  sub_1001E2E78(a1);

  return sub_1001E2FF8(a1);
}

void sub_1001E4C24()
{
  if (!(rand() % dword_1026562C0))
  {
    std::operator+<char>();
    if (byte_1026562DF >= 0)
    {
      v0 = &qword_1026562C8;
    }

    else
    {
      v0 = qword_1026562C8;
    }

    [NSString stringWithUTF8String:v0];
    AnalyticsSendEventLazy();
    if (v2 < 0)
    {
      operator delete(v1);
    }
  }
}

void sub_1001E4D00(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E4D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 84);
  if (v10 <= 0x40)
  {
    v11 = 0;
  }

  else
  {
    v11 = 25;
  }

  if (v10 <= 0x44)
  {
    v12 = v11;
  }

  else
  {
    v12 = 50;
  }

  if (v10 <= 0x4E)
  {
    v13 = v12;
  }

  else
  {
    v13 = 75;
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_101A33790();
  }

  v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100C45B38(v13, v48);
    v34 = v13;
    if (SBYTE3(v52) >= 0)
    {
      v17 = v48;
    }

    else
    {
      v17 = *v48;
    }

    v18 = *(a1 + 84);
    sub_100B1AA60(v46);
    v36 = a3;
    v38 = a5;
    if (v47 >= 0)
    {
      v19 = v46;
    }

    else
    {
      v19 = v46[0];
    }

    sub_100B1AA60(v44);
    v20 = v45;
    v21 = v44[0];
    sub_100B1AA60(__p);
    v22 = v44;
    if (v20 < 0)
    {
      v22 = v21;
    }

    if (v43 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    *buf = 136447235;
    v58 = v17;
    v59 = 1026;
    v60 = v18;
    v61 = 2085;
    v62 = v19;
    v63 = 2085;
    v64 = v22;
    v65 = 2085;
    v66 = v23;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, %{public}s, confidence, %{public}d, location, %{sensitive}s, reference multi-AP wifi, %{sensitive}s, reference cell, %{sensitive}s", buf, 0x30u);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    a3 = v36;
    a5 = v38;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    v13 = v34;
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (SBYTE3(v52) < 0)
    {
      operator delete(*v48);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A34390(buf);
    sub_100C45B38(v13, v46);
    v35 = a2;
    if (v47 >= 0)
    {
      v26 = v46;
    }

    else
    {
      v26 = v46[0];
    }

    v27 = *(a1 + 84);
    sub_100B1AA60(v44);
    v37 = a3;
    v39 = a5;
    if (v45 >= 0)
    {
      v28 = v44;
    }

    else
    {
      v28 = v44[0];
    }

    sub_100B1AA60(__p);
    v29 = v43;
    v30 = __p[0];
    sub_100B1AA60(v40);
    v31 = __p;
    if (v29 < 0)
    {
      v31 = v30;
    }

    if (v41 >= 0)
    {
      v32 = v40;
    }

    else
    {
      v32 = v40[0];
    }

    *v48 = 136447235;
    *&v48[4] = v26;
    v49 = 1026;
    v50 = v27;
    v51 = 2085;
    v52 = v28;
    v53 = 2085;
    v54 = v31;
    v55 = 2085;
    v56 = v32;
    v33 = _os_log_send_and_compose_impl();
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    a3 = v37;
    a5 = v39;
    a2 = v35;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    v15 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static CLLocationIntegrity CLWifiLocationIntegrityCalculator::calculateLocationIntegrity(const CLDaemonLocation &, const CL::Wifi1::Types::ComputedLocation &, const CLDaemonLocationPrivate &, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  if (sub_1001E3224(a1, a2, a3, a4, a5))
  {
    if (p_info[196] != -1)
    {
      sub_101A33C14();
    }

    v24 = v15[197];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, bumping wifi location integrity from Medium to High", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A343D4();
    }

    return 75;
  }

  return v13;
}

void sub_1001E517C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E5214(uint64_t a1, int a2, int a3, float a4)
{
  v4 = *(a1 + 20);
  if (v4 < 0.0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A1AC();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is insufficient as it is invalid", &v21, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10196AEEC();
      return 0;
    }

    return result;
  }

  if (a2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A1AC();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is sufficient as it is on watch", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196AE08();
    }

    return 1;
  }

  v8 = a4;
  if (v4 <= a4)
  {
    v11 = (a1 + 156);
    v10 = *(a1 + 156);
    if (*(a1 + 180))
    {
      if (v10 == 1)
      {
        goto LABEL_31;
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A1AC();
      }

      v13 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        v14 = *v11;
        v21 = 67174657;
        LODWORD(v22[0]) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "expect 1 AP for wifi fix with associated AP, got %{private}d", &v21, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10196A760(v11);
        if (a3)
        {
LABEL_32:
          if (qword_1025D4630 != -1)
          {
            sub_10196A140();
          }

          v15 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, mark wifi fix with associated AP as insufficient as it is in emergency mode", &v21, 2u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_10196AA20();
            return 0;
          }

          return result;
        }
      }

      else
      {
LABEL_31:
        if (a3)
        {
          goto LABEL_32;
        }
      }

      if (sub_100100690()[116] != 1)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v20 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, mark wifi fix with associated AP as insufficient so we do not skip scan by settings", &v21, 2u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_10196A858();
          return 0;
        }

        return result;
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v19 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, mark wifi fix with associated AP as sufficient so we can skip scan by settings", &v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196A93C();
      }
    }

    else
    {
      if (v10 <= 3)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A1AC();
        }

        v16 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v11;
          v21 = 67174913;
          LODWORD(v22[0]) = v17;
          WORD2(v22[0]) = 1025;
          *(v22 + 6) = 4;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is insufficient as it used %{private}d APs, less than threshold %{private}d", &v21, 0xEu);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_10196ABE8(v11);
          return 0;
        }

        return result;
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A1AC();
      }

      v18 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is sufficient", &v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196AB04();
      }
    }

    return 1;
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A1AC();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134283521;
    *v22 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is insufficient as it has higher hacc than desired %{private}.1lf", &v21, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10196ACF8(v8);
    return 0;
  }

  return result;
}

void sub_1001E56E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001E573C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001E573C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

double sub_1001E578C(uint64_t a1, int a2, double result)
{
  if (a2 >= 1)
  {
    v3 = *(a1 + 64);
    if (v3 != -1.0)
    {
      if (*(a1 + 80) == -1.0)
      {
        *(a1 + 80) = result - v3;
        *(a1 + 104) = a2;
      }

      if (a2 == 2 && *(a1 + 88) == -1.0)
      {
        result = result - v3;
        *(a1 + 88) = result;
        *(a1 + 104) = 2;
      }
    }
  }

  return result;
}

void sub_1001E6C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  sub_1005F3518(&a44);
  sub_1005F3518(&a62);
  sub_1007BE994(v62);
  _Unwind_Resume(a1);
}

void sub_1001E6E08(__int128 *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, _DWORD *a7@<D0>)
{
  if (qword_1025D4630 != -1)
  {
    sub_101B0A7A0();
  }

  v14 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v15 = *a1;
    *buf = 67240192;
    *v81 = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "@EmerCheck, top, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A7B4();
  }

  v16 = *a1;
  v17 = sub_100189470(a2);
  if (v16 <= 1 || !v17)
  {
    v22 = a1[5];
    *(a6 + 64) = a1[4];
    *(a6 + 80) = v22;
    *(a6 + 96) = a1[6];
    v23 = a1[1];
    *a6 = *a1;
    *(a6 + 16) = v23;
    v24 = a1[3];
    *(a6 + 32) = a1[2];
    *(a6 + 48) = v24;
    *(a6 + 112) = *a2;
    *(a6 + 120) = *(a2 + 8);
    if (*(a2 + 39) < 0)
    {
      sub_100007244((a6 + 128), a2[2], a2[3]);
    }

    else
    {
      *(a6 + 128) = *(a2 + 1);
      *(a6 + 144) = a2[4];
    }

    *(a6 + 168) = *(a2 + 7);
    *(a6 + 184) = *(a2 + 9);
    *(a6 + 200) = *(a2 + 11);
    *(a6 + 212) = *(a2 + 100);
    *(a6 + 152) = *(a2 + 5);
    if (*(a2 + 143) < 0)
    {
      sub_100007244((a6 + 232), a2[15], a2[16]);
    }

    else
    {
      *(a6 + 232) = *(a2 + 15);
      *(a6 + 248) = a2[17];
    }

    *(a6 + 256) = 0;
    return;
  }

  v19 = a1[5];
  v74 = a1[4];
  v75 = v19;
  v76 = a1[6];
  v20 = a1[1];
  v70 = *a1;
  v71 = v20;
  v21 = a1[3];
  v72 = a1[2];
  v73 = v21;
  v60 = *a2;
  v61 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244(&v62, a2[2], a2[3]);
  }

  else
  {
    v62 = *(a2 + 1);
    v63 = a2[4];
  }

  v65 = *(a2 + 7);
  v66 = *(a2 + 9);
  v67[0] = *(a2 + 11);
  *(v67 + 12) = *(a2 + 100);
  v64 = *(a2 + 5);
  if (*(a2 + 143) < 0)
  {
    sub_100007244(&__p, a2[15], a2[16]);
  }

  else
  {
    __p = *(a2 + 15);
    v69 = a2[17];
  }

  v59 = a3;
  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v25 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v26 = *a1;
    *buf = 67240192;
    *v81 = v26;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "@EmerCheck, current, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    v51 = *a1;
    LODWORD(v79[0]) = 67240192;
    HIDWORD(v79[0]) = v51;
    v52 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v52);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  v79[0] = &v70;
  v79[1] = &v59;
  v79[2] = a7;
  v27 = *a1;
  if (*a1 <= 4)
  {
    if (v27 != 2)
    {
      if (v27 == 4)
      {
        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v30 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "@EmerFlow, ScanRequest5GHzWithAlsReply, waiting for 5GHz scan result", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          goto LABEL_36;
        }

        goto LABEL_83;
      }

      goto LABEL_68;
    }

    if (a5)
    {
      if (*(a4 + 84) < 0x45u || (*sub_101226914() & 1) != 0)
      {
        LODWORD(v70) = 3;
        if (*&v73 < *(&v70 + 1))
        {
          *&v73 = a7;
          if (qword_1025D4630 != -1)
          {
            sub_101B0A5E0();
          }

          v33 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            *v81 = *&v73 - *(&v70 + 1);
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "@EmerTick, scanrequest5ghzwithals, %{public}.1f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B0A608(buf);
            v77 = 134349056;
            *v78 = *&v73 - *(&v70 + 1);
            v58 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v58);
            if (v58 != buf)
            {
              free(v58);
            }
          }
        }

        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v34 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240448;
          *v81 = v59;
          *&v81[4] = 2050;
          *&v81[6] = *&v73 - *(&v70 + 1);
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "@EmerFlow, ScanRequest5GHzWithPendingAls, queryType, %{public}d, tte, %{public}.1f", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_83;
        }

        sub_101B0A608(buf);
        v77 = 67240448;
        *v78 = v59;
        *&v78[4] = 2050;
        *&v78[6] = *&v73 - *(&v70 + 1);
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v29);
LABEL_74:
        if (v29 != buf)
        {
          free(v29);
        }

        goto LABEL_83;
      }

      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v48 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v49 = *(a4 + 84);
        *buf = 67240192;
        *v81 = v49;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "@EmerCheck, confidence, %{public}d, above threshold", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_82:
        sub_101052430(v79);
        goto LABEL_83;
      }

      sub_101B0A608(buf);
      v50 = *(a4 + 84);
      v77 = 67240192;
      *v78 = v50;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v32);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v36 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240192;
        *v81 = 0;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "@EmerCheck, support 5GHz, %{public}d", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_82;
      }

      sub_101B0A608(buf);
      v77 = 67240192;
      *v78 = 0;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v32);
    }

LABEL_148:
    if (v32 != buf)
    {
      free(v32);
    }

    goto LABEL_82;
  }

  if (v27 == 5)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v31 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "@EmerWarn, ScanReply5GHzWithPendingAls, abort waiting for the preliminary ALS response", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_82;
    }

    sub_101B0A608(buf);
    LOWORD(v77) = 0;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v32);
    goto LABEL_148;
  }

  if (v27 == 6)
  {
    goto LABEL_82;
  }

  if (v27 != 8)
  {
LABEL_68:
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v35 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *v81 = v70;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "@EmerWarn, unexpected state, processScanResult, %{public}d, #CloneMe", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_83;
    }

    sub_101B0A608(buf);
    v77 = 67240192;
    *v78 = v70;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v29);
    goto LABEL_74;
  }

  LODWORD(v70) = 9;
  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v28 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@EmerFlow, Done, alsreply", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_36:
    sub_101B0A608(buf);
    LOWORD(v77) = 0;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v29);
    goto LABEL_74;
  }

LABEL_83:
  if (*(a4 + 20) > 0.0 && *(&v75 + 1) < *(&v70 + 1))
  {
    *(&v75 + 1) = a7;
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v37 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *v81 = *(&v75 + 1) - *(&v70 + 1);
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "@EmerTick, anyfix, %{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A608(buf);
      v77 = 134349056;
      *v78 = *(&v75 + 1) - *(&v70 + 1);
      v57 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v38 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(a4 + 156);
    *buf = 67240448;
    *v81 = v70;
    *&v81[4] = 1026;
    *&v81[6] = v39;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "@EmerCheck, switched, %{public}d, aps, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    v53 = *(a4 + 156);
    v77 = 67240448;
    *v78 = v70;
    *&v78[4] = 1026;
    *&v78[6] = v53;
    v54 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v54);
    if (v54 != buf)
    {
      free(v54);
    }
  }

  if (*(a4 + 156) >= 9u)
  {
    if (*&v76 < *(&v70 + 1))
    {
      *&v76 = a7;
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v40 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *v81 = *&v76 - *(&v70 + 1);
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "@EmerTick, sufficientfix, %{public}.1f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        v77 = 134349056;
        *v78 = *&v76 - *(&v70 + 1);
        v41 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }
    }

    goto LABEL_106;
  }

  if (v70 == 9)
  {
LABEL_106:
    sub_1001E37B8(&v60);
    if (v70 != 9)
    {
      LODWORD(v70) = 9;
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v42 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "@EmerFlow, Done, conditions", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        LOWORD(v77) = 0;
        v56 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v56);
        if (v56 != buf)
        {
          free(v56);
        }
      }
    }

    v59 = 0;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v43 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *v81 = v70;
    _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "@EmerCheck, returned, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    v77 = 67240192;
    *v78 = v70;
    v55 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v55);
    if (v55 != buf)
    {
      free(v55);
    }
  }

  v44 = v75;
  *(a6 + 64) = v74;
  *(a6 + 80) = v44;
  *(a6 + 96) = v76;
  v45 = v71;
  *a6 = v70;
  *(a6 + 16) = v45;
  v46 = v73;
  *(a6 + 32) = v72;
  *(a6 + 48) = v46;
  *(a6 + 112) = v60;
  *(a6 + 120) = v61;
  if (SHIBYTE(v63) < 0)
  {
    sub_100007244((a6 + 128), v62, *(&v62 + 1));
  }

  else
  {
    *(a6 + 128) = v62;
    *(a6 + 144) = v63;
  }

  *(a6 + 168) = v65;
  *(a6 + 184) = v66;
  *(a6 + 200) = v67[0];
  *(a6 + 212) = *(v67 + 12);
  *(a6 + 152) = v64;
  if (SHIBYTE(v69) < 0)
  {
    sub_100007244((a6 + 232), __p, *(&__p + 1));
    v47 = SHIBYTE(v69);
    *(a6 + 256) = v59;
    if (v47 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 232) = __p;
    *(a6 + 248) = v69;
    *(a6 + 256) = v59;
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }
}

void sub_1001E8164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005F3518(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001E8204(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[2];
  v4[1] = a2[1];
  v4[2] = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(v4 + 89) = *(a2 + 89);
  v4[4] = v8;
  v4[5] = v9;
  v4[3] = v7;
  v10 = *(a1 + 8);
  v11 = *(a2 + 14);
  *(v10 + 8) = *(a2 + 120);
  *v10 = v11;
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  v12 = a2[8];
  *(v10 + 32) = *(a2 + 18);
  *(v10 + 16) = v12;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v13 = *(a2 + 212);
  v14 = *(a2 + 200);
  v15 = *(a2 + 184);
  *(v10 + 56) = *(a2 + 168);
  *(v10 + 72) = v15;
  *(v10 + 88) = v14;
  *(v10 + 100) = v13;
  *(v10 + 40) = *(a2 + 152);
  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  result = *(a2 + 232);
  *(v10 + 136) = *(a2 + 31);
  *(v10 + 120) = result;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  **(a1 + 16) = *(a2 + 64);
  return result;
}

uint64_t sub_1001E8388(uint64_t a1)
{
  LOBYTE(v1) = *(a1 + 8);
  v2 = *a1;
  if ((v1 & 1) == 0)
  {
    if (v2 > 2)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      LOBYTE(v1) = 1;
      if (*(a1 + 6) == 1)
      {
        v1 = (1u >> (v2 & 7)) | *(a1 + 7) ^ 1;
      }
    }

    *(a1 + 8) = v1 & 1;
  }

  if (v2 == 2)
  {
    v10 = 0xC0000000000;
    if (v1)
    {
      v10 = 0x90000000000;
    }

    v7 = (v1 & 1) == 0;
    v3 = 0x800000000;
  }

  else
  {
    v3 = 0x800000000;
    v4 = 0x90000000000;
    if (v1)
    {
      v5 = 0x90000000000;
    }

    else
    {
      v5 = 0xC0000000000;
    }

    if (v1)
    {
      v6 = 0;
    }

    else
    {
      v3 = 0x900000000;
      v6 = 2;
    }

    if ((v1 & 1) == 0)
    {
      v4 = 0xC0000000000;
    }

    v7 = (v1 & 1) == 0;
    v8 = 0x800000000;
    if (v2)
    {
      v4 = 0;
      v8 = 0;
      v7 = 0;
    }

    v9 = v2 == 1;
    if (v2 == 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    if (v9)
    {
      v7 = v6;
    }

    else
    {
      v3 = v8;
    }
  }

  return v3 | v10 | v7;
}

BOOL sub_1001E8460(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1001E84CC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1001E84CC(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, valuePtr);
      v7 = v10 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB2FC();
    }
  }

  return v5 != 0;
}

void sub_1001E8654(uint64_t a1, double a2, double a3)
{
  v4 = (a1 + 136);
  [*(a1 + 136) setNextFireDelay:a3];
  if (a3 == 1.79769313e308)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@WifiFlow, nexttimer, off", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE5AC();
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [*v4 nextFireTime];
      v9 = 134349568;
      v10 = a3;
      v11 = 2050;
      v12 = Current;
      v13 = 2050;
      v14 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiFlow, nexttimer, %{public}.1f, now, %{public}.1f, next fire time, %{public}.1f", &v9, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE688(v4, a3);
    }
  }
}

void sub_1001E87E0(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = "";
  }

  else
  {
    v1 = off_10246B400[a1];
  }

  if (qword_1025D4630 != -1)
  {
    sub_10190A634();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446210;
    v4 = v1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@WifiFlow, outcome, %{public}s", &v3, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A648(v1);
  }
}

void sub_1001E88F8(void *a1@<X8>)
{
  if ((atomic_load_explicit(qword_1026657D0, memory_order_acquire) & 1) == 0)
  {
    sub_101BCF224();
  }

  if (qword_1026657C0 != -1)
  {
    sub_101BCF294();
  }

  v2 = *(&xmmword_1026657E0 + 1);
  *a1 = xmmword_1026657E0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1001E8968(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v12 = a2;
  v7 = sub_10000B1F8();
  sub_10000B230(v13);
  sub_10000B324(v7, v13[0].i8);
  v14 = 13;
  v13[0].i32[0] = 13;
  v13[0].i32[1] = sub_10000AD98(&v14);
  v8 = sub_10000AE98();
  v14 = 4;
  sub_10001E898(v8, &v14, v13, (a1 + 5220), &v12, a3, a4);
  sub_10010CA08(a1, *(a1 + 328), v9, a3, a4);
  v10 = *(a1 + 768);
  if (v10 && *a3 != 22)
  {
    sub_100219660(v10, a4);
  }

  v11 = *(a1 + 784);
  if (v11)
  {
    sub_1002198B0(v11, a4);
  }

  sub_1002192F8(a1 + 800, a3, a4);
}

void sub_1001E8A54(uint64_t a1, double a2)
{
  if (*(a1 + 249) == 1)
  {
    v4 = sub_1001E9DA0(a1);
    v5 = 88;
    if (v4)
    {
      v5 = 96;
    }
  }

  else
  {
    v5 = 88;
  }

  v6 = (a1 + 944);
  if (*(a1 + 944) <= a2 - *(a1 + v5))
  {
    if (sub_1001E8DA4(a1, a2))
    {
      v9 = *(a1 + 640);
      if (*(a1 + 944) <= v9)
      {
        if (v9 + 2.0 >= a2 && *(a1 + 672) <= v9)
        {
          if (qword_1025D4600 != -1)
          {
            sub_1003121A4();
          }

          v16 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v17 = 67109376;
            *v18 = 0;
            *&v18[4] = 1024;
            *&v18[6] = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, hasAllNecessaryIOData, %d, noMoreIODataIsExpected, %d, not updating filter.", &v17, 0xEu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019DC7DC();
          }
        }

        else
        {

          sub_10023A384(a1, v9);
        }
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1003121A4();
        }

        v10 = (a1 + 640);
        v11 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v12 = *v6;
          v13 = *v10;
          v17 = 134218240;
          *v18 = v12;
          *&v18[8] = 2048;
          v19 = v13;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, fMachContinuousTimeOfFilterState, %.3f, exceeds end location fMachContinuousTimeAtEnd_s, %.3f, not updating filter.", &v17, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019DC8D8();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v14 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, extractLocationsForMeasurementGeneration, unable to extract locations, not updating filter.", &v17, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019DC700();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v8 = *v6;
      v17 = 134218240;
      *v18 = v8;
      *&v18[8] = 2048;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, fMachContinuousTimeOfFilterState, %.3f, too recent, w.r.t., lastLocationTime, %.3f, not updating filter", &v17, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DC9DC(v6, a2);
    }
  }
}

uint64_t sub_1001E8DA4(uint64_t a1, double a2)
{
  v4 = sub_10000B1F8();
  sub_10000AED4(v4, v58);
  v57 = 0.0;
  if (sub_100125300(v58, &v57))
  {
    __src[6] = xmmword_101CE6D38;
    __src[7] = xmmword_101CE6D48;
    memset(&__src[8], 0, 28);
    __src[2] = xmmword_101CE6CF8;
    __src[3] = xmmword_101CE6D08;
    __src[4] = xmmword_101CE6D18;
    __src[5] = xmmword_101CE6D28;
    __src[0] = xmmword_101CE6CD8;
    __src[1] = xmmword_101CE6CE8;
    *(&__src[16] + 12) = xmmword_101CE6D48;
    *(&__src[17] + 12) = xmmword_101CE6D58;
    *(&__src[18] + 8) = *(&xmmword_101CE6D58 + 12);
    *(&__src[15] + 12) = xmmword_101CE6D38;
    *(&__src[11] + 12) = xmmword_101CE6CF8;
    *(&__src[12] + 12) = xmmword_101CE6D08;
    *(&__src[13] + 12) = xmmword_101CE6D18;
    *(&__src[14] + 12) = xmmword_101CE6D28;
    *(&__src[9] + 12) = xmmword_101CE6CD8;
    v5 = (a1 + 396);
    v6 = (a1 + 320);
    *(&__src[10] + 12) = xmmword_101CE6CE8;
    memcpy((a1 + 320), __src, 0x138uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 632) = _Q0;
    *(a1 + 648) = 0u;
    if (*(a1 + 249) == 1 && sub_1001E9DA0(a1))
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = 50.0;
    }

    v17 = 300.0;
    if (*(a1 + 249) == 1 && sub_1001E9DA0(a1))
    {
      v17 = *(a1 + 16);
    }

    v18 = *(a1 + 176);
    if (v18)
    {
      if (sub_1001E455C(v18) > 1)
      {
        v21 = 30.0;
        v22 = 3.0;
        if (*(a1 + 249) == 1)
        {
          v22 = (sub_1001E9DA0(a1) & 1) != 0 ? -1.0 : 3.0;
          if ((*(a1 + 249) & 1) != 0 && sub_1001E9DA0(a1))
          {
            v21 = *(a1 + 24);
          }
        }

        v23 = v57 + a2;
        v24 = v57 + a2 - v21;
        v54 = xmmword_101CE6D38;
        v55 = xmmword_101CE6D48;
        memset(v56, 0, 28);
        v51 = xmmword_101CE6CF8;
        v52 = xmmword_101CE6D08;
        *v53 = xmmword_101CE6D18;
        *&v53[16] = xmmword_101CE6D28;
        v49 = xmmword_101CE6CD8;
        v50 = xmmword_101CE6CE8;
        v25 = a2 - *(a1 + 960);
        if (*(a1 + 249) == 1 && (sub_1001E9DA0(a1) & 1) != 0)
        {
          v26 = 0;
        }

        else
        {
          v27 = *(a1 + 1000) != 1 || *(a1 + 1024) != 1 || *(a1 + 1040) > a2 || *(a1 + 1048) < a2;
          v26 = v25 > 180.0 || v27;
        }

        if (sub_1001EB478(a1, v26, &v49, v24, v23) && *&v53[12] <= v23 - v22)
        {
          v28 = v55;
          *(a1 + 572) = v54;
          *(a1 + 588) = v28;
          *(a1 + 604) = v56[0];
          *(a1 + 616) = *(v56 + 12);
          v29 = v52;
          *(a1 + 508) = v51;
          *(a1 + 524) = v29;
          v30 = *&v53[16];
          *(a1 + 540) = *v53;
          *(a1 + 556) = v30;
          v31 = v50;
          *(a1 + 476) = v49;
          *(a1 + 492) = v31;
          *&v31 = *(a1 + 552);
          *(a1 + 640) = *&v31 - v57;
          v32 = *&v31 - v12;
          if (sub_1001EB478(a1, v26, &v49, *&v31 - v17, *&v31 - v12) && *&v53[12] <= v32 - v22)
          {
            v33 = *&v53[16];
            *(a1 + 384) = *v53;
            *(a1 + 400) = v33;
            *(a1 + 460) = *(v56 + 12);
            v34 = v56[0];
            *(a1 + 432) = v55;
            *(a1 + 448) = v34;
            *(a1 + 416) = v54;
            v35 = v52;
            *(a1 + 352) = v51;
            *(a1 + 368) = v35;
            v36 = v50;
            *v6 = v49;
            *(a1 + 336) = v36;
            *(a1 + 632) = *v5 - v57;
          }
        }

        if (sub_100072814(a1 + 320))
        {
          if (qword_1025D4600 != -1)
          {
            sub_1019DC4B0();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v38 = *(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= a2 && *(a1 + 1048) >= a2;
            v39 = *(a1 + 416);
            v40 = *v5;
            v41 = *(a1 + 572);
            v42 = *(a1 + 552);
            LODWORD(__src[0]) = 67110656;
            DWORD1(__src[0]) = v26;
            WORD4(__src[0]) = 1024;
            *(__src + 10) = v38;
            HIWORD(__src[0]) = 2048;
            *&__src[1] = v25;
            WORD4(__src[1]) = 1024;
            *(&__src[1] + 10) = v39;
            HIWORD(__src[1]) = 2048;
            *&__src[2] = v40;
            WORD4(__src[2]) = 1024;
            *(&__src[2] + 10) = v41;
            HIWORD(__src[2]) = 2048;
            *&__src[3] = v42;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_INFO, "#pbio,acceptWiFi, %d, hasValidCalibrationEstimate(), %d, timeSinceLastCalibrationUpdate_s, %.3f, startLoc, %d, %.3f, endLoc, %d, %.3f", __src, 0x38u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(__src, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_1019DC4B0();
            }

            v43 = *(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= a2 && *(a1 + 1048) >= a2;
            v44 = *(a1 + 416);
            v45 = *v5;
            v46 = *(a1 + 572);
            v47 = *(a1 + 552);
            v59 = 67110656;
            v60 = v26;
            v61 = 1024;
            v62 = v43;
            v63 = 2048;
            v64 = v25;
            v65 = 1024;
            v66 = v44;
            v67 = 2048;
            v68 = v45;
            v69 = 1024;
            v70 = v46;
            v71 = 2048;
            v72 = v47;
            v48 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBackgroundInertialOdometryCalibrationEstimator::extractLocationsForMeasurementGeneration(const CFTimeInterval)", "%s\n", v48);
            if (v48 != __src)
            {
              free(v48);
            }
          }
        }

        return sub_100072814(v6);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1019DC4B0();
        }

        v19 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          LOWORD(__src[0]) = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryNorthAlignment::extractLocationsForMeasurementGeneration input buffer less than two, not extracting locations.", __src, 2u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_1019DDE2C();
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019DC4B0();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        LOWORD(__src[0]) = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryNorthAlignment::extractLocationsForMeasurementGeneration input buffer is nullptr.", __src, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1019DDF08();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v14 = sub_10001CF3C();
      v15 = sub_10001CF04();
      LODWORD(__src[0]) = 67109376;
      DWORD1(__src[0]) = v14;
      WORD4(__src[0]) = 1024;
      *(__src + 10) = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryNorthAlignment::extractLocationsForMeasurementGeneration, cannot compute machContinuousToCFAbsoluteOffset_s, cannot extractLocations,isWatch,%d,isPhone,%d", __src, 0xEu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019DDD20();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001E94EC(_BOOL8 result, uint64_t a2, double a3)
{
  if (*(a2 + 96) == 1)
  {
    v5 = result;
    result = sub_1002A0BA8(a2);
    if (result)
    {
      result = sub_1002B0B44(a2);
      if (result && *(a2 + 44) > *(v5 + 48))
      {
        v6 = *(a2 + 68) * (*(a2 + 68) * 0.00030461742);
        if (v6 <= fmax(*(v5 + 40), *(v5 + 1064)))
        {
          *(v5 + 1056) = *(a2 + 60) * 0.0174532925;
          *(v5 + 1064) = v6;
          *(v5 + 1088) = a3;
          *(v5 + 1105) = *(v5 + 1104);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001E95A0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 144);
  *a2 = *(result + 136);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001E95BC(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 316;
  v5 = *a2;
  *(a1 + 172) = a2[1];
  *(a1 + 156) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(a1 + 236) = a2[5];
  *(a1 + 220) = v8;
  *(a1 + 204) = v7;
  *(a1 + 188) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(a1 + 296) = *(a2 + 140);
  *(a1 + 268) = v10;
  *(a1 + 284) = v11;
  *(a1 + 252) = v9;
  sub_1001E0CA4(a1 + 888, (a1 + 156));
  v12 = a2[1];
  *(a1 + 312) = *a2;
  *(a1 + 328) = v12;
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[5];
  *(a1 + 376) = a2[4];
  *(a1 + 392) = v15;
  *(a1 + 344) = v13;
  *(a1 + 360) = v14;
  v16 = a2[6];
  v17 = a2[7];
  v18 = a2[8];
  *(a1 + 452) = *(a2 + 140);
  *(a1 + 424) = v17;
  *(a1 + 440) = v18;
  *(a1 + 408) = v16;
  *v4 = *(a1 + 696);
  *(v4 + 16) = *(a1 + 728);
  *(a1 + 444) = 1;
  sub_100027CA8(a1 + 312);
  if (*(a2 + 36) < 0.0 && *(a1 + 736) > 0.0)
  {
    *(v4 + 24) = *(a1 + 712);
    v19 = sub_1000F7F38();
    v20 = *(a1 + 736);
    if (v20 < *(v19 + 28))
    {
      v20 = *(v19 + 28);
    }

    *(v4 + 32) = v20;
  }

  sub_1001E96DC((a1 + 888), (a1 + 312));
}

void sub_1001E96DC(_OWORD *a1, __int128 *a2)
{
  if (*(a2 + 24) == 4)
  {
    if (*(a2 + 76) <= 0.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018818E4();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "location timestamp is not set!", v11, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101881B74();
      }
    }

    else
    {
      v2 = *a2;
      *(a1 + 212) = a2[1];
      *(a1 + 196) = v2;
      v3 = a2[2];
      v4 = a2[3];
      v5 = a2[5];
      *(a1 + 260) = a2[4];
      *(a1 + 276) = v5;
      *(a1 + 244) = v4;
      *(a1 + 228) = v3;
      v6 = a2[6];
      v7 = a2[7];
      v8 = a2[8];
      a1[21] = *(a2 + 140);
      *(a1 + 308) = v7;
      *(a1 + 324) = v8;
      *(a1 + 292) = v6;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "location type is not WiFi!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101881AA0();
    }
  }
}

uint64_t sub_1001E9838(uint64_t a1, double *a2, double *a3, int a4)
{
  if (sub_1001E9C40(a1))
  {
    v8 = (a1 + 112);
    *&v29[1] = a1 + 112;
    v30 = 1;
    std::__shared_mutex_base::lock_shared((a1 + 112));
    if (*(a1 + 104) == 1 && (vabdd_f64(vabdd_f64(*(a1 + 72), *a2), *(a1 + 88)) > 0.1 || vabdd_f64(fabs(sub_1002AADB4(*(a1 + 80), *a3)), *(a1 + 96)) > 0.1) || (v9 = *(a1 + 40), v10 = *(a1 + 48), v9 == v10))
    {
LABEL_10:
      v12 = 0;
    }

    else
    {
      while (1)
      {
        if (vabdd_f64(*v9, *a2) <= 0.1 && fabs(sub_1002AADB4(v9[1], *a3)) <= 0.1)
        {
          v28 = 0.0;
          v29[0] = 0.0;
          v27 = 0;
          sub_1001063B0(a1, v29, &v28, &v27, *a2, *a3, 0.0, *v9, v9[1], 0.0);
          v11 = v28 * v28 + v29[0] * v29[0];
          if (v11 <= v9[2] * v9[2])
          {
            break;
          }
        }

        v9 += 3;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_10168DC30();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v9;
        v17 = *(v9 + 1);
        v18 = *(v9 + 2);
        v19 = *a2;
        v20 = *a3;
        *buf = 67110657;
        v46 = a4;
        v47 = 2053;
        v48 = v16;
        v49 = 2053;
        v50 = v17;
        v51 = 2050;
        v52 = v18;
        v53 = 2053;
        v54 = v19;
        v55 = 2053;
        v56 = v20;
        v57 = 2050;
        v58 = v11;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#imag,al,type,%d,aLat,%{sensitive}.7lf,aLon,%{sensitive}.7lf,aRadius,%{public}.1f,gnssLat,%{sensitive}.7lf,gnssLon.%{sensitive}.7lf,distanceSqM,%{public}.1f", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168DAC4(buf);
        v21 = *v9;
        v22 = *(v9 + 1);
        v23 = *(v9 + 2);
        v24 = *a2;
        v25 = *a3;
        v31 = 67110657;
        v32 = a4;
        v33 = 2053;
        v34 = v21;
        v35 = 2053;
        v36 = v22;
        v37 = 2050;
        v38 = v23;
        v39 = 2053;
        v40 = v24;
        v41 = 2053;
        v42 = v25;
        v43 = 2050;
        v44 = v11;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssKnownACDataHandler::doesThisMatchKnownAC(const double &, const double &, const CLLocationType)", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      v12 = 1;
    }

    std::__shared_mutex_base::unlock_shared(v8);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168DAB0();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#imag,al,file validity has expired", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168DD88();
    }

    sub_10168D9C8(a1);
    return 0;
  }

  return v12;
}

void sub_1001E9C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100F96F74(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001E9C40(uint64_t a1)
{
  v2 = (a1 + 112);
  std::__shared_mutex_base::lock_shared((a1 + 112));
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 64);
  std::__shared_mutex_base::unlock_shared(v2);
  return vabdd_f64(Current, v4) < 604800.0;
}

uint64_t sub_1001E9CD4(uint64_t result)
{
  if (*(result + 509) == 1)
  {
    result = rand();
    if (!(result % dword_1026562C0))
    {
      if (byte_1026562DF >= 0)
      {
        v1 = &qword_1026562C8;
      }

      else
      {
        v1 = qword_1026562C8;
      }

      [NSString stringWithUTF8String:v1];
      return AnalyticsSendEventLazy();
    }
  }

  return result;
}

uint64_t sub_1001E9DA0(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v3 = 1;
  }

  else
  {
    v10 = v1;
    v11 = v2;
    if (*(a1 + 152) == 1)
    {
      v5 = sub_10000B1F8();
      v9 = 1;
      v6 = sub_10001A6B0(v5, &v9);
      v7 = v6;
      if (*(a1 + 112) == 1)
      {
        v7 = *(a1 + 104);
      }

      v3 = *(a1 + 136);
      if ((v3 & 1) == 0 && v6 - v7 > 20.0)
      {
        v3 = *(a1 + 152);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1001E9E38(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9E88(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001E9FBC(a1, i + 2);
  }

  return a1;
}

void sub_1001E9FA0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10082CC8C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1001E9FBC(void *a1, void *a2)
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
    sub_1001E9F00();
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

void sub_1001EA1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_10082CC8C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001EA21C(void *a1, void *a2)
{
  result = sub_10019D138(a1, a2);
  if (result)
  {
    v5 = sub_10019D138(a1, a2);
    if (!v5)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    return (0xAAAAAAAAAAAAAAABLL * ((v5[4] - v5[3]) >> 6));
  }

  return result;
}

void sub_1001EA27C(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, double a5)
{
  *(a1 + 8) = a2;
  if (a2)
  {
    v6 = a3 / a2;
  }

  else
  {
    v6 = 0.0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = a5;
  *(a1 + 32) = *a4;
  v7 = sub_1000081AC();
  if (v7 - *a1 >= 7200.0)
  {
    sub_100AABD14(a1);
    *a1 = v7;
  }
}

void sub_1001EA2F8(uint64_t a1, void *a2, void *a3)
{
  if (sub_10019D138(a2, a3))
  {
    v5 = sub_1000081AC();
    if (v5 - *(a1 + 376) >= 1800.0)
    {
      *(a1 + 376) = v5;
      v6 = sub_10019D138(a2, a3);
      if (!v6)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v7 = v6;
      if (v6[4] != v6[3])
      {
        v8 = 0;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v10 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        do
        {
          if (p_info[266] != -1)
          {
            sub_10194CFCC();
          }

          v11 = v10[267];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            std::operator+<char>();
            v12 = v10;
            v13 = p_info;
            v14 = SHIBYTE(v35);
            v15 = *v32;
            v17 = v7[3];
            v16 = v7[4];
            sub_1001912D0(v17 + 192 * v8, __p);
            v18 = v32;
            if (v14 < 0)
            {
              v18 = v15;
            }

            *buf = 136315907;
            v40 = v18;
            v19 = __p;
            if (v31 < 0)
            {
              v19 = __p[0];
            }

            v41 = 2048;
            v42 = v8 + 1;
            v43 = 2048;
            v44 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 6);
            v45 = 2085;
            v46 = v19;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "%s, harvest sample %zu / %zu, %{sensitive}s", buf, 0x2Au);
            if (v31 < 0)
            {
              operator delete(__p[0]);
            }

            p_info = v13;
            if (SHIBYTE(v35) < 0)
            {
              operator delete(*v32);
            }

            v10 = v12;
          }

          if (sub_10000A100(121, 2))
          {
            sub_10194CFF4(buf);
            std::operator+<char>();
            v20 = v31;
            v21 = __p[0];
            v22 = v7[3];
            v23 = v7[4];
            sub_1001912D0(v22 + 192 * v8, v28);
            v24 = __p;
            if (v20 < 0)
            {
              v24 = v21;
            }

            *v32 = 136315907;
            ++v8;
            *&v32[4] = v24;
            v25 = v28;
            if (v29 < 0)
            {
              v25 = v28[0];
            }

            v33 = 2048;
            v34 = v8;
            v35 = 2048;
            v36 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 6);
            v37 = 2085;
            v38 = v25;
            v26 = _os_log_send_and_compose_impl();
            if (v29 < 0)
            {
              operator delete(v28[0]);
            }

            if (v31 < 0)
            {
              operator delete(__p[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::logAllHarvestSamplesOfCurrentAssociatedApIfPossible(const std::unordered_map<CLMacAddress, std::vector<CLWifiHarvestDatabaseEntry>> &, const CLMacAddress &)", "%s\n", v26);
            if (v26 != buf)
            {
              free(v26);
            }
          }

          else
          {
            ++v8;
          }
        }

        while (v8 < 0xAAAAAAAAAAAAAAABLL * ((v7[4] - v7[3]) >> 6));
      }
    }
  }
}

void sub_1001EA674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EA6AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100072814(a2);
  sub_1001E4BC4(a1 + 888, !v4);
  sub_1001097CC((a1 + 472), a2, a1 + 312);
  v6 = v5;
  if (qword_1025D4620 != -1)
  {
    sub_101AA3E94();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v33;
    sub_1001E2694(v33);
    if (v36 < 0)
    {
      v8 = *v33;
    }

    sub_10018F0D0(&v32);
    v9 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
    v10 = v32.__r_.__value_.__r.__words[0];
    sub_1001E2694(&__p);
    if (v9 >= 0)
    {
      v11 = &v32;
    }

    else
    {
      v11 = v10;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v13 = (a1 + 1496);
    if (*(a1 + 1519) < 0)
    {
      v13 = *v13;
    }

    *buf = 136643843;
    v43 = v8;
    v44 = 2081;
    v45 = v11;
    v46 = 2085;
    v47 = p_p;
    v48 = 2050;
    v49 = v6;
    v50 = 2081;
    v51 = v13;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WifiCalc, replacing computed location %{sensitive}s with associated AP %{private}s centroid %{sensitive}s. Distance %{public}.1fm. LOI %{private}s", buf, 0x34u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*v33);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AA3FD8(buf);
    v22 = &v32;
    sub_1001E2694(&v32);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v32.__r_.__value_.__r.__words[0];
    }

    sub_10018F0D0(&__p);
    v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v24 = __p.__r_.__value_.__r.__words[0];
    sub_1001E2694(v29);
    if (v23 >= 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = v24;
    }

    v26 = v29[0];
    if (v30 >= 0)
    {
      v26 = v29;
    }

    v27 = (a1 + 1496);
    if (*(a1 + 1519) < 0)
    {
      v27 = *v27;
    }

    *v33 = 136643843;
    *&v33[4] = v22;
    v34 = 2081;
    v35 = v25;
    v36 = 2085;
    v37 = v26;
    v38 = 2050;
    v39 = v6;
    v40 = 2081;
    v41 = v27;
    v28 = _os_log_send_and_compose_impl();
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiPositionCalculatorWithAssociatedAp::updateComputedLocation(CL::Wifi1::Types::ComputedLocation &)", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v14 = *(a1 + 344);
  v15 = *(a1 + 360);
  v16 = *(a1 + 376);
  *(a2 + 80) = *(a1 + 392);
  v17 = *(a1 + 328);
  *a2 = *(a1 + 312);
  *(a2 + 16) = v17;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 32) = v14;
  v18 = *(a1 + 408);
  v19 = *(a1 + 424);
  v20 = *(a1 + 440);
  *(a2 + 140) = *(a1 + 452);
  *(a2 + 112) = v19;
  *(a2 + 128) = v20;
  *(a2 + 96) = v18;
  *(a2 + 156) = 1;
  *(a2 + 84) = 69;
  if (*(a1 + 1528) == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  *(a2 + 180) = v21;
}

void sub_1001EAA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001EAAC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100021ED8(a2);
  v11[0] = 0.0;
  if (sub_1001D381C(v11, *(a1 + 4), *(a1 + 12)))
  {
    *(a2 + 316) = v11[0];
    *(a2 + 312) = 1;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101A02224();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 316);
    v6 = *(a2 + 312);
    *buf = 134349312;
    v16 = v5;
    v17 = 1026;
    v18 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Wifi,undulation,%{public}lf, model, %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A0224C(buf);
    v8 = *(a2 + 316);
    v9 = *(a2 + 312);
    v11[1] = 3.9123e-34;
    v12 = v8;
    v13 = 1026;
    v14 = v9;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLDaemonLocationPrivate CL::Wifi1::Policies::LocationPrivateCalculation::populateLocationPrivate(const CL::Wifi1::Types::ComputedLocation &)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  *(a2 + 32) = sub_1000137E0();
  *(a2 + 344) = sub_1000081AC();
  *(a2 + 24) = 0;
  result = *(a1 + 168);
  *(a2 + 600) = result;
  *(a2 + 608) = *(a1 + 180);
  *(a2 + 620) = *(a1 + 176);
  return result;
}

void sub_1001EACCC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 528);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EACF0(uint64_t a1, uint64_t a2)
{
  sub_1001EAF5C(a1, a2, buf);
  *(a1 + 160) = *buf;
  *(a1 + 169) = *&buf[9];
  if (*(a1 + 184) == 1)
  {
    v6[0] = @"positionWiggleDistance";
    v7[0] = [NSNumber numberWithDouble:*(a1 + 160)];
    v6[1] = @"positionWiggleTimestampDelta";
    v7[1] = [NSNumber numberWithDouble:*(a1 + 168)];
    v6[2] = @"positionWiggleSpeed";
    v7[2] = [NSNumber numberWithDouble:*(a1 + 176)];
    v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
    if (*(a1 + 160) >= 0.0 && *(a1 + 168) > 0.0 && *(a1 + 176) >= 0.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101BCF4BC();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@WifiPositionWiggleMetrics, submitting CoreAnalytics event for wifi position wiggle, %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BCF4E4(v3);
      }

      AnalyticsSendEventLazy();
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101BCF4BC();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "@WifiPositionWiggleMetrics, error, invalid wifi position wiggle, %{public}@, skip", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BCF5DC(v3);
      }
    }
  }
}

void sub_1001EAF5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!sub_100072814(a2) || !sub_100072814(a1))
  {
LABEL_42:
    v25 = 0;
    *a3 = 0;
    goto LABEL_43;
  }

  v6 = *(a2 + 76);
  v7 = *(a1 + 76);
  v8 = v6 - v7;
  if (v6 - v7 < 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101BCF2A8();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001D78F4(v34);
      v10 = SHIBYTE(v37);
      v11 = *v34;
      sub_1001D78F4(__p);
      v12 = v34;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v33 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136643331;
      v40 = v12;
      v41 = 2085;
      v42 = v13;
      v43 = 2050;
      v44 = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiPositionWiggleMetrics, #warning, timestamp out of order, current location, %{sensitive}s, previous location, %{sensitive}s, timestamp delta, %{public}.1f", buf, 0x20u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(*v34);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_101BCF6C8(buf);
    sub_1001D78F4(__p);
    v14 = v33;
    v15 = __p[0];
    sub_1001D78F4(v30);
    v16 = __p;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v31 >= 0)
    {
      v17 = v30;
    }

    else
    {
      v17 = v30[0];
    }

    *v34 = 136643331;
    *&v34[4] = v16;
    v35 = 2085;
    v36 = v17;
    v37 = 2050;
    v38 = v8;
    v18 = _os_log_send_and_compose_impl();
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_53;
  }

  if (v6 - v7 == 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101BCF2A8();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001D78F4(v34);
      v20 = SHIBYTE(v37);
      v21 = *v34;
      sub_1001D78F4(__p);
      v22 = v34;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if (v33 >= 0)
      {
        v23 = __p;
      }

      else
      {
        v23 = __p[0];
      }

      *buf = 136643331;
      v40 = v22;
      v41 = 2085;
      v42 = v23;
      v43 = 2050;
      v44 = v8;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "@WifiPositionWiggleMetrics, #warning, timestamp delta is 0, current location, %{sensitive}s, previous location, %{sensitive}s, timestamp delta, %{public}.1f", buf, 0x20u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(*v34);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_101BCF6C8(buf);
    sub_1001D78F4(__p);
    v26 = v33;
    v27 = __p[0];
    sub_1001D78F4(v30);
    v28 = __p;
    if (v26 < 0)
    {
      v28 = v27;
    }

    if (v31 >= 0)
    {
      v29 = v30;
    }

    else
    {
      v29 = v30[0];
    }

    *v34 = 136643331;
    *&v34[4] = v28;
    v35 = 2085;
    v36 = v29;
    v37 = 2050;
    v38 = v8;
    v18 = _os_log_send_and_compose_impl();
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_53:
    sub_100152C7C("Generic", 1, 0, 2, "std::optional<PositionWiggle> CLWifiPositionWiggleMetrics::getPositionWiggle(const CLDaemonLocation &)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }

    goto LABEL_42;
  }

  v24 = sub_100117154(*(a2 + 4), *(a2 + 12), *(a1 + 4), *(a1 + 12));
  *a3 = v24;
  *(a3 + 8) = v8;
  *(a3 + 16) = v24 / v8;
  v25 = 1;
LABEL_43:
  *(a3 + 24) = v25;
}

void sub_1001EB438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001EB478(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    v8 = 45.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(a1 + 176);
  if (!v9 || !sub_1001E455C(v9))
  {
    return 0;
  }

  sub_1001E45DC(*(a1 + 176), 1, &v31, a4, a5);
  sub_1001E45DC(*(a1 + 176), 4, &v29, a4, a5);
  sub_1001EB6F0(&v31, v32, v29, v30, 0x6F96F96F96F96F97 * ((v30 - v29) >> 2));
  if (v32 == v31)
  {
    v20 = 0;
  }

  else
  {
    sub_1005317F8(v31, v32, 126 - 2 * __clz(0x6F96F96F96F96F97 * ((v32 - v31) >> 2)), 1, v11);
    *a3 = xmmword_101CE6CD8;
    *(a3 + 16) = xmmword_101CE6CE8;
    *(a3 + 64) = xmmword_101CE6D18;
    *(a3 + 80) = xmmword_101CE6D28;
    *(a3 + 32) = xmmword_101CE6CF8;
    *(a3 + 48) = xmmword_101CE6D08;
    *(a3 + 140) = *(&xmmword_101CE6D58 + 12);
    *(a3 + 112) = xmmword_101CE6D48;
    *(a3 + 128) = xmmword_101CE6D58;
    *(a3 + 96) = xmmword_101CE6D38;
    v12 = v31;
    v13 = v32;
    if (v32 != v31)
    {
      v14 = *(v32 - 17);
      do
      {
        v15 = *(v13 - 17);
        v26 = *(v13 - 6);
        v27 = *(v13 - 5);
        v16 = *(v13 - 15);
        v28 = *(v13 - 16);
        v24 = *(v13 - 8);
        v25 = *(v13 - 7);
        v22 = *(v13 - 56);
        v23 = *(v13 - 40);
        v17 = *(v13 - 24);
        v18 = *(v13 - 1);
        v13 -= 156;
        if (v15 <= v14 && (v15 < 35.0 && v16 == 1 || v15 < v8 && v16 == 4))
        {
          v19 = *v13;
          *(a3 + 16) = *(v13 + 4);
          *a3 = v19;
          *(a3 + 20) = v15;
          *(a3 + 44) = v25;
          *(a3 + 60) = v26;
          *(a3 + 76) = v27;
          *(a3 + 28) = v24;
          *(a3 + 92) = v28;
          *(a3 + 96) = v16;
          *(a3 + 148) = v18;
          *(a3 + 132) = v17;
          *(a3 + 116) = v23;
          v14 = v15;
          *(a3 + 100) = v22;
        }
      }

      while (v13 != v12);
    }

    v20 = sub_100072814(a3);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v20;
}

void sub_1001EB6BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 88);
  if (v4)
  {
    *(v1 - 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001EB6F0(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if (0x6F96F96F96F96F97 * ((v10 - v9) >> 2) >= a5)
    {
      v16 = v9 - __dst;
      if (0x6F96F96F96F96F97 * ((v9 - __dst) >> 2) >= a5)
      {
        v27 = &__dst[156 * a5];
        v28 = &v9[-156 * a5];
        v29 = a1[1];
        while (v28 < v9)
        {
          v30 = *(v28 + 1);
          *v29 = *v28;
          v29[1] = v30;
          v31 = *(v28 + 2);
          v32 = *(v28 + 3);
          v33 = *(v28 + 5);
          v29[4] = *(v28 + 4);
          v29[5] = v33;
          v29[2] = v31;
          v29[3] = v32;
          v34 = *(v28 + 6);
          v35 = *(v28 + 7);
          v36 = *(v28 + 8);
          *(v29 + 140) = *(v28 + 140);
          v29[7] = v35;
          v29[8] = v36;
          v29[6] = v34;
          v28 += 156;
          v29 = (v29 + 156);
        }

        a1[1] = v29;
        if (v9 != v27)
        {
          memmove(&__dst[156 * a5], __dst, v9 - v27);
        }

        v47 = 156 * a5;
        v48 = v5;
        v49 = v7;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *(v17 + 1);
          *v19 = *v17;
          v19[1] = v20;
          v21 = *(v17 + 2);
          v22 = *(v17 + 3);
          v23 = *(v17 + 5);
          v19[4] = *(v17 + 4);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v24 = *(v17 + 6);
          v25 = *(v17 + 7);
          v26 = *(v17 + 8);
          *(v19 + 140) = *(v17 + 140);
          v19[7] = v25;
          v19[8] = v26;
          v19[6] = v24;
          v17 += 156;
          v19 = (v19 + 156);
          v18 = (v18 + 156);
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v37 = &__dst[156 * a5];
        v38 = (v18 - 156 * a5);
        v39 = v18;
        while (v38 < v9)
        {
          v40 = v38[1];
          *v39 = *v38;
          v39[1] = v40;
          v41 = v38[2];
          v42 = v38[3];
          v43 = v38[5];
          v39[4] = v38[4];
          v39[5] = v43;
          v39[2] = v41;
          v39[3] = v42;
          v44 = v38[6];
          v45 = v38[7];
          v46 = v38[8];
          *(v39 + 140) = *(v38 + 140);
          v39[7] = v45;
          v39[8] = v46;
          v39[6] = v44;
          v38 = (v38 + 156);
          v39 = (v39 + 156);
        }

        a1[1] = v39;
        if (v19 != v37)
        {
          memmove(&__dst[156 * a5], __dst, v18 - v37);
        }

        v48 = v5;
        v49 = v7;
        v47 = v16;
      }

      memmove(v48, v49, v47);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6F96F96F96F96F97 * (&v9[-*a1] >> 2);
    if (v12 > 0x1A41A41A41A41A4)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0x6F96F96F96F96F97 * ((v10 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xD20D20D20D20D2)
    {
      v15 = 0x1A41A41A41A41A4;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_100238948(a1, v15);
    }

    v50 = 4 * (v13 >> 2);
    v51 = 156 * a5;
    v52 = (v50 + 156 * a5);
    v53 = v50;
    do
    {
      v54 = v7[1];
      *v53 = *v7;
      v53[1] = v54;
      v55 = v7[2];
      v56 = v7[3];
      v57 = v7[5];
      v53[4] = v7[4];
      v53[5] = v57;
      v53[2] = v55;
      v53[3] = v56;
      v58 = v7[6];
      v59 = v7[7];
      v60 = v7[8];
      *(v53 + 140) = *(v7 + 140);
      v53[7] = v59;
      v53[8] = v60;
      v53[6] = v58;
      v53 = (v53 + 156);
      v7 = (v7 + 156);
      v51 -= 156;
    }

    while (v51);
    memcpy(v52, v5, a1[1] - v5);
    v61 = *a1;
    v62 = &v52[a1[1] - v5];
    a1[1] = v5;
    v63 = v5 - v61;
    v64 = (v50 - (v5 - v61));
    memcpy(v64, v61, v63);
    v65 = *a1;
    *a1 = v64;
    a1[1] = v62;
    a1[2] = 0;
    if (v65)
    {
      operator delete(v65);
    }

    return v50;
  }

  return v5;
}

void sub_1001EBA08(float64x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = v2 == 11 || v2 == 4;
  if (v3 && *(a2 + 20) > 0.0)
  {
    if (*(a2 + 84) > 0x45u)
    {
      v8 = &a1[53].f64[1] + 4;
      Current = CFAbsoluteTimeGetCurrent();
      v10 = (v8 + 56);
      if (*v8 > 0.0 && (v11 = *v10, sub_100072814(&a1[52].f64[1])) && Current - v11 <= 1800.0)
      {
        sub_1001097CC(a1 + 63, a2, &a1[52].f64[1]);
        v13 = v12;
        if (v12 < 0.0 || v12 > *v8)
        {
          *(a2 + 84) = 69;
          if (qword_1025D4650 != -1)
          {
            sub_10025BA4C();
          }

          v14 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            v15 = *v8;
            v16 = *(a2 + 84);
            v19 = 68289794;
            *v20 = 0;
            *&v20[4] = 2082;
            *&v20[6] = "";
            v21 = 2050;
            v22 = v13;
            v23 = 2050;
            v24 = v15;
            v25 = 1026;
            v26 = v16;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#GnssRefLocationCache,crossCheckWiFiLocationWithCell,fail, distFromWifiToCell:%{public}f, crossCheckThreshold:%{public}f, confidence:%{public}d}", &v19, 0x2Cu);
          }
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_10025BA4C();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v18 = *v10;
          v19 = 134349056;
          *v20 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,crossCheckWiFiLocationWithCell,no valid recent cell location available,lastCellTimeStamp,%{public}.1lf", &v19, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA9B50(v8 + 14);
        }
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10025BA4C();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v19) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,crossCheckWiFiLocationWithCell,already low confidence", &v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA9C50();
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,crossCheckWiFiLocationWithCell,not valid wifi location", &v19, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA9A6C();
    }
  }
}

uint64_t sub_1001EBD10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  if (v3 == 11 || v3 == 4)
  {
    *(result + 104) = *(a3 + 344);
    if (*(a2 + 84) > 0x44u)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(result + 112) + 1;
    }

    *(result + 112) = v5;
    *(result + 136) = 0;
  }

  return result;
}

uint64_t sub_1001EBD50(void *a1, unint64_t *a2, unint64_t *a3, double a4, double a5)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = v6;
  if (v6 < v5)
  {
    v7 = v6 + 0x6DB6DB6DB6DB6DB7 * ((a1[7] - a1[6]) >> 4);
  }

  if (v7 != v5)
  {
    v8 = a1[6];
    do
    {
      v9 = *(v8 + 112 * v5 + 8);
      if (v9 > a5)
      {
        break;
      }

      if (v9 > a4)
      {
        *a2 = v5;
        v11 = a1[4];
        if (v5 == v11)
        {
          return 0;
        }

        v13 = a1[7];
        while (1)
        {
          v11 = v13 == v8 ? 0 : (v11 + 0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 4) - 1) % (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 4));
          if (*(v8 + 112 * v11 + 8) < a5)
          {
            break;
          }

          if (v11 == v5)
          {
            v11 = v5;
            break;
          }
        }

        *a3 = v11;
        return 1;
      }

      v10 = a1[7] - v8;
      if (v10)
      {
        v5 = (v5 + 1) % (0x6DB6DB6DB6DB6DB7 * (v10 >> 4));
      }

      else
      {
        v5 = 0;
      }
    }

    while (v5 != v6);
  }

  return 0;
}

uint64_t sub_1001EBE50@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a3 <= a4)
  {
    v6 = result;
    result = *(result + 40);
    v7 = *(result + 8);
    v8 = a3 - v7;
    if (a3 - v7 < v7 + a4)
    {
      do
      {
        v10 = sub_1006A9A14(result, v8);
        if (sub_100028030(v10) && *(v10 + 136))
        {
          v11 = *(v10 + 16);
          if (v11 >= a3 && v11 <= a4)
          {
            sub_10082FC2C(a2, v10);
          }
        }

        result = *(v6 + 40);
        v13 = *(result + 8);
        v8 = v8 + v13;
      }

      while (v8 < v13 + a4);
    }
  }

  return result;
}

void sub_1001EBF0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EBF28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_1001EBF84(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = *result;
  v4 = result[1];
  v5 = v2 - (v4 - *result);
  if (v4 != *result)
  {
    v6 = v2 - 16 * ((v4 - *result) >> 4);
    v7 = v5;
    do
    {
      *v7 = off_1024DE5F8;
      v8 = *(v3 + 8);
      v9 = *(v3 + 24);
      v10 = *(v3 + 40);
      *(v7 + 56) = *(v3 + 56);
      *(v7 + 40) = v10;
      *(v7 + 24) = v9;
      *(v7 + 8) = v8;
      v11 = *(v3 + 72);
      v12 = *(v3 + 88);
      v13 = *(v3 + 104);
      *(v7 + 120) = *(v3 + 120);
      *(v7 + 104) = v13;
      *(v7 + 88) = v12;
      *(v7 + 72) = v11;
      *(v7 + 128) = *(v3 + 128);
      v3 += 144;
      v7 += 144;
      v6 += 144;
    }

    while (v3 != v4);
    v3 = *result;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v14 = result[1];
  result[1] = a2[2];
  a2[2] = v14;
  v15 = result[2];
  result[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

id *sub_1001EC11C(id *a1)
{
  sub_1001EC150(a1);

  return a1;
}

uint64_t sub_1001EC150(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = sub_1000080EC(v2 - *(a1 + 16));
  v4 = 32;
  if (*(a1 + 48))
  {
    v4 = 24;
  }

  *(a1 + v4) = v3 + *(a1 + v4);
  *(a1 + 16) = v2;
  v5 = mach_absolute_time();
  v6 = sub_1000080EC(v5 - *(a1 + 8));
  v9[0] = *a1;
  v8[0] = @"client";
  v8[1] = @"inForegroundPercent";
  v9[1] = [NSNumber numberWithDouble:round(*(a1 + 24) / v6 / 0.05) * 0.05];
  v8[2] = @"desiredAccuracy";
  v9[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  v8[3] = @"duration";
  v9[3] = [NSNumber numberWithDouble:round(v6 / 10.0) * 10.0];
  v8[4] = @"durationForeground";
  v9[4] = [NSNumber numberWithDouble:round(*(a1 + 24) / 10.0) * 10.0];
  v8[5] = @"durationBackground";
  v9[5] = [NSNumber numberWithDouble:round(*(a1 + 32) / 10.0) * 10.0];
  [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:6];
  result = AnalyticsSendEvent();
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1001EC310()
{
  if (qword_102659078 != -1)
  {
    sub_101916010();
  }

  return qword_102637208;
}

uint64_t sub_1001EC348(uint64_t a1)
{
  v3 = 0;
  (*(*a1 + 120))(a1, &v3);
  v3 = 2;
  (*(*a1 + 120))(a1, &v3);
  v3 = 1;
  (*(*a1 + 120))(a1, &v3);
  v3 = 3;
  (*(*a1 + 120))(a1, &v3);
  v3 = 4;
  (*(*a1 + 120))(a1, &v3);
  v3 = 39;
  (*(*a1 + 120))(a1, &v3);
  v3 = 10;
  (*(*a1 + 120))(a1, &v3);
  v3 = 5;
  return (*(*a1 + 120))(a1, &v3);
}

uint64_t sub_1001EC508(char *a1, int a2, int *a3)
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
                sub_101ABDD10();
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
                  sub_101ABDD10();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLAutopauseProvider_Type::Notification, CLAutopauseProvider_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLAutopauseProvider_Type::Notification, NotificationData_T = CLAutopauseProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

void sub_1001EC8AC(uint64_t a1)
{
  *(a1 + 8) = xmmword_101C75BF0;
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  *(a1 + 72) = 0xFFFF;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 92) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 108) = _Q0;
  *(a1 + 124) = _Q0;
  *(a1 + 140) = _Q0;
  *(a1 + 156) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0xBFF0000000000000;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0xBFF0000000000000;
  *(a1 + 196) = 0x7FFFFFFF;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  sub_1001ECED8(a1 + 320);
  v7 = *(a1 + 368);
  v8 = *(a1 + 376);
  *(a1 + 400) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 376);
      v7 = (*(a1 + 368) + 8);
      *(a1 + 368) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_8;
    }

    v11 = 102;
  }

  *(a1 + 392) = v11;
LABEL_8:
  v12 = *(a1 + 416);
  v13 = *(a1 + 424);
  *(a1 + 448) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 424);
      v12 = (*(a1 + 416) + 8);
      *(a1 + 416) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 25;
  }

  else
  {
    if (v14 != 2)
    {
      return;
    }

    v16 = 51;
  }

  *(a1 + 440) = v16;
}

void sub_1001EC9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 156) != 1 || !sub_100073270(a2, a3)) && *(a3 + 20) > 0.0 && sub_100072814(a3))
  {
    v5 = *(a2 + 156);
    v6 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v6;
    v7 = *(a3 + 80);
    v9 = *(a3 + 32);
    v8 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v7;
    *(a2 + 32) = v9;
    *(a2 + 48) = v8;
    v11 = *(a3 + 112);
    v10 = *(a3 + 128);
    v12 = *(a3 + 96);
    *(a2 + 140) = *(a3 + 140);
    *(a2 + 112) = v11;
    *(a2 + 128) = v10;
    *(a2 + 96) = v12;
    if ((v5 & 1) == 0)
    {
      *(a2 + 156) = 1;
    }
  }
}

uint64_t sub_1001ECA94(uint64_t a1, int *a2)
{
  sub_1001ECC7C(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_101919C50();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLIENT: Clearing cached notification for %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101919C64(a2);
  }

  (*(*a1 + 120))(a1, a2);
  v6 = *a2;
  [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:*a2];
  if (v6 <= 2)
  {
    *buf = a2;
    *(sub_100007FA0(a1 + 1048, a2) + 32) = 0;
    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      *buf = 2;
      if (!sub_10000608C(a1, buf, 1))
      {
        *buf = 1;
        if (!sub_10000608C(a1, buf, 1))
        {
          [*(a1 + 1024) setNextFireDelay:1.79769313e308];
          (*(*a1 + 304))(a1);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1001ECC7C(uint64_t a1)
{
  v3 = 2;
  if (!sub_10000608C(a1, &v3, 1))
  {
    v3 = 1;
    if (!sub_10000608C(a1, &v3, 1))
    {
      v3 = 0;
      if (!sub_10000608C(a1, &v3, 1))
      {
        v3 = 9;
        (*(*a1 + 120))(a1, &v3);
      }
    }
  }

  return 1;
}

id sub_1001ECD70(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101B1984C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "PAUSE: Stopping auto-pause monitoring.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B199CC();
  }

  [*(*(a1 + 120) + 16) unregister:*(*(a1 + 120) + 8) forNotification:4];
  [*(*(a1 + 112) + 16) unregister:*(*(a1 + 112) + 8) forNotification:2];
  [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:2];
  [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:3];
  v4 = 0;
  (*(*a1 + 120))(a1, &v4);
  sub_1001EC8AC(a1 + 144);
  return [*(a1 + 136) setNextFireDelay:1.79769313e308];
}

uint64_t sub_1001ECE90(uint64_t a1)
{
  v3 = 0;
  if (!sub_10000608C(a1, &v3, 1))
  {
    sub_1001ECD70(a1);
  }

  return 1;
}

double sub_1001ECED8(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1001ECF30(char *a1, int a2, int *a3)
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
                sub_1018E690C();
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
                  sub_1018E690C();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLDaemonStatus_Type::Notification, CLDaemonStatus_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLDaemonStatus_Type::Notification, NotificationData_T = CLDaemonStatus_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

uint64_t sub_1001ED2D4(char *a1, int a2, int *a3)
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
                sub_1003286C0();
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
                  sub_1003286C0();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLMotionState_Type::Notification, CLMotionState_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLMotionState_Type::Notification, NotificationData_T = CLMotionState_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

uint64_t sub_1001ED6C0(void *a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v11[0] = 68289282;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Stream clearing cached notification, notification:%{public}d}", v11, 0x18u);
  }

  (*(*a1 + 120))(a1, a2);
  v6 = *a2;
  if (*a2 >= 3)
  {
    if (v6 != 9)
    {
      [*(a1[25] + 16) unregister:*(a1[25] + 8) forNotification:*a2];
      v9 = 0;
      while (dword_101CFDAA0[v9] != *a2)
      {
        if (++v9 == 3)
        {
          return 1;
        }
      }

      [*(a1[26] + 16) unregister:*(a1[26] + 8) forNotification:?];
    }
  }

  else
  {
    v7 = a1[16];
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000F1F54(v7, v6, 0, Current);
  }

  return 1;
}

uint64_t *sub_1001ED860(uint64_t a1, unsigned int a2)
{
  v14 = a2;
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stopping location for source, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld}", buf, 0x1Cu);
  }

  v5 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v13 = _Q0;
  do
  {
    v11 = *(a1 + 32);
    *&buf[16] = 0;
    v16 = 0;
    *buf = v13;
    *&buf[24] = 0;
    (**v11)();
    v5 += 4;
  }

  while (v5 != 12);
  *buf = &v14;
  result = sub_1000B91DC(a1 + 40, &v14);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1001EDA00(uint64_t a1, int *a2)
{
  sub_1001ECC7C(a1);
  v4 = sub_10010A1AC(a1, a2);
  if (qword_1025D4600 != -1)
  {
    sub_101BCFF1C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v7 = sub_100048D98(*a2);
    *buf = 67240706;
    *&buf[4] = v6;
    *&buf[8] = 2082;
    *&buf[10] = v7;
    *&buf[18] = 1026;
    *&buf[20] = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLIENT:unregisterForNotificationInternal,notification,%{public}d,%{public}s,granularity,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BD056C(a2, v4);
  }

  v8 = *a2;
  if (*a2 <= 14)
  {
    if (v8 > 2)
    {
      if (v8 <= 7)
      {
        if ((v8 - 3) >= 2 && v8 != 6)
        {
          return 1;
        }

        goto LABEL_67;
      }

      if (v8 != 8)
      {
        if (v8 != 10)
        {
          return 1;
        }

        goto LABEL_67;
      }

      if (*(a1 + 336))
      {
        *buf = a1 + 336;
        v37 = sub_10010A224(a1 + 256, (a1 + 336));
        [*(v37[5] + 16) unregister:*(v37[5] + 8) forNotification:8];
      }

      goto LABEL_160;
    }

    if (v8 >= 3)
    {
      return 1;
    }

    v11 = (a1 + 160);
    if (*(a1 + 160) != v4)
    {
LABEL_154:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v77 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v78 = *(a1 + 160);
        v79 = *(a1 + 161);
        *buf = 67240448;
        *&buf[4] = v78;
        *&buf[8] = 1026;
        *&buf[10] = v79;
        _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "After unregister,required granularity,%{public}d,active granularity,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD0CAC();
      }

LABEL_160:
      *v105 = 0xBFF0000000000000;
      *&v105[8] = 0;
      v106 = 0;
      v107 = 0;
      v104 = sub_100107BB8(a1);
      v80 = *(a1 + 256);
      if (v80 != a1 + 264)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v81 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v82 = v104;
          v83 = sub_1003DD9F8(a1 + 232, (v80 + 32));
          v86 = v83[1];
          v84 = v83 + 1;
          v85 = v86;
          if (*(v84 + 23) >= 0)
          {
            v87 = v84;
          }

          else
          {
            v87 = v85;
          }

          v88 = *(sub_1003DD9F8(a1 + 232, (v80 + 32)) + 871);
          *buf = 134349570;
          *&buf[4] = v82;
          *&buf[12] = 2082;
          *&buf[14] = v87;
          *&buf[22] = 1026;
          LODWORD(v109) = v88;
          _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEBUG, "CLIENT:unregisterForNotificationInternal,propagate,desiredAccuracy,%{public}.1lf,name,%{public}s,active,%{public}d", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v89 = v104;
          v90 = sub_1003DD9F8(a1 + 232, (v80 + 32));
          v93 = v90[1];
          v91 = v90 + 1;
          v92 = v93;
          if (*(v91 + 23) >= 0)
          {
            v94 = v91;
          }

          else
          {
            v94 = v92;
          }

          v95 = *(sub_1003DD9F8(a1 + 232, (v80 + 32)) + 871);
          v98 = 134349570;
          v99 = v89;
          v100 = 2082;
          v101 = v94;
          v102 = 1026;
          v103 = v95;
          v96 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v96);
          if (v96 != buf)
          {
            free(v96);
          }
        }

        *buf = 0;
        sub_100109ECC();
      }

      return 1;
    }

    *buf = 0;
    if (sub_10000608C(a1, buf, 1))
    {
      if (sub_100027514((a1 + 800)))
      {
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Unregister,fRequiredLocationGranularity adjusted to fine as best accuracy does not require gps", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD0884();
        }

        v13 = sub_10000B1F8();
        *buf = 1;
        *buf = sub_10001A6B0(v13, buf);
        sub_1003E0928((a1 + 800), buf);
        *(a1 + 682) = 1;
        sub_10017ECA4(a1);
        *(a1 + 160) = 1;
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v14 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *a2;
          *buf = 67240192;
          *&buf[4] = v15;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Fine,notification,%{public}d,unregisterForNotificationInternal", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD0970(a2);
        }
      }

      else
      {
        *v11 = 2;
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v61 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v62 = *a2;
          *buf = 67240192;
          *&buf[4] = v62;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Best,notification,%{public}d,unregisterForNotificationInternal", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD0790(a2);
        }
      }

      goto LABEL_129;
    }

    *buf = 1;
    if (sub_10000608C(a1, buf, 1))
    {
      v60 = 1;
    }

    else
    {
      *buf = 2;
      if (sub_10000608C(a1, buf, 1))
      {
        *v11 = 0;
        goto LABEL_129;
      }

      v60 = -1;
    }

    *v11 = v60;
LABEL_129:
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF30();
    }

    v64 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v65 = *a2;
      v66 = *v11;
      *buf = 67240448;
      *&buf[4] = v65;
      *&buf[8] = 1026;
      *&buf[10] = v66;
      _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "Unregistered for notification,%{public}d,new required location granularity,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BD0A64();
    }

    if (*v11 != v4)
    {
      sub_1001D3BE4(a1, (a1 + 160));
      if (v4 != -1)
      {
        if (v4 == 2)
        {
          (*(**(a1 + 280) + 432))(*(a1 + 280));
          if (*(a1 + 5217) == 1 && *(sub_10000AE98() + 24) == 1)
          {
            sub_10001CAF4(buf);
            v104 = 0.0;
            if (sub_1000B9370(*buf, "LocationControllerRecorderFileAgeThresholdSeconds", &v104))
            {
              v67 = v104;
            }

            else
            {
              v67 = 21600.0;
            }

            if (*&buf[8])
            {
              sub_100008080(*&buf[8]);
            }

            v68 = sub_10002F470();
            v69 = v68 - *(sub_10000AE98() + 32);
            if (v69 > v67)
            {
              if (qword_1025D4600 != -1)
              {
                sub_101BCFF30();
              }

              v70 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
              {
                v71 = sub_10002F470();
                v72 = sub_10000B1F8();
                v73 = sub_100125220(v72);
                *buf = 134349568;
                *&buf[4] = v71;
                *&buf[12] = 2050;
                *&buf[14] = v69;
                *&buf[22] = 2050;
                v109 = v73;
                _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "#locctl,#rec,refreshing the recording file,mct,%{public}.3f,seconds since last,%{public}.2f,propagation_us,%{public}.3f", buf, 0x20u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101BD0B6C(v69);
              }

              v74 = sub_10000AE98();
              sub_1005CADAC(v74);
              v75 = sub_10000AE98();
              sub_1005CAEDC(v75);
              v76 = sub_10000AE98();
              sub_1005CB17C(v76);
              *buf = 0x4000000000000000;
              sub_100671BD8(a1, buf);
            }
          }
        }

        *(a1 + 161) = -1;
        sub_10010FB88(a1, (a1 + 160));
      }
    }

    goto LABEL_154;
  }

  if (v8 > 33)
  {
    if (v8 > 38)
    {
      if (v8 == 39)
      {
LABEL_67:
        v21 = *(a1 + 256);
        if (v21 != (a1 + 264))
        {
          do
          {
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v22 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v23 = *a2;
              v24 = sub_1003DD9F8(a1 + 232, v21 + 8);
              v27 = v24[1];
              v25 = v24 + 1;
              v26 = v27;
              if (*(v25 + 23) >= 0)
              {
                v26 = v25;
              }

              *buf = 67240450;
              *&buf[4] = v23;
              *&buf[8] = 2082;
              *&buf[10] = v26;
              _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "unregistering notification,%{public}d,with,location provider,%{public}s", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_101BCFF30();
              }

              v31 = *a2;
              v32 = sub_1003DD9F8(a1 + 232, v21 + 8);
              v35 = v32[1];
              v33 = v32 + 1;
              v34 = v35;
              if (*(v33 + 23) >= 0)
              {
                v34 = v33;
              }

              LODWORD(v104) = 67240450;
              HIDWORD(v104) = v31;
              *v105 = 2082;
              *&v105[2] = v34;
              v36 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }

            [*(*(v21 + 5) + 16) unregister:*(*(v21 + 5) + 8) forNotification:*a2];
            v28 = *(v21 + 1);
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = *(v21 + 2);
                _ZF = *v29 == v21;
                v21 = v29;
              }

              while (!_ZF);
            }

            v21 = v29;
          }

          while (v29 != (a1 + 264));
        }

        return 1;
      }

      if (v8 == 40)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unregister kNotificationExternalLocationDisablementAssert}", buf, 0x12u);
        }

        if (*(a1 + 344))
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v19 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unregistering kNotificationExternalLocationDisablementAssert w/ accessory provider}", buf, 0x12u);
          }

          v20 = sub_1003DD9F8(a1 + 256, (a1 + 344));
          [*(*v20 + 16) unregister:*(*v20 + 8) forNotification:40];
        }
      }
    }

    else if (v8 == 34)
    {
      if (*(a1 + 336))
      {
        v42 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v42 + 16) unregister:*(*v42 + 8) forNotification:34];
      }
    }

    else if (v8 == 35 && *(a1 + 336))
    {
      v10 = sub_1003DD9F8(a1 + 256, (a1 + 336));
      [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:35];
    }
  }

  else if (v8 > 27)
  {
    if (v8 == 28)
    {
      v43 = 0;
      v44 = *(a1 + 352);
      v98 = *(a1 + 340);
      LODWORD(v99) = v44;
      do
      {
        if (*(&v98 + v43))
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v45 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v46 = *a2;
            v47 = sub_1003DD9F8(a1 + 232, (&v98 + v43));
            v50 = v47[1];
            v48 = v47 + 1;
            v49 = v50;
            if (*(v48 + 23) >= 0)
            {
              v49 = v48;
            }

            *buf = 67240450;
            *&buf[4] = v46;
            *&buf[8] = 2082;
            *&buf[10] = v49;
            _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "unregistering notification,%{public}d,location provider,%{public}s", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v52 = *a2;
            v53 = sub_1003DD9F8(a1 + 232, (&v98 + v43));
            v56 = v53[1];
            v54 = v53 + 1;
            v55 = v56;
            if (*(v54 + 23) >= 0)
            {
              v55 = v54;
            }

            LODWORD(v104) = 67240450;
            HIDWORD(v104) = v52;
            *v105 = 2082;
            *&v105[2] = v55;
            v57 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v57);
            if (v57 != buf)
            {
              free(v57);
            }
          }

          v51 = sub_1003DD9F8(a1 + 256, (&v98 + v43));
          [*(*v51 + 16) unregister:*(*v51 + 8) forNotification:28];
        }

        v43 += 4;
      }

      while (v43 != 8);
      if (*(a1 + 336))
      {
        v58 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v58 + 16) unregister:*(*v58 + 8) forNotification:28];
      }

      v59 = *(a1 + 280);
      if (v59)
      {
        (*(*v59 + 360))(v59, 0);
      }
    }

    else if (v8 == 29)
    {
      if (*(a1 + 336))
      {
        v16 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v16 + 16) unregister:*(*v16 + 8) forNotification:29];
      }

      if (*(a1 + 344))
      {
        v17 = sub_1003DD9F8(a1 + 256, (a1 + 344));
        [*(*v17 + 16) unregister:*(*v17 + 8) forNotification:29];
      }

      sub_100676A88(a1);
    }
  }

  else if (v8 == 15)
  {
    if (*(a1 + 336))
    {
      *buf = 15;
      if (sub_10000608C(a1, buf, 1))
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *buf = _Q0;
        *&buf[16] = 0;
        LODWORD(v109) = 0;
        *&buf[20] = sub_1000F44E4(a1, 15);
        *&v104 = a1 + 336;
        sub_10010A224(a1 + 256, (a1 + 336));
        LODWORD(v104) = 15;
        sub_100109ECC();
      }

      *buf = a1 + 336;
      v63 = sub_10010A224(a1 + 256, (a1 + 336));
      [*(v63[5] + 16) unregister:*(v63[5] + 8) forNotification:15];
    }
  }

  else if (v8 == 17)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF30();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLMM,RunMapMatching is turned off", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BD06A4();
    }

    *(a1 + 675) = 0;
    (*(**(a1 + 280) + 200))(*(a1 + 280));
    (*(**(a1 + 280) + 208))(*(a1 + 280));
  }

  return 1;
}

void sub_1001EEAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008080(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001EEB1C(_BYTE *a1, unsigned int a2)
{
  v45 = a2;
  if (a2)
  {
    *buf = &v45;
    if (*(sub_100109DF4((a1 + 232), &v45) + 911))
    {
      if (a1[672] == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v3 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = &v45;
          v4 = sub_100109DF4((a1 + 232), &v45);
          v5 = v4 + 6;
          if (*(v4 + 71) < 0)
          {
            v5 = *v5;
          }

          *buf = 136315138;
          *&buf[4] = v5;
          _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Unregistering %s location provider as bystander", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          *v46 = &v45;
          v37 = sub_100109DF4((a1 + 232), &v45);
          v38 = v37 + 6;
          if (*(v37 + 71) < 0)
          {
            v38 = *v38;
          }

          *v46 = 136315138;
          *&v46[4] = v38;
          v39 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLocationProvider(LocationProvider)", "%s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }

        *buf = &v45;
        v6 = sub_10010A224((a1 + 256), &v45);
        [*(v6[5] + 16) unregister:*(v6[5] + 8) forNotification:4];
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101874224();
        }

        v15 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = &v45;
          v16 = sub_100109DF4((a1 + 232), &v45);
          v17 = v16 + 6;
          if (*(v16 + 71) < 0)
          {
            v17 = *v17;
          }

          v18 = sub_100107BB8(a1);
          *buf = 136380931;
          *&buf[4] = v17;
          v50 = 2050;
          *v51 = v18;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@ClxProvider, stop, %{private}s, desiredAccuracy, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101874224();
          }

          *v46 = &v45;
          v40 = sub_100109DF4((a1 + 232), &v45);
          v41 = v40 + 6;
          if (*(v40 + 71) < 0)
          {
            v41 = *v41;
          }

          v42 = sub_100107BB8(a1);
          *v46 = 136380931;
          *&v46[4] = v41;
          v47 = 2050;
          v48 = v42;
          v43 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLocationProvider(LocationProvider)", "%s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        if (v45 == *(a1 + 82))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101874224();
          }

          v19 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "WlpReg, 0, loccontroller", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874DFC();
          }

          if (a1[682] == 1 && (*buf = a1 + 336, (*(sub_100109DF4((a1 + 232), a1 + 84) + 911) & 1) == 0))
          {
            if (qword_1025D4600 != -1)
            {
              sub_101873804();
            }

            v27 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "LCPM,stop wifi and release gps throttle", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101874EE0();
            }

            sub_1001EFA0C((a1 + 800));
            a1[682] = 0;
            sub_10017ECA4(a1);
          }

          else
          {
            *buf = a1 + 336;
            if (*(sub_100109DF4((a1 + 232), a1 + 84) + 911) == 1 && a1[160] == 255)
            {
              if (qword_1025D4600 != -1)
              {
                sub_101873804();
              }

              v20 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "LCPM,stop wifi and stop gps", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101874FC4();
              }

              sub_1001EFA0C((a1 + 800));
              sub_1001EEB1C(a1, *(a1 + 84));
            }
          }
        }

        else if (v45 == *(a1 + 83))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101874224();
          }

          v21 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "UclpReg, 0, loccontroller", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874D18();
          }
        }

        else if (v45 == *(a1 + 84))
        {
          *buf = &v45;
          v22 = sub_10010A224((a1 + 256), &v45);
          [*(v22[5] + 16) unregister:*(v22[5] + 8) forNotification:26];
          *buf = 0;
          if (sub_10000608C(a1, buf, 1) && sub_100027514(a1 + 800))
          {
            a1[682] = 1;
            sub_10017ECA4(a1);
            if (qword_1025D4600 != -1)
            {
              sub_101873804();
            }

            v23 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "LCPM,stopping gps but keeping throttle state", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101874A6C();
            }
          }

          else
          {
            a1[682] = 0;
            sub_10017ECA4(a1);
            if (qword_1025D4600 != -1)
            {
              sub_101873804();
            }

            v28 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "LCPM,stopping gps and clearing throttle state", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101874B50();
            }
          }

          if (qword_1025D4650 != -1)
          {
            sub_1018745F8();
          }

          v29 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#wigo,off,LocationController", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874C34();
          }

          AnalyticsSendEventLazy();
        }

        else if (v45 == *(a1 + 86))
        {
          *buf = &v45;
          v24 = sub_10010A224((a1 + 256), &v45);
          [*(v24[5] + 16) unregister:*(v24[5] + 8) forNotification:20];
          *buf = &v45;
          v25 = sub_10010A224((a1 + 256), &v45);
          [*(v25[5] + 16) unregister:*(v25[5] + 8) forNotification:21];
          v26 = *(a1 + 39);
          if (v26)
          {
            sub_100DAB6C0(v26);
          }
        }

        *buf = &v45;
        v30 = sub_10010A224((a1 + 256), &v45);
        [*(v30[5] + 16) unregister:*(v30[5] + 8) forNotification:0];
        *buf = &v45;
        v31 = sub_10010A224((a1 + 256), &v45);
        [*(v31[5] + 16) unregister:*(v31[5] + 8) forNotification:9];
        *buf = &v45;
        *(sub_100109DF4((a1 + 232), &v45) + 910) = 1;
        *buf = &v45;
        *(sub_100109DF4((a1 + 232), &v45) + 911) = 0;
        *buf = &v45;
        sub_100109DF4((a1 + 232), &v45)[114] = 0;
        *buf = &v45;
        if (*(sub_100109DF4((a1 + 232), &v45) + 23) < 0.0)
        {
          v32 = sub_10000B1F8();
          *buf = 0;
          v33 = sub_10001A6B0(v32, buf);
          *buf = &v45;
          *(sub_100109DF4((a1 + 232), &v45) + 172) = v33;
          *buf = &v45;
          sub_100109DF4((a1 + 232), &v45)[23] = 0;
          sub_100021AFC(buf);
          v44 = 0;
          v34 = (*(*a1 + 128))(a1, &v44, buf);
          if (*&v51[3] > 0.0)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          if (v35 == 1)
          {
            v36 = v52;
            *v46 = &v45;
            if (v36 == *(sub_100109DF4((a1 + 232), &v45) + 48))
            {
              *&v51[31] = v33;
              *&v51[37] = 0;
              *v46 = 0;
              (*(*a1 + 136))(a1, v46, buf);
              *v46 = 2;
              (*(*a1 + 136))(a1, v46, buf);
              *v46 = 1;
              (*(*a1 + 136))(a1, v46, buf);
              *v46 = 3;
              (*(*a1 + 136))(a1, v46, buf);
              *v46 = 4;
              (*(*a1 + 136))(a1, v46, buf);
              *v46 = 39;
              (*(*a1 + 136))(a1, v46, buf);
            }
          }

          if (v57)
          {
            sub_100008080(v57);
          }

          if (v56 < 0)
          {
            operator delete(v55);
          }

          if (v54)
          {
            sub_100008080(v54);
          }

          if (v53)
          {
            sub_100008080(v53);
          }
        }
      }

      sub_10010FF14(a1, v45);
      return 1;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v45;
      v10 = sub_100109DF4((a1 + 232), &v45);
      v11 = v10 + 6;
      if (*(v10 + 71) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,stopLocation when provider %s is already stopped", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      *v46 = &v45;
      v12 = sub_100109DF4((a1 + 232), &v45);
      v13 = v12 + 6;
      if (*(v12 + 71) < 0)
      {
        v13 = *v13;
      }

      *v46 = 136315138;
      *&v46[4] = v13;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLocationProvider(LocationProvider)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,stopLocation when provider is None", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018750A8();
      return 0;
    }
  }

  return result;
}

void sub_1001EF9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001EFA0C(uint64_t a1)
{
  if (*(a1 + 520) > 0.0)
  {
    v15 = v1;
    v16 = v2;
    v4 = sub_10000B1F8();
    v14 = 1;
    *(a1 + 536) = sub_10001A6B0(v4, &v14);
    sub_100266DB8(a1);
    *(a1 + 468) = 0;
    *(a1 + 464) = 0;
    *(a1 + 500) = 0;
    *(a1 + 508) = 0;
    *(a1 + 492) = 0;
    *(a1 + 520) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 528) = _Q0;
    if ((*(a1 + 48) & 1) != 0 || sub_100026C04(a1)) && *a1 == 1 && (*(a1 + 49) & 1) == 0 && (*(a1 + 51))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,stopBestAccuracySession,ending session without resetting IO", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876664();
      }
    }

    else
    {
      *(a1 + 472) = 0;
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v11 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,stopBestAccuracySession,ending session and resetting IO", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876740();
      }
    }

    *(a1 + 50) = 0;
  }
}

uint64_t sub_1001EFBA4(uint64_t a1, int *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67240192;
    v16 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CellLoc, unregisterForNotificationInternal, notification, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A61324(a2);
  }

  sub_1001ECC7C(a1);
  if (*a2 <= 4 && ((1 << *a2) & 0x19) != 0)
  {
    if (!sub_10006BDFC(a1))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CellLoc, no more location-related clients - stopping telephony notifications", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A61410();
      }

      v7 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kCellInfoNotification");
      [*(v7 + 16) unregister:*(v7 + 8) forNotification:sub_10006E830(buf)];
      v8 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kTimingAdvanceInfoNotification");
      [*(v8 + 16) unregister:*(v8 + 8) forNotification:sub_10006E830(buf)];
      v9 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kCLCellularTransmitStateNotification");
      [*(v9 + 16) unregister:*(v9 + 8) forNotification:sub_10006E830(buf)];
      v10 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kCellMonitorRefreshResultNotification");
      [*(v10 + 16) register:*(v10 + 8) forNotification:sub_10006E830(buf) registrationInfo:0];
      [*(*(a1 + 144) + 16) unregister:*(*(a1 + 144) + 8) forNotification:3];
      [*(*(a1 + 144) + 16) unregister:*(*(a1 + 144) + 8) forNotification:0];
    }

    if (!*a2)
    {
      *buf = 0;
      if (!sub_10000608C(a1, buf, 1) && *(a1 + 3504) > 0.0)
      {
        v11 = (2290649225 * (CFAbsoluteTimeGetCurrent() - *(a1 + 3504) + 30.0)) >> 32;
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v12 = ((v11 >> 5) + (v11 >> 31));
        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          v16 = v12;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "UclpMetric, regperiod, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A614EC(v12);
        }

        AnalyticsSendEventLazy();
      }

      *(a1 + 3504) = CFAbsoluteTimeGetCurrent();
    }
  }

  return 1;
}

NSDictionary *sub_1001EFF60(uint64_t a1)
{
  v2[1] = @"duration";
  v3[0] = @"unregister";
  v2[0] = @"trigger";
  v3[1] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

void sub_1001EFFF8(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1016C8E1C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAWD::HandleLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1016C8E30();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAWD::HandleLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F01C4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001F01C4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!sub_1001F02EC(a1, a3, a4))
  {
    *(a1 + 1368) = *(a4 + 736);
    if (*a3 == 10)
    {
      if (*(a4 + 96) == 3)
      {
        *(a1 + 2505) = 1;
      }
    }

    else
    {
      *(a1 + 2505) = 0;
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v8 = *a3;
        v9[0] = 67240192;
        v9[1] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "received unhandled notification %{public, location:CLLocationProvider_Type::Notification}d", v9, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016CA960(a3);
      }
    }
  }
}

BOOL sub_1001F02EC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == 46 && *(a3 + 1512) == 1)
  {
    v7 = *(a3 + 1520);
    if (v7 > 0.0)
    {
      *(a1 + 2768) = v7 + *(a1 + 2768);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v8 = (a3 + 1520);
      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v8;
        v11 = *(a1 + 2768);
        v13 = 134349312;
        v14 = v10;
        v15 = 2050;
        v16 = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gnssca,proactiveLoc,gnss,seconds,new,%{public}0.2f,total,%{public}0.2f", &v13, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CAA54();
      }
    }

    *(a1 + 2776) = sub_1000081AC();
    sub_100265D24(a1);
  }

  return v3 == 46;
}

void sub_1001F0438(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AA95F4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssRefLocationCache::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AA9608();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssRefLocationCache::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F0604(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001F0604(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a4 + 96);
    v9 = *a3;
    *v25 = 68289538;
    *&v25[8] = 2082;
    *&v25[10] = "";
    *&v25[18] = 1026;
    *&v25[20] = v8;
    *&v25[24] = 1026;
    *&v25[26] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,Location notification received, type:%{public}d, notification:%{public}d}", v25, 0x1Eu);
  }

  if (*a3 == 33 || *a3 == 5)
  {
    *v25 = 0xFFFF;
    *&v25[4] = 0uLL;
    *&v25[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v25[36] = _Q0;
    *&v25[52] = _Q0;
    *&v25[68] = _Q0;
    *&v25[84] = 0;
    v26 = 0uLL;
    *&v25[88] = 0xBFF0000000000000;
    LODWORD(v27) = 0;
    *(&v27 + 4) = 0xBFF0000000000000;
    HIDWORD(v27) = 0x7FFFFFFF;
    memset(v28, 0, 25);
    sub_100021ED8(v29);
    v15 = *(a4 + 112);
    v26 = *(a4 + 96);
    v27 = v15;
    *v28 = *(a4 + 128);
    *&v28[12] = *(a4 + 140);
    v16 = *(a4 + 48);
    *&v25[32] = *(a4 + 32);
    *&v25[48] = v16;
    v17 = *(a4 + 80);
    *&v25[64] = *(a4 + 64);
    *&v25[80] = v17;
    v18 = *(a4 + 16);
    *v25 = *a4;
    *&v25[16] = v18;
    memcpy(v29, (a4 + 160), 0x201uLL);
    v19 = *(a4 + 680);
    v20 = *(a4 + 688);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v19;
    v21 = v31;
    v31 = v20;
    if (v21)
    {
      sub_100008080(v21);
    }

    v22 = *(a4 + 776);
    v36 = *(a4 + 760);
    v37[0] = v22;
    *(v37 + 9) = *(a4 + 785);
    v23 = *(a4 + 712);
    v32 = *(a4 + 696);
    v33 = v23;
    v24 = *(a4 + 744);
    v34 = *(a4 + 728);
    v35 = v24;
    sub_1001D7EBC(a1, v25);
    if (v31)
    {
      sub_100008080(v31);
    }
  }
}

BOOL sub_1001F0848(unsigned int a1)
{
  if (a1 >= 0x2AC)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019846C8();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Bad index into kkDefenseMappingAgencyTenByTenGeoid.", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019846DC();
    }
  }

  return a1 < 0x2AC;
}

uint64_t sub_1001F08F0(int *a1)
{
  result = *a1;
  if ((result - 1) >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client location match quality type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B848A8(a1);
      return 0;
    }
  }

  return result;
}

void sub_1001F09E4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F0EC4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001F0BB0(int *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private gnss content type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84B6C(a1);
      return 0;
    }
  }

  return result;
}

double sub_1001F0CA0(uint64_t a1)
{
  *a1 = off_1024522C0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 32) = 0xFFFFFFFFLL;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1001F0CD8(unsigned __int8 *a1)
{
  result = *a1;
  if (result >= 4)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private map matcher type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84D44(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F0DC8(int *a1)
{
  result = *a1;
  if ((result - 1) >= 2 && result != 0xFFFF)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v4 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled client location suitability type: %{public}d", v7, 8u);
    }

    v6 = sub_10000A100(121, 0);
    result = 0;
    if (v6)
    {
      sub_101B84328(a1);
      return 0;
    }
  }

  return result;
}

void sub_1001F0EC4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 33 && (*(a4 + 672) & 1) == 0)
  {
    sub_100022008(v5, a4);
    sub_1001DFD80(*(a1 + 672), v5);

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

void sub_1001F0F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F0F6C(int *a1)
{
  result = *a1;
  if ((result + 1) >= 4)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled undulation model type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84994(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F1060(int *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client location origin device type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84A80(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F1150(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 32);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 36) = v5;
  return v5;
}

uint64_t sub_1001F11E4(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_1001F1250(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
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
  v7 = *(v5 + 25);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_1001F1300(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_1001F136C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

void *sub_1001F13F8(void *result)
{
  *result = off_102452068;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1001F141C(int *a1)
{
  result = *a1;
  if (((result - 25) > 0x32 || ((1 << (result - 25)) & 0x4000002000001) == 0) && result != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v5 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Received unhandled location integrity type: %{public}d", v7, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B84500(a1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1001F152C(int *a1)
{
  result = *a1;
  if (result >= 3)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client location reference frame type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B845EC(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F163C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

void sub_1001F16B0(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F187C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001F187C(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 5)
  {
    v5 = result;
    v6 = *(a4 + 4);
    v7 = *(a4 + 12);
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134545921;
      v19 = v6;
      v20 = 2053;
      v21 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Received leeched location, lat, %{sensitive}.7f, lon, %{sensitive}.7f", &v18, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904660(v6, v7);
    }

    v9 = v6;
    v10 = v7;
    (*(**(v5 + 8264) + 48))(*(v5 + 8264), v9, v10);
    result = *(v5 + 8392);
    if (result)
    {
      result = sub_100C1BA18(result, v6, v7);
    }

    if (*(v5 + 10280) == 1)
    {
      v11 = *a4;
      *(v5 + 9712) = a4[1];
      *(v5 + 9696) = v11;
      v12 = a4[2];
      v13 = a4[3];
      v14 = a4[4];
      *(v5 + 9776) = a4[5];
      *(v5 + 9760) = v14;
      *(v5 + 9744) = v13;
      *(v5 + 9728) = v12;
      v15 = *(a4 + 140);
      v16 = a4[6];
      v17 = a4[7];
      *(v5 + 9824) = a4[8];
      *(v5 + 9808) = v17;
      *(v5 + 9792) = v16;
      *(v5 + 9836) = v15;
    }
  }

  return result;
}

id sub_1001F1A34(uint64_t a1, __int128 *a2)
{
  v2 = a1 - 152;
  v6 = *a2;
  v7 = *(a2 + 4);
  v3 = [*(a1 + 16) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021850C;
  v5[3] = &unk_102460E48;
  v5[4] = v2;
  return [v3 async:v5];
}

void *sub_1001F1AC4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1001F1B94(uint64_t a1, char *a2, char a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    v8 = *(a1 + 681);
    *buf = 67240448;
    v31 = v7;
    v32 = 1026;
    v33 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Stopping all location providers that are worse than kDynamicLocationProvider %{public}d,KeepGpsOnWithAccessory,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187518C(a2, a1);
  }

  v9 = *(a1 + 232);
  if (v9 == (a1 + 240))
  {
    return 0;
  }

  v10 = 0;
  do
  {
    if (!*(v9 + 8))
    {
      goto LABEL_42;
    }

    v11 = *(v9 + 909);
    if (v11 == -1)
    {
      goto LABEL_42;
    }

    if (*(v9 + 911) != 1 || v11 >= *a2)
    {
      goto LABEL_42;
    }

    if (*(v9 + 226) != 1)
    {
LABEL_36:
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v22 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v23 = *a2;
        v24 = *(v9 + 909);
        *buf = 67240448;
        v31 = v23;
        v32 = 1026;
        v33 = v24;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "got better location provider,%{public}d,stopping worse location provider,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLessDesirableProviders(const DynamicLocationProvider &, BOOL)", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      v10 = sub_1001EEB1C(a1, *(v9 + 10));
      goto LABEL_42;
    }

    v13 = sub_1003DFB20(a1, a3);
    v14 = *a2;
    if (v13 && v14 == 5)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v16 = *a2;
        v17 = *(v9 + 909);
        *buf = 67240448;
        v31 = v16;
        v32 = 1026;
        v33 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "got better location provider,%{public}d,NOT stopping worse location provider,%{public}d,isAccessorySpecialCase,1", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (*(v9 + 226) != 1 || v14 != 3)
      {
        goto LABEL_36;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v18 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v19 = *a2;
        v20 = *(v9 + 909);
        *buf = 67240448;
        v31 = v19;
        v32 = 1026;
        v33 = v20;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "got better location provider,%{public}d,NOT stopping worse location provider,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 == -1)
        {
          goto LABEL_34;
        }

LABEL_53:
        sub_101873804();
LABEL_34:
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLessDesirableProviders(const DynamicLocationProvider &, BOOL)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

LABEL_42:
    v25 = v9[1];
    if (v25)
    {
      do
      {
        v26 = v25;
        v25 = *v25;
      }

      while (v25);
    }

    else
    {
      do
      {
        v26 = v9[2];
        v27 = *v26 == v9;
        v9 = v26;
      }

      while (!v27);
    }

    v9 = v26;
  }

  while (v26 != (a1 + 240));
  if (v10)
  {
    sub_100110094(a1);
    return 1;
  }

  return 0;
}

void sub_1001F20F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100072814(a2);
  if (v4)
  {
    v5 = *(a2 + 96);
    v6 = v5 > 0xB;
    v7 = (1 << v5) & 0xC12;
    if (!v6 && v7 != 0)
    {
      sub_1001EC9FC(v4, a1 + 912, a2);
    }

    sub_1001F2170(a1);
  }
}

void sub_1001F2170(uint64_t a1)
{
  if (*(a1 + 1068) == 1 && *(a1 + 156) == 1 && *(a1 + 856) == 1 && *(a1 + 872) == 1 && *(a1 + 888) == 1 && *(a1 + 904) == 1)
  {
    v2 = (a1 + 916);
    if (vabdd_f64(*(a1 + 988), *(a1 + 864)) > 30.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A8AF54();
      }

      v3 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if ((*(a1 + 872) & 1) == 0)
        {
          goto LABEL_47;
        }

        v4 = vabdd_f64(*(a1 + 988), *(a1 + 864));
        *buf = 134349056;
        v16 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,submitTimingAdvanceErrorToUncMetric,large time gap between reference and cell locations, timedelta, %{public}.3f, return", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101A8AF68();
      }

      if (*(a1 + 872))
      {
        v5 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CellTimingAdvanceMetrics::submitTimingAdvanceErrorToUncMetric()", "%s\n", v5);
        if (v5 != buf)
        {
          free(v5);
        }

        return;
      }

      goto LABEL_47;
    }

    v6 = *(a1 + 20);
    v7 = -1.0;
    if (v6 > 0.0)
    {
      v8 = sub_100117154(*(a1 + 4), *(a1 + 12), *v2, *(a1 + 924));
      if ((*(a1 + 156) & 1) == 0)
      {
        goto LABEL_47;
      }

      v7 = v8 / v6;
    }

    if ((*(a1 + 1068) & 1) == 0 || (*(a1 + 888) & 1) == 0)
    {
LABEL_47:
      sub_100173BA0();
    }

    v9 = *(a1 + 880);
    if (v9 > 0.0)
    {
      v10 = sub_100117154(*(a1 + 4), *(a1 + 12), *v2, *(a1 + 924));
      if (v7 > 0.0)
      {
        v11 = v10 / v9;
        if (v11 > 0.0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101A8AF54();
          }

          v12 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1 + 1008);
            *buf = 134349824;
            v16 = v7;
            v17 = 2050;
            v18 = v11;
            v19 = 2050;
            v20 = v7 / v11;
            v21 = 1026;
            v22 = v13;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,errorToUncRatio,%{public}.3f,errorToUncRatioInflated,%{public}.3f,ta_to_cell_unc_ratio,%{public}.3f, reference_type, %{public}d", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101A8AF68();
            }

            v14 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CellTimingAdvanceMetrics::submitTimingAdvanceErrorToUncMetric()", "%s\n", v14);
            if (v14 != buf)
            {
              free(v14);
            }
          }

          AnalyticsSendEventLazy();
          if (*(a1 + 156) == 1)
          {
            *(a1 + 156) = 0;
          }

          if (*(a1 + 856) == 1)
          {
            sub_10056D2F4(a1 + 160);
            *(a1 + 856) = 0;
          }

          if (*(a1 + 888) == 1)
          {
            *(a1 + 888) = 0;
          }

          if (*(a1 + 1068) == 1)
          {
            *(a1 + 1068) = 0;
          }

          if (*(a1 + 872) == 1)
          {
            *(a1 + 872) = 0;
          }
        }
      }
    }
  }
}