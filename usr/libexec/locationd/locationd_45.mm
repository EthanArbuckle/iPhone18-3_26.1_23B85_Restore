__n128 sub_1002F40B4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    v3 = sub_10067DFB8(a1, a2);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 48) = *(a2 + 48);
    result = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = result;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(v3 + 80) = 1;
  }

  return result;
}

uint64_t sub_1002F4330@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = a2;
  v5 = result + 104;
  v4 = *(result + 104);
  if (!v4)
  {
    goto LABEL_8;
  }

  result += 96;
  v6 = v5;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != v5 && *(v6 + 32) <= a2)
  {
    v10 = &v9;
    v8 = sub_100F21E2C(result, &v9);
    *a3 = *(v8 + 40);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    result = sub_10038EB38(a3 + 8, v8[6], v8[7], (v8[7] - v8[6]) >> 2);
    v7 = 1;
  }

  else
  {
LABEL_8:
    v7 = 0;
    *a3 = 0;
  }

  *(a3 + 32) = v7;
  return result;
}

void sub_1002F43F8(uint64_t a1, void **a2, int a3)
{
  v6 = 0;
  v7 = 44;
  while (dword_101D04FC0[v6] < a3)
  {
    ++v6;
    v7 -= 4;
    if (!v7)
    {
      v6 = 11;
LABEL_12:
      if (a1 + 160 == sub_10045EF04(a1 + 152, a2))
      {
        sub_100C1DCE8(buf, 0xCuLL);
        v9 = sub_1002F45FC(a1 + 152, a2);
        v10 = v9[7];
        if (v10)
        {
          v9[8] = v10;
          operator delete(v10);
          v9[7] = 0;
          v9[8] = 0;
          v9[9] = 0;
        }

        *(v9 + 7) = *buf;
        v9[9] = v13;
      }

      *buf = a2;
      v11 = sub_1002F45FC(a1 + 152, a2);
      ++*(*(v11 + 56) + 4 * v6);
      return;
    }
  }

  if (v6 < 0xC)
  {
    goto LABEL_12;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101AA88C8();
  }

  v8 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
  {
    *buf = 67240448;
    *&buf[4] = v6;
    *&buf[8] = 1026;
    *&buf[10] = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "WifiAps, fix ap count per scan type, invalid bucket index, %{public}d, # of fix APs, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101AA8AAC(v6, a3);
  }
}

void sub_1002F45D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F45FC(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    sub_100E534D8();
  }

  return v2;
}

uint64_t sub_1002F46A4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = (v1 + 112);
    sub_1000B96B4(&v2);
    if (*(v1 + 96) == 1 && *(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1002F4740(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002E80E0(a1, a2);
  *(v3 + 96) = 0;
  if (*(v3 + 40) <= 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101AA88C8();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      *buf = 67109120;
      v9 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Initializing with invalid channel, %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AA8884(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CL::Wifi1::Types::AssociatedAp::AssociatedAp(const CLWifiService_Type::AccessPoint)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    if (*(a1 + 88) == 1)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *(a1 + 88) = 0;
    }
  }

  return a1;
}

void sub_1002F48EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F4920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002F737C(a1, &v16);
  sub_1002F737C(a2, &__p);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = __p.__r_.__value_.__l.__size_;
  }

  if (size != v6 || ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v16) : (v7 = v16.__r_.__value_.__r.__words[0]), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v8 = &__p) : (v8 = __p.__r_.__value_.__r.__words[0]), memcmp(v7, v8, size)))
  {
    if (qword_1025D4630 != -1)
    {
      sub_101A66C70();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v10 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v16.__r_.__value_.__r.__words[0];
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136381187;
      v24 = v10;
      v25 = 2081;
      v26 = p_p;
      v27 = 2081;
      v28 = a3;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiFlow, updating associated AP from %{private}s to %{private}s using event %{private}s", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A66C2C(buf);
      v12 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v16.__r_.__value_.__r.__words[0];
      }

      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v17 = 136381187;
      v18 = v12;
      v19 = 2081;
      v20 = v13;
      v21 = 2081;
      v22 = a3;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PrePositionCalculationStateUpdate::logAssociatedApUpdate(const Types::AssociatedAp &, const Types::AssociatedAp &, const char *)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1002F4B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F4BD4(void *a1, __n128 *a2, double a3)
{
  v5 = a1[5];
  if (!v5)
  {
    sub_101213428(a1, a2);
    return;
  }

  v7 = *(a1[1] + 8 * ((v5 + a1[4] - 1) / 0xAAuLL)) + 24 * ((v5 + a1[4] - 1) % 0xAAuLL);
  if (!sub_100195A00(v7, a2))
  {
    v8 = (v7 + 8);
    v9 = *(v7 + 8);
    if (v9 <= a3)
    {
      *(v7 + 16) = a3;
      if (qword_1025D4620 != -1)
      {
        sub_101B730E4();
      }

      v17 = a3 - v9;
      v18 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_10018F0D0(&buf);
        v19 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        LODWORD(__p.__r_.__value_.__l.__data_) = 136380931;
        *(__p.__r_.__value_.__r.__words + 4) = v19;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2049;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AssociatedApHistory, previous associated AP %{private}s lasted for %{private}.1fs", &__p, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101B730F8();
        }

        sub_10018F0D0(&__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v31.__r_.__value_.__l.__data_) = 136380931;
        *(v31.__r_.__value_.__r.__words + 4) = p_p;
        WORD2(v31.__r_.__value_.__r.__words[1]) = 2049;
        *(&v31.__r_.__value_.__r.__words[1] + 6) = v17;
        v28 = _os_log_send_and_compose_impl();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLAssociatedApHistory::receiveAssociatedApNotification(const CLMacAddress &, const CFAbsoluteTime)", "%s\n", v28);
        if (v28 != &buf)
        {
          free(v28);
        }
      }

      goto LABEL_56;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B730E4();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v11 = *v8;
      LODWORD(buf.__r_.__value_.__l.__data_) = 134283777;
      *(buf.__r_.__value_.__r.__words + 4) = a3;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "AssociatedApHistory, warning, timestamp out of order, given timestamp %{private}.4f is less than last interval start timestamp, %{private}.4f", &buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B73120(v8, a3);
    }

    v12 = *v8 - a3;
    if (v12 < 300.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B730F8();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        sub_10018F0D0(&__p);
        v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
        *(buf.__r_.__value_.__r.__words + 4) = v14;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
        v35 = 0x4072C00000000000;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "AssociatedApHistory, ignoring associated AP %{private}s as delta %{private}.1f is less than %{private}.1f", &buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 0))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101B730F8();
        }

        sub_10018F0D0(&v31);
        if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v31;
        }

        else
        {
          v15 = v31.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
        *(__p.__r_.__value_.__r.__words + 4) = v15;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2049;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v12;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2049;
        v33 = 0x4072C00000000000;
        v16 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLAssociatedApHistory::receiveAssociatedApNotification(const CLMacAddress &, const CFAbsoluteTime)", "%s\n", v16);
        if (v16 != &buf)
        {
          free(v16);
        }
      }

      return;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B730F8();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      sub_10018F0D0(&__p);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2049;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
      v35 = 0x4072C00000000000;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "AssociatedApHistory, resetting history and adding associated AP %{private}s as delta %{private}.1f is no less than %{private}.1f", &buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 0))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B730F8();
      }

      sub_10018F0D0(&v31);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v31;
      }

      else
      {
        v29 = v31.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
      *(__p.__r_.__value_.__r.__words + 4) = v29;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2049;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 2049;
      v33 = 0x4072C00000000000;
      v30 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 0, "void CLAssociatedApHistory::receiveAssociatedApNotification(const CLMacAddress &, const CFAbsoluteTime)", "%s\n", v30);
      if (v30 != &buf)
      {
        free(v30);
      }
    }

    v22 = a1[1];
    v23 = a1[2];
    a1[5] = 0;
    v24 = (v23 - v22) >> 3;
    if (v24 >= 3)
    {
      do
      {
        operator delete(*v22);
        v25 = a1[2];
        v22 = (a1[1] + 8);
        a1[1] = v22;
        v24 = (v25 - v22) >> 3;
      }

      while (v24 > 2);
    }

    if (v24 == 1)
    {
      v26 = 85;
    }

    else
    {
      if (v24 != 2)
      {
LABEL_56:
        sub_101213428(a1, a2);
        return;
      }

      v26 = 170;
    }

    a1[4] = v26;
    goto LABEL_56;
  }
}

void *sub_1002F537C(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102468288;
  sub_1002E892C((a1 + 3), a2);
  a1[8] = *(a2 + 40);
  return a1;
}

double sub_1002F53E4(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 6300))
  {
    v4 = "Emer";
LABEL_3:
    v5 = 6;
    goto LABEL_23;
  }

  if (*(a1 + 6477) == 1)
  {
    v6 = "Motion";
    v7 = 6;
    v8 = 60;
    if (a3)
    {
      v8 = 15;
    }

    v9 = 300;
    if (a3)
    {
      v9 = 15;
    }

    if (a2 == 1)
    {
      v7 = v9;
      v6 = "Frozen";
    }

    if (a2 == 2)
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }

    if (a2 == 2)
    {
      v4 = "Static";
    }

    else
    {
      v4 = v6;
    }
  }

  else
  {
    if (!sub_100103C94(a1 + 3312))
    {
      v4 = "Unassociated";
      goto LABEL_3;
    }

    if (sub_10018A9B8(a1 + 3312) && (sub_100E53488(a1 + 3312) & 1) != 0)
    {
      v4 = "InvalidAssoc";
      goto LABEL_3;
    }

    v4 = "Assoc";
    v5 = 300;
  }

LABEL_23:
  if (qword_1025D4630 != -1)
  {
    sub_101A66C18();
  }

  v11 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240706;
    v15 = v5;
    v16 = 1026;
    v17 = a3;
    v18 = 2082;
    v19 = v4;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiTimer, nextscan, %{public}d, haveLoc, %{public}d, codepath, %{public}s", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_101A66C70();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "cl::chrono::secondsf CL::Wifi1::Policies::PrePositionCalculationStateUpdate::HandleEvent::selectNextScanInterval(CLMotionActivity::Type, BOOL) const", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return v5;
}

void sub_1002F5678(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    do
    {
      sub_1002F57AC(a1, v4 + 2);
      v4 = *v4;
    }

    while (v4);
    for (i = *(a2 + 16); i; i = *i)
    {
      sub_10018583C(a1, i + 2);
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_101A66C18();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[3];
    v8 = *(a2 + 24);
    v9 = 134349312;
    v10 = v7;
    v11 = 2050;
    v12 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "@WifiAps, history, %{public}lu, add, %{public}lu", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A66C98(a1, a2);
  }
}

uint64_t *sub_1002F57AC(void *a1, uint64_t *a2)
{
  result = sub_1002F57E4(a1, a2);
  if (result)
  {
    sub_10014E5B0(a1, result);
    return 1;
  }

  return result;
}

void *sub_1002F57E4(void *a1, uint64_t *a2)
{
  v16 = *a2;
  v4 = sub_10018D3FC(&v16);
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
      if (v12 == v6)
      {
        v16 = v11[2];
        v13 = sub_10018D3FC(&v16);
        v15 = *a2;
        if (v13 == sub_10018D3FC(&v15))
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

uint64_t sub_1002F590C(unsigned __int8 *a1, unsigned __int8 a2)
{
  if ((a1[6] & 1) != 0 || a1[4] != a2)
  {
    if ((a1[7] & 1) != 0 || a1[5] != a2)
    {
      return 0;
    }

    else
    {
      v2 = 1;
      a1[7] = 1;
    }
  }

  else
  {
    v2 = 1;
    a1[6] = 1;
  }

  return v2;
}

void sub_1002F595C(int a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    *(a3 + 32) = *(v4 + 32);
    sub_1002F59C8(a3, *(v4 + 16), 0);
  }

  *(a3 + 40) = *(v4 + 40);
  *(a3 + 48) = *(v4 + 48);

  sub_1000F8F80(a3 + 56, v4 + 56);
}

void sub_1002F59C8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v8[2] = v4->__r_.__value_.__r.__words[2];
        std::string::operator=(v8 + 1, v4 + 1);
        v11 = *&v4[2].__r_.__value_.__l.__data_;
        v12 = *&v4[2].__r_.__value_.__r.__words[2];
        v13 = *&v4[3].__r_.__value_.__r.__words[1];
        v8[12] = v4[4].__r_.__value_.__l.__data_;
        *(v8 + 4) = v12;
        *(v8 + 5) = v13;
        *(v8 + 3) = v11;
        v10 = *v8;
        sub_1002F5AE4(a1, v8);
        v4 = v4->__r_.__value_.__r.__words[0];
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_100103B50(a1, v10);
  }

  if (v4 != a3)
  {
    sub_1007BE5C0();
  }
}

void sub_1002F5AB4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100103B50(v1, v2);
  __cxa_rethrow();
}

void *sub_1002F5AE4(void *a1, void *a2)
{
  v4 = a2 + 2;
  v8 = a2[2];
  v5 = sub_10018D3FC(&v8);
  a2[1] = v5;
  v6 = sub_1002F5B54(a1, v5, v4);
  sub_1007BE1F4(a1, a2, v6);
  return a2;
}

void *sub_1002F5B54(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_1007BE2DC(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        if (v19 == a2)
        {
          v26 = v17[2];
          v21 = sub_10018D3FC(&v26);
          v25 = *a3;
          v22 = v21 == sub_10018D3FC(&v25);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22 != (v18 & 1);
        if (v18 & v23)
        {
          break;
        }

        v18 |= v23;
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void sub_1002F5F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_1007BE994(&a56);
  sub_1004906DC(&a37);
  sub_1007BE994(&STACK[0x1AF8]);
  _Unwind_Resume(a1);
}

void sub_1002F737C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (sub_100103C94(a1))
  {
    sub_10018D3FC(a1);
    sub_10018F0D0(a2);
  }

  else
  {

    sub_10000EC00(a2, "none");
  }
}

uint64_t sub_1002F7510(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1002F75C0(uint64_t a1, void *a2)
{
  v2 = *sub_100197070(a1, &v4, a2);
  if (!v2)
  {
    sub_1000432E8("map::at:  key not found");
  }

  return v2 + 40;
}

void sub_1002F760C(uint64_t a1)
{
  (*(**(a1 + 152) + 88))(*(a1 + 152));

  sub_1002F76A4(a1 + 1064);
}

void sub_1002F76A4(uint64_t a1)
{
  if (*(a1 + 8) > 0.0 && *(a1 + 64) <= 0.0)
  {
    *(a1 + 64) = CFAbsoluteTimeGetCurrent();
  }
}

uint64_t sub_1002F76E8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1002E9690((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void sub_1002F776C(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F78A8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 3)
  {
    v4 = (*(**(a1 + 56) + 64))(*(a1 + 56));
    if (v4 - *(a1 + 400) >= *(a1 + 392))
    {
      v18 = 0;
      v19 = -1.79769313e308;
      v16 = 0;
      v17 = 0;
      (*(**(a1 + 56) + 240))(*(a1 + 56), &v16, &v19);
      if (v4 - v19 <= *(a1 + 464))
      {
        v5 = [NSMutableArray alloc];
        v6 = [v5 initWithCapacity:0x2E8BA2E8BA2E8BA3 * ((v17 - v16) >> 3)];
        v8 = v16;
        v9 = v17;
        if (v16 != v17)
        {
          *&v7 = 68289282;
          v15 = v7;
          do
          {
            if (*(v8 + 32))
            {
              v10 = objc_alloc_init(CLPPoiWifiAccessPoint);
              [v10 setAge:*(v8 + 48)];
              [v10 setScanTimestamp:*(v8 + 56)];
              [v10 setChannel:*(v8 + 40)];
              sub_1000ECEAC(&__p);
              if ((v24 & 0x80000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              [v10 setMac:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", p_p, v15)}];
              if (SBYTE3(v24) < 0)
              {
                operator delete(__p);
              }

              [v10 setRssi:*(v8 + 32)];
              [v6 addObject:v10];
            }

            else
            {
              if (qword_1025D47D0 != -1)
              {
                sub_1002E8D80();
              }

              v12 = qword_1025D47D8;
              if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
              {
                __p = v15;
                v21 = 2082;
                v22 = "";
                v23 = 2050;
                v24 = 9;
                _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ignoring sentinel access point, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &__p, 0x1Cu);
              }
            }

            v8 += 88;
          }

          while (v8 != v9);
        }

        [*(a1 + 408) setObject:v6 forKeyedSubscript:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v19, v15)}];
        if (qword_1025D47D0 != -1)
        {
          sub_1002E8D80();
        }

        v13 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v14 = [*(a1 + 408) count];
          __p = 68289539;
          v21 = 2082;
          v22 = "";
          v23 = 2050;
          v24 = 9;
          v25 = 2049;
          v26 = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:adding scan to buffer, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, bufferedWifiCount:%{private}lu}", &__p, 0x26u);
        }

        *(a1 + 400) = v4;
        sub_1002448F8(a1);
      }

      __p = &v16;
      sub_1000B96B4(&__p);
    }
  }
}

void sub_1002F7CA0(uint64_t a1, uint64_t *a2, void *a3)
{
  memset(v16, 0, sizeof(v16));
  v5 = [objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")];
  if (v5)
  {
    v5[2](&v14);
    v6 = v14;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v6 = 0;
  }

  *a3 = v6;
  if ((&v14 + 8) != a2)
  {
    sub_100288978(a2, *(&v14 + 1), v15, 0x2E8BA2E8BA2E8BA3 * ((v15 - *(&v14 + 1)) >> 3));
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    while (!sub_1002F8354(v7))
    {
      v7 += 88;
      if (v7 == v8)
      {
        v7 = v8;
        goto LABEL_18;
      }
    }

    if (v7 != v8)
    {
      for (i = v7 + 88; i != v8; i += 88)
      {
        if (!sub_1002F8354(i))
        {
          *v7 = *i;
          if (*(v7 + 31) < 0)
          {
            operator delete(*(v7 + 8));
          }

          v10 = *(i + 8);
          *(v7 + 24) = *(i + 24);
          *(v7 + 8) = v10;
          *(i + 31) = 0;
          *(i + 8) = 0;
          v11 = *(i + 32);
          v12 = *(i + 48);
          v13 = *(i + 64);
          *(v7 + 80) = *(i + 80);
          *(v7 + 48) = v12;
          *(v7 + 64) = v13;
          *(v7 + 32) = v11;
          v7 += 88;
        }
      }
    }
  }

LABEL_18:
  sub_1002F83E8(a2, v7, a2[1]);
  v17 = &v14 + 1;
  sub_1000B96B4(&v17);
  *&v14 = v16;
  sub_1000B96B4(&v14);
}

void sub_1002F7E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_1000B96B4(&a16);
  a9 = &a13;
  sub_1000B96B4(&a9);
  _Unwind_Resume(a1);
}

void sub_1002F7E68(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  for (i = (a1 + 16); ; sub_1005729E8(a3, (i + 3)))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    *(i[3] + 24) = llroundf(*(i[3] + 24) / *(i + 10));
  }

  v6 = *(a3 + 8);
  if (a2 < ((v6 - *a3) >> 4))
  {
    if (a2)
    {
      sub_1002F9AD0(*a3, (*a3 + 16 * a2), v6, v7);
    }

    sub_1002F9FFC(a3, a2);
  }
}

void sub_1002F7F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004CA974(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002F7F94(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *a1 = off_1024D48C8;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 32) = 0;
  *(a1 + 32) = nullsub_34(0);
  *(a1 + 40) = 0x7FFFFFFF;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0x7FFFFFFF;
  return a1;
}

void sub_1002F8018(void *a1, void *a2)
{
  v4 = sub_1002DFD60(a1, (*a2 + 8));
  if (v4)
  {
    *(v4[3] + 24) += *(*a2 + 24);
    ++*(v4 + 10);
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1002F80D4(a1, (v5 + 8));
    if (v7)
    {
      sub_100008080(v7);
    }
  }
}

void sub_1002F80BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F80D4(void *a1, void *a2)
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
    operator new();
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

BOOL sub_1002F8354(uint64_t a1)
{
  v8[19] = 6;
  strcpy(v8, "ap");
  v1 = (a1 + 8);
  v2 = *(a1 + 31);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = *(a1 + 16);
    if (v2 >= 6)
    {
      v1 = *v1;
      goto LABEL_7;
    }

    return 0;
  }

  if (v2 < 6)
  {
    return 0;
  }

LABEL_7:
  v4 = 0;
  v5 = v1 + v2 - 1;
  do
  {
    result = v4 == -6;
    if (v4 == -6)
    {
      break;
    }

    v6 = v8[v4 + 1];
    v7 = *(v5 + v4--);
  }

  while (v6 == v7);
  return result;
}

uint64_t sub_1002F83E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_1003166B0(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        if (*(v7 - 57) < 0)
        {
          operator delete(*(v7 - 80));
        }

        v7 -= 88;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void sub_1002F8470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 3)
  {
    v7 = (*(**(a1 + 368) + 56))(*(a1 + 368));

    sub_1002F85F0(a1, v7, 3, a4);
  }
}

void sub_1002F85BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 - 40) = v14;
  sub_1000B96B4((v15 - 40));
  *(v15 - 40) = &a14;
  sub_1000B96B4((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_1002F85F0(uint64_t a1, _OWORD *a2, int a3, uint64_t a4)
{
  if ((*(**(a1 + 56) + 184))(*(a1 + 56)))
  {
    if (*(a1 + 448) && (*(**(a1 + 368) + 64))(*(a1 + 368)))
    {
      v8 = sub_1012E77E8(a1, a2);
      v9 = [*(a1 + 384) classifyLoiTypeForLocation:v8];

      sub_1004D032C(*(a1 + 448), a2, a3, a4, v9);
    }

    if (a3 == 3)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101BA791C();
      }

      v10 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *&v11 = *(a4 + 1);
        *buf = 68289539;
        *&buf[4] = 0;
        *v28 = 2082;
        *&v28[2] = "";
        *&v28[10] = 2050;
        *&v28[12] = 2;
        v29 = 2049;
        v30 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onWifiNotification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, scanType:%{private, location:CLWifiService_Type::ScanType}lld}", buf, 0x26u);
      }

      v12 = *(a4 + 1) > 4u;
    }

    else
    {
      v12 = 1;
    }

    v17 = (*(**(a1 + 56) + 64))(*(a1 + 56));
    v19 = vabdd_f64(v17, *(a1 + 400));
    v20 = sub_1002CEC0C(a1 + 280, v18) * 0.5;
    if (v19 <= v20 && v12)
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101BA78F4();
      }

      v22 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        *v28 = 2082;
        *&v28[2] = "";
        *&v28[10] = 2050;
        *&v28[12] = 2;
        v29 = 2049;
        v30 = v19;
        v31 = 2049;
        v32 = v20;
        v14 = "{msg%{public}.0s:scans are too frequent, ignoring scan, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, timeSinceLastHarvest_s:%{private}.09f, allowedWifiScansInterval_s:%{private}.09f}";
        v15 = v22;
        v16 = 48;
        goto LABEL_24;
      }
    }

    else
    {
      if ((*(a1 + 392) & 0x80000000) != 0 || (*(*a1 + 168))(a1) < *(a1 + 392))
      {
        v25 = 0;
        *buf = 0;
        *v28 = 0;
        *&v28[8] = 0;
        (*(**(a1 + 56) + 240))(*(a1 + 56), buf, &v25);
        sub_1012E79D8(a1, a2, buf, *(a4 + 1));
        *(a1 + 204) -= 1171354717 * ((*v28 - *buf) >> 3);
        v26 = buf;
        sub_1000B96B4(&v26);
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101BA78F4();
        }

        v23 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 392);
          *buf = 68289539;
          *&buf[4] = 0;
          *v28 = 2082;
          *&v28[2] = "";
          *&v28[10] = 2050;
          *&v28[12] = 2;
          v29 = 1025;
          LODWORD(v30) = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:wifi scan exceeds max locations - ignoring, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxHarvestPointCount:%{private}d}", buf, 0x22u);
        }
      }

      *(a1 + 400) = v17;
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101BA791C();
    }

    v13 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v28 = 2082;
      *&v28[2] = "";
      *&v28[10] = 2050;
      *&v28[12] = 2;
      v14 = "{msg%{public}.0s:not harvesting eligible - skipping, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
      v15 = v13;
      v16 = 28;
LABEL_24:
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, v14, buf, v16);
    }
  }
}

void sub_1002F8A98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_1002F8AB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F7870;
  v4[3] = &unk_10245FB88;
  v5 = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_100071CE4(a1, 8u, v4);
}

uint64_t sub_1002F8B34(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 0.0)
  {
    return 1;
  }

  v5 = a2 - v3;
  if (a3 >= 0.0)
  {
    v6 = v3 == a2;
    v7 = v3 < a2;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7 || v6)
  {
    v8 = v5 == a3;
    v9 = v5 < a3;
  }

  else
  {
    v8 = 1;
    v9 = 0;
  }

  if (v9 || v8)
  {
    return CLMotionActivity::isTypeUnclassifiedMoving();
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002F8B84(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 1;
  if (v3 >= 0.0)
  {
    v5 = a3 >= 0.0 && v3 <= a2;
    v6 = !v5 || a2 - v3 <= a3;
    if (!v6 || !CLMotionActivity::isTypeStatic() || *(a1 + 44))
    {
      return 0;
    }
  }

  return result;
}

void sub_1002F8BE8(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 56) == 1 && a2 > 5.0)
  {
    v6 = *(a1 + 16);
    if (fabs(v6) >= 0.001)
    {
      v7 = 1.0;
      v8 = 1.0 - (a2 + -5.0) / (a2 + 5.0);
      if (v8 <= 1.0)
      {
        v7 = 1.0 - (a2 + -5.0) / (a2 + 5.0);
      }

      v9 = v8 < 0.0;
      v10 = 0.0;
      if (!v9)
      {
        v10 = v7;
      }

      v11 = *(a1 + 40) - v6 * v10;
      *(a1 + 16) = v10 * v6;
      if (v11 > 0.0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v12 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          v14 = *(a1 + 16);
          *buf = 134349824;
          v17 = a2;
          v18 = 2050;
          v19 = v13;
          v20 = 2050;
          v21 = v14;
          v22 = 2050;
          v23 = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "KFCV:altitudeRate decay,predictionTime_s,%{public}.3f,starting altitudeRate,%{public}.2f,current altitudeRate,%{public}.2f,total decay,%{public}.2f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101912E28(buf);
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::decayAltitudeRate(const double, const double)", "%s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }

        if (*(a1 + 16) * *(a1 + 16) > a3)
        {
          *(a1 + 24) = v11 * v11 * 0.25 + *(a1 + 24);
        }
      }
    }
  }
}

void sub_1002F8E5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

id sub_1002F8E68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", -[NSDateComponents hour](-[NSCalendar components:fromDate:](+[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), "components:fromDate:", 32, +[NSDate now](NSDate, "now")), "hour")), @"timeOfDay"}];
  [v3 setObject:&off_10254F908 forKeyedSubscript:@"geotagPath"];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(*(a1 + 32), "type")), @"advType"}];
  v4 = [*(a1 + 32) advertisement];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", sub_10028B1A8(v4, v4)), @"isPoshAdv"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(v2 + 1696)), @"timeThreshold"}];
  if (*(v2 + 1500) == 1)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(v2 + 1496)), @"sigEnv"}];
  }

  if (*(v2 + 1640) == 1)
  {
    v5 = *(v2 + 1504);
    if (v5 == 19150 || v5 <= 0x7D0)
    {
      v6 = CLMotionActivity::activityTypeToString();
    }

    else
    {
      v6 = "workoutSub";
    }

    [v3 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v6), @"motionActivity"}];
  }

  v7 = (v2 + 660);
  if (*(v2 + 796) == 1)
  {
    v8 = *(v2 + 716);
    [objc_msgSend(objc_msgSend(*(a1 + 32) "advertisement")];
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v8 - v9), @"timeOffsetToLocation"}];
    if ((*(v2 + 796) & 1) == 0)
    {
      sub_100173BA0();
    }

    v10 = *(v2 + 716);
    [objc_msgSend(objc_msgSend(*(a1 + 32) "advertisement")];
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", sub_1002F9358(v10 - v11)), @"timeOffsetToLocationBounded"}];
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(v2 + 736)), @"geotagLocationType"}];
  }

  if (*(a1 + 64) == 1)
  {
    v12 = @"DropAdv";
LABEL_23:
    v16 = @"geotagResult";
    goto LABEL_24;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v12 = @"GeotagWithNil";
    goto LABEL_23;
  }

  [v3 setObject:@"GeotagWithLocation" forKeyedSubscript:@"geotagResult"];
  [*(a1 + 32) maxActivityBasedSpeedSinceAdvertisement];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v13), @"activityBasedSpeed"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(v2 + 1976)), @"activityBasedSpeedLastLocation"}];
  v14 = *(v2 + 684);
  if (v14 >= 0.0)
  {
    if ((*(v2 + 1640) & 1) == 0 || (v15 = *(v2 + 1504), v15 <= 0x38) && ((1 << v15) & 0x110000000000CA8) != 0)
    {
      v14 = v14 + fmax(*(v2 + 692), 0.0);
    }

    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v14), @"locationBasedSpeed"}];
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", sub_1002F9504(v14)), @"locationBasedSpeedBounded"}];
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 48)), @"finalSpeed"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", sub_1002F9504(*(a1 + 48))), @"finalSpeedBounded"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *v7), @"originalHAC"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", sub_1002F9640(*v7)), @"originalHACBounded"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 56)), @"inflatedHAC"}];
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKeyedSubscript:{"numberWithInt:", sub_1002F9640(*(a1 + 56))), @"inflatedHACBounded"}];
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 56) - *v7), @"HACdelta"}];
  v12 = [NSNumber numberWithInt:sub_1002F9640(*(a1 + 56) - *v7)];
  v16 = @"HACdeltaBounded";
LABEL_24:
  [v3 setObject:v12 forKeyedSubscript:v16];
  return v3;
}

uint64_t sub_1002F9358(double a1)
{
  if (a1 <= -600.0)
  {
    return 4294966696;
  }

  if (a1 <= -480.0)
  {
    return 4294966816;
  }

  if (a1 <= -360.0)
  {
    return 4294966936;
  }

  if (a1 <= -120.0)
  {
    return 4294967176;
  }

  if (a1 <= -60.0)
  {
    return 4294967236;
  }

  if (a1 <= -45.0)
  {
    return 4294967251;
  }

  if (a1 <= -25.0)
  {
    return 4294967271;
  }

  if (a1 <= -15.0)
  {
    return 4294967281;
  }

  if (a1 <= -10.0)
  {
    return 4294967286;
  }

  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 <= 10.0)
  {
    return 10;
  }

  if (a1 <= 15.0)
  {
    return 15;
  }

  if (a1 <= 25.0)
  {
    return 25;
  }

  if (a1 <= 45.0)
  {
    return 45;
  }

  if (a1 <= 60.0)
  {
    return 60;
  }

  if (a1 <= 120.0)
  {
    return 120;
  }

  if (a1 <= 360.0)
  {
    return 360;
  }

  if (a1 <= 480.0)
  {
    return 480;
  }

  if (a1 <= 600.0)
  {
    return 600;
  }

  return 700;
}

uint64_t sub_1002F9504(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 <= 1.0)
  {
    return 1;
  }

  if (a1 <= 2.0)
  {
    return 2;
  }

  if (a1 <= 3.0)
  {
    return 3;
  }

  if (a1 <= 5.0)
  {
    return 5;
  }

  if (a1 <= 7.0)
  {
    return 7;
  }

  if (a1 <= 10.0)
  {
    return 10;
  }

  if (a1 <= 15.0)
  {
    return 15;
  }

  if (a1 <= 20.0)
  {
    return 20;
  }

  if (a1 <= 25.0)
  {
    return 25;
  }

  if (a1 <= 30.0)
  {
    return 30;
  }

  if (a1 <= 35.0)
  {
    return 35;
  }

  if (a1 <= 40.0)
  {
    return 40;
  }

  if (a1 <= 45.0)
  {
    return 45;
  }

  if (a1 <= 50.0)
  {
    return 50;
  }

  return 60;
}

uint64_t sub_1002F9640(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 <= 5.0)
  {
    return 5;
  }

  if (a1 <= 10.0)
  {
    return 10;
  }

  if (a1 <= 15.0)
  {
    return 15;
  }

  if (a1 <= 25.0)
  {
    return 25;
  }

  if (a1 <= 50.0)
  {
    return 50;
  }

  if (a1 <= 75.0)
  {
    return 75;
  }

  if (a1 <= 100.0)
  {
    return 100;
  }

  if (a1 <= 125.0)
  {
    return 125;
  }

  if (a1 <= 250.0)
  {
    return 250;
  }

  if (a1 <= 500.0)
  {
    return 500;
  }

  if (a1 <= 750.0)
  {
    return 750;
  }

  if (a1 <= 1000.0)
  {
    return 1000;
  }

  if (a1 <= 5000.0)
  {
    return 5000;
  }

  if (a1 <= 10000.0)
  {
    return 10000;
  }

  return 20000;
}

void sub_1002F97F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v6 = a1;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v8 = a3;
  v9 = (a4 - a1) >> 3;
  v10 = v9 | 1;
  v11 = (a1 + 16 * (v9 | 1));
  v12 = v9 + 2;
  if (v9 + 2 < a3)
  {
    v13 = *v11;
    v14 = v11[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v11[2];
    v15 = v11[3];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *(v13 + 24) > *(v16 + 24);
      sub_100008080(v15);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = *(v13 + 24) > *(v16 + 24);
      if (v14)
      {
LABEL_8:
        sub_100008080(v14);
        if (!v17)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    if (v17)
    {
LABEL_9:
      v11 += 2;
      v10 = v12;
    }
  }

LABEL_10:
  v18 = *v11;
  v19 = v11[1];
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *v5;
  v20 = v5[1];
  if (!v20)
  {
    v22 = *(v18 + 24) > *(v21 + 24);
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = *(v18 + 24) > *(v21 + 24);
  sub_100008080(v20);
  if (v19)
  {
LABEL_14:
    sub_100008080(v19);
  }

LABEL_15:
  if (v22)
  {
    return;
  }

  v24 = *v5;
  v23 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  v42 = v8;
  do
  {
    v25 = v5;
    v5 = v11;
    v26 = *v11;
    *v11 = 0;
    v11[1] = 0;
    v27 = v25[1];
    *v25 = v26;
    if (v27)
    {
      sub_100008080(v27);
    }

    if (v7 < v10)
    {
      break;
    }

    v28 = 2 * v10;
    v10 = (2 * v10) | 1;
    v11 = (v6 + 16 * v10);
    v29 = v28 + 2;
    if (v28 + 2 >= v8)
    {
      goto LABEL_28;
    }

    v30 = v24;
    v31 = v6;
    v32 = *v11;
    v33 = v11[1];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v34 = v7;
    v36 = v11[2];
    v35 = v11[3];
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = *(v32 + 24) > *(v36 + 24);
      sub_100008080(v35);
      if (!v33)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v37 = *(v32 + 24) > *(v36 + 24);
      if (!v33)
      {
LABEL_38:
        if (!v37)
        {
          goto LABEL_27;
        }

LABEL_26:
        v11 += 2;
        v10 = v29;
        goto LABEL_27;
      }
    }

    sub_100008080(v33);
    if (v37)
    {
      goto LABEL_26;
    }

LABEL_27:
    v7 = v34;
    v6 = v31;
    v24 = v30;
    v8 = v42;
LABEL_28:
    v38 = *v11;
    v39 = v11[1];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v23)
    {
      v40 = *(v38 + 24) > *(v24 + 24);
      if (!v39)
      {
        continue;
      }

LABEL_32:
      sub_100008080(v39);
      continue;
    }

    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v40 = *(v38 + 24) > *(v24 + 24);
    sub_100008080(v23);
    if (v39)
    {
      goto LABEL_32;
    }
  }

  while (!v40);
  v41 = v5[1];
  *v5 = v24;
  v5[1] = v23;
  if (v41)
  {

    sub_100008080(v41);
  }
}

uint64_t sub_1002F9AD0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v8 = a2;
    v10 = v5 >> 4;
    v11 = __OFSUB__(v5 >> 4, 2);
    v12 = (v5 >> 4) - 2;
    if (v12 < 0 == v11)
    {
      v13 = v12 >> 1;
      v14 = &a1[2 * v13];
      v15 = v13 + 1;
      do
      {
        sub_1002F97F8(a1, a4, v10, v14);
        v14 -= 2;
        --v15;
      }

      while (v15);
    }

    v4 = v8;
    if (v8 != a3)
    {
      v16 = v8;
      while (1)
      {
        v17 = *v16;
        v18 = v16[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *a1;
        v19 = a1[1];
        if (!v19)
        {
          break;
        }

        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *(v17 + 24) > *(v20 + 24);
        sub_100008080(v19);
        if (v18)
        {
          goto LABEL_11;
        }

LABEL_12:
        if (v21)
        {
          v22 = *v16;
          *v16 = *a1;
          *a1 = v22;
          v23 = v16[1];
          v16[1] = a1[1];
          a1[1] = v23;
          sub_1002F97F8(a1, a4, v10, a1);
        }

        v16 += 2;
        if (v16 == a3)
        {
          v4 = a3;
          goto LABEL_18;
        }
      }

      v21 = *(v17 + 24) > *(v20 + 24);
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_11:
      sub_100008080(v18);
      goto LABEL_12;
    }

LABEL_18:
    if (v10 >= 2)
    {
      do
      {
        sub_1002F9C4C(a1, v8, a4, v10);
        v8 -= 16;
      }

      while (v10-- > 2);
    }
  }

  return v4;
}

void sub_1002F9C4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v9 = sub_1002F9D5C(a1, a3, a4);
    v10 = v9;
    if ((a2 - 16) == v9)
    {
      v15 = v9[1];
      *v10 = v8;
      v10[1] = v7;
      if (v15)
      {

        sub_100008080(v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9[1];
      *v10 = v11;
      if (v12)
      {
        sub_100008080(v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v14)
      {
        sub_100008080(v14);
      }

      sub_1002F9E6C(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_1002F9D44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F9D5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5 + 2];
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 >= a3)
    {
      goto LABEL_9;
    }

    v10 = *v7;
    v11 = v7[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v7[2];
    v12 = v7[3];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v10 + 24) > *(v13 + 24);
      sub_100008080(v12);
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = *(v10 + 24) > *(v13 + 24);
      if (v11)
      {
LABEL_7:
        sub_100008080(v11);
        if (!v14)
        {
          goto LABEL_9;
        }

LABEL_8:
        v7 += 2;
        v5 = v9;
        goto LABEL_9;
      }
    }

    if (v14)
    {
      goto LABEL_8;
    }

LABEL_9:
    v15 = *v7;
    *v7 = 0;
    v7[1] = 0;
    v16 = a1[1];
    *a1 = v15;
    if (v16)
    {
      sub_100008080(v16);
    }

    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

void sub_1002F9E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v7 = v4 >> 1;
  v8 = (a1 + 16 * (v4 >> 1));
  v9 = *v8;
  v10 = v8[1];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 - 16);
  v11 = *(a2 - 8);
  v13 = (a2 - 16);
  if (!v11)
  {
    v14 = *(v9 + 24) > *(v12 + 24);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = *(v9 + 24) > *(v12 + 24);
  sub_100008080(v11);
  if (v10)
  {
LABEL_6:
    sub_100008080(v10);
  }

LABEL_7:
  if (!v14)
  {
    return;
  }

  v16 = *(a2 - 16);
  v15 = *(a2 - 8);
  *v13 = 0;
  v13[1] = 0;
  do
  {
    v17 = v13;
    v13 = v8;
    v18 = *v8;
    *v8 = 0;
    v8[1] = 0;
    v19 = v17[1];
    *v17 = v18;
    if (v19)
    {
      sub_100008080(v19);
    }

    if (!v7)
    {
      break;
    }

    v7 = (v7 - 1) >> 1;
    v8 = (a1 + 16 * v7);
    v20 = *v8;
    v21 = v8[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v15)
    {
      v22 = *(v20 + 24) > *(v16 + 24);
      if (!v21)
      {
        continue;
      }

LABEL_16:
      sub_100008080(v21);
      continue;
    }

    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    v22 = *(v20 + 24) > *(v16 + 24);
    sub_100008080(v15);
    if (v21)
    {
      goto LABEL_16;
    }
  }

  while (v22);
  v23 = v13[1];
  *v13 = v16;
  v13[1] = v15;
  if (v23)
  {

    sub_100008080(v23);
  }
}

void sub_1002F9FFC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          sub_100008080(v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_1011AD1BC(a1, v5);
  }
}

void sub_1002FA08C(uint64_t a1)
{
  v2 = *(a1 + 56);
  [*(a1 + 32) invalidate];
  if ([*(v2 + 64) objectForKeyedSubscript:*(a1 + 40)] == *(a1 + 32))
  {
    v9 = *(v2 + 64);
    v10 = *(a1 + 40);

    [v9 setObject:0 forKeyedSubscript:v10];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A0963C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v4 = *(a1 + 64);
      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      v5 = *(a1 + 72);
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v11 = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v4;
      v17 = 2082;
      v18 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLIUA Inconsistent state detected.  An unknown decay timer fired!, clientKey:%{public, location:escape_only}s, originalReason:%{public, location:escape_only}s}", &v11, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_101A09650();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = *(a1 + 64);
      if (*(v7 + 23) < 0)
      {
        v7 = *v7;
      }

      v8 = *(a1 + 72);
      if (*(v8 + 23) < 0)
      {
        v8 = *v8;
      }

      v11 = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v7;
      v17 = 2082;
      v18 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLIUA Inconsistent state detected.  An unknown decay timer fired!", "{msg%{public}.0s:#CLIUA Inconsistent state detected.  An unknown decay timer fired!, clientKey:%{public, location:escape_only}s, originalReason:%{public, location:escape_only}s}", &v11, 0x26u);
    }
  }
}

void sub_1002FA2AC(uint64_t a1, char *a2)
{
  v4 = *(a1 + 40);
  if ([a2 subIdentityType] == 122)
  {
    v5 = [*(v4 + 136) intForKey:@"TemporaryAuthorization" atKeyPath:a2 defaultValue:0];
    if (v5)
    {
      if ((v5 & 5) != 0)
      {
        sub_10000EC00(__p, "ClientRemoved");
        sub_100777AC4(v4, a2, 1, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v6 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v11 = 0;
          v12 = 2082;
          v13 = "";
          v14 = 2114;
          v15 = a2;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth  tmp authorized zone deleted, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v7 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v11 = 0;
          v12 = 2082;
          v13 = "";
          v14 = 2114;
          v15 = a2;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth key deleted for zone, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        [*(v4 + 136) removeValueForKey:@"TemporaryAuthorization" atKeyPath:a2];
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

void sub_1002FA4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FA4F0(void *a1, void *a2, int a3)
{
  if (a2)
  {
    [a2 cppClientKey];
  }

  else
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101A09650();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v14;
    if (v15 < 0)
    {
      v6 = v14[0];
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = v6;
    v21 = 1026;
    v22 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLIUA LiveActivity update, ClientKey:%{public, location:escape_only}s, coming:%{public}hhd}", buf, 0x22u);
  }

  if (a3)
  {
    if (sub_1005D7C24(a1 + 15, v14))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101A09650();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v14;
        if (v15 < 0)
        {
          v8 = v14[0];
        }

        *buf = 68289282;
        v17 = 2082;
        v18 = "";
        v19 = 2082;
        v20 = v8;
        v9 = "{msg%{public}.0s:skip taking #CLIUA for LiveActivity. Already exists, ClientKey:%{public, location:escape_only}s}";
LABEL_28:
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
      }
    }

    else
    {
      if (SHIBYTE(v15) < 0)
      {
        sub_100007244(__dst, v14[0], v14[1]);
      }

      else
      {
        *__dst = *v14;
        v13 = v15;
      }

      sub_10000EC00(&__p, "LiveActivity");
      sub_10000E08C(&__p, a1, __dst, 4, buf);
      sub_10001BEE4(a1 + 15, v14);
      sub_10001BAA0(buf);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else
  {
    if (sub_1005D7C24(a1 + 15, v14))
    {
      sub_1002FA858(a1 + 15, v14);
      goto LABEL_34;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_101A09650();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v14;
      if (v15 < 0)
      {
        v10 = v14[0];
      }

      *buf = 68289282;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = v10;
      v9 = "{msg%{public}.0s:skip erasing #CLIUA for LiveActivity. Does not exists, ClientKey:%{public, location:escape_only}s}";
      goto LABEL_28;
    }
  }

LABEL_34:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1002FA7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1002FA858(void *a1, const void **a2)
{
  result = sub_1005D7C24(a1, a2);
  if (result)
  {
    sub_100546628(a1, result, v4);
    sub_10001BE98(v4);
    return 1;
  }

  return result;
}

void sub_1002FA8A4(uint64_t a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289794;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = [objc_msgSend(objc_msgSend(a2 "descriptor")];
    v10 = 2082;
    v11 = [objc_msgSend(a2 "identifier")];
    v12 = 1026;
    v13 = [a2 state];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#liveActivity content update received, bundleId:%{public, location:escape_only}s, activityIdentifier:%{public, location:escape_only}s, state:%{public}d}", v5, 0x2Cu);
  }

  sub_1002FA4F0(*(a1 + 400), +[CLClientKeyPath clientKeyPathWithClientAnchor:anchorType:](CLClientKeyPath, "clientKeyPathWithClientAnchor:anchorType:", [objc_msgSend(a2 "descriptor")], 105), objc_msgSend(a2, "state") == 0);
}

uint64_t sub_1002FAA10(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1002FAA5C(&v6, v3);
  }

  return v2;
}

void sub_1002FAA5C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 143) < 0)
    {
      operator delete(__p[15]);
    }

    if (*(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }

    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1002FAB00(uint64_t a1, void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = [objc_msgSend(*(a1 + 72) "silo")];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x8012000000;
  v14[3] = sub_1000478AC;
  v14[4] = sub_10004855C;
  v14[5] = &unk_10238AE8B;
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v13 = a2[2];
  }

  if (*(a3 + 23) < 0)
  {
    sub_100007244(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  sub_10000E08C(&__p, a1, __dst, 3, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002FA08C;
  v10[3] = &unk_10249B9E8;
  v10[6] = v14;
  v10[7] = a1;
  v10[4] = v8;
  v10[5] = v7;
  v10[8] = a2;
  v10[9] = a3;
  [v8 setHandler:v10];
  [v8 setNextFireDelay:10.0];
  sub_10001BBF4(a1, a2);
  [*(a1 + 64) setObject:v8 forKeyedSubscript:v7];
  _Block_object_dispose(v14, 8);
  return sub_10001BAA0(v15);
}

void sub_1002FACE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FAD34(uint64_t a1)
{
  sub_10001BAA0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1002FAD84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4790 != -1)
  {
    sub_100312440();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 24);
    *buf = 68289538;
    *&buf[4] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2114;
    v10 = v3;
    v11 = 2050;
    v12 = sub_1007F2CF8(v1);
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:client not currently authorized for location; sending error, Client:%{public, location:escape_only}@, DC:%{public}p}", buf, 0x26u);
  }

  v4 = @"kCLConnectionMessageErrorKey";
  v5 = &off_102550958;
  *buf = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  sub_1002FAEBC();
}

void sub_1002FAF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FAF40(int a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  CLProfilingIdentify();
  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v9 = *a4;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = std::__shared_weak_count::lock(v8);
      if (v10 && v9)
      {
        [objc_msgSend(*(v9 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v17 = 1;
          v11 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v11, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v12 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "activity";
            v24 = 2050;
            v25 = v9;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v17 = 0;
        }

        sub_1002FB304(v9, a1, a2, a3);
        if (v17 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v10 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v14 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleLocationNotification_bounce(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (!v10)
    {
      if (!v8)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v10);
    if (!v8)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v13 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A21AAC();
  }
}

void sub_1002FB2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FB304(uint64_t result, int a2, _DWORD *a3, uint64_t a4)
{
  v19 = a2;
  if (*a3 == 10)
  {
    v5 = result;
    if ((*(result + 4784) & 1) != 0 || *(result + 4800))
    {
      sub_10000B230(v18);
      if ((*(a4 + 96) & 0xFFFFFFF7) == 1)
      {
        sub_10000AED0(v17);
        if (sub_1002FB4EC(v5, v18, &v19, a4, v17))
        {
          sub_100294A04(v5, v17, 0);
        }

        if (*(v5 + 80) && ((*(v5 + 128) & 1) != 0 || sub_100C051D4((v5 + 96), *(a4 + 4), *(a4 + 12))))
        {
          sub_10000E198(&v15, v5);
          v7 = v15;
          v6 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100008080(v6);
            v8 = *(v5 + 80);
            v13 = v7;
            v14 = v6;
            atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v8 = *(v5 + 80);
            v13 = v15;
            v14 = 0;
          }

          sub_10086EA98(v8, (a4 + 4), &v13);
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          v10 = *(v5 + 88);
          if (v10)
          {
            v11 = v7;
            v12 = v6;
            if (v6)
            {
              atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100D446FC(v10, (a4 + 4), &v11);
            if (v12)
            {
              std::__shared_weak_count::__release_weak(v12);
            }
          }

          if (v6)
          {
            std::__shared_weak_count::__release_weak(v6);
          }
        }
      }

      else
      {
        v9 = sub_10000AED0(v17);
        sub_1002C3630(v9, v18, &v19, a4, v17);
        sub_100294A04(v5, v17, 0);
      }

      return sub_10000CE1C(v17);
    }
  }

  return result;
}

void sub_1002FB4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_10000CE1C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FB4EC(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4, uint64_t a5)
{
  *v36 = 0xFFFF;
  *&v36[4] = 0uLL;
  *&v36[20] = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v36[36] = _Q0;
  *&v36[52] = _Q0;
  *&v36[68] = _Q0;
  *&v36[84] = 0;
  v37 = 0uLL;
  *&v36[88] = 0xBFF0000000000000;
  *(&v38 + 4) = 0xBFF0000000000000;
  LODWORD(v38) = 0;
  HIDWORD(v38) = 0x7FFFFFFF;
  memset(v39, 0, 25);
  sub_100021ED8(v40);
  v15 = *(a4 + 112);
  v37 = *(a4 + 96);
  v38 = v15;
  *v39 = *(a4 + 128);
  *&v39[12] = *(a4 + 140);
  v16 = *(a4 + 48);
  *&v36[32] = *(a4 + 32);
  *&v36[48] = v16;
  v17 = *(a4 + 80);
  *&v36[64] = *(a4 + 64);
  *&v36[80] = v17;
  v18 = *(a4 + 16);
  *v36 = *a4;
  *&v36[16] = v18;
  v35 = 0;
  v34 = 0;
  v19 = [*(a1 + 232) syncgetAltitude:v36 rel:&v34 undulation:&v35];
  if (v40[48] >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    *(a5 + 52) |= 2u;
    v21 = *(a5 + 40);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 488) |= 0x100u;
    v22 = *(v21 + 72);
    if (!v22)
    {
      operator new();
    }

    sub_100294964(a2, a5);
    *(v22 + 52) |= 1u;
    v23 = *(v22 + 8);
    if (!v23)
    {
      operator new();
    }

    if ((sub_10027E930(a2, v23) & 1) == 0)
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A20320();
      }

      v24 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "Error: Failed to convert DEM update receipt time to protobuf", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A20348(buf);
        LOWORD(v42) = 0;
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::SerializeDEMUpdate(const CLUtils::Timestamp &, const int &, const CLDaemonLocation &, CLP::LogEntry::LogEntry &) const", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    sub_1012682A0(v36, &v35, v22);
    v25 = *a3;
    *(v22 + 52) |= 0x40u;
    *(v22 + 44) = v25;
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A20320();
    }

    v26 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a4 + 4);
      v28 = *(a4 + 12);
      *buf = 134545921;
      v47 = v27;
      v48 = 2053;
      v49 = v28;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "Raven: Dem unavailable at,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      v30 = *(a4 + 4);
      v31 = *(a4 + 12);
      v42 = 134545921;
      v43 = v30;
      v44 = 2053;
      v45 = v31;
      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLRavenController::SerializeDEMUpdate(const CLUtils::Timestamp &, const int &, const CLDaemonLocation &, CLP::LogEntry::LogEntry &) const", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  if (v41)
  {
    sub_100008080(v41);
  }

  return v20;
}

void sub_1002FB958(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 688);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002FB9DC(float *a1)
{
  v1 = a1[2];
  v2 = v1 == 0.0 && a1[3] == 0.0 && a1[4] == 0.0 && a1[5] == 0.0;
  v3 = a1[6];
  v4 = v3 == 0.0 && a1[7] == 0.0 && a1[8] == 0.0 && a1[9] == 0.0;
  v5 = 0;
  if (fabsf(v1) < 0.00000014305 && !v2 && !v4)
  {
    if (fabsf(a1[3]) >= 0.0000011444 || fabsf(a1[4]) >= 0.0000091553)
    {
      return 0;
    }

    v5 = 0;
    if (fabsf(v3) < 314570.0 && fabsf(a1[5]) < 0.0000091553)
    {
      if (fabsf(a1[7]) < 2516600.0 && fabsf(a1[8]) < 10066000.0)
      {
        return fabsf(a1[9]) < 10066000.0;
      }

      return 0;
    }
  }

  return v5;
}

double sub_1002FBB14(uint64_t a1)
{
  *a1 = off_1024A9440;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

BOOL sub_1002FBB40(void *a1)
{
  result = sub_1002AF270(a1);
  if (result)
  {
    return a1[4] && (a1[5] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (a1[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (a1[7] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

double sub_1002FBBB0(uint64_t a1)
{
  *a1 = off_1024A9170;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double sub_1002FBBE0(uint64_t a1)
{
  *a1 = off_1024A8CC0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 108) = 0u;
  return result;
}

uint64_t sub_1002FBC24(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_1024A7F28;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1002FBD14(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024A8450;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1002FBD40(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024A8720;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1002FBD68(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_1024A7E38;
  *(result + 24) = 0;
  return result;
}

void *sub_1002FBD90(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_1024A7DC0;
  return result;
}

uint64_t sub_1002FBDB4(uint64_t result)
{
  *result = off_1024A81F8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1002FBDD8(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_102637C78 + 16);
  }

  v6 = sub_100D12AF0(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v4 + v7 + v8 + 1);
  v3 = *(a1 + 44);
LABEL_13:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    v9 = *(qword_102637C78 + 24);
  }

  v10 = sub_100300BC4(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
  }

  else
  {
    v12 = 1;
  }

  v4 = (v4 + v11 + v12 + 1);
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_22:
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = *(qword_102637C78 + 32);
    }

    v14 = sub_1002FDA9C(v13, a2);
    v16 = v14;
    if (v14 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, v15);
    }

    else
    {
      v17 = 1;
    }

    v4 = (v4 + v16 + v17 + 1);
  }

LABEL_28:
  *(a1 + 40) = v4;
  return v4;
}

double sub_1002FBF14(uint64_t a1)
{
  *a1 = off_1024A9080;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double sub_1002FBF40(uint64_t a1)
{
  *a1 = &off_1024A7EB0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double sub_1002FBF70(uint64_t a1)
{
  *a1 = off_1024A8978;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double sub_1002FBFA0(uint64_t a1)
{
  *a1 = off_1024A8798;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_1002FBFEC(uint64_t result)
{
  *result = off_1024A8630;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002FC014(uint64_t result)
{
  *result = off_1024A8270;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1002FC038(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if (v3)
  {
    v5 = *(a1 + 88);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 96);
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102637C10 + 8);
  }

  v7 = 2 * (*(v6 + 16) & 1) + (*(v6 + 16) & 2) + ((*(v6 + 16) >> 1) & 2) + ((*(v6 + 16) >> 2) & 2);
  if (!*(v6 + 16))
  {
    v7 = 0;
  }

  *(v6 + 12) = v7;
  v4 = (v4 + v7 + 2);
  v3 = *(a1 + 96);
LABEL_18:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637C10 + 16);
    }

    v9 = sub_100D0E4B8(v8);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 96);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v13 = *(a1 + 24);
  if (!v13)
  {
    v13 = *(qword_102637C10 + 24);
  }

  v14 = 2 * (*(v13 + 16) & 1) + (*(v13 + 16) & 2) + ((*(v13 + 16) >> 1) & 2) + ((*(v13 + 16) >> 2) & 2);
  if (!*(v13 + 16))
  {
    v14 = 0;
  }

  *(v13 + 12) = v14;
  v4 = (v4 + v14 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_36:
  v15 = *(a1 + 32);
  if (!v15)
  {
    v15 = *(qword_102637C10 + 32);
  }

  v16 = sub_1002FC970(v15);
  v18 = v16;
  if (v16 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, v17);
  }

  else
  {
    v19 = 1;
  }

  v4 = (v4 + v18 + v19 + 1);
  v3 = *(a1 + 96);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_42:
  v20 = *(a1 + 40);
  if (!v20)
  {
    v20 = *(qword_102637C10 + 40);
  }

  v21 = 2 * (*(v20 + 16) & 1) + (*(v20 + 16) & 2) + ((*(v20 + 16) >> 1) & 2) + ((*(v20 + 16) >> 2) & 2);
  if (!*(v20 + 16))
  {
    v21 = 0;
  }

  *(v20 + 12) = v21;
  v4 = (v4 + v21 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_47:
  v22 = *(a1 + 48);
  if (!v22)
  {
    v22 = *(qword_102637C10 + 48);
  }

  v23 = 2 * (*(v22 + 16) & 1) + (*(v22 + 16) & 2) + ((*(v22 + 16) >> 1) & 2) + ((*(v22 + 16) >> 2) & 2);
  if (!*(v22 + 16))
  {
    v23 = 0;
  }

  *(v22 + 12) = v23;
  v4 = (v4 + v23 + 2);
  v3 = *(a1 + 96);
  if ((v3 & 0x80) != 0)
  {
LABEL_52:
    v24 = *(a1 + 56);
    if (!v24)
    {
      v24 = *(qword_102637C10 + 56);
    }

    v25 = 2 * (*(v24 + 16) & 1) + (*(v24 + 16) & 2) + ((*(v24 + 16) >> 1) & 2) + ((*(v24 + 16) >> 2) & 2);
    if (!*(v24 + 16))
    {
      v25 = 0;
    }

    *(v24 + 12) = v25;
    v4 = (v4 + v25 + 2);
    v3 = *(a1 + 96);
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_78;
  }

  if ((v3 & 0x100) != 0)
  {
    v26 = *(a1 + 64);
    if (!v26)
    {
      v26 = *(qword_102637C10 + 64);
    }

    v27 = sub_1002FC9B8(v26);
    v29 = v27;
    if (v27 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, v28);
    }

    else
    {
      v30 = 1;
    }

    v4 = (v4 + v29 + v30 + 1);
    v3 = *(a1 + 96);
    if ((v3 & 0x200) == 0)
    {
LABEL_60:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_73;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_60;
  }

  v31 = *(a1 + 72);
  if (!v31)
  {
    v31 = *(qword_102637C10 + 72);
  }

  v32 = 2 * (*(v31 + 16) & 1) + (*(v31 + 16) & 2) + ((*(v31 + 16) >> 1) & 2);
  if (!*(v31 + 16))
  {
    v32 = 0;
  }

  *(v31 + 12) = v32;
  v4 = (v4 + v32 + 2);
  if ((*(a1 + 96) & 0x400) != 0)
  {
LABEL_73:
    v33 = *(a1 + 80);
    if (!v33)
    {
      v33 = *(qword_102637C10 + 80);
    }

    v34 = 2 * (*(v33 + 16) & 1) + (*(v33 + 16) & 2) + ((*(v33 + 16) >> 1) & 2) + ((*(v33 + 16) >> 2) & 2);
    if (!*(v33 + 16))
    {
      v34 = 0;
    }

    *(v33 + 12) = v34;
    v4 = (v4 + v34 + 2);
  }

LABEL_78:
  *(a1 + 92) = v4;
  return v4;
}

uint64_t sub_1002FC41C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 116);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_57;
  }

  if ((v3 & 2) != 0)
  {
    v4 = ((v3 << 31 >> 31) & 5) + 5;
  }

  else
  {
    v4 = (v3 << 31 >> 31) & 5;
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_102637C50 + 16);
    }

    v6 = sub_100D11688(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 += v7 + v8 + 1;
    v3 = *(a1 + 116);
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    v9 = *(qword_102637C50 + 24);
  }

  v10 = *(v9 + 24);
  v11 = (v10 << 31 >> 31) & 5;
  if ((v10 & 2) != 0)
  {
    v11 += 5;
  }

  if ((v10 & 4) != 0)
  {
    v11 += 5;
  }

  if (*(v9 + 24))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v9 + 20) = v12;
  v4 += v12 + 2;
  v3 = *(a1 + 116);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_29:
  v13 = *(a1 + 32);
  if (!v13)
  {
    v13 = *(qword_102637C50 + 32);
  }

  v14 = *(v13 + 24);
  v15 = (v14 << 31 >> 31) & 5;
  if ((v14 & 2) != 0)
  {
    v15 += 5;
  }

  if ((v14 & 4) != 0)
  {
    v15 += 5;
  }

  if (*(v13 + 24))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(v13 + 20) = v16;
  v4 += v16 + 2;
  v3 = *(a1 + 116);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_39:
  v17 = *(a1 + 40);
  if (!v17)
  {
    v17 = *(qword_102637C50 + 40);
  }

  v18 = *(v17 + 24);
  v19 = (v18 << 31 >> 31) & 5;
  if ((v18 & 2) != 0)
  {
    v19 += 5;
  }

  if ((v18 & 4) != 0)
  {
    v19 += 5;
  }

  if (*(v17 + 24))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(v17 + 20) = v20;
  v4 += v20 + 2;
  v3 = *(a1 + 116);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v21 = *(a1 + 48);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
    v3 = *(a1 + 116);
  }

  else
  {
    v22 = 2;
  }

  v4 += v22;
  if ((v3 & 0x80) != 0)
  {
LABEL_53:
    v23 = *(a1 + 52);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, a2) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v24 = 2;
    }

    v4 += v24;
  }

LABEL_57:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v3 & 0x100) == 0)
  {
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v27 = *(a1 + 60);
    if ((v27 & 0x80000000) != 0)
    {
      v28 = 11;
    }

    else if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v28 = 2;
    }

    v4 += v28;
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v25 = *(a1 + 56);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 116);
  }

  else
  {
    v26 = 2;
  }

  v4 += v26;
  if ((v3 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v3 & 0x400) != 0)
  {
LABEL_74:
    v29 = *(a1 + 64);
    if ((v29 & 0x80000000) != 0)
    {
      v30 = 11;
    }

    else if (v29 >= 0x80)
    {
      v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 1;
      v3 = *(a1 + 116);
    }

    else
    {
      v30 = 2;
    }

    v4 += v30;
  }

LABEL_80:
  v31 = v4 + 5;
  if ((v3 & 0x800) == 0)
  {
    v31 = v4;
  }

  if ((v3 & 0x1000) != 0)
  {
    v4 = v31 + 5;
  }

  else
  {
    v4 = v31;
  }

  if ((v3 & 0x2000) != 0)
  {
    v32 = *(a1 + 80);
    v33 = *(v32 + 23);
    v34 = v33;
    v35 = *(v32 + 8);
    if ((v33 & 0x80u) == 0)
    {
      v36 = *(v32 + 23);
    }

    else
    {
      v36 = v35;
    }

    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
      v33 = *(v32 + 23);
      v35 = *(v32 + 8);
      v3 = *(a1 + 116);
      v34 = *(v32 + 23);
    }

    else
    {
      v37 = 1;
    }

    if (v34 < 0)
    {
      v33 = v35;
    }

    v4 += v37 + v33 + 1;
  }

  if ((v3 & 0x4000) != 0)
  {
    v38 = *(a1 + 76);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 1;
    }

    else
    {
      v39 = 2;
    }

    v4 += v39;
  }

LABEL_100:
  v40 = *(a1 + 96);
  v41 = (v4 + 2 * v40);
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v43 = sub_1002FC7C8(*(*(a1 + 88) + 8 * v42));
      v45 = v43;
      if (v43 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, v44);
      }

      else
      {
        v46 = 1;
      }

      v41 = (v45 + v41 + v46);
      ++v42;
    }

    while (v42 < *(a1 + 96));
  }

  *(a1 + 112) = v41;
  return v41;
}

uint64_t sub_1002FC7C8(uint64_t a1)
{
  LOBYTE(v1) = *(a1 + 32);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 32))
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      v2 = *(qword_102637C38 + 8);
    }

    v3 = *(v2 + 32);
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v5 = v4 + ((v3 >> 1) & 2);
    if (*(v2 + 32))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    *(v2 + 28) = v6;
    LODWORD(v2) = v6 + 2;
    v1 = *(a1 + 32);
    if ((v1 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  LODWORD(v2) = 0;
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_14:
    v7 = *(a1 + 16);
    if (!v7)
    {
      v7 = *(qword_102637C38 + 16);
    }

    v8 = *(v7 + 32);
    v9 = ((v8 << 31) >> 31) & 9;
    if ((v8 & 2) != 0)
    {
      v9 += 9;
    }

    v10 = v9 + ((v8 >> 1) & 2);
    if (*(v7 + 32))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    *(v7 + 28) = v11;
    LODWORD(v2) = v2 + v11 + 2;
    v1 = *(a1 + 32);
  }

LABEL_22:
  if ((v1 & 4) != 0)
  {
    v2 = (v2 + 5);
  }

  else
  {
    v2 = v2;
  }

LABEL_25:
  *(a1 + 28) = v2;
  return v2;
}

uint64_t sub_1002FC8A8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (*(a1 + 24))
    {
      v5 = *(a1 + 16);
      if ((v5 & 0x80000000) != 0)
      {
        v4 = 11;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 24) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102637BB0 + 8);
    }

    v7 = sub_100300CA8(v6, a2);
    v9 = v7;
    if (v7 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
    }

    else
    {
      v10 = 1;
    }

    v4 = (v4 + v9 + v10 + 1);
  }

  else
  {
    v4 = 0;
  }

LABEL_19:
  *(a1 + 20) = v4;
  return v4;
}

uint64_t sub_1002FC970(uint64_t a1)
{
  LODWORD(v1) = 2 * (*(a1 + 20) & 1) + (*(a1 + 20) & 2) + ((*(a1 + 20) >> 1) & 2) + ((*(a1 + 20) >> 2) & 2) + ((*(a1 + 20) >> 3) & 2);
  if (*(a1 + 20))
  {
    v1 = v1;
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_1002FC9B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2.i64[0] = 0x200000002;
    v2.i64[1] = 0x200000002;
    v3 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_101C655A0), v2)) + 2 * (v1 & 1) + (v1 & 2) + ((v1 >> 5) & 2) + ((v1 >> 6) & 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (v1 & 0xFF00) == 0;
  LODWORD(v5) = ((v1 >> 8) & 2) + ((v1 >> 7) & 2) + v3;
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v5;
  }

  *(a1 + 20) = v5;
  return v5;
}

uint64_t sub_1002FCA40(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 12);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 40);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 32);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
      v3 = *(a1 + 40);
    }

    else
    {
      v9 = 2;
    }

    v4 = (v9 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_30;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    v10 = *(qword_102637CE0 + 16);
  }

  v11 = sub_100300EA4(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  if ((*(a1 + 40) & 0x10) != 0)
  {
LABEL_30:
    v14 = *(a1 + 24);
    if (!v14)
    {
      v14 = *(qword_102637CE0 + 24);
    }

    v15 = sub_100300EA4(v14, a2);
    v17 = v15;
    if (v15 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, v16);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_36:
  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_1002FCBA8(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
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

  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002FCC10(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_31;
  }

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 40);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 40) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102637CF8 + 8);
  }

  v7 = sub_100300D44(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(a1 + 40);
LABEL_16:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    v10 = *(qword_102637CF8 + 16);
  }

  v11 = sub_1002FCBA8(v10, a2);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
  }

  else
  {
    v13 = 1;
  }

  v4 = (v4 + v12 + v13 + 1);
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_25:
    v14 = *(a1 + 24);
    if (!v14)
    {
      v14 = *(qword_102637CF8 + 24);
    }

    v15 = sub_1002FCBA8(v14, a2);
    v17 = v15;
    if (v15 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, v16);
    }

    else
    {
      v18 = 1;
    }

    v4 = (v4 + v17 + v18 + 1);
  }

LABEL_31:
  *(a1 + 36) = v4;
  return v4;
}

uint64_t sub_1002FCD60(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 52);
  if (v3)
  {
    if (v3)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 52);
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
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      v4 += 5;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((v3 & 0x100) != 0)
  {
    result = v4 + 5;
  }

  else
  {
    result = v4;
  }

  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002FCE14(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 172);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102637CA8 + 8);
      }

      v7 = sub_1002CD7C0(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v10 = v4 + 9;
    }

    else
    {
      v10 = v4;
    }

    if ((v3 & 4) != 0)
    {
      v11 = *(a1 + 56);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 172);
      }

      else
      {
        v12 = 2;
      }

      v10 += v12;
    }

    v13 = v10 + 9;
    if ((v3 & 0x10) == 0)
    {
      v13 = v10;
    }

    if ((v3 & 0x20) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x40) != 0)
    {
      v13 += 9;
    }

    if ((v3 & 0x80) != 0)
    {
      v5 = v13 + 5;
    }

    else
    {
      v5 = v13;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v5 += 5;
    }

    if ((v3 & 0x200) != 0)
    {
      v14 = *(a1 + 84);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = 11;
      }

      else if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
        v3 = *(a1 + 172);
      }

      else
      {
        v15 = 2;
      }

      v5 += v15;
      if ((v3 & 0x400) == 0)
      {
LABEL_35:
        if ((v3 & 0x800) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }
    }

    else if ((v3 & 0x400) == 0)
    {
      goto LABEL_35;
    }

    v16 = *(a1 + 88);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v17 = 2;
    }

    v5 += v17;
    if ((v3 & 0x800) == 0)
    {
LABEL_36:
      if ((v3 & 0x1000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_58;
    }

LABEL_52:
    v18 = *(a1 + 92);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v19 = 2;
    }

    v5 += v19;
    if ((v3 & 0x1000) == 0)
    {
LABEL_37:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }

LABEL_58:
    v20 = *(a1 + 96);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v21 = 2;
    }

    v5 += v21;
    if ((v3 & 0x2000) == 0)
    {
LABEL_38:
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      v24 = *(a1 + 128);
      if (!v24)
      {
        v24 = *(qword_102637CA8 + 128);
      }

      v25 = sub_100D147C8(v24);
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2);
      }

      else
      {
        v27 = 1;
      }

      v5 += v26 + v27 + 2;
      v3 = *(a1 + 172);
      goto LABEL_76;
    }

LABEL_64:
    v22 = *(a1 + 100);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 11;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 1;
      v3 = *(a1 + 172);
    }

    else
    {
      v23 = 2;
    }

    v5 += v23;
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_70;
  }

LABEL_76:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_122;
  }

  if ((v3 & 0x10000) != 0)
  {
    v28 = *(a1 + 136);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 12;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2) + 2;
      v3 = *(a1 + 172);
    }

    else
    {
      v29 = 3;
    }

    v5 += v29;
    if ((v3 & 0x20000) == 0)
    {
LABEL_79:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_95;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_79;
  }

  v30 = *(a1 + 140);
  if ((v30 & 0x80000000) != 0)
  {
    v31 = 12;
  }

  else if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2) + 2;
    v3 = *(a1 + 172);
  }

  else
  {
    v31 = 3;
  }

  v5 += v31;
  if ((v3 & 0x40000) == 0)
  {
LABEL_80:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_81;
    }

LABEL_101:
    v34 = *(a1 + 148);
    if ((v34 & 0x80000000) != 0)
    {
      v35 = 12;
    }

    else if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, a2) + 2;
      v3 = *(a1 + 172);
    }

    else
    {
      v35 = 3;
    }

    v5 += v35;
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_107;
  }

LABEL_95:
  v32 = *(a1 + 144);
  if ((v32 & 0x80000000) != 0)
  {
    v33 = 12;
  }

  else if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2) + 2;
    v3 = *(a1 + 172);
  }

  else
  {
    v33 = 3;
  }

  v5 += v33;
  if ((v3 & 0x80000) != 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  if ((v3 & 0x100000) != 0)
  {
LABEL_107:
    v36 = *(a1 + 160);
    if ((v36 & 0x80000000) != 0)
    {
      v37 = 12;
    }

    else if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2) + 2;
      v3 = *(a1 + 172);
    }

    else
    {
      v37 = 3;
    }

    v5 += v37;
  }

LABEL_113:
  if ((v3 & 0x200000) != 0)
  {
    v5 += 10;
  }

  if ((v3 & 0x400000) != 0)
  {
    v38 = *(a1 + 164);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = 12;
    }

    else if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 2;
    }

    else
    {
      v39 = 3;
    }

    v5 += v39;
  }

LABEL_122:
  v40 = *(a1 + 32);
  v41 = v40 + v5;
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v43 = sub_1002FD290(*(*(a1 + 24) + 8 * v42));
      v44 = v43;
      if (v43 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2);
      }

      else
      {
        v45 = 1;
      }

      v41 += v44 + v45;
      ++v42;
    }

    while (v42 < *(a1 + 32));
  }

  v46 = *(a1 + 112);
  v47 = (v46 + v41);
  if (v46 >= 1)
  {
    v48 = 0;
    do
    {
      v49 = sub_100301194(*(*(a1 + 104) + 8 * v48), a2);
      v50 = v49;
      if (v49 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49, a2);
      }

      else
      {
        v51 = 1;
      }

      v47 = (v50 + v47 + v51);
      ++v48;
    }

    while (v48 < *(a1 + 112));
  }

  *(a1 + 168) = v47;
  return v47;
}

uint64_t sub_1002FD290(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = (v1 << 31 >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v3 = *(a1 + 16);
      if (!v3)
      {
        v3 = *(qword_102637C98 + 16);
      }

      v4 = *(v3 + 36);
      if (*(v3 + 36))
      {
        v5 = (v4 << 31 >> 31) & 9;
        if ((v4 & 2) != 0)
        {
          v5 += 9;
        }

        if ((v4 & 4) != 0)
        {
          v4 = v5 + 9;
        }

        else
        {
          v4 = v5;
        }
      }

      *(v3 + 32) = v4;
      v2 = (v4 + v2 + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 24) = v2;
  return v2;
}

uint64_t sub_1002FD310(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v6 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v6, a3);
}

uint64_t sub_1002FD3D4(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 40);
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, v4, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, v4, *(v5 + 24), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, v4, v7, a3);
}

uint64_t sub_1002FD498(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_1002FD540(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v7, a2, a4);
}

uint64_t sub_1002FD5CC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(qword_102637BB0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_1002FD648(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

const void **sub_1002FD6F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_10045E858(a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_10045E538(a1, v11);
}

void sub_1002FD8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1002FD940(uint64_t a1)
{
  *a1 = off_1024A9260;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

BOOL sub_1002FD970(uint64_t a1)
{
  if (*a1 && *(a1 + 2) - 1 < 0x5B5)
  {
    if (!*(a1 + 8))
    {
      return 0;
    }
  }

  else if (!*(a1 + 8) || (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

double sub_1002FD9D0(uint64_t a1)
{
  *a1 = off_1024A90F8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1002FDA04(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_1024A91E8;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1002FDA2C(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024A84C8;
  *(result + 24) = 0;
  return result;
}

BOOL sub_1002FDA58(uint64_t a1, unsigned int a2)
{
  result = sub_1000183C8(a2);
  if (!result)
  {
    sub_101A667CC();
  }

  *(a1 + 20) |= 2u;
  *(a1 + 12) = a2;
  return result;
}

uint64_t sub_1002FDA9C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 40);
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 40);
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
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
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

  *(a1 + 36) = result;
  return result;
}

uint64_t sub_1002FDB1C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 112);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637C58 + 8);
  }

  v6 = sub_1002CD7C0(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 112);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102637C58 + 16);
    }

    v10 = sub_1002FC038(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 112);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
    v3 = *(a1 + 112);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 32), a2) + 1;
  v3 = *(a1 + 112);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
  v3 = *(a1 + 112);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_28:
  v13 = *(a1 + 48);
  if (!v13)
  {
    v13 = *(qword_102637C58 + 48);
  }

  v14 = *(v13 + 32);
  v15 = ((v14 << 31) >> 31) & 9;
  if ((v14 & 2) != 0)
  {
    v15 += 9;
  }

  v16 = v15 + ((v14 >> 1) & 2);
  if (*(v13 + 32))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v13 + 28) = v17;
  v4 = (v4 + v17 + 2);
  v3 = *(a1 + 112);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_36:
  v18 = *(a1 + 56);
  if (!v18)
  {
    v18 = *(qword_102637C58 + 56);
  }

  v19 = *(v18 + 32);
  v20 = ((v19 << 31) >> 31) & 9;
  if ((v19 & 2) != 0)
  {
    v20 += 9;
  }

  v21 = v20 + ((v19 >> 1) & 2);
  if (*(v18 + 32))
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  *(v18 + 28) = v22;
  v4 = (v4 + v22 + 2);
  v3 = *(a1 + 112);
  if ((v3 & 0x80) != 0)
  {
LABEL_44:
    v23 = *(a1 + 64);
    if (!v23)
    {
      v23 = *(qword_102637C58 + 64);
    }

    v24 = sub_100300C14(v23, a2);
    v25 = v24;
    if (v24 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 1);
    v3 = *(a1 + 112);
  }

LABEL_50:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v27 = *(a1 + 72);
      if (!v27)
      {
        v27 = *(qword_102637C58 + 72);
      }

      v28 = sub_1002FC41C(v27, a2);
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
      }

      else
      {
        v30 = 1;
      }

      LODWORD(v4) = v4 + v29 + v30 + 1;
      v3 = *(a1 + 112);
    }

    if ((v3 & 0x200) != 0)
    {
      LODWORD(v4) = v4 + 5;
    }

    if ((v3 & 0x400) != 0)
    {
      v31 = *(a1 + 84);
      if ((v31 & 0x80000000) != 0)
      {
        v32 = 11;
      }

      else if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31, a2) + 1;
        v3 = *(a1 + 112);
      }

      else
      {
        v32 = 2;
      }

      LODWORD(v4) = v32 + v4;
    }

    if ((v3 & 0x800) != 0)
    {
      v33 = *(a1 + 88);
      if (!v33)
      {
        v33 = *(qword_102637C58 + 88);
      }

      v34 = *(v33 + 32);
      v35 = ((v34 << 31) >> 31) & 9;
      if ((v34 & 2) != 0)
      {
        v35 += 9;
      }

      v36 = v35 + ((v34 >> 1) & 2);
      if (*(v33 + 32))
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      *(v33 + 28) = v37;
      LODWORD(v4) = v4 + v37 + 2;
      v3 = *(a1 + 112);
    }

    v4 = ((v3 >> 11) & 2) + v4;
    if ((v3 & 0x2000) != 0)
    {
      v38 = *(a1 + 96);
      if (!v38)
      {
        v38 = *(qword_102637C58 + 96);
      }

      v39 = sub_100D10BBC(v38);
      v41 = v39;
      if (v39 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39, v40);
      }

      else
      {
        v42 = 1;
      }

      v4 = (v4 + v41 + v42 + 1);
    }
  }

  *(a1 + 108) = v4;
  return v4;
}

uint64_t sub_1002FDE88(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 44);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637C78 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(qword_102637C78 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(qword_102637C78 + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return result;
}

uint64_t sub_1002FDF60(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 96);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 88), a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(qword_102637C10 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637C10 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102637C10 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102637C10 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102637C10 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_29:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102637C10 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v12, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_32:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102637C10 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_35:
  v14 = *(v5 + 64);
  if (!v14)
  {
    v14 = *(qword_102637C10 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_38:
  v15 = *(v5 + 72);
  if (!v15)
  {
    v15 = *(qword_102637C10 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  if ((*(v5 + 96) & 0x400) != 0)
  {
LABEL_41:
    v16 = *(v5 + 80);
    if (!v16)
    {
      v16 = *(qword_102637C10 + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v16, a2, a4);
  }

  return result;
}

uint64_t sub_1002FE16C(uint64_t result, BOOL a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(result + 8), a2, a4);
    v6 = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 10), a2, a4);
      if ((*(v5 + 16) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 9), a2, a4);
  v6 = *(v5 + 16);
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
  v7 = *(v5 + 11);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

void sub_1002FE214(uint64_t a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((a3 & 1) != 0 || (a4 & 1) != 0 || (a5 & 1) != 0 || (a6 & 1) != 0 || a7)
  {
    sub_10000EC00(__p, [objc_msgSend(a2 "clientAnchor")]);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = __p;
      if (v67 < 0)
      {
        v17 = __p[0];
      }

      *buf = 68291074;
      *&buf[4] = 0;
      v69 = 2082;
      v70 = "";
      v71 = 2114;
      v72 = a2;
      v73 = 2082;
      v74 = v17;
      v75 = 1026;
      *v76 = a3;
      *&v76[4] = 1026;
      *&v76[6] = a4;
      v77 = 1026;
      v78 = a5;
      v79 = 1026;
      v80 = a6;
      v81 = 1026;
      v82 = a7;
      v83 = 1026;
      v84 = a8;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updating ClientServiceSessionInfo cache, Client:%{public, location:escape_only}@, anchor:%{public, location:escape_only}s, adjustRefCountForWhenInUseServiceSession:%{public}hhd, adjustRefCountForAlwaysServiceSession:%{public}hhd, adjustRefCountForLearnedRoutesServiceSession:%{public}hhd, adjustRefCountForVisitHistoryServiceSession:%{public}hhd, adjustRefCountForOldSDKLinking:%{public}hhd, coming:%{public}hhd}", buf, 0x4Au);
    }

    v18 = sub_10045EF04(a1 + 1136, __p);
    v19 = (a1 + 1144);
    if (a8)
    {
      if (v19 == v18)
      {
        *buf = __p;
        v20 = sub_1007AE390(a1 + 1136, __p);
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
      }

      v21 = sub_10045EF04(a1 + 1136, __p);
      if (a3)
      {
        ++v21[14];
        if (!a4)
        {
LABEL_17:
          if (!a5)
          {
            goto LABEL_18;
          }

          goto LABEL_45;
        }
      }

      else if (!a4)
      {
        goto LABEL_17;
      }

      ++v21[15];
      if (!a5)
      {
LABEL_18:
        if (!a6)
        {
          goto LABEL_19;
        }

        goto LABEL_46;
      }

LABEL_45:
      ++v21[16];
      if (!a6)
      {
LABEL_19:
        if (!a7)
        {
LABEL_48:
          v27 = a2;
          v28 = *(a1 + 40);
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 3221225472;
          v65[2] = sub_10023D960;
          v65[3] = &unk_102449BC0;
          v65[4] = v27;
          v65[5] = a1;
          [v28 async:v65];
          if (v67 < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_47:
        ++v21[18];
        goto LABEL_48;
      }

LABEL_46:
      ++v21[17];
      if (!a7)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v19 == v18)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v29 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v30 = __p;
        if (v67 < 0)
        {
          v30 = __p[0];
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = v30;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        *v76 = "iter != fClientServiceSessionInfoMap.end()";
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Decrementing refcount for SevriceSessionInfo - Client not found, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v31 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v32 = __p;
        if (v67 < 0)
        {
          v32 = __p[0];
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = v32;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        *v76 = "iter != fClientServiceSessionInfoMap.end()";
        _os_signpost_emit_with_name_impl(dword_100000000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Decrementing refcount for SevriceSessionInfo - Client not found", "{msg%{public}.0s:Decrementing refcount for SevriceSessionInfo - Client not found, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v33 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        v34 = __p;
        if (v67 < 0)
        {
          v34 = __p[0];
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = v34;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        *v76 = "iter != fClientServiceSessionInfoMap.end()";
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Decrementing refcount for SevriceSessionInfo - Client not found, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }
    }

    else
    {
      if (a3)
      {
        v22 = v18[14];
        if (v22 <= 0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v35 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v36 = __p;
            if (v67 < 0)
            {
              v36 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v36;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.whenInUseServiceSessions > 0";
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Decrementing refcount for Mosasaurus - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v37 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v38 = __p;
            if (v67 < 0)
            {
              v38 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v38;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.whenInUseServiceSessions > 0";
            _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Decrementing refcount for Mosasaurus - refcount should be greater than 0", "{msg%{public}.0s:Decrementing refcount for Mosasaurus - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v39 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            v40 = __p;
            if (v67 < 0)
            {
              v40 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v40;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.whenInUseServiceSessions > 0";
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Decrementing refcount for Mosasaurus - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          goto LABEL_152;
        }

        v18[14] = v22 - 1;
      }

      if (a4)
      {
        v23 = v18[15];
        if (v23 <= 0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v41 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v42 = __p;
            if (v67 < 0)
            {
              v42 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v42;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.alwaysServiceSessions > 0";
            _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Decrementing refcount for MosaTuna - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v43 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v44 = __p;
            if (v67 < 0)
            {
              v44 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v44;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.alwaysServiceSessions > 0";
            _os_signpost_emit_with_name_impl(dword_100000000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Decrementing refcount for MosaTuna - refcount should be greater than 0", "{msg%{public}.0s:Decrementing refcount for MosaTuna - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v45 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            v46 = __p;
            if (v67 < 0)
            {
              v46 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v46;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.alwaysServiceSessions > 0";
            _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Decrementing refcount for MosaTuna - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          goto LABEL_152;
        }

        v18[15] = v23 - 1;
      }

      if (a5)
      {
        v24 = v18[16];
        if (v24 <= 0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v47 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v48 = __p;
            if (v67 < 0)
            {
              v48 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v48;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.learnedRoutesServiceSessions > 0";
            _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Decrementing refcount for LearnedRoutes - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v49 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v50 = __p;
            if (v67 < 0)
            {
              v50 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v50;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.learnedRoutesServiceSessions > 0";
            _os_signpost_emit_with_name_impl(dword_100000000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Decrementing refcount for LearnedRoutes - refcount should be greater than 0", "{msg%{public}.0s:Decrementing refcount for LearnedRoutes - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v51 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            v52 = __p;
            if (v67 < 0)
            {
              v52 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v52;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.learnedRoutesServiceSessions > 0";
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Decrementing refcount for LearnedRoutes - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          goto LABEL_152;
        }

        v18[16] = v24 - 1;
      }

      if (a6)
      {
        v25 = v18[17];
        if (v25 <= 0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v53 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            v54 = __p;
            if (v67 < 0)
            {
              v54 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v54;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.visitHistoryServiceSessions > 0";
            _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Decrementing refcount for VisitHistory - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v55 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v56 = __p;
            if (v67 < 0)
            {
              v56 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v56;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.visitHistoryServiceSessions > 0";
            _os_signpost_emit_with_name_impl(dword_100000000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Decrementing refcount for VisitHistory - refcount should be greater than 0", "{msg%{public}.0s:Decrementing refcount for VisitHistory - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v57 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            v58 = __p;
            if (v67 < 0)
            {
              v58 = __p[0];
            }

            *buf = 68289795;
            *&buf[4] = 0;
            v69 = 2082;
            v70 = "";
            v71 = 2082;
            v72 = v58;
            v73 = 2082;
            v74 = "assert";
            v75 = 2081;
            *v76 = "iter->second.visitHistoryServiceSessions > 0";
            _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Decrementing refcount for VisitHistory - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
          }

          goto LABEL_152;
        }

        v18[17] = v25 - 1;
      }

      if (!a7)
      {
LABEL_37:
        if (!v18[14] && !v18[15] && !v18[16] && !v18[17] && !v18[18])
        {
          sub_1001D2ED0((a1 + 1136), v18);
        }

        goto LABEL_48;
      }

      v26 = v18[18];
      if (v26 > 0)
      {
        v18[18] = v26 - 1;
        goto LABEL_37;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v59 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v60 = __p;
        if (v67 < 0)
        {
          v60 = __p[0];
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = v60;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        *v76 = "iter->second.serviceSessionsWithOldSDKLinking > 0";
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Decrementing refcount for OldSDKLinking - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v61 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v62 = __p;
        if (v67 < 0)
        {
          v62 = __p[0];
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = v62;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        *v76 = "iter->second.serviceSessionsWithOldSDKLinking > 0";
        _os_signpost_emit_with_name_impl(dword_100000000, v61, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Decrementing refcount for OldSDKLinking - refcount should be greater than 0", "{msg%{public}.0s:Decrementing refcount for OldSDKLinking - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v63 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        v64 = __p;
        if (v67 < 0)
        {
          v64 = __p[0];
        }

        *buf = 68289795;
        *&buf[4] = 0;
        v69 = 2082;
        v70 = "";
        v71 = 2082;
        v72 = v64;
        v73 = 2082;
        v74 = "assert";
        v75 = 2081;
        *v76 = "iter->second.serviceSessionsWithOldSDKLinking > 0";
        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Decrementing refcount for OldSDKLinking - refcount should be greater than 0, clientAnchor:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }
    }

LABEL_152:
    abort_report_np();
    __break(1u);
  }
}

void sub_1002FF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FF348(uint64_t a1)
{
  *a1 = off_10249C748;
  [*(a1 + 64) invalidate];

  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  [*(a1 + 80) invalidate];

  *(a1 + 80) = 0;
  *(a1 + 120) = 0;

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;

  *(a1 + 592) = 0;
  *(a1 + 584) = 0;

  *(a1 + 600) = 0;
  *(a1 + 688) = 0;
  v2 = *(a1 + 664);
  *(a1 + 664) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 656);
  *(a1 + 656) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 648);
  *(a1 + 648) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  sub_1001130E4((a1 + 160));
}

void sub_1002FF4FC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  CLProfilingIdentify();
  if (a4)
  {
    v7 = a4[1];
    if (v7)
    {
      v8 = *a4;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = std::__shared_weak_count::lock(v7);
      if (v9 && v8)
      {
        [objc_msgSend(*(v8 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v17 = 1;
          v11 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleMeasurementNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v11, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v12 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "activity";
            v24 = 2050;
            v25 = v8;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleMeasurementNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v17 = 0;
        }

        sub_1002FF8B8(v8, v10, a2, a3);
        if (v17 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v9 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v14 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleMeasurementNotification_bounce(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (!v9)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v9);
    if (!v7)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v13 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A21B90();
  }
}

void sub_1002FF868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002FF8B8(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 25)
  {
    v5 = result;
    if ((*(result + 4784) & 1) != 0 || *(result + 4800))
    {
      v6 = *(a4 + 1160);
      if (v6)
      {
        v7 = sub_1002FF978(v6, 1) ^ 1;
      }

      else
      {
        v7 = 1;
      }

      sub_10000AED0(v11);
      sub_10000B230(v10);
      sub_1002FFEEC(v8, v10, v9, a4, v11);
      sub_100294A04(v5, v11, v7);
      return sub_10000CE1C(v11);
    }
  }

  return result;
}

void sub_1002FF960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002FF978(void *a1, int a2)
{
  if (sub_1002FFDC0(a1 + 5))
  {
    v4 = a1[22];
    v5 = a1[23];
    while (v4 != v5)
    {
      if ((sub_1002B17A4(v4) & 1) == 0)
      {
        if (!a2)
        {
          return 0;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101A3A9C4();
        }

        v13 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          v14 = *v4;
          v15 = *(v4 + 4);
          v19 = 67240448;
          v20 = v14;
          v21 = 1026;
          v22 = v15;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#gnssmeas,invalid report,sv info,system,%{public}d,prn,%{public}d", &v19, 0xEu);
        }

        result = sub_10000A100(121, 0);
        if (result)
        {
          sub_101A3AEDC(v4);
          return 0;
        }

        return result;
      }

      v4 += 144;
    }

    v6 = a1[25];
    v7 = a1[26];
    if (v6 == v7)
    {
LABEL_13:
      v8 = a1[33];
      if (v8 && !sub_1002FB9DC(v8))
      {
        if (!a2)
        {
          return 0;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101A3A9C4();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v19) = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#gnssmeas,invalid report,klobuchar model", &v19, 2u);
        }

        result = sub_10000A100(121, 0);
        if (result)
        {
          sub_101A3B0D0();
          return 0;
        }
      }

      else
      {
        v10 = a1[34];
        v9 = a1[35];
        while (1)
        {
          if (v10 == v9)
          {
            return 1;
          }

          if (!sub_100C71674(v10))
          {
            break;
          }

          v10 += 10;
        }

        if (!a2)
        {
          return 0;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101A3A9C4();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          v18 = *v10;
          v19 = 67240192;
          v20 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#gnssmeas,invalid report,apc parameters,system,%{public}d", &v19, 8u);
        }

        result = sub_10000A100(121, 0);
        if (result)
        {
          sub_101A3B1B4(v10);
          return 0;
        }
      }
    }

    else
    {
      while (*(v6 + 16) && (*v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v6 + 8) & 0x7FFFFFFFu) < 0x7F800000)
      {
        v6 += 24;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }

      if (!a2)
      {
        return 0;
      }

      if (qword_1025D4650 != -1)
      {
        sub_101A3A9C4();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#gnssmeas,invalid report,rxbc", &v19, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101A3AFEC();
        return 0;
      }
    }
  }

  else
  {
    if (a2)
    {
      sub_100C712FC(a1 + 5);
    }

    return 0;
  }

  return result;
}

BOOL sub_1002FFC9C(uint64_t a1)
{
  result = sub_1002B19B8(a1);
  if (result)
  {
    v3 = *(a1 + 8);
    if (!*(a1 + 8))
    {
      return 0;
    }

    v4 = *(a1 + 24);
    if (v4 == -1)
    {
      return 0;
    }

    v5 = *(a1 + 32);
    if (v5 == -1)
    {
      return 0;
    }

    result = 0;
    if (v4 <= v5 && *(a1 + 40) != -1)
    {
      if (*(a1 + 168) < 0.0)
      {
        return 0;
      }

      v6 = *a1;
      if (*a1 <= 3)
      {
        if (!v6)
        {
          return 0;
        }

        if (v6 != 1)
        {
          return v6 != 2 || v3 == 4 && (*(a1 + 5) != 0) == *(a1 + 4) - 1 < 0x18;
        }
      }

      else
      {
        if (v6 <= 15)
        {
          if (v6 == 4)
          {
            if (v3 - 5 >= 3)
            {
              return 0;
            }
          }

          else if (v6 == 8 && (v3 & 0xFE) != 8)
          {
            return 0;
          }

          return 1;
        }

        if (v6 == 32)
        {
          return v3 == 10;
        }

        if (v6 != 16)
        {
          return 1;
        }
      }

      return v3 < 4;
    }
  }

  return result;
}

BOOL sub_1002FFDC0(void *a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v1 = a1[14];
  v2 = a1[15];
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_1002FFC9C(v1);
    if (!result)
    {
      break;
    }

    v1 += 176;
  }

  while (v1 != v2);
  return result;
}

uint64_t *sub_1002FFE20(uint64_t a1, unsigned __int8 *a2)
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
      v5 = *(v2 + 25);
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

void sub_1002FFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 52) |= 2u;
  v6 = *(a5 + 40);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 488) |= 0x1000u;
  v7 = *(v6 + 104);
  if (!v7)
  {
    operator new();
  }

  if (*(a4 + 1160))
  {
    sub_100294964(a2, a5);
    v8 = *(a4 + 1160);

    sub_1002B1A50(v8, v7);
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v9 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Raven: missing gnss meas data", v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A24FF0();
    }
  }
}

uint64_t sub_100300080(uint64_t a1)
{
  result = sub_1002AF270(a1);
  if (result)
  {
    if (*(a1 + 8) == -32768)
    {
      return 0;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        LODWORD(v3) = *(a1 + 24) != -32768;
      }

      return (*(a1 + 10) != 2) ^ v3;
    }
  }

  return result;
}

uint64_t sub_1003000E0(uint64_t result)
{
  *result = off_1024A8F18;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void *sub_100300108(void *result)
{
  *result = &off_1024A8E28;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_10030012C(uint64_t a1)
{
  *a1 = off_1024A8EA0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double sub_10030015C(uint64_t a1)
{
  *a1 = off_1024A9008;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void *sub_10030018C(void *result)
{
  *result = off_1024A8F90;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

BOOL sub_1003001B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*a1)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else if (!v1 || (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if ((*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return 0;
}

void *sub_100300280(void *result)
{
  *result = &off_1024A8BD0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1003002A4(uint64_t a1)
{
  *a1 = off_1024A8AE0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_1003002D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 3)
  {
    return v1 + 2;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TranslateSvHealth,unhandled type,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B8633C(a1);
  }

  return 1;
}

uint64_t sub_100300424(unsigned __int8 *a1)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "TranslateSvReferencePoint,unhandled type,%{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B86428(a1);
      return 0;
    }
  }

  return result;
}

double sub_100300514(uint64_t a1)
{
  *a1 = off_1024A8B58;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_100300550(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 0xB)
  {
    return dword_101D7A58C[v1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TranslateBand,unhandled type,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B86514(a1);
  }

  return 1;
}

uint64_t sub_1003006AC(uint64_t result)
{
  *result = off_1024A8D38;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1003006D4(uint64_t a1)
{
  *a1 = off_1024A92D8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

double sub_100300704(uint64_t a1)
{
  *a1 = off_1024A89F0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_100300734(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_1024A8A68;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_100300760(uint64_t a1)
{
  *a1 = off_1024A8900;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

double sub_100300790(uint64_t a1)
{
  *a1 = off_1024A8810;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

double sub_1003007D4(uint64_t a1)
{
  *a1 = off_1024A83D8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  return result;
}

uint64_t sub_100300810(uint64_t result)
{
  *result = off_1024A7FA0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100300834(uint64_t result)
{
  *result = off_1024A8090;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

double sub_100300858(uint64_t a1)
{
  *a1 = off_1024A85B8;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_10030088C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 < 5)
  {
    return v1 + 2;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TranslateDetectionMethod,unhandled type,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B86600(a1);
  }

  return 1;
}

_DWORD *sub_10030097C(_DWORD *result, int *a2)
{
  v2 = *a2;
  result[2] = *a2;
  v3 = result[6];
  v4 = v3 | 1;
  result[6] = v3 | 1;
  if ((v2 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v5 = a2[1];
    v6 = a2[2];
    if ((v6 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v5 & 0x7FFFFFFFu) < 0x7F800000 == (v6 & 0x7FFFFFFFu) < 0x7F800000)
    {
      v4 = v3 | 5;
      result[6] = v3 | 5;
      result[4] = v6;
    }

    v8 = ((v5 & 0x7FFFFFFFu) < 0x7F800000) ^ ((v6 & 0x7FFFFFFFu) < 0x7F800000);
    if ((v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      result[6] = v4 | 2;
      result[3] = v5;
    }
  }

  return result;
}

uint64_t sub_100300A7C(uint64_t result)
{
  *result = off_1024A8108;
  *(result + 16) = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  return result;
}

uint64_t sub_100300AA8(uint64_t result)
{
  *result = off_1024A8180;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100300ACC(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 24) = 0;
  *result = off_1024A82E8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100300AF4(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 44))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102637C80 + 8);
    }

    v5 = sub_1002FBDD8(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = v6 + v7 + 1;
  }

  else
  {
    v3 = 0;
  }

  v8 = *(a1 + 24);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_1002FDB1C(*(*(a1 + 16) + 8 * v10), a2);
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(a1 + 24));
  }

  *(a1 + 40) = v9;
  return v9;
}

uint64_t sub_100300BC4(uint64_t a1)
{
  v1 = *(a1 + 52);
  if (*(a1 + 52))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 48) = v1;
  return v1;
}

uint64_t sub_100300C14(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 48);
  if (!v3)
  {
    result = 0;
    goto LABEL_13;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 48);
  }

LABEL_8:
  v6 = v4 + 9;
  if ((v3 & 4) == 0)
  {
    v6 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v6 += 9;
  }

  result = v6 + ((v3 >> 3) & 2);
LABEL_13:
  *(a1 + 44) = result;
  return result;
}

uint64_t sub_100300CA8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v6 = *(a1 + 12);
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

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  *(a1 + 16) = v4;
  return v4;
}

uint64_t sub_100300D44(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637CC0 + 16);
    }

    v9 = sub_100D154B8(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_23:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_100300E30(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 44);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      result = v4 + 9;
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

  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100300EA4(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (v3)
  {
    if (*(a1 + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 28);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      result = v4 + 9;
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

  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100300F00(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 56);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_45;
  }

  if (*(a1 + 56))
  {
    v5 = *(a1 + 48);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 56);
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 56) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102637CF0 + 8);
  }

  v7 = sub_100300D44(v6, a2);
  v8 = v7;
  if (v7 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
  }

  else
  {
    v9 = 1;
  }

  v4 = (v4 + v8 + v9 + 1);
  v3 = *(a1 + 56);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v10 = *(a1 + 16);
    if (!v10)
    {
      v10 = *(qword_102637CF0 + 16);
    }

    v11 = sub_1002FCBA8(v10, a2);
    v12 = v11;
    if (v11 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2);
    }

    else
    {
      v13 = 1;
    }

    v4 = (v4 + v12 + v13 + 1);
    v3 = *(a1 + 56);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v14 = *(a1 + 24);
  if (!v14)
  {
    v14 = *(qword_102637CF0 + 24);
  }

  v15 = sub_1002FCBA8(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
  }

  else
  {
    v17 = 1;
  }

  v4 = (v4 + v16 + v17 + 1);
  v3 = *(a1 + 56);
  if ((v3 & 0x10) == 0)
  {
LABEL_19:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_33:
  v18 = *(a1 + 32);
  if (!v18)
  {
    v18 = *(qword_102637CF0 + 32);
  }

  v19 = sub_1002FCBA8(v18, a2);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2);
  }

  else
  {
    v21 = 1;
  }

  v4 = (v4 + v20 + v21 + 1);
  if ((*(a1 + 56) & 0x20) != 0)
  {
LABEL_39:
    v22 = *(a1 + 40);
    if (!v22)
    {
      v22 = *(qword_102637CF0 + 40);
    }

    v23 = sub_1002FCBA8(v22, a2);
    v25 = v23;
    if (v23 >= 0x80)
    {
      v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23, v24);
    }

    else
    {
      v26 = 1;
    }

    v4 = (v4 + v25 + v26 + 1);
  }

LABEL_45:
  *(a1 + 52) = v4;
  return v4;
}

uint64_t sub_1003010E8(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 24))
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 24) & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(qword_102637D00 + 8);
  }

  v5 = sub_1002FCBA8(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  if ((*(a1 + 24) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
  }

LABEL_16:
  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_100301194(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (v3)
  {
    if (*(a1 + 44))
    {
      v6 = *(a1 + 24);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 44);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 8) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 0x10) != 0)
    {
      v7 = *(a1 + 28);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      }

      else
      {
        v8 = 2;
      }

      v5 = (v8 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return v5;
}

uint64_t sub_100301258(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
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

uint64_t sub_1003012E4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102637C80 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

uint64_t sub_10030136C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 112);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637C58 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637C58 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v9 = *(v5 + 48);
  if (!v9)
  {
    v9 = *(qword_102637C58 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 56);
  if (!v10)
  {
    v10 = *(qword_102637C58 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 64);
  if (!v11)
  {
    v11 = *(qword_102637C58 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 72);
  if (!v12)
  {
    v12 = *(qword_102637C58 + 72);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 104), a2, a4);
    if ((*(v5 + 112) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_39:
  v13 = *(v5 + 88);
  if (!v13)
  {
    v13 = *(qword_102637C58 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v13, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return result;
  }

LABEL_43:
  v14 = *(v5 + 96);
  if (!v14)
  {
    v14 = *(qword_102637C58 + 96);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v14, a2, a4);
}

uint64_t sub_1003015AC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);
    if (!v7)
    {
      v7 = *(qword_102637BC0 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return result;
}