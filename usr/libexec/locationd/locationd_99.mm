uint64_t sub_10072A0D0(double *a1, int8x16_t *a2)
{
  if (*a1 <= 0.0 || vabdd_f64(sub_1000081AC(), *a1) >= 300.0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1 + 2;
      if (*(a1 + 39) < 0)
      {
        v6 = *v6;
      }

      *buf = 136380675;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,Polygon,%{private}s,verified", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191FA8C(a1);
    }

    *a1 = sub_1000081AC();
    *buf = vextq_s8(*a2, *a2, 8uLL);
    v4 = sub_100730340(buf, (a1 + 5)) >= 0;
    *(a1 + 8) = v4;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  return v4 & 1;
}

uint64_t sub_10072A224(uint64_t a1, int a2, uint64_t a3)
{
  v59 = 0;
  __str = 0;
  v60 = 0;
  v4 = sub_10072A8A0(a3, &__str);
  if (v4)
  {
    v5 = 0;
    memset(v42, 0, 24);
    do
    {
      v6 = &v42[v5];
      v6[1].__r_.__value_.__s.__data_[0] = 0;
      v6[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
      v6[1].__r_.__value_.__s.__data_[16] = 0;
      *&v6[2].__r_.__value_.__l.__data_ = 0uLL;
      *&v6[2].__r_.__value_.__r.__words[2] = 0uLL;
      *&v6[3].__r_.__value_.__r.__words[1] = 0uLL;
      *&v6[4].__r_.__value_.__l.__data_ = 0uLL;
      v5 += 4;
      v6[4].__r_.__value_.__r.__words[2] = 0;
    }

    while (v5 != 16);
    v44 = 16777472;
    v45 = 1;
    v46 = 0;
    v48 = xmmword_101C8BC90;
    v49 = xmmword_101C8BCA0;
    v50 = 400;
    *&v7 = -1;
    *(&v7 + 1) = -1;
    v51 = v7;
    v52 = v7;
    v53 = v7;
    v54 = v7;
    v55 = v7;
    v56 = -1;
    v57 = xmmword_101C8BCB0;
    v47 = xmmword_101C8BCC0;
    if (sub_10001CF04())
    {
      DWORD1(v47) = 4233600;
    }

    v39 = v4;
    DWORD2(v51) = 125000;
    DWORD1(v52) = 125000;
    LODWORD(v53) = 125000;
    HIDWORD(v53) = 15000;
    DWORD2(v54) = 25000;
    DWORD1(v55) = -1;
    v56 = -1;
    std::string::operator=(v42, __str);
    v40 = a2;
    v8 = __str;
    if (0xAAAAAAAAAAAAAAABLL * ((v59 - __str) >> 3) >= 2)
    {
      v9 = &v42[4 * a2];
      v10 = 1;
      v11 = 1;
      do
      {
        v12 = sub_100727A34(&v8[v11].__r_.__value_.__l.__data_);
        size = v9[2].__r_.__value_.__l.__size_;
        v13 = v9[2].__r_.__value_.__r.__words[2];
        if (size >= v13)
        {
          data = v9[2].__r_.__value_.__l.__data_;
          v17 = size - data;
          v18 = (size - data) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v20 = v13 - data;
          if (v20 >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
          v22 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v22 = v19;
          }

          if (v22)
          {
            sub_1000B85D0(&v9[2], v22);
          }

          v23 = (size - data) >> 2;
          v24 = (4 * v18);
          v25 = (4 * v18 - 4 * v23);
          *v24 = v12;
          v15 = v24 + 1;
          memcpy(v25, data, v17);
          v26 = v9[2].__r_.__value_.__l.__data_;
          v9[2].__r_.__value_.__r.__words[0] = v25;
          v9[2].__r_.__value_.__l.__size_ = v15;
          v9[2].__r_.__value_.__r.__words[2] = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *size = v12;
          v15 = size + 4;
        }

        v9[2].__r_.__value_.__l.__size_ = v15;
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v27 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          v28 = &__str[v11];
          if (SHIBYTE(__str[v11].__r_.__value_.__r.__words[2]) < 0)
          {
            v28 = v28->__r_.__value_.__r.__words[0];
          }

          v29 = *(v9[2].__r_.__value_.__l.__size_ - 4);
          *buf = 136446466;
          *&buf[4] = v28;
          v65 = 1026;
          v66 = v29;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,DefaultsWrite,signalEnvironment,%{public}s,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v30 = &__str[v11];
          if (SHIBYTE(__str[v11].__r_.__value_.__r.__words[2]) < 0)
          {
            v30 = v30->__r_.__value_.__r.__words[0];
          }

          v31 = *(v9[2].__r_.__value_.__l.__size_ - 4);
          *v61 = 136446466;
          *&v61[4] = v30;
          v62 = 1026;
          v63 = v31;
          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingDynamics::updateCountrySettingUsingDefaultWriteSEString(const MatcherOperatingDynamicsEnum, const std::string &)", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        ++v10;
        v8 = __str;
        ++v11;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v59 - __str) >> 3) > v10);
    }

    if (sub_100192868(a1 + 96, &v42[0].__r_.__value_.__l.__data_))
    {
      *v61 = v42;
      *(sub_10022DD34(a1 + 96, &v42[0].__r_.__value_.__l.__data_) + 96 * v40 + 80) = 1;
      *v61 = v42;
      v33 = sub_10022DD34(a1 + 96, &v42[0].__r_.__value_.__l.__data_);
      if ((v33 + 80) != v43)
      {
        sub_100731D80((v33 + 80 + 96 * v40 + 24), *(&v43[6 * v40 + 1] + 1), *&v43[6 * v40 + 2], (*&v43[6 * v40 + 2] - *(&v43[6 * v40 + 1] + 1)) >> 2);
      }
    }

    else
    {
      sub_100731EAC(buf, v42, v42);
      sub_100732B8C(a1 + 96, buf);
      for (i = 0; i != -384; i -= 96)
      {
        *v61 = &v70[i + 48];
        sub_100731CAC(v61);
        *v61 = &v70[i + 24];
        sub_100731CAC(v61);
        v35 = *&v70[i];
        if (v35)
        {
          *&v70[i + 8] = v35;
          operator delete(v35);
        }
      }

      if (v69 < 0)
      {
        operator delete(__p);
      }

      if (v67 < 0)
      {
        operator delete(*buf);
      }
    }

    for (j = 0; j != -24; j -= 6)
    {
      *buf = &v43[j + 22] + 8;
      sub_100731CAC(buf);
      *buf = &v43[j + 21];
      sub_100731CAC(buf);
      v37 = *(&v43[j + 19] + 1);
      if (v37)
      {
        *&v43[j + 20] = v37;
        operator delete(v37);
      }
    }

    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42[0].__r_.__value_.__l.__data_);
    }

    v4 = v39;
  }

  *buf = &__str;
  sub_1001E56E8(buf);
  return v4;
}

void sub_10072A818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(__p, a7);
  sub_1007323B0(__p);
  STACK[0x2B0] = &STACK[0x270];
  sub_1001E56E8(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A8A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  sub_10003848C(v20);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  sub_100038730(&v21, v6, v7);
  sub_1001E573C(a2);
  while ((*(&v23[0].__locale_ + *(v20[0] - 3)) & 5) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
    v8 = sub_100485630(v20, __p, 0x2Cu);
    v9 = *(v8 + *(*v8 - 24) + 32) & 5;
    if (!v9)
    {
      sub_1003CDE18(a2, __p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        break;
      }
    }

    else if (v9)
    {
      break;
    }
  }

  v10 = *a2;
  if (*(a2 + 8) == *a2)
  {
    goto LABEL_31;
  }

  if (*(v10 + 23) < 0)
  {
    sub_100007244(__p, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v19 = v10[2];
    *__p = v11;
  }

  v13 = HIBYTE(v19);
  if (SHIBYTE(v19) < 0)
  {
    v13 = __p[1];
  }

  if (v13 == 2)
  {
LABEL_26:
    v12 = 1;
    if (SHIBYTE(v19) < 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    if (SHIBYTE(v19) == 3)
    {
      v14 = __p;
      goto LABEL_33;
    }

LABEL_31:
    v12 = 0;
    goto LABEL_41;
  }

  v14 = __p[0];
  if (__p[1] != 3)
  {
    v12 = 0;
    goto LABEL_40;
  }

LABEL_33:
  if (*v14 == 20306 && *(v14 + 2) == 87)
  {
    goto LABEL_26;
  }

  v12 = 0;
  if (SHIBYTE(v19) < 0)
  {
LABEL_38:
    v14 = __p[0];
LABEL_40:
    operator delete(v14);
  }

LABEL_41:
  v21 = v16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v12;
}

void sub_10072ABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10072ABF0(uint64_t a1, int a2, uint64_t a3)
{
  v67 = 0;
  __str = 0;
  v68 = 0;
  v5 = sub_10072A8A0(a3, &__str);
  if (v5)
  {
    v6 = 0;
    memset(v50, 0, 24);
    do
    {
      v7 = &v50[v6];
      v7[1].__r_.__value_.__s.__data_[0] = 0;
      v7[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
      v7[1].__r_.__value_.__s.__data_[16] = 0;
      *&v7[2].__r_.__value_.__l.__data_ = 0uLL;
      *&v7[2].__r_.__value_.__r.__words[2] = 0uLL;
      *&v7[3].__r_.__value_.__r.__words[1] = 0uLL;
      *&v7[4].__r_.__value_.__l.__data_ = 0uLL;
      v6 += 4;
      v7[4].__r_.__value_.__r.__words[2] = 0;
    }

    while (v6 != 16);
    v52 = 16777472;
    v53 = 1;
    v54 = 0;
    v56 = xmmword_101C8BC90;
    v57 = xmmword_101C8BCA0;
    v58 = 400;
    *&v8 = -1;
    *(&v8 + 1) = -1;
    v59 = v8;
    v60 = v8;
    v61 = v8;
    v62 = v8;
    v63 = v8;
    v64 = -1;
    v65 = xmmword_101C8BCB0;
    v55 = xmmword_101C8BCC0;
    v44 = a2;
    v45 = a1;
    if (sub_10001CF04())
    {
      DWORD1(v55) = 4233600;
    }

    DWORD2(v59) = 125000;
    DWORD1(v60) = 125000;
    LODWORD(v61) = 125000;
    HIDWORD(v61) = 15000;
    DWORD2(v62) = 25000;
    DWORD1(v63) = -1;
    v64 = -1;
    std::string::operator=(v50, __str);
    __src = 0;
    v48 = 0;
    v49 = 0;
    memset(&v46, 0, sizeof(v46));
    v9 = __str;
    if (v67 != __str)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v67 - __str) >> 3);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      do
      {
        if (v11)
        {
          if (v12 <= v11 + 1)
          {
            break;
          }

          v14 = &v9[v10];
          if (SHIBYTE(v14->__r_.__value_.__r.__words[2]) < 0)
          {
            v14 = v14->__r_.__value_.__r.__words[0];
          }

          v15 = v11 + 1;
          v16 = atof(v14);
          v17 = &v9[v11 + 1];
          if (SHIBYTE(v17->__r_.__value_.__r.__words[2]) < 0)
          {
            v17 = v17->__r_.__value_.__r.__words[0];
          }

          v18 = atof(v17);
          v19 = v18;
          v20 = v48;
          if (v48 >= v49)
          {
            v22 = __src;
            v23 = v48 - __src;
            v24 = (v48 - __src) >> 4;
            v25 = v24 + 1;
            if ((v24 + 1) >> 60)
            {
              sub_10028C64C();
            }

            v26 = v49 - __src;
            if ((v49 - __src) >> 3 > v25)
            {
              v25 = v26 >> 3;
            }

            v27 = v26 >= 0x7FFFFFFFFFFFFFF0;
            v28 = 0xFFFFFFFFFFFFFFFLL;
            if (!v27)
            {
              v28 = v25;
            }

            if (v28)
            {
              sub_1003E5FE8(&__src, v28);
            }

            v29 = (v48 - __src) >> 4;
            v30 = 16 * v24;
            *v30 = v16;
            *(v30 + 8) = v18;
            v21 = 16 * v24 + 16;
            v31 = (16 * v24 - 16 * v29);
            memcpy((v30 - 16 * v29), v22, v23);
            v32 = __src;
            __src = v31;
            v48 = v21;
            v49 = 0;
            if (v32)
            {
              operator delete(v32);
            }

            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          }

          else
          {
            *v48 = v16;
            *(v20 + 1) = v18;
            v21 = (v20 + 16);
          }

          v48 = v21;
          if (p_info[214] != -1)
          {
            sub_10191F1DC();
          }

          v33 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            v34 = &v46;
            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v34 = v46.__r_.__value_.__r.__words[0];
            }

            *buf = 136446979;
            *&buf[4] = v34;
            v77 = 1026;
            v78 = v15 / 2;
            v79 = 2053;
            *v80 = v16;
            *&v80[8] = 2053;
            *&v80[10] = v19;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,DefaultsWrite,polygon,%{public}s,coordinate%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            v35 = &v46;
            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v35 = v46.__r_.__value_.__r.__words[0];
            }

            *v70 = 136446979;
            *&v70[4] = v35;
            v71 = 1026;
            *v72 = v15 / 2;
            *&v72[4] = 2053;
            *&v72[6] = v16;
            *&v72[14] = 2053;
            *&v72[16] = v19;
            v36 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingDynamics::updateCountrySettingUsingDefaultWritePolygonString(const MatcherOperatingDynamicsEnum, const std::string &)", "%s\n", v36);
            if (v36 != buf)
            {
              free(v36);
            }
          }

          v11 += 2;
        }

        else
        {
          std::string::operator=(&v46, &v9[v10]);
          v11 = 1;
        }

        v10 = v11;
        v9 = __str;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v67 - __str) >> 3);
      }

      while (v12 > v11);
    }

    *v70 = 0xBFF0000000000000;
    v70[8] = 0;
    memset(&v72[2], 0, 32);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    sub_1007286F0(v70, &v46, &__src);
    v37 = &v51[6 * v44];
    sub_1007289F4((v37 + 6), v70);
    if (sub_100192868(v45 + 96, &v50[0].__r_.__value_.__l.__data_))
    {
      v69 = v50;
      *(sub_10022DD34(v45 + 96, &v50[0].__r_.__value_.__l.__data_) + 96 * v44 + 80) = 1;
      v69 = v50;
      v38 = sub_10022DD34(v45 + 96, &v50[0].__r_.__value_.__l.__data_);
      if ((v38 + 80) != v51)
      {
        sub_100732438((v38 + 80 + 96 * v44 + 48), v37[6], v37[7], 0x2E8BA2E8BA2E8BA3 * (v37[7] - v37[6]));
      }
    }

    else
    {
      sub_100731EAC(buf, v50, v50);
      sub_100732B8C(v45 + 96, buf);
      for (i = 0; i != -384; i -= 96)
      {
        v69 = &v82[i + 48];
        sub_100731CAC(&v69);
        v69 = &v82[i + 24];
        sub_100731CAC(&v69);
        v40 = *&v82[i];
        if (v40)
        {
          *&v82[i + 8] = v40;
          operator delete(v40);
        }
      }

      if (v81 < 0)
      {
        operator delete(*&v80[4]);
      }

      if ((v80[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    *buf = &v74;
    sub_1002EC52C(buf);
    if (*&v72[26])
    {
      *&v73 = *&v72[26];
      operator delete(*&v72[26]);
    }

    v5 = v5;
    if ((v72[25] & 0x80000000) != 0)
    {
      operator delete(*&v72[2]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (__src)
    {
      v48 = __src;
      operator delete(__src);
    }

    for (j = 0; j != -24; j -= 6)
    {
      *buf = &v51[j + 22] + 8;
      sub_100731CAC(buf);
      *buf = &v51[j + 21];
      sub_100731CAC(buf);
      v42 = *(&v51[j + 19] + 1);
      if (v42)
      {
        *&v51[j + 20] = v42;
        operator delete(v42);
      }
    }

    if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50[0].__r_.__value_.__l.__data_);
    }
  }

  *buf = &__str;
  sub_1001E56E8(buf);
  return v5;
}

void sub_10072B2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  sub_1007323B0(va);
  STACK[0x330] = &STACK[0x2A8];
  sub_1001E56E8(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_10072B39C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 <= 6)
  {
    v10 = (a1 + 12 * a3 + 64);
    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    if ((sub_10005BBE4(a2, v11, v10) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F0D8();
      }

      v12 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v19 = 67240192;
        v20 = a3;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get enabled road tile radius setting for type,%{public}d", &v19, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101920638(a3);
      }
    }

    if (*(a5 + 23) >= 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = *a5;
    }

    if ((sub_10005BBE4(a2, v13, v10 + 1) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v14 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v19 = 67240192;
        v20 = a3;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get enabled building tile radius setting for type,%{public}d", &v19, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101920720(a3);
      }
    }

    if (*(a6 + 23) >= 0)
    {
      v15 = a6;
    }

    else
    {
      v15 = *a6;
    }

    if ((sub_10005BBE4(a2, v15, v10 + 2) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v16 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v19 = 67240192;
        v20 = a3;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get enabled running track tile radius setting for type,%{public}d", &v19, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101920808(a3);
      }
    }

    if (v10[2] > 1000000)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v17 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v10[2];
        v19 = 67240704;
        v20 = v18;
        v21 = 1026;
        v22 = 1000000;
        v23 = 1026;
        v24 = a3;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning,TrackRun,Track tile download radius,%{public}d,exceeds cap,%{public}d,for type,%{public}d", &v19, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019208F0(v10 + 2, a3);
      }

      v10[2] = 1000000;
    }

    if (*v10 > 125000)
    {
      *v10 = 125000;
    }

    if (v10[1] > 125000)
    {
      v10[1] = 125000;
    }
  }
}

uint64_t sub_10072B6D8(BOOL *a1, uint64_t a2)
{
  if (byte_10265942F < 0)
  {
    sub_100007244(__p, xmmword_102659418, *(&xmmword_102659418 + 1));
  }

  else
  {
    *__p = xmmword_102659418;
    v133 = unk_102659428;
  }

  *a1 = sub_10072C9B4(a2, __p, *a1);
  if (SHIBYTE(v133) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_10265951F < 0)
  {
    sub_100007244(__dst, xmmword_102659508, *(&xmmword_102659508 + 1));
  }

  else
  {
    *__dst = xmmword_102659508;
    v131 = unk_102659518;
  }

  *(a1 + 4) = sub_10072CBA0(a2, __dst, 1209600, 43200, 15552000);
  if (SHIBYTE(v131) < 0)
  {
    operator delete(__dst[0]);
  }

  if (byte_102659537 < 0)
  {
    sub_100007244(v128, xmmword_102659520, *(&xmmword_102659520 + 1));
  }

  else
  {
    *v128 = xmmword_102659520;
    v129 = unk_102659530;
  }

  *(a1 + 5) = sub_10072CBA0(a2, v128, 1209600, 43200, 15552000);
  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128[0]);
  }

  if (byte_10265954F < 0)
  {
    sub_100007244(v126, xmmword_102659538, *(&xmmword_102659538 + 1));
  }

  else
  {
    *v126 = xmmword_102659538;
    v127 = unk_102659548;
  }

  *(a1 + 6) = sub_10072CBA0(a2, v126, 75, 25, 100);
  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126[0]);
  }

  if (byte_102659567 < 0)
  {
    sub_100007244(v124, xmmword_102659550, *(&xmmword_102659550 + 1));
  }

  else
  {
    *v124 = xmmword_102659550;
    v125 = unk_102659560;
  }

  *(a1 + 7) = sub_10072CBA0(a2, v124, 50, 25, 100);
  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124[0]);
  }

  if (byte_10265957F < 0)
  {
    sub_100007244(v122, xmmword_102659568, *(&xmmword_102659568 + 1));
  }

  else
  {
    *v122 = xmmword_102659568;
    v123 = unk_102659578;
  }

  *(a1 + 8) = sub_10072CBA0(a2, v122, 301, 301, 21600);
  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122[0]);
  }

  if (byte_102659597 < 0)
  {
    sub_100007244(v120, xmmword_102659580, *(&xmmword_102659580 + 1));
  }

  else
  {
    *v120 = xmmword_102659580;
    v121 = unk_102659590;
  }

  *(a1 + 9) = sub_10072CBA0(a2, v120, 150000, 1000, 3000000);
  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120[0]);
  }

  if (byte_1026595AF < 0)
  {
    sub_100007244(v118, xmmword_102659598, *(&xmmword_102659598 + 1));
  }

  else
  {
    *v118 = xmmword_102659598;
    v119 = unk_1026595A8;
  }

  *(a1 + 10) = sub_10072CBA0(a2, v118, 10000, 10, 300000);
  if (SHIBYTE(v119) < 0)
  {
    operator delete(v118[0]);
  }

  if (byte_1026595C7 < 0)
  {
    sub_100007244(v116, xmmword_1026595B0, *(&xmmword_1026595B0 + 1));
  }

  else
  {
    *v116 = xmmword_1026595B0;
    v117 = unk_1026595C0;
  }

  *(a1 + 11) = sub_10072CBA0(a2, v116, 150, 2, 900);
  if (SHIBYTE(v117) < 0)
  {
    operator delete(v116[0]);
  }

  if (byte_10265975F < 0)
  {
    sub_100007244(v114, xmmword_102659748, *(&xmmword_102659748 + 1));
  }

  else
  {
    *v114 = xmmword_102659748;
    v115 = unk_102659758;
  }

  *(a1 + 3) = sub_10072CBA0(a2, v114, 21600, 1, 86400);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v114[0]);
  }

  if (byte_102659777 < 0)
  {
    sub_100007244(v112, xmmword_102659760, *(&xmmword_102659760 + 1));
  }

  else
  {
    *v112 = xmmword_102659760;
    v113 = unk_102659770;
  }

  *(a1 + 12) = sub_10072CBA0(a2, v112, 10, 10, 2000);
  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112[0]);
  }

  if (byte_10265978F < 0)
  {
    sub_100007244(v110, xmmword_102659778, *(&xmmword_102659778 + 1));
  }

  else
  {
    *v110 = xmmword_102659778;
    v111 = unk_102659788;
  }

  *(a1 + 13) = sub_10072CBA0(a2, v110, 100, 10, 2000);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(v110[0]);
  }

  if (byte_1026597A7 < 0)
  {
    sub_100007244(v108, xmmword_102659790, *(&xmmword_102659790 + 1));
  }

  else
  {
    *v108 = xmmword_102659790;
    v109 = unk_1026597A0;
  }

  *(a1 + 14) = sub_10072CBA0(a2, v108, 4, 10, 2000);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(v108[0]);
  }

  if (byte_1026597BF < 0)
  {
    sub_100007244(v106, xmmword_1026597A8, *(&xmmword_1026597A8 + 1));
  }

  else
  {
    *v106 = xmmword_1026597A8;
    v107 = unk_1026597B8;
  }

  *(a1 + 15) = sub_10072CBA0(a2, v106, 400, 10, 2000);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(v106[0]);
  }

  if (byte_10265981F < 0)
  {
    sub_100007244(v104, xmmword_102659808, *(&xmmword_102659808 + 1));
  }

  else
  {
    *v104 = xmmword_102659808;
    v105 = unk_102659818;
  }

  *(a1 + 39) = sub_10072CBA0(a2, v104, 100000, 25000, 1000000);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(v104[0]);
  }

  if (byte_102659837 < 0)
  {
    sub_100007244(v102, xmmword_102659820, *(&xmmword_102659820 + 1));
  }

  else
  {
    *v102 = xmmword_102659820;
    v103 = unk_102659830;
  }

  *(a1 + 40) = sub_10072CBA0(a2, v102, 21, 0, 120);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[0]);
  }

  if (byte_1026595DF < 0)
  {
    sub_100007244(v100, xmmword_1026595C8, *(&xmmword_1026595C8 + 1));
  }

  else
  {
    *v100 = xmmword_1026595C8;
    v101 = unk_1026595D8;
  }

  a1[1] = sub_10072C9B4(a2, v100, a1[1]);
  if (SHIBYTE(v101) < 0)
  {
    operator delete(v100[0]);
  }

  if (byte_1026595F7 < 0)
  {
    sub_100007244(v98, xmmword_1026595E0, *(&xmmword_1026595E0 + 1));
  }

  else
  {
    *v98 = xmmword_1026595E0;
    v99 = unk_1026595F0;
  }

  a1[2] = sub_10072C9B4(a2, v98, a1[2]);
  if (SHIBYTE(v99) < 0)
  {
    operator delete(v98[0]);
  }

  if (byte_1026596FF < 0)
  {
    sub_100007244(v96, xmmword_1026596E8, *(&xmmword_1026596E8 + 1));
  }

  else
  {
    *v96 = xmmword_1026596E8;
    v97 = unk_1026596F8;
  }

  a1[3] = sub_10072C9B4(a2, v96, a1[3]);
  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96[0]);
  }

  strcpy(v95, "PrecachngAllowNPLOI");
  HIDWORD(v95[2]) = unk_101C8BD3C;
  a1[4] = sub_10072C9B4(a2, v95, a1[4]);
  if (SHIBYTE(v95[2]) < 0)
  {
    operator delete(v95[0]);
  }

  v94 = a1[6];
  a1[5] = 0;
  if (byte_10265960F >= 0)
  {
    v4 = &qword_1026595F8;
  }

  else
  {
    v4 = qword_1026595F8;
  }

  if (sub_10001CB4C(a2, v4, &v94))
  {
    a1[6] = v94;
    a1[5] = 1;
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      if (byte_10265960F >= 0)
      {
        v6 = &qword_1026595F8;
      }

      else
      {
        v6 = qword_1026595F8;
      }

      *buf = 136446466;
      *v225 = v6;
      *&v225[8] = 1026;
      *v226 = v94;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920A00();
    }
  }

  v94 = a1[8];
  a1[7] = 0;
  if (byte_10265966F >= 0)
  {
    v7 = &qword_102659658;
  }

  else
  {
    v7 = qword_102659658;
  }

  if (sub_10001CB4C(a2, v7, &v94))
  {
    a1[8] = v94;
    a1[7] = 1;
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      if (byte_10265966F >= 0)
      {
        v9 = &qword_102659658;
      }

      else
      {
        v9 = qword_102659658;
      }

      *buf = 136446466;
      *v225 = v9;
      *&v225[8] = 1026;
      *v226 = v94;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920B18();
    }
  }

  sub_10072B39C(a1, a2, 0, byte_102659430, byte_102659448, byte_102659460);
  sub_10072B39C(a1, a2, 1, byte_102659478, byte_102659490, byte_1026594A8);
  sub_10072B39C(a1, a2, 2, byte_1026594C0, byte_1026594D8, byte_1026594F0);
  *(a1 + 100) = vdup_n_s32(0x1770u);
  sub_10072B39C(a1, a2, 3, byte_1026597C0, byte_1026597D8, byte_1026597F0);
  *(a1 + 14) = 107374182450000;
  sub_10072B39C(a1, a2, 4, byte_102659700, byte_102659718, byte_102659730);
  *(a1 + 124) = vdup_n_s32(0x186A0u);
  sub_10072B39C(a1, a2, 5, byte_102659610, byte_102659628, byte_102659640);
  *(a1 + 17) = -4294917296;
  sub_10072B39C(a1, a2, 6, byte_102659670, byte_102659688, byte_1026596A0);
  if (byte_1026596CF < 0)
  {
    sub_100007244(v92, xmmword_1026596B8, *(&xmmword_1026596B8 + 1));
  }

  else
  {
    *v92 = xmmword_1026596B8;
    v93 = unk_1026596C8;
  }

  *(a1 + 37) = sub_10072CBA0(a2, v92, 70, 1, 500);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92[0]);
  }

  if (byte_1026596E7 < 0)
  {
    sub_100007244(v90, xmmword_1026596D0, *(&xmmword_1026596D0 + 1));
  }

  else
  {
    *v90 = xmmword_1026596D0;
    v91 = unk_1026596E0;
  }

  *(a1 + 38) = sub_10072CBA0(a2, v90, 86400, 43200, 17280000);
  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90[0]);
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10191F1DC();
  }

  v10 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    v13 = *(a1 + 7);
    v14 = *(a1 + 8);
    v15 = *(a1 + 9);
    v16 = *(a1 + 10);
    v17 = a1[1];
    v18 = a1[3];
    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
    v21 = a1[4];
    v22 = *(a1 + 13);
    v23 = *(a1 + 14);
    *v225 = *a1;
    v24 = a1[8];
    *&v225[6] = v19;
    v25 = *(a1 + 38);
    *&v226[2] = v11;
    v26 = *(a1 + 40);
    v228 = v12;
    v230 = v13;
    v28 = *(a1 + 15);
    v27 = *(a1 + 16);
    v232 = v14;
    v236 = v16;
    v30 = *(a1 + 17);
    v29 = *(a1 + 18);
    v240 = v17;
    v244 = v18;
    v31 = *(a1 + 19);
    v32 = *(a1 + 20);
    v248 = v21;
    v252 = v22;
    v33 = *(a1 + 21);
    v34 = *(a1 + 22);
    v256 = v28;
    v260 = v24;
    v35 = *(a1 + 23);
    v36 = *(a1 + 24);
    v264 = v25;
    v268 = v26;
    v37 = *(a1 + 25);
    v38 = *(a1 + 26);
    v272 = v30;
    v276 = v31;
    v40 = *(a1 + 27);
    v39 = *(a1 + 28);
    v280 = v33;
    v284 = v35;
    v41 = *(a1 + 29);
    v42 = *(a1 + 30);
    v288 = v37;
    v292 = v40;
    v44 = *(a1 + 31);
    v43 = *(a1 + 32);
    v296 = v41;
    v300 = v44;
    v45 = *(a1 + 34);
    v304 = *(a1 + 33);
    v46 = *(a1 + 35);
    v47 = *(a1 + 36);
    v234 = v15;
    v308 = v46;
    v48 = *(a1 + 12);
    v238 = *(a1 + 11);
    v242 = a1[2];
    v246 = v20;
    v250 = v48;
    v254 = v23;
    v258 = a1[6];
    v262 = *(a1 + 37);
    v266 = *(a1 + 39);
    v270 = v27;
    v274 = v29;
    v278 = v32;
    v282 = v34;
    v286 = v36;
    v290 = v38;
    v294 = v39;
    v298 = v42;
    v302 = v43;
    v306 = v45;
    *&v225[4] = 1026;
    *v226 = 1026;
    v227 = 1026;
    v229 = 1026;
    v231 = 1026;
    v233 = 1026;
    v235 = 1026;
    v237 = 1026;
    v239 = 1026;
    v241 = 1026;
    v243 = 1026;
    v245 = 1026;
    v247 = 1026;
    v249 = 1026;
    v251 = 1026;
    v253 = 1026;
    v255 = 1026;
    v257 = 1026;
    v259 = 1026;
    v261 = 1026;
    v263 = 1026;
    v265 = 1026;
    v267 = 1026;
    v269 = 1026;
    v271 = 1026;
    v273 = 1026;
    v275 = 1026;
    v277 = 1026;
    v279 = 1026;
    v281 = 1026;
    v283 = 1026;
    v285 = 1026;
    v287 = 1026;
    v289 = 1026;
    v291 = 1026;
    v293 = 1026;
    v295 = 1026;
    v297 = 1026;
    v299 = 1026;
    v301 = 1026;
    v303 = 1026;
    v305 = 1026;
    v307 = 1026;
    v309 = 1026;
    v310 = v47;
    *buf = 67251456;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,CLGMTPS,enabled,%{public}d,refreshPeriod,%{public}d,refreshPeriodNPLOITourist,%{public}d,minBattery,%{public}d,minBatteryAggressive,%{public}d,xpcInterval,%{public}d,downloadSz,%{public}d,uploadSz,%{public}d,downloadTime,%{public}d,insideOut,%{public}d,diskIntensive,%{public}d,touristMode,%{public}d,maxLocAge,%{public}d,nextPLOI,%{public}d,sections,%{public}d,sectionsTourist,%{public}d,sectionsNPLOI,%{public}d,sectionsSE,%{public}d,allowSE,%{public}d,allowAggressive,%{public}d,maxAggressiveSections,%{public}d,timeWindowForMaxAggressive,%{public}d,touristDistance,%{public}d,workoutLookbackDays,%{public}d,home,%{public}d,%{public}d,%{public}d,work,%{public}d,%{public}d,%{public}d,school,%{public}d,%{public}d,%{public}d,nploi,%{public}d,%{public}d,%{public}d,tourist,%{public}d,%{public}d,%{public}d,sigEnv,%{public}d,%{public}d,%{public}d,touristSigEnv,%{public}d,%{public}d,%{public}d", buf, 0x110u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v50 = *(a1 + 5);
    v51 = *(a1 + 6);
    v52 = *(a1 + 7);
    v53 = *(a1 + 8);
    v54 = *(a1 + 9);
    v55 = *(a1 + 10);
    v56 = a1[1];
    v57 = a1[3];
    v59 = *(a1 + 3);
    v58 = *(a1 + 4);
    v60 = a1[4];
    v62 = *(a1 + 13);
    v61 = *(a1 + 14);
    v63 = a1[8];
    v135 = *a1;
    v64 = *(a1 + 38);
    v137 = v58;
    v65 = *(a1 + 40);
    v139 = v50;
    v141 = v51;
    v66 = *(a1 + 15);
    v67 = *(a1 + 16);
    v143 = v52;
    v145 = v53;
    v68 = *(a1 + 17);
    v69 = *(a1 + 18);
    v147 = v54;
    v149 = v55;
    v70 = *(a1 + 19);
    v71 = *(a1 + 20);
    v153 = v56;
    v157 = v57;
    v73 = *(a1 + 21);
    v72 = *(a1 + 22);
    v161 = v60;
    v165 = v62;
    v74 = *(a1 + 23);
    v75 = *(a1 + 24);
    v169 = v66;
    v173 = v63;
    v76 = *(a1 + 25);
    v77 = *(a1 + 26);
    v177 = v64;
    v181 = v65;
    v79 = *(a1 + 27);
    v78 = *(a1 + 28);
    v185 = v68;
    v189 = v70;
    v81 = *(a1 + 29);
    v80 = *(a1 + 30);
    v193 = v73;
    v197 = v74;
    v83 = *(a1 + 31);
    v82 = *(a1 + 32);
    v201 = v76;
    v205 = v79;
    v84 = *(a1 + 33);
    v85 = *(a1 + 34);
    v209 = v81;
    v213 = v83;
    v86 = *(a1 + 35);
    v87 = *(a1 + 36);
    v217 = v84;
    v221 = v86;
    v88 = *(a1 + 12);
    v151 = *(a1 + 11);
    v155 = a1[2];
    v159 = v59;
    v163 = v88;
    v167 = v61;
    v171 = a1[6];
    v175 = *(a1 + 37);
    v179 = *(a1 + 39);
    v183 = v67;
    v187 = v69;
    v191 = v71;
    v195 = v72;
    v199 = v75;
    v203 = v77;
    v207 = v78;
    v211 = v80;
    v215 = v82;
    v219 = v85;
    v136 = 1026;
    v138 = 1026;
    v140 = 1026;
    v142 = 1026;
    v144 = 1026;
    v146 = 1026;
    v148 = 1026;
    v150 = 1026;
    v152 = 1026;
    v154 = 1026;
    v156 = 1026;
    v158 = 1026;
    v160 = 1026;
    v162 = 1026;
    v164 = 1026;
    v166 = 1026;
    v168 = 1026;
    v170 = 1026;
    v172 = 1026;
    v174 = 1026;
    v176 = 1026;
    v178 = 1026;
    v180 = 1026;
    v182 = 1026;
    v184 = 1026;
    v186 = 1026;
    v188 = 1026;
    v190 = 1026;
    v192 = 1026;
    v194 = 1026;
    v196 = 1026;
    v198 = 1026;
    v200 = 1026;
    v202 = 1026;
    v204 = 1026;
    v206 = 1026;
    v208 = 1026;
    v210 = 1026;
    v212 = 1026;
    v214 = 1026;
    v216 = 1026;
    v218 = 1026;
    v220 = 1026;
    v222 = 1026;
    v223 = v87;
    v134 = 67251456;
    v89 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherGeoTilesPrecachingConfig::fillFromMobileAssetNVP(const CLNameValuePair &)", "%s\n", v89);
    if (v89 != buf)
    {
      free(v89);
    }
  }

  return 1;
}

void sub_10072C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10072C9B4(uint64_t a1, const char *a2, BOOL a3)
{
  v3 = a2;
  v8 = a3;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (sub_10001CB4C(a1, a2, &v8))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v4 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      v5 = v3;
      if (*(v3 + 23) < 0)
      {
        v5 = *v3;
      }

      *buf = 136446466;
      v14 = v5;
      v15 = 1026;
      v16 = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      if (*(v3 + 23) < 0)
      {
        v3 = *v3;
      }

      v9 = 136446466;
      v10 = v3;
      v11 = 1026;
      v12 = v8;
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::getField(const CLNameValuePair &, const std::string, BOOL)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return v8;
}

uint64_t sub_10072CBA0(uint64_t a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v14[0] = a3;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (sub_10005BBE4(a1, a2, v14))
  {
    if (v14[0] >= a4 && v14[0] <= a5)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v10 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v11 = v8;
        if (*(v8 + 23) < 0)
        {
          v11 = *v8;
        }

        *buf = 136446466;
        v19 = v11;
        v20 = 1026;
        v21 = v14[0];
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        if (*(v8 + 23) < 0)
        {
          v8 = *v8;
        }

        v14[1] = 136446466;
        v15 = v8;
        v16 = 1026;
        v17 = v14[0];
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "T CLMapMatcherOperatingPolicy::getField(const CLNameValuePair &, const std::string, T, T, T) [T = int]", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      return v14[0];
    }
  }

  return v7;
}

uint64_t sub_10072CDAC(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < 2)
  {
    return 0;
  }

  if (*(v2 + 23) < 0)
  {
    sub_100007244(__p, *v2, *(v2 + 1));
  }

  else
  {
    v6 = *v2;
    v62 = *(v2 + 2);
    *__p = v6;
  }

  v7 = HIBYTE(v62);
  v8 = SHIBYTE(v62);
  if (v62 < 0)
  {
    v7 = __p[1];
  }

  if (v7 == 2)
  {
    goto LABEL_9;
  }

  if (SHIBYTE(v62) < 0)
  {
    v58 = __p[0];
    if (__p[1] != 3)
    {
      v3 = 0;
      goto LABEL_126;
    }

LABEL_118:
    if (*v58 != 20306 || *(v58 + 2) != 87)
    {
      v3 = 0;
LABEL_123:
      if ((v8 & 0x80000000) == 0)
      {
        return v3;
      }

      v58 = __p[0];
LABEL_126:
      operator delete(v58);
      return v3;
    }

LABEL_9:
    v3 = 1;
    *a1 = 1;
    v10 = a2;
    v9 = *a2;
    v11 = v10[1] - v9;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    if (v12 >= 2)
    {
      v13 = *(v9 + 47);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v9 + 4);
      }

      if (v13)
      {
        v15 = v9 + 24;
        if (v14 < 0)
        {
          v15 = *v15;
        }

        *(a1 + 64) = atof(v15);
      }

      if (v11 != 48)
      {
        v16 = *(v9 + 71);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v9 + 7);
        }

        if (v16)
        {
          v18 = (v9 + 3);
          if (v17 < 0)
          {
            v18 = *v18;
          }

          *(a1 + 68) = atof(v18);
        }

        if (v12 >= 4)
        {
          v19 = *(v9 + 95);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v9 + 10);
          }

          if (v19)
          {
            v21 = v9 + 72;
            if (v20 < 0)
            {
              v21 = *v21;
            }

            *(a1 + 76) = atof(v21);
          }

          if (v11 != 96)
          {
            v22 = *(v9 + 119);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v9 + 13);
            }

            if (v22)
            {
              v24 = (v9 + 6);
              if (v23 < 0)
              {
                v24 = *v24;
              }

              *(a1 + 80) = atof(v24);
            }

            if (v12 >= 6)
            {
              v25 = *(v9 + 143);
              v26 = v25;
              if ((v25 & 0x80u) != 0)
              {
                v25 = *(v9 + 16);
              }

              if (v25)
              {
                v27 = v9 + 120;
                if (v26 < 0)
                {
                  v27 = *v27;
                }

                *(a1 + 88) = atof(v27);
              }

              if (v11 != 144)
              {
                v28 = *(v9 + 167);
                v29 = v28;
                if ((v28 & 0x80u) != 0)
                {
                  v28 = *(v9 + 19);
                }

                if (v28)
                {
                  v30 = (v9 + 9);
                  if (v29 < 0)
                  {
                    v30 = *v30;
                  }

                  *(a1 + 92) = atof(v30);
                }

                if (v12 >= 8)
                {
                  v31 = *(v9 + 191);
                  v32 = v31;
                  if ((v31 & 0x80u) != 0)
                  {
                    v31 = *(v9 + 22);
                  }

                  if (v31)
                  {
                    v33 = v9 + 168;
                    if (v32 < 0)
                    {
                      v33 = *v33;
                    }

                    *(a1 + 100) = atof(v33);
                  }

                  if (v11 != 192)
                  {
                    v34 = *(v9 + 215);
                    v35 = v34;
                    if ((v34 & 0x80u) != 0)
                    {
                      v34 = *(v9 + 25);
                    }

                    if (v34)
                    {
                      v36 = (v9 + 12);
                      if (v35 < 0)
                      {
                        v36 = *v36;
                      }

                      *(a1 + 104) = atof(v36);
                    }

                    if (v12 >= 0xA)
                    {
                      v37 = *(v9 + 239);
                      v38 = v37;
                      if ((v37 & 0x80u) != 0)
                      {
                        v37 = *(v9 + 28);
                      }

                      if (v37)
                      {
                        v39 = v9 + 216;
                        if (v38 < 0)
                        {
                          v39 = *v39;
                        }

                        *(a1 + 112) = atof(v39);
                      }

                      if (v11 != 240)
                      {
                        v40 = *(v9 + 263);
                        v41 = v40;
                        if ((v40 & 0x80u) != 0)
                        {
                          v40 = *(v9 + 31);
                        }

                        if (v40)
                        {
                          v42 = (v9 + 15);
                          if (v41 < 0)
                          {
                            v42 = *v42;
                          }

                          *(a1 + 116) = atof(v42);
                        }

                        if (v12 >= 0xC)
                        {
                          v43 = *(v9 + 287);
                          v44 = v43;
                          if ((v43 & 0x80u) != 0)
                          {
                            v43 = *(v9 + 34);
                          }

                          if (v43)
                          {
                            v45 = v9 + 264;
                            if (v44 < 0)
                            {
                              v45 = *v45;
                            }

                            *(a1 + 72) = atof(v45);
                          }

                          if (v11 != 288)
                          {
                            v46 = *(v9 + 311);
                            v47 = v46;
                            if ((v46 & 0x80u) != 0)
                            {
                              v46 = *(v9 + 37);
                            }

                            if (v46)
                            {
                              v48 = (v9 + 18);
                              if (v47 < 0)
                              {
                                v48 = *v48;
                              }

                              *(a1 + 84) = atof(v48);
                            }

                            if (v12 >= 0xE)
                            {
                              v49 = *(v9 + 335);
                              v50 = v49;
                              if ((v49 & 0x80u) != 0)
                              {
                                v49 = *(v9 + 40);
                              }

                              if (v49)
                              {
                                v51 = v9 + 312;
                                if (v50 < 0)
                                {
                                  v51 = *v51;
                                }

                                *(a1 + 96) = atof(v51);
                              }

                              if (v11 != 336)
                              {
                                v52 = *(v9 + 359);
                                v53 = v52;
                                if ((v52 & 0x80u) != 0)
                                {
                                  v52 = *(v9 + 43);
                                }

                                if (v52)
                                {
                                  v54 = (v9 + 21);
                                  if (v53 < 0)
                                  {
                                    v54 = *v54;
                                  }

                                  *(a1 + 108) = atof(v54);
                                }

                                if (v12 >= 0x10)
                                {
                                  v55 = *(v9 + 383);
                                  v56 = v55;
                                  if ((v55 & 0x80u) != 0)
                                  {
                                    v55 = *(v9 + 46);
                                  }

                                  if (v55)
                                  {
                                    v57 = v9 + 360;
                                    if (v56 < 0)
                                    {
                                      v57 = *v57;
                                    }

                                    *(a1 + 120) = atof(v57);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_123;
  }

  if (SHIBYTE(v62) == 3)
  {
    v58 = __p;
    goto LABEL_118;
  }

  return 0;
}

void sub_10072D218(uint64_t a1, std::string *a2, __int128 *a3)
{
  if (sub_100192868(a1, &a2->__r_.__value_.__l.__data_))
  {
    v25[0].__r_.__value_.__r.__words[0] = a2;
    v6 = sub_10022DD34(a1, &a2->__r_.__value_.__l.__data_);
    v7 = *a3;
    v8 = a3[2];
    *(v6 + 480) = a3[1];
    *(v6 + 496) = v8;
    *(v6 + 464) = v7;
    v9 = a3[3];
    v10 = a3[4];
    v11 = a3[6];
    *(v6 + 544) = a3[5];
    *(v6 + 560) = v11;
    *(v6 + 512) = v9;
    *(v6 + 528) = v10;
    v12 = a3[7];
    v13 = a3[8];
    v14 = a3[9];
    *(v6 + 624) = *(a3 + 40);
    *(v6 + 592) = v13;
    *(v6 + 608) = v14;
    *(v6 + 576) = v12;
  }

  else
  {
    v15 = 0;
    memset(v25, 0, 24);
    do
    {
      v16 = &v25[v15];
      v16[1].__r_.__value_.__s.__data_[0] = 0;
      v16[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
      v16[1].__r_.__value_.__s.__data_[16] = 0;
      *&v16[2].__r_.__value_.__l.__data_ = 0uLL;
      *&v16[2].__r_.__value_.__r.__words[2] = 0uLL;
      *&v16[3].__r_.__value_.__r.__words[1] = 0uLL;
      *&v16[4].__r_.__value_.__l.__data_ = 0uLL;
      v15 += 4;
      v16[4].__r_.__value_.__r.__words[2] = 0;
    }

    while (v15 != 16);
    *v26 = 16777472;
    v26[4] = 1;
    *&v26[5] = 0;
    *&v26[28] = xmmword_101C8BC90;
    *&v26[44] = xmmword_101C8BCA0;
    *&v26[60] = 400;
    *&v17 = -1;
    *(&v17 + 1) = -1;
    v27 = v17;
    v28 = v17;
    v29 = v17;
    v30 = v17;
    v31 = v17;
    *v32 = -1;
    *&v32[4] = xmmword_101C8BCB0;
    *&v26[12] = xmmword_101C8BCC0;
    if (sub_10001CF04())
    {
      *&v26[16] = 4233600;
    }

    DWORD2(v27) = 125000;
    DWORD1(v28) = 125000;
    LODWORD(v29) = 125000;
    HIDWORD(v29) = 15000;
    DWORD2(v30) = 25000;
    DWORD1(v31) = -1;
    *v32 = -1;
    std::string::operator=(v25, a2);
    v18 = a3[9];
    v31 = a3[8];
    *v32 = v18;
    *&v32[16] = *(a3 + 40);
    v19 = a3[5];
    v27 = a3[4];
    v28 = v19;
    v20 = a3[7];
    v29 = a3[6];
    v30 = v20;
    v21 = a3[1];
    *v26 = *a3;
    *&v26[16] = v21;
    v22 = a3[3];
    *&v26[32] = a3[2];
    *&v26[48] = v22;
    sub_10072D498(a1, v25);
    for (i = 0; i != -384; i -= 96)
    {
      v33 = &v25[i / 0x18 + 16];
      sub_100731CAC(&v33);
      v33 = &v25[i / 0x18 + 15];
      sub_100731CAC(&v33);
      data = v25[i / 0x18 + 14].__r_.__value_.__l.__data_;
      if (data)
      {
        v25[i / 0x18 + 14].__r_.__value_.__l.__size_ = data;
        operator delete(data);
      }
    }

    if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_10072D454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  for (i = 312; i != -72; i -= 96)
  {
    sub_100731C50(v15 + i);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10072D498(uint64_t a1, uint64_t a2)
{
  if (sub_100192868(a1, a2))
  {
    v19[0] = a2;
    v4 = sub_10022DD34(a1, a2);
    std::string::operator=((v4 + 56), a2);
    v5 = (v4 + 152);
    v6 = a2 + 56;
    v7 = 4;
    do
    {
      v8 = *(v6 - 32);
      *(v5 - 56) = *(v6 - 16);
      *(v5 - 9) = v8;
      if (v4 + 56 != a2)
      {
        sub_100731D80(v5 - 6, *(v6 - 8), *v6, (*v6 - *(v6 - 8)) >> 2);
        sub_100732438(v5 - 3, *(v6 + 16), *(v6 + 24), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 24) - *(v6 + 16)) >> 3));
        sub_100732438(v5, *(v6 + 40), *(v6 + 48), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 48) - *(v6 + 40)) >> 3));
      }

      v5 += 12;
      v6 += 96;
      --v7;
    }

    while (v7);
    v9 = *(a2 + 408);
    v10 = *(a2 + 440);
    *(v4 + 480) = *(a2 + 424);
    *(v4 + 496) = v10;
    *(v4 + 464) = v9;
    v11 = *(a2 + 456);
    v12 = *(a2 + 472);
    v13 = *(a2 + 504);
    *(v4 + 544) = *(a2 + 488);
    *(v4 + 560) = v13;
    *(v4 + 512) = v11;
    *(v4 + 528) = v12;
    v14 = *(a2 + 520);
    v15 = *(a2 + 536);
    v16 = *(a2 + 552);
    *(v4 + 624) = *(a2 + 568);
    *(v4 + 592) = v15;
    *(v4 + 608) = v16;
    *(v4 + 576) = v14;
  }

  else
  {
    sub_100731EAC(v19, a2, a2);
    sub_100732B8C(a1, v19);
    for (i = 0; i != -384; i -= 96)
    {
      v24 = &v23[i + 48];
      sub_100731CAC(&v24);
      v24 = &v23[i + 24];
      sub_100731CAC(&v24);
      v18 = *&v23[i];
      if (v18)
      {
        *&v23[i + 8] = v18;
        operator delete(v18);
      }
    }

    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

uint64_t sub_10072D67C(uint64_t a1, void **a2, int a3, int a4, int8x16_t *a5)
{
  v8 = a2;
  if (sub_100192868(a1, a2) || (v8 = &unk_101C8BD40, (result = sub_100192868(a1, &unk_101C8BD40)) != 0))
  {
    v11 = sub_10022DD34(a1, v8);
    return sub_1007298FC(v11 + 96 * a3 + 80, a4, a5);
  }

  return result;
}

uint64_t sub_10072D71C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  sub_1007328C8(a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 16) = 0;
  *v4 = 0;
  v38 = 0;
  if (sub_1004FC4F4(a2, @"CountryConfiguration", &v38))
  {
    sub_10072E32C(a1, &v38);
  }

  sub_10004FD18(v37);
  if (sub_100185ADC(a2, "GeneralSettings", v37))
  {
    v36 = *(a1 + 56);
    if (sub_1000B9370(v37, "TrackRunProximityThreshold", &v36))
    {
      *(a1 + 56) = v36;
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v5 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 56);
        *buf = 134349056;
        v42 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read trackRunProximityThreshold,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F310(buf);
        v17 = *(a1 + 56);
        v39 = 134349056;
        v40 = v17;
        v18 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v18);
        if (v18 != buf)
        {
          free(v18);
        }
      }
    }

    v35 = *(a1 + 32);
    if (sub_10001CB4C(v37, "UseMapDataBufferForMM", &v35))
    {
      *(a1 + 32) = v35;
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v7 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 67240192;
        LODWORD(v42) = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read useMapDataBuffer,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F310(buf);
        v19 = *(a1 + 32);
        v39 = 67240192;
        LODWORD(v40) = v19;
        v20 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

    v34 = *(a1 + 33);
    if (sub_10001CB4C(v37, "UseXPCServiceForMapDataQueriesInMM", &v34))
    {
      *(a1 + 33) = v34;
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v9 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 33);
        *buf = 67240192;
        LODWORD(v42) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read useXPCServiceForMapQueries,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F310(buf);
        v21 = *(a1 + 33);
        v39 = 67240192;
        LODWORD(v40) = v21;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    if ((atomic_load_explicit(&qword_102659850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659850))
    {
      sub_10000EC00(&xmmword_102659838, "MapsRoadDataBufferRadiusVehicle");
      __cxa_atexit(&std::string::~string, &xmmword_102659838, dword_100000000);
      __cxa_guard_release(&qword_102659850);
    }

    if (byte_10265984F < 0)
    {
      sub_100007244(&__p, xmmword_102659838, *(&xmmword_102659838 + 1));
    }

    else
    {
      __p = xmmword_102659838;
      v33 = unk_102659848;
    }

    *(a1 + 36) = sub_10072CBA0(v37, &__p, *(a1 + 36), 50, 2500);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    if ((atomic_load_explicit(&qword_102659870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659870))
    {
      sub_10000EC00(&xmmword_102659858, "MapsRoadDataBufferRadiusPedestrian");
      __cxa_atexit(&std::string::~string, &xmmword_102659858, dword_100000000);
      __cxa_guard_release(&qword_102659870);
    }

    if (byte_10265986F < 0)
    {
      sub_100007244(__dst, xmmword_102659858, *(&xmmword_102659858 + 1));
    }

    else
    {
      *__dst = xmmword_102659858;
      v31 = unk_102659868;
    }

    *(a1 + 40) = sub_10072CBA0(v37, __dst, *(a1 + 40), 50, 2500);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((atomic_load_explicit(&qword_102659890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659890))
    {
      sub_10000EC00(&xmmword_102659878, "MapsRoadDataBufferRadiusBicycle");
      __cxa_atexit(&std::string::~string, &xmmword_102659878, dword_100000000);
      __cxa_guard_release(&qword_102659890);
    }

    if (byte_10265988F < 0)
    {
      sub_100007244(v28, xmmword_102659878, *(&xmmword_102659878 + 1));
    }

    else
    {
      *v28 = xmmword_102659878;
      v29 = unk_102659888;
    }

    *(a1 + 44) = sub_10072CBA0(v37, v28, *(a1 + 44), 50, 2500);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if ((atomic_load_explicit(&qword_1026598B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026598B0))
    {
      sub_10000EC00(&xmmword_102659898, "MapsBuildingDataBufferRadiusPedestrian");
      __cxa_atexit(&std::string::~string, &xmmword_102659898, dword_100000000);
      __cxa_guard_release(&qword_1026598B0);
    }

    if (byte_1026598AF < 0)
    {
      sub_100007244(v26, xmmword_102659898, *(&xmmword_102659898 + 1));
    }

    else
    {
      *v26 = xmmword_102659898;
      v27 = unk_1026598A8;
    }

    *(a1 + 48) = sub_10072CBA0(v37, v26, *(a1 + 48), 5, 1000);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if ((atomic_load_explicit(&qword_1026598D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026598D0))
    {
      sub_10000EC00(&xmmword_1026598B8, "MapsBuildingDataBufferRadiusBicycle");
      __cxa_atexit(&std::string::~string, &xmmword_1026598B8, dword_100000000);
      __cxa_guard_release(&qword_1026598D0);
    }

    if (byte_1026598CF < 0)
    {
      sub_100007244(v24, xmmword_1026598B8, *(&xmmword_1026598B8 + 1));
    }

    else
    {
      *v24 = xmmword_1026598B8;
      v25 = unk_1026598C8;
    }

    *(a1 + 52) = sub_10072CBA0(v37, v24, *(a1 + 52), 5, 1000);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    v23 = *(a1 + 24);
    if (sub_1000B9370(v37, "RoadWidthBufferForFitnessUseCase", &v23))
    {
      if (v23 < 0.0 || v23 > 50.0)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v15 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v42 = v23;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read invalid roadWidthBufferForFitnessUseCase,%{public}.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191F310(buf);
          v39 = 134349056;
          v40 = v23;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v14);
LABEL_74:
          if (v14 != buf)
          {
            free(v14);
          }
        }
      }

      else
      {
        *(a1 + 24) = v23;
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v11 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 24);
          *buf = 134349056;
          v42 = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read roadWidthBufferForFitnessUseCase,%{public}.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191F310(buf);
          v13 = *(a1 + 24);
          v39 = 134349056;
          v40 = v13;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v14);
          goto LABEL_74;
        }
      }
    }
  }

  return sub_100005DA4(v37);
}

void sub_10072E224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  __cxa_guard_abort(&qword_1026598D0);
  sub_100005DA4(&a49);
  _Unwind_Resume(a1);
}

void sub_10072E32C(uint64_t a1, CFArrayRef *a2)
{
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v3 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      *&buf[4] = Count;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,CountryConfiguration,numberOfCountries,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920C30();
    }

    if (Count >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v4);
        sub_100005548(v54, ValueAtIndex);
        v6 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v37 = 0;
        do
        {
          v7 = &__p[v6];
          *(v7 + 24) = 0;
          v7[4] = 0xBFF0000000000000;
          *(v7 + 40) = 0;
          *(v7 + 3) = 0uLL;
          *(v7 + 4) = 0uLL;
          *(v7 + 5) = 0uLL;
          *(v7 + 6) = 0uLL;
          v6 += 12;
          v7[14] = 0;
        }

        while (v6 != 48);
        v40 = 16777472;
        v41 = 1;
        v42 = 0;
        v44 = xmmword_101C8BC90;
        v45 = xmmword_101C8BCA0;
        v46 = 400;
        *&v8 = -1;
        *(&v8 + 1) = -1;
        v47 = v8;
        v48 = v8;
        v49 = v8;
        v50 = v8;
        v51 = v8;
        v52 = -1;
        v53 = xmmword_101C8BCB0;
        v43 = xmmword_101C8BCC0;
        if (sub_10001CF04())
        {
          DWORD1(v43) = 4233600;
        }

        DWORD2(v47) = 125000;
        DWORD1(v48) = 125000;
        LODWORD(v49) = 125000;
        HIDWORD(v49) = 15000;
        DWORD2(v50) = 25000;
        DWORD1(v51) = -1;
        v52 = -1;
        if (sub_100175094(v54, "CountryCode", __p))
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v9 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            if (v37 >= 0)
            {
              v10 = __p;
            }

            else
            {
              v10 = __p[0];
            }

            *buf = 136315138;
            *&buf[4] = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,**ReadCountryCode**,%s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            v23 = v37 >= 0 ? __p : __p[0];
            v61 = 136315138;
            v62 = v23;
            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          sub_10004FD18(&v61);
          if (sub_100185ADC(v54, "EnableActivityBasedPedestrianMapMatching", &v61))
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v11 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
            {
              if (v37 >= 0)
              {
                v12 = __p;
              }

              else
              {
                v12 = __p[0];
              }

              *buf = 136446210;
              *&buf[4] = v12;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Reading PedestrianMM settings for,%{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              if (v37 >= 0)
              {
                v27 = __p;
              }

              else
              {
                v27 = __p[0];
              }

              v59 = 136446210;
              v60 = v27;
              v28 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v28);
              if (v28 != buf)
              {
                free(v28);
              }
            }

            sub_100728A34(&v38, &v61);
          }

          sub_10004FD18(&v59);
          if (sub_100185ADC(v54, "EnableActivityBasedCyclingMapMatching", &v59))
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v13 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
            {
              if (v37 >= 0)
              {
                v14 = __p;
              }

              else
              {
                v14 = __p[0];
              }

              *buf = 136446210;
              *&buf[4] = v14;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Reading CyclingMM settings for,%{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              v29 = v37 >= 0 ? __p : __p[0];
              v57 = 136446210;
              v58 = v29;
              v30 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v30);
              if (v30 != buf)
              {
                free(v30);
              }
            }

            sub_100728A34(v39, &v59);
          }

          sub_10004FD18(&v57);
          if (sub_100185ADC(v54, "GeoTilesPrecaching", &v57))
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v15 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
            {
              if (v37 >= 0)
              {
                v16 = __p;
              }

              else
              {
                v16 = __p[0];
              }

              *buf = 136446210;
              *&buf[4] = v16;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Reading GeoTilesPrecaching settings for,%{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              v31 = v37 >= 0 ? __p : __p[0];
              v55 = 136446210;
              v56 = v31;
              v32 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v32);
              if (v32 != buf)
              {
                free(v32);
              }
            }

            sub_10072B6D8(&v40, &v57);
          }

          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v17 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            if (v37 >= 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            *buf = 136446210;
            *&buf[4] = v18;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Read all settings for,%{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            v25 = v37 >= 0 ? __p : __p[0];
            v55 = 136446210;
            v56 = v25;
            v26 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v26);
            if (v26 != buf)
            {
              free(v26);
            }
          }

          sub_10072D498(a1, __p);
          sub_100005DA4(&v57);
          sub_100005DA4(&v59);
          sub_100005DA4(&v61);
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v19 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get country code", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            LOWORD(v61) = 0;
            v20 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v20);
            if (v20 != buf)
            {
              free(v20);
            }
          }
        }

        for (i = 0; i != -384; i -= 96)
        {
          *buf = &v39[i + 72];
          sub_100731CAC(buf);
          *buf = &v39[i + 48];
          sub_100731CAC(buf);
          v22 = *&v39[i + 24];
          if (v22)
          {
            *&v39[i + 32] = v22;
            operator delete(v22);
          }
        }

        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100005DA4(v54);
        ++v4;
      }

      while (v4 != (Count & 0x7FFFFFFF));
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v33 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,NULL countryConfigArray", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101920D20();
    }
  }
}

void sub_10072F044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  sub_100005DA4(&STACK[0x300]);
  sub_100005DA4(&STACK[0x310]);
  sub_100005DA4(&STACK[0x320]);
  sub_1007323B0(&__p);
  sub_100005DA4(&STACK[0x2E0]);
  _Unwind_Resume(a1);
}

void sub_10072F128(unint64_t *a1, double *a2)
{
  sub_10072F464(a1);
  v4 = *a1;
  v5 = a1[1];
  if (v5 - *a1 >= 0x40)
  {
    v6 = *a2;
    v7 = (v4 + 16);
    if ((v4 + 16) == v5)
    {
      v9 = 0.0;
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = *(v7 - 2);
        v11 = *v7;
        if (v10 != *v7)
        {
          if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_9;
          }

          v13 = fabs(v10);
          v14 = fabs(v11);
          v15 = vabdd_f64(v10, v11);
          if (v13 >= v14)
          {
            v16 = v13;
          }

          else
          {
            v16 = v14;
          }

          if (v16 < 1.0)
          {
            v16 = 1.0;
          }

          if (v15 > v16 * 2.22044605e-16)
          {
LABEL_9:
            v9 = v9 + sub_10072F8D8(v7 - 2, v7);
            v8 += sub_10072FA34(v7 - 2, v7);
          }
        }

        v7 += 2;
      }

      while (v7 != v5);
      if (v8)
      {
        v17 = ((v8 >> 1) + 1);
        v18 = fabs(v9);
        v19 = -v18;
        v20 = -(v18 - v17 * 6.28318531);
        v21 = -(v19 + v17 * 6.28318531);
        if (v9 <= 0.0)
        {
          v9 = v20;
        }

        else
        {
          v9 = v21;
        }
      }
    }

    if (v6 * v6 * v9 < 0.0)
    {
      v23 = *a1;
      v22 = a1[1];
      if (*a1 != v22)
      {
        v24 = (v22 - 16);
        if (v24 > v23)
        {
          v25 = v23 + 16;
          do
          {
            v26 = *(v25 - 16);
            *(v25 - 16) = *v24;
            *v24-- = v26;
            v27 = v25 >= v24;
            v25 += 16;
          }

          while (!v27);
        }
      }
    }
  }

  v30 = a1 + 3;
  v28 = a1[3];
  for (i = v30[1]; v28 != i; v28 += 3)
  {
    sub_10072F464(v28);
    v31 = *v28;
    v32 = v28[1];
    if (v32 - *v28 >= 0x40)
    {
      v33 = *a2;
      v34 = (v31 + 16);
      if ((v31 + 16) == v32)
      {
        v36 = 0.0;
      }

      else
      {
        v35 = 0;
        v36 = 0.0;
        do
        {
          v37 = *(v34 - 2);
          v38 = *v34;
          if (v37 != *v34)
          {
            if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_39;
            }

            v40 = fabs(v37);
            v41 = fabs(v38);
            v42 = vabdd_f64(v37, v38);
            if (v40 >= v41)
            {
              v43 = v40;
            }

            else
            {
              v43 = v41;
            }

            if (v43 < 1.0)
            {
              v43 = 1.0;
            }

            if (v42 > v43 * 2.22044605e-16)
            {
LABEL_39:
              v36 = v36 + sub_10072F8D8(v34 - 2, v34);
              v35 += sub_10072FA34(v34 - 2, v34);
            }
          }

          v34 += 2;
        }

        while (v34 != v32);
        if (v35)
        {
          v44 = (v35 >> 1) + 1;
          v45 = fabs(v36);
          v46 = -v45;
          v47 = -(v45 - v44 * 6.28318531);
          if (v36 <= 0.0)
          {
            v36 = v47;
          }

          else
          {
            v36 = -(v46 + v44 * 6.28318531);
          }
        }
      }

      if (v33 * v33 * v36 > 0.0)
      {
        v49 = *v28;
        v48 = v28[1];
        if (*v28 != v48)
        {
          v50 = (v48 - 16);
          if (v50 > v49)
          {
            v51 = v49 + 16;
            do
            {
              v52 = *(v51 - 16);
              *(v51 - 16) = *v50;
              *v50-- = v52;
              v27 = v51 >= v50;
              v51 += 16;
            }

            while (!v27);
          }
        }
      }
    }
  }
}

void sub_10072F464(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if ((v2 - *a1) >= 0x21)
  {
    v4 = *v1;
    v26 = v1[1];
    v27 = v4;
    sub_10072F654(&v27, &v26, 1);
    v5 = v26;
    v6 = v27;
    v7 = *(v2 - 16);
    v26 = *(v2 - 8);
    v27 = v7;
    sub_10072F654(&v27, &v26, 1);
    if (v6 != v27)
    {
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v11 = fabs(v6);
      v12 = fabs(v27);
      v13 = vabdd_f64(v6, v27);
      if (v11 < v12)
      {
        v11 = v12;
      }

      if (v11 < 1.0)
      {
        v11 = 1.0;
      }

      if (v13 > v11 * 2.22044605e-16)
      {
        goto LABEL_19;
      }
    }

    if (v5 != v26)
    {
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v8 = fabs(v5);
      v9 = fabs(v26);
      v10 = vabdd_f64(v5, v26);
      if (v8 < v9)
      {
        v8 = v9;
      }

      if (v8 < 1.0)
      {
        v8 = 1.0;
      }

      if (v10 > v8 * 2.22044605e-16)
      {
LABEL_19:
        v14 = *a1;
        v15 = *(a1 + 8);
        v16 = **a1;
        v17 = *(a1 + 16);
        if (v15 >= v17)
        {
          v19 = (v15 - v14) >> 4;
          if ((v19 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v20 = v17 - v14;
          v21 = v20 >> 3;
          if (v20 >> 3 <= (v19 + 1))
          {
            v21 = v19 + 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            sub_1003E5FE8(a1, v22);
          }

          *(16 * v19) = v16;
          v18 = 16 * v19 + 16;
          v23 = *(a1 + 8) - *a1;
          v24 = (16 * v19 - v23);
          memcpy(v24, *a1, v23);
          v25 = *a1;
          *a1 = v24;
          *(a1 + 8) = v18;
          *(a1 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v15 = v16;
          v18 = (v15 + 16);
        }

        *(a1 + 8) = v18;
      }
    }
  }
}

void sub_10072F654(double *a1, double *a2, int a3)
{
  v6 = *a1;
  v7 = fabs(*a1);
  v8 = 180.0;
  if (v7 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v10 = fabs(v7 + -180.0);
    v8 = 180.0;
    if (v7 < 180.0)
    {
      v7 = 180.0;
    }

    if (v7 < 1.0)
    {
      v7 = 1.0;
    }

    if (v10 <= v7 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v8 = 180.0;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_3;
    }

    v8 = fmod(v6 + -180.0, 360.0) + 180.0;
    goto LABEL_2;
  }

  v6 = fmod(v6 + 180.0, 360.0) + -180.0;
  *a1 = v6;
  if (v6 == -180.0)
  {
    goto LABEL_2;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = fabs(v6);
    v8 = 180.0;
    v12 = fabs(v6 + 180.0);
    if (v11 < 180.0)
    {
      v11 = 180.0;
    }

    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    if (v12 <= v11 * 2.22044605e-16)
    {
LABEL_2:
      *a1 = v8;
      v6 = v8;
    }
  }

  if (!a3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v9 = fabs(*a2);
  if (v9 == 90.0)
  {
    goto LABEL_5;
  }

  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  v13 = fabs(v9 + -90.0);
  if (v9 < 90.0)
  {
    v9 = 90.0;
  }

  if (v9 < 1.0)
  {
    v9 = 1.0;
  }

  if (v13 <= v9 * 2.22044605e-16)
  {
LABEL_5:
    *a1 = 0.0;
    v6 = 0.0;
  }

  else
  {
LABEL_27:
    if (v6 <= -180.0)
    {
      goto LABEL_44;
    }
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fabs(v6);
    v15 = fabs(v6 + 180.0);
    if (v14 < 180.0)
    {
      v14 = 180.0;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v15 <= v14 * 2.22044605e-16)
    {
LABEL_44:
      sub_101920E24();
    }
  }

  if (v6 > 180.0)
  {
    if (v6 == INFINITY)
    {
      goto LABEL_45;
    }

    v16 = fabs(v6 + -180.0);
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    if (v16 > v6 * 2.22044605e-16)
    {
LABEL_45:
      sub_101920E50();
    }
  }
}

long double sub_10072F8D8(double *a1, double *a2)
{
  v2 = a1[1];
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v23 = a1;
    v16 = a2;
    sub_101920E7C();
    a2 = v16;
    a1 = v23;
  }

  v3 = *&qword_1025D80D0;
  v4 = a2[1];
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v24 = a1;
    v17 = v3;
    sub_101920E7C();
    v3 = v17;
    a2 = v20;
    a1 = v24;
  }

  v5 = *&qword_1025D80D0;
  v6 = *a2;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v25 = a1;
    v21 = v3;
    v18 = v6;
    sub_101920E7C();
    v6 = v18;
    v3 = v21;
    a1 = v25;
  }

  v7 = *&qword_1025D80D0;
  v8 = *a1;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v19 = v6;
    v22 = v3;
    v26 = v7;
    sub_101920E7C();
    v3 = v22;
    v7 = v26;
    v6 = v19;
  }

  v9 = v6 * v7;
  v10 = tan(v2 * v3 * 0.5);
  v11 = tan(v4 * v5 * 0.5);
  v12 = (v10 + v11) / (v10 * v11 + 1.0);
  v13 = tan((v9 - v8 * *&qword_1025D80D0) * 0.5);
  v14 = atan(v12 * v13);
  return v14 + v14;
}

BOOL sub_10072FA34(double *a1, double *a2)
{
  v2 = *a1;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v18 = a1;
    v22 = v2;
    sub_101920E7C();
    v2 = v22;
    a1 = v18;
    a2 = v24;
  }

  v3 = *&qword_1025D80D0;
  v4 = *a1;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v23 = v2;
    v15 = v3;
    v19 = v4;
    sub_101920E7C();
    v3 = v15;
    v4 = v19;
    v2 = v23;
    a2 = v25;
  }

  v5 = v2 * v3;
  v6 = floor(v4 * *&qword_1025D80D0 / 6.28318531);
  v7 = *a2;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v16 = v6;
    v20 = v5;
    v14 = v7;
    sub_101920E7C();
    v7 = v14;
    v6 = v16;
    v5 = v20;
    a2 = v26;
  }

  v8 = v5 - v6 * 6.28318531;
  v9 = v7 * *&qword_1025D80D0;
  v10 = *a2;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v27 = v8;
    v17 = v9;
    v21 = v10;
    sub_101920E7C();
    v9 = v17;
    v10 = v21;
    v8 = v27;
  }

  result = 0;
  v12 = v9 - floor(v10 * *&qword_1025D80D0 / 6.28318531) * 6.28318531;
  if (v8 >= v12)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v12 < v8)
  {
    v8 = v12;
  }

  if (v13 > 3.14159265 && v8 < 3.14159265)
  {
    return v13 - v8 > 3.14159265;
  }

  return result;
}

uint64_t sub_10072FBB8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *v4 = v5;
  if (*(a2 + 39) < 0)
  {
    sub_100007244((v4 + 16), a2[2], a2[3]);
  }

  else
  {
    v6 = *(a2 + 1);
    *(v4 + 32) = a2[4];
    *(v4 + 16) = v6;
  }

  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  sub_1004BF900(v4 + 40, a2[5], a2[6], (a2[6] - a2[5]) >> 4);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  result = sub_10072FE9C(v4 + 64, a2[8], a2[9], 0xAAAAAAAAAAAAAAABLL * ((a2[9] - a2[8]) >> 3));
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t sub_10072FCB0(uint64_t a1, uint64_t *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_100730010(a1, v6);
  }

  v7 = 88 * v2;
  v16 = 0;
  v17 = v7;
  v18 = (88 * v2);
  v8 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *v7 = v8;
  if (*(a2 + 39) < 0)
  {
    sub_100007244((v7 + 16), a2[2], a2[3]);
  }

  else
  {
    v9 = *(a2 + 1);
    *(88 * v2 + 0x20) = a2[4];
    *(88 * v2 + 0x10) = v9;
  }

  *(88 * v2 + 0x28) = 0;
  *(88 * v2 + 0x30) = 0;
  *(88 * v2 + 0x38) = 0;
  sub_1004BF900(v7 + 40, a2[5], a2[6], (a2[6] - a2[5]) >> 4);
  *(88 * v2 + 0x40) = 0;
  *(88 * v2 + 0x48) = 0;
  *(88 * v2 + 0x50) = 0;
  sub_10072FE9C(v7 + 64, a2[8], a2[9], 0xAAAAAAAAAAAAAAABLL * ((a2[9] - a2[8]) >> 3));
  *&v18 = v18 + 88;
  v10 = *(a1 + 8);
  v11 = v17 + *a1 - v10;
  sub_10073006C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100730258(&v16);
  return v15;
}

void sub_10072FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v7 = *v4;
  if (*v4)
  {
    *(v5 + 48) = v7;
    operator delete(v7);
  }

  if (*(v5 + 39) < 0)
  {
    operator delete(*(v5 + 16));
  }

  sub_100730258(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10072FE9C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002887D4(result, a4);
  }

  return result;
}

void sub_10072FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1002EC52C(&a9);
  _Unwind_Resume(a1);
}

void *sub_10072FF24(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      sub_1004BF900(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10072FFD8(v8);
  return v4;
}

uint64_t sub_10072FFD8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038AFD8(a1);
  }

  return a1;
}

void sub_100730010(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10073006C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 8) = *(v5 + 8);
      *a4 = v6;
      v7 = *(v5 + 1);
      *(a4 + 32) = v5[4];
      *(a4 + 16) = v7;
      v5[3] = 0;
      v5[4] = 0;
      v5[2] = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 56) = v5[7];
      v5[5] = 0;
      v5[6] = 0;
      v5[7] = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v5 + 4);
      *(a4 + 80) = v5[10];
      v5[8] = 0;
      v5[9] = 0;
      v5[10] = 0;
      v5 += 11;
      a4 += 88;
    }

    while (v5 != a3);
    v15 = a4;
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 8;
      do
      {
        v16 = v8;
        sub_1002EC52C(&v16);
        v9 = *(v8 - 3);
        if (v9)
        {
          *(v8 - 2) = v9;
          operator delete(v9);
        }

        if (*(v8 - 25) < 0)
        {
          operator delete(*(v8 - 6));
        }

        v10 = v8 + 3;
        v8 += 11;
      }

      while (v10 != a3);
    }
  }

  return sub_100730198(v12);
}

uint64_t sub_100730198(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007301E4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1007301E4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v11[3] = v5;
    v11[4] = v6;
    v8 = a3 - 3;
    do
    {
      v11[0] = v8;
      sub_1002EC52C(v11);
      v9 = *(v8 - 3);
      if (v9)
      {
        *(v8 - 2) = v9;
        operator delete(v9);
      }

      if (*(v8 - 25) < 0)
      {
        operator delete(*(v8 - 6));
      }

      v10 = v8 - 8;
      v8 -= 11;
    }

    while (v10 != a5);
  }
}

uint64_t sub_100730258(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    v6 = (i - 24);
    sub_1002EC52C(&v6);
    v4 = *(i - 48);
    if (v4)
    {
      *(i - 40) = v4;
      operator delete(v4);
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007302E4(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_1002EC52C(&v4);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_100730340(double *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3 - *a2 < 0x40)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v2 + 2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    if (!sub_1007304E0(&v13, a1, v2, v2 + 2, &v14))
    {
      break;
    }

    v6 = v2 + 4;
    v2 += 2;
  }

  while (v6 != v3);
  if (v16)
  {
    return 0;
  }

  if (v15 && HIDWORD(v15))
  {
    if (v15 < 1)
    {
      if (!v14)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (!(v14 + HIDWORD(v14)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  while (v9 != v8)
  {
    v10 = *v9;
    v11 = v9[1];
    if ((v11 - *v9) >= 0x40)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v10 + 2 != v11)
      {
        do
        {
          if (!sub_1007304E0(&v13, a1, v10, v10 + 2, &v14))
          {
            break;
          }

          v12 = v10 + 4;
          v10 += 2;
        }

        while (v12 != v11);
        if (v16)
        {
          return 0;
        }

        if (v15 && HIDWORD(v15))
        {
          if (v15 < 1)
          {
            if (v14)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else if (v14 + HIDWORD(v14))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (v14)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v8 = *(a2 + 32);
    }

    v9 += 3;
  }

  return 1;
}

uint64_t sub_1007304E0(uint64_t a1, double *a2, double *a3, double *a4, uint64_t a5)
{
  v19 = 0;
  v18 = 0;
  if (!sub_100730A08(a2, a3, a4, a5, &v19 + 1, &v19, &v18))
  {
    v12 = sub_10073152C(a2, a3, a4, HIBYTE(v19), v19, v18);
    v16 = v12;
    v17 = BYTE4(v12);
    if (v12)
    {
      if ((v12 & 0x100000000) == 0)
      {
        if (v12 == 1 || v12 == -1)
        {
          if (HIBYTE(v19))
          {
            v14 = a3;
          }

          else
          {
            v14 = a4;
          }

          v15 = sub_100730664(a1, a2, v14, &v16);
        }

        else
        {
          if (v18)
          {
            if (v12 < 1)
            {
              v10 = -1;
            }

            else
            {
              v10 = 1;
            }

            if (180.0 - a3[1] - a4[1] <= 180.0)
            {
              v10 = -v10;
            }

LABEL_24:
            if (v12 * v10 >= 1)
            {
              *a5 += v12;
            }

            *(a5 + 8) += v12;
            goto LABEL_2;
          }

          v15 = sub_100730850(a3, a4, a2);
        }

        v10 = v15;
        if (!v15)
        {
          *(a5 + 16) = 1;
          *a5 = 0;
          return v10 & 1;
        }

        LODWORD(v12) = v16;
        goto LABEL_24;
      }

      *(a5 + 4) -= v12;
      *(a5 + 12) -= v12;
    }
  }

LABEL_2:
  LOBYTE(v10) = *(a5 + 16) ^ 1;
  return v10 & 1;
}

uint64_t sub_100730664(uint64_t a1, double *a2, double *a3, int *a4)
{
  v8 = a2[1];
  v9 = a3[1];
  if (v8 == v9)
  {
    return 0;
  }

  v25[2] = v7;
  v25[3] = v6;
  v25[6] = v4;
  v25[7] = v5;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v21 = fabs(v8);
  v22 = fabs(v9);
  v23 = vabdd_f64(v8, v9);
  if (v21 < v22)
  {
    v21 = v22;
  }

  if (v21 < 1.0)
  {
    v21 = 1.0;
  }

  if (v23 > v21 * 2.22044605e-16)
  {
LABEL_7:
    v13 = *a3;
    v25[0] = *a3;
    v25[1] = v9;
    v24[1] = v9;
    v14 = -1.0;
    if (*a4 > 0)
    {
      v14 = 1.0;
    }

    v15 = v13 + v14;
    v16 = fabs(v15);
    v17 = 180.0;
    if (v16 != 180.0)
    {
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      v18 = fabs(v16 + -180.0);
      v17 = 180.0;
      if (v16 < 180.0)
      {
        v16 = 180.0;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      if (v18 > v16 * 2.22044605e-16)
      {
LABEL_18:
        v17 = 180.0;
        if (v15 <= 180.0)
        {
          if (v15 >= -180.0)
          {
            goto LABEL_11;
          }

          v17 = fmod(v15 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v15 = fmod(v15 + 180.0, 360.0) + -180.0;
          if (v15 != -180.0)
          {
            if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_11;
            }

            v19 = fabs(v15);
            v17 = 180.0;
            v20 = fabs(v15 + 180.0);
            if (v19 < 180.0)
            {
              v19 = 180.0;
            }

            if (v19 < 1.0)
            {
              v19 = 1.0;
            }

            if (v20 > v19 * 2.22044605e-16)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    v15 = v17;
LABEL_11:
    v24[0] = v15;
    return sub_100730850(v25, v24, a2);
  }

  return 0;
}

uint64_t sub_100730850(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v19 = a3;
    v11 = a1;
    v10 = v3;
    sub_101920E7C();
    v3 = v10;
    a1 = v11;
    a2 = v14;
    a3 = v19;
  }

  v30 = v3 * *&qword_1025D80D0;
  v4 = a1[1];
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v20 = a3;
    v12 = v4;
    sub_101920E7C();
    v4 = v12;
    a2 = v15;
    a3 = v20;
  }

  v29 = v4 * *&qword_1025D80D0;
  v5 = *a2;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v21 = a3;
    v13 = v5;
    sub_101920E7C();
    v5 = v13;
    a2 = v16;
    a3 = v21;
  }

  v28 = v5 * *&qword_1025D80D0;
  v6 = a2[1];
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v22 = a3;
    v17 = v6;
    sub_101920E7C();
    v6 = v17;
    a3 = v22;
  }

  v27 = v6 * *&qword_1025D80D0;
  v7 = *a3;
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v23 = a3;
    v18 = v7;
    sub_101920E7C();
    v7 = v18;
    a3 = v23;
  }

  v26 = v7 * *&qword_1025D80D0;
  v8 = a3[1];
  if ((atomic_load_explicit(&qword_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v24 = v8;
    sub_101920E7C();
    v8 = v24;
  }

  v25 = v8 * *&qword_1025D80D0;
  return sub_100731AF8(&v30, &v29, &v28, &v27, &v26, &v25);
}

uint64_t sub_100730A08(double *a1, double *a2, double *a3, uint64_t a4, BOOL *a5, BOOL *a6, BOOL *a7)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = *a2;
  v13 = a2[1];
  v16 = *a3;
  v15 = a3[1];
  v17 = vabdd_f64(*a1, *a2);
  v18 = 180.0;
  if (v17 == 180.0)
  {
    goto LABEL_2;
  }

  v19 = v12 - v14;
  if (COERCE__INT64(fabs(v12 - v14)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21 = fabs(v17 + -180.0);
    v18 = 180.0;
    if (v17 < 180.0)
    {
      v17 = 180.0;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v21 <= v17 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v18 = 180.0;
  if (v19 <= 180.0)
  {
    if (v19 >= -180.0)
    {
      goto LABEL_3;
    }

    v18 = fmod(v19 + -180.0, 360.0) + 180.0;
LABEL_2:
    v19 = v18;
    goto LABEL_3;
  }

  v19 = fmod(v19 + 180.0, 360.0) + -180.0;
  if (v19 == -180.0)
  {
    goto LABEL_2;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = fabs(v19);
    v18 = 180.0;
    v23 = fabs(v19 + 180.0);
    if (v22 < 180.0)
    {
      v22 = 180.0;
    }

    if (v22 < 1.0)
    {
      v22 = 1.0;
    }

    if (v23 <= v22 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

LABEL_3:
  if (v19 == 0.0)
  {
    v20 = 1;
  }

  else if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v24 = fabs(v19);
    v25 = 1.0;
    if (v24 >= 1.0)
    {
      v25 = v24;
    }

    v20 = v24 <= v25 * 2.22044605e-16;
  }

  else
  {
    v20 = 0;
  }

  v26 = vabdd_f64(v12, v16);
  v27 = 180.0;
  if (v26 == 180.0)
  {
    goto LABEL_26;
  }

  v28 = v12 - v16;
  if (COERCE__INT64(fabs(v12 - v16)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = fabs(v26 + -180.0);
    v27 = 180.0;
    if (v26 < 180.0)
    {
      v26 = 180.0;
    }

    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    if (v30 <= v26 * 2.22044605e-16)
    {
      goto LABEL_26;
    }
  }

  v27 = 180.0;
  if (v28 <= 180.0)
  {
    if (v28 >= -180.0)
    {
      goto LABEL_27;
    }

    v27 = fmod(v28 + -180.0, 360.0) + 180.0;
LABEL_26:
    v28 = v27;
    goto LABEL_27;
  }

  v28 = fmod(v28 + 180.0, 360.0) + -180.0;
  if (v28 == -180.0)
  {
    goto LABEL_26;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v31 = fabs(v28);
    v27 = 180.0;
    v32 = fabs(v28 + 180.0);
    if (v31 < 180.0)
    {
      v31 = 180.0;
    }

    if (v31 < 1.0)
    {
      v31 = 1.0;
    }

    if (v32 <= v31 * 2.22044605e-16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  if (v28 == 0.0)
  {
    v29 = 1;
  }

  else if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v33 = fabs(v28);
    v34 = 1.0;
    if (v33 >= 1.0)
    {
      v34 = v33;
    }

    v29 = v33 <= v34 * 2.22044605e-16;
  }

  else
  {
    v29 = 0;
  }

  v35 = v12 + dbl_101C8BCD0[v12 <= 0.0];
  if (v20)
  {
    goto LABEL_50;
  }

  v37 = vabdd_f64(v35, v14);
  v38 = 180.0;
  if (v37 == 180.0)
  {
    goto LABEL_52;
  }

  v39 = v35 - v14;
  if (COERCE__INT64(fabs(v35 - v14)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v56 = fabs(v37 + -180.0);
    v38 = 180.0;
    if (v37 < 180.0)
    {
      v37 = 180.0;
    }

    if (v37 < 1.0)
    {
      v37 = 1.0;
    }

    if (v56 <= v37 * 2.22044605e-16)
    {
      goto LABEL_52;
    }
  }

  v38 = 180.0;
  if (v39 > 180.0)
  {
    v39 = fmod(v39 + 180.0, 360.0) + -180.0;
    if (v39 != -180.0)
    {
      if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      v57 = fabs(v39);
      v38 = 180.0;
      v58 = fabs(v39 + 180.0);
      if (v57 < 180.0)
      {
        v57 = 180.0;
      }

      if (v57 < 1.0)
      {
        v57 = 1.0;
      }

      if (v58 > v57 * 2.22044605e-16)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_52;
  }

  if (v39 < -180.0)
  {
    v38 = fmod(v39 + -180.0, 360.0) + 180.0;
LABEL_52:
    v39 = v38;
  }

LABEL_53:
  if (v39 == 0.0)
  {
    goto LABEL_54;
  }

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v59 = fabs(v39);
    v60 = 1.0;
    if (v59 >= 1.0)
    {
      v60 = v59;
    }

    if (v59 <= v60 * 2.22044605e-16)
    {
LABEL_54:
      v36 = 0;
      goto LABEL_55;
    }
  }

  v61 = fabs(v13);
  if (v61 != 90.0)
  {
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v84 = fabs(v61 + -90.0);
      if (v61 < 90.0)
      {
        v61 = 90.0;
      }

      if (v61 < 1.0)
      {
        v61 = 1.0;
      }

      v40 = v84 <= v61 * 2.22044605e-16;
    }

    else
    {
      v40 = 0;
    }

    v36 = 1;
    goto LABEL_56;
  }

LABEL_50:
  v36 = 1;
LABEL_55:
  v40 = 1;
LABEL_56:
  *a5 = v40;
  if (v29)
  {
    goto LABEL_57;
  }

  v42 = vabdd_f64(v35, v16);
  v43 = 180.0;
  if (v42 == 180.0)
  {
    goto LABEL_59;
  }

  v44 = v35 - v16;
  if (COERCE__INT64(fabs(v35 - v16)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v62 = fabs(v42 + -180.0);
    v43 = 180.0;
    if (v42 < 180.0)
    {
      v42 = 180.0;
    }

    if (v42 < 1.0)
    {
      v42 = 1.0;
    }

    if (v62 <= v42 * 2.22044605e-16)
    {
      goto LABEL_59;
    }
  }

  v43 = 180.0;
  if (v44 <= 180.0)
  {
    if (v44 >= -180.0)
    {
      goto LABEL_60;
    }

    v43 = fmod(v44 + -180.0, 360.0) + 180.0;
    goto LABEL_59;
  }

  v44 = fmod(v44 + 180.0, 360.0) + -180.0;
  if (v44 == -180.0)
  {
    goto LABEL_59;
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v63 = fabs(v44);
    v43 = 180.0;
    v64 = fabs(v44 + 180.0);
    if (v63 < 180.0)
    {
      v63 = 180.0;
    }

    if (v63 < 1.0)
    {
      v63 = 1.0;
    }

    if (v64 <= v63 * 2.22044605e-16)
    {
LABEL_59:
      v44 = v43;
    }
  }

LABEL_60:
  if (v44 == 0.0)
  {
    goto LABEL_61;
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v65 = fabs(v44);
    v66 = 1.0;
    if (v65 >= 1.0)
    {
      v66 = v65;
    }

    if (v65 <= v66 * 2.22044605e-16)
    {
LABEL_61:
      v41 = 0;
      goto LABEL_62;
    }
  }

  v67 = fabs(v15);
  if (v67 == 90.0)
  {
LABEL_57:
    v41 = 1;
LABEL_62:
    v45 = 1;
    goto LABEL_63;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v85 = fabs(v67 + -90.0);
    if (v67 < 90.0)
    {
      v67 = 90.0;
    }

    if (v67 < 1.0)
    {
      v67 = 1.0;
    }

    v45 = v85 <= v67 * 2.22044605e-16;
  }

  else
  {
    v45 = 0;
  }

  v41 = 1;
LABEL_63:
  *a6 = v45;
  v46 = vabdd_f64(v16, v14);
  v47 = 180.0;
  if (v46 == 180.0)
  {
    goto LABEL_64;
  }

  v48 = v16 - v14;
  if (COERCE__INT64(fabs(v16 - v14)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v51 = fabs(v46 + -180.0);
    v47 = 180.0;
    if (v46 < 180.0)
    {
      v46 = 180.0;
    }

    if (v46 < 1.0)
    {
      v46 = 1.0;
    }

    if (v51 <= v46 * 2.22044605e-16)
    {
      goto LABEL_64;
    }
  }

  v47 = 180.0;
  if (v48 <= 180.0)
  {
    if (v48 >= -180.0)
    {
      goto LABEL_65;
    }

    v47 = fmod(v48 + -180.0, 360.0) + 180.0;
LABEL_64:
    v48 = v47;
    goto LABEL_65;
  }

  v52 = fmod(v48 + 180.0, 360.0);
  v48 = v52 + -180.0;
  if (v52 + -180.0 == -180.0)
  {
    goto LABEL_64;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v52 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v53 = fabs(v48);
    v47 = 180.0;
    v54 = fabs(v48 + 180.0);
    if (v53 < 180.0)
    {
      v53 = 180.0;
    }

    if (v53 < 1.0)
    {
      v53 = 1.0;
    }

    if (v54 <= v53 * 2.22044605e-16)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  if (v48 == 180.0)
  {
    *a7 = 1;
LABEL_67:
    v49 = *a5 || *a6;
    *a6 = v49;
    *a5 = v49;
    v50 = fabs(v11);
    if (v50 == 90.0)
    {
      goto LABEL_68;
    }

    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v55 = fabs(v50 + -90.0);
      if (v50 < 90.0)
      {
        v50 = 90.0;
      }

      if (v50 < 1.0)
      {
        v50 = 1.0;
      }

      if (v55 <= v50 * 2.22044605e-16)
      {
LABEL_68:
        *a6 = 1;
        *a5 = 1;
      }
    }

    goto LABEL_142;
  }

  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    *a7 = 0;
    goto LABEL_142;
  }

  v68 = fabs(v48);
  v69 = fabs(v48 + -180.0);
  if (v68 < 180.0)
  {
    v68 = 180.0;
  }

  if (v68 < 1.0)
  {
    v68 = 1.0;
  }

  v70 = v68 * 2.22044605e-16;
  *a7 = v69 <= v70;
  if (v69 <= v70)
  {
    goto LABEL_67;
  }

LABEL_142:
  if (*a5 && *a6)
  {
    if (*a7)
    {
      if (180.0 - v13 - v15 <= 180.0)
      {
        if ((v13 > v11 || !v20) && (v15 > v11 || !v29))
        {
          v80 = 90.0;
          if (v11 != 90.0)
          {
            v81 = fabs(v11);
            if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_224;
            }

            v82 = fabs(v11 + -90.0);
            if (v81 >= 90.0)
            {
              v83 = v81;
            }

            else
            {
              v83 = 90.0;
            }

            if (v83 < 1.0)
            {
              v83 = 1.0;
            }

            if (v82 > v83 * 2.22044605e-16)
            {
LABEL_224:
              if (!v20 && !v29)
              {
                if (v11 == -90.0)
                {
                  return 0;
                }

                if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v86 = fabs(v11 + 90.0);
                  if (v81 >= 90.0)
                  {
                    v80 = v81;
                  }

                  if (v80 < 1.0)
                  {
                    v80 = 1.0;
                  }

                  if (v86 <= v80 * 2.22044605e-16)
                  {
                    return 0;
                  }
                }
              }

              return 1;
            }
          }
        }
      }

      else if (v13 < v11 || !v20)
      {
        v72 = v15 >= v11 && v29;
        if (!v72 && v11 != -90.0)
        {
          v73 = fabs(v11);
          if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_168;
          }

          v74 = 90.0;
          v75 = fabs(v11 + 90.0);
          if (v73 >= 90.0)
          {
            v74 = v73;
          }

          if (v74 < 1.0)
          {
            v74 = 1.0;
          }

          if (v75 > v74 * 2.22044605e-16)
          {
LABEL_168:
            if (!v20 && !v29)
            {
              if (v11 == 90.0)
              {
                return 0;
              }

              if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v76 = fabs(v11 + -90.0);
                if (v73 < 90.0)
                {
                  v73 = 90.0;
                }

                if (v73 < 1.0)
                {
                  v73 = 1.0;
                }

                if (v76 <= v73 * 2.22044605e-16)
                {
                  return 0;
                }
              }
            }

            return 1;
          }
        }
      }
    }

    else if ((v13 > v11 || v15 < v11) && (v15 > v11 || v13 < v11) || ((v36 | v41) & 1) == 0)
    {
      return 1;
    }

    *(a4 + 16) = 1;
    return 1;
  }

  return 0;
}

unint64_t sub_10073152C(double *a1, double *a2, double *a3, int a4, int a5, int a6)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = vabdd_f64(*a1, *a2);
  v13 = 180.0;
  if (v12 != 180.0)
  {
    v14 = v9 - v10;
    if (COERCE__INT64(fabs(v9 - v10)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }

    v37 = fabs(v12 + -180.0);
    v13 = 180.0;
    if (v12 < 180.0)
    {
      v12 = 180.0;
    }

    if (v12 < 1.0)
    {
      v12 = 1.0;
    }

    if (v37 > v12 * 2.22044605e-16)
    {
LABEL_50:
      v13 = 180.0;
      if (v14 <= 180.0)
      {
        if (v14 >= -180.0)
        {
          goto LABEL_3;
        }

        v13 = fmod(v14 + -180.0, 360.0) + 180.0;
      }

      else
      {
        v38 = fmod(v14 + 180.0, 360.0);
        v14 = v38 + -180.0;
        if (v38 + -180.0 != -180.0)
        {
          if (COERCE_UNSIGNED_INT64(fabs(v38 + -180.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_3;
          }

          v39 = fabs(v14);
          v13 = 180.0;
          v40 = fabs(v14 + 180.0);
          if (v39 < 180.0)
          {
            v39 = 180.0;
          }

          if (v39 < 1.0)
          {
            v39 = 1.0;
          }

          if (v40 > v39 * 2.22044605e-16)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  v14 = v13;
LABEL_3:
  if (a6)
  {
    v15 = 0;
    v16 = v14 < 0.0;
    goto LABEL_5;
  }

  v18 = vabdd_f64(v11, v10);
  v19 = 180.0;
  if (v18 == 180.0)
  {
    goto LABEL_9;
  }

  v20 = v11 - v10;
  if (COERCE__INT64(fabs(v11 - v10)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v46 = fabs(v18 + -180.0);
    v19 = 180.0;
    if (v18 < 180.0)
    {
      v18 = 180.0;
    }

    if (v18 < 1.0)
    {
      v18 = 1.0;
    }

    if (v46 <= v18 * 2.22044605e-16)
    {
      goto LABEL_9;
    }
  }

  v19 = 180.0;
  if (v20 <= 180.0)
  {
    if (v20 >= -180.0)
    {
      goto LABEL_10;
    }

    v19 = fmod(v20 + -180.0, 360.0) + 180.0;
    goto LABEL_9;
  }

  v47 = fmod(v20 + 180.0, 360.0);
  v20 = v47 + -180.0;
  if (v47 + -180.0 == -180.0)
  {
    goto LABEL_9;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v47 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v48 = fabs(v20);
    v19 = 180.0;
    v49 = fabs(v20 + 180.0);
    if (v48 < 180.0)
    {
      v48 = 180.0;
    }

    if (v48 < 1.0)
    {
      v48 = 1.0;
    }

    if (v49 <= v48 * 2.22044605e-16)
    {
LABEL_9:
      v20 = v19;
    }
  }

LABEL_10:
  if ((a4 & 1) == 0 && !a5)
  {
    if (v14 >= 0.0)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    if (v20 >= 0.0)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }

    if (v20 > 0.0)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23 == v21;
    if (v14 > 0.0)
    {
      v24 = v20 > 0.0;
    }

    v25 = fabs(v14);
    v26 = fabs(v20);
    if (v24 && v25 < v26)
    {
      v15 = 0;
      v16 = v20 < 0.0;
LABEL_5:
      if (v16)
      {
        v17 = 4294967294;
      }

      else
      {
        v17 = 2;
      }

      return v15 | v17;
    }

    v28 = 180.0;
    v29 = vabdd_f64(v9 + 180.0, v10);
    if (v29 != 180.0)
    {
      v30 = v9 + 180.0 - v10;
      if (COERCE_UNSIGNED_INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_111;
      }

      v53 = fabs(v29 + -180.0);
      v28 = 180.0;
      if (v29 < 180.0)
      {
        v29 = 180.0;
      }

      if (v29 < 1.0)
      {
        v29 = 1.0;
      }

      if (v53 > v29 * 2.22044605e-16)
      {
LABEL_111:
        v28 = 180.0;
        if (v30 <= 180.0)
        {
          if (v30 >= -180.0)
          {
            goto LABEL_29;
          }

          v28 = fmod(v30 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v30 = fmod(v30 + 180.0, 360.0) + -180.0;
          if (v30 != -180.0)
          {
            if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_29;
            }

            v54 = fabs(v30);
            v28 = 180.0;
            v55 = fabs(v30 + 180.0);
            if (v54 < 180.0)
            {
              v54 = 180.0;
            }

            if (v54 < 1.0)
            {
              v54 = 1.0;
            }

            if (v55 > v54 * 2.22044605e-16)
            {
              goto LABEL_29;
            }
          }
        }
      }
    }

    v30 = v28;
LABEL_29:
    v31 = v20 > 0.0;
    if (v30 >= 0.0)
    {
      v32 = 0;
    }

    else
    {
      v32 = -1;
    }

    v33 = v23 == v32;
    if (v30 <= 0.0)
    {
      v31 = v33;
    }

    v34 = fabs(v30);
    v35 = 2;
    if (v20 < 0.0)
    {
      v35 = 4294967294;
    }

    v36 = dword_100000000;
    if (v34 >= v26)
    {
      v35 = 0;
      v36 = 0;
    }

    if (v31)
    {
      v17 = v35;
    }

    else
    {
      v17 = 0;
    }

    if (v31)
    {
      v15 = v36;
    }

    else
    {
      v15 = 0;
    }

    return v15 | v17;
  }

  if (v20 >= 0.0)
  {
    v17 = 1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  v41 = 180.0;
  v42 = v9 + 180.0;
  if (a4)
  {
    v43 = v10;
  }

  else
  {
    v43 = v11;
  }

  v44 = vabdd_f64(v43, v42);
  if (v44 == 180.0)
  {
    goto LABEL_66;
  }

  v45 = v43 - v42;
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v50 = fabs(v44 + -180.0);
    v41 = 180.0;
    if (v44 < 180.0)
    {
      v44 = 180.0;
    }

    if (v44 < 1.0)
    {
      v44 = 1.0;
    }

    if (v50 <= v44 * 2.22044605e-16)
    {
      goto LABEL_66;
    }
  }

  v41 = 180.0;
  if (v45 > 180.0)
  {
    v45 = fmod(v45 + 180.0, 360.0) + -180.0;
    if (v45 != -180.0)
    {
      if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      v51 = fabs(v45);
      v41 = 180.0;
      v52 = fabs(v45 + 180.0);
      if (v51 < 180.0)
      {
        v51 = 180.0;
      }

      if (v51 < 1.0)
      {
        v51 = 1.0;
      }

      if (v52 > v51 * 2.22044605e-16)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_66;
  }

  if (v45 < -180.0)
  {
    v41 = fmod(v45 + -180.0, 360.0) + 180.0;
LABEL_66:
    v45 = v41;
  }

LABEL_67:
  if (v45 == 0.0)
  {
    v15 = dword_100000000;
  }

  else if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v56 = fabs(v45);
    v57 = 1.0;
    if (v56 >= 1.0)
    {
      v57 = v56;
    }

    v15 = (v56 <= v57 * 2.22044605e-16) << 32;
  }

  else
  {
    v15 = 0;
  }

  return v15 | v17;
}

uint64_t sub_100731AF8(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  v11 = __sincos_stret(*a2);
  v12 = __sincos_stret(*a1);
  v13 = __sincos_stret(*a4);
  v14 = __sincos_stret(*a3);
  v15 = __sincos_stret(*a6);
  v16 = __sincos_stret(*a5);
  v17 = v16.__sinval * (v15.__cosval * (v11.__sinval * (v13.__cosval * v14.__cosval) - v11.__cosval * v12.__cosval * v13.__sinval)) + v15.__cosval * (v11.__cosval * v12.__sinval * v13.__sinval - v11.__sinval * (v13.__cosval * v14.__sinval)) * v16.__cosval + (v11.__cosval * v12.__cosval * (v13.__cosval * v14.__sinval) - v11.__cosval * v12.__sinval * (v13.__cosval * v14.__cosval)) * v15.__sinval;
  if (v17 == 0.0)
  {
    return 0;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v16.__sinval * (v15.__cosval * (v11.__sinval * (v13.__cosval * v14.__cosval) - v11.__cosval * v12.__cosval * v13.__sinval)) + v15.__cosval * (v11.__cosval * v12.__sinval * v13.__sinval - v11.__sinval * (v13.__cosval * v14.__sinval)) * v16.__cosval + (v11.__cosval * v12.__cosval * (v13.__cosval * v14.__sinval) - v11.__cosval * v12.__sinval * (v13.__cosval * v14.__cosval)) * v15.__sinval)) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    v20 = 1.0;
    if (v19 >= 1.0)
    {
      v20 = v19;
    }

    v21 = v20 * 2.22044605e-16;
    if (v17 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v19 <= v21)
    {
      return 0;
    }
  }

  else if (v17 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100731C50(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_100731CAC(&v4);
  v4 = (a1 + 48);
  sub_100731CAC(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100731CAC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100731D00(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100731D00(void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v7 = v4;
      sub_1002EC52C(&v7);
      v5 = *(v4 - 3);
      if (v5)
      {
        *(v4 - 2) = v5;
        operator delete(v5);
      }

      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v6 = v4 - 8;
      v4 -= 11;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

void *sub_100731D80(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10038EBB4(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

_BYTE *sub_100731EAC(_BYTE *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_100731F28(__dst + 24, a3);
  return __dst;
}

void sub_100731F0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100731F28(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = 0;
  v6 = a2 + 56;
  do
  {
    v7 = &__dst[v5];
    v8 = *(v6 + v5 - 32);
    v9 = *(v6 + v5 - 16);
    *&__dst[v5 + 48] = 0;
    v10 = &__dst[v5 + 48];
    *(v10 - 8) = v9;
    *(v10 - 24) = v8;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    sub_10038EB38(v10, *(v6 + v5 - 8), *(v6 + v5), (*(v6 + v5) - *(v6 + v5 - 8)) >> 2);
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    v11 = &__dst[v5 + 72];
    *(v11 + 2) = 0;
    sub_1007320E8(v11, *(v6 + v5 + 16), *(v6 + v5 + 24), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + v5 + 24) - *(v6 + v5 + 16)) >> 3));
    v12 = &__dst[v5];
    *(v12 + 12) = 0;
    *(v12 + 13) = 0;
    v13 = &__dst[v5 + 96];
    *(v13 + 2) = 0;
    sub_1007320E8(v13, *(v6 + v5 + 40), *(v6 + v5 + 48), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + v5 + 48) - *(v6 + v5 + 40)) >> 3));
    v5 += 96;
  }

  while (v5 != 384);
  v14 = *(a2 + 408);
  v15 = *(a2 + 440);
  *(__dst + 424) = *(a2 + 424);
  *(__dst + 440) = v15;
  *(__dst + 408) = v14;
  v16 = *(a2 + 456);
  v17 = *(a2 + 472);
  v18 = *(a2 + 504);
  *(__dst + 488) = *(a2 + 488);
  *(__dst + 504) = v18;
  *(__dst + 456) = v16;
  *(__dst + 472) = v17;
  v19 = *(a2 + 520);
  v20 = *(a2 + 536);
  v21 = *(a2 + 552);
  *(__dst + 142) = *(a2 + 142);
  *(__dst + 536) = v20;
  *(__dst + 552) = v21;
  *(__dst + 520) = v19;
  return __dst;
}

void sub_100732078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    v13 = v10 + v11 - 72;
    v14 = -v11;
    do
    {
      v13 = sub_100731C50(v13) - 96;
      v14 += 96;
    }

    while (v14);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007320E8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100732170(result, a4);
  }

  return result;
}

void sub_100732150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100731CAC(&a9);
  _Unwind_Resume(a1);
}

void sub_100732170(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_100730010(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007321C0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 1;
    do
    {
      v8 = v6 - 1;
      v7 = *(v6 - 2);
      *(v4 + 8) = *(v6 - 8);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        sub_100007244((v4 + 16), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v9;
      }

      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      sub_1004BF900(v4 + 40, *(v6 + 3), *(v6 + 4), (*(v6 + 4) - *(v6 + 3)) >> 4);
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      sub_10072FE9C(v4 + 64, *(v6 + 6), *(v6 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 7) - *(v6 + 6)) >> 3));
      v4 = v14 + 88;
      v14 += 88;
      v6 = (v6 + 88);
    }

    while ((v8 + 88) != a3);
  }

  v12 = 1;
  sub_100730198(v11);
  return v4;
}

uint64_t sub_100732318(uint64_t a1)
{
  for (i = 0; i != -384; i -= 96)
  {
    v5 = (a1 + i + 408);
    sub_100731CAC(&v5);
    v5 = (a1 + i + 384);
    sub_100731CAC(&v5);
    v3 = *(a1 + i + 360);
    if (v3)
    {
      *(a1 + i + 368) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007323B0(uint64_t a1)
{
  for (i = 0; i != -384; i -= 96)
  {
    v5 = (a1 + i + 384);
    sub_100731CAC(&v5);
    v5 = (a1 + i + 360);
    sub_100731CAC(&v5);
    v3 = *(a1 + i + 336);
    if (v3)
    {
      *(a1 + i + 344) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100732438(uint64_t *a1, char ***a2, char ***a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1007325E0(a1);
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

      sub_100732170(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 3) >= a4)
  {
    sub_100732620(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = (v14 - 24);
      do
      {
        v20 = v15;
        sub_1002EC52C(&v20);
        v16 = *(v15 - 3);
        if (v16)
        {
          *(v15 - 2) = v16;
          operator delete(v16);
        }

        if (*(v15 - 25) < 0)
        {
          operator delete(*(v15 - 6));
        }

        v17 = v15 - 8;
        v15 -= 11;
      }

      while (v17 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_100732620(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_1007321C0(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1007325E0(uint64_t a1)
{
  if (*a1)
  {
    sub_100731D00(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

char ***sub_100732620(uint64_t a1, char ***a2, char ***a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 9;
  do
  {
    v8 = v6 - 9;
    v7 = *(v6 - 9);
    *(a4 + 8) = *(v6 - 64);
    *a4 = v7;
    std::string::operator=((a4 + 16), (v6 - 7));
    if (a4 != v6 - 9)
    {
      sub_1006BA434((a4 + 40), *(v6 - 4), *(v6 - 3), (*(v6 - 3) - *(v6 - 4)) >> 4);
      sub_1007326E0((a4 + 64), *(v6 - 1), *v6, 0xAAAAAAAAAAAAAAABLL * (*v6 - *(v6 - 1)));
    }

    a4 += 88;
    v6 += 11;
  }

  while (v8 + 11 != v5);
  return v5;
}

void sub_1007326E0(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1002EC750(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1002887D4(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_100732858(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_100732858(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_10072FF24(a1, (a2 + v11), a3, a1[1]);
  }
}

char **sub_100732858(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_1006BA434(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1007328C8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007328C8(a1, *a2);
    sub_1007328C8(a1, *(a2 + 1));
    v4 = 384;
    do
    {
      v6 = &a2[v4 + 56];
      sub_100731CAC(&v6);
      v6 = &a2[v4 + 32];
      sub_100731CAC(&v6);
      v5 = *&a2[v4 + 8];
      if (v5)
      {
        *&a2[v4 + 16] = v5;
        operator delete(v5);
      }

      v4 -= 96;
    }

    while (v4);
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_100732A0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100732AE0(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100732A28(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100007244(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  bzero(__dst + 24, 0x240uLL);
  for (i = 0; i != 384; i += 96)
  {
    v6 = &__dst[i];
    v6[48] = 0;
    *(v6 + 7) = 0xBFF0000000000000;
    v6[64] = 0;
    *(v6 + 72) = 0uLL;
    *(v6 + 88) = 0uLL;
    *(v6 + 104) = 0uLL;
    *(v6 + 120) = 0uLL;
    *(v6 + 17) = 0;
  }

  sub_10022F21C((__dst + 432));
  return __dst;
}

void sub_100732AE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 440);
    v4 = -384;
    do
    {
      v6 = v3;
      sub_100731CAC(&v6);
      v6 = v3 - 3;
      sub_100731CAC(&v6);
      v5 = *(v3 - 6);
      if (v5)
      {
        *(v3 - 5) = v5;
        operator delete(v5);
      }

      v3 -= 12;
      v4 += 96;
    }

    while (v4);
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_100732B8C(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_100732D00()
{
  sub_10000EC00(&xmmword_102659418, "RoadAndBuildingPrecachingEnabled");
  __cxa_atexit(&std::string::~string, &xmmword_102659418, dword_100000000);
  sub_10000EC00(byte_102659430, "RoadTilesRadiusInMetersHome");
  __cxa_atexit(&std::string::~string, byte_102659430, dword_100000000);
  sub_10000EC00(byte_102659448, "BuildingTilesRadiusInMetersHome");
  __cxa_atexit(&std::string::~string, byte_102659448, dword_100000000);
  sub_10000EC00(byte_102659460, "RunningTrackTilesRadiusInMetersHome");
  __cxa_atexit(&std::string::~string, byte_102659460, dword_100000000);
  sub_10000EC00(byte_102659478, "RoadTilesRadiusInMetersWork");
  __cxa_atexit(&std::string::~string, byte_102659478, dword_100000000);
  sub_10000EC00(byte_102659490, "BuildingTilesRadiusInMetersWork");
  __cxa_atexit(&std::string::~string, byte_102659490, dword_100000000);
  sub_10000EC00(byte_1026594A8, "RunningTrackTilesRadiusInMetersWork");
  __cxa_atexit(&std::string::~string, byte_1026594A8, dword_100000000);
  sub_10000EC00(byte_1026594C0, "RoadTilesRadiusInMetersSchool");
  __cxa_atexit(&std::string::~string, byte_1026594C0, dword_100000000);
  sub_10000EC00(byte_1026594D8, "BuildingTilesRadiusInMetersSchool");
  __cxa_atexit(&std::string::~string, byte_1026594D8, dword_100000000);
  sub_10000EC00(byte_1026594F0, "RunningTrackTilesRadiusInMetersSchool");
  __cxa_atexit(&std::string::~string, byte_1026594F0, dword_100000000);
  sub_10000EC00(&xmmword_102659508, "PrecachingTileRefreshPeriodV2");
  __cxa_atexit(&std::string::~string, &xmmword_102659508, dword_100000000);
  sub_10000EC00(&xmmword_102659520, "PrecachingTileRefreshPeriodNPLOIAndTouristV2");
  __cxa_atexit(&std::string::~string, &xmmword_102659520, dword_100000000);
  sub_10000EC00(&xmmword_102659538, "PrecachingMinimumBatteryLevel");
  __cxa_atexit(&std::string::~string, &xmmword_102659538, dword_100000000);
  sub_10000EC00(&xmmword_102659550, "PrecachingMinimumBatteryLevelAggressiveMode");
  __cxa_atexit(&std::string::~string, &xmmword_102659550, dword_100000000);
  sub_10000EC00(&xmmword_102659568, "PrecachingXPCDownloadInterval");
  __cxa_atexit(&std::string::~string, &xmmword_102659568, dword_100000000);
  sub_10000EC00(&xmmword_102659580, "PrecachingDownloadSizePerSection");
  __cxa_atexit(&std::string::~string, &xmmword_102659580, dword_100000000);
  sub_10000EC00(&xmmword_102659598, "PrecachingUploadSizePerSection");
  __cxa_atexit(&std::string::~string, &xmmword_102659598, dword_100000000);
  sub_10000EC00(&xmmword_1026595B0, "PrecachingDownloadTimePerSection");
  __cxa_atexit(&std::string::~string, &xmmword_1026595B0, dword_100000000);
  sub_10000EC00(&xmmword_1026595C8, "UseInsideOutTileDownload");
  __cxa_atexit(&std::string::~string, &xmmword_1026595C8, dword_100000000);
  sub_10000EC00(&xmmword_1026595E0, "IsDiskIntensiveActivity");
  __cxa_atexit(&std::string::~string, &xmmword_1026595E0, dword_100000000);
  sub_10000EC00(&qword_1026595F8, "PrecachingAllowSignalEnvironmentMode");
  __cxa_atexit(&std::string::~string, &qword_1026595F8, dword_100000000);
  sub_10000EC00(byte_102659610, "RoadTileDownloadRadiusSE");
  __cxa_atexit(&std::string::~string, byte_102659610, dword_100000000);
  sub_10000EC00(byte_102659628, "BuildingTileDownloadRadiusSE");
  __cxa_atexit(&std::string::~string, byte_102659628, dword_100000000);
  sub_10000EC00(byte_102659640, "RunningTrackTileDownloadRadiusSE");
  __cxa_atexit(&std::string::~string, byte_102659640, dword_100000000);
  sub_10000EC00(&qword_102659658, "PrecachingAllowAggressiveSettingInTouristMode");
  __cxa_atexit(&std::string::~string, &qword_102659658, dword_100000000);
  sub_10000EC00(byte_102659670, "RoadTileDownloadRadiusTouristSE");
  __cxa_atexit(&std::string::~string, byte_102659670, dword_100000000);
  sub_10000EC00(byte_102659688, "BuildingTileDownloadRadiusTouristSE");
  __cxa_atexit(&std::string::~string, byte_102659688, dword_100000000);
  sub_10000EC00(byte_1026596A0, "RunningTrackTileDownloadRadiusTouristSE");
  __cxa_atexit(&std::string::~string, byte_1026596A0, dword_100000000);
  sub_10000EC00(&xmmword_1026596B8, "MaxSectionDownloadAllowedForTouristSE");
  __cxa_atexit(&std::string::~string, &xmmword_1026596B8, dword_100000000);
  sub_10000EC00(&xmmword_1026596D0, "TimeWindowToCheckForMaxSectionDownloadForTouristSE");
  __cxa_atexit(&std::string::~string, &xmmword_1026596D0, dword_100000000);
  sub_10000EC00(&xmmword_1026596E8, "PrecachingAllowTouristMode");
  __cxa_atexit(&std::string::~string, &xmmword_1026596E8, dword_100000000);
  sub_10000EC00(byte_102659700, "RoadTilesRadiusInMetersTourist");
  __cxa_atexit(&std::string::~string, byte_102659700, dword_100000000);
  sub_10000EC00(byte_102659718, "BuildingTilesRadiusInMetersTourist");
  __cxa_atexit(&std::string::~string, byte_102659718, dword_100000000);
  sub_10000EC00(byte_102659730, "RunningTrackTilesRadiusInMetersTourist");
  __cxa_atexit(&std::string::~string, byte_102659730, dword_100000000);
  sub_10000EC00(&xmmword_102659748, "MaxLocationAgeForTouristMode");
  __cxa_atexit(&std::string::~string, &xmmword_102659748, dword_100000000);
  sub_10000EC00(&xmmword_102659760, "SectionsToDownloadPerXPCCall");
  __cxa_atexit(&std::string::~string, &xmmword_102659760, dword_100000000);
  sub_10000EC00(&xmmword_102659778, "SectionsToDownloadPerXPCCallForTourist");
  __cxa_atexit(&std::string::~string, &xmmword_102659778, dword_100000000);
  sub_10000EC00(&xmmword_102659790, "SectionsToDownloadPerXPCCallForNPLOI");
  __cxa_atexit(&std::string::~string, &xmmword_102659790, dword_100000000);
  sub_10000EC00(&xmmword_1026597A8, "SectionsToDownloadPerXPCCallForSignalEnvironment");
  __cxa_atexit(&std::string::~string, &xmmword_1026597A8, dword_100000000);
  sub_10000EC00(byte_1026597C0, "RoadTileDownloadRadiusNPLOI");
  __cxa_atexit(&std::string::~string, byte_1026597C0, dword_100000000);
  sub_10000EC00(byte_1026597D8, "BuildingTileDownloadRadiusNPLOI");
  __cxa_atexit(&std::string::~string, byte_1026597D8, dword_100000000);
  sub_10000EC00(byte_1026597F0, "RunningTrackTileDownloadRadiusNPLOI");
  __cxa_atexit(&std::string::~string, byte_1026597F0, dword_100000000);
  sub_10000EC00(&xmmword_102659808, "DistanceFromHomeForTouristModeMeters");
  __cxa_atexit(&std::string::~string, &xmmword_102659808, dword_100000000);
  sub_10000EC00(&xmmword_102659820, "NumDaysLookbackForWorkouts");

  return __cxa_atexit(&std::string::~string, &xmmword_102659820, dword_100000000);
}

void sub_100733598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_100734014(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_1007335D0(uint64_t a1)
{
  sub_100733760(a1);
  if (*(a1 + 88))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101920F50();
    }

    v2 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGCZ,destroy geocodec malloc zone,CLTrackRunGeoMapRunningTrackDataManager::~CLTrackRunGeoMapRunningTrackDataManager()", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920F64(buf);
      v4 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLTrackRunGeoMapRunningTrackDataManager::~CLTrackRunGeoMapRunningTrackDataManager()", "%s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    GEOResetGeoCodecsAllocator();

    *(a1 + 88) = 0;
  }

  sub_100734014(a1);
  return a1;
}

void sub_100733754(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100733760(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 0;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100733E10(v2);
    [*(a1 + 88) setAllowNetworkTileLoad:0];
    [*(a1 + 88) setAllowStaleData:1];
    [*(a1 + 88) setAllowOfflineData:1];
  }

  if (*(a1 + 112) == 1)
  {
    *(a1 + 112) = 0;
  }

  *(a1 + 144) = 0;
  if (*a1)
  {

    *a1 = 0;
  }
}

void sub_1007337F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if ([objc_msgSend(v3 "lanes")])
    {
      v5 = *(a1 + 32);

      [v5 addObject:v4];
    }

    else
    {
      if (qword_1025D41D0 != -1)
      {
        sub_101920FA8();
      }

      v7 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#cltm,Returned track has zero lanes", v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101921460();
      }
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101920FA8();
    }

    v6 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#cltm,RunningTrack data query was unsuccessful", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101921544();
    }
  }
}

void sub_100733940(uint64_t a1, _BYTE *a2, id *a3)
{
  v6 = *(a1 + 40);
  if (qword_1025D41D0 != -1)
  {
    sub_101920FA8();
  }

  v7 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    v23 = 134349312;
    *v24 = v8;
    *&v24[8] = 1026;
    LODWORD(v25) = a3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#cltm,Entered completionHandler,tracksFound,%{public}lu,wasFullDataQuery,%{public}d", &v23, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101921628(a1, a3);
    if (a3)
    {
LABEL_7:
      if (*(v6 + 144) == 1)
      {
        *(v6 + 144) = 0;
        if (!a2)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (qword_1025D41D0 != -1)
      {
        sub_101921098();
      }

      v9 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "#cltm,fFullDataQueryInProgress flag already false, not expected.", &v23, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10192183C();
        if (!a2)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

LABEL_26:
      if (!a2)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else if (a3)
  {
    goto LABEL_7;
  }

  if (*(v6 + 145) == 1)
  {
    *(v6 + 145) = 0;
    if (!a2)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101921098();
    }

    v10 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "#cltm,fSparseDataQueryInProgress flag already false, not expected.", &v23, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_26;
    }

    sub_101921758();
    if (!a2)
    {
      goto LABEL_33;
    }
  }

LABEL_27:
  if (qword_1025D41D0 != -1)
  {
    sub_101921098();
  }

  v11 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
  {
    v12 = [a2 code];
    v13 = [a2 domain];
    v14 = [a2 localizedDescription];
    v23 = 134349571;
    *v24 = v12;
    *&v24[8] = 2114;
    v25 = v13;
    v26 = 2113;
    v27 = v14;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#cltm,RunningTrack data query, error:%{public}lld (%{public}@) %{private}@", &v23, 0x20u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101921920(a2);
  }

LABEL_33:
  v15 = [*(a1 + 32) count];
  if (!a2 || v15)
  {
    sub_10129DD78(*(a1 + 48), *(a1 + 32), (a1 + 56), (a1 + 72), a3 ^ 1, a2 == 0);
    if (*(v6 + 144) & 1) != 0 || (*(v6 + 145))
    {
      if (qword_1025D41D0 != -1)
      {
        sub_101921098();
      }

      v20 = qword_1025D41D8;
      if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v6 + 144);
        v22 = *(v6 + 145);
        v23 = 67240448;
        *v24 = v21;
        *&v24[4] = 1026;
        *&v24[6] = v22;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#cltm,Cannot release CLTrackRunGeoMapRunningTrackDataManager os_transaction nor clear tiles from memory due to another ongoing query,fFullDataQueryInProgress,%{public}d,fSparseDataQueryInProgress,%{public}d", &v23, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        goto LABEL_48;
      }

      return;
    }

LABEL_57:
    sub_100733E10(*(v6 + 88));
    if (*v6)
    {

      *v6 = 0;
    }

    return;
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101921098();
  }

  v16 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#cltm,No track data obtained from the query", &v23, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101921A78();
  }

  if ((*(v6 + 144) & 1) == 0 && (*(v6 + 145) & 1) == 0)
  {
    goto LABEL_57;
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101921098();
  }

  v17 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(v6 + 144);
    v19 = *(v6 + 145);
    v23 = 67240448;
    *v24 = v18;
    *&v24[4] = 1026;
    *&v24[6] = v19;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#cltm,Cannot release CLTrackRunGeoMapRunningTrackDataManager os_transaction nor clear tiles from memory due to another ongoing query,fFullDataQueryInProgress,%{public}d,fSparseDataQueryInProgress,%{public}d", &v23, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_48:
    sub_101921B54((v6 + 144), v6);
  }
}

void sub_100733E10(void *a1)
{
  if (qword_1025D41D0 != -1)
  {
    sub_101920FA8();
  }

  v2 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#cltm,Clearing track tiles and destroying GeoCodec zone", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101921C4C();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 clearRunningTrackTiles];
  GEOResetGeoCodecsAllocator();
}

void sub_100733EE4(char *a1)
{
  if (*a1)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101920FA8();
    }

    v2 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1 + 8;
      if (a1[31] < 0)
      {
        v3 = *v3;
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#cltm,%s,os_transaction already taken, not taking another", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101921D28(a1);
    }
  }

  else
  {
    v4 = a1 + 8;
    if (a1[31] < 0)
    {
      v4 = *v4;
    }

    *a1 = [[CLOSTransaction alloc] initWithDescription:v4];
  }
}

uint64_t sub_100733FF8(uint64_t result, _OWORD *a2)
{
  v2 = *(result + 112);
  *(result + 96) = *a2;
  if ((v2 & 1) == 0)
  {
    *(result + 112) = 1;
  }

  return result;
}

uint64_t sub_100734014(uint64_t a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

BOOL sub_1007340BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10011E6AC(a2);
  v8 = v7;
  v10 = v9;
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);
  v13 = *(a2 + 24);
  sub_100AEA7C8(a2, v41);
  sub_1004ACED8(v41, v42);
  v14 = sub_10011FB70(v42, (a2 + 28));
  v16 = 0;
  v17 = 0.0;
  do
  {
    v17 = v17 + (*(a2 + 28 + v16) * *(a2 + 28 + v16));
    v16 += 4;
  }

  while (v16 != 12);
  v18 = sqrt(v14 * v14 + v15 * v15);
  *(a1 + 32) = *(a1 + 32) + v18;
  ++*(a1 + 40);
  *a1 = sqrtf(v17) + *a1;
  v19 = *(a1 + 8) + 1;
  *(a1 + 8) = v19;
  v20 = fabsf(((v8 * v12) + (v6 * v11)) + (v10 * v13)) + *(a1 + 16);
  *(a1 + 16) = v20;
  v21 = *(a1 + 24) + 1;
  *(a1 + 24) = v21;
  if (v19 >= 0x100)
  {
    if (v21)
    {
      v22 = v20 / v21;
    }

    else
    {
      v22 = 0.0;
    }

    v23 = *(a1 + 110);
    v24 = *(a1 + 112);
    v25 = *(a1 + 108);
    if (v25 + v23 >= v24)
    {
      v26 = *(a1 + 112);
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 4 * (v25 + v23 - v26) + 116) = v22;
    if (v24 <= v23)
    {
      if (v25 + 1 < v24)
      {
        LOWORD(v24) = 0;
      }

      *(a1 + 108) = v25 + 1 - v24;
    }

    else
    {
      *(a1 + 110) = v23 + 1;
    }

    *(a1 + 92) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    sub_100457CE4(a1 + 92);
    *(a3 + 12) = *(a1 + 96);
    v27 = *(a1 + 8);
    if (v27)
    {
      v28 = *a1 / v27;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = *(a1 + 66);
    v30 = *(a1 + 68);
    v31 = *(a1 + 64);
    if (v31 + v29 >= v30)
    {
      v32 = *(a1 + 68);
    }

    else
    {
      v32 = 0;
    }

    *(a1 + 4 * (v31 + v29 - v32) + 72) = v28;
    if (v30 <= v29)
    {
      if (v31 + 1 < v30)
      {
        LOWORD(v30) = 0;
      }

      *(a1 + 64) = v31 + 1 - v30;
    }

    else
    {
      *(a1 + 66) = v29 + 1;
    }

    *(a1 + 48) = 1;
    *a1 = 0;
    *(a1 + 8) = 0;
    sub_100457CE4(a1 + 48);
    *(a3 + 8) = *(a1 + 52);
    v33 = *(a1 + 40);
    if (v33)
    {
      v34 = *(a1 + 32) / v33;
    }

    else
    {
      v34 = 0.0;
    }

    v35 = fabsf(v34);
    v36 = *(a1 + 154);
    v37 = *(a1 + 156);
    v38 = *(a1 + 152);
    if (v38 + v36 >= v37)
    {
      v39 = *(a1 + 156);
    }

    else
    {
      v39 = 0;
    }

    *(a1 + 4 * (v38 + v36 - v39) + 160) = v35;
    if (v37 <= v36)
    {
      if (v38 + 1 < v37)
      {
        LOWORD(v37) = 0;
      }

      *(a1 + 152) = v38 + 1 - v37;
    }

    else
    {
      *(a1 + 154) = v36 + 1;
    }

    *(a1 + 136) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    sub_100457CE4(a1 + 136);
    *(a3 + 16) = *(a1 + 140);
    *a3 = *(a2 + 48);
  }

  return v19 > 0xFF;
}

int32x2_t *sub_100734394(int32x2_t *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = a2[1];
    *__dst->i8 = v3;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  __dst[6] = vdup_n_s32(0xC61C3C00);
  __dst[7].i32[0] = -971228160;
  __dst[8] = 0xBFF0000000000000;
  return __dst;
}

id sub_100735090(int a1, unsigned int *a2, void *__src, void *a4)
{
  v5 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  return [a4 onStepNotification:v5 data:__dst];
}

void sub_1007350E4(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v6 = *(a3 + 144);
  v13[8] = *(a3 + 128);
  v13[9] = v6;
  *v14 = *(a3 + 160);
  *&v14[15] = *(a3 + 175);
  v7 = *(a3 + 80);
  v13[4] = *(a3 + 64);
  v13[5] = v7;
  v8 = *(a3 + 112);
  v13[6] = *(a3 + 96);
  v13[7] = v8;
  v9 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v9;
  v10 = *(a3 + 48);
  v13[2] = *(a3 + 32);
  v13[3] = v10;
  v16 = 0;
  v15 = 0;
  v11 = *(a3 + 191);
  v12 = *(a3 + 199);
  v17 = 0;
  sub_10001676C(&v15, v11, v12, v12 - v11);
  [a4 onFallSnippetNotification:v5 data:v13];
  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_100735194(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 191);
  if (v3)
  {
    *(v1 + 199) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007351B0(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v11[8] = a3[8];
  v11[9] = v5;
  v11[10] = a3[10];
  v6 = a3[5];
  v11[4] = a3[4];
  v11[5] = v6;
  v7 = a3[7];
  v11[6] = a3[6];
  v11[7] = v7;
  v8 = a3[1];
  v11[0] = *a3;
  v11[1] = v8;
  v9 = a3[3];
  v11[2] = a3[2];
  v11[3] = v9;
  return [a4 onCatherineNotification:v4 data:v11];
}

void sub_100735C28(uint64_t a1, _xpc_activity_s *a2)
{
  [*(a1 + 32) onAppUninstallationCheckActivity:a2];
  if (xpc_activity_get_state(a2) == 2 && !xpc_activity_set_state(a2, 4))
  {
    if (qword_1025D44B0 != -1)
    {
      sub_101922714();
    }

    v3 = qword_1025D44B8;
    if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_FAULT))
    {
      v4 = 136446466;
      v5 = "com.apple.locationd.AppUninstallationCheck";
      v6 = 2050;
      state = xpc_activity_get_state(a2);
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Continue. Current state is %{public}ld", &v4, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101922CFC();
    }
  }
}

void sub_100736008(uint64_t a1, void *a2)
{
  v3 = (a1 + 40);
  if (([*(a1 + 32) deferXpcActivityIfNecessary:*(a1 + 40)] & 1) == 0)
  {
    v13 = v3;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v14 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if (qword_1025D44B0 != -1)
          {
            sub_101922E08();
          }

          v9 = qword_1025D44B8;
          if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "App deleted: %@", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101922E30(&v22, v8, &v23);
          }

          if ([objc_msgSend(v8 "pathExtension")])
          {
            v8 = [v8 stringByDeletingPathExtension];
          }

          v10 = sub_100E4F678();
          sub_100E51774(v10, v8);
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [a2 countByEnumeratingWithState:&v14 objects:v24 count:16];
      }

      while (v5);
    }

    if (!xpc_activity_set_state(*v13, 5))
    {
      if (qword_1025D44B0 != -1)
      {
        sub_101922E08();
      }

      v11 = qword_1025D44B8;
      if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_FAULT))
      {
        state = xpc_activity_get_state(*v13);
        *buf = 136446466;
        v19 = "com.apple.locationd.AppUninstallationCheck";
        v20 = 2050;
        v21 = state;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Failed to mark %{public}s activity as Done. Current state is %{public}ld", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101922F38();
      }
    }
  }
}

Class sub_1007389F8()
{
  sub_100738A38();
  result = objc_getClass("SRSensorWriter");
  qword_102659988 = result;
  off_1025D81A0 = sub_100738A8C;
  return result;
}

void *sub_100738A38()
{
  result = qword_102659990;
  if (!qword_102659990)
  {
    result = dlopen("/System/Library/Frameworks/SensorKit.framework/SensorKit", 2);
    qword_102659990 = result;
    if (!result)
    {
      result = dlopen("/System/Library/PrivateFrameworks/SensorKit.framework/SensorKit", 2);
      qword_102659990 = result;
    }
  }

  return result;
}

uint64_t sub_100738A98()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorPedometerData");
  if (v1)
  {
    result = *v1;
    qword_102659998 = result;
  }

  else
  {
    result = qword_102659998;
  }

  off_1025D81A8 = sub_100738AEC;
  return result;
}

uint64_t sub_100738B28()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorOdometerSuitability");
  if (v1)
  {
    result = *v1;
    qword_1026599A0 = result;
  }

  else
  {
    result = qword_1026599A0;
  }

  off_1025D81B0 = sub_100738B7C;
  return result;
}

uint64_t sub_100738B88()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorFallStatistics");
  if (v1)
  {
    result = *v1;
    qword_1026599A8 = result;
  }

  else
  {
    result = qword_1026599A8;
  }

  off_1025D81B8 = sub_100738BDC;
  return result;
}

uint64_t sub_100738BE8()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorElevation");
  if (v1)
  {
    result = *v1;
    qword_1026599B0 = result;
  }

  else
  {
    result = qword_1026599B0;
  }

  off_1025D81C0 = sub_100738C3C;
  return result;
}

uint64_t sub_100738C48()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorOdometer");
  if (v1)
  {
    result = *v1;
    qword_1026599B8 = result;
  }

  else
  {
    result = qword_1026599B8;
  }

  off_1025D81C8 = sub_100738C9C;
  return result;
}

uint64_t sub_100738CA8()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorHeartRate");
  if (v1)
  {
    result = *v1;
    qword_1026599C0 = result;
  }

  else
  {
    result = qword_1026599C0;
  }

  off_1025D81D0 = sub_100738CFC;
  return result;
}

uint64_t sub_100738D08()
{
  v0 = sub_100738A38();
  v1 = dlsym(v0, "SRSensorPhysicalActivityEvents");
  if (v1)
  {
    result = *v1;
    qword_1026599C8 = result;
  }

  else
  {
    result = qword_1026599C8;
  }

  off_1025D81D8 = sub_100738D5C;
  return result;
}

double sub_100738E80(uint64_t a1, double **a2)
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

uint64_t sub_100738EAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100738F80(uint64_t a1, double **a2)
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

uint64_t sub_100738FD0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007390B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007391A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007391EC()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100739264()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

double *sub_100739598(double *result, double a2)
{
  v2 = result;
  v12 = a2;
  v3 = *(result + 6);
  if (v3)
  {
    v4 = result[1];
  }

  else
  {
    result[1] = a2;
    result[2] = a2;
    v4 = a2;
  }

  v5 = fabs(a2);
  if (v5 > fabs(v4))
  {
    result[1] = a2;
  }

  if (v5 < fabs(result[2]))
  {
    result[2] = a2;
  }

  v6 = v3 + 1;
  *(result + 6) = v6;
  v7 = result[4];
  v8 = a2 - v7;
  v9 = v7 + (a2 - v7) / v6;
  v10 = result[5] + (a2 - v9) * v8;
  result[4] = v9;
  result[5] = v10;
  result[6] = a2 * a2 / v6 + result[6] - result[6] / v6;
  if (*result >= 1)
  {
    result = sub_10073A8E0(result + 7, *(result + 7), &v12);
    v11 = *(v2 + 8);
    if (*v2 < ((v11 - *(v2 + 7)) >> 3))
    {
      *(v2 + 8) = v11 - 8;
    }
  }

  return result;
}

void sub_100739688(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101924E70();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    if (*(a2 + 23) < 0)
    {
      v5 = *a2;
    }

    v6 = *(a1 + 176);
    v7 = *(a1 + 396);
    v31 = v5;
    v8 = *(a1 + 404);
    v37 = v7;
    v9 = *(a1 + 76);
    v41 = v8;
    v10 = *(a1 + 84);
    v45 = v9;
    v11 = *(a1 + 92);
    v49 = v10;
    v12 = *(a1 + 100);
    v53 = v11;
    v13 = *(a1 + 108);
    v57 = v12;
    v14 = *(a1 + 116);
    v61 = v13;
    v15 = *(a1 + 124);
    v65 = v14;
    v16 = *(a1 + 132);
    v69 = v15;
    v17 = *(a1 + 184);
    v73 = v16;
    v75 = v17;
    v19 = *(a1 + 160);
    v18 = *(a1 + 168);
    v33 = v6;
    v77 = v19;
    v81 = v6;
    v20 = *(a1 + 248);
    v85 = *(a1 + 240);
    v21 = *(a1 + 256);
    v87 = v20;
    v22 = *(a1 + 344);
    v89 = v21;
    v91 = v22;
    v23 = *(a1 + 328);
    v93 = *(a1 + 320);
    v97 = *(a1 + 336);
    v24 = *(a1 + 448);
    v101 = *(a1 + 440);
    v25 = *(a1 + 456);
    v103 = v24;
    LODWORD(v24) = *(a1 + 516);
    v105 = v25;
    v26 = *(a1 + 524);
    v109 = v24;
    v27 = *(a1 + 416);
    v28 = *(a1 + 424);
    v113 = v26;
    v117 = v28;
    v119 = *(a1 + 408);
    v121 = v27;
    v35 = *(a1 + 392);
    v39 = *(a1 + 400);
    v43 = *(a1 + 72);
    v47 = *(a1 + 80);
    v51 = *(a1 + 88);
    v55 = *(a1 + 96);
    v59 = *(a1 + 104);
    v63 = *(a1 + 112);
    v67 = *(a1 + 120);
    v71 = *(a1 + 128);
    v79 = v18;
    v83 = *(a1 + 264);
    v95 = v23;
    v99 = *(a1 + 464);
    v107 = *(a1 + 512);
    v111 = *(a1 + 520);
    v32 = 1026;
    v34 = 1026;
    v36 = 1026;
    v38 = 1026;
    v40 = 1026;
    v42 = 1026;
    v44 = 1026;
    v46 = 1026;
    v48 = 1026;
    v50 = 1026;
    v52 = 1026;
    v54 = 1026;
    v56 = 1026;
    v58 = 1026;
    v60 = 1026;
    v62 = 1026;
    v64 = 1026;
    v66 = 1026;
    v68 = 1026;
    v70 = 1026;
    v72 = 1026;
    v80 = 1026;
    v88 = 1026;
    v96 = 1026;
    v104 = 1026;
    v106 = 1026;
    v108 = 1026;
    v110 = 1026;
    v112 = 1026;
    v114 = 1026;
    v115 = *(a1 + 528);
    v74 = 2050;
    v76 = 2050;
    v78 = 2050;
    v82 = 2050;
    v84 = 2050;
    v86 = 2050;
    v90 = 2050;
    v92 = 2050;
    v94 = 2050;
    v98 = 2050;
    v100 = 2050;
    v102 = 2050;
    v116 = 2050;
    v118 = 2053;
    v120 = 2053;
    *buf = 136457731;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "MapsHarvestMetric,%{public}s,tripCount,%{public}d,rcvdTotal,%{public}d,rcvdWalk,%{public}d,rcvdCycling,%{public}d,rcvdVehicle,%{public}d,harvestedTotal,%{public}d,walking,%{public}d,cycling,%{public}d,vehicle,%{public}d,totalRegular,%{public}d,walkingRegular,%{public}d,cyclingRegular,%{public}d,vehicleRegular,%{public}d,totalProactive,%{public}d,walkingProactive,%{public}d,cyclingProactive,%{public}d,vehicleProactive,%{public}d,totalAccessory,%{public}d,walkingAccessory,%{public}d,cyclingAccessory,%{public}d,vehicleAccessory,%{public}d,tripHarvestCntAvg,%{public}.1lf,tripHarvestCntMax,%{public}.1lf,tripHarvestCnttMin,%{public}.1lf,tripHarvestCntEntryCount,%{public}d,tripsTimeGapAvg,%{public}.1lf,tripTimeGapMax,%{public}.1lf,tripsTimeGapMin,%{public}.1lf,tripTimeGapCount,%{public}d,tripDistGapAvg,%{public}.1lf,tripDistGapMax,%{public}.1lf,tripDistGapMin,%{public}.1lf,tripDistGapCount,%{public}d,uploadCountAvg,%{public}.1lf,uploadCntMax,%{public}.1lf,uploadCntMin,%{public}.1lf,numUploads,%{public}d,chargingUploads,%{public}d,proactiveUploads,%{public}d,walkingUploads,%{public}d,cyclingUploads,%{public}d,vehicleUploads,%{public}d,lastLocationTime,%{public}.1lf,lastLL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x156u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47D0 != -1)
    {
      sub_101924E84();
    }

    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMapsTracksAndRealTimeHarvestingMetric::outputDebugLog(const std::string)", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }
}

NSDictionary *sub_100739C48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v76[0] = @"tripCount";
  v77[0] = [NSNumber numberWithUnsignedInt:*(v2 + 176)];
  v76[1] = @"totalLocationsReceived";
  v77[1] = [NSNumber numberWithInt:*(v2 + 392)];
  v76[2] = @"locReceivedWalking";
  v77[2] = [NSNumber numberWithInt:*(v2 + 396)];
  v76[3] = @"locReceivedCycling";
  v77[3] = [NSNumber numberWithInt:*(v2 + 400)];
  v76[4] = @"locReceivedVehicle";
  v77[4] = [NSNumber numberWithInt:*(v2 + 404)];
  v76[5] = @"harvestCountTotal";
  v77[5] = [NSNumber numberWithInt:*(v2 + 72)];
  v76[6] = @"harvestCountWalking";
  v77[6] = [NSNumber numberWithInt:*(v2 + 76)];
  v76[7] = @"harvestCountCycling";
  v77[7] = [NSNumber numberWithInt:*(v2 + 80)];
  v76[8] = @"harvestCountVehicle";
  v77[8] = [NSNumber numberWithInt:*(v2 + 84)];
  v76[9] = @"regularGPSCountTotal";
  v77[9] = [NSNumber numberWithInt:**(a1 + 40)];
  v76[10] = @"regularGPSCountWalking";
  v77[10] = [NSNumber numberWithInt:*(*(a1 + 40) + 4)];
  v76[11] = @"regularGPSCountCycling";
  v77[11] = [NSNumber numberWithInt:*(*(a1 + 40) + 8)];
  v76[12] = @"regularGPSCountVehicle";
  v77[12] = [NSNumber numberWithInt:*(*(a1 + 40) + 12)];
  v76[13] = @"proactiveGPSCountTotal";
  v77[13] = [NSNumber numberWithInt:**(a1 + 48)];
  v76[14] = @"proactiveGPSCountWalking";
  v77[14] = [NSNumber numberWithInt:*(*(a1 + 48) + 4)];
  v76[15] = @"proactiveGPSCountCycling";
  v77[15] = [NSNumber numberWithInt:*(*(a1 + 48) + 8)];
  v76[16] = @"proactiveGPSCountVehicle";
  v77[16] = [NSNumber numberWithInt:*(*(a1 + 48) + 12)];
  v76[17] = @"accessoryCountTotal";
  v77[17] = [NSNumber numberWithInt:**(a1 + 56)];
  v76[18] = @"accessoryCountWalking";
  v77[18] = [NSNumber numberWithInt:*(*(a1 + 56) + 4)];
  v76[19] = @"accessoryCountCycling";
  v77[19] = [NSNumber numberWithInt:*(*(a1 + 56) + 8)];
  v76[20] = @"accessoryCountVehicle";
  v77[20] = [NSNumber numberWithInt:*(*(a1 + 56) + 12)];
  v76[21] = @"harvestedPercentage";
  v3 = *(v2 + 392);
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = *(v2 + 72) / v3 * 100.0;
    v7 = v6 > 1.0 || v6 <= 0.0;
    v5 = llround(v6);
    if (!v7)
    {
      v5 = 1.0;
    }
  }

  v77[21] = [NSNumber numberWithDouble:v5];
  v76[22] = @"harvestedPercentageWalking";
  v8 = *(v2 + 396);
  if (v8)
  {
    v9 = *(v2 + 76) / v8 * 100.0;
    v10 = v9 > 1.0 || v9 <= 0.0;
    v11 = llround(v9);
    if (v10)
    {
      v4 = v11;
    }

    else
    {
      v4 = 1.0;
    }
  }

  v77[22] = [NSNumber numberWithDouble:v4];
  v76[23] = @"harvestedPercentageCycling";
  v12 = *(v2 + 400);
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v15 = *(v2 + 80) / v12 * 100.0;
    v16 = v15 > 1.0 || v15 <= 0.0;
    v14 = llround(v15);
    if (!v16)
    {
      v14 = 1.0;
    }
  }

  v77[23] = [NSNumber numberWithDouble:v14];
  v76[24] = @"harvestedPercentageVehicle";
  v17 = *(v2 + 404);
  if (v17)
  {
    v18 = *(v2 + 84) / v17 * 100.0;
    v19 = v18 > 1.0 || v18 <= 0.0;
    v20 = llround(v18);
    if (v19)
    {
      v13 = v20;
    }

    else
    {
      v13 = 1.0;
    }
  }

  v77[24] = [NSNumber numberWithDouble:v13];
  v76[25] = @"regularGPSPercentage";
  v21 = *(v2 + 72);
  v22 = 0.0;
  v23 = 0.0;
  if (v21)
  {
    v24 = **(a1 + 40) / v21 * 100.0;
    v25 = v24 > 1.0 || v24 <= 0.0;
    v23 = llround(v24);
    if (!v25)
    {
      v23 = 1.0;
    }
  }

  v77[25] = [NSNumber numberWithDouble:v23];
  v76[26] = @"proactiveGPSPercentage";
  v26 = *(v2 + 72);
  if (v26)
  {
    v27 = **(a1 + 48) / v26 * 100.0;
    v28 = v27 > 1.0 || v27 <= 0.0;
    v29 = llround(v27);
    if (v28)
    {
      v22 = v29;
    }

    else
    {
      v22 = 1.0;
    }
  }

  v77[26] = [NSNumber numberWithDouble:v22];
  v76[27] = @"accessoryPercentage";
  v30 = *(v2 + 72);
  v31 = 0.0;
  v32 = 0.0;
  if (v30)
  {
    v33 = **(a1 + 56) / v30 * 100.0;
    v34 = v33 > 1.0 || v33 <= 0.0;
    v32 = llround(v33);
    if (!v34)
    {
      v32 = 1.0;
    }
  }

  v77[27] = [NSNumber numberWithDouble:v32];
  v76[28] = @"walkingPercentage";
  v35 = *(v2 + 72);
  if (v35)
  {
    v36 = *(v2 + 76) / v35 * 100.0;
    v37 = v36 > 1.0 || v36 <= 0.0;
    v38 = llround(v36);
    if (v37)
    {
      v31 = v38;
    }

    else
    {
      v31 = 1.0;
    }
  }

  v77[28] = [NSNumber numberWithDouble:v31];
  v76[29] = @"cyclingPercentage";
  v39 = *(v2 + 72);
  v40 = 0.0;
  v41 = 0.0;
  if (v39)
  {
    v42 = *(v2 + 80) / v39 * 100.0;
    v43 = v42 > 1.0 || v42 <= 0.0;
    v41 = llround(v42);
    if (!v43)
    {
      v41 = 1.0;
    }
  }

  v77[29] = [NSNumber numberWithDouble:v41];
  v76[30] = @"vehiclePercentage";
  v44 = *(v2 + 72);
  if (v44)
  {
    v45 = *(v2 + 84) / v44 * 100.0;
    v46 = v45 > 1.0 || v45 <= 0.0;
    v47 = llround(v45);
    if (v46)
    {
      v40 = v47;
    }

    else
    {
      v40 = 1.0;
    }
  }

  v77[30] = [NSNumber numberWithDouble:v40];
  v76[31] = @"walkingPercentageRegularGPS";
  v48 = *(a1 + 40);
  v49 = 0.0;
  v50 = 0.0;
  if (*v48)
  {
    v51 = v48[1] / *v48 * 100.0;
    v52 = v51 > 1.0 || v51 <= 0.0;
    v50 = llround(v51);
    if (!v52)
    {
      v50 = 1.0;
    }
  }

  v77[31] = [NSNumber numberWithDouble:v50];
  v76[32] = @"cyclingPercentageRegularGPS";
  v53 = *(a1 + 40);
  if (*v53)
  {
    v54 = v53[2] / *v53 * 100.0;
    v55 = v54 > 1.0 || v54 <= 0.0;
    v56 = llround(v54);
    if (v55)
    {
      v49 = v56;
    }

    else
    {
      v49 = 1.0;
    }
  }

  v77[32] = [NSNumber numberWithDouble:v49];
  v76[33] = @"vehiclePercentageRegularGPS";
  v57 = *(a1 + 40);
  v58 = 0.0;
  v59 = 0.0;
  if (*v57)
  {
    v60 = v57[3] / *v57 * 100.0;
    v61 = v60 > 1.0 || v60 <= 0.0;
    v59 = llround(v60);
    if (!v61)
    {
      v59 = 1.0;
    }
  }

  v77[33] = [NSNumber numberWithDouble:v59];
  v76[34] = @"walkingPercentageProactiveGPS";
  v62 = *(a1 + 48);
  if (*v62)
  {
    v63 = v62[1] / *v62 * 100.0;
    v64 = v63 > 1.0 || v63 <= 0.0;
    v65 = llround(v63);
    if (v64)
    {
      v58 = v65;
    }

    else
    {
      v58 = 1.0;
    }
  }

  v77[34] = [NSNumber numberWithDouble:v58];
  v76[35] = @"cyclingPercentageProactiveGPS";
  v66 = *(a1 + 48);
  v67 = 0.0;
  v68 = 0.0;
  if (*v66)
  {
    v69 = v66[2] / *v66 * 100.0;
    v70 = v69 > 1.0 || v69 <= 0.0;
    v68 = llround(v69);
    if (!v70)
    {
      v68 = 1.0;
    }
  }

  v77[35] = [NSNumber numberWithDouble:v68];
  v76[36] = @"vehiclePercentageProactiveGPS";
  v71 = *(a1 + 48);
  if (*v71)
  {
    v72 = v71[3] / *v71 * 100.0;
    v73 = v72 > 1.0 || v72 <= 0.0;
    v74 = llround(v72);
    if (v73)
    {
      v67 = v74;
    }

    else
    {
      v67 = 1.0;
    }
  }

  v77[36] = [NSNumber numberWithDouble:v67];
  v76[37] = @"harvestCountPerTripAverage";
  v77[37] = [NSNumber numberWithInt:*(v2 + 184)];
  v76[38] = @"harvestCountPerTripMax";
  v77[38] = [NSNumber numberWithInt:*(v2 + 160)];
  v76[39] = @"harvestCountPerTripMin";
  v77[39] = [NSNumber numberWithInt:*(v2 + 168)];
  v76[40] = @"tripsTimeGapAvg";
  v77[40] = [NSNumber numberWithInt:*(v2 + 264)];
  v76[41] = @"tripsTimeGapMax";
  v77[41] = [NSNumber numberWithInt:*(v2 + 240)];
  v76[42] = @"tripsTimeGapMin";
  v77[42] = [NSNumber numberWithInt:*(v2 + 248)];
  v76[43] = @"tripsDistanceGapAvg";
  v77[43] = [NSNumber numberWithInt:*(v2 + 344)];
  v76[44] = @"tripsDistanceGapMax";
  v77[44] = [NSNumber numberWithInt:*(v2 + 320)];
  v76[45] = @"tripsDistanceGapMin";
  v77[45] = [NSNumber numberWithInt:*(v2 + 328)];
  v76[46] = @"uploadedCountAvg";
  v77[46] = [NSNumber numberWithInt:*(v2 + 464)];
  v76[47] = @"uploadedCountMax";
  v77[47] = [NSNumber numberWithInt:*(v2 + 440)];
  v76[48] = @"uploadedCountMin";
  v77[48] = [NSNumber numberWithInt:*(v2 + 448)];
  v76[49] = @"numUploads";
  v77[49] = [NSNumber numberWithInt:*(v2 + 456)];
  v76[50] = @"numUploadsWhileCharging";
  v77[50] = [NSNumber numberWithUnsignedInt:*(v2 + 512)];
  v76[51] = @"numProactiveLocationUploads";
  v77[51] = [NSNumber numberWithUnsignedInt:*(v2 + 516)];
  v76[52] = @"numWalkingModeUploads";
  v77[52] = [NSNumber numberWithUnsignedInt:*(v2 + 520)];
  v76[53] = @"numCyclingModeUploads";
  v77[53] = [NSNumber numberWithUnsignedInt:*(v2 + 524)];
  v76[54] = @"numVehicleModeUploads";
  v77[54] = [NSNumber numberWithUnsignedInt:*(v2 + 528)];
  return [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:55];
}

double sub_10073A774(uint64_t a1)
{
  *(a1 + 40) = 0xBFF0000000000000;
  if (*(a1 + 71) < 0)
  {
    *(a1 + 56) = 0;
    v1 = *(a1 + 48);
  }

  else
  {
    v1 = (a1 + 48);
    *(a1 + 71) = 0;
  }

  *v1 = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0xBFF0000000000000;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0u;
  return result;
}

double *sub_10073A818(uint64_t a1, int a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  result = sub_100739598((a1 + 432), *a3);
  v11 = (*a3 - a2);
  v12 = v11 >= 1 && v11 < a5;
  if (a2 < 1)
  {
    v12 = 0;
  }

  if (a2 > a5)
  {
    v12 = 1;
  }

  v13 = *(a3 + 4);
  v14.i64[0] = v13;
  v14.i64[1] = HIDWORD(v13);
  v15.i64[0] = __PAIR64__(v12, a4);
  v15.u64[1] = vand_s8(vmovn_s64(vcgeq_u64(v14, vdupq_n_s64(a5))), 0x100000001);
  *(a1 + 512) = vaddq_s32(*(a1 + 512), v15);
  if (*(a3 + 12) < a5)
  {
    v16 = *(a1 + 528);
  }

  else
  {
    v16 = *(a1 + 528) + 1;
  }

  *(a1 + 528) = v16;
  return result;
}

double *sub_10073A8E0(void *a1, char *__src, double *a3)
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
      sub_10028C64C();
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
      sub_1000B9708(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_10073AAB4(&v26, a3);
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
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_10073AA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10073AAB4(void *a1, double *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_1000B9708(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
  }

  result = *a2;
  *v4 = *a2;
  a1[2] = v4 + 8;
  return result;
}

uint64_t sub_10073ABE4(uint64_t a1)
{
  v3 = 0x100000003;
  v4 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10073AC68(a1, &v3, &off_10246E380);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10073AC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073AC68(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = sub_1006062D8(a1, a2);
  if (sub_100023B68(v5))
  {
    sub_100608EC8(a1, "BeaconStatus", a3, 0, 0);
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_101924EAC();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "iB: state No access to state DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101924EC0(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CLBeaconMonitorDatabase::CLBeaconMonitorDatabase(const CLSqliteDatabase::SqliteProperties &, const CLSqliteDatabase::ColumnInfo *)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1;
}

void sub_10073AE10(uint64_t a1)
{
  if (sub_100023B68(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v8, "DELETE FROM ", 12);
    sub_100038730(v2, "BeaconStatus", 12);
    sub_100073518(buf, __p);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    sub_1000388D8(a1, v3);
  }

  if (qword_1025D4610 != -1)
  {
    sub_101924EAC();
  }

  v4 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "iB: state No access to DB", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101924F04();
  }
}

void sub_10073B0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10073B10C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100023B68(a1);
  if (v6)
  {
    if (a3 == 2 || a3 == 4)
    {
      v7 = sub_10073B94C(v6, a2);
      if (qword_1025D4610 != -1)
      {
        sub_101924EAC();
      }

      v8 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
      {
        (*(*a2 + 16))(__p, a2);
        v9 = SBYTE3(v26) >= 0 ? __p : *__p;
        *buf = 134284035;
        *&buf[4] = v7;
        v30 = 1025;
        v31 = a3;
        v32 = 2081;
        v33 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "iB: state store, %{private}lld, %{private}d, %{private}s", buf, 0x1Cu);
        if (SBYTE3(v26) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4610 != -1)
        {
          sub_1019250BC();
        }

        (*(*a2 + 16))(v27, a2);
        if (v28 >= 0)
        {
          v20 = v27;
        }

        else
        {
          v20 = *v27;
        }

        *__p = 134284035;
        *&__p[4] = v7;
        v23 = 1025;
        v24 = a3;
        v25 = 2081;
        v26 = v20;
        v21 = _os_log_send_and_compose_impl();
        if (v28 < 0)
        {
          operator delete(*v27);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBeaconMonitorDatabase::storeFenceState(const CLBTLEBeaconRegion_Type::MonitoredRegion &, CLBTLEBeaconRegion_Type::RegionStates)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      sub_10003848C(__p);
      v10 = sub_100038730((&v24 + 2), "INSERT OR REPLACE INTO ", 23);
      v11 = sub_100038730(v10, "BeaconStatus", 12);
      v12 = sub_100038730(v11, " (", 2);
      v13 = sub_100038730(v12, "Key", 3);
      v14 = sub_100038730(v13, ", ", 2);
      v15 = sub_100038730(v14, "State", 5);
      sub_100038730(v15, ") VALUES (?, ?)", 15);
      sub_100073518(__p, buf);
      if (SBYTE3(v33) >= 0)
      {
        v16 = buf;
      }

      else
      {
        v16 = *buf;
      }

      sub_1000388D8(a1, v16);
    }

    if (qword_1025D4610 != -1)
    {
      sub_101924EAC();
    }

    v18 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "iB: state Invalid for DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019250E4();
    }
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_101924EAC();
    }

    v17 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "iB: state No access to DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101924FE0();
    }
  }

  return 0;
}

void sub_10073B8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

unint64_t sub_10073B94C(uint64_t a1, uint64_t a2)
{
  sub_10006023C((a2 + 64), 47, &v18);
  v3 = *(a2 + 63);
  if (v3 >= 0)
  {
    v4 = (a2 + 40);
  }

  else
  {
    v4 = *(a2 + 40);
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 63);
  }

  else
  {
    v5 = *(a2 + 48);
  }

  v6 = std::string::append(&v18, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v19, 47);
  v20 = v19;
  memset(&v19, 0, sizeof(v19));
  v8 = *(a2 + 111);
  if (v8 >= 0)
  {
    v9 = (a2 + 88);
  }

  else
  {
    v9 = *(a2 + 88);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 111);
  }

  else
  {
    v10 = *(a2 + 96);
  }

  v11 = std::string::append(&v20, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v22 = v11->__r_.__value_.__r.__words[2];
  v21 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v13 = sub_1000602D0(&v20, &v21);
  v14 = sub_1000602D0(&v20, (a2 + 8));
  v15 = *(a2 + 32);
  v16 = *(a2 + 34);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  return 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v15) ^ ((0xC6A4A7935BD1E995 * v15) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v14) ^ ((0xC6A4A7935BD1E995 * v14) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v13) ^ ((0xC6A4A7935BD1E995 * v13) >> 47)) + 3864292196u)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v16) ^ ((0xC6A4A7935BD1E995 * v16) >> 47)))) + 3864292196u;
}

void sub_10073BB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073BB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    v5 = sub_10073B94C(v4, a2);
    if (qword_1025D4610 != -1)
    {
      sub_101924EAC();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      (*(*a2 + 16))(__p, a2);
      v7 = v21 >= 0 ? __p : __p[0];
      *buf = 134283779;
      *&buf[4] = v5;
      v17 = 2081;
      v18 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "iB: state remove, %{private}lld, %{private}s", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4610 != -1)
      {
        sub_1019250BC();
      }

      (*(*a2 + 16))(buf, a2);
      v15 = _os_log_send_and_compose_impl();
      if (v19 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBeaconMonitorDatabase::removeFenceState(const CLBTLEBeaconRegion_Type::MonitoredRegion &)", "%s\n", v15);
      if (v15 != __p)
      {
        free(v15);
      }
    }

    sub_10003848C(buf);
    v8 = sub_100038730((&v18 + 2), "DELETE FROM ", 12);
    v9 = sub_100038730(v8, "BeaconStatus", 12);
    v10 = sub_100038730(v9, " WHERE ", 7);
    v11 = sub_100038730(v10, "Key", 3);
    sub_100038730(v11, "=?", 2);
    sub_100073518(buf, __p);
    if (v21 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    sub_1000388D8(a1, v12);
  }

  if (qword_1025D4610 != -1)
  {
    sub_101924EAC();
  }

  v13 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "iB: state No access to DB", __p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019251C0();
  }

  return 0;
}

void sub_10073C248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10073C2D4@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = sub_10003848C(v10);
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = 0;
    do
    {
      sub_10073B94C(v4, v5);
      if (v7)
      {
        sub_100038730(&v11, ", ", 2);
      }

      v4 = std::ostream::operator<<();
      v5 += 120;
      v7 = 1;
    }

    while (v5 != v6);
  }

  sub_100073518(v10, a2);
  v11 = v8;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10073C4B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_10073C4E0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    if (qword_1025D4610 != -1)
    {
      sub_101924EAC();
    }

    v5 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3);
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "iB: state scrub, remaining, %{public}lu", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101925378(a2);
    }

    sub_10073C2D4(a2, &buf);
    *(&v30.__r_.__value_.__s + 23) = 12;
    strcpy(&v30, "DELETE FROM ");
    v7 = std::string::append(&v30, "BeaconStatus", 0xCuLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v29 = 7;
    strcpy(__s, " WHERE ");
    v9 = std::string::append(&v31, __s, 7uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(&v32, "Key", 3uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v27 = 9;
    strcpy(v26, " NOT IN (");
    v13 = std::string::append(&v33, v26, 9uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((v39 & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    if ((v39 & 0x80u) == 0)
    {
      v16 = v39;
    }

    else
    {
      v16 = *(&buf + 1);
    }

    v17 = std::string::append(&v34, p_buf, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v25 = 1;
    LOWORD(__p) = 41;
    v19 = std::string::append(&v35, &__p, 1uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v37 = v19->__r_.__value_.__r.__words[2];
    v36 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v25 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v29 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v37 >= 0)
    {
      v21 = &v36;
    }

    else
    {
      v21 = v36;
    }

    sub_1000388D8(a1, v21);
  }

  if (qword_1025D4610 != -1)
  {
    sub_101924EAC();
  }

  v22 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "iB: state can't scrub DB", &buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10192529C();
  }

  return v4;
}

void sub_10073C918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v52 - 89) < 0)
  {
    operator delete(*(v52 - 112));
  }

  if (*(v52 - 57) < 0)
  {
    operator delete(*(v52 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10073CA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100023B68(a1);
  if (v4)
  {
    sub_10073B94C(v4, a2);
    *(&v26.__r_.__value_.__s + 23) = 7;
    strcpy(&v26, "SELECT ");
    v5 = std::string::append(&v26, "State", 5uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v25 = 6;
    strcpy(__s, " FROM ");
    v7 = std::string::append(&v27, __s, 6uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v28, "BeaconStatus", 0xCuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v23 = 7;
    strcpy(v22, " WHERE ");
    v11 = std::string::append(&v33, v22, 7uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v31, "Key", 3uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v21 = 2;
    strcpy(v20, "=?");
    v15 = std::string::append(&v32, v20, 2uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v30 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v21 < 0)
    {
      operator delete(*v20);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v23 < 0)
    {
      operator delete(*v22);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v25 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v30 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    sub_1000388D8(a1, v17);
  }

  if (qword_1025D4610 != -1)
  {
    sub_101924EAC();
  }

  v18 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v32.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "iB: state No access to DB", &v32, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019254B4();
  }

  return 1;
}

void sub_10073D4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10073D63C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1000;
  *(a1 + 12) = 0;
  v5 = 0;
  sub_100126E84(v6, off_1025D6528[0], &v5, 0);
  *(a1 + 12) = v6[0];
  v3 = 0;
  sub_100126E84(v4, off_1025D6530[0], &v3, 0);
  *(a1 + 13) = v4[0];
  return a1;
}

uint64_t sub_10073D6CC(uint64_t result, double a2)
{
  v2 = *(result + 10);
  if (!*(result + 10) || *result + 86400.0 < a2)
  {
    v2 = 0;
    *result = a2;
    *(result + 10) = 0;
  }

  if (v2 < *(result + 8))
  {
    *(result + 10) = v2 + 1;
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_10073D784(uint64_t a1)
{
  v3[0] = @"exitingSaturation";
  v4[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 25)];
  v3[1] = @"shiftInSaturation";
  v4[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 26)];
  v3[2] = @"extendedSaturation";
  v4[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 27)];
  v3[3] = @"triggerCount";
  v4[3] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 17)];
  v3[4] = @"timeSinceLastRemag";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 9) / 1000000.0];
  v3[5] = @"timeSinceLastRemagTrigger";
  v4[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 1) / 1000000.0];
  v3[6] = @"successFlag";
  v4[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:7];
}

uint64_t sub_10073D8F4(uint64_t result, double a2)
{
  v2 = *(result + 10);
  if (!*(result + 10) || *result + 86400.0 < a2)
  {
    v2 = 0;
    *result = a2;
    *(result + 10) = 0;
  }

  if (v2 < *(result + 8))
  {
    *(result + 10) = v2 + 1;
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_10073D9AC(uint64_t a1)
{
  v4[0] = @"hasActiveMagnetometerClientDuringHeatUp";
  v2 = *(a1 + 32);
  v5[0] = [NSNumber numberWithBool:*(*(a1 + 40) + 2) != 0];
  v4[1] = @"durationOfNonDefaultState";
  v5[1] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 4)];
  v4[2] = @"countOfTimesEnteringHeatup";
  v5[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 1)];
  v4[3] = @"IsOverrideForBasebandCompassCoexSupportSet";
  v5[3] = [NSNumber numberWithBool:*(v2 + 12)];
  v4[4] = @"IsOverrideForBasebandUsageFlagSet";
  v5[4] = [NSNumber numberWithBool:*(v2 + 13)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
}

uint64_t sub_10073DAC4()
{
  result = sub_100008074();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10073DB64()
{
  if (qword_1026599D0 != -1)
  {
    sub_101925590();
  }

  return qword_102637280;
}

void sub_10073DBA4(void *a1)
{
  sub_101137710(a1);

  operator delete();
}

double sub_10073DBDC(uint64_t a1, void *a2, int *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1019255A4();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v10 = 67240192;
      LODWORD(v11) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryPPG] Unrecognized update interval notification %{public}d", &v10, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_1019255B8(a2);
    }
  }

  else
  {
    sub_1011381C4(a1);
    if (qword_1025D4320 != -1)
    {
      sub_1019255A4();
    }

    v7 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v8 = *a3;
      v10 = 134349056;
      v11 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "[AccessoryPPG] Setting update interval to %{public}f", &v10, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019256B0(a3);
    }

    return *a3;
  }

  return v5;
}

void sub_10073DD54(uint64_t a1)
{
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v4 = IntegerValue;
    if (IntegerValue == 32)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v6 = sub_1000080EC(TimeStamp);
      *v16 = v6;
      v7 = *(DataValue + 2);
      v16[1] = v7;
      v8 = *DataValue;
      v17 = *DataValue;
      v18 = DataValue[1];
      v9 = *(DataValue + 5);
      v20 = DataValue[12];
      v19 = v9;
      LOBYTE(v9) = DataValue[15];
      v21 = *(DataValue + 13);
      v22 = v9;
      v10 = *(DataValue + 8);
      v24 = DataValue[18];
      v23 = v10;
      v11 = *(DataValue + 19);
      v26 = DataValue[21];
      v25 = v11;
      LOBYTE(v11) = DataValue[24];
      v27 = *(DataValue + 11);
      v28 = v11;
      LOBYTE(v11) = DataValue[27];
      v29 = *(DataValue + 25);
      v30 = v11;
      v31 = *(DataValue + 14);
      v32 = *(DataValue + 15);
      if (qword_1025D4320 != -1)
      {
        sub_1019255A4();
      }

      v12 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67241219;
        v44 = v8;
        v45 = 2050;
        v46 = v7;
        v47 = 2050;
        v48 = v6;
        v49 = 1040;
        v50 = 32;
        v51 = 2097;
        v52 = DataValue;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "[AccessoryPPG] frameNum,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_1019258C8();
        }

        v33 = 67241219;
        v34 = v8;
        v35 = 2050;
        v36 = v7;
        v37 = 2050;
        v38 = v6;
        v39 = 1040;
        v40 = 32;
        v41 = 2097;
        v42 = DataValue;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLAccessoryPPG::onEventData(void *, void *, IOHIDEventRef)", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      sub_100061FD8(a1, 0, v16, 40);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1019255A4();
      }

      v14 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157955;
        v44 = v4;
        v45 = 2097;
        v46 = DataValue;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[AccessoryPPG] Invalid payload: %{private}.*P", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019257BC(v4, DataValue);
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1019255A4();
    }

    v13 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "[AccessoryPPG] Invalid payload", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019258F0();
    }
  }
}

uint64_t sub_10073FC88(uint64_t result, float a2)
{
  *v2 = a2;
  *v3 = result;
  return result;
}

uint64_t sub_10073FC9C@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v6 - 112) = a3;
  *(v6 - 108) = v4;
  *(v6 - 104) = 1026;
  *(v3 + 10) = v5;
  *(v6 - 98) = 1026;
  *(v6 - 96) = result;
  *(v6 - 92) = 1026;
  *(v3 + 22) = a2;
  return result;
}

void *sub_10073FFB8(void *a1)
{
  *a1 = off_10246E5B8;
  sub_1007410A4(a1);

  return sub_1009E880C(a1);
}

void sub_100740014(void *a1)
{
  sub_10073FFB8(a1);

  operator delete();
}

uint64_t sub_10074004C()
{
  if (sub_10001CF3C())
  {
    return 0;
  }

  return sub_100A64A10();
}

void sub_100740084(uint64_t a1, int a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_101927944();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67240192;
    v9[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Legacy compass started. Cover attached %{public}d", v9, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101927958();
  }

  if (!*(a1 + 200))
  {
    operator new();
  }

  if (*(a1 + 186))
  {
    if (!*(a1 + 144))
    {
      v5 = sub_1010AC550();
      if (sub_1010ACFDC(v5, 7))
      {
        [[CLDeviceMotionProperties alloc] initWithMode:7];
      }

      else
      {
        v6 = sub_1010AC550();
        v7 = sub_1010ACFDC(v6, 15);
        v8 = [CLDeviceMotionProperties alloc];
        if (v7)
        {
          [(CLDeviceMotionProperties *)v8 initWithMode:15];
        }

        else
        {
          [(CLDeviceMotionProperties *)v8 initWithMode:3];
        }
      }

      operator new();
    }
  }

  else if (!*(a1 + 136))
  {
    operator new();
  }

  if (!*(a1 + 152))
  {
    operator new();
  }

  *(a1 + 184) = 0;
  *(a1 + 164) = 0;
}

void sub_100740480(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v75 = *v3;
  v76 = *(v3 + 2);
  ++*(v1 + 160);
  if ((atomic_load_explicit(&qword_1026599E0, memory_order_acquire) & 1) == 0)
  {
    sub_101927B90(v1);
  }

  v4 = *(v2 + 144);
  if (v4)
  {
    *&v97[58] = 0;
    os_unfair_lock_lock((v4 + 148));
    v5 = *(v4 + 96);
    *v97 = *(v4 + 80);
    *&v97[16] = v5;
    v6 = *(v4 + 128);
    *&v97[32] = *(v4 + 112);
    *&v97[48] = v6;
    v7 = *(v4 + 32);
    *buf = *(v4 + 16);
    *&buf[16] = v7;
    v8 = *(v4 + 64);
    *v96 = *(v4 + 48);
    *&v96[16] = v8;
    v9 = *(v4 + 144);
    os_unfair_lock_unlock((v4 + 148));
    if (v9 == 1)
    {
      *(v2 + 188) = sub_1009A55F0(&buf[8]);
      *(v2 + 192) = v10;
      *(v2 + 196) = v11;
      sub_1009EAD90(*(v2 + 200), v2 + 188);
      sub_1009EADAC(*(v2 + 200), &buf[8]);
    }
  }

  else
  {
    v12 = *(v2 + 136);
    if (v12)
    {
      os_unfair_lock_lock((v12 + 44));
      *buf = *(v12 + 16);
      *&buf[16] = *(v12 + 32);
      v13 = *(v12 + 40);
      os_unfair_lock_unlock((v12 + 44));
      if (v13 == 1)
      {
        *(v2 + 188) = *&buf[8];
        *(v2 + 196) = *&buf[16];
        sub_1009EAD90(*(v2 + 200), v2 + 188);
      }
    }
  }

  v72 = -1082130432;
  if (*(v2 + 188) == 3.4028e38 || !sub_1009EA548(*(v2 + 200), &v75 + 1))
  {
    if ((*(v2 + 164) & 1) == 0 && *(*(v2 + 200) + 376) > dword_1026599D8)
    {
      v66 = 0;
      DWORD2(v65) = 0;
      v67 = -1.0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0.0;
      v73 = 0;
      v74 = 0;
      v64 = *&v75;
      *&v65 = 0;
      *(v2 + 164) = 1;
      sub_100061FD8(v2, 0, &v64, 120);
      if (qword_1025D42E0 != -1)
      {
        sub_1019278D8();
      }

      v23 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
      {
        v24 = *(v2 + 168) * *(*(v2 + 200) + 376);
        *buf = 134349056;
        *&buf[4] = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "Notify after %{public}.3f seconds of no event.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101927D50((v2 + 200));
      }
    }
  }

  else if (sub_1009EAF20(*(v2 + 200), &v65, v14, v15, v16, v17, v18, v19))
  {
    v64 = *&v75;
    v20 = *(v2 + 200);
    v21 = v20[205];
    if (v21)
    {
      v22 = *(*(v20[201] + (((v21 + v20[204] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v21 + v20[204] - 1) & 0x3FF));
    }

    else
    {
      v22 = 0;
    }

    v73 = v22;
    v74 = *(v2 + 28);
    if (*(v2 + 185) == 1)
    {
      if (v67 < 0.0)
      {
        *(v2 + 185) = 0;
        v25 = sub_10017C02C();
        sub_100A64BE0(v25);
        v20 = *(v2 + 200);
      }
    }

    else if (v67 >= 0.0)
    {
      *(v2 + 185) = 1;
    }

    v26 = sub_1009EB984(v20);
    v63 = v26;
    if (*(v2 + 184) != v26)
    {
      sub_100061FD8(v2, 1, &v63, 1);
      *(v2 + 184) = v63;
      if (qword_1025D42E0 != -1)
      {
        sub_1019278D8();
      }

      v27 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "CompassAlignment";
        *&buf[12] = 1024;
        *&buf[14] = v63;
        *&buf[18] = 2048;
        *&buf[20] = v75;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Type,%s,compassJustAlignedToStableField,%d,timestamp,%20.20f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101927BF8(&v63);
      }

      if (*(v2 + 29) == 1)
      {
        *v77 = off_102491E38;
        *&v77[8] = CFAbsoluteTimeGetCurrent();
        v78 = *&v75;
        v79[0] = v63;
        v28 = sub_10015ADF4();
        sub_1010CF5BC(v28, v77);
        sub_10152D354(buf);
        sub_101555524(buf);
        v105 |= 1u;
        v102 = *&v77[8];
        v29 = v104;
        v30 = v75;
        *(v104 + 20) |= 1u;
        *(v29 + 8) = v30;
        v31 = v104;
        v32 = v63;
        *(v104 + 20) |= 2u;
        *(v31 + 16) = v32;
        if (qword_102637F48 != -1)
        {
          sub_101927D28();
        }

        if (qword_102637F50)
        {
          sub_1017F73BC(qword_102637F50, buf);
        }

        sub_101532FA8(buf);
      }
    }

    v62 = 0.0;
    v61 = 0;
    sub_1009EB970(*(v2 + 200), &v61);
    if (qword_1025D42E0 != -1)
    {
      sub_1019278D8();
    }

    v33 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136318722;
      *&buf[4] = "Compass";
      *&buf[12] = 2048;
      *&buf[14] = *&v66;
      *&buf[22] = 2048;
      *&buf[24] = *(&v66 + 1);
      *v96 = 2048;
      *&v96[2] = v67;
      *&v96[10] = 2048;
      *&v96[12] = *&v65;
      *&v96[20] = 2048;
      *&v96[22] = *(&v65 + 1);
      *&v96[30] = 2048;
      *v97 = *(&v65 + 2);
      *&v97[8] = 2048;
      *&v97[10] = *&v61;
      *&v97[18] = 2048;
      *&v97[20] = *(&v61 + 1);
      *&v97[28] = 2048;
      *&v97[30] = v62;
      *&v97[38] = 1024;
      *&v97[40] = v68;
      *&v97[44] = 2048;
      *&v97[46] = *&v70;
      *&v97[54] = 2048;
      *&v97[56] = *(&v70 + 1);
      v98 = 2048;
      v99 = v71;
      v100 = 2048;
      v101 = v64;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Type,%s,magneticHeading,%20.20f,trueHeading,%20.20f,accuracy,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,level,%d,magnitude,%20.20f,inclination,%20.20f,horizontal,%20.20f,timestamp,%20.20f", buf, 0x94u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D42E0 != -1)
      {
        sub_1019278D8();
      }

      *v77 = 136318722;
      *&v77[4] = "Compass";
      *&v77[12] = 2048;
      *&v77[14] = *&v66;
      *&v77[22] = 2048;
      v78 = *(&v66 + 1);
      *v79 = 2048;
      *&v79[2] = v67;
      *&v79[10] = 2048;
      *&v79[12] = *&v65;
      *&v79[20] = 2048;
      *&v79[22] = *(&v65 + 1);
      *&v79[30] = 2048;
      v80 = *(&v65 + 2);
      *v81 = 2048;
      *&v81[2] = *&v61;
      *&v81[10] = 2048;
      v82 = *(&v61 + 1);
      v83 = 2048;
      v84 = v62;
      v85 = 1024;
      v86 = v68;
      v87 = 2048;
      v88 = *&v70;
      v89 = 2048;
      v90 = *(&v70 + 1);
      v91 = 2048;
      v92 = v71;
      v93 = 2048;
      v94 = v64;
      v58 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "%s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    if (*(v2 + 29) == 1)
    {
      *v77 = off_102491048;
      *&v77[8] = CFAbsoluteTimeGetCurrent();
      v78 = v64;
      *&v34 = *(&v65 + 4);
      *(&v34 + 1) = v61;
      *&v35 = v66;
      *(&v35 + 1) = __PAIR64__(v65, LODWORD(v67));
      *v79 = v35;
      *&v79[16] = v34;
      *&v80 = v62;
      BYTE4(v80) = v68;
      *v81 = v70;
      *&v81[8] = v71;
      v36 = sub_10015ADF4();
      sub_1010CF5BC(v36, v77);
      sub_10152D354(buf);
      sub_101555494(buf);
      v105 |= 1u;
      v102 = *&v77[8];
      v37 = v103;
      v38 = v64;
      *(v103 + 68) |= 1u;
      *(v37 + 8) = v38;
      v39 = v103;
      *(v103 + 68) |= 0x800u;
      v40 = HIDWORD(v66);
      *(v39 + 56) = v66;
      v41 = v103;
      *(v103 + 68) |= 0x2000u;
      *(v41 + 64) = v40;
      v42 = v103;
      *&v38 = v67;
      *(v103 + 68) |= 2u;
      *(v42 + 16) = LODWORD(v38);
      v43 = v103;
      *(v103 + 68) |= 0x100u;
      v44 = DWORD1(v65);
      *(v43 + 44) = v65;
      v45 = v103;
      *(v103 + 68) |= 0x200u;
      *(v45 + 48) = v44;
      v46 = v103;
      LODWORD(v38) = DWORD2(v65);
      *(v103 + 68) |= 0x400u;
      *(v46 + 52) = LODWORD(v38);
      v47 = v103;
      v48 = HIDWORD(v61);
      *(v103 + 20) = v61;
      *(v47 + 68) |= 4u;
      v49 = v103;
      *(v103 + 68) |= 8u;
      *(v49 + 24) = v48;
      v50 = v103;
      *&v38 = v62;
      *(v103 + 68) |= 0x10u;
      *(v50 + 28) = LODWORD(v38);
      v51 = v103;
      v52 = v68;
      *(v103 + 68) |= 0x20u;
      *(v51 + 32) = v52;
      v53 = v103;
      LODWORD(v38) = v70;
      *(v103 + 68) |= 0x1000u;
      *(v53 + 60) = LODWORD(v38);
      v54 = v103;
      LODWORD(v38) = HIDWORD(v70);
      *(v103 + 68) |= 0x80u;
      *(v54 + 40) = LODWORD(v38);
      v55 = v103;
      *&v38 = v71;
      *(v103 + 68) |= 0x40u;
      *(v55 + 36) = LODWORD(v38);
      if (qword_102637F48 != -1)
      {
        sub_101927D28();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, buf);
      }

      sub_101532FA8(buf);
    }

    if (v68 > 0 || *(*(v2 + 200) + 376) > dword_1026599D8)
    {
      sub_100061FD8(v2, 0, &v64, 120);
      if (qword_1025D42E0 != -1)
      {
        sub_1019278D8();
      }

      v56 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEBUG))
      {
        v57 = *(*(v2 + 200) + 376);
        *buf = 67109632;
        *&buf[4] = v57;
        *&buf[8] = 1024;
        *&buf[10] = v68;
        *&buf[14] = 2048;
        *&buf[16] = v64;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "notified clients. sampleCount,%d,compass.compass.calibrationLevel,%d,compass.timestamp,%f", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          sub_1019278D8();
        }

        v59 = *(*(v2 + 200) + 376);
        *v77 = 67109632;
        *&v77[4] = v59;
        *&v77[8] = 1024;
        *&v77[10] = v68;
        *&v77[14] = 2048;
        *&v77[16] = v64;
        v60 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "%s\n", v60);
        if (v60 != buf)
        {
          free(v60);
        }
      }
    }
  }
}