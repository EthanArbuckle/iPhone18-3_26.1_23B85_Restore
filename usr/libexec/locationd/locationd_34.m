BOOL sub_1002485A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018E854(a1);
  if (result)
  {
    v6 = *(a2 + 84) - *(a3 + 84);
    return v6 >= *(sub_100100690() + 6);
  }

  return result;
}

id sub_100248618(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  if (v5 < *(a1 + 40))
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

double *sub_100248674(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *result;
  v9 = *a3;
  v10 = *a3;
  if (v6 <= v8)
  {
    if (v10 <= v6)
    {
      v6 = *a3;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *a2;
      v12 = *result;
      v13 = *result;
      if (v11 > v13)
      {
        *result = *a2;
        *a2 = v12;
        v5 = *a3;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v10 > v6)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v6 = v8;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v7;
    v5 = *a3;
    v6 = *a3;
    if (v6 > v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = *a4;
  if (v6 < v14)
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a3;
    v16 = *a2;
    v17 = *a2;
    if (v15 > v17)
    {
      *a2 = *a3;
      *a3 = v16;
      v18 = *a2;
      v19 = *result;
      v20 = *result;
      if (v18 > v20)
      {
        *result = *a2;
        *a2 = v19;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  v23 = *a4;
  if (v21 > v23)
  {
    *a4 = *a5;
    *a5 = v22;
    v24 = *a4;
    v25 = *a3;
    v26 = *a3;
    if (v24 > v26)
    {
      *a3 = *a4;
      *a4 = v25;
      v27 = *a3;
      v28 = *a2;
      v29 = *a2;
      if (v27 > v29)
      {
        *a2 = *a3;
        *a3 = v28;
        v30 = *a2;
        v31 = *result;
        v32 = *result;
        if (v30 > v32)
        {
          *result = *a2;
          *a2 = v31;
        }
      }
    }
  }

  return result;
}

void *sub_1002487F0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
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

void sub_100248978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002489C4(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(a1 + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(a1 + 52);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v4 + v10 + v6 + 1);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 24);
    if (!v11)
    {
      v11 = *(qword_1026380D8 + 24);
    }

    v12 = sub_10013276C(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
    v3 = *(a1 + 52);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    v15 = *(qword_1026380D8 + 32);
  }

  v16 = sub_100E7ADE8(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_32:
    v19 = *(a1 + 40);
    if (!v19)
    {
      v19 = *(qword_1026380D8 + 40);
    }

    v20 = sub_100E7C05C(v19, a2);
    v22 = v20;
    if (v20 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, v21);
    }

    else
    {
      v23 = 1;
    }

    v4 = (v4 + v22 + v23 + 1);
  }

LABEL_38:
  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_100248B84(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_10047DA08((a1 + 8), a3);
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

uint64_t sub_100248C10(void *a1, void *a2, _DWORD *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v6 - v7) - 1;
  }

  v9 = a1[4];
  v10 = a1[5];
  v11 = v10 + v9;
  if (v8 == v10 + v9)
  {
    sub_1004F03C4(a1);
    v9 = a1[4];
    v10 = a1[5];
    v7 = a1[1];
    v11 = v9 + v10;
  }

  v12 = *(v7 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11;
  *v12 = *a2;
  *(v12 + 8) = *a3;
  v13 = v10 + 1;
  a1[5] = v13;
  v14 = v9 + v13;
  v15 = (v7 + 8 * (v14 >> 8));
  if (v14)
  {
    v16 = *v15 + 16 * v14;
  }

  else
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 16;
}

void sub_100248CD8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D41E0 != -1)
  {
    sub_1018D4598();
  }

  v4 = qword_1025D41E8;
  if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 352);
    v6 = *(a2 + 1);
    v7 = *(a2 + 9);
    v8 = *(a2 + 10);
    v9 = *(a2 + 11);
    v10 = *(a2 + 12);
    v11 = *(a2 + 13);
    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    v14 = *(a2 + 19);
    v15 = *(a2 + 23);
    v16 = *(a2 + 27);
    v17 = *(a2 + 31);
    v18 = *(a2 + 35);
    v19 = (*(a2 + 39) * 57.296);
    v20 = *(a2 + 43);
    *v22 = 134352896;
    *&v22[4] = v5;
    *&v22[12] = 2050;
    *&v22[14] = v6;
    *&v22[22] = 1026;
    *v23 = v7;
    *&v23[4] = 1026;
    *&v23[6] = v8;
    *&v23[10] = 1026;
    *&v23[12] = v9;
    *&v23[16] = 1026;
    *&v23[18] = v10;
    *&v23[22] = 1026;
    *&v23[24] = v11;
    *&v23[28] = 1026;
    *&v23[30] = v12;
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v14;
    v28 = 2050;
    v29 = v15;
    v30 = 2050;
    v31 = v16;
    v32 = 2050;
    v33 = v17;
    v34 = 2050;
    v35 = v18;
    v36 = 2050;
    v37 = v19;
    v38 = 1026;
    v39 = v20;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "ViewObstructedState,timestamp,%{public}f,aopTimestamp,%{public}llu,shouldSuppress,%{public}u,currentState,%{public}u,currentEventTag,%{public}u,orientation,%{public}u,motionType,%{public}u,sufficientMotion,%{public}u,lux,%{public}f,rawProxIntensity,%{public}f,factoryPocketProbability,%{public}f,baselinedPocketProbability,%{public}f,pocketProbSuppressThreshold,%{public}f,pocketProbUnsuppressThreshold,%{public}f,gravityAngleDeg,%{public}f,hasProxCalibration,%{public}u", v22, 0x86u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D45AC();
  }

  if (*(a2 + 44) == 1)
  {
    *&v23[24] = 0;
    *v22 = sub_100040914(a1, *(a1 + 352));
    v21 = *(a2 + 16);
    *&v22[8] = *a2;
    *v23 = v21;
    *&v23[13] = *(a2 + 29);
    sub_100013B00(a1, 42, v22, 56);
  }
}

void sub_100248EF4(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v8 = *a1;
  v9 = a1[1];
  while (v8 != v9)
  {
    sub_10018F0D0(&v32);
    v10 = *(v8 + 18);
    __p = v32;
    memset(&v32, 0, sizeof(v32));
    v34 = v10;
    sub_10014E704(&v35, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v8 += 6;
  }

  sub_1002491E0(&v35, a2, a3, &__p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = *a1;
  v12 = a1[1];
  if (*a1 != v12)
  {
    do
    {
      sub_10018F0D0(&v32);
      v13 = sub_10045EF04(&__p, &v32.__r_.__value_.__l.__data_);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (&__p.__r_.__value_.__r.__words[1] != v13)
      {
        v14 = a4[1];
        v15 = a4[2];
        if (v14 >= v15)
        {
          v21 = *a4;
          v22 = v14 - *a4;
          v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 5) + 1;
          if (v23 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v24 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v21) >> 5);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0x155555555555555)
          {
            v23 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v23)
          {
            sub_1001A1980(a4, v23);
          }

          v25 = (32 * (v22 >> 5));
          v26 = v11[1];
          *v25 = *v11;
          v25[1] = v26;
          v27 = v11[2];
          v28 = v11[3];
          v29 = v11[5];
          v25[4] = v11[4];
          v25[5] = v29;
          v25[2] = v27;
          v25[3] = v28;
          v20 = v25 + 6;
          v30 = v25 - v22;
          memcpy(v25 - v22, v21, v22);
          v31 = *a4;
          *a4 = v30;
          a4[1] = v20;
          a4[2] = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          v16 = v11[1];
          *v14 = *v11;
          v14[1] = v16;
          v17 = v11[2];
          v18 = v11[3];
          v19 = v11[5];
          v14[4] = v11[4];
          v14[5] = v19;
          v14[2] = v17;
          v14[3] = v18;
          v20 = v14 + 6;
        }

        a4[1] = v20;
      }

      v11 += 6;
    }

    while (v11 != v12);
  }

  sub_10001AF44(&__p, __p.__r_.__value_.__l.__size_);
  sub_10001AF44(&v35, v36[0]);
}

void sub_1002491E0(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v41 = 0;
  v42 = 0;
  v40 = &v41;
  v5 = (a1 + 1);
  v6 = *a1;
  if (*a1 == a1 + 1)
  {
    goto LABEL_22;
  }

  do
  {
    if ((v6[7] & 0x80000000) != 0)
    {
      sub_10014E704(&v40, v6 + 4);
    }

    v9 = v6[1];
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
        v10 = v6[2];
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
    }

    v6 = v10;
  }

  while (v10 != v5);
  if (!v42)
  {
LABEL_22:
    v18 = v41;
    *(a4 + 8) = v41;
    *(a4 + 16) = 0;
    *a4 = a4 + 8;
    goto LABEL_86;
  }

  *(a4 + 8) = 0;
  v12 = a4 + 8;
  *(a4 + 16) = 0;
  *a4 = a4 + 8;
  v13 = v40;
  if (v40 == &v41)
  {
    v17 = (a4 + 16);
  }

  else
  {
    do
    {
      v14 = *(v13 + 14);
      if (*(sub_1000F7F38() + 33) <= v14)
      {
        sub_10014E704(a4, v13 + 4);
      }

      v15 = *(v13 + 1);
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
          v16 = *(v13 + 2);
          v11 = *v16 == v13;
          v13 = v16;
        }

        while (!v11);
      }

      v13 = v16;
    }

    while (v16 != &v41);
    v17 = (a4 + 16);
    if (*(a4 + 16))
    {
      goto LABEL_37;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, all aps filtered out due to weak rssi, add them back to yield a fix", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(buf);
    LOWORD(__p[0]) = 0;
    v39 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::map<std::string, int> CLLocationCalculator::filterWifiApsBasedOnRssiCriteria(const std::map<std::string, int> &, BOOL &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  v20 = v40;
  if (v40 != &v41)
  {
    do
    {
      sub_10014E704(a4, v20 + 4);
      v21 = v20[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v20[2];
          v11 = *v22 == v20;
          v20 = v22;
        }

        while (!v11);
      }

      v20 = v22;
    }

    while (v22 != &v41);
  }

  *a2 = 1;
LABEL_37:
  while (1)
  {
    v23 = *v17;
    if (v23 <= sub_10024974C(a3))
    {
      break;
    }

    v24 = *a4;
    if (*a4 == v12)
    {
      v30 = *a4;
      v24 = a4 + 8;
    }

    else
    {
      v25 = *a4;
      while (1)
      {
        v26 = v25[1];
        v27 = v25;
        if (v26)
        {
          do
          {
            v25 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v25 = v27[2];
            v11 = *v25 == v27;
            v27 = v25;
          }

          while (!v11);
        }

        if (v25 == v12)
        {
          break;
        }

        if (*(v24 + 55) < 0)
        {
          sub_100007244(buf, *(v24 + 32), *(v24 + 40));
        }

        else
        {
          *buf = *(v24 + 32);
          v47 = *(v24 + 48);
        }

        v28 = *(v24 + 56);
        v48 = v28;
        if (*(v25 + 55) < 0)
        {
          sub_100007244(__p, v25[4], v25[5]);
          v28 = v48;
        }

        else
        {
          *__p = *(v25 + 2);
          v44 = v25[6];
        }

        v29 = *(v25 + 14);
        v45 = v29;
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(*buf);
        }

        if (v28 < v29)
        {
          v24 = v25;
        }
      }

      v30 = *a4;
    }

    v31 = a4 + 8;
    if (v30 != v12)
    {
      v32 = v30;
      while (1)
      {
        v33 = v32[1];
        v34 = v32;
        if (v33)
        {
          do
          {
            v32 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v32 = v34[2];
            v11 = *v32 == v34;
            v34 = v32;
          }

          while (!v11);
        }

        if (v32 == v12)
        {
          break;
        }

        if (*(v32 + 55) < 0)
        {
          sub_100007244(buf, v32[4], v32[5]);
        }

        else
        {
          *buf = *(v32 + 2);
          v47 = v32[6];
        }

        v35 = *(v32 + 14);
        v48 = v35;
        if (*(v30 + 55) < 0)
        {
          sub_100007244(__p, *(v30 + 32), *(v30 + 40));
          v35 = v48;
        }

        else
        {
          *__p = *(v30 + 32);
          v44 = *(v30 + 48);
        }

        v36 = *(v30 + 56);
        v45 = v36;
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(*buf);
        }

        if (v35 < v36)
        {
          v30 = v32;
        }
      }

      v31 = v30;
    }

    v37 = *(v24 + 56);
    v38 = *(v31 + 56);
    if (v37 - v38 <= *(sub_1000F7F38() + 72))
    {
      break;
    }

    sub_1001D2ED0(a4, v31);
  }

  v18 = v41;
LABEL_86:
  sub_10001AF44(&v40, v18);
}

void sub_1002496E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10001AF44(v24, *(v24 + 8));
  sub_10001AF44(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10024974C(void *a1)
{
  v2 = *(sub_1000F7F38() + 58);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v2 = *(sub_1000F7F38() + 62);
        goto LABEL_20;
      case 4:
        v2 = *(sub_1000F7F38() + 63);
        goto LABEL_20;
      case 6:
        v2 = *(sub_1000F7F38() + 59);
        goto LABEL_20;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v2 = *(sub_1000F7F38() + 58);
        goto LABEL_20;
      case 1:
        v2 = *(sub_1000F7F38() + 60);
        goto LABEL_20;
      case 2:
        v2 = *(sub_1000F7F38() + 61);
        goto LABEL_20;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F28B0();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    v6 = 67109120;
    v7 = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled signal environment type: %d", &v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018F2CA0();
  }

LABEL_20:
  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = 67109376;
    v7 = a1;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, signal environment, %d, sufficient ap threshold, %d", &v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F2DA8(a1);
  }

  return v2;
}

void sub_10024993C(char ****a1, void ***a2, int *a3, int *a4, double *a5, long double *a6)
{
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v11 = *a1;
  v12 = a1[1];
  while (v11 != v12)
  {
    v27 = *v11;
    sub_10018F0D0(&__p);
    sub_100249B9C(&v29, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 += 12;
  }

  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v13 = *a2;
  v14 = v28;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_1000F2BC4(&v27, v13 + 4);
      v15 = v13[1];
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
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
    }

    while (v16 != a2 + 1);
    v14 = v27;
  }

  v25 = 0;
  v26 = 0;
  v24 = &v25;
  sub_100249D2C(v29, v30, v14, v28, &v24, &v25, &__p);
  *a5 = 1.0 - v26 / a2[2];
  v18 = *a4;
  v19 = *a3;
  v20 = *(sub_1000F7F38() + 37);
  v21 = *a5;
  v22 = sub_1000F7F38();
  v23 = exp((v18 - v19) / v20);
  *a6 = v23 * exp(v21 * *(v22 + 38));
  sub_10001AF44(&v24, v25);
  sub_10001AF44(&v27, v28[0]);
  sub_10001AF44(&v29, v30[0]);
}

void sub_100249B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13, uint64_t a14, char a15, char *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10001AF44(&a9, a10);
  sub_10001AF44(&a12, a13);
  sub_10001AF44(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100249B9C(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_100249C40(void *a1, void *a2, void **a3)
{
  v3 = a2;
  v10 = a2;
  if (a1 != a2)
  {
    if ((sub_100019438(a1 + 4, a3) & 0x80) != 0)
    {
      v7 = 1;
      v3 = a1;
      while (1)
      {
        v9 = v3;
        v8 = sub_10064C6C8(&v9, v7, &v10);
        if (v9 == v10 || (sub_100019438(v9 + 4, a3) & 0x80) == 0)
        {
          break;
        }

        v3 = v9;
        v7 *= 2;
        if (v10 == v9)
        {
          return v3;
        }
      }

      if (v7 - v8 == 1)
      {
        return v9;
      }

      else
      {
        return sub_10064C620(v3, a3, v7 - v8);
      }
    }

    else
    {
      return a1;
    }
  }

  return v3;
}

double sub_100249D2C@<D0>(void **a1@<X0>, void **a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a3;
  v18 = a1;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  for (i = 0; v17 != a4; a3 = v17)
  {
    v10 = sub_100249C40(v18, a2, a3 + 4);
    v11 = v18;
    v18 = v10;
    sub_100249E18(v10 == v11, &v18, &v17, &v16, &i);
    if (v18 == a2)
    {
      break;
    }

    v12 = sub_100249C40(v17, a4, v18 + 4);
    v13 = v17;
    v17 = v12;
    sub_100249E18(v12 == v13, &v18, &v17, &v16, &i);
  }

  *a7 = a2;
  *(a7 + 8) = a4;
  result = *&v16;
  *(a7 + 16) = v16;
  return result;
}

uint64_t sub_100249E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_100249F6C(a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
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
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

void *sub_100249EE8(void *a1, uint64_t a2, void **a3)
{
  result = *sub_100249FD8(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1000F2EC4();
  }

  return result;
}

uint64_t sub_100249F6C(uint64_t a1, void **a2)
{
  v3 = sub_100249EE8(*a1, *(a1 + 8), a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
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
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void **sub_100249FD8(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (sub_100019438(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
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

      if ((sub_100019438(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((sub_100019438((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
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

  if ((sub_100019438(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return sub_1000F2B3C(a1, a3, a5);
}

void *sub_10024A16C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 5) < a4)
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

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x155555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      sub_10024A2CC(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 5) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 7);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 7);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

void sub_10024A2CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1001A4428(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10024A318(uint64_t a1, uint64_t a2)
{
  v140 = *(a2 + 16);
  v2 = *(a1 + 248);
  if (!v2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v44 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "#selection,No valid hypothesis available for selection", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

LABEL_79:
    sub_101A7B5F4(buf);
    LOWORD(v132) = 0;
    v49 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v49);
    goto LABEL_166;
  }

  v5 = 1;
  v6 = *(a1 + 248);
  do
  {
    v6 = *v6;
    --v5;
  }

  while (v6);
  if (v5)
  {
    if (sub_10024B964(a1))
    {
      v130 = 0.0;
      v131 = 0.0;
      if (sub_100208760((a1 + 2384), &v131, &v130, *(a2 + 24), *(a1 + 2248)))
      {
        v132 = off_1024DE5F8;
        v136 = xmmword_101C75BF0;
        *v139 = 0xBFF0000000000000;
        *&v139[12] = 0;
        *&v139[20] = 0;
        *&v133 = *(a2 + 8);
        *(&v133 + 1) = v140;
        v135 = xmmword_101C75BF0;
        v138 = xmmword_101C76220;
        v137 = xmmword_101C76220;
        v134 = 0uLL;
        v7 = *(a1 + 248);
        if (v7)
        {
          v99 = v130 * 0.0174532925;
          v100 = v131 * 0.0174532925;
          v8 = 0.0;
          __asm { FMOV            V0.2D, #-1.0 }

          v116 = _Q0;
          _Q0.f64[0] = 3.14159265;
          v117 = _Q0;
          _Q0.f64[0] = NAN;
          _Q0.f64[1] = NAN;
          v111 = vnegq_f64(_Q0);
          v114 = 0.0;
          v115 = 0.0;
          v113 = 0.0;
          do
          {
            if ((v7[107] & 0xFFFFFFFB) != 0)
            {
              v14 = v7[8];
              if (v14)
              {
                if (*(*(v7[4] + 8 * ((v14 + v7[7] - 1) / 0x1AuLL)) + 152 * ((v14 + v7[7] - 1) % 0x1AuLL) + 148) == 1)
                {
                  v119 = off_1024DE5F8;
                  v120 = v116;
                  v123 = xmmword_101C75BF0;
                  v124 = xmmword_101C75BF0;
                  v125 = v116;
                  v126 = v116;
                  v127 = 0xBFF0000000000000;
                  v128 = 0;
                  v129 = 0;
                  v15 = sub_10002980C((v7 + 25), &v140);
                  v16 = sub_10002A8E4((v7 + 25), &v119);
                  if (*(a1 + 180) == 1)
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v17 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v18 = *(v7 + 212);
                      *buf = 67109120;
                      v144 = v18;
                      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#selection,Likelihood equal override setting likelihood to 1 for hID,%d", buf, 8u);
                    }

                    v19 = 1.0;
                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v20 = *(v7 + 212);
                      v141 = 67109120;
                      v142 = v20;
                      v105 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v105);
                      if (v105 != buf)
                      {
                        free(v105);
                      }
                    }
                  }

                  else
                  {
                    v19 = *(v7 + 102);
                  }

                  if ((v15 & v16) == 1 && v19 > 0.00000001)
                  {
                    v21 = v8 + v19;
                    *&v134 = (v19 * v121 + v8 * *&v134) / (v8 + v19);
                    sub_10002DA78(*&v134);
                    *&v134 = v23;
                    v24 = *(&v134 + 1);
                    *v25.i64 = v122 * 0.0174532925;
                    if (fabs(v122 * 0.0174532925) <= *v117.i64)
                    {
                      v27 = v117;
                    }

                    else
                    {
                      v106 = *vbslq_s8(v111, v117, v25).i64;
                      v26 = fmod(*v25.i64 + v106, 6.28318531);
                      v27 = v117;
                      *v25.i64 = v26 - v106;
                    }

                    *v22.i64 = v24 * 0.0174532925;
                    v28 = v24 * 0.0174532925;
                    if (fabs(v24 * 0.0174532925) > *v27.i64)
                    {
                      v101 = *vbslq_s8(v111, v27, v22).i64;
                      v107 = v25.i64[0];
                      v29 = fmod(*v22.i64 + v101, 6.28318531);
                      *v22.i64 = v24 * 0.0174532925;
                      v25.i64[0] = v107;
                      v27.i64[0] = v117.i64[0];
                      v28 = v29 - v101;
                    }

                    if (vabdd_f64(*v25.i64, v28) <= *v27.i64)
                    {
                      v30 = *v25.i64 - v28;
                    }

                    else
                    {
                      v30 = *v25.i64 - v28 + dbl_101CFC5F0[*v25.i64 - v28 > *v27.i64];
                    }

                    *(&v134 + 1) = (v19 * ((*v22.i64 + v30) * 57.2957795) + v8 * v24) / v21;
                    sub_10002DB04(*(&v134 + 1));
                    *(&v134 + 1) = v33;
                    if (*(&v123 + 1) != -1.0 && *&v124 != -1.0)
                    {
                      v34 = v19 * *(&v123 + 1) + v115 * *(&v135 + 1);
                      v115 = v115 + v19;
                      *(&v135 + 1) = v34 / v115;
                    }

                    if (v126.f64[0] != -1.0 && v126.f64[1] != -1.0)
                    {
                      v35 = *&v138;
                      *v31.i64 = v126.f64[0] * 0.0174532925;
                      if (fabs(v126.f64[0] * 0.0174532925) <= *v117.i64)
                      {
                        v37 = v117;
                      }

                      else
                      {
                        v108 = *vbslq_s8(v111, v117, v31).i64;
                        v36 = fmod(*v31.i64 + v108, 6.28318531);
                        v37 = v117;
                        *v31.i64 = v36 - v108;
                      }

                      *v32.i64 = v35 * 0.0174532925;
                      v38 = v35 * 0.0174532925;
                      if (fabs(v35 * 0.0174532925) > *v37.i64)
                      {
                        v102 = *vbslq_s8(v111, v37, v32).i64;
                        v109 = v31.i64[0];
                        v39 = fmod(*v32.i64 + v102, 6.28318531);
                        *v32.i64 = v35 * 0.0174532925;
                        v31.i64[0] = v109;
                        v37.i64[0] = v117.i64[0];
                        v38 = v39 - v102;
                      }

                      if (vabdd_f64(*v31.i64, v38) <= *v37.i64)
                      {
                        v40 = *v31.i64 - v38;
                      }

                      else
                      {
                        v40 = *v31.i64 - v38 + dbl_101CFC5F0[*v31.i64 - v38 > *v37.i64];
                      }

                      v41 = v19 * ((*v32.i64 + v40) * 57.2957795) + v113 * v35;
                      v113 = v113 + v19;
                      *&v138 = v41 / v113;
                      sub_1001D08A4(v41 / v113);
                      *&v138 = v42;
                    }

                    if (v125.f64[0] != -1.0 && v125.f64[1] != -1.0)
                    {
                      v43 = v19 * v125.f64[0] + v114 * *&v137;
                      v114 = v114 + v19;
                      *&v137 = v43 / v114;
                    }
                  }

                  else
                  {
                    v21 = v8;
                  }

                  v8 = v21;
                }
              }
            }

            v7 = *v7;
          }

          while (v7);
          if (v8 >= 0.00000001)
          {
            v52 = *(a1 + 248);
            if (v52)
            {
              v53 = 0;
              v118 = 0.0;
              v112 = 0.0;
              v103 = 0.0;
              v97 = 0.0;
              v98 = 0.0;
              v54 = -1.0;
              v55 = v114;
              v56 = v115;
              do
              {
                if ((v52[107] & 0xFFFFFFFB) != 0)
                {
                  v57 = v52[8];
                  if (v57)
                  {
                    if (*(*(v52[4] + 8 * ((v57 + v52[7] - 1) / 0x1AuLL)) + 152 * ((v57 + v52[7] - 1) % 0x1AuLL) + 148) == 1)
                    {
                      v119 = off_1024DE5F8;
                      v120 = v116;
                      v123 = xmmword_101C75BF0;
                      v124 = xmmword_101C75BF0;
                      v125 = v116;
                      v126 = v116;
                      v127 = 0xBFF0000000000000;
                      v128 = 0;
                      v129 = 0;
                      if (*(a1 + 180) == 1)
                      {
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v58 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v59 = *(v52 + 212);
                          *buf = 67109120;
                          v144 = v59;
                          _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEBUG, "#selection,Likelihood equal override setting likelihood to 1 for hID,%d", buf, 8u);
                        }

                        v60 = 1.0;
                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v69 = *(v52 + 212);
                          v141 = 67109120;
                          v142 = v69;
                          v70 = _os_log_send_and_compose_impl();
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v70);
                          if (v70 != buf)
                          {
                            free(v70);
                          }
                        }

                        v55 = v114;
                        v56 = v115;
                      }

                      else
                      {
                        v60 = *(v52 + 102);
                      }

                      if (sub_10002A8E4((v52 + 25), &v119))
                      {
                        v110 = v54;
                        v104 = *&v123;
                        v61 = sub_1001FAD44(v121, *&v134);
                        v62 = *&v123;
                        v63 = sub_1001FAD44(v122, *(&v134 + 1));
                        v64 = -1.0;
                        v65 = v60;
                        v66 = v60 / v8;
                        if (*(&v123 + 1) == -1.0 || *&v124 == -1.0 || v115 <= 0.00000001)
                        {
                          v54 = v60 / v8;
                        }

                        else
                        {
                          v54 = v60 / v115;
                          v103 = v103 + v60 / v115 * ((*(&v123 + 1) - *(&v135 + 1)) * (*(&v123 + 1) - *(&v135 + 1))) + v60 / v115 * (*&v124 * *&v124);
                        }

                        if (v126.f64[0] != -1.0)
                        {
                          v67 = v126.f64[1];
                          if (v126.f64[1] == -1.0 || v113 <= 0.00000001)
                          {
                            v65 = v60;
                          }

                          else
                          {
                            v68 = sub_1001FAD44(v126.f64[0], *&v138);
                            v65 = v60;
                            v54 = v60 / v113;
                            v97 = v97 + v60 / v113 * (v68 * v68) + v60 / v113 * (v67 * v67);
                            v64 = -1.0;
                          }
                        }

                        if (v125.f64[0] != v64 && v125.f64[1] != v64 && v114 > 0.00000001)
                        {
                          v54 = v65 / v114;
                          v98 = v98 + v65 / v114 * ((v125.f64[0] - *&v137) * (v125.f64[0] - *&v137)) + v65 / v114 * (v125.f64[1] * v125.f64[1]);
                        }

                        v118 = v118 + v66 * (v100 * v61 * (v100 * v61)) + v66 * (v104 * v104) * 0.5;
                        v112 = v112 + v66 * (v99 * v63 * (v99 * v63)) + v66 * (v62 * v62) * 0.5;
                        if (v54 <= v110)
                        {
                          v54 = v110;
                        }

                        else
                        {
                          v53 = sub_1000291EC((v52 + 1), &v140);
                          sub_1002182BC(a1 + 256, (v52 + 1));
                        }

                        v55 = v114;
                        v56 = v115;
                      }
                    }
                  }
                }

                v52 = *v52;
              }

              while (v52);
              v77 = v112 + v118;
              v79 = v97;
              v78 = v98;
              v80 = v103;
            }

            else
            {
              v53 = 0;
              v78 = 0.0;
              v79 = 0.0;
              v80 = 0.0;
              v77 = 0.0;
              v55 = v114;
              v56 = v115;
            }

            *&v135 = sqrt(v77);
            if (v56 <= 0.00000001)
            {
              *(&v135 + 1) = 0xBFF0000000000000;
              v83 = -1.0;
            }

            else
            {
              v83 = sqrt(v80);
            }

            *&v136 = v83;
            if (v113 <= 0.00000001 || v79 >= 3600.0)
            {
              *&v138 = 0xBFF0000000000000;
              v84 = -1.0;
            }

            else
            {
              v84 = sqrt(v79);
            }

            *(&v138 + 1) = v84;
            if (v55 <= 0.00000001)
            {
              *&v137 = 0xBFF0000000000000;
              v85 = -1.0;
            }

            else
            {
              v85 = sqrt(v78);
            }

            *(&v137 + 1) = v85;
            v86 = *(a1 + 176);
            if (v86)
            {
              if (v86 == 4 || v86 == 1)
              {
                *&v139[20] = *(a1 + 176);
              }

              else
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v87 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEBUG, "#selection,Output default set to invalid type error. Setting type to unknown", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A7B5F4(buf);
                  LOWORD(v119) = 0;
                  v96 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v96);
                  if (v96 != buf)
                  {
                    free(v96);
                  }
                }
              }
            }

            else
            {
              *&v139[20] = v53;
            }

            sub_1012E8F84(&v132, a2);
            *(a1 + 1232) = v137;
            *(a1 + 1248) = v138;
            *(a1 + 1264) = *v139;
            *(a1 + 1280) = *&v139[16];
            *(a1 + 1168) = v133;
            *(a1 + 1184) = v134;
            *(a1 + 1200) = v135;
            *(a1 + 1216) = v136;
            if (*(a1 + 1104))
            {
              v88 = *(a1 + 312);
              if (v88)
              {
                v89 = *(*(a1 + 280) + 8 * ((v88 + *(a1 + 304) - 1) / 0x1AuLL)) + 152 * ((v88 + *(a1 + 304) - 1) % 0x1AuLL);
                v90 = v138;
                v91 = *v139;
                v92 = *&v139[16];
                *(v89 + 88) = v137;
                *(v89 + 136) = v92;
                *(v89 + 120) = v91;
                *(v89 + 104) = v90;
                v93 = v133;
                v94 = v134;
                v95 = v135;
                *(v89 + 72) = v136;
                *(v89 + 56) = v95;
                *(v89 + 40) = v94;
                *(v89 + 24) = v93;
                operator new();
              }
            }

            return 1;
          }
        }

        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v71 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "#selection,No valid hypotheses with substantial likelihoods found", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          return 0;
        }

        sub_101A7B5F4(buf);
        LOWORD(v119) = 0;
        v49 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v49);
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v51 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_ERROR, "#Error,fusion hypothesis selection, calc_dNdE failed", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          return 0;
        }

        sub_101A7B5F4(buf);
        LOWORD(v132) = 0;
        v49 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v49);
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v48 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_ERROR, "#selection, Failed to normalize likelihoods", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        return 0;
      }

      sub_101A7B5F4(buf);
      LOWORD(v132) = 0;
      v49 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v49);
    }

LABEL_166:
    if (v49 != buf)
    {
      free(v49);
    }

    return 0;
  }

  v45 = *(v2 + 856);
  if (!v45 || (v46 = *(v2 + 64)) == 0 || (*(*(*(v2 + 32) + 8 * ((v46 + *(v2 + 56) - 1) / 0x1AuLL)) + 152 * ((v46 + *(v2 + 56) - 1) % 0x1AuLL) + 148) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v50 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "#selection,only available hypothesis is invalid fused hypothesis, rejecting", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_79;
  }

  if (v45 == 4)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v47 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "#selection,only available hypothesis is a gross outlier, rejecting", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_79;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v133 = _Q0;
  v135 = xmmword_101C75BF0;
  v136 = xmmword_101C75BF0;
  v137 = _Q0;
  v138 = _Q0;
  v132 = off_1024DE5F8;
  *v139 = 0xBFF0000000000000;
  *&v139[12] = 0;
  *&v139[20] = 0;
  v75 = sub_10002980C(v2 + 200, &v140);
  v72 = sub_10002A8E4(v2 + 200, &v132) & v75;
  if (v72)
  {
    *&v139[20] = sub_1000291EC(v2 + 8, &v140);
    v76 = *(v2 + 64) + *(v2 + 56) - 1;
    sub_1012E8F84(&v132, *(*(v2 + 32) + 8 * (v76 / 0x1A)) + 152 * (v76 % 0x1A) + 16);
    *(a1 + 1232) = v137;
    *(a1 + 1248) = v138;
    *(a1 + 1264) = *v139;
    *(a1 + 1280) = *&v139[16];
    *(a1 + 1168) = v133;
    *(a1 + 1184) = v134;
    *(a1 + 1200) = v135;
    *(a1 + 1216) = v136;
    sub_1002182BC(a1 + 256, v2 + 8);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v81 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEFAULT, "#selection,Failed to retrieve estimate from the only available hypothesis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      LOWORD(v119) = 0;
      v82 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesAveraging(const LCFusionProviderLocation &)", "%s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }
  }

  return v72;
}

void sub_10024B94C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10024B964(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1)
  {
    v3 = 1;
    v4 = *(a1 + 248);
    do
    {
      v4 = *v4;
      --v3;
    }

    while (v4);
    if (v3)
    {
      v5 = 0;
      v6 = v1[103];
      v7 = *(a1 + 248);
      do
      {
        if ((v7[107] & 0xFFFFFFFB) != 0)
        {
          v8 = *(v7 + 8);
          if (v8)
          {
            if (*(*(*(v7 + 4) + 8 * ((v8 + *(v7 + 7) - 1) / 0x1AuLL)) + 152 * ((v8 + *(v7 + 7) - 1) % 0x1AuLL) + 148) == 1)
            {
              if (v6 < v7[103])
              {
                v6 = v7[103];
              }

              ++v5;
            }
          }
        }

        v7 = *v7;
      }

      while (v7);
      v9 = -18.4206807 - log(v5);
      v43[0] = 0;
      v43[1] = 0;
      v42 = v43;
      v10 = 0.0;
      v11 = v1;
      do
      {
        if ((v11[107] & 0xFFFFFFFB) != 0)
        {
          v12 = *(v11 + 8);
          if (v12)
          {
            if (*(*(*(v11 + 4) + 8 * ((v12 + *(v11 + 7) - 1) / 0x1AuLL)) + 152 * ((v12 + *(v11 + 7) - 1) % 0x1AuLL) + 148) == 1)
            {
              v44 = *(v11 + 212);
              v13 = v11[103] - v6;
              *buf = &v44;
              if (v13 >= v9)
              {
                v14 = sub_1000AE2AC(&v42, &v44);
                *(v14 + 5) = exp(v13);
              }

              else
              {
                sub_1000AE2AC(&v42, &v44)[5] = 0;
              }

              *buf = &v44;
              v10 = v10 + *(sub_1000AE2AC(&v42, &v44) + 5);
            }
          }
        }

        v11 = *v11;
      }

      while (v11);
      if (((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v39 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#selection,Error in normalization method, invalid sum", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          LOWORD(v44) = 0;
          v41 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::normalizeHypothesesLogLikelihoods()", "%s\n", v41);
          if (v41 != buf)
          {
            free(v41);
          }
        }

        sub_100D713B0(a1);
      }

      else
      {
        for (i = *(a1 + 248); i; i = *i)
        {
          if (i[107] & 0xFFFFFFFB) != 0 && (v17 = i[8]) != 0 && (*(*(i[4] + 8 * ((v17 + i[7] - 1) / 0x1AuLL)) + 152 * ((v17 + i[7] - 1) % 0x1AuLL) + 148))
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v18 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v19 = *(i + 212);
              v20 = i[102];
              v21 = i[103];
              *buf = 67109632;
              *&buf[4] = v19;
              v51 = 2048;
              v52 = v20;
              v53 = 2048;
              v54 = v21;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#selection,Likelihood normalize apriori,hID,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x1Cu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A7B5F4(buf);
              v34 = *(i + 212);
              v35 = i[102];
              v36 = i[103];
              v44 = 67109632;
              v45 = v34;
              v46 = 2048;
              v47 = v35;
              v48 = 2048;
              v49 = v36;
              v37 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::normalizeHypothesesLogLikelihoods()", "%s\n", v37);
              if (v37 != buf)
              {
                free(v37);
              }
            }

            v44 = *(i + 212);
            *buf = &v44;
            v22 = *(sub_1000AE2AC(&v42, &v44) + 5) / v10;
            v23 = (i + 102);
            *(i + 102) = v22;
            *buf = 0x3FF0000000000000;
            if (v22 > 1.0)
            {
              v23 = buf;
            }

            if (v22 < 0.00000001)
            {
              v23 = &unk_101CFC6F8;
            }

            v24 = *v23;
            i[102] = *v23;
            *(i + 103) = log(v24);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v25 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v26 = *(i + 212);
              v27 = i[102];
              v28 = i[103];
              *buf = 67109632;
              *&buf[4] = v26;
              v51 = 2048;
              v52 = v27;
              v53 = 2048;
              v54 = v28;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#selection,Likelihood normalize aposteriori,hID,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x1Cu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A7B5F4(buf);
              v29 = *(i + 212);
              v30 = i[102];
              v31 = i[103];
              v44 = 67109632;
              v45 = v29;
              v46 = 2048;
              v47 = v30;
              v48 = 2048;
              v49 = v31;
              v32 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::normalizeHypothesesLogLikelihoods()", "%s\n", v32);
              if (v32 != buf)
              {
                free(v32);
              }
            }
          }

          else
          {
            v33 = *(a1 + 2792);
            if (v33)
            {
              if (v33[1] == 1 && *v33 == 1)
              {
                *buf = sub_1000137E0();
                if (sub_1000291EC((i + 1), buf) == 3)
                {
                  *(i + 51) = xmmword_101CFC600;
                }
              }
            }
          }
        }
      }

      sub_1003C93BC(&v42, v43[0]);
    }

    else
    {
      *(v1 + 51) = xmmword_101C76100;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v38 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#selection,Normalize method called without any valid hypotheses available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B9E8();
    }
  }

  return v1 != 0;
}

BOOL sub_10024C148(uint64_t a1, double *a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  sub_1001A9800(v19, (a3 + 8));
  v11 = v21;
  sub_100102BC8(v19);
  if (!v11)
  {
    return 0;
  }

  sub_1001A9800(v19, (a3 + 8));
  v12 = *(*(v19[1] + (((v21 + v20 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v21 + v20 - 1) + 8);
  sub_100102BC8(v19);
  v13 = *a4;
  if (v13 > *(sub_1000F7F38() + 11))
  {
    return 0;
  }

  v14 = *a5;
  if (v14 < *(sub_1000F7F38() + 10))
  {
    return 0;
  }

  v15 = vabdd_f64(*a2, v12);
  if (v15 > *(sub_1000F7F38() + 14))
  {
    return 0;
  }

  v17 = *a5 - *a6;
  if (v17 <= *(sub_1000F7F38() + 17))
  {
    return 1;
  }

  v18 = *a6;
  return v18 >= *(sub_1000F7F38() + 18);
}

uint64_t *sub_10024C26C(uint64_t a1, unsigned int *a2)
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

uint64_t sub_10024C340(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_10018E854(a1);
  if (result)
  {
    sub_10024C3D0(a1);
    v7 = a3[9];
    v17 = a3[8];
    v18 = v7;
    v8 = a3[11];
    v19 = a3[10];
    v20 = v8;
    v9 = a3[5];
    v13[4] = a3[4];
    v14 = v9;
    v10 = a3[7];
    v15 = a3[6];
    v16 = v10;
    v11 = a3[1];
    v13[0] = *a3;
    v13[1] = v11;
    v12 = a3[3];
    v13[2] = a3[2];
    v13[3] = v12;
    *(&v14 + 4) = *(a2 + 84);
    return sub_1001AFC18(a1, v13);
  }

  return result;
}

uint64_t sub_10024C400(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v18, "DELETE FROM ", 12);
    v3 = *(a1 + 255);
    if (v3 >= 0)
    {
      v4 = a1 + 232;
    }

    else
    {
      v4 = *(a1 + 232);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 255);
    }

    else
    {
      v5 = *(a1 + 240);
    }

    v6 = sub_100038730(v2, v4, v5);
    v7 = sub_100038730(v6, " WHERE ", 7);
    v8 = sub_100038730(v7, "MAC", 3);
    v9 = sub_100038730(v8, " = ? AND ", 9);
    v10 = strlen("Timestamp");
    v11 = sub_100038730(v9, "Timestamp", v10);
    sub_100038730(v11, "= ?;", 4);
    sub_100073518(buf, __p);
    if (v16 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    sub_1000388D8(a1 + 64, v12);
  }

  if (qword_1025D4850 != -1)
  {
    sub_101AE3294();
  }

  v13 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteByMacAndTimestamp() without a backing database in CLWifiHarvestDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AE3384();
  }

  return 0;
}

void sub_10024C78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_10024C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = [[CLOSTransaction alloc] initWithDescription:"CLTilesManager::traverseAllTilesSets"];
  v6 = 0;
  do
  {
    if ((v6 & 0x7FFFFFF7) - 1 <= 1)
    {
      v7 = sub_1001D252C(a1, v6);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v9 = *(v7 + 8);
        }

        *buf = 136315394;
        v13 = a2;
        v14 = 2080;
        v15 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: performing, sAction, %s, tilesSet, %s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::traverseAllTilesSets(const char *, CLTileManagerTraverseTilesSetBlock)", "%s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }

      (*(a3 + 16))(a3, v7);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 13);
}

void sub_10024CA30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 4);
  if (v5 == 1)
  {
    sub_10001A3E8();
    v6 = sub_10024CA2C();
    v5 = *(a2 + 4);
  }

  else
  {
    v6 = 1;
  }

  if (v5 == 2)
  {
    sub_10001A3E8();
    v6 &= sub_10024CA2C();
    v5 = *(a2 + 4);
  }

  if ((*(a2 + 148) & 0x80000000) == 0 && v5 != 9 && v6 != 0)
  {
    v14 = 0;
    v15 = 0xBFF0000000000000;
    Current = CFAbsoluteTimeGetCurrent();
    v18 = 1;
    v16 = *(a2 + 148);
    v13 = *(a2 + 177);
    v8 = *(a2 + 4);
    v9 = *(a1 + 40);
    v10 = *(v9 + 4);
    v11 = *(v9 + 12);
    sub_10000EC00(&__p, "");
    sub_10024CB5C(v4, v8, -1, &__p, &v13, v10, v11, *(a1 + 48));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10024CB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024CB5C(uint64_t a1, unsigned int a2, uint64_t a3, const std::string *a4, uint64_t a5, double a6, double a7, double a8)
{
  v199 = a2;
  v197 = a7;
  v198 = a6;
  if ((a2 & 0xFFFFFFF7) - 1 >= 2)
  {
    sub_101ABFD78();
  }

  sub_1000850D0(&v194, &v199);
  std::string::operator=(&v196, a4);
  v12 = *(a5 + 16);
  v191 = *a5;
  v192 = v12;
  v193 = *(a5 + 32);
  v13 = sub_1001D252C(a1, v194);
  v14 = v13;
  if ((*v13 & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v31 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v32 = v199;
      v33 = sub_100085790(v199);
      *buf = 67109378;
      *&buf[4] = v32;
      *&buf[8] = 2080;
      *&buf[10] = v33;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, type, %d, %s, not active", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ABFF0C(buf);
      v138 = v199;
      v139 = sub_100085790(v199);
      *v207 = 67109378;
      *&v207[4] = v138;
      *&v207[8] = 2080;
      *&v207[10] = v139;
      v140 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v140);
      if (v140 != buf)
      {
        free(v140);
      }
    }

    goto LABEL_35;
  }

  sub_10008511C(&v194, a3, v198, v197, *(v13 + 152), *(v13 + 160));
  if ((sub_1000852BC(&v194) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABFF50();
    }

    v35 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134546689;
      *&buf[4] = v198;
      *&buf[12] = 2053;
      *&buf[14] = v197;
      *&buf[22] = 1024;
      *&buf[24] = v194;
      *&buf[28] = 1024;
      *&buf[30] = DWORD1(v194);
      *&buf[34] = 1024;
      *&buf[36] = DWORD2(v194);
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "@TileError, RequestID, ll, %{sensitive}.3lf, %{sensitive}.3lf, tid, %d, %d, %d", buf, 0x28u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_47;
    }

    sub_101ABFF78(buf);
    *v207 = 134546689;
    *&v207[4] = v198;
    *&v207[12] = 2053;
    *&v207[14] = v197;
    *&v207[22] = 1024;
    *&v207[24] = v194;
    *&v207[28] = 1024;
    *&v207[30] = DWORD1(v194);
    *&v207[34] = 1024;
    *&v207[36] = DWORD2(v194);
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v30);
    goto LABEL_291;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101ABFEE4();
  }

  v15 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v16 = v199;
    v17 = sub_100085790(v199);
    v186 = a3;
    v18 = v197;
    v19 = v198;
    sub_100B4EFD4(&v194, v207);
    v20 = v207[23];
    v21 = *v207;
    v22 = *(a1 + 424);
    sub_100EDCE5C(__p);
    v23 = v207;
    if (v20 < 0)
    {
      v23 = v21;
    }

    v24 = __p;
    if (v202[1] < 0)
    {
      v24 = *__p;
    }

    *buf = 67110659;
    *&buf[4] = v16;
    *&buf[8] = 2080;
    *&buf[10] = v17;
    *&buf[18] = 2053;
    *&buf[20] = v19;
    *&buf[28] = 2053;
    *&buf[30] = v18;
    *&buf[38] = 2080;
    *&buf[40] = v23;
    v213 = 1024;
    v214 = v22;
    v215 = 2080;
    v216 = v24;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, type, %d, %s, location, %{sensitive}14.8lf, %{sensitive}14.8lf, id, %s, reachability, %d, details, %s", buf, 0x40u);
    if ((v202[1] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    a3 = v186;
    if ((v207[23] & 0x80000000) != 0)
    {
      operator delete(*v207);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABFF0C(buf);
    v141 = v199;
    v142 = sub_100085790(v199);
    v187 = a3;
    v143 = v197;
    v144 = v198;
    sub_100B4EFD4(&v194, __p);
    v145 = v202[1];
    v146 = *__p;
    v147 = *(a1 + 424);
    sub_100EDCE5C(v203);
    v148 = __p;
    if (v145 < 0)
    {
      v148 = v146;
    }

    if (v206 >= 0)
    {
      v149 = v203;
    }

    else
    {
      v149 = *v203;
    }

    *v207 = 67110659;
    *&v207[4] = v141;
    *&v207[8] = 2080;
    *&v207[10] = v142;
    *&v207[18] = 2053;
    *&v207[20] = v144;
    *&v207[28] = 2053;
    *&v207[30] = v143;
    *&v207[38] = 2080;
    *&v207[40] = v148;
    v208 = 1024;
    v209 = v147;
    v210 = 2080;
    v211 = v149;
    v150 = _os_log_send_and_compose_impl();
    if (v206 < 0)
    {
      operator delete(*v203);
    }

    a3 = v187;
    if ((v202[1] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v150);
    if (v150 != buf)
    {
      free(v150);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_101ABFF50();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v26 = sub_100085790(v194);
    v27 = sub_100085338(&v194);
    v28 = sub_100085314(&v194);
    *buf = 136446723;
    *&buf[4] = v26;
    *&buf[12] = 2053;
    *&buf[14] = v27;
    *&buf[22] = 2053;
    *&buf[24] = v28;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "@TileDl, %{public}s, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABFF78(buf);
    v151 = sub_100085790(v194);
    v152 = sub_100085338(&v194);
    v153 = sub_100085314(&v194);
    *v207 = 136446723;
    *&v207[4] = v151;
    *&v207[12] = 2053;
    *&v207[14] = v152;
    *&v207[22] = 2053;
    *&v207[24] = v153;
    v154 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v154);
    if (v154 != buf)
    {
      free(v154);
    }
  }

  if ((*(a1 + 201) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v36 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 200);
      *buf = 67109120;
      *&buf[4] = v37;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_47;
    }

    sub_101ABFF0C(buf);
    v155 = *(a1 + 200);
    *v207 = 67109120;
    *&v207[4] = v155;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v30);
    goto LABEL_291;
  }

  if (a3 != -1 || (*(v14 + 176) & 1) == 0)
  {
    if (*(a1 + 424) <= 1)
    {
      v39 = *(a1 + 496);
    }

    else
    {
      v39 = 1;
    }

    v40 = sub_10008535C(a1 + 112, &v194);
    v41 = sub_1000853E0(v14 + 184, &v194);
    if (v41)
    {
      v42 = sub_100085520(v14 + 184, &v194);
      v43 = sub_10008AC98(v42, *(a1 + 200)) ^ 1;
    }

    else
    {
      v43 = 0;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v185 = a1 + 120;
    v44 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      sub_100B4EFD4(&v194, v207);
      v45 = v207[23] >= 0 ? v207 : *v207;
      *buf = 136315906;
      *&buf[4] = v45;
      *&buf[12] = 1024;
      *&buf[14] = v41;
      *&buf[18] = 1024;
      *&buf[20] = v185 != v40;
      *&buf[24] = 1024;
      *&buf[26] = v43;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileId=%s isAlreadyDownloaded, %d, isBeingDownloaded, %d, shouldDownloadedBasedOnPermissions, %d", buf, 0x1Eu);
      if ((v207[23] & 0x80000000) != 0)
      {
        operator delete(*v207);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ABFF0C(buf);
      sub_100B4EFD4(&v194, __p);
      if (v202[1] >= 0)
      {
        v156 = __p;
      }

      else
      {
        v156 = *__p;
      }

      *v207 = 136315906;
      *&v207[4] = v156;
      *&v207[12] = 1024;
      *&v207[14] = v41;
      *&v207[18] = 1024;
      *&v207[20] = v185 != v40;
      *&v207[24] = 1024;
      *&v207[26] = v43;
      v157 = _os_log_send_and_compose_impl();
      if ((v202[1] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v157);
      if (v157 != buf)
      {
        free(v157);
      }
    }

    if (v43 & 1 | ((v41 & 1) == 0))
    {
      if (v185 != v40)
      {
        v46 = *(v40 + 80);
        if (*(v46 + 114) == 1)
        {
          BYTE2(v191) = 1;
        }

        if (*(v46 + 112) == 1)
        {
          LOBYTE(v191) = 1;
        }

        if (*(v46 + 113) == 1)
        {
          BYTE1(v191) = 1;
        }

        v47 = v192;
        *(v46 + 112) = v191;
        *(v46 + 128) = v47;
        *(v46 + 144) = v193;
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v48 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          (*(*v46 + 16))(buf, v46);
          v49 = buf[23];
          v50 = *buf;
          sub_100EDCE5C(v207);
          v51 = buf;
          if (v49 < 0)
          {
            v51 = v50;
          }

          if (v207[23] >= 0)
          {
            v52 = v207;
          }

          else
          {
            v52 = *v207;
          }

          *__p = 136315394;
          *&__p[4] = v51;
          *&__p[12] = 2080;
          v201 = *&v52;
          _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %s, will be downloaded, details, %s", __p, 0x16u);
          if ((v207[23] & 0x80000000) != 0)
          {
            operator delete(*v207);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          (*(*v46 + 16))(v207, v46);
          v165 = v207[23];
          v166 = *v207;
          sub_100EDCE5C(__p);
          v167 = v207;
          if (v165 < 0)
          {
            v167 = v166;
          }

          if (v202[1] >= 0)
          {
            v168 = __p;
          }

          else
          {
            v168 = *__p;
          }

          *v203 = 136315394;
          *&v203[4] = v167;
          v204 = 2080;
          v205 = v168;
          v169 = _os_log_send_and_compose_impl();
          if ((v202[1] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if ((v207[23] & 0x80000000) != 0)
          {
            operator delete(*v207);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v169);
          if (v169 != buf)
          {
            free(v169);
          }
        }

        v53 = 0;
        v54 = 1;
        goto LABEL_132;
      }

      if ((v41 & *(a1 + 200) & v43) == 1)
      {
        v61 = *(a1 + 424);
        if (v61 == 2)
        {
          v53 = 1;
        }

        else
        {
          v53 = (v61 == 1) & BYTE2(v191);
        }

        v62 = sub_100085520(v14 + 184, &v194);
        if (qword_1025D4600 != -1)
        {
          sub_101ABFEE4();
        }

        v63 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          (*(*v62 + 16))(v207, v62);
          v64 = v207[23];
          v65 = *v207;
          sub_100EDCE5C(__p);
          v66 = v207;
          if (v64 < 0)
          {
            v66 = v65;
          }

          if (v202[1] >= 0)
          {
            v67 = __p;
          }

          else
          {
            v67 = *__p;
          }

          *buf = 136315906;
          *&buf[4] = v66;
          *&buf[12] = 2080;
          *&buf[14] = v67;
          *&buf[22] = 1024;
          *&buf[24] = BYTE2(v191);
          *&buf[28] = 1024;
          *&buf[30] = v53;
          _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %s, is locked will be redownloaded, details, %s, allowRedownload, %d, isAddToDownloadList, %d", buf, 0x22u);
          if ((v202[1] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          if ((v207[23] & 0x80000000) != 0)
          {
            operator delete(*v207);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABFF0C(buf);
          (*(*v62 + 16))(__p, v62);
          v175 = v202[1];
          v176 = *__p;
          sub_100EDCE5C(v203);
          v177 = __p;
          if (v175 < 0)
          {
            v177 = v176;
          }

          if (v206 >= 0)
          {
            v178 = v203;
          }

          else
          {
            v178 = *v203;
          }

          *v207 = 136315906;
          *&v207[4] = v177;
          *&v207[12] = 2080;
          *&v207[14] = v178;
          *&v207[22] = 1024;
          *&v207[24] = BYTE2(v191);
          *&v207[28] = 1024;
          *&v207[30] = v53;
          v179 = _os_log_send_and_compose_impl();
          if (v206 < 0)
          {
            operator delete(*v203);
          }

          if ((v202[1] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v179);
          if (v179 != buf)
          {
            free(v179);
          }
        }

        goto LABEL_131;
      }

      if (v41)
      {
        v53 = 0;
LABEL_131:
        v54 = 0;
        goto LABEL_132;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v130 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v131 = v197;
        v132 = v198;
        sub_100EDCE5C(v207);
        v133 = v207[23] >= 0 ? v207 : *v207;
        *buf = 134546179;
        *&buf[4] = v132;
        *&buf[12] = 2053;
        *&buf[14] = v131;
        *&buf[22] = 2080;
        *&buf[24] = v133;
        _os_log_impl(dword_100000000, v130, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %{sensitive}.8lf, %{sensitive}8lf, will be downloaded, details, %s", buf, 0x20u);
        if ((v207[23] & 0x80000000) != 0)
        {
          operator delete(*v207);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_110;
      }

      sub_101ABFF0C(buf);
      v134 = v197;
      v135 = v198;
      sub_100EDCE5C(__p);
      if (v202[1] >= 0)
      {
        v136 = __p;
      }

      else
      {
        v136 = *__p;
      }

      *v207 = 134546179;
      *&v207[4] = v135;
      *&v207[12] = 2053;
      *&v207[14] = v134;
      *&v207[22] = 2080;
      *&v207[24] = v136;
      v137 = _os_log_send_and_compose_impl();
      if ((v202[1] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      v55 = sub_100085520(v14 + 184, &v194);
      v56 = sub_100232000(v55, v39 & 1, *(v14 + 128), a8);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v57 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        (*(*v55 + 16))(v207, v55);
        v58 = v207[23] >= 0 ? v207 : *v207;
        *buf = 136315906;
        *&buf[4] = v58;
        *&buf[12] = 1024;
        *&buf[14] = BYTE1(v193);
        *&buf[18] = 1024;
        *&buf[20] = v56;
        *&buf[24] = 1024;
        *&buf[26] = v185 != v40;
        _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, tileid, %s, already available, isUpdateMTimestamp, %d, isShouldBeRefreshed, %d, isBeingDownloaded, %d", buf, 0x1Eu);
        if ((v207[23] & 0x80000000) != 0)
        {
          operator delete(*v207);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ABFF0C(buf);
        (*(*v55 + 16))(__p, v55);
        if (v202[1] >= 0)
        {
          v158 = __p;
        }

        else
        {
          v158 = *__p;
        }

        *v207 = 136315906;
        *&v207[4] = v158;
        *&v207[12] = 1024;
        *&v207[14] = BYTE1(v193);
        *&v207[18] = 1024;
        *&v207[20] = v56;
        *&v207[24] = 1024;
        *&v207[26] = v185 != v40;
        v159 = _os_log_send_and_compose_impl();
        if ((v202[1] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v159);
        if (v159 != buf)
        {
          free(v159);
        }
      }

      if (BYTE1(v193) == 1)
      {
        sub_10025B540(v55, a8);
      }

      v53 = 0;
      if (!v56)
      {
        v54 = 0;
        goto LABEL_132;
      }

      v54 = 0;
      if (v185 != v40)
      {
LABEL_132:
        v68 = v199;
        if (v199 == 1)
        {
          sub_10001CAF4(buf);
          v69 = sub_10001CB4C(*buf, "ForceDownloadDEMTiles", (a1 + 448));
          if (*&buf[8])
          {
            sub_100008080(*&buf[8]);
          }

          if (v69)
          {
            if (qword_1025D4650 != -1)
            {
              sub_101ABFFBC();
            }

            v70 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v71 = *(a1 + 448);
              *buf = 67109120;
              *&buf[4] = v71;
              _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "TILE: DEM,fForceDownloadDEMTiles, %d", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ABFFE4(buf);
              v171 = *(a1 + 448);
              *v207 = 67109120;
              *&v207[4] = v171;
              v172 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v172);
              if (v172 != buf)
              {
                free(v172);
              }
            }
          }

          if ((*(a1 + 448) & 1) == 0 && (sub_10024F62C(a1 + 528, &v198, &v197) & 1) == 0)
          {
            if (qword_1025D4600 != -1)
            {
              sub_101ABFEE4();
            }

            v72 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_INFO, "TILE: DEM, skip, tile is not available based on availability file", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101ABFF0C(buf);
              *v207 = 0;
              v174 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v174);
              if (v174 != buf)
              {
                free(v174);
              }
            }

            v53 = 0;
          }

          v68 = v199;
        }

        if (v68 == 2 && (sub_100258AE0(a1 + 624, &v198, &v197) & 1) == 0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_101ABFEE4();
          }

          v81 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_INFO, "TILE: HRSE, skip, tile is not available based on availability file", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101ABFF0C(buf);
            *v207 = 0;
            v173 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v173);
            if (v173 != buf)
            {
              free(v173);
            }
          }
        }

        else if (v53)
        {
          sub_1010AB49C(*(v14 + 4), __p);
          v73 = *__p;
          *__p = 0;
          v190 = v73;
          sub_100EF3E20(a1, &v190, &v194, &v191);
          v74 = v190;
          v190 = 0;
          if (v74)
          {
            (*(*v74 + 8))(v74);
          }

          if (qword_1025D4620 != -1)
          {
            sub_101ABFF50();
          }

          v75 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v76 = sub_100085790(v194);
            v77 = sub_100085338(&v194);
            v78 = sub_100085314(&v194);
            v79 = *(a1 + 128);
            *buf = 136446979;
            *&buf[4] = v76;
            *&buf[12] = 2053;
            *&buf[14] = v77;
            *&buf[22] = 2053;
            *&buf[24] = v78;
            *&buf[32] = 2050;
            *&buf[34] = v79;
            _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", buf, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101ABFF78(buf);
            v160 = sub_100085790(v194);
            v161 = sub_100085338(&v194);
            v162 = sub_100085314(&v194);
            v163 = *(a1 + 128);
            *v207 = 136446979;
            *&v207[4] = v160;
            *&v207[12] = 2053;
            *&v207[14] = v161;
            *&v207[22] = 2053;
            *&v207[24] = v162;
            *&v207[32] = 2050;
            *&v207[34] = v163;
            v164 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v164);
            if (v164 != buf)
            {
              free(v164);
            }
          }

          v80 = *__p;
          *__p = 0;
          if (v80)
          {
            (*(*v80 + 8))(v80);
          }

          v54 = 1;
        }

        *v207 = v194;
        *&v207[16] = v195;
        if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100007244(&v207[24], v196.__r_.__value_.__l.__data_, v196.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v207[24] = v196;
        }

        v183 = v54;
        if ((v192 & 0x80000000) == 0)
        {
          v82 = -v192;
          v181 = (2 * v192) | 1;
          v182 = -v192;
          v180 = v192;
          do
          {
            v84 = v181;
            v83 = v182;
            do
            {
              if (!(v83 | v82))
              {
                goto LABEL_230;
              }

              *v207 = v194;
              *&v207[16] = v195;
              std::string::operator=(&v207[24], &v196);
              v85 = *(v14 + 160);
              v86 = *(v14 + 152);
              *&v85 = v85;
              sub_100085AC4(v207, v82, v83, v86, *&v85);
              if (sub_1000852BC(v207))
              {
                if (qword_1025D4600 != -1)
                {
                  sub_101ABFEE4();
                }

                v87 = qword_1025D4608;
                if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                {
                  v88 = *&v207[8];
                  v89 = *&v207[4];
                  sub_100B4EFD4(v207, __p);
                  v90 = __p;
                  if (v202[1] < 0)
                  {
                    v90 = *__p;
                  }

                  *buf = 67110146;
                  *&buf[4] = v82;
                  *&buf[8] = 1024;
                  *&buf[10] = v83;
                  *&buf[14] = 1024;
                  *&buf[16] = v88;
                  *&buf[20] = 1024;
                  *&buf[22] = v89;
                  *&buf[26] = 2080;
                  *&buf[28] = v90;
                  _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                  if ((v202[1] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101ABFF0C(buf);
                  v116 = *&v207[8];
                  v117 = *&v207[4];
                  sub_100B4EFD4(v207, v203);
                  v118 = v203;
                  if (v206 < 0)
                  {
                    v118 = *v203;
                  }

                  *__p = 67110146;
                  *&__p[4] = v82;
                  *&__p[8] = 1024;
                  *&__p[10] = v83;
                  LOWORD(v201) = 1024;
                  *(&v201 + 2) = v116;
                  HIWORD(v201) = 1024;
                  *v202 = v117;
                  *&v202[4] = 2080;
                  *&v202[6] = v118;
                  v119 = _os_log_send_and_compose_impl();
                  if (v206 < 0)
                  {
                    operator delete(*v203);
                  }

                  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v119);
                  if (v119 != buf)
                  {
                    free(v119);
                  }
                }

                v91 = sub_10008535C(a1 + 112, v207);
                v92 = sub_1000853E0(v14 + 184, v207);
                v93 = v199;
                if (v199 == 1)
                {
                  *buf = sub_100085338(v207) + *(v14 + 152) * 0.5;
                  *__p = sub_100085314(v207) + *(v14 + 160) * 0.5;
                  if (!sub_10024F62C(a1 + 528, buf, __p))
                  {
                    goto LABEL_230;
                  }

                  v93 = v199;
                }

                if (v93 != 2 || (*buf = sub_100085338(v207) + *(v14 + 152) * 0.5, *__p = sub_100085314(v207) + *(v14 + 160) * 0.5, (sub_100258AE0(a1 + 624, buf, __p) & 1) != 0))
                {
                  if (((*(a1 + 200) | v92) & 1) == 0)
                  {
                    v94 = *a5 & *(a5 + 1);
                    if ((v185 == v91) | v94 & 1)
                    {
                      if (qword_1025D4600 != -1)
                      {
                        sub_101ABFEE4();
                      }

                      v95 = qword_1025D4608;
                      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100B4EFD4(v207, buf);
                        v96 = buf;
                        if (buf[23] < 0)
                        {
                          v96 = *buf;
                        }

                        *__p = 136315138;
                        *&__p[4] = v96;
                        _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, adding neighbour, %s", __p, 0xCu);
                        if ((buf[23] & 0x80000000) != 0)
                        {
                          operator delete(*buf);
                        }
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101ABFF0C(buf);
                        sub_100B4EFD4(v207, __p);
                        v120 = __p;
                        if (v202[1] < 0)
                        {
                          v120 = *__p;
                        }

                        *v203 = 136315138;
                        *&v203[4] = v120;
                        v121 = _os_log_send_and_compose_impl();
                        if ((v202[1] & 0x80000000) != 0)
                        {
                          operator delete(*__p);
                        }

                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v121);
                        if (v121 != buf)
                        {
                          free(v121);
                        }
                      }

                      if (((v185 != sub_10008535C(a1 + 112, v207)) & v94) == 1)
                      {
                        if (qword_1025D4600 != -1)
                        {
                          sub_101ABFEE4();
                        }

                        v97 = qword_1025D4608;
                        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                        {
                          sub_100B4EFD4(v207, buf);
                          v98 = buf;
                          if (buf[23] < 0)
                          {
                            v98 = *buf;
                          }

                          *__p = 136315138;
                          *&__p[4] = v98;
                          _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, neighbour already in download queue updating to cellular download, %s", __p, 0xCu);
                          if ((buf[23] & 0x80000000) != 0)
                          {
                            operator delete(*buf);
                          }
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101ABFF0C(buf);
                          sub_100B4EFD4(v207, __p);
                          v126 = __p;
                          if (v202[1] < 0)
                          {
                            v126 = *__p;
                          }

                          *v203 = 136315138;
                          *&v203[4] = v126;
                          v127 = _os_log_send_and_compose_impl();
                          if ((v202[1] & 0x80000000) != 0)
                          {
                            operator delete(*__p);
                          }

                          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v127);
                          if (v127 != buf)
                          {
                            free(v127);
                          }
                        }

                        *buf = v207;
                        v99 = *(sub_10086026C(a1 + 112, v207) + 80);
                        v100 = *a5;
                        v101 = *(a5 + 16);
                        *(v99 + 144) = *(a5 + 32);
                        *(v99 + 112) = v100;
                        *(v99 + 128) = v101;
                      }

                      else
                      {
                        sub_1010AB49C(*(v14 + 4), &v189);
                        sub_100EF3E20(a1, &v189, v207, &v191);
                        v110 = v189;
                        v189 = 0;
                        if (v110)
                        {
                          (*(*v110 + 8))(v110);
                        }

                        v183 = 1;
                      }

                      if (qword_1025D4620 != -1)
                      {
                        sub_101ABFF50();
                      }

                      v111 = qword_1025D4628;
                      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
                      {
                        v112 = sub_100085790(*v207);
                        v113 = sub_100085338(v207);
                        v114 = sub_100085314(v207);
                        v115 = *(a1 + 128);
                        *buf = 136446979;
                        *&buf[4] = v112;
                        *&buf[12] = 2053;
                        *&buf[14] = v113;
                        *&buf[22] = 2053;
                        *&buf[24] = v114;
                        *&buf[32] = 2050;
                        *&buf[34] = v115;
                        _os_log_impl(dword_100000000, v111, OS_LOG_TYPE_DEFAULT, "@TileReq, %{public}s, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", buf, 0x2Au);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101ABFF78(buf);
                        v122 = sub_100085790(*v207);
                        v123 = sub_100085338(v207);
                        v124 = sub_100085314(v207);
                        v125 = *(a1 + 128);
                        *__p = 136446979;
                        *&__p[4] = v122;
                        *&__p[12] = 2053;
                        v201 = v123;
                        *v202 = 2053;
                        *&v202[2] = v124;
                        *&v202[10] = 2050;
                        *&v202[12] = v125;
                        v109 = _os_log_send_and_compose_impl();
                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v109);
LABEL_245:
                        if (v109 != buf)
                        {
                          free(v109);
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                if (qword_1025D4600 != -1)
                {
                  sub_101ABFEE4();
                }

                v102 = qword_1025D4608;
                if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                {
                  v103 = *&v207[8];
                  v104 = *&v207[4];
                  sub_100B4EFD4(v207, __p);
                  v105 = __p;
                  if (v202[1] < 0)
                  {
                    v105 = *__p;
                  }

                  *buf = 67110146;
                  *&buf[4] = v82;
                  *&buf[8] = 1024;
                  *&buf[10] = v83;
                  *&buf[14] = 1024;
                  *&buf[16] = v103;
                  *&buf[20] = 1024;
                  *&buf[22] = v104;
                  *&buf[26] = 2080;
                  *&buf[28] = v105;
                  _os_log_impl(dword_100000000, v102, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, out of boundaries, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                  if ((v202[1] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101ABFF0C(buf);
                  v106 = *&v207[8];
                  v107 = *&v207[4];
                  sub_100B4EFD4(v207, v203);
                  v108 = v203;
                  if (v206 < 0)
                  {
                    v108 = *v203;
                  }

                  *__p = 67110146;
                  *&__p[4] = v82;
                  *&__p[8] = 1024;
                  *&__p[10] = v83;
                  LOWORD(v201) = 1024;
                  *(&v201 + 2) = v106;
                  HIWORD(v201) = 1024;
                  *v202 = v107;
                  *&v202[4] = 2080;
                  *&v202[6] = v108;
                  v109 = _os_log_send_and_compose_impl();
                  if (v206 < 0)
                  {
                    operator delete(*v203);
                  }

                  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v109);
                  goto LABEL_245;
                }
              }

LABEL_230:
              ++v83;
              --v84;
            }

            while (v84);
          }

          while (v82++ != v180);
        }

        if (v183)
        {
          v129 = *(a1 + 40);
          v188[0] = _NSConcreteStackBlock;
          v188[1] = 3221225472;
          v188[2] = sub_100EF685C;
          v188[3] = &unk_10245D2A8;
          v188[4] = a1;
          *&v188[5] = a8;
          [v129 async:v188];
        }

        if ((v207[47] & 0x80000000) != 0)
        {
          operator delete(*&v207[24]);
        }

LABEL_35:
        v34 = 1;
        goto LABEL_48;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v59 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        (*(*v55 + 16))(buf, v55);
        v60 = buf[23] >= 0 ? buf : *buf;
        *v207 = 136315138;
        *&v207[4] = v60;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, refresh download, %s", v207, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_110:
        v54 = 0;
        v53 = 1;
        goto LABEL_132;
      }

      sub_101ABFF0C(buf);
      (*(*v55 + 16))(v207, v55);
      if (v207[23] >= 0)
      {
        v170 = v207;
      }

      else
      {
        v170 = *v207;
      }

      *__p = 136315138;
      *&__p[4] = v170;
      v137 = _os_log_send_and_compose_impl();
      if ((v207[23] & 0x80000000) != 0)
      {
        operator delete(*v207);
      }
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v137);
    if (v137 != buf)
    {
      free(v137);
    }

    goto LABEL_110;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101ABFEE4();
  }

  v29 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "TILE: requestDownload, ignoring request, no sec_key", buf, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_47;
  }

  sub_101ABFF0C(buf);
  *v207 = 0;
  v30 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, sec_key_t, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v30);
LABEL_291:
  if (v30 != buf)
  {
    free(v30);
  }

LABEL_47:
  v34 = 0;
LABEL_48:
  if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v196.__r_.__value_.__l.__data_);
  }

  return v34;
}

void sub_10024F408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10024F62C(uint64_t a1, double *a2, double *a3)
{
  *(a1 + 64) = 0;
  v4 = *a3;
  v5 = *a2;
  v6 = vcvtmd_s64_f64((*a2 + 90.0) * 10.0) + (floor(*a3 * 10.0) * 100000.0);
  v7 = a1;
  if ((*(a1 + 24) & 1) != 0 && (v7 = a1, v6 == *(a1 + 28)))
  {
    v8 = *(a1 + 32);
  }

  else
  {
    while (1)
    {
      v7 = *(v7 + 8);
      if (v7 == a1)
      {
        break;
      }

      if (v6 == *(v7 + 16))
      {
        v8 = 1;
        return v8 & 1;
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = sub_10024FF8C(a1, v5, v4);
    v8 = v9;
    if (v9)
    {
      operator new();
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      *(a1 + 24) = 1;
      *(a1 + 28) = v6;
      *(a1 + 32) = v9;
    }
  }

  return v8 & 1;
}

id *sub_10024F748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000FF38(v13, "CLCellTilesManager::traverseAllTilesSets", 0);
  for (i = -3; i != 10; ++i)
  {
    if (i <= 2)
    {
      v7 = sub_100088E8C(i + 3, (a1 + 400));
      if (qword_1025D48A0 != -1)
      {
        sub_101B15D58();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v9 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v9 = *(v7 + 8);
        }

        *buf = 136315394;
        v19 = a2;
        v20 = 2080;
        v21 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: performing, sAction, %s, tilesSet, %s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B15D80(buf);
        v10 = v7 + 8;
        if (*(v7 + 31) < 0)
        {
          v10 = *(v7 + 8);
        }

        v14 = 136315394;
        v15 = a2;
        v16 = 2080;
        v17 = v10;
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCellTilesManager::traverseAllTilesSets(const char *, CLTileManagerTraverseTilesSetBlock)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      (*(a3 + 16))(a3, v7);
    }
  }

  return sub_10001A420(v13);
}

void sub_10024F978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

id *sub_10024F998(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 0.0)
  {
    sub_101B16980();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10024FA34;
  v5[3] = &unk_1024707B8;
  v5[4] = a1;
  v5[5] = a2;
  return sub_10024F748(a1, "updateTileLocationRelevancy", v5);
}

void sub_10024FA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 144))
  {
    (*(**(v3 + 352) + 16))(*(v3 + 352));
    v6 = *(a1 + 40);
    if (*(v6 + 20) < 0.0 || vabdd_f64(v5, *(v6 + 76)) > 3600.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B15F3C();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: location not relevant", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B18B64();
      }

      return;
    }

    sub_1000850D0(v23, (a2 + 4));
    sub_10008511C(v23, -1, *(*(a1 + 40) + 4), *(*(a1 + 40) + 12), *(a2 + 152), *(a2 + 160));
    if (sub_1000852BC(v23))
    {
      v10 = sub_100085520(a2 + 184, v23);
      v11 = v10;
      if (!v10 || !sub_10008AC98(v10, *(v3 + 128)))
      {
        goto LABEL_43;
      }

      v12 = (*(**(v3 + 352) + 16))(*(v3 + 352));
      v13 = sub_10025B540(v11, v12);
      if (qword_1025D48A0 != -1)
      {
        sub_101B15D58();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a2 + 4);
        sub_100B4EFD4(v23, &v30);
        v16 = SHIBYTE(v34) >= 0 ? &v30 : v30;
        *buf = 67109634;
        *v27 = v13;
        *&v27[4] = 1024;
        *&v27[6] = v15;
        v28 = 2080;
        v29 = v16;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "TILE: updating mtime, %d, type, %d, tileid, %s", buf, 0x18u);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(v30);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_43;
      }

      sub_101B15D80(buf);
      v17 = *(a2 + 4);
      sub_100B4EFD4(v23, __p);
      if (v22 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      LODWORD(v30) = 67109634;
      HIDWORD(v30) = v13;
      v31 = 1024;
      v32 = v17;
      v33 = 2080;
      v34 = v18;
      v19 = _os_log_send_and_compose_impl();
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLCellTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v19);
      if (v19 == buf)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1000E1C54();
      }

      v20 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "CellTile, Invalid tile id!, #CloneMe", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_43;
      }

      sub_101B15D14(buf);
      LOWORD(v30) = 0;
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLCellTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)_block_invoke", "%s\n", v19);
      if (v19 == buf)
      {
        goto LABEL_43;
      }
    }

    free(v19);
LABEL_43:
    if (v25 < 0)
    {
      operator delete(v24);
    }

    return;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101B15F3C();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v9 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v9 = *(a2 + 8);
    }

    *buf = 136315138;
    *v27 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: tiles, %s, not active", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B18A64();
  }
}

void sub_10024FF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024FF8C(uint64_t a1, double a2, long double a3)
{
  if ((sub_100250D6C(a1) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10195D314();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 64);
      *buf = 67240192;
      *v60 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#Warning,DEM,availability file is not valid,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195D328(a1);
    }

    return 0;
  }

  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  memset(v65, 0, sizeof(v65));
  v70 = 0;
  v71 = 0;
  v69 = 0;
  v53 = 0;
  if (qword_1025D4650 != -1)
  {
    sub_10195D314();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v7 = *v7;
    }

    *buf = 136446210;
    *v60 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "DEM,Reading,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v45 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v45 = *v45;
    }

    v54 = 136446210;
    *v55 = v45;
    v46 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  v8 = (a1 + 72);
  v9 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v9 = *v8;
  }

  v10 = fopen(v9, "rb");
  v11 = v10;
  if (!v10)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v17 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v18 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v18 = *v8;
      }

      v19 = *(a1 + 64);
      v20 = *__error();
      *buf = 136446722;
      *v60 = v18;
      *&v60[8] = 1026;
      v61 = v19;
      v62 = 1026;
      v63 = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#Error,DEM,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", buf, 0x18u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      if (*(a1 + 95) < 0)
      {
        v8 = *v8;
      }

      v47 = *(a1 + 64);
      v48 = *__error();
      v54 = 136446722;
      *v55 = v8;
      *&v55[8] = 1026;
      v56 = v47;
      v57 = 1026;
      v58 = v48;
      v49 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    return 0;
  }

  v52 = 0;
  if ((sub_1002576A8(v10, v64, v65, &v53, &v52) & 1) == 0)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v22 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 64);
      *buf = 67240192;
      *v60 = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "DEM,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_39;
    }

    sub_10195D460(buf);
    v50 = *(a1 + 64);
    v54 = 67240192;
    *v55 = v50;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v14);
    goto LABEL_112;
  }

  v12 = SBYTE10(v66);
  if (SBYTE10(v66) <= a2)
  {
    v25 = SBYTE11(v66);
    if (SBYTE11(v66) <= a2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      v30 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 134545921;
        *v60 = a2;
        *&v60[8] = 1025;
        v61 = v25;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "DEM,input latitude, %{sensitive}.3lf, beyond maximum acceptable latitude, %{private}d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_10195D460(buf);
      v54 = 134545921;
      *v55 = a2;
      *&v55[8] = 1025;
      v56 = v25;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v14);
      goto LABEL_112;
    }

    sub_1001D08A4(a3);
    v27 = vcvtmd_s64_f64(v26 * 10.0) + 3600 * ((floor(a2 * 10.0) + 900.0) - 10 * v12 - 900);
    if (v27 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 7;
    }

    __ptr = 0;
    if ((v28 >> 3) >= HIDWORD(v67))
    {
      *(a1 + 64) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v32 = *(a1 + 64);
        *buf = 67240448;
        *v60 = v28 >> 3;
        *&v60[4] = 1026;
        *&v60[6] = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#Warning,DEM,avl byte index,%{public}d,is larger than the data available in the availabilty file,fNeedToDownloadAvlFile,%{public}d", buf, 0xEu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_10195D460(buf);
      v33 = *(a1 + 64);
      v54 = 67240448;
      *v55 = v28 >> 3;
      *&v55[4] = 1026;
      *&v55[6] = v33;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v14);
      goto LABEL_112;
    }

    fseek(v11, v28 >> 3, 1);
    if (fread(&__ptr, 1uLL, 1uLL, v11) != 1)
    {
      *(a1 + 64) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_10195D438();
      }

      v34 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 64);
        *buf = 67240192;
        *v60 = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - unable to get data byte,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_39;
      }

      sub_10195D460(buf);
      v36 = *(a1 + 64);
      v54 = 67240192;
      *v55 = v36;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v14);
      goto LABEL_112;
    }

    v29 = v27 - (v28 & 0xFFFFFFF8);
    fclose(v11);
    if (v29 > 3)
    {
      if (v29 <= 5)
      {
        if (v29 == 4)
        {
          v21 = (__ptr >> 4) & 1;
        }

        else
        {
          v21 = (__ptr >> 5) & 1;
        }

        goto LABEL_85;
      }

      if (v29 == 6)
      {
        v21 = (__ptr >> 6) & 1;
        goto LABEL_85;
      }

      if (v29 == 7)
      {
        v21 = (__ptr & 0x80u) != 0;
        goto LABEL_85;
      }
    }

    else
    {
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v21 = (__ptr >> 2) & 1;
        }

        else
        {
          v21 = (__ptr >> 3) & 1;
        }

        goto LABEL_85;
      }

      if (!v29)
      {
        v21 = __ptr & 1;
        goto LABEL_85;
      }

      if (v29 == 1)
      {
        v21 = (__ptr >> 1) & 1;
LABEL_85:
        if (qword_1025D4650 != -1)
        {
          sub_10195D438();
        }

        v37 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(a1 + 64);
          *buf = 67240448;
          *v60 = v21;
          *&v60[4] = 1026;
          *&v60[6] = v38;
          _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "DEM,isTileAvailable,%{public}d,fNeedToDownloadAvlFile,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195D460(buf);
          v39 = *(a1 + 64);
          v54 = 67240448;
          *v55 = v21;
          *&v55[4] = 1026;
          *&v55[6] = v39;
          v40 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        goto LABEL_41;
      }
    }

    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      v42 = *(a1 + 64);
      *buf = 67240192;
      *v60 = v42;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "DEM,Unexpected case,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195D460(buf);
      v43 = *(a1 + 64);
      v54 = 67240192;
      *v55 = v43;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    goto LABEL_40;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10195D438();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 134545921;
    *v60 = a2;
    *&v60[8] = 1025;
    v61 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "DEM,input latitude, %{sensitive}.3lf, below minimum acceptable latitude, %{private}d", buf, 0x12u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_39;
  }

  sub_10195D460(buf);
  v54 = 134545921;
  *v55 = a2;
  *&v55[8] = 1025;
  v56 = v12;
  v14 = _os_log_send_and_compose_impl();
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::isTileAvailableBasedOnAvlFile(double, double)", "%s\n", v14);
LABEL_112:
  if (v14 != buf)
  {
    free(v14);
  }

LABEL_39:
  fclose(v11);
LABEL_40:
  v21 = 0;
LABEL_41:
  if (SHIBYTE(v71) < 0)
  {
    operator delete(v69);
  }

  return v21;
}

void sub_100250D10(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x83F]) < 0)
  {
    operator delete(*(v1 + 136));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100250D6C(uint64_t a1)
{
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  memset(v58, 0, sizeof(v58));
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v43 = 0;
  if (qword_1025D4650 != -1)
  {
    sub_10195D314();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 64);
    *buf = 67240192;
    LODWORD(v52) = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "DEM,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195D460(buf);
    v31 = *(a1 + 64);
    *v46 = 67240192;
    *&v46[4] = v31;
    v32 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

  if (!sub_100251884(a1))
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v52) = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#Warning,DEM,availability file does not exist,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_10195D460(buf);
    v17 = *(a1 + 64);
    *v46 = 67240192;
    *&v46[4] = v17;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v18);
    if (v18 == buf)
    {
      return 0;
    }

LABEL_75:
    free(v18);
    return 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10195D438();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v5 = *v5;
    }

    *buf = 136446210;
    v52 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "DEM,Reading,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v33 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v33 = *v33;
    }

    *v46 = 136446210;
    *&v46[4] = v33;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  v6 = (a1 + 72);
  v7 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v7 = *v6;
  }

  v8 = fopen(v7, "rb");
  v9 = v8;
  if (!v8)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v20 = (a1 + 72);
      if (*(a1 + 95) < 0)
      {
        v20 = *v6;
      }

      v21 = *(a1 + 64);
      v22 = *__error();
      *buf = 136446722;
      v52 = v20;
      v53 = 1026;
      v54 = v21;
      v55 = 1026;
      v56 = v22;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#Error,DEM,could not open,%{public}s,fNeedToDownloadAvlFile,%{public}d,errno,%{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    if (*(a1 + 95) < 0)
    {
      v6 = *v6;
    }

    v35 = *(a1 + 64);
    v36 = *__error();
    *v46 = 136446722;
    *&v46[4] = v6;
    v47 = 1026;
    v48 = v35;
    v49 = 1026;
    v50 = v36;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v18);
    if (v18 == buf)
    {
      return 0;
    }

    goto LABEL_75;
  }

  *v46 = 0;
  if ((sub_1002576A8(v8, v57, v58, &v43, v46) & 1) == 0)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v52) = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#Warning,DEM,readAvlHelper failed,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195D460(buf);
      v37 = *(a1 + 64);
      v44 = 67240192;
      v45 = v37;
      v38 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    fclose(v9);
    goto LABEL_52;
  }

  fclose(v9);
  if (BYTE8(v59) != 1)
  {
    *(a1 + 64) = 1;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v26 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v52) = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "DEM,availability file version does not match expected,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_52;
    }

    goto LABEL_78;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = *&v60;
  v12 = DWORD2(v60);
  if (Current <= v11 + v12 + (random() % 86400))
  {
    *(a1 + 64) = 0;
    if (qword_1025D4650 != -1)
    {
      sub_10195D438();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 64);
      *buf = 67240192;
      LODWORD(v52) = v30;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "DEM,end of checkAvlFileValidityAndSetDownloadFlag function reached,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195D460(buf);
      v41 = *(a1 + 64);
      v44 = 67240192;
      v45 = v41;
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v23 = 1;
    goto LABEL_53;
  }

  *(a1 + 64) = 1;
  if (qword_1025D4650 != -1)
  {
    sub_10195D438();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 64);
    *buf = 67240192;
    LODWORD(v52) = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "DEM,availability file has expired,fNeedToDownloadAvlFile,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_78:
    sub_10195D460(buf);
    v39 = *(a1 + 64);
    v44 = 67240192;
    v45 = v39;
    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDemTileAvailability::checkAvlFileValidityAndSetDownloadFlag()", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

LABEL_52:
  v23 = 0;
LABEL_53:
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v62);
  }

  return v23;
}

void sub_100251834(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100251884(uint64_t a1)
{
  v2 = sub_1000206B4();
  sub_100021668(v2, &__str);
  if (*(a1 + 63) < 0)
  {
    sub_100007244(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *&__p.st_dev = *(a1 + 40);
    *&__p.st_uid = *(a1 + 56);
  }

  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if ((__p.st_gid & 0x80000000) == 0)
  {
    st_gid_high = HIBYTE(__p.st_gid);
  }

  else
  {
    st_gid_high = __p.st_ino;
  }

  std::string::append(&__str, p_p, st_gid_high);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  std::string::operator=((a1 + 72), &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v6 = stat(p_str, &__p);
  if (v6)
  {
    *(a1 + 64) = 1;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v6 == 0;
}

void sub_100251964(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100251988(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100251970);
}

id sub_100251A28(uint64_t a1, void *a2, void *a3, char a4)
{
  [objc_msgSend(a3 "attributionTimer")];
  v9 = v8;
  [objc_msgSend(a3 "attributionTimer")];
  if (v9 < 1.79769313e308)
  {
    sub_100125EAC(a1, a2, [a3 attributionIdentifier], a4);
  }

  v10 = *(a1 + 440);

  return [v10 removeObjectForKey:a2];
}

double sub_100251B28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_101C75BF0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0xBFF0000000000000;
  result = *(a1 + 16);
  if (result > 0.0)
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      *a2 = result;
      v6 = hypotf((*(a1 + 132) + *(a1 + 120)) - *(a1 + 232), (*(a1 + 136) + *(a1 + 124)) - *(a1 + 236));
      v7 = *(a1 + 160) + *(a1 + 144);
      *(a2 + 8) = v6;
      *(a2 + 16) = v7;
      result = *(a1 + 184) + *(a1 + 176);
      *(a2 + 24) = result;
      *(a2 + 32) = v5;
    }
  }

  return result;
}

void sub_100251BC8(uint64_t a1, void *a2)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 68289282;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = [objc_msgSend(a2 "description")];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion to be released, client:%{public, location:escape_only}s}", &v15, 0x1Cu);
  }

  v5 = *(a1 + 256);
  if (!v5)
  {
LABEL_10:
    if (qword_1025D47B0 != -1)
    {
      sub_101A83058();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [objc_msgSend(a2 "description")];
      v9 = *(a1 + 264);
      v15 = 68289538;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = v8;
      v20 = 2050;
      v21 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion not released, client:%{public, location:escape_only}s, fAccuracyAssertions size:%{public}ld}", &v15, 0x26u);
    }

    return;
  }

  while (1)
  {
    v6 = v5[4];
    if (v6 <= a2)
    {
      break;
    }

LABEL_9:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_9;
  }

  if (qword_1025D47B0 != -1)
  {
    sub_101A83058();
  }

  v10 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_msgSend(a2 "description")];
    v15 = 68289282;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Accuracy enablement assertion released, client:%{public, location:escape_only}s}", &v15, 0x1Cu);
  }

  v15 = a2;
  sub_1002401BC((a1 + 248), &v15);

  v12 = sub_1000EE874(a1);
  v13 = *(a1 + 128);
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000EEA08(v13, v12, Current);
}

void sub_100251E30(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = sub_1000081AC();
    sub_10001CAF4(&buf);
    v6 = 0.0;
    if (sub_1000B9370(buf, "CLTRRecordingFileAgeThresholdSeconds", &v6))
    {
      v3 = v6;
    }

    else
    {
      v3 = 21600.0;
    }

    if (*(&buf + 1))
    {
      sub_100008080(*(&buf + 1));
    }

    v4 = v2 - *(a1 + 16);
    if (v4 > v3)
    {
      if (qword_1025D41D0 != -1)
      {
        sub_101B95E90();
      }

      v5 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v4;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "TrackRun,closing current recording file and opening a new one,second since last,%.0lf", &buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B98098(v4);
      }

      sub_101066F20(*(a1 + 40));
      *(a1 + 16) = v2;
      sub_1012997DC(a1);
    }
  }
}

void sub_100251F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100251FAC(uint64_t a1)
{
  v3 = *(a1 + 3968);
  if (v3)
  {

    sub_100251E30(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v4 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#cltr,cannot send GNSS turned off notification to TrackRunController,TrackRunController not instantiated", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101958E30();
    }
  }
}

uint64_t sub_100252058(char *a1, int a2, int *a3)
{
  v14 = a2;
  if (!*a3)
  {
    *buf = &v14;
    v5 = [sub_1000488C8((a1 + 80) &v14)[8]];
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
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#wigo,off,GnssProviderBare,%{public}d,%{public}s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A791B4(&v14, v5);
    }

    v15[0] = @"ServiceName";
    v15[1] = @"Register";
    v16[0] = v5;
    v16[1] = &__kCFBooleanFalse;
    [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    PLLogRegisteredEvent();
    a2 = v14;
  }

  v9 = sub_100145710(a1, a2, a3);
  if (v9)
  {
    if (!*a3)
    {
      *buf = 0;
      if (sub_10000608C(a1, buf, 1) >= 1)
      {
        *buf = *a3;
        v10 = sub_10000608C(a1, buf, 1);
        sub_1001C5AB8(a1, 0, v10, a3);
      }
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
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Unregistering for client,%{public}d,notification,%{public}d,failed", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A792C8();
    }
  }

  return v9;
}

uint64_t sub_1002522F0(void *a1, int *a2)
{
  if (!*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A772C8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,off,GnssProviderInternal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A79830();
    }
  }

  sub_1001ECC7C(a1);
  v5 = *a2;
  if (*a2 <= 34)
  {
    if (v5 > 28)
    {
      if (v5 == 29)
      {
        sub_100801AF4(a1 + 15, 0);
      }

      else if (v5 == 34)
      {
        sub_10017EC94((a1 + 15), 0);
      }
    }

    else if (v5)
    {
      if (v5 == 28)
      {
        sub_100801F78(a1 + 15, 0);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A773B8();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "stopLocation in location notification", v13, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A799E8();
      }

      sub_100264F58(a1);
      v12 = *a2;
      v8 = sub_10000608C(a1, &v12, 1);
      sub_1001C5AB8(a1, 0, v8, a2);
    }
  }

  else if (v5 <= 37)
  {
    if (v5 == 35)
    {
      sub_100254280(a1 + 15, 0);
    }

    else if (v5 == 37)
    {
      sub_10080250C((a1 + 15), 0);
    }
  }

  else
  {
    switch(v5)
    {
      case '&':
        v11 = 38;
        (*(*a1 + 120))(a1, &v11);
        sub_1008022D0((a1 + 15), 0);
        break;
      case ',':
        sub_10027CEC4((a1 + 15), 0);
        break;
      case '-':
        if (qword_1025D4650 != -1)
        {
          sub_101A773B8();
        }

        v6 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "kNotificationGNSSStatusIndication unregistered", v10, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7990C();
        }

        break;
    }
  }

  return 1;
}

double sub_1002525C4(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 3912);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(a1 + 4088) = 0xFFFF;
  result = 0.0;
  *(a1 + 4092) = 0u;
  *(v2 + 12) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v2 + 28) = _Q1;
  *(v2 + 44) = _Q1;
  *(v2 + 60) = _Q1;
  *(a1 + 4172) = 0;
  *(a1 + 4176) = 0xBFF0000000000000;
  *(a1 + 4184) = 0u;
  *(a1 + 4200) = 0;
  *(v2 + 108) = 0xBFF0000000000000;
  *(a1 + 4212) = 0x7FFFFFFF;
  *(a1 + 4216) = 0;
  *(a1 + 4232) = 0;
  *(a1 + 4224) = 0;
  *(a1 + 4240) = 0;
  return result;
}

uint64_t sub_100252680(void *a1)
{
  v2 = a1 + 1;
  (*(a1[1] + 16))(a1 + 1);
  sub_100252798(a1);
  v4 = a1[29];
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = a1[31];
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = a1[74];
  if (v6)
  {
    v3.n128_f64[0] = sub_1002538D0(v6);
  }

  v7 = a1[77];
  if (v7)
  {
    v3.n128_f64[0] = sub_1002538D0(v7);
  }

  return (*(*v2 + 24))(v2, v3);
}

void sub_100252784(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100252798(uint64_t a1)
{
  v1 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v2 = v1[28];
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return (*(*v1 + 24))(v1);
}

void sub_100252848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100252860(uint64_t *a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101B05780();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[142];
    v4 = a1[148];
    v5 = a1[149];
    v8 = 134349569;
    v9 = v3;
    v10 = 2053;
    v11 = v4;
    v12 = 2053;
    v13 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterReset,LL,%{sensitive}.7lf,%{sensitive}.7lf", &v8, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B067A0(a1);
  }

  sub_1002529C4(a1);
  v6 = a1[112];
  v7 = a1[111];
  while (v6 != v7)
  {
    v6 -= 14;
    sub_1007EFC90(v6);
  }

  a1[112] = v7;
  a1[121] = a1[120];
  sub_100253630((a1 + 126));
  sub_100253630((a1 + 231));
  sub_10004FF5C(a1 + 381);
  sub_10004FF5C(a1 + 384);
  sub_10004FF5C(a1 + 387);
  sub_10004FF5C(a1 + 390);
}

void sub_1002529C4(uint64_t a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101B05780();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 1136);
    v4 = *(a1 + 1184);
    v5 = *(a1 + 1192);
    *buf = 134349569;
    *&buf[4] = v3;
    *&buf[12] = 2053;
    *&buf[14] = v4;
    *&buf[22] = 2053;
    *&v23 = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,filterResetForReseed,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B066A0(a1);
  }

  sub_100252D30(a1);
  *(a1 + 2968) = -1;
  v6 = *(a1 + 872);
  v7 = *(a1 + 864);
  while (v6 != v7)
  {
    v6 -= 14;
    sub_1007EFC90(v6);
  }

  *(a1 + 872) = v7;
  sub_100253098(a1 + 984, *(a1 + 992));
  *(a1 + 984) = a1 + 992;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 2832) = 0u;
  sub_1001FB750((a1 + 912));
  buf[0] = 0;
  *&buf[8] = 0u;
  v23 = 0u;
  LODWORD(v24) = 0;
  WORD2(v24) = 1;
  DWORD2(v24) = 0;
  v25 = 0u;
  memset(v26, 0, 33);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v30 = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2688) = *buf;
  v8 = *(a1 + 2720);
  *(a1 + 2712) = 0;
  *(a1 + 2720) = 0;
  if (v8)
  {
    sub_100008080(v8);
  }

  *(a1 + 2760) = v26[0];
  v9 = v25;
  *(a1 + 2728) = v24;
  *(a1 + 2744) = v9;
  *(a1 + 2768) = *&v26[1];
  *(a1 + 2777) = *(&v26[2] + 1);
  if ((a1 + 2688) == buf)
  {
    v10 = 0;
  }

  else
  {
    sub_100252F20((a1 + 2800), 0, 0, 0);
    v10 = v30;
  }

  *(a1 + 2824) = v10;
  *(a1 + 2972) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  LODWORD(v16) = 0;
  WORD2(v16) = 1;
  DWORD2(v16) = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *(a1 + 2848) = 0;
  v11 = *(a1 + 2864);
  *(a1 + 2856) = 0;
  *(a1 + 2864) = 0;
  if (v11)
  {
    sub_100008080(v11);
  }

  *(a1 + 2904) = *v18;
  v12 = v17;
  *(a1 + 2872) = v16;
  *(a1 + 2888) = v12;
  *(a1 + 2912) = *&v18[8];
  *(a1 + 2921) = *&v18[17];
  if ((a1 + 2848) != &v13)
  {
    sub_100252F20((a1 + 2944), 0, 0, 0);
  }

  sub_100253384(a1 + 3824);
  *(a1 + 4032) = 0;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    sub_100008080(v15);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (*(&v23 + 1))
  {
    sub_100008080(*(&v23 + 1));
  }
}

void sub_100252CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_101043258(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100252CF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56) - *(a1 + 48);
  if (v2)
  {
    return (*a2 + 1) % (0x6DB6DB6DB6DB6DB7 * (v2 >> 4));
  }

  else
  {
    return 0;
  }
}

void sub_100252D30(uint64_t a1)
{
  *(a1 + 568) = 1;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v7 = _Q0;
  *v8 = 0xBFF0000000000000;
  v10[15] = 0;
  LODWORD(v10[16]) = 0;
  memset(&v10[10], 0, 34);
  memset(&v10[17], 0, 75);
  memset(&v10[27], 0, 56);
  memset(&v8[8], 0, 80);
  memset(v10, 0, 78);
  v9 = 0u;
  v10[34] = 0xBFF0000000000000;
  *(a1 + 168) = *v8;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v8[64];
  *(a1 + 216) = *&v8[48];
  *(a1 + 200) = *&v8[32];
  *(a1 + 184) = *&v8[16];
  std::string::operator=((a1 + 248), &v8[80]);
  memcpy((a1 + 272), v10, 0x118uLL);
  *(a1 + 592) = 0;
  *(a1 + 736) = v7;
  *(a1 + 752) = 256;
  *(a1 + 648) = 0;
  *(a1 + 652) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*&v8[80]);
  }
}

void sub_100252EA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100252EBC(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 56) - v3) >> 4);
  if (v4 > a3)
  {
    v5 = (v3 + 112 * a3);
    v6 = *v5;
    v7 = v5[2];
    a2[1] = v5[1];
    a2[2] = v7;
    *a2 = v6;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[5];
    *(a2 + 95) = *(v5 + 95);
    a2[4] = v9;
    a2[5] = v10;
    a2[3] = v8;
  }

  return v4 > a3;
}

void *sub_100252F20(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x8E38E38E38E38E39 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      sub_100E9C7A0(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x8E38E38E38E38E39 * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

void sub_100253098(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100253098(a1, *a2);
    sub_100253098(a1, *(a2 + 1));
    if (a2[5119] < 0)
    {
      operator delete(*(a2 + 637));
    }

    if (a2[839] < 0)
    {
      operator delete(*(a2 + 102));
    }

    if (a2[407] < 0)
    {
      operator delete(*(a2 + 48));
    }

    v4 = *(a2 + 21);
    if (v4)
    {
      *(a2 + 22) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 11);
    if (v5)
    {
      sub_100008080(v5);
    }

    v6 = *(a2 + 8);
    if (v6)
    {
      sub_100008080(v6);
    }

    operator delete(a2);
  }
}

uint64_t sub_100253148(uint64_t a1)
{
  v2 = *(a1 + 272);
  if (v2 == 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 272);
      v11 = 134349056;
      v12 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::isIntervalSuitableForDeltaPositionBasedCalibrationUpdate invalid fIntervalDuration_s, %{public}.3f.", &v11, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019DCE0C();
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 312);
    if (v6 >= 30.0)
    {
      LODWORD(v6) = *(a1 + 284);
      v9 = *&v6 / v2;
      if (v9 >= 0.0)
      {
        return 1;
      }

      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v11 = 134349312;
        v12 = v9;
        v13 = 2050;
        v14 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::isIntervalSuitableForDeltaPositionBasedCalibrationUpdate fractionOfTimeWithValidDeltaPosition, %{public}.3f, below threshold, %{public}.3f.", &v11, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1019DCC0C();
        return 0;
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 312);
        v11 = 134349312;
        v12 = v8;
        v13 = 2050;
        v14 = 0x403E000000000000;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::isIntervalSuitableForDeltaPositionBasedCalibrationUpdate IODisplacement_m, %{public}.3f, below threshold, %{public}.3f.", &v11, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1019DCD14();
        return 0;
      }
    }
  }

  return result;
}

void sub_100253384(uint64_t a1)
{
  v13[0] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v13[8] = _Q0;
  v15 = 0uLL;
  v14 = 0;
  v16 = _Q0;
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  __p = 0;
  v23 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v24 = 0;
  v25 = 0xBFF0000000000000;
  v7 = *v13;
  v8 = *&v13[16];
  v9 = v16;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = v9;
  *a1 = v7;
  *(a1 + 16) = v8;
  v10 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = v20;
  *(a1 + 80) = v19;
  *(a1 + 96) = v11;
  *(a1 + 112) = *v21;
  *(a1 + 120) = *&v21[8];
  *(a1 + 129) = *&v21[17];
  if (v13 == a1)
  {
    *(a1 + 176) = 0xBFF0000000000000;
  }

  else
  {
    sub_100252F20((a1 + 152), 0, 0, 0);
    v12 = __p;
    *(a1 + 176) = v25;
    if (v12)
    {
      v23 = v12;
      operator delete(v12);
    }
  }

  if (v18)
  {
    sub_100008080(v18);
  }
}

void sub_100253494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1010431D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002534A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 248) != 1 || !sub_1001E9DA0(a1))
  {
    result = sub_100253148(a1);
    if (!result)
    {
      return result;
    }

    sub_100A9E674(a1, a2);
    sub_100A9E970(a1, a2);
    return 1;
  }

  if (sub_1012EC578(*(a1 + 232)))
  {
    v4 = *(a1 + 232);
    v5 = *(v4 + 80);
    v6 = *(v4 + 96);
    v7 = *(v4 + 88) * *(v4 + 88) * 10.0;
    *a2 = -*(v4 + 72);
    *(a2 + 8) = v7;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6 * v6 * 10.0;
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::estimateAlignmentParameters, batch calibration succeeded.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DD5A8();
    }

    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1003121A4();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::estimateAlignmentParameters, batch calibration failed.", v11, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019DD4CC();
    return 0;
  }

  return result;
}

void sub_100253630(uint64_t a1)
{
  v17 = 0;
  v18 = 0;
  LODWORD(v19) = 0;
  WORD2(v19) = 1;
  DWORD2(v19) = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  *(a1 + 8) = 0;
  v2 = (a1 + 8);
  v3 = *(a1 + 16);
  v2[1] = 0;
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = v20;
  *(a1 + 24) = v19;
  *(a1 + 40) = v4;
  *(a1 + 56) = *v21;
  *(a1 + 64) = *&v21[8];
  *(a1 + 73) = *&v21[17];
  if (v2 == &v17)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_100252F20((a1 + 96), 0, 0, 0);
    v5 = v17;
    v6 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  *(a1 + 672) = v5;
  v7 = *(a1 + 680);
  *(a1 + 680) = v6;
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = v20;
  *(a1 + 688) = v19;
  *(a1 + 704) = v8;
  *(a1 + 720) = *v21;
  *(a1 + 728) = *&v21[8];
  *(a1 + 737) = *&v21[17];
  if ((a1 + 672) != &v17)
  {
    sub_100252F20((a1 + 760), v22, v23, 0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *v14 = 0xBFF0000000000000;
  *&v16[120] = 0;
  *&v16[128] = 0;
  memset(&v16[80], 0, 34);
  memset(&v16[136], 0, 75);
  memset(&v16[216], 0, 56);
  memset(&v14[8], 0, 80);
  memset(v16, 0, 78);
  v15 = 0u;
  *&v16[272] = 0xBFF0000000000000;
  *(a1 + 168) = *v14;
  *(a1 + 152) = 0uLL;
  *(a1 + 136) = _Q0;
  *(a1 + 120) = 0uLL;
  *(a1 + 232) = *&v14[64];
  *(a1 + 216) = *&v14[48];
  *(a1 + 200) = *&v14[32];
  *(a1 + 184) = *&v14[16];
  std::string::operator=((a1 + 248), &v14[80]);
  memcpy((a1 + 272), v16, 0x118uLL);
  *a1 = 0;
  *(a1 + 552) = 0;
  *(a1 + 664) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 639) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 830) = 0;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(*&v14[80]);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v18)
  {
    sub_100008080(v18);
  }
}

void sub_1002538A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100E9C84C((v30 - 144));
  _Unwind_Resume(a1);
}

double sub_1002538D0(uint64_t a1)
{
  *(a1 + 224) = 0xBFF0000000000000;
  sub_100253D50((a1 + 240));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  memset(v14, 0, 24);
  *v13 = v14;
  sub_100253CCC(v13);
  bzero(v14, 0x300uLL);
  v14[20] = 1;
  *&v14[24] = 0;
  v16 = 0;
  v17 = 0;
  memset(&v14[32], 0, 48);
  v15 = 0;
  v18 = 0;
  v19 = 0xBFF0000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v32 = 0;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  v35 = _Q1;
  v36 = 0;
  v37 = 0;
  v38 = 0xBFF0000000000000;
  v50 = 0;
  memset(&v48[32], 0, 32);
  v49 = 0;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  memset(v54, 0, 27);
  memset(&v54[32], 0, 48);
  v47 = 0u;
  memset(v48, 0, 30);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v56 = 0xBFF0000000000000;
  v55 = 0;
  sub_10018D404(v57);
  v57[40] = 0;
  *(v60 + 7) = 0;
  v58 = 0;
  v60[0] = 0;
  v59 = 0;
  *(v61 + 7) = 0;
  v61[0] = 0;
  sub_100253DB8(a1 + 264, v14);
  if (v60[0])
  {
    sub_100008080(v60[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(*(&v43 + 1));
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v21)
  {
    sub_100008080(v21);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (*&v14[8])
  {
    sub_100008080(*&v14[8]);
  }

  *(a1 + 1032) = 0;
  sub_1001FB750((a1 + 1040));
  *(a1 + 1208) = 0;
  *&v13[7] = 0u;
  memset(&v14[4], 0, 49);
  *(a1 + 1064) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1065) = *v13;
  v7 = *(a1 + 1096);
  *(a1 + 1088) = 0u;
  if (v7)
  {
    sub_100008080(v7);
  }

  *(a1 + 1104) = 0;
  *(a1 + 1108) = 1;
  *(a1 + 1112) = 0;
  *(a1 + 1116) = *v14;
  *(a1 + 1128) = *&v14[12];
  *(a1 + 1144) = *&v14[28];
  *(a1 + 1153) = *&v14[37];
  v8 = (a1 + 1176);
  v9 = *(a1 + 1176);
  if (v9)
  {
    *(a1 + 1184) = v9;
    operator delete(v9);
    *v8 = 0;
    *(a1 + 1184) = 0;
    *(a1 + 1192) = 0;
  }

  *v8 = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1212) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1257) = 0u;
  sub_100253F2C(a1 + 1280);
  *(a1 + 1752) = -1;
  *(a1 + 1760) = 0u;
  *(a1 + 1776) = 0;
  *v14 = v14;
  *&v14[8] = v14;
  *&v14[16] = 0;
  sub_100254040((a1 + 1784), v14);
  sub_10004FF5C(v14);
  *v14 = v14;
  *&v14[8] = v14;
  *&v14[16] = 0;
  sub_100254040((a1 + 1808), v14);
  sub_10004FF5C(v14);
  *(a1 + 1832) = 0x600000006;
  v10 = (a1 + 1840);
  v11 = *(a1 + 1840);
  if (v11)
  {
    *(a1 + 1848) = v11;
    operator delete(v11);
    *v10 = 0;
    *(a1 + 1848) = 0;
    *(a1 + 1856) = 0;
  }

  *(a1 + 1856) = 0;
  *v10 = 0u;
  *(a1 + 1864) = 0xBFF0000000000000;
  *(a1 + 1872) = 0xBFF0000000000000;
  sub_1002540A8((a1 + 1880));
  sub_100254148((a1 + 1904));
  *(a1 + 1920) = 0;
  *(a1 + 1904) = 0u;
  memset(v14, 0, 24);
  *v13 = v14;
  sub_1002540F4(v13);
  sub_100254148((a1 + 1928));
  *(a1 + 1944) = 0;
  *(a1 + 1928) = 0u;
  memset(v14, 0, 24);
  *v13 = v14;
  sub_1002540F4(v13);
  *(a1 + 2072) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  result = 0.0;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  return result;
}

void sub_100253CCC(void ***a1)
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
        v4 -= 14;
        sub_1007EFC90(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100253D50(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 14;
        sub_1007EFC90(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_100253DB8(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  v8 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v8;
  sub_10007057C(a1 + 88, (a2 + 88));
  *(a1 + 112) = *(a2 + 14);
  v9 = *(a2 + 120);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v10 = *(a1 + 128);
  *(a1 + 120) = v9;
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  v13 = a2[11];
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v13;
  sub_10007057C(a1 + 208, a2 + 13);
  *(a1 + 232) = *(a2 + 232);
  v14 = a2[15];
  v15 = a2[16];
  v16 = a2[18];
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v16;
  *(a1 + 240) = v14;
  *(a1 + 256) = v15;
  v17 = a2[19];
  v18 = a2[20];
  v19 = a2[22];
  *(a1 + 336) = a2[21];
  *(a1 + 352) = v19;
  *(a1 + 304) = v17;
  *(a1 + 320) = v18;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v20 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v20;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  memcpy((a1 + 392), a2 + 392, 0x118uLL);
  v22 = a2[43];
  v21 = a2[44];
  v23 = a2[42];
  *(a1 + 720) = *(a2 + 90);
  *(a1 + 688) = v22;
  *(a1 + 704) = v21;
  *(a1 + 672) = v23;
  v24 = *(a2 + 728);
  *(a2 + 728) = 0u;
  v25 = *(a1 + 736);
  *(a1 + 728) = v24;
  if (v25)
  {
    sub_100008080(v25);
  }

  v26 = *(a2 + 744);
  *(a1 + 759) = *(a2 + 759);
  *(a1 + 744) = v26;
  return a1;
}

void sub_100253F2C(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *v7 = 0xBFF0000000000000;
  *&v9[120] = 0;
  *&v9[128] = 0;
  memset(&v9[80], 0, 34);
  memset(&v9[136], 0, 75);
  memset(&v9[216], 0, 56);
  memset(&v7[8], 0, 80);
  memset(v9, 0, 78);
  v8 = 0u;
  *&v9[272] = 0xBFF0000000000000;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = *v7;
  *a1 = 0uLL;
  *(a1 + 16) = _Q0;
  *(a1 + 96) = *&v7[48];
  *(a1 + 112) = *&v7[64];
  *(a1 + 64) = *&v7[16];
  *(a1 + 80) = *&v7[32];
  std::string::operator=((a1 + 128), &v7[80]);
  memcpy((a1 + 152), v9, 0x118uLL);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(*&v7[80]);
  }
}

void sub_100254024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100254040(uint64_t *a1, uint64_t *a2)
{
  sub_10004FF5C(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void sub_1002540A8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_100008080(v4);
    }
  }

  a1[1] = v2;
}

void sub_1002540F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007EFBF0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100254148(uint64_t *a1)
{
  if (*a1)
  {
    sub_1007EFBF0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_100254188(uint64_t a1)
{
  v1 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v2 = v1[28];
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return (*(*v1 + 24))(v1);
}

void sub_100254238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100254250(uint64_t a1)
{
  result = *(a1 + 3912);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_100254280(void *a1, void *a2)
{
  v2 = a2;
  v4 = a1[148];
  if (v4)
  {
    sub_1002545D8(v4, a2);
  }

  v5 = a1[112];
  if (v5)
  {
    sub_1002546D0(v5, v2);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#rti,updateRtiDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = v2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
    }
  }

  v7 = a1[106];
  if (v7)
  {
    sub_100256634(v7, v2);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#ee,updateEeFileDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = v2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
    }
  }

  sub_10001CAF4(buf);
  v15 = 0;
  v9 = sub_10001CB4C(*buf, "EnableRteUpdateOnTbtSession", &v15);
  v10 = v9 ^ 1 | v15;
  if (*v17)
  {
    sub_100008080(*v17);
  }

  if (v10)
  {
    v11 = a1[109];
    if (v11)
    {
      sub_1002568F8(v11, v2, 0);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rte,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = v2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
      }
    }

    v13 = a1[118];
    if (v13)
    {
      sub_1002568F8(v13, v2, 1);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rof,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = v2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isTbtSession:%{public}hhd}", buf, 0x22u);
      }
    }
  }
}

void sub_1002545B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002545D8(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "L5Context,Focused Nav,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A65C70(a2);
  }

  if (*(a1 + 54) != a2)
  {
    *(a1 + 54) = a2;
    sub_10017DC7C(a1);
  }
}

void sub_1002546D0(double *a1, int a2)
{
  v8 = 0.0;
  v9 = 0.0;
  sub_100254968(a1, &v9, &v8, a2);
  if (vabdd_f64(*a1, v9) > 0.000001 || vabdd_f64(a1[1], v8) > 0.000001)
  {
    if (sub_100254C0C((a1 + 13), &v9, &v8))
    {
      v4 = v8;
      *a1 = v9;
      a1[1] = v4;
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        v17 = v9;
        v18 = 2050;
        v19 = v8;
        v20 = 1026;
        v21 = a2;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "GNSS_FILE: #rti,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v10 = 134349568;
        v11 = v9;
        v12 = 2050;
        v13 = v8;
        v14 = 1026;
        v15 = a2;
        v6 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::updateRtiDownloadRateOnWorkoutOrFocusedNav(const BOOL)", "%s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "GNSS_FILE: #rti,could not update assistance file download rates", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016DD5B4();
      }
    }
  }
}

void sub_100254968(uint64_t a1, double *a2, double *a3, int a4)
{
  *a2 = sub_100254BAC() * 3600.0;
  *a3 = sub_100254C04() * 3600.0;
  if (*(a1 + 24) == 1)
  {
    *a2 = *(a1 + 16);
  }

  if (*(a1 + 40) == 1)
  {
    *a3 = *(a1 + 32);
  }

  if (a4)
  {
    *a2 = 3600.0;
    *a3 = 3600.0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016DCB7C();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a2;
    v10 = *a3;
    *buf = 134349568;
    v13 = v9;
    v14 = 2050;
    v15 = v10;
    v16 = 1026;
    v17 = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "GNSS_FILE: #rti,updateRateCellSec,%{public}.2f,updateRateWifiSec,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016DCA68();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::getRtiDownloadRates(CFTimeInterval &, CFTimeInterval &, const BOOL)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

double sub_100254BAC()
{
  v0 = 4.0;
  if ((sub_1000734AC() & 1) == 0 && (!sub_10006FDD0() || sub_10006FEAC()) && !sub_10006FE30())
  {
    if (sub_100718F78())
    {
      return 4.0;
    }

    else
    {
      return 12.0;
    }
  }

  return v0;
}

uint64_t sub_100254C0C(uint64_t a1, double *a2, double *a3)
{
  v6 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v7 = *a2;
  v6[9] = *a2;
  v8 = *a3;
  v6[10] = *a3;
  if (v7 > 0.0 && v7 < v8)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v10 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      *buf = 134349312;
      v21 = v11;
      v22 = 2050;
      v23 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU,update rate %{public}.3fs is shorter than WiFi update rate %{public}.3fs - overriding WiFi update rate", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DE164(buf);
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFileUpdate::setUpdateRate(const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    *(a1 + 88) = *(a1 + 80);
  }

  if (qword_1025D4860 != -1)
  {
    sub_1018DE100();
  }

  v13 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
  {
    v14 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v14 = *v14;
    }

    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    *buf = 136446722;
    v21 = v14;
    v22 = 2050;
    v23 = v15;
    v24 = 2050;
    v25 = v16;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "CLFU,file %{public}s update rate set to %{public}.3fs, %{public}.3fs", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFileUpdate::setUpdateRate(const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  [*(*(a1 + 224) + 16) register:*(*(a1 + 224) + 8) forNotification:6 registrationInfo:0];
  sub_100254FFC(a1);
  (*(*v6 + 24))(v6);
  return 1;
}

void sub_100254FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100254FFC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  *&v51[1] = a1 + 8;
  (*(v2 + 16))(a1 + 8);
  v52 = 256;
  if ((v3[167] & 0x8000000000000000) != 0)
  {
    if (*(a1 + 160))
    {
LABEL_3:
      if (!sub_100255D4C(a1))
      {
        return (*(*v3 + 24))(v3);
      }

      v4 = v3 + 144;
      if ([objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")] == 2)
      {
        if (qword_1025D4860 != -1)
        {
          sub_1003115C0();
        }

        v5 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          sub_10001A3E8();
          v6 = sub_10001CF3C();
          v7 = "(WiFi)";
          if (v6)
          {
            v7 = "(WiFi or companion nearby)";
          }

          v8 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v8 = *v4;
          }

          v9 = *(a1 + 88);
          *buf = 136446723;
          v64 = v7;
          v65 = 2081;
          v66 = *&v8;
          v67 = 2050;
          v68 = v9;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLFU,we are now on large reachability %{public}s, scheduling a download for %{private}s (period %{public}.3f)", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018DE164(buf);
          sub_10001A3E8();
          v39 = sub_10001CF3C();
          v40 = "(WiFi)";
          if (v39)
          {
            v40 = "(WiFi or companion nearby)";
          }

          v41 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v41 = *v4;
          }

          v42 = *(a1 + 88);
          v53 = 136446723;
          v54 = v40;
          v55 = 2081;
          v56 = *&v41;
          v57 = 2050;
          v58 = v42;
          v43 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v10 = 88;
      }

      else
      {
        if (qword_1025D4860 != -1)
        {
          sub_1003115C0();
        }

        v13 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v14 = *v4;
          }

          v15 = *(a1 + 80);
          *buf = 136446466;
          v64 = v14;
          v65 = 2050;
          v66 = v15;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLFU,we are now on short reachability (Cell), scheduling a download for %{public}s (period %{public}.3f)", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          v36 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v36 = *v4;
          }

          v37 = *(a1 + 80);
          v53 = 136446466;
          v54 = v36;
          v55 = 2050;
          v56 = v37;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        v10 = 80;
      }

      v16 = *(a1 + v10);
      v51[0] = -1.0;
      Current = CFAbsoluteTimeGetCurrent();
      v18 = -1.0;
      if (v16 <= 0.0)
      {
        goto LABEL_71;
      }

      if (sub_100256298(a1, v51))
      {
        v19 = v51[0];
        if (v51[0] >= Current - v16)
        {
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          v18 = v16 + v19;
          v26 = qword_1025D4868;
          if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v3 + 144;
            if (*(a1 + 175) < 0)
            {
              v27 = *v4;
            }

            *buf = 136381699;
            v64 = v27;
            v65 = 2050;
            v66 = v16;
            v67 = 2050;
            v68 = v51[0];
            v69 = 2050;
            v70 = v18;
            v71 = 2050;
            v72 = v18 - Current;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "CLFU,last %{private}s downloaded less than %{public}.3f seconds ago (%{public}.3f), scheduling download for %{public}.3f (%{public}.3f away)", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v49 = v3 + 144;
            if (*(a1 + 175) < 0)
            {
              v49 = *v4;
            }

            v53 = 136381699;
            v54 = v49;
            v55 = 2050;
            v56 = v16;
            v57 = 2050;
            v58 = v51[0];
            v59 = 2050;
            v60 = v18;
            v61 = 2050;
            v62 = v18 - Current;
            v50 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v50);
            if (v50 != buf)
            {
              free(v50);
            }
          }

          goto LABEL_61;
        }

        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v20 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v3 + 144;
          if (*(a1 + 175) < 0)
          {
            v21 = *v4;
          }

          *buf = 136381187;
          v64 = v21;
          v65 = 2050;
          v66 = v16;
          v67 = 2050;
          v68 = v51[0];
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "CLFU,last %{private}s downloaded over %{public}.3f seconds ago (%{public}.3f), starting a download now", buf, 0x20u);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_53:
          v18 = Current;
LABEL_61:
          v28 = *(a1 + 96);
          if (v28 >= 0.0 && v28 < v18)
          {
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v29 = qword_1025D4868;
            if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v3 + 144;
              if (*(a1 + 175) < 0)
              {
                v30 = *v4;
              }

              v31 = *(a1 + 96);
              *buf = 136381187;
              v64 = v30;
              v65 = 2050;
              v66 = v31;
              v67 = 2050;
              v68 = v28 - v31;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "CLFU,scheduled download %{private}s is after %{public}.3f deadline (%{public}.3f after) - overriding", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4860 != -1)
              {
                sub_1018DE100();
              }

              v46 = v3 + 144;
              if (*(a1 + 175) < 0)
              {
                v46 = *v4;
              }

              v47 = *(a1 + 96);
              v53 = 136381187;
              v54 = v46;
              v55 = 2050;
              v56 = v47;
              v57 = 2050;
              v58 = v28 - v47;
              v48 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v48);
              if (v48 != buf)
              {
                free(v48);
              }
            }

            v18 = v28;
          }

LABEL_71:
          v32 = *(a1 + 112);
          if (v32 > 0.0 && v32 > v18)
          {
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v33 = qword_1025D4868;
            if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
            {
              v34 = v3 + 144;
              if (*(a1 + 175) < 0)
              {
                v34 = *v4;
              }

              *buf = 136381187;
              v64 = v34;
              v65 = 2050;
              v66 = v32;
              v67 = 2050;
              v68 = v32 - Current;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "CLFU,Throttling download %{private}s due to retry delay, scheduling download for %{public}.3f (%{public}.3f away)", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4860 != -1)
              {
                sub_1018DE100();
              }

              if (*(a1 + 175) < 0)
              {
                v4 = *v4;
              }

              v53 = 136381187;
              v54 = v4;
              v55 = 2050;
              v56 = v32;
              v57 = 2050;
              v58 = v32 - Current;
              v44 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v44);
              if (v44 != buf)
              {
                free(v44);
              }
            }

            v18 = v32;
          }

          if (v18 > 0.0)
          {
            [*(a1 + 56) setNextFireTime:v18];
          }

          return (*(*v3 + 24))(v3);
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v22 = v3 + 144;
        if (*(a1 + 175) < 0)
        {
          v22 = *v4;
        }

        v53 = 136381187;
        v54 = v22;
        v55 = 2050;
        v56 = v16;
        v57 = 2050;
        v58 = v51[0];
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v23);
      }

      else
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v24 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v25 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v25 = *v25;
          }

          *buf = 136446210;
          v64 = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "CLFU,cannot verify existence of %{public}s, attempting to re-download now", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_53;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v45 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v45 = *v45;
        }

        v53 = 136446210;
        v54 = v45;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::scheduleDownload()", "%s\n", v23);
      }

      if (v23 != buf)
      {
        free(v23);
      }

      goto LABEL_53;
    }
  }

  else if (v3[167])
  {
    goto LABEL_3;
  }

  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v11 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLFU,no download source set - not downloading", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018DE164(buf);
    LOWORD(v53) = 0;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLFileUpdate::scheduleDownload()", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return (*(*v3 + 24))(v3);
}

void sub_100255CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100255D4C(uint64_t a1)
{
  if (*(a1 + 120) != 1)
  {
    return 1;
  }

  if (vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 104)) > *(a1 + 72))
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v5 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v6 = *v6;
      }

      v7 = 136380675;
      v8 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLFU,current download of %{private}s has timed out, canceling", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DE1A8();
    }

    (*(**(a1 + 48) + 24))(*(a1 + 48));
    *(a1 + 120) = 0;
    return 1;
  }

  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v2 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v3 = *v3;
    }

    v7 = 136380675;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLFU,download of %{private}s not yet timed out. Blocking current download request", &v7, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DE2C0();
    return 0;
  }

  return result;
}

uint64_t sub_100255F10(_BYTE *a1, int *a2)
{
  sub_1001ECC7C(a1);
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
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLAccessory,PauseExternalLocation,0", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019137EC();
    }

    v8 = sub_1000081AC();
    sub_1006F14E8(a1, 0, v8);
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
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLAccessory,EnableAccessoryNMEAScreening,1,airborne,0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019138C8();
      }

      v6 = sub_1000081AC();
      sub_10107C280((a1 + 2664), 1, v6);
      a1[2057] = 1;
      sub_1006F6794((a1 + 2056));
    }
  }

  else if (!v4)
  {
    sub_100256084(a1);
  }

  return 1;
}

uint64_t sub_100256084(uint64_t a1)
{
  v2 = objc_alloc_init(NSAutoreleasePool);
  [qword_102658FB0 stopLocation];
  [*(a1 + 992) setNextFireDelay:1.79769313e308];
  v3 = sub_1000081AC();
  sub_100256EE8(a1 + 2664, v3);

  *(a1 + 116) = 0xFFFF;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 152) = _Q0;
  *(a1 + 168) = _Q0;
  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0xBFF0000000000000;
  *(a1 + 220) = 0;
  *(a1 + 212) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 0xBFF0000000000000;
  *(a1 + 240) = 0x7FFFFFFF;
  *(a1 + 252) = 0;
  *(a1 + 268) = 0;
  *(a1 + 244) = 0;
  *(a1 + 260) = 0;
  [*(*(a1 + 1320) + 16) unregister:*(*(a1 + 1320) + 8) forNotification:4];
  *(a1 + 1368) = 0;
  [*(*(a1 + 1328) + 16) unregister:*(*(a1 + 1328) + 8) forNotification:0];
  *(a1 + 1369) = 0;
  sub_100257118(a1);
  *(a1 + 6320) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2050) = 0;
  *(a1 + 2480) = 0;
  *(a1 + 2488) = 1;
  result = *(a1 + 2016);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 2016) = -1;
  }

  return result;
}

uint64_t sub_100256298(uint64_t a1, void *a2)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  *&v10[1] = a1 + 8;
  (*(v4 + 16))(a1 + 8);
  v11 = 256;
  if (sub_100256384(a1, v10))
  {
    v6 = sub_1000206B4();
    v7 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v7 = *v7;
    }

    v8 = sub_1000B9370(v6, v7, a2);
  }

  else
  {
    v8 = 0;
  }

  (*(*v5 + 24))(v5);
  return v8;
}

void sub_100256370(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100256384(uint64_t a1, double *a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v15 = a1 + 8;
  (*(v4 + 16))(a1 + 8);
  v16 = 256;
  v6 = (v5 + 168);
  v7 = v5 + 168;
  if (v5[191] < 0)
  {
    v7 = *v6;
  }

  v8 = stat(v7, &v14);
  if (v8)
  {
    v9 = *__error();
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v10 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
    {
      v11 = v5 + 168;
      if (*(a1 + 199) < 0)
      {
        v11 = *v6;
      }

      *buf = 136446466;
      v22 = v11;
      v23 = 1026;
      v24 = v9;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLFU,destination stat failed,%{public}s,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      if (*(a1 + 199) < 0)
      {
        v6 = *v6;
      }

      v17 = 136446466;
      v18 = v6;
      v19 = 1026;
      v20 = v9;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLFileUpdate::getFileModifiedTime(CFAbsoluteTime &)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  else
  {
    *a2 = sub_10000DF28(&v14.st_mtimespec.tv_sec);
  }

  (*(*v5 + 24))(v5);
  return v8 == 0;
}

void sub_100256634(double *a1, int a2)
{
  if (qword_102666B58 != -1)
  {
    sub_1016DD378();
  }

  if (byte_102666B50 == 1)
  {
    v8 = 0.0;
    v9 = 0.0;
    sub_1016DB1D0(&v9, &v8, -1, a2);
    if (vabdd_f64(*a1, v9) > 0.000001 || vabdd_f64(a1[1], v8) > 0.000001)
    {
      if (sub_100254C0C((a1 + 13), &v9, &v8))
      {
        v4 = v8;
        *a1 = v9;
        a1[1] = v4;
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349568;
          v17 = v9;
          v18 = 2050;
          v19 = v8;
          v20 = 1026;
          v21 = a2;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "GNSS_FILE: #ee,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_1016DCA68();
          }

          v10 = 134349568;
          v11 = v9;
          v12 = 2050;
          v13 = v8;
          v14 = 1026;
          v15 = a2;
          v6 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::updateEeFileDownloadRateOnWorkoutOrFocusedNav(const BOOL)", "%s\n", v6);
          if (v6 != buf)
          {
            free(v6);
          }
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v7 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "GNSS_FILE: #ee,could not update assistance file download rates", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016DD38C();
        }
      }
    }
  }
}

void sub_1002568F8(double *a1, int a2, int *a3)
{
  v13 = 0.0;
  v14 = 0.0;
  sub_100256BFC(&v14, &v13, a3, a2);
  if (vabdd_f64(*a1, v14) > 0.000001 || vabdd_f64(a1[1], v13) > 0.000001)
  {
    if (sub_100254C0C((a1 + 13), &v14, &v13))
    {
      v6 = v13;
      *a1 = v14;
      a1[1] = v6;
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "#rte";
        if (a3)
        {
          v8 = "#rof";
        }

        *buf = 136315906;
        v24 = v8;
        v25 = 2050;
        v26 = v14;
        v27 = 2050;
        v28 = v13;
        v29 = 1026;
        v30 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "GNSS_FILE: %s,update assistance file downloader on user-activated fitness session or tbt navigation,cell,%{public}.2f,wifi,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016DCA68();
        }

        v9 = "#rte";
        if (a3)
        {
          v9 = "#rof";
        }

        v15 = 136315906;
        v16 = v9;
        v17 = 2050;
        v18 = v14;
        v19 = 2050;
        v20 = v13;
        v21 = 1026;
        v22 = a2;
        v10 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceFileDownloader::updateRteRofFileDownloadRateOnWorkoutOrFocusedNav(const BOOL, const BOOL)", "%s\n", v10);
        if (v10 != buf)
        {
          free(v10);
        }
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016DCA68();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v12 = "#rte";
        if (a3)
        {
          v12 = "#rof";
        }

        *buf = 136315138;
        v24 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "GNSS_FILE: %s,could not update assistance file download rates", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016DD4A0(a3);
      }
    }
  }
}

void sub_100256BFC(double *a1, double *a2, int a3, int a4)
{
  if (a3)
  {
    v8 = 604800.0;
  }

  else
  {
    v8 = 3600.0;
  }

  if (qword_102666BB0 != -1)
  {
    sub_1016DD478();
  }

  v9 = *&qword_102666B90;
  if (!byte_102666B98)
  {
    v9 = 604800.0;
  }

  *a1 = v9;
  v10 = *&qword_102666BA0;
  if (!byte_102666BA8)
  {
    v10 = v8;
  }

  *a2 = v10;
  if (a4)
  {
    if (qword_102666BD8 != -1)
    {
      sub_1016DD48C();
    }

    v11 = *&qword_102666BB8;
    if (!byte_102666BC0)
    {
      v11 = 3600.0;
    }

    *a1 = v11;
    v12 = *&qword_102666BC8;
    if (!byte_102666BD0)
    {
      v12 = 3600.0;
    }

    *a2 = v12;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016DCB7C();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v14 = "#rte";
    v15 = *a1;
    v16 = *a2;
    if (a3)
    {
      v14 = "#rof";
    }

    *buf = 136315906;
    v19 = v14;
    v20 = 2050;
    v21 = v15;
    v22 = 2050;
    v23 = v16;
    v24 = 1026;
    v25 = a4;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "GNSS_FILE: %s,updateRateCellSec,%{public}.2f,updateRateWifiSec,%{public}.2f,isWorkoutOrTbtSession,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016DCA68();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLGnssAssistanceFileDownloader::getRteRofFileDownloadRates(CFTimeInterval &, CFTimeInterval &, const BOOL, const BOOL)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_100256EE8(uint64_t a1, double a2)
{
  v3 = *(a1 + 3048);
  if (v3 > 0.0)
  {
    *(a1 + 240) += vabdd_f64(a2, v3);
    if (qword_1025D45E0 != -1)
    {
      sub_1003102DC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v7 = *(a1 + 3048);
      v9 = *(a1 + 236);
      v8 = *(a1 + 240);
      *buf = 134350080;
      v12 = Current;
      v13 = 2050;
      v14 = v7;
      v15 = 2050;
      v16 = a2;
      v17 = 1026;
      v18 = v8;
      v19 = 1026;
      v20 = v9;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,locationSession,start,%{public}.1lf,end,%{public}.1lf,duration,%{public}d,sessions,%{public}d", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_101B12B9C();
      }

      CFAbsoluteTimeGetCurrent();
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryAWD::locationSessionEnd(const CFTimeInterval)", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    *(a1 + 3048) = 0xBFF0000000000000;
    *(a1 + 3104) = 0;
  }
}

void sub_100257118(uint64_t a1)
{
  v2 = a1 + 4096;
  if (*(a1 + 6377) == 1)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLAccessory,unregistered for unfiltered location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913B6C();
    }

    [*(*(a1 + 1320) + 16) unregister:*(*(a1 + 1320) + 8) forNotification:10];
    *(v2 + 2281) = 0;
  }

  if (*(a1 + 1984) == 1)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessory,unregistered for propagated location notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913C50();
    }

    [*(*(a1 + 1320) + 16) unregister:*(*(a1 + 1320) + 8) forNotification:27];
    *(a1 + 1984) = 0;
  }

  if (*(v2 + 2280) == 1)
  {
    v5 = sub_1001C9C28();
    if (byte_102658F9F < 0)
    {
      sub_100007244(__p, xmmword_102658F88, *(&xmmword_102658F88 + 1));
    }

    else
    {
      *__p = xmmword_102658F88;
      v7 = unk_102658F98;
    }

    sub_1002572F8(v5, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    *(v2 + 2280) = 0;
  }
}

void sub_1002572DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002572F8(uint64_t a1, uint64_t *a2)
{
  std::mutex::lock((a1 + 8));
  if ((*(a1 + 96) & 1) == 0)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    if (v4 != v5)
    {
      v6 = *(a2 + 23);
      if (v6 >= 0)
      {
        v7 = *(a2 + 23);
      }

      else
      {
        v7 = a2[1];
      }

      while (1)
      {
        v8 = *(v4 + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(v4 + 8);
        }

        if (v8 == v7)
        {
          v10 = v9 >= 0 ? v4 : *v4;
          v11 = v6 >= 0 ? a2 : *a2;
          if (!memcmp(v10, v11, v7))
          {
            break;
          }
        }

        v4 += 64;
        if (v4 == v5)
        {
          goto LABEL_28;
        }
      }

      sub_10025760C(buf, v4 + 64, v5, v4);
      v13 = v12;
      for (i = *(a1 + 80); i != v13; sub_1002575BC(i))
      {
        i -= 64;
      }

      *(a1 + 80) = v13;
      if (qword_1025D46B0 != -1)
      {
        sub_10195E914();
      }

      v15 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v16 = a2;
        if (*(a2 + 23) < 0)
        {
          v16 = *a2;
        }

        v17 = (*(a1 + 80) - *(a1 + 72)) >> 6;
        *buf = 136315394;
        v20 = v16;
        v21 = 2048;
        v22 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLMM,RouteHints,removeObserver,%s,size,%lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D46B0 != -1)
        {
          sub_10195E914();
        }

        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapRouteHintController::removeObserver(std::string)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }
  }

LABEL_28:
  std::mutex::unlock((a1 + 8));
}

void sub_1002575BC(uint64_t a1)
{
  sub_1001C9C60(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10025760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 16);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      *(a4 + 24) = *(v5 + 24);
      v8 = v5 + 32;
      sub_100866BE4(a4 + 32, v8);
      a4 += 64;
      v5 = v8 + 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1002576A8(uint64_t result, __int128 *a2, uint64_t a3, int *a4, void *a5)
{
  if (result)
  {
    v9 = result;
    if (!feof(result))
    {
      v10 = 0;
      while (1)
      {
        __ptr = 0;
        if (fread(&__ptr, 1uLL, 1uLL, v9) != 1)
        {
          break;
        }

        v11 = ftell(v9);
        if (__ptr == 67)
        {
          v12 = v11;
          LOBYTE(v56) = 67;
          if (fread(&v56 + 1, 1uLL, 4uLL, v9) != 4)
          {
            return 0;
          }

          *a3 = v56;
          v14 = v57;
          *(a3 + 4) = v57;
          v13.i32[0] = *a3;
          v15 = vmovl_u8(v13).u64[0];
          if (vuzp1_s8(v15, v15).u32[0] == 1447119939 && v14 == 76)
          {
            v18 = 0;
            *a4 = 5;
            do
            {
              *(a2 + v18) = *(a3 + v18);
              ++v18;
              v19 = *a4;
            }

            while (*a4 > v18);
            v20 = (104 - v19);
            if (fread(a2 + v19, 1uLL, v20, v9) == v20)
            {
              v21 = *a2;
              v22 = a2[2];
              *(a3 + 16) = a2[1];
              *(a3 + 32) = v22;
              *a3 = v21;
              v23 = a2[3];
              v24 = a2[4];
              v25 = a2[5];
              *(a3 + 96) = *(a2 + 12);
              *(a3 + 64) = v24;
              *(a3 + 80) = v25;
              *(a3 + 48) = v23;
              v26 = *a4 + v20;
              *a4 = v26;
              LODWORD(v23) = *a3;
              *&v23 = vmovl_u8(*&v23).u64[0];
              if (vuzp1_s8(*&v23, *&v23).u32[0] == 1447119939 && *(a3 + 4) == 76)
              {
                if (fread(a2 + v26, 1uLL, 1uLL, v9) == 1)
                {
                  v27 = *a4;
                  *(a3 + 104) = *(a2 + *a4);
                  *a4 = ++v27;
                  if (fread(a2 + v27, 1uLL, 1uLL, v9) == 1)
                  {
                    v28 = *a4;
                    *(a3 + 105) = *(a2 + *a4);
                    *a4 = ++v28;
                    if (fread(a2 + v28, 1uLL, 1uLL, v9) == 1)
                    {
                      v29 = *a4;
                      *(a3 + 106) = *(a2 + *a4);
                      *a4 = ++v29;
                      if (fread(a2 + v29, 1uLL, 1uLL, v9) == 1)
                      {
                        v30 = *a4;
                        *(a3 + 107) = *(a2 + *a4);
                        *a4 = ++v30;
                        if (fread(a2 + v30, 1uLL, 4uLL, v9) == 4)
                        {
                          v31 = *a4;
                          v32 = COERCE_FLOAT(bswap32(*(a2 + *a4)));
                          *(a3 + 108) = v32;
                          v33 = v31 + 4;
                          *a4 = v33;
                          if (fabsf(v32 + -0.1) <= 0.0001)
                          {
                            if (fread(a2 + v33, 1uLL, 8uLL, v9) == 8)
                            {
                              v45 = *a4;
                              *(a3 + 112) = bswap64(*(a2 + *a4));
                              v45 += 8;
                              *a4 = v45;
                              if (fread(a2 + v45, 1uLL, 4uLL, v9) == 4)
                              {
                                v46 = *a4;
                                *(a3 + 120) = bswap32(*(a2 + *a4));
                                v46 += 4;
                                *a4 = v46;
                                if (fread(a2 + v46, 1uLL, 4uLL, v9) == 4)
                                {
                                  v47 = *a4;
                                  *(a3 + 124) = bswap32(*(a2 + *a4));
                                  v47 += 4;
                                  *a4 = v47;
                                  if (fread(a2 + v47, 1uLL, 4uLL, v9) == 4)
                                  {
                                    *a5 = *a4;
                                    v48 = *a4;
                                    *(a3 + 128) = bswap32(*(a2 + *a4));
                                    *a4 = v48 + 4;
                                    return 1;
                                  }

                                  if (qword_1025D4650 != -1)
                                  {
                                    sub_10195D314();
                                  }

                                  v52 = qword_1025D4658;
                                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 0;
                                    _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - crc", buf, 2u);
                                  }

                                  result = sub_10000A100(121, 2);
                                  if (result)
                                  {
                                    sub_10195DE24();
                                    return 0;
                                  }
                                }

                                else
                                {
                                  if (qword_1025D4650 != -1)
                                  {
                                    sub_10195D314();
                                  }

                                  v51 = qword_1025D4658;
                                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 0;
                                    _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - data size", buf, 2u);
                                  }

                                  result = sub_10000A100(121, 2);
                                  if (result)
                                  {
                                    sub_10195DD48();
                                    return 0;
                                  }
                                }
                              }

                              else
                              {
                                if (qword_1025D4650 != -1)
                                {
                                  sub_10195D314();
                                }

                                v50 = qword_1025D4658;
                                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 0;
                                  _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - expiration age", buf, 2u);
                                }

                                result = sub_10000A100(121, 2);
                                if (result)
                                {
                                  sub_10195DC6C();
                                  return 0;
                                }
                              }
                            }

                            else
                            {
                              if (qword_1025D4650 != -1)
                              {
                                sub_10195D314();
                              }

                              v49 = qword_1025D4658;
                              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                              {
                                *buf = 0;
                                _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - timestamp", buf, 2u);
                              }

                              result = sub_10000A100(121, 2);
                              if (result)
                              {
                                sub_10195DB90();
                                return 0;
                              }
                            }
                          }

                          else
                          {
                            v34 = (a3 + 108);
                            if (qword_1025D4650 != -1)
                            {
                              sub_10195D314();
                            }

                            v35 = qword_1025D4658;
                            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                            {
                              v36 = *v34;
                              *buf = 134349056;
                              v55 = v36;
                              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "#Warning,DEM,coarse avl file is not 0.1 deg by 0.1 deg,spacing unexpected,%{public}.1f,re-download needed", buf, 0xCu);
                            }

                            result = sub_10000A100(121, 2);
                            if (result)
                            {
                              sub_10195DF00(v34);
                              return 0;
                            }
                          }
                        }

                        else
                        {
                          if (qword_1025D4650 != -1)
                          {
                            sub_10195D314();
                          }

                          v44 = qword_1025D4658;
                          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - binsize", buf, 2u);
                          }

                          result = sub_10000A100(121, 2);
                          if (result)
                          {
                            sub_10195DAB4();
                            return 0;
                          }
                        }
                      }

                      else
                      {
                        if (qword_1025D4650 != -1)
                        {
                          sub_10195D314();
                        }

                        v43 = qword_1025D4658;
                        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                        {
                          *buf = 0;
                          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - maxLat", buf, 2u);
                        }

                        result = sub_10000A100(121, 2);
                        if (result)
                        {
                          sub_10195D9D8();
                          return 0;
                        }
                      }
                    }

                    else
                    {
                      if (qword_1025D4650 != -1)
                      {
                        sub_10195D314();
                      }

                      v42 = qword_1025D4658;
                      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - minLat", buf, 2u);
                      }

                      result = sub_10000A100(121, 2);
                      if (result)
                      {
                        sub_10195D8FC();
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4650 != -1)
                    {
                      sub_10195D314();
                    }

                    v41 = qword_1025D4658;
                    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - headerLength", buf, 2u);
                    }

                    result = sub_10000A100(121, 2);
                    if (result)
                    {
                      sub_10195D820();
                      return 0;
                    }
                  }
                }

                else
                {
                  if (qword_1025D4650 != -1)
                  {
                    sub_10195D314();
                  }

                  v40 = qword_1025D4658;
                  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - version", buf, 2u);
                  }

                  result = sub_10000A100(121, 2);
                  if (result)
                  {
                    sub_10195D744();
                    return 0;
                  }
                }
              }

              else
              {
                if (qword_1025D4650 != -1)
                {
                  sub_10195D314();
                }

                v39 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - invalid header string", buf, 2u);
                }

                result = sub_10000A100(121, 2);
                if (result)
                {
                  sub_10195D668();
                  return 0;
                }
              }
            }

            else
            {
              if (qword_1025D4650 != -1)
              {
                sub_10195D314();
              }

              v38 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_INFO, "#Warning,DEM,Invalid CLDEM availability file - header string", buf, 2u);
              }

              result = sub_10000A100(121, 2);
              if (result)
              {
                sub_10195D58C();
                return 0;
              }
            }

            return result;
          }

          if (fseek(v9, v12, 0))
          {
            if (qword_1025D4650 != -1)
            {
              sub_10195D314();
            }

            v37 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "DEM,fseek returned non-zero", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_10195D4A4();
            }

            return 0;
          }
        }

        v16 = feof(v9);
        result = 0;
        if (!v16 && v10++ < 0x1FF)
        {
          continue;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002580C8(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v97 = off_1024DE5F8;
  v102 = *(a3 + 72);
  v103 = *(a3 + 88);
  v104 = *(a3 + 104);
  v105 = *(a3 + 120);
  v98 = *(a3 + 8);
  v99 = *(a3 + 24);
  v100 = *(a3 + 40);
  v101 = *(a3 + 56);
  (*(*a4 + 80))(a4, "predictedPreviousRawLocation", a1[52].u32[2]);
  (*(*a5 + 80))(a5, "predictedPreviousFusedLocation", a1[52].u32[2]);
  sub_10002F4A0(&v97, "FusedLoc,IDC Fusion a priori", a1[52].i32[2]);
  v15 = *(a5 + 40) * *(a5 + 40) * 0.5;
  if (v15 < 1.0)
  {
    v15 = 1.0;
  }

  v16 = 1.0 / v15;
  v17 = *(a4 + 40);
  v17.f64[1] = *(a3 + 40);
  __asm { FMOV            V2.2D, #0.5 }

  v23 = vmulq_f64(vmulq_f64(v17, v17), _Q2);
  __asm { FMOV            V2.2D, #1.0 }

  v25 = vdivq_f64(_Q2, vbslq_s8(vcgtq_f64(_Q2, v23), _Q2, v23));
  v26 = *&v25.i64[1];
  v27 = *&v25.i64[1] - *v25.i64;
  v82 = v25;
  if (*v25.i64 > *&v25.i64[1])
  {
    v27 = *v25.i64 - *&v25.i64[1];
  }

  v28 = 1.0 / (v16 + v27);
  *&v100 = sqrt(v28 + v28);
  *v12.i64 = *(a3 + 32) * 0.0174532925;
  v29 = *(a4 + 24);
  v29.f64[1] = *(a3 + 24);
  v80 = v29;
  *v25.i64 = *(a4 + 32) * 0.0174532925;
  v30 = *(a5 + 24);
  v31 = *(a5 + 32);
  v14.i64[0] = 0x400921FB54442D18;
  v95 = v14;
  if (fabs(*v12.i64) > 3.14159265)
  {
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v90 = vbslq_s8(vnegq_f64(v32), v14, v12);
    v86 = v25;
    v33 = fmod(*v12.i64 + *v90.i64, 6.28318531);
    v25 = v86;
    v12.i64[1] = v90.i64[1];
    v14 = v95;
    *v12.i64 = v33 - *v90.i64;
  }

  *v13.i64 = v31 * 0.0174532925;
  v91 = v12;
  if (fabs(*v25.i64) > *v14.i64)
  {
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v87 = *vbslq_s8(vnegq_f64(v34), v14, v25).i64;
    v83 = v13;
    v35 = fmod(*v25.i64 + v87, 6.28318531);
    v13 = v83;
    v14 = v95;
    *v25.i64 = v35 - v87;
  }

  v88 = v25;
  if (fabs(*v13.i64) > *v14.i64)
  {
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v84 = *vbslq_s8(vnegq_f64(v36), v14, v13).i64;
    v37 = fmod(*v13.i64 + v84, 6.28318531);
    v25 = v88;
    v14 = v95;
    *v13.i64 = v37 - v84;
  }

  v38 = *v91.i64;
  v39 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v40 = fabs(*v13.i64);
  v85 = v13;
  if (vabdd_f64(*v91.i64, *v13.i64) > *v14.i64)
  {
    v77 = v39;
    if (fabs(*v91.i64) > *v14.i64)
    {
      v41.f64[0] = NAN;
      v41.f64[1] = NAN;
      v75 = *vbslq_s8(vnegq_f64(v41), v14, v91).i64;
      v42 = fmod(*v91.i64 + v75, 6.28318531);
      v13 = v85;
      v25 = v88;
      v14 = v95;
      v38 = v42 - v75;
    }

    v43 = *v13.i64;
    if (v40 > *v14.i64)
    {
      v44.f64[0] = NAN;
      v44.f64[1] = NAN;
      v76 = *vbslq_s8(vnegq_f64(v44), v14, v13).i64;
      v92 = v38;
      v45 = fmod(*v13.i64 + v76, 6.28318531);
      v13 = v85;
      v25 = v88;
      v38 = v92;
      v14 = v95;
      v43 = v45 - v76;
    }

    if (vabdd_f64(v38, v43) <= *v14.i64)
    {
      v46 = v38 - v43;
    }

    else
    {
      v46 = v38 - v43 + dbl_101CFC5F0[v38 - v43 > *v14.i64];
    }

    v38 = *v13.i64 + v46;
    v39 = v77;
  }

  v47 = vmulq_f64(v80, v39);
  if (vabdd_f64(*v25.i64, *v13.i64) > *v14.i64)
  {
    v93 = v38;
    v81 = v47;
    if (fabs(*v25.i64) > *v14.i64)
    {
      v48.f64[0] = NAN;
      v48.f64[1] = NAN;
      v78 = *vbslq_s8(vnegq_f64(v48), v14, v25).i64;
      v49 = fmod(*v25.i64 + v78, 6.28318531);
      v13 = v85;
      v14 = v95;
      *v25.i64 = v49 - v78;
    }

    v50 = *v13.i64;
    if (v40 > *v14.i64)
    {
      v51.f64[0] = NAN;
      v51.f64[1] = NAN;
      v79 = *vbslq_s8(vnegq_f64(v51), v14, v13).i64;
      v89 = v25.i64[0];
      v52 = fmod(*v13.i64 + v79, 6.28318531);
      v13.i64[0] = v85.i64[0];
      v25.i64[0] = v89;
      v14 = v95;
      v50 = v52 - v79;
    }

    if (vabdd_f64(*v25.i64, v50) <= *v14.i64)
    {
      v53 = *v25.i64 - v50;
    }

    else
    {
      v53 = *v25.i64 - v50 + dbl_101CFC5F0[*v25.i64 - v50 > *v14.i64];
    }

    *v25.i64 = *v13.i64 + v53;
    v38 = v93;
    v47 = v81;
  }

  v60 = vmulq_f64(v82, v47);
  v54 = v26 * v38;
  v55 = v82.f64[0] * *v25.i64;
  v56 = v16 * (v30 * 0.0174532925);
  v57 = v16 * *v13.i64;
  v58 = *&v60.i64[1] - *v60.i64;
  v59 = v54 - v55;
  *v60.i64 = *v60.i64 - *&v60.i64[1];
  v61 = v55 - v54;
  if (v82.f64[0] <= v26)
  {
    *v60.i64 = v58;
    v61 = v59;
  }

  v62 = v57 + v61;
  v47.f64[0] = v28 * (v56 + *v60.i64);
  if (fabs(v47.f64[0]) > *v14.i64)
  {
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v94 = *vbslq_s8(vnegq_f64(v63), v14, v47).i64;
    v47.f64[0] = fmod(v47.f64[0] + v94, 6.28318531) - v94;
  }

  *v60.i64 = v28 * v62;
  if (v47.f64[0] >= 1.57079633)
  {
    v64 = v95;
    v47.f64[0] = *v95.i64 - v47.f64[0];
  }

  else
  {
    v64 = v95;
    if (v47.f64[0] < -1.57079633)
    {
      v47.f64[0] = -3.14159265 - v47.f64[0];
    }
  }

  *&v99 = v47.f64[0] * 57.2957795;
  if (fabs(*v60.i64) > *v64.i64)
  {
    v65.f64[0] = NAN;
    v65.f64[1] = NAN;
    v96 = *vbslq_s8(vnegq_f64(v65), v64, v60).i64;
    *v60.i64 = fmod(*v60.i64 + v96, 6.28318531) - v96;
  }

  *(&v99 + 1) = *v60.i64 * 57.2957795;
  if (a6 <= 2.0 && ((*(*a3 + 48))(a3) & 1) == 0)
  {
    if (*(&v102 + 1) <= 0.0)
    {
      v102 = *(a5 + 72);
    }

    if (*(&v103 + 1) <= 0.0)
    {
      v103 = *(a5 + 88);
    }
  }

  v66 = *&v100;
  if (*&v100 < 2.0)
  {
    v66 = 2.0;
  }

  *&v100 = v66;
  sub_10002F4A0(&v97, "FusedLoc,IDC Fusion a posteriori", a1[52].i32[2]);
  v67 = *(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL);
  v68 = v98;
  v69 = v99;
  v70 = v100;
  *(v67 + 72) = v101;
  *(v67 + 56) = v70;
  *(v67 + 40) = v69;
  *(v67 + 24) = v68;
  v71 = v102;
  v72 = v103;
  v73 = v104;
  *(v67 + 136) = v105;
  *(v67 + 120) = v73;
  *(v67 + 104) = v72;
  *(v67 + 88) = v71;
  *(*(a1[1].i64[1] + 8 * ((a1[3].i64[0] + a2) / 0x1AuLL)) + 152 * ((a1[3].i64[0] + a2) % 0x1AuLL) + 148) = 1;
  *a1 = vextq_s8(v98, v98, 8uLL);
  return 1;
}

uint64_t sub_10025873C(char *a1, int a2, int *a3)
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
                sub_1018F6538();
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
                  sub_1018F6538();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLTimeManager_Type::Notification, CLTimeManager_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLTimeManager_Type::Notification, NotificationData_T = CLTimeManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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