void sub_10022CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10022CED0(int *a1, uint64_t a2)
{
  if (sub_100003AA8(*a1))
  {
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004AE1D8();
    }

    return 0;
  }

  if (sub_10041C7EC(*a1))
  {
    sub_1003591C4((a1 + 120), 0, a2, 0);
    return 1;
  }

  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AE114(a2);
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v32, 0, sizeof(v32));
  memset(&v31, 0, sizeof(v31));
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v7 >= 1)
  {
    v8 = (v6 + v7);
    v9 = v6;
    do
    {
      v10 = memchr(v9, 44, v7);
      if (!v10)
      {
        break;
      }

      if (*v10 == 44)
      {
        if (v10 == v8)
        {
          break;
        }

        v11 = &v10[-v6];
        if (v11 == -1)
        {
          break;
        }

        std::string::basic_string(&__str, a2, 0, v11, &v37);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __str;
        if (*(a2 + 23) >= 0)
        {
          v12 = *(a2 + 23);
        }

        else
        {
          v12 = *(a2 + 8);
        }

        std::string::basic_string(&__str, a2, v11 + 1, v12, &v37);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size >= 1)
        {
          v15 = p_str + size;
          v16 = p_str;
          do
          {
            v17 = memchr(v16, 44, size);
            if (!v17)
            {
              break;
            }

            if (*v17 == 44)
            {
              if (v17 == v15)
              {
                break;
              }

              v27 = v17 - p_str;
              if (v27 == -1)
              {
                break;
              }

              std::string::basic_string(&v37, &__str, 0, v27, &v34);
              if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v32.__r_.__value_.__l.__data_);
              }

              v32 = v37;
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v28 = __str.__r_.__value_.__l.__size_;
              }

              std::string::basic_string(&v37, &__str, v27 + 1, v28, &v34);
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v31.__r_.__value_.__l.__data_);
              }

              v31 = v37;
              goto LABEL_86;
            }

            v16 = (v17 + 1);
            size = v15 - v16;
          }

          while (v15 - v16 >= 1);
        }

        std::string::operator=(&v32, &__str);
        std::string::assign(&v31, "0");
LABEL_86:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_41;
      }

      v9 = v10 + 1;
      v7 = v8 - v9;
    }

    while (v8 - v9 >= 1);
  }

  std::string::operator=(&__p, a2);
  std::string::assign(&v32, "p1");
  std::string::assign(&v31, "0");
LABEL_41:
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = (&v32 + HIBYTE(v32.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v18 = (v32.__r_.__value_.__r.__words[0] + v32.__r_.__value_.__l.__size_);
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v32;
  }

  else
  {
    v19 = v32.__r_.__value_.__r.__words[0];
  }

  while (v19 != v18)
  {
    v19->__r_.__value_.__s.__data_[0] = __tolower(v19->__r_.__value_.__s.__data_[0]);
    v19 = (v19 + 1);
  }

  v20 = std::string::compare(&v31, "0");
  if (!std::string::compare(&v32, "p1") && !sub_100003AA8(*a1))
  {
    v22 = qword_1009F13B0;
    v23 = 2;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100357E68(2, &v37);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v37;
      }

      else
      {
        v24 = v37.__r_.__value_.__r.__words[0];
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
      *(__str.__r_.__value_.__r.__words + 4) = v24;
      WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
      *(&__str.__r_.__value_.__r.__words[1] + 6) = p_p;
      HIWORD(__str.__r_.__value_.__r.__words[2]) = 1024;
      v36 = v20 != 0;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,processIsoCountryFromPhone,isoCountrySource=%s,isoCountry=%s,isLastKnown=%d.", &__str, 0x1Cu);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v23 = 2;
    }
  }

  else
  {
    if (std::string::compare(&v32, "p2") || sub_100003AA8(*a1))
    {
      v21 = qword_1009F13B0;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100357E68(4, &__str);
        sub_1004AE184(&__str);
      }

      v4 = 0;
      goto LABEL_68;
    }

    v22 = qword_1009F13B0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_100357E68(3, &v37);
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v37;
      }

      else
      {
        v29 = v37.__r_.__value_.__r.__words[0];
      }

      v30 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(__str.__r_.__value_.__l.__data_) = 136315650;
      *(__str.__r_.__value_.__r.__words + 4) = v29;
      WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
      *(&__str.__r_.__value_.__r.__words[1] + 6) = v30;
      HIWORD(__str.__r_.__value_.__r.__words[2]) = 1024;
      v36 = v20 != 0;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "regulatory,geo,monitor,processIsoCountryFromPhone,isoCountrySource=%s,isoCountry=%s,isLastKnown=%d.", &__str, 0x1Cu);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }

    v23 = 3;
  }

  sub_1003591C4((a1 + 120), v23, &__p, v20 != 0);
  v4 = 1;
LABEL_68:
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_10022D48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022D524(uint64_t a1)
{
  sub_10022B774(a1);

  return sub_10022D55C(a1);
}

uint64_t sub_10022D55C(uint64_t result)
{
  if (*(result + 472) == 1)
  {
    v1 = result;
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004AE214();
    }

    return sub_10022D788(v1 + 8, 10);
  }

  return result;
}

uint64_t sub_10022D5BC(uint64_t a1, std::string *__str)
{
  v2 = __str;
  v4 = (a1 + 352);
  v5 = *(a1 + 375);
  if (v5 >= 0)
  {
    v6 = *(a1 + 375);
  }

  else
  {
    v6 = *(a1 + 360);
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v8 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v6 != size)
  {
    goto LABEL_13;
  }

  if (v5 >= 0)
  {
    v9 = (a1 + 352);
  }

  else
  {
    v9 = v4->__r_.__value_.__r.__words[0];
  }

  v10 = __str->__r_.__value_.__r.__words[0];
  if (v8 < 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v9, __str, v6);
  if (result)
  {
LABEL_13:
    std::string::operator=(v4, v2);
    result = *(a1 + 176);
    if (result)
    {
      v12 = *(*result + 48);

      return v12();
    }
  }

  return result;
}

uint64_t sub_10022D788(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 112);
  v2 = *(a1 + 4);
  v27 = *(a1 + 4);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_1004A5028();
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    sub_1004A4F4C();
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = a2;
  v7 = a1 + 8;
  v8 = a1 + 16;
  do
  {
    if (*(v5 + 32) >= v2)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v2));
  }

  while (v5);
  if (v8 == a1 + 16 || v2 < *(v8 + 32))
  {
LABEL_10:
    sub_1004A4FFC();
  }

  v9 = *(v8 + 40);
  v10 = *(v8 + 48);
  v11 = (v3 + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  v12 = v9(v11, a2);
  v13 = v12;
  v26 = v12;
  if (v6 <= 1 && v12 != v2)
  {
    sub_1004A4F78();
  }

  if (v12 != v2)
  {
    v14 = *(a1 + 32);
    v28 = &v27;
    v15 = sub_1001BF558(v7, &v27);
    v16 = v15[5];
    v17 = v15[6];
    v18 = (v14 + (v17 >> 1));
    if (v17)
    {
      v16 = *(*v18 + v16);
    }

    v19 = v16(v18, 1);
    if (v19 != v27)
    {
      sub_1004A4FA4();
    }

    *(a1 + 4) = v13;
    v20 = *(a1 + 32);
    v28 = &v26;
    v21 = sub_1001BF558(v7, &v26);
    v22 = v21[5];
    v23 = v21[6];
    v24 = (v20 + (v23 >> 1));
    if (v23)
    {
      v22 = *(*v24 + v22);
    }

    v2 = v22(v24, 0);
    if (v2 != v26)
    {
      sub_1004A4FD0();
    }
  }

  --*(a1 + 112);
  return v2;
}

uint64_t sub_10022D958(uint64_t result, int a2)
{
  if (*(result + 472) == 1)
  {
    v3 = result;
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004AE284();
    }

    *(v3 + 400) = a2;
    if (a2)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    return sub_10022D788(v3 + 8, v4);
  }

  return result;
}

void sub_10022D9D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    sub_1004AE3A4();
  }

  if (*(a1 + 434) == a2)
  {
    return;
  }

  *(a1 + 434) = a2;
  if (a2 == 2)
  {
    v4 = (a1 + 376);
    v5 = strlen(off_1009EC408[0]);
    v6 = *(a1 + 399);
    if (v6 < 0)
    {
      if (v5 != *(a1 + 384))
      {
LABEL_28:
        sub_10035858C(a1 + 480, *(a1 + 434));
        sub_10022B774(a1);
        return;
      }

      if (v5 == -1)
      {
        sub_1001B96B4();
      }

      v4 = *v4;
    }

    else if (v5 != v6)
    {
      goto LABEL_28;
    }

    if (!memcmp(v4, off_1009EC408[0], v5))
    {
      if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
      {
        sub_1004AE2F8();
      }

      sub_10022A500(a1);
    }

    goto LABEL_28;
  }

  if (a2 == 1)
  {
    if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
    {
      sub_1004AE334();
    }

    sub_100004A08(&__p, off_1009EC408[0]);
    sub_10022DC14(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1002D0E88(a1 + 1040, 1);
    v8 = 0;
    v10 = &v8;
    v3 = sub_10022FA7C((a1 + 256), &v8);
    if (*(v3 + 55) < 0)
    {
      *v3[4] = 0;
      v3[5] = 0;
    }

    else
    {
      *(v3 + 32) = 0;
      *(v3 + 55) = 0;
    }

    *(v3 + 24) = 0;
    v3[7] = 0;
    v8 = 1;
    v10 = &v8;
    v7 = sub_10022FA7C((a1 + 256), &v8);
    if (*(v7 + 55) < 0)
    {
      *v7[4] = 0;
      v7[5] = 0;
    }

    else
    {
      *(v7 + 32) = 0;
      *(v7 + 55) = 0;
    }

    *(v7 + 24) = 0;
    v7[7] = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_ERROR))
  {
    sub_1004AE370();
  }
}

void sub_10022DBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022DC14(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 376), a2);
  v3 = qword_1009F13B0;
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AE3D0(a1, (a1 + 376), v3);
  }

  v4 = sub_100003AE0();
  return sub_10045C228(v4, (a1 + 376));
}

BOOL sub_10022DC74(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1001B96B4();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

id sub_10022DCF8(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    if (*(a1 + 304))
    {
      v3 = *v3;
    }

    else
    {
      v3 = "__";
    }
  }

  else if (!*(a1 + 319))
  {
    v3 = "__";
  }

  v23 = v3;
  v4 = (a1 + 320);
  if (*(a1 + 343) < 0)
  {
    v4 = *v4;
  }

  v22 = v4;
  v5 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    if (*(a1 + 384))
    {
      v5 = *v5;
    }

    else
    {
      v5 = "__";
    }
  }

  else if (!*(a1 + 399))
  {
    v5 = "__";
  }

  v21 = v5;
  if (*(a1 + 375) < 0)
  {
    if (*(a1 + 360))
    {
      v6 = *(a1 + 352);
    }

    else
    {
      v6 = "__";
    }
  }

  else if (*(a1 + 375))
  {
    v6 = (a1 + 352);
  }

  else
  {
    v6 = "__";
  }

  if (*(a1 + 463) < 0)
  {
    if (*(a1 + 448))
    {
      v7 = *(a1 + 440);
    }

    else
    {
      v7 = "__";
    }
  }

  else if (*(a1 + 463))
  {
    v7 = (a1 + 440);
  }

  else
  {
    v7 = "__";
  }

  v8 = *(a1 + 345);
  v9 = *(a1 + 344);
  sub_100457DDC(*(a1 + 434), __p);
  if (v25 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [NSString stringWithFormat:@"Chosen ISO: %s [initialized: %d, current: %d, source: %s]. Last stored ISO: %s. Last updated ISO: %s. WiFi ISO: %s. Airplane mode: %s", v23, v8, v9, v22, v21, v6, v7, v10];
  [v2 addObject:v11];

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(a1 + 239) & 0x80000000) == 0)
  {
    if (*(a1 + 239))
    {
      v12 = (a1 + 216);
    }

    else
    {
      v12 = "__";
    }

    if (!*(a1 + 239))
    {
      v13 = 0.0;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (*(a1 + 224))
  {
    v12 = *(a1 + 216);
LABEL_44:
    v13 = CFAbsoluteTimeGetCurrent() - *(a1 + 248);
    goto LABEL_45;
  }

  v13 = 0.0;
  v12 = "__";
LABEL_45:
  v14 = [NSString stringWithFormat:@"Location ISO: %s. Age: %.2f s. Last known: %d. Auth: %d. Needed: %d. Monitoring: %d. Retries left: %d", v12, *&v13, *(a1 + 240), *(a1 + 400), *(a1 + 432), *(a1 + 433), *(a1 + 436)];
  [v2 addObject:v14];

  for (i = *(a1 + 272); i; i = *i)
  {
    sub_100357E68(*(i + 4), __p);
    if (v25 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if ((*(i + 55) & 0x8000000000000000) != 0)
    {
      if (i[5])
      {
        v17 = i[4];
      }

      else
      {
        v17 = "__";
      }

      if (!i[5])
      {
LABEL_59:
        v18 = 0.0;
        goto LABEL_60;
      }
    }

    else
    {
      if (*(i + 55))
      {
        v17 = (i + 4);
      }

      else
      {
        v17 = "__";
      }

      if (!*(i + 55))
      {
        goto LABEL_59;
      }
    }

    v18 = CFAbsoluteTimeGetCurrent() - *(i + 7);
LABEL_60:
    v19 = [NSString stringWithFormat:@"MCC slot:%s. ISO:%s. Age: %.2f s. Last known: %d", v16, v17, *&v18, *(i + 24)];
    [v2 addObject:v19];

    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

uint64_t sub_10022E08C(uint64_t a1)
{
  v3 = (a1 + 192);
  sub_10019A240(&v3);
  sub_10022E0F0(a1 + 152);
  sub_10022E2B8(a1 + 112);
  std::mutex::~mutex((a1 + 48));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10022E0F0(uint64_t a1)
{
  sub_10022E12C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10022E12C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10022E170((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10022E170(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    sub_10022E1CC(a1 + 80, *(a1 + 88));
  }

  if (*(a1 + 72) == 1)
  {
    sub_10022E1CC(a1 + 48, *(a1 + 56));
  }

  sub_10022E230(a1 + 8);
  return a1;
}

void sub_10022E1CC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10022E1CC(a1, *a2);
    sub_10022E1CC(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_10022E230(uint64_t a1)
{
  sub_10022E26C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10022E26C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10022E2B8(uint64_t a1)
{
  sub_10022E2F4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10022E2F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_10022E338((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10022E338(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
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

uint64_t sub_10022E38C(uint64_t a1)
{
  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  sub_1000197C8(a1 + 480);
  sub_1000197C8(a1 + 448);

  sub_10022E460(a1 + 280);
  sub_1000197C8(a1 + 248);

  sub_1001BF454(a1 + 88);
  v3 = (a1 + 40);
  sub_10022E4E4(&v3);
  return a1;
}

uint64_t sub_10022E460(uint64_t a1)
{
  v2 = a1 + 56;
  sub_1001BF4D8(*(a1 + 56), (a1 + 64), a1);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_10002074C(a1 + 80, *(a1 + 88));
  sub_1001BF3F8(v2, *(a1 + 64));
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  sub_10002074C(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_10022E4E4(void ***a1)
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
        v4 -= 72;
        sub_10022E56C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10022E56C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10022E5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100005F4C((a1 + 392), 0, a3, a4, a5, a6, a7, a8);
  sub_100254F24(a1 + 312);
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  sub_1001B3D00((a1 + 240));

  v10 = (a1 + 192);
  sub_10022E674(&v10);
  sub_10022F484(a1 + 160);
  sub_1000197C8(a1 + 128);
  sub_10022F1EC(a1 + 96);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_10022E674(void ***a1)
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
        v4 -= 80;
        sub_10022E6FC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10022E6FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t sub_10022E754(uint64_t a1)
{
  sub_10022E7BC(a1 + 120, *(a1 + 128));
  sub_10022E820(a1 + 88, *(a1 + 96));
  sub_10022E8D4(a1 + 56);
  sub_10022E954(a1 + 32, *(a1 + 40));

  return a1;
}

void sub_10022E7BC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10022E7BC(a1, *a2);
    sub_10022E7BC(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void sub_10022E820(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10022E820(a1, *a2);
    sub_10022E820(a1, a2[1]);
    sub_10022E87C((a2 + 4));

    operator delete(a2);
  }
}

void sub_10022E87C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10022E8D4(uint64_t a1)
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

void sub_10022E954(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10022E954(a1, *a2);
    sub_10022E954(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_10022E9BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022E9F8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022EA38(uint64_t a1, const void **a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v6 = (a1 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_5;
    }

LABEL_20:
    __assert_rtn("PRStateMachine", "PRStateMachine.h", 55, "!name.empty()");
  }

  if (!a2[1])
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  sub_100175C6C(&v12, v8 + 1);
  if (v13 >= 0)
  {
    v9 = &v12;
  }

  else
  {
    v9 = v12;
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  *(v9 + v8) = 44;
  if (*(a1 + 143) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v12;
  *(a1 + 136) = v13;
  return a1;
}

void sub_10022EBA4(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*v6);
  }

  sub_10002074C(v4, *(v1 + 88));
  sub_1001BF3F8(v3, *(v1 + 64));
  v8 = *(v1 + 40);
  if (v8)
  {
    sub_10000AD84(v8);
  }

  sub_10002074C(v2, *v5);
  _Unwind_Resume(a1);
}

uint64_t sub_10022EBFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10022ED04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F520;
  a2[1] = v2;
  return result;
}

uint64_t sub_10022ED40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022EDFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F5A0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10022EE28(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = qword_1009F13B0;
  v5 = os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,geof,startLocationRequest", buf, 2u);
    }

    return sub_10032AFB8((v3 + 632));
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,geof,stopLocationRequest", v7, 2u);
    }

    return sub_10032B070((v3 + 632));
  }
}

uint64_t sub_10022EEE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022EFA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F620;
  a2[1] = v2;
  return result;
}

void sub_10022EFCC(uint64_t a1, int *a2, std::string *a3, unsigned __int8 *a4)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  sub_10022C294(v6, *a2, a3, *a4);

  sub_1002D0D08(v6 + 1040, v5, a3);
}

uint64_t sub_10022F028(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F074(uint64_t a1)
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

uint64_t sub_10022F164(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F6B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10022F1A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F1EC(uint64_t a1)
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

uint64_t sub_10022F2DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F740;
  a2[1] = v2;
  return result;
}

uint64_t sub_10022F308(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  sub_10022D958(v3, v2);

  return sub_1002D0C9C(v3 + 1040, v2);
}

uint64_t sub_10022F350(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F40C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F7C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10022F438(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F484(uint64_t a1)
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

uint64_t sub_10022F574(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F850;
  a2[1] = v2;
  return result;
}

uint64_t sub_10022F5A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F5F4(uint64_t a1)
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

uint64_t sub_10022F674(uint64_t a1, uint64_t a2)
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

uint64_t sub_10022F70C(uint64_t a1)
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

uint64_t sub_10022F7FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10099F8E0;
  a2[1] = v2;
  return result;
}

void sub_10022F828(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  if (os_log_type_enabled(qword_1009F13B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AE44C(v3, a2);
  }

  std::string::operator=((v3 + 440), a2);
  sub_10022B774(v3);
  sub_1002D0D08(v3 + 1040, 0, a2);
}

uint64_t sub_10022F8A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F8F0(uint64_t a1)
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

uint64_t sub_10022F970(uint64_t a1)
{
  v2 = a1 + 56;
  sub_1001BF4D8(*(a1 + 56), (a1 + 64), a1);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_10002074C(a1 + 80, *(a1 + 88));
  sub_1001BF3F8(v2, *(a1 + 64));
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_10000AD84(v3);
  }

  sub_10002074C(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_10022F9F4(uint64_t a1)
{
  sub_10022FA30(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10022FA30(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_10022FA7C(void *a1, int *a2)
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

void sub_10022FCD8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_10022FD3C(void *a1, int *a2)
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

void sub_10022FF98(uint64_t a1, int a2, double a3)
{
  v16 = a2;
  v3 = *(a1 + 104);
  if (!v3)
  {
    sub_1004A5054();
  }

  if (a3 >= 0.0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_12;
    }

    v8 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v8 != v7 && *(v8 + 32) <= a2 && (v9 = *(v8 + 40)) != 0)
    {
      v10 = v9;
    }

    else
    {
LABEL_12:
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
      if (!v11)
      {
        return;
      }

      v10 = v11;
      v17 = &v16;
      v12 = sub_1001BF864(v7 - 8, &v16);
      objc_storeStrong(v12 + 5, v10);
      dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100230174;
      v14[3] = &unk_100998F28;
      v14[4] = a1;
      v15 = v16;
      dispatch_source_set_event_handler(v10, v14);
      dispatch_resume(v10);
    }

    v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (a3 * 1000000000.0));
    dispatch_source_set_timer(v10, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v17 = &v16;
    *(sub_1001BF9A0(a1 + 80, &v16) + 32) = 1;
  }
}

uint64_t *sub_100230174(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  sub_10022D788(v2, *(a1 + 40));
  result = sub_1001BF9A0(v2 + 80, v1);
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1002301D0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  return result;
}

void sub_1002301E8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_100230204(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void sub_100230220()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F13B0 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_100230274(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v17 = "queryCallback";
    v18 = 29;
    goto LABEL_20;
  }

  if (!v3)
  {
    v17 = "dispatchQueue";
    v18 = 30;
LABEL_20:
    __assert_rtn("PRAlishaLEPMQueryCrashSummaryLog", "PRAlishaLPEMLogging.mm", v18, v17);
  }

  v5 = NSTemporaryDirectory();
  v6 = [NSString stringWithFormat:@"%@/%s", v5, "AlishaLEPMCrashQuery.tok"];

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  v9 = qword_1009F9820;
  if (v8)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRAlishaLEPMQueryCrashSummaryLog token found", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004AE518(v9);
    }

    v10 = +[NSFileManager defaultManager];
    v11 = +[NSData data];
    v12 = [v10 createFileAtPath:v6 contents:v11 attributes:0];

    if ((v12 & 1) == 0)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AE55C(v13);
      }
    }

    if ((atomic_load_explicit(&qword_1009F1D98, memory_order_acquire) & 1) == 0)
    {
      sub_1004AE5A0();
    }

    if ((atomic_load_explicit(&qword_1009F1D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F1D88))
    {
      sub_100182654(buf);
      v19 = std::random_device::operator()(buf);
      dword_1009F13C0[0] = v19;
      for (i = 1; i != 624; ++i)
      {
        v19 = i + 1812433253 * (v19 ^ (v19 >> 30));
        dword_1009F13C0[i] = v19;
      }

      qword_1009F1D80 = 0;
      std::random_device::~random_device(buf);
      __cxa_guard_release(&qword_1009F1D88);
    }

    v14 = sub_100230C44(&dword_1009F1D90, dword_1009F13C0, &dword_1009F1D90);
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PRAlishaLEPMQueryCrashSummaryLog, Query AlishaLPEM Crash Summary in %d secs", buf, 8u);
    }

    v16 = dispatch_time(0, 1000000000 * v14);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100230660;
    block[3] = &unk_10099CF08;
    v22 = v4;
    dispatch_after(v16, v3, block);
  }
}

void sub_1002305D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::random_device a17)
{
  std::random_device::~random_device(&a17);
  __cxa_guard_abort(&qword_1009F1D88);

  _Unwind_Resume(a1);
}

void sub_100230660(uint64_t a1)
{
  v2 = +[NFHardwareManager sharedHardwareManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100230724;
  v4[3] = &unk_10099F968;
  v5 = *(a1 + 32);
  v3 = [v2 startSecureElementLoggingSession:v4];
}

void sub_100230724(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AE5DC();
    }
  }

  else
  {
    v24 = 0;
    v7 = [NFSecureElement embeddedSecureElementWithError:&v24];
    v8 = v24;
    v9 = [v7 serialNumber];

    if (v8)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AE644();
      }

      [v5 endSession];
    }

    else
    {
      v23 = 0;
      v10 = [v5 getLogs:5 forSEID:v9 error:&v23];
      v11 = v23;
      v12 = qword_1009F9820;
      if (v11)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AE6AC();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Alisha LPEM crash summary dictionary: %@", buf, 0xCu);
        }

        v13 = [v10 valueForKey:@"FTA Logging"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = [v10 valueForKey:@"FTA Logging"];
          if ([v22 length] >= 2)
          {
            v15 = [NSString alloc];
            v16 = [v22 subdataWithRange:{1, objc_msgSend(v22, "length") - 1}];
            v17 = [v15 initWithData:v16 encoding:1];

            v18 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Alisha LPEM crash summary string to submit: %@", buf, 0xCu);
            }

            v19 = v17;
            AnalyticsSendEventLazy();
            v20 = [v5 clearLogs:5 forSEID:v9];
            if (v20 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004AE714();
            }

            (*(*(a1 + 32) + 16))();
          }
        }

        else
        {
          v21 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Alisha LPEM log dictionary contains an incorrect value type", buf, 2u);
          }
        }
      }

      [v5 endSession];
    }
  }
}

id sub_100230BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"CrashSummaryString";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100230C44(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  LODWORD(result) = a3[1];
  v4 = result - *a3;
  if (v4)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {
      LOWORD(result) = sub_10018290C(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_10018290C(a2) & v12;
      }

      while (v13 >= v6);
      LOWORD(result) = *a3 + v13;
    }
  }

  return result;
}

double sub_100230D44(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 850045863;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return result;
}

void sub_100230D78(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::mutex::~mutex(a1);
}

uint64_t sub_100230DC4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = v8;
  *(a1 + 24) = v9;
  v10 = v7;
  *(a1 + 32) = v10;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_100231844(a1 + 64, a2);
  dispatch_assert_queue_V2(*(a1 + 32));
  if (!*(a1 + 88))
  {
    v14 = "fTimeoutCallback";
    v15 = 25;
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    v14 = "fDispatchQueue";
    v15 = 26;
    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
    v14 = "fSessionIdentifier";
    v15 = 27;
LABEL_10:
    __assert_rtn("CarKeyTimeoutManager", "NIServerCarKeyTimeoutManager.mm", v15, v14);
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 24);
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#alisha-tom,TimeoutManager is constructed for session identifier %@", &v16, 0xCu);
  }

  return a1;
}

void sub_100230F30(_Unwind_Exception *a1)
{
  for (i = 56; i != 32; i -= 8)
  {
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100230F94(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  v3 = qword_1009F9820;
  if ((v2 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AE77C(a1, v3);
    }

    __assert_rtn("~CarKeyTimeoutManager", "NIServerCarKeyTimeoutManager.mm", 34, "false");
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 24);
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#alisha-tom,TimeoutManager is destructed for session identifier %@", &v8, 0xCu);
  }

  sub_1001FD8EC(a1 + 64);
  for (i = 56; i != 32; i -= 8)
  {
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_1002310C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100020444(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002310D4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  sub_1002311A4(a1);
  sub_1002318DC(a1 + 64);
  atomic_store(1u, (a1 + 16));
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 24);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#alisha-tom,TimeoutManager is invalidated for session identifier %@", &v4, 0xCu);
  }
}

void sub_1002311A4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  for (i = 0; i != 3; ++i)
  {
    sub_1002316C4(a1, i);
  }
}

void sub_1002311E8(uint64_t a1, int a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a3 == 1)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 24);
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Schedule timer for Session Requested monitoring. Session identifier %@", &v20, 0xCu);
    }

    sub_10023156C(a1, 0, 5000000000, 0x989680uLL, 0);
  }

  else if (!a3)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 24);
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Cancel all timers (entering idle state). Session identifier %@", &v20, 0xCu);
    }

    sub_1002311A4(a1);
  }

  if (a2 == 1)
  {
    v10 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 24);
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Cancel timer for Session Requested monitoring. Session identifier %@", &v20, 0xCu);
    }

    sub_1002316C4(a1, 0);
  }

  if (a3 == 4)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 24);
      v20 = 138412290;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Schedule timer for awaiting suspend response monitoring. Session identifier %@", &v20, 0xCu);
    }

    sub_10023156C(a1, 2, 5000000000, 0x989680uLL, 5);
  }

  if (a2 == 4)
  {
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 24);
      v20 = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Cancel timer for awaiting suspend response monitoring. Session identifier %@", &v20, 0xCu);
    }

    sub_1002316C4(a1, 2);
  }

  if (a3 == 2)
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 24);
      v20 = 138412290;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Schedule timer for suspension after ranging disallowed response. Session identifier %@", &v20, 0xCu);
    }

    sub_10023156C(a1, 1, 1000000000, 0x989680uLL, 1);
  }

  if (a2 == 2)
  {
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 24);
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#alisha-tom,Cancel timer for suspension after ranging disallowed response. Session identifier %@", &v20, 0xCu);
    }

    sub_1002316C4(a1, 1);
  }
}

void sub_10023156C(uint64_t a1, int a2, int64_t a3, uint64_t a4, int a5)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  sub_1002316C4(a1, a2);
  v11 = *a1;
  v10 = *(a1 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 32));
  v13 = *(a1 + 40 + 8 * a2);
  *(a1 + 40 + 8 * a2) = v12;

  v14 = *(a1 + 40 + 8 * a2);
  v15 = dispatch_time(0, a3);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, a4);
  v16 = *(a1 + 40 + 8 * a2);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_100231724;
  v17[3] = &unk_10099FA80;
  v17[4] = a1;
  v17[5] = v11;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a5;
  dispatch_source_set_event_handler(v16, v17);
  dispatch_resume(*(a1 + 40 + 8 * a2));
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_1002316C4(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = a1 + 40;
  v5 = *(v4 + 8 * a2);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(v4 + 8 * a2);
    *(v4 + 8 * a2) = 0;
  }
}

void sub_100231724(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = sub_100005288();
        if (*(v3 + 88))
        {
          sub_1002317BC(v3 + 64, *(a1 + 56), v6);
        }
      }

      sub_10000AD84(v5);
    }
  }
}

uint64_t sub_1002317BC(uint64_t a1, int a2, double a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100037B10();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_100231818(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100231834(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100231844(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002318DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void sub_1002319F4(id a1)
{
  v1 = [[NIServerHomeDeviceService alloc] _initInternal];
  v2 = qword_1009F2190;
  qword_1009F2190 = v1;
}

char *sub_100231BC8(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"Home Device Service", v1);

  return v2;
}

id sub_100231D10(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];

  v3 = qword_1009F9820;
  if (v2)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v11 = 138478083;
      v12 = v4;
      v13 = 2113;
      v14[0] = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-home,Service updated client configuration for %{private}@. Configuration: %{private}@", &v11, 0x16u);
    }
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [*(*(a1 + 32) + 16) count];
      v9 = *(a1 + 48);
      v11 = 138478339;
      v12 = v7;
      v13 = 1024;
      LODWORD(v14[0]) = v8;
      WORD2(v14[0]) = 2112;
      *(v14 + 6) = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,Service added client %{private}@ (%d previous clients). Configuration: %@", &v11, 0x1Cu);
    }
  }

  [*(*(a1 + 32) + 16) setObject:*(a1 + 56) forKey:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKey:*(a1 + 40)];
  return [*(a1 + 32) _processCommonConfiguration];
}

void sub_100231F48(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 24) objectForKey:?];

    if (v2)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = 138477827;
        v6 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-home,Service removed client %{private}@", &v5, 0xCu);
      }

      [*(*(a1 + 40) + 16) removeObjectForKey:*(a1 + 32)];
      [*(*(a1 + 40) + 24) removeObjectForKey:*(a1 + 32)];
      [*(a1 + 40) _processCommonConfiguration];
    }
  }
}

uint64_t sub_100232124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10023213C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100232368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100232394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 minimumPreferredUpdatedRate] != 2 && +[NIInternalUtils nearbyObjectUpdateRate:isGreaterThan:](NIInternalUtils, "nearbyObjectUpdateRate:isGreaterThan:", objc_msgSend(v4, "minimumPreferredUpdatedRate"), *(*(*(a1 + 32) + 8) + 24)))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v4 minimumPreferredUpdatedRate];
  }
}

void sub_100233090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_10000AD84(a21);
  }

  _Unwind_Resume(a1);
}

void sub_100233A28(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AE874();
  }
}

void sub_100233A7C(uint64_t a1)
{
  v2 = [*(a1 + 32) remote];
  [v2 didUpdateHomeDeviceUWBRangingAvailability:*(*(a1 + 40) + 97)];
}

void sub_100233AF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5 && !v6 && WeakRetained)
  {
    [v5 magneticField];
    v16 = v9;
    [v5 magneticField];
    v15 = v10;
    [v5 magneticField];
    v12 = v11;
    [v5 timestamp];
    v13.f64[0] = v16;
    v13.f64[1] = v15;
    *&v13.f64[0] = vcvt_f32_f64(v13);
    v14 = v12;
    *&v13.f64[1] = v14;
    v17 = v13;
    [v8 didReceiveMagnetometerData:&v17 at:?];
  }
}

void sub_100234618(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100234C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100234D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = NIServerHomeDeviceSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100236CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a22)
  {
    sub_10000AD84(a22);
  }

  _Unwind_Resume(a1);
}

void sub_1002374FC(uint64_t a1, _OWORD *a2, double a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *a1) >> 4;
    if ((v9 + 1) >> 60)
    {
      sub_100019B38();
    }

    v10 = v6 - *a1;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      sub_10004EF68(a1, v12);
    }

    v13 = (16 * v9);
    *v13 = *a2;
    v8 = 16 * v9 + 16;
    v14 = *(a1 + 8) - *a1;
    v15 = v13 - v14;
    memcpy(v13 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = *a2;
    v8 = (v7 + 1);
  }

  *(a1 + 8) = v8;
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);
  if (v18 >= v17)
  {
    v20 = *(a1 + 24);
    v21 = v18 - v20;
    v22 = (v18 - v20) >> 3;
    v23 = v22 + 1;
    if ((v22 + 1) >> 61)
    {
      sub_100019B38();
    }

    v24 = v17 - v20;
    if (v24 >> 2 > v23)
    {
      v23 = v24 >> 2;
    }

    v25 = v24 >= 0x7FFFFFFFFFFFFFF8;
    v26 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v25)
    {
      v26 = v23;
    }

    if (v26)
    {
      sub_100012564(a1 + 24, v26);
    }

    v27 = (v18 - v20) >> 3;
    v28 = (8 * v22);
    v29 = (8 * v22 - 8 * v27);
    *v28 = a3;
    v19 = v28 + 1;
    memcpy(v29, v20, v21);
    v30 = *(a1 + 24);
    *(a1 + 24) = v29;
    *(a1 + 32) = v19;
    *(a1 + 40) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v18 = a3;
    v19 = v18 + 1;
  }

  *(a1 + 32) = v19;
  sub_10023D03C(a1);
  if ((*(a1 + 8) - *a1) >> 4 != (*(a1 + 32) - *(a1 + 24)) >> 3)
  {
    sub_1004AEFB4();
  }
}

void sub_1002382A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[99])
    {
      v4 = [WeakRetained configure];
      if (v4)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AF2E4();
        }

LABEL_12:
        v7 = [*(a1 + 32) remote];
        [v7 uwbSessionDidFailWithError:v4];

        goto LABEL_13;
      }

      v5 = [v3 run];
      v6 = qword_1009F9820;
      if (v5)
      {
        v4 = v5;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AF354();
        }

        goto LABEL_12;
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-home,Successfully re-configured and re-ran session to handle UWB state change", v8, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AF2A8();
    }
  }

LABEL_13:
}

void sub_100238B4C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_10000AD84(v2);
  }

  _Unwind_Resume(a1);
}

void sub_100238E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a18)
  {
    sub_10000AD84(a18);
  }

  if (a20)
  {
    sub_10000AD84(a20);
  }

  sub_100036D2C(&a21);
  sub_100036CAC(&a25);
  sub_100036C2C(v28 - 120);
  std::__shared_weak_count::~__shared_weak_count(v27);
  operator delete(v30);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002392DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a17)
  {
    sub_10000AD84(a17);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100239B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023B120(void *a1)
{
  result = (a1[4] - a1[3]) >> 3;
  if (result != (a1[1] - *a1) >> 4)
  {
    sub_1004AF7BC();
  }

  return result;
}

void sub_10023BB2C(uint64_t a1)
{
  if ((*(*(a1 + 32) + 96) & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = *v17;
      do
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v16 + 1) + 8 * i);
          if ([v7 distanceMeasurementQuality] == 2 || objc_msgSend(v7, "distanceMeasurementQuality") == 3)
          {
            v4 = 1;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v3);

      if (v4)
      {
        v8 = sub_100005288();
        sub_10033B11C(*(*(a1 + 32) + 352), v8);
        *(*(a1 + 32) + 96) = 1;
      }
    }

    else
    {
    }
  }

  v9 = *(*(a1 + 32) + 216);
  if (v9)
  {
    sub_1002D3600(v9, *(a1 + 40));
  }

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 BOOLForKey:@"HomeDeviceSessionBTLeechingEnabled"];

  v15.receiver = *(a1 + 32);
  v15.super_class = NIServerHomeDeviceSession;
  v12 = objc_msgSendSuper2(&v15, "resourcesManager");
  v13 = v12;
  if ((*(*(a1 + 32) + 72) | v11))
  {
    v14 = [v12 remote];
    [v14 didUpdateNearbyObjects:*(a1 + 40)];
  }
}

void sub_10023BFA4(uint64_t a1)
{
  v2 = sub_100005288();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) discoveryToken];
  sub_10026C12C(v3 + 240, [v4 hash], *(a1 + 48), v2);

  v5 = *(a1 + 32);
  if (*(v5 + 72))
  {
    v6 = [*(v5 + 720) isAnchor];
    v7 = *(a1 + 32);
    if ((v6 & 1) != 0 || *(v7 + 600) == 2)
    {
      sub_1001C1ED8(v7 + 608);
      v23.receiver = *(a1 + 32);
      v23.super_class = NIServerHomeDeviceSession;
      v8 = objc_msgSendSuper2(&v23, "resourcesManager");
      v9 = [v8 remote];
      [v9 object:*(a1 + 40) didUpdateRegion:*(a1 + 48) previousRegion:*(a1 + 56)];

      v10 = *(a1 + 48);
      if (!v10 || ([v10 coarseEstimation] & 1) != 0)
      {
        goto LABEL_15;
      }

      v11 = [*(a1 + 48) name];
      if ([v11 isEqualToString:@"Execute"])
      {
      }

      else
      {
        v19 = [*(a1 + 48) name];
        v20 = [v19 isEqualToString:@"execute"];

        if (!v20)
        {
LABEL_15:

          return;
        }
      }

      v21 = +[NIServerUsageAnalyticsAggregator sharedInstance];
      v22 = +[NSDate now];
      [v21 recordUWBUsage:11 date:v22];

      goto LABEL_15;
    }

    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-home,#region, region transition rejected because motion state is not moving, the region update event is cached", buf, 2u);
    }

    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = v14;
    v18 = v15;
    *buf = v2;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    sub_10023C288(*(a1 + 32) + 608, buf);
  }

  else
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-home,#regions, didUpdateRegion:previousRegion. Should deliver is False.", buf, 2u);
    }
  }
}

void sub_10023C23C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_10023C288(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  *a1 = *a2;
  if (v4 == 1)
  {
    v5 = a2[1];
    a2[1] = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;

    v7 = a2[2];
    a2[2] = 0;
    v8 = *(a1 + 16);
    *(a1 + 16) = v7;

    v9 = a2[3];
    a2[3] = 0;
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;
  }

  else
  {
    v11 = *(a2 + 1);
    a2[1] = 0;
    a2[2] = 0;
    *(a1 + 8) = v11;
    v12 = a2[3];
    a2[3] = 0;
    *(a1 + 24) = v12;
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_10023C564(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 208);
  v4 = qword_1009F9820;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == v2)
  {
    if (v5)
    {
      v6 = [NIInternalUtils NINearbyObjectUpdateRateToString:*(a1 + 40)];
      v10 = 136315138;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,didUpdateMinimumPreferredUpdateRate. %s (no change)", &v10, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = [NIInternalUtils NINearbyObjectUpdateRateToString:*(*(a1 + 32) + 208)];
      v8 = [NIInternalUtils NINearbyObjectUpdateRateToString:*(a1 + 40)];
      v10 = 136315394;
      v11 = v7;
      v12 = 2080;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,didUpdateMinimumPreferredUpdateRate. %s -> %s", &v10, 0x16u);
    }

    *(*(a1 + 32) + 208) = *(a1 + 40);
    v9 = *(*(a1 + 32) + 64);
    if (v9)
    {
      [v9 probeRegions];
    }
  }
}

uint64_t sub_10023CFC8(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *a1 = v4;
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_10023D03C(void *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  if (v1 != v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(v1 - 8);
    __src = 0;
    v26 = 0;
    v27 = 0;
    v7 = v6 + -0.01;
    do
    {
      if (*(v2 + 8 * v5) < v7)
      {
        if (v4 >= v27)
        {
          v8 = __src;
          v9 = v4 - __src;
          v10 = (v4 - __src) >> 2;
          v11 = v10 + 1;
          if ((v10 + 1) >> 62)
          {
            sub_100019B38();
          }

          v12 = v27 - __src;
          if ((v27 - __src) >> 1 > v11)
          {
            v11 = v12 >> 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v13 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            sub_10004F51C(&__src, v13);
          }

          v14 = (v4 - __src) >> 2;
          v15 = (4 * v10);
          v16 = (4 * v10 - 4 * v14);
          *v15 = v5;
          v4 = (v15 + 1);
          memcpy(v16, v8, v9);
          v17 = __src;
          __src = v16;
          v26 = v4;
          v27 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v4 = v5;
          v4 += 4;
        }

        v26 = v4;
        v2 = a1[3];
        v1 = a1[4];
      }

      ++v5;
    }

    while (v5 < (v1 - v2) >> 3);
    while (v4 != __src)
    {
      v19 = *(v4 - 1);
      v4 -= 4;
      v18 = v19;
      v20 = a1[1];
      v21 = *a1 + 16 * v19;
      v22 = v20 - (v21 + 16);
      if (v20 != v21 + 16)
      {
        memmove(v21, (v21 + 16), v20 - (v21 + 16));
        v18 = *v4;
        v1 = a1[4];
      }

      a1[1] = v21 + v22;
      v23 = a1[3] + 8 * v18;
      v24 = v1 - (v23 + 8);
      if (v1 != v23 + 8)
      {
        memmove((a1[3] + 8 * v18), (v23 + 8), v1 - (v23 + 8));
      }

      v1 = v23 + v24;
      a1[4] = v23 + v24;
    }

    if (__src)
    {
      v26 = __src;
      operator delete(__src);
    }
  }
}

void sub_10023D1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023D254(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10023D254(a1, *a2);
    sub_10023D254(a1, a2[1]);
    sub_1001B93C0((a2 + 23), a2[24]);
    sub_10002074C((a2 + 20), a2[21]);
    sub_10002074C((a2 + 17), a2[18]);

    operator delete(a2);
  }
}

void sub_10023D2F8(uint64_t a1)
{

  operator delete();
}

id sub_10023D3AC(uint64_t a1, void *a2)
{
  *a2 = off_10099FB50;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023D3FC(id *a1)
{

  operator delete(a1);
}

id sub_10023D438(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "unavailable";
    if (v3)
    {
      v5 = "available";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,current wifi availability: %s", &v7, 0xCu);
  }

  return [*(a1 + 8) _handleWifiRangingAvailableUpdate:v3];
}

uint64_t sub_10023D50C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FBB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023D584(uint64_t a1)
{

  operator delete();
}

id sub_10023D638(uint64_t a1, void *a2)
{
  *a2 = off_10099FBD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023D688(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10023D6D8(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FC30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023D750(uint64_t a1)
{

  operator delete();
}

id sub_10023D804(uint64_t a1, void *a2)
{
  *a2 = off_10099FC50;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023D854(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10023D89C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FCB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023D914(uint64_t a1)
{

  operator delete();
}

id sub_10023D9C8(uint64_t a1, void *a2)
{
  *a2 = off_10099FCD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023DA18(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10023DA60(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FD30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10023DAAC(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_10023DD04(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *sub_10023DF54(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_1000223BC(a1, result);
    return 1;
  }

  return result;
}

uint64_t *sub_10023DF8C(void *a1, unint64_t *a2)
{
  result = sub_100009978(a1, a2);
  if (result)
  {
    sub_1000237C4(a1, result);
    return 1;
  }

  return result;
}

void *sub_10023DFC4(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10023E250(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10099FD50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10023E2DC(uint64_t a1)
{

  operator delete();
}

id sub_10023E390(uint64_t a1, void *a2)
{
  *a2 = off_10099FDA0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023E3E0(id *a1)
{

  operator delete(a1);
}

void sub_10023E41C(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_10023E7AC(&v6, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  v3 = *(*(a1 + 8) + 80);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10023E594;
  v4[3] = &unk_10099FE08;
  memset(v5, 0, sizeof(v5));
  sub_10023E7AC(v5, v6, v7, 0x6DB6DB6DB6DB6DB7 * ((v7 - v6) >> 3));
  v4[4] = *(a1 + 8);
  dispatch_async(v3, v4);
  v9 = v5;
  sub_10003898C(&v9);
  v9 = &v6;
  sub_10003898C(&v9);
}

void sub_10023E530(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1;
  sub_10003898C((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_10023E548(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FE38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023E594(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11 = a1 + 40;
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
LABEL_5:
    [*(*(a1 + 32) + 64) acceptWiFiRangeResults:v11];
  }

  else
  {
    while (1)
    {
      v4 = *v2;
      v13.receiver = *(a1 + 32);
      v13.super_class = NIServerHomeDeviceSession;
      v5 = objc_msgSendSuper2(&v13, "discoveryTokenFromIdentifier:", v4);
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v12.receiver = *(a1 + 32);
      v12.super_class = NIServerHomeDeviceSession;
      v7 = objc_msgSendSuper2(&v12, "resourcesManager");
      v8 = [v7 lifecycleSupervisor];
      v9 = [v8 isTrackingPeer:v6];

      if ((v9 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AEE64();
        }

        return;
      }

      v10 = [v7 lifecycleSupervisor];
      [v10 measurementReceivedForToken:v6 contTimestamp:sub_100005288()];

      v2 += 7;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AFB88(v2);
    }
  }
}

uint64_t sub_10023E750(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return sub_10023E7AC(v2, *(a2 + 40), *(a2 + 48), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 48) - *(a2 + 40)) >> 3));
}

uint64_t sub_10023E7AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10003A800(result, a4);
  }

  return result;
}

void sub_10023E814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10003898C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10023E834(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 16) = *(v6 + 4);
      *v4 = v7;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      sub_1000368C4(v4 + 24, *(v6 + 3), *(v6 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 4) - *(v6 + 3)) >> 3));
      *(v4 + 48) = *(v6 + 12);
      v6 = (v6 + 56);
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_100038D50(v9);
  return v4;
}

void sub_10023E938(uint64_t a1)
{

  operator delete();
}

id sub_10023E9EC(uint64_t a1, void *a2)
{
  *a2 = off_10099FE58;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023EA3C(id *a1)
{

  operator delete(a1);
}

void sub_10023EA78(uint64_t a1, int *a2)
{
  sub_100040B10(*a2, __p);
  if (v13 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [NSString stringWithUTF8String:v3];
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AFBF8(&v13, __p);
  }

  v14 = NSLocalizedDescriptionKey;
  v15 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v5];

  v7 = *(a1 + 8);
  v8 = *(v7 + 80);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10023ECA8;
  v10[3] = &unk_10098A2E8;
  v10[4] = v7;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, v10);

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10023EC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10023EC5C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FEB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023ECA8(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerHomeDeviceSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 uwbSessionDidFailWithError:*(a1 + 40)];
}

void sub_10023ED64(uint64_t a1)
{

  operator delete();
}

id sub_10023EE18(uint64_t a1, void *a2)
{
  *a2 = off_10099FED8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023EE68(id *a1)
{

  operator delete(a1);
}

void sub_10023EEA4(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100040B4C(v3, &__p);
    v5 = v10 >= 0 ? &__p : __p.receiver;
    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-home,WiFi readiness update: %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p.receiver);
    }
  }

  __p.receiver = *(a1 + 8);
  __p.super_class = NIServerHomeDeviceSession;
  v6 = objc_msgSendSuper2(&__p, "resourcesManager");
  v7 = [v6 wifiResource];
  v8 = [v7 deviceCapabilities];

  if (*(*(a1 + 8) + 97) & 1) == 0 && (v8)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        [v6 interruptSessionWithReason:5 monotonicTimeSeconds:sub_100005288()];
      }
    }

    else
    {
      [v6 interruptionReasonEnded:5 monotonicTimeSeconds:sub_100005288()];
    }
  }
}

uint64_t sub_10023F048(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FF38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023F0C0(uint64_t a1)
{

  operator delete();
}

id sub_10023F174(uint64_t a1, void *a2)
{
  *a2 = off_10099FF58;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023F1C4(id *a1)
{

  operator delete(a1);
}

void sub_10023F200(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 80));
  [*(a1 + 8) serviceRequestDidUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10023F280(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023F298(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_10099FFB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023F310(uint64_t a1)
{

  operator delete();
}

id sub_10023F3C4(uint64_t a1, void *a2)
{
  *a2 = off_10099FFD8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023F414(id *a1)
{

  operator delete(a1);
}

void sub_10023F450(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 80));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10023F4CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023F4E4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A0038))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023F55C(uint64_t a1)
{

  operator delete();
}

id sub_10023F610(uint64_t a1, void *a2)
{
  *a2 = off_1009A0058;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023F660(id *a1)
{

  operator delete(a1);
}

void sub_10023F69C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 80));
  [*(a1 + 8) didReceiveRemoteData:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10023F718(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023F730(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A00B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023F7A8(uint64_t a1)
{

  operator delete();
}

id sub_10023F85C(uint64_t a1, void *a2)
{
  *a2 = off_1009A00D8;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023F8AC(id *a1)
{

  operator delete(a1);
}

void sub_10023F8E8(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 80));
  v7 = *(a1 + 8);
  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 _roseSession:&v8 invalidatedWithReason:v6];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_10023F974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023F9A0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A0138))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023FA18(uint64_t a1)
{

  operator delete();
}

id sub_10023FACC(uint64_t a1, void *a2)
{
  *a2 = off_1009A0158;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10023FB1C(id *a1)
{

  operator delete(a1);
}

void sub_10023FB58(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 80));
  [*(a1 + 8) didReceiveDeviceMotion:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10023FBD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023FBEC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A01B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10023FC38(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100025278(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_10023FC94()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_10023FD44()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10023FDF4()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10023FEA4()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10023FF54()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100240004()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_1002400B4()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100240164()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100240214()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100567068;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100240308()
{
  v0 = objc_autoreleasePoolPush();
  v43 = xmmword_100566FD8;
  v44[0] = unk_100566FE8;
  sub_1001BD0B0(qword_1009F1DA0, &v43, 4);
  xmmword_1009F1DB8 = xmmword_100563BD0;
  unk_1009F1DC8 = xmmword_100563BE0;
  qword_1009F1DE0 = 0;
  unk_1009F1DE8 = 0;
  qword_1009F1DD8 = 0x3FD999999999999ALL;
  unk_1009F1DF0 = xmmword_100563BF0;
  dword_1009F1E00 = 5;
  qword_1009F1E08 = 0x4000000000000000;
  dword_1009F1E10 = 5;
  byte_1009F1E18 = 0;
  unk_1009F1E1C = 0x30000000ALL;
  xmmword_1009F1E28 = xmmword_100563C00;
  unk_1009F1E38 = xmmword_100563C10;
  xmmword_1009F1E48 = xmmword_100563C20;
  qword_1009F1E58 = 0x3FE3333333333333;
  dword_1009F1E60 = 3;
  xmmword_1009F1E68 = xmmword_100563C30;
  unk_1009F1E78 = xmmword_100563C10;
  xmmword_1009F1E88 = xmmword_100563C00;
  qword_1009F1E98 = 0x3FE3333333333333;
  byte_1009F1EA0 = 0;
  xmmword_1009F1EA8 = xmmword_100563C40;
  unk_1009F1EB8 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F1EC8 = _Q0;
  qword_1009F1ED8 = 0xBFD3333333333333;
  xmmword_1009F1EE0 = xmmword_100563C60;
  qword_1009F1EF0 = 0x3E99999A40000000;
  xmmword_1009F1EF8 = xmmword_100563BE0;
  qword_1009F1F10 = 0;
  unk_1009F1F18 = 0;
  qword_1009F1F08 = 0x3FD999999999999ALL;
  xmmword_1009F1F20 = xmmword_100563BF0;
  dword_1009F1F30 = 5;
  qword_1009F1F38 = 0x4000000000000000;
  dword_1009F1F40 = 4;
  qword_1009F1F48 = 0x300000008;
  qword_1009F1F50 = 0xC04E800000000000;
  v45.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(qword_1009F1F58, &v45, 1);
  xmmword_1009F1F70 = xmmword_100563C70;
  qword_1009F1F80 = 0x4024000000000000;
  dword_1009F1F88 = 45;
  byte_1009F1F90 = 0;
  byte_1009F1FA8 = 0;
  qword_1009F1FB0 = 0;
  byte_1009F1FB8 = 0;
  dword_1009F1FBC = 1;
  byte_1009F1FC0 = 1;
  xmmword_1009F1FC8 = xmmword_100563C80;
  xmmword_1009F1FD8 = xmmword_100563C90;
  xmmword_1009F1FE8 = v42;
  qword_1009F1FF8 = 0xC059000000000000;
  xmmword_1009F2000 = xmmword_100563CA0;
  qword_1009F2010 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F2018 = xmmword_100563BE0;
  qword_1009F2028 = 0x3FD999999999999ALL;
  xmmword_1009F2030 = 0u;
  unk_1009F2040 = xmmword_100563BF0;
  dword_1009F2050 = 5;
  qword_1009F2058 = 0x4000000000000000;
  dword_1009F2060 = 10;
  qword_1009F2068 = 0x4034000000000000;
  dword_1009F2070 = 3;
  xmmword_1009F2078 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F1DA0, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EB970, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EB978, &_mh_execute_header);
  v43 = xmmword_100566FF8;
  v44[0] = unk_100567008;
  v44[1] = xmmword_100567018;
  v44[2] = unk_100567028;
  qword_1009F2090 = 0;
  unk_1009F2098 = 0;
  qword_1009F2088 = 0;
  sub_10004EEB8(&qword_1009F2088, &v43, &v45, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F2088, &_mh_execute_header);
  v43 = xmmword_100567038;
  qword_1009F20A8 = 0;
  unk_1009F20B0 = 0;
  qword_1009F20A0 = 0;
  sub_10004EEB8(&qword_1009F20A0, &v43, v44, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F20A0, &_mh_execute_header);
  sub_10041C9CC();
  v6 = std::string::insert(&v45, 0, "reverseLUT_A");
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v6->__r_.__value_.__l + 2);
  v43 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v43, ".bin");
  v9 = *&v8->__r_.__value_.__l.__data_;
  qword_1009F20C8 = v8->__r_.__value_.__r.__words[2];
  xmmword_1009F20B8 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F20B8, &_mh_execute_header);
  sub_10041C9CC();
  v10 = std::string::insert(&v45, 0, "reverseLUT_A");
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v10->__r_.__value_.__l + 2);
  v43 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v43, ".bin");
  v13 = *&v12->__r_.__value_.__l.__data_;
  qword_1009F20E0 = v12->__r_.__value_.__r.__words[2];
  xmmword_1009F20D0 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F20D0, &_mh_execute_header);
  sub_10041C9CC();
  v14 = std::string::insert(&v45, 0, "reverseLUT_A");
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v14->__r_.__value_.__l + 2);
  v43 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v43, ".bin");
  v17 = *&v16->__r_.__value_.__l.__data_;
  qword_1009F20F8 = v16->__r_.__value_.__r.__words[2];
  xmmword_1009F20E8 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F20E8, &_mh_execute_header);
  sub_10041C9CC();
  v18 = std::string::insert(&v45, 0, "reverseLUT_A");
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v18->__r_.__value_.__l + 2);
  v43 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v43, ".bin");
  v21 = *&v20->__r_.__value_.__l.__data_;
  qword_1009F2110 = v20->__r_.__value_.__r.__words[2];
  xmmword_1009F2100 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2100, &_mh_execute_header);
  sub_10041C9CC();
  v22 = std::string::insert(&v45, 0, "reverseLUT_A");
  v23 = *&v22->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v22->__r_.__value_.__l + 2);
  v43 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v43, ".bin");
  v25 = *&v24->__r_.__value_.__l.__data_;
  qword_1009F2128 = v24->__r_.__value_.__r.__words[2];
  xmmword_1009F2118 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2118, &_mh_execute_header);
  sub_10041C9CC();
  v26 = std::string::insert(&v45, 0, "reverseLUT_A");
  v27 = *&v26->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v26->__r_.__value_.__l + 2);
  v43 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v43, ".bin");
  v29 = *&v28->__r_.__value_.__l.__data_;
  qword_1009F2140 = v28->__r_.__value_.__r.__words[2];
  xmmword_1009F2130 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2130, &_mh_execute_header);
  sub_10041C9CC();
  v30 = std::string::insert(&v45, 0, "reverseLUT_A");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v30->__r_.__value_.__l + 2);
  v43 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v43, ".bin");
  v33 = *&v32->__r_.__value_.__l.__data_;
  qword_1009F2158 = v32->__r_.__value_.__r.__words[2];
  xmmword_1009F2148 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2148, &_mh_execute_header);
  sub_10041C9CC();
  v34 = std::string::insert(&v45, 0, "reverseLUT_A");
  v35 = *&v34->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v34->__r_.__value_.__l + 2);
  v43 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v43, ".bin");
  v37 = *&v36->__r_.__value_.__l.__data_;
  qword_1009F2170 = v36->__r_.__value_.__r.__words[2];
  xmmword_1009F2160 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2160, &_mh_execute_header);
  sub_10041C9CC();
  v38 = std::string::insert(&v45, 0, "reverseLUT_A");
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v38->__r_.__value_.__l + 2);
  v43 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v43, ".bin");
  v41 = *&v40->__r_.__value_.__l.__data_;
  qword_1009F2188 = v40->__r_.__value_.__r.__words[2];
  xmmword_1009F2178 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2178, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_100240CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

char *sub_100240F28(uint64_t a1)
{
  v1 = [*(a1 + 32) servicePoolPrintableState];
  v2 = sub_10003FA2C(@"Finding Service", v1);

  return v2;
}

void sub_100240FC4(id a1)
{
  v1 = objc_alloc_init(NIServerFindingServicePool);
  v2 = qword_1009F2590;
  qword_1009F2590 = v1;
}

void sub_1002411C8(_Unwind_Exception *a1)
{
  v5 = v4;

  std::mutex::unlock((v3 + 112));
  _Unwind_Resume(a1);
}

void sub_10024139C(_Unwind_Exception *a1)
{
  v5 = v4;

  std::mutex::unlock((v2 + 112));
  _Unwind_Resume(a1);
}

void sub_100241444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 176));

  _Unwind_Resume(a1);
}

void sub_1002414C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 176));

  _Unwind_Resume(a1);
}

void sub_100241918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::mutex::unlock((v17 + 176));

  _Unwind_Resume(a1);
}

void sub_100241B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  std::mutex::unlock((v20 + 112));
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100241B3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100241B54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [a2 descriptionInternal];
  v8 = [NSString stringWithFormat:@"Session state [%@]", v7];
  [v6 addObject:v8];

  v9 = [v5 printableState];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100241C88;
  v10[3] = &unk_10099C778;
  v10[4] = *(a1 + 32);
  [v9 enumerateObjectsUsingBlock:v10];
}

void sub_100241C88(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_1002422B0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 32) count];
      v20 = 138543618;
      v21 = v4;
      v22 = 1026;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Service add client %{public}@ (%{public}d previous clients)", &v20, 0x12u);
    }

    [*(*(a1 + 32) + 32) setObject:*(a1 + 48) forKey:*(a1 + 40)];
    [*(*(a1 + 32) + 40) setObject:*(a1 + 56) forKey:*(a1 + 40)];
    [*(*(a1 + 32) + 48) setObject:&__kCFBooleanTrue forKey:*(a1 + 40)];
    if ([*(*(a1 + 32) + 32) count] == 1)
    {
      v6 = [*(a1 + 56) specifiedToken];
      v7 = *(a1 + 32);
      v8 = *(v7 + 88);
      *(v7 + 88) = v6;
    }

    v9 = +[NIServerFindingServicePool sharedInstance];
    [v9 setService:*(a1 + 32) forToken:*(*(a1 + 32) + 88)];

    v10 = *(a1 + 32);
    if (v10[14] == 1)
    {
      v11 = [[NINearbyObject alloc] initWithToken:*(*(a1 + 32) + 88)];
      if ([*(*(a1 + 32) + 136) tellClientAboutPeer])
      {
        [*(a1 + 48) serviceDidDiscoverNearbyObject:v11];
      }

      v12 = [*(*(a1 + 32) + 104) advertisingPeers];
      v13 = [v12 objectForKey:*(*(a1 + 32) + 88)];

      [*(a1 + 32) _processUpdatedCommonConfigurationIfNecessary];
      v14 = [*(*(a1 + 32) + 104) advertisingPeers];
      v15 = [v14 objectForKey:*(*(a1 + 32) + 88)];

      if (v15)
      {
        if ([v15 isEqual:v13])
        {
          v16 = *(a1 + 48);
          v17 = [v15 byteRepresentation];
          [v16 serviceDidGenerateShareableConfigurationData:v17 forObject:v11];
        }
      }
    }

    else
    {
      v18 = [v10 _startService];
      v19 = *(*(a1 + 64) + 8);
      v11 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }
}

void sub_100242670(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 32) objectForKey:?];

    if (v2)
    {
      v3 = [*(*(a1 + 40) + 48) objectForKey:*(a1 + 32)];
      if (!v3)
      {
        __assert_rtn("[NIServerFindingService clientWithIdentifier:updatedStateToRunning:dueToTimeout:]_block_invoke", "NIServerFindingSession.mm", 600, "previousRunState != nil");
      }

      v4 = *(*(a1 + 40) + 48);
      v5 = [NSNumber numberWithBool:*(a1 + 48)];
      [v4 setObject:v5 forKey:*(a1 + 32)];

      v6 = [*(a1 + 40) _isAnyClientRunning];
      v7 = qword_1009F9820;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 48);
        v10 = [v3 BOOLValue];
        v11 = *(a1 + 49);
        v12 = *(*(a1 + 40) + 56);
        v13 = "Idle";
        if (v12 == 1)
        {
          v13 = "Running";
        }

        v18 = 138544642;
        if (v12 == 2)
        {
          v14 = "Paused";
        }

        else
        {
          v14 = v13;
        }

        v19 = v8;
        v20 = 1026;
        v21 = v9;
        v22 = 1026;
        v23 = v10;
        v24 = 1026;
        v25 = v11;
        v26 = 2082;
        v27 = v14;
        v28 = 1026;
        v29 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#find-ses,Service client %{public}@ updated its run state to %{public}d (previous %{public}d) due to timeout %{public}d. Service state: %{public}s. Is any client running %{public}d", &v18, 0x2Eu);
      }

      v15 = *(a1 + 40);
      v16 = v15[14];
      switch(v16)
      {
        case 2:
          goto LABEL_14;
        case 1:
          if ((v6 & 1) == 0)
          {
            [v15 _pauseServiceDueToClientTimeout:*(a1 + 49)];
          }

          break;
        case 0:
LABEL_14:
          if (v6)
          {
            v17 = [v15 _startService];
          }

          break;
      }
    }
  }
}

void sub_10024295C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 40) objectForKey:?];

    if (v2)
    {
      v3 = qword_1009F9820;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        v5 = *(a1 + 32);
        v6 = [*(*(a1 + 40) + 32) count];
        *v18 = 138543874;
        *&v18[4] = v5;
        v19 = 1026;
        *v20 = v4;
        *&v20[4] = 1026;
        *&v20[6] = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Service removing client %{public}@ due to timeout %{public}d (%{public}d clients before removal)", v18, 0x18u);
      }

      [*(*(a1 + 40) + 32) removeObjectForKey:*(a1 + 32)];
      [*(*(a1 + 40) + 40) removeObjectForKey:*(a1 + 32)];
      [*(*(a1 + 40) + 48) removeObjectForKey:*(a1 + 32)];
      v7 = [*(*(a1 + 40) + 32) count];
      v8 = *(a1 + 40);
      if (v7)
      {
        v9 = [v8 _isAnyClientRunning];
        v10 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = *(*(a1 + 40) + 56);
          v13 = "Idle";
          if (v12 == 1)
          {
            v13 = "Running";
          }

          *v18 = 138543874;
          if (v12 == 2)
          {
            v14 = "Paused";
          }

          else
          {
            v14 = v13;
          }

          *&v18[4] = v11;
          v19 = 2082;
          *v20 = v14;
          *&v20[8] = 1026;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#find-ses,Update service after removing client %{public}@. Service state: %{public}s. Is any client running %{public}d", v18, 0x1Cu);
        }

        v15 = *(a1 + 40);
        if (!((v15[14] != 1) | v9 & 1))
        {
          [v15 _pauseServiceDueToClientTimeout:*(a1 + 48)];
          v15 = *(a1 + 40);
        }

        [v15 _processUpdatedCommonConfigurationIfNecessary];
      }

      else
      {
        v16 = v8[11];
        [*(a1 + 40) _resetServiceStateForOperation:2];
        v17 = +[NIServerFindingServicePool sharedInstance];
        [v17 setService:0 forToken:v16];
      }
    }
  }
}

void sub_100242C7C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) advertisingPeers];
  v7 = [v2 objectForKey:*(*(a1 + 32) + 88)];

  v3 = v7;
  if (v7)
  {
    v4 = [[NINearbyObject alloc] initWithToken:*(*(a1 + 32) + 88)];
    v5 = *(a1 + 40);
    v6 = [v7 byteRepresentation];
    [v5 serviceDidGenerateShareableConfigurationData:v6 forObject:v4];

    v3 = v7;
  }
}

void sub_100242D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

id sub_100242E3C(void *a1)
{
  [*(a1[4] + 40) setObject:a1[5] forKey:a1[6]];
  v2 = a1[4];

  return [v2 _processUpdatedCommonConfigurationIfNecessary];
}

void sub_100242F18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  if (v3)
  {
    [v3 timestamp];
    v5 = v4;
    [*(a1 + 40) timestamp];
    if (v5 >= v6)
    {
      return;
    }

    v2 = *(a1 + 32);
  }

  [*(v2 + 120) acceptVisionInput:*(a1 + 40)];
  v7 = *(a1 + 40);
  v8 = (*(a1 + 32) + 160);

  objc_storeStrong(v8, v7);
}

void *sub_100243134(void *result)
{
  v1 = result[4];
  if (*(v1 + 88))
  {
    return [*(v1 + 104) processAdvertisement:result[5] receivedOOBFromPeer:?];
  }

  return result;
}

void *sub_1002432A4(void *result)
{
  v1 = result[4];
  if (*(v1 + 88))
  {
    return [*(v1 + 104) processLostEventReceivedOOBFromPeer:?];
  }

  return result;
}

id sub_100243408(uint64_t a1)
{
  [*(a1 + 32) latitude];
  v28 = v2;
  [*(a1 + 32) longitude];
  v27 = v3;
  v4 = [*(a1 + 32) timestamp];
  [v4 timeIntervalSinceReferenceDate];
  v26 = v5;
  [*(a1 + 32) course];
  v7 = v6;
  [*(a1 + 32) courseAccuracy];
  v9 = v8;
  [*(a1 + 32) speed];
  v11 = v10;
  [*(a1 + 32) speedAccuracy];
  v13 = v12;
  [*(a1 + 32) horizontalAccuracy];
  v15 = v14;
  [*(a1 + 32) verticalAccuracy];
  v17 = v16;
  [*(a1 + 32) altitude];
  v19 = v18;
  [*(a1 + 32) ellipsoidalAltitude];
  v21 = v20;
  v22 = [*(a1 + 32) floor];
  v23 = [*(a1 + 32) locationType];
  v24 = [*(a1 + 32) signalEnvironment];
  v29[0] = v28;
  v29[1] = v27;
  v29[2] = v26;
  v29[3] = v7;
  v29[4] = v9;
  v29[5] = v11;
  v29[6] = v13;
  v29[7] = v15;
  v29[8] = v17;
  v29[9] = v19;
  v29[10] = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;

  return [*(*(a1 + 40) + 120) acceptSelfLocationData:v29];
}

id sub_100243684(uint64_t a1)
{
  [*(a1 + 32) magneticHeading];
  v3 = v2;
  [*(a1 + 32) trueHeading];
  v5 = v4;
  [*(a1 + 32) headingAccuracy];
  v7 = v6;
  v8 = [*(a1 + 32) timestamp];
  [v8 timeIntervalSinceReferenceDate];
  v11[0] = v3;
  v11[1] = v5;
  v11[2] = v7;
  v11[3] = v9;

  return [*(*(a1 + 40) + 120) acceptHeadingData:v11];
}

id sub_1002438C4(uint64_t a1)
{
  [*(a1 + 32) latitude];
  v28 = v2;
  [*(a1 + 32) longitude];
  v27 = v3;
  v4 = [*(a1 + 32) timestamp];
  [v4 timeIntervalSinceReferenceDate];
  v26 = v5;
  [*(a1 + 32) course];
  v7 = v6;
  [*(a1 + 32) courseAccuracy];
  v9 = v8;
  [*(a1 + 32) speed];
  v11 = v10;
  [*(a1 + 32) speedAccuracy];
  v13 = v12;
  [*(a1 + 32) horizontalAccuracy];
  v15 = v14;
  [*(a1 + 32) verticalAccuracy];
  v17 = v16;
  [*(a1 + 32) altitude];
  v19 = v18;
  [*(a1 + 32) ellipsoidalAltitude];
  v21 = v20;
  v22 = [*(a1 + 32) floor];
  v23 = [*(a1 + 32) locationType];
  v24 = [*(a1 + 32) signalEnvironment];
  v29[0] = v28;
  v29[1] = v27;
  v29[2] = v26;
  v29[3] = v7;
  v29[4] = v9;
  v29[5] = v11;
  v29[6] = v13;
  v29[7] = v15;
  v29[8] = v17;
  v29[9] = v19;
  v29[10] = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;

  return [*(*(a1 + 40) + 120) acceptPeerLocationData:v29 forPeer:*(a1 + 48)];
}

void sub_100243B10(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v36 = [NSString stringWithFormat:@"Service ID: %@. Algorithm ID: %@", *(*(a1 + 32) + 16), *(*(a1 + 32) + 24)];
  [v2 addObject:?];

  v3 = *(*(*(a1 + 40) + 8) + 40);
  v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Client tracking: %d clients, %d configs, %d run states", [*(*(a1 + 32) + 32) count], objc_msgSend(*(*(a1 + 32) + 40), "count"), objc_msgSend(*(*(a1 + 32) + 48), "count"));
  [v3 addObject:?];

  [*(*(*(a1 + 40) + 8) + 40) addObject:@"Client details:"];
  v38 = [*(*(a1 + 32) + 32) keyEnumerator];
  for (i = 0; ; i = v5)
  {
    v5 = [v38 nextObject];

    if (!v5)
    {
      break;
    }

    v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v5];
    v7 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v5];
    v8 = [v7 BOOLValue];

    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = "Running";
    if (!v8)
    {
      v10 = "Stopped";
    }

    v11 = [NSString stringWithFormat:@"    %@ : %s", v5, v10];
    [v9 addObject:v11];

    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [NSString stringWithFormat:@"         Config : %@", v6];
    [v12 addObject:v13];
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  v15 = [*(*(a1 + 32) + 88) descriptionInternal];
  v16 = *(*(a1 + 32) + 56);
  v17 = sub_100005288();
  v18 = "Idle";
  if (v16 == 1)
  {
    v18 = "Running";
  }

  if (v16 == 2)
  {
    v18 = "Paused";
  }

  v19 = [NSString stringWithFormat:@"Token: %@. Service state: %s. Age: %0.1f s. Timers in progress: pause delay %d, adv OOB %d", v15, v18, v17 - *(*(a1 + 32) + 64), *(*(a1 + 32) + 96) != 0, *(*(a1 + 32) + 168) != 0];
  [v14 addObject:v19];

  v20 = *(*(*(a1 + 40) + 8) + 40);
  v21 = [NSString stringWithFormat:@"Common configuration: %@", *(*(a1 + 32) + 80)];
  [v20 addObject:v21];

  v22 = *(*(*(a1 + 40) + 8) + 40);
  v23 = [NSString stringWithFormat:@"Peer: %@", *(*(a1 + 32) + 136)];
  [v22 addObject:v23];

  v24 = *(a1 + 32);
  v25 = *(*(*(a1 + 40) + 8) + 40);
  v26 = [NSString stringWithFormat:@"Data managers: loc %d (enabled %d), motion %d (queue %d), gnssExt %d, pdr %d, alt %d", *(v24 + 176) != 0, *(v24 + 208), *(v24 + 192) != 0, *(v24 + 184) != 0, *(v24 + 200) != 0, *(v24 + 216) != 0, *(v24 + 272) != 0];
  [v25 addObject:v26];

  v27 = *(*(*(a1 + 40) + 8) + 40);
  v28 = [NSString stringWithFormat:@"Algorithms: engine %d, enableDeviceFinding %d, cachedVisionInput %d", *(*(a1 + 32) + 120) != 0, *(*(a1 + 32) + 280), *(*(a1 + 32) + 160) != 0];
  [v27 addObject:v28];

  v29 = *(*(*(a1 + 40) + 8) + 40);
  v30 = [NSString stringWithFormat:@"Analytics: normal %d, detailsView %d", *(*(a1 + 32) + 128) != 0, *(*(a1 + 32) + 288) != 0];
  [v29 addObject:v30];

  v31 = *(*(*(a1 + 40) + 8) + 40);
  v32 = [*(*(a1 + 32) + 104) printableState];
  [v31 addObjectsFromArray:v32];

  v33 = *(a1 + 32);
  v34 = *(*(*(a1 + 40) + 8) + 40);
  v35 = [*(v33 + 112) printableState];
  [v34 addObjectsFromArray:v35];
}

void sub_1002451EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = *(WeakRetained + 12);
    *(WeakRetained + 12) = 0;

    if ([*(WeakRetained + 4) count])
    {
      if (([WeakRetained _isAnyClientRunning] & 1) == 0)
      {
        [WeakRetained _resetServiceStateForOperation:0];
      }
    }
  }
}

void sub_1002456D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002456EC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 BOOLValue];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1002461DC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v9];

  if (v6)
  {
    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v9];
    [v7 timeIntervalSinceDate:*(a1 + 40)];
    v8 = [NSNumber numberWithDouble:?];
    [*(*(a1 + 32) + 72) setObject:v8 forKeyedSubscript:v5];
  }
}

void sub_1002462DC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v6];
    v5 = sub_1003465F0(v4);
    [*(*(a1 + 32) + 72) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_1002463B4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v7];
    [v4 doubleValue];
    v6 = [NSString stringWithFormat:@"%0.1f s", v5];
    [*(*(a1 + 32) + 72) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_1002464A8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v7];
    [v4 doubleValue];
    v6 = [NSString stringWithFormat:@"%0.2f m", v5];
    [*(*(a1 + 32) + 72) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_1002467A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100246978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100246A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100246A68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_12;
  }

  if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AFF34();
    if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = sub_1002FE75C((WeakRetained + 28), v8);
      if (v10)
      {
        v11 = v9;
        [v5 userAcceleration];
        v48 = v12;
        [v5 userAcceleration];
        v47 = v13;
        [v5 userAcceleration];
        v46 = v14;
        [v5 rotationRate];
        v45 = v15;
        [v5 rotationRate];
        v44 = v16;
        [v5 rotationRate];
        v43 = v17;
        v49 = [v5 attitude];
        [v49 quaternion];
        v42 = v18;
        v19 = [v5 attitude];
        [v19 quaternion];
        v21 = v20;
        v22 = [v5 attitude];
        [v22 quaternion];
        v24 = v23;
        v25 = [v5 attitude];
        [v25 quaternion];
        v27 = v26;
        [v5 gravity];
        v29 = v28;
        [v5 gravity];
        v31 = v30;
        [v5 gravity];
        v33 = v32;
        v34 = [v5 attitude];
        [v34 yaw];
        v36 = v35;
        v37 = [v5 attitude];
        [v37 pitch];
        v39 = v38;
        v40 = [v5 attitude];
        [v40 roll];
        v50[0] = v11;
        v50[1] = v48;
        v50[2] = v47;
        v50[3] = v46;
        v50[4] = v45;
        v50[5] = v44;
        v50[6] = v43;
        v50[7] = v42;
        v50[8] = v21;
        v50[9] = v24;
        v50[10] = v27;
        v50[11] = v29;
        v50[12] = v31;
        v50[13] = v33;
        v50[14] = v36;
        v50[15] = v39;
        v50[16] = v41;

        [WeakRetained[15] acceptDeviceMotionInput:v50];
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AFFA4();
      }

      goto LABEL_12;
    }
  }

  else if (v5)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AFFE0();
  }

LABEL_12:
}

void sub_100246EE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));

  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

void sub_100246F1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B001C();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = v8;
      v10 = [v5 relativeAltitude];
      [v10 doubleValue];
      v12 = v11;
      v13 = [v5 pressure];
      [v13 doubleValue];
      v15[0] = v9;
      v15[1] = v12;
      v15[2] = v14;

      [WeakRetained[15] acceptAltimeterData:v15];
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B008C();
    }
  }

LABEL_9:
}

void sub_100247038(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10024706C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B00C8();
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else if (v5)
    {
LABEL_5:
      [v5 timestamp];
      v9 = v8;
      v10 = [v5 companionRelativeElevation];
      [v10 doubleValue];
      v12[0] = v9;
      v12[1] = v11;

      [WeakRetained[15] acceptCompanionRelativeElevationData:v12];
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B0138();
    }
  }

LABEL_9:
}

void sub_100247258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100247278(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_52;
  }

  if (v6 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B0174();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else if (v5)
  {
LABEL_5:
    v8 = [v5 deltaPositionX];

    if (v8)
    {
      v9 = [v5 deltaPositionX];
      [v9 doubleValue];
      v61 = v10;

      v11 = 1;
    }

    else
    {
      v11 = 0;
      v61 = 0;
    }

    v12 = [v5 deltaPositionY];

    if (v12)
    {
      v13 = [v5 deltaPositionY];
      [v13 doubleValue];
      v60 = v14;

      v15 = 1;
    }

    else
    {
      v15 = 0;
      v60 = 0;
    }

    v16 = [v5 deltaPositionZ];

    if (v16)
    {
      v17 = [v5 deltaPositionZ];
      [v17 doubleValue];
      v19 = v18;

      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    v21 = [v5 deltaVelocityX];

    if (v21)
    {
      v22 = [v5 deltaVelocityX];
      [v22 doubleValue];
      v24 = v23;

      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    v26 = [v5 deltaVelocityY];

    if (v26)
    {
      v27 = [v5 deltaVelocityY];
      [v27 doubleValue];
      v29 = v28;

      v59 = 1;
    }

    else
    {
      v59 = 0;
      v29 = 0;
    }

    v30 = [v5 deltaVelocityZ];

    v57 = v20;
    v58 = v15;
    v56 = v25;
    if (v30)
    {
      v31 = [v5 deltaVelocityZ];
      [v31 doubleValue];
      v33 = v32;

      v34 = 1;
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    v35 = [v5 quaternionW];

    if (v35)
    {
      v36 = [v5 quaternionW];
      [v36 doubleValue];
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = [v5 quaternionX];

    if (v39)
    {
      v40 = [v5 quaternionX];
      [v40 doubleValue];
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    v43 = [v5 quaternionY];

    if (v43)
    {
      v44 = [v5 quaternionY];
      [v44 doubleValue];
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = [v5 quaternionZ];

    if (v47)
    {
      v48 = [v5 quaternionZ];
      [v48 doubleValue];
      v50 = v49;
    }

    else
    {
      v38 = 0.0;
      v50 = 0;
    }

    [v5 timestamp];
    v62 = v51;
    v63 = 0;
    if (v35)
    {
      v52 = v39 == 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = v52 || v43 == 0;
    v64 = 0;
    v54 = v53;
    v65 = v61;
    v55 = 0.0;
    if (!v53)
    {
      v55 = v38;
    }

    v66 = v11;
    v67 = v60;
    v68 = v58;
    v69 = v19;
    v70 = v57;
    v71 = v24;
    v72 = v56;
    v73 = v29;
    v74 = v59;
    v75 = v33;
    v76 = v34;
    v77 = v55;
    v78 = v42;
    v79 = v46;
    v80 = v50;
    v81 = (v47 != 0) & ~v54;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B01E4();
    }

    [WeakRetained[15] acceptDevicePDRInput:&v62];
    goto LABEL_52;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AFFE0();
  }

LABEL_52:
}

void sub_100249F10(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 88))
  {
    v3 = *(v1 + 136);
    if (v3)
    {
      if ([v3 hasReceivedRangingData])
      {
        v4 = [*(*(a1 + 32) + 104) discoveredPeers];
        v5 = [v4 objectForKeyedSubscript:*(*(a1 + 32) + 88)];

        if (v5)
        {
          [*(a1 + 32) _tryToStartRangingWithPeerAdvertisement:v5];
        }
      }
    }
  }
}

void sub_10024A408(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[11])
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1003464D4("OOBRefresh", 1, v2[11], @"Fired");
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,%{public}@", &v8, 0xCu);
    }

    v5 = v2[21];
    v2[21] = 0;

    v6 = [v2[13] advertisingPeers];
    v7 = [v6 objectForKeyedSubscript:v2[11]];

    if (v7)
    {
      [v2 _generateShareableConfigurationDataForAllListenersUsingAdvertisement:v7];
      [v2 _configureAdvertisementOOBRefreshTimer];
    }
  }
}

void sub_10024AD58(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 revokeFindingExperience])
  {
    [*(a1 + 32) _removeAlgorithmOutputFlagsFromPeerTrackingState:255];
    v4 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-ses,Revoking finding experience", v8, 2u);
    }
  }

  else
  {
    [v3 distance];
    if (v5 != NINearbyObjectDistanceNotAvailable)
    {
      v6 = *(*(a1 + 32) + 288);
      [v3 distance];
      [v6 updateWithMostRecentDistance:v7];
      [*(a1 + 32) _addAlgorithmOutputFlagsToPeerTrackingState:1];
    }
  }
}

void sub_10024B57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024B754(id a1)
{
  v1 = objc_alloc_init(NIServerFindingServiceObserverRelay);
  v2 = qword_1009F25A0;
  qword_1009F25A0 = v1;
}

void sub_10024B97C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10024BC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v11 + 24));

  _Unwind_Resume(a1);
}

void sub_10024BE18(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_10024BE3C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 8) objectForKey:?];

  if (!v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }
}

void sub_10024BEC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#find-ses,Remove stale observer from relay: %{public}@", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 8) removeObjectForKey:v3];
  [*(*(a1 + 32) + 16) removeObjectForKey:v3];
}

void sub_10024D348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[11];
    WeakRetained[11] = 0;

    [WeakRetained _resetSessionStateForOperation:1];
  }
}

void sub_10024D91C(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerFindingSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didGenerateShareableConfigurationData:*(a1 + 40) forObject:*(a1 + 48)];
}

void sub_10024DA4C(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerFindingSession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didDiscoverNearbyObject:*(a1 + 40)];
}

void sub_10024DB7C(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = NIServerFindingSession;
  v2 = objc_msgSendSuper2(&v5, "resourcesManager");
  v3 = [v2 remote];
  v6 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 didRemoveNearbyObjects:v4 withReason:0];
}

void sub_10024DC4C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10024DD20(uint64_t a1)
{
  if ([*(*(a1 + 32) + 104) preferredUpdateRate] != 3)
  {
    v2 = *(a1 + 32);
    if (v2[57] == 1)
    {
      if ((v2[58] & 1) == 0)
      {
        v2[58] = 1;
        v3 = qword_1009F9820;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(*(a1 + 32) + 80);
          v5 = [*(a1 + 40) firstObject];
          [v5 distance];
          *buf = 138543618;
          v11 = v4;
          v12 = 2050;
          v13 = v6;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-ses,Delivered first update [%{public}@]. Range: %{public}0.2f", buf, 0x16u);
        }

        v2 = *(a1 + 32);
      }

      v9.receiver = v2;
      v9.super_class = NIServerFindingSession;
      v7 = objc_msgSendSuper2(&v9, "resourcesManager");
      v8 = [v7 remote];
      [v8 didUpdateNearbyObjects:*(a1 + 40)];
    }
  }
}

void sub_10024DFA0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 104) preferredUpdateRate] != 3 && *(*(a1 + 32) + 57) == 1)
  {
    v4.receiver = *(a1 + 32);
    v4.super_class = NIServerFindingSession;
    v2 = objc_msgSendSuper2(&v4, "resourcesManager");
    v3 = [v2 remote];
    [v3 didUpdateAlgorithmState:*(a1 + 40) forObject:*(a1 + 48)];
  }
}

void sub_10024E13C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10024E3B4()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_10024E464()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10024E514()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10024E5C4()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10024E674()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_10024E724()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_10024E7D4()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10024E884()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10024E934()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100567D88;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_10024EA28()
{
  v0 = objc_autoreleasePoolPush();
  v43 = xmmword_100567CF8;
  v44[0] = unk_100567D08;
  sub_1001BD0B0(qword_1009F21A0, &v43, 4);
  xmmword_1009F21B8 = xmmword_100563BD0;
  unk_1009F21C8 = xmmword_100563BE0;
  qword_1009F21E0 = 0;
  unk_1009F21E8 = 0;
  qword_1009F21D8 = 0x3FD999999999999ALL;
  unk_1009F21F0 = xmmword_100563BF0;
  dword_1009F2200 = 5;
  qword_1009F2208 = 0x4000000000000000;
  dword_1009F2210 = 5;
  byte_1009F2218 = 0;
  unk_1009F221C = 0x30000000ALL;
  xmmword_1009F2228 = xmmword_100563C00;
  unk_1009F2238 = xmmword_100563C10;
  xmmword_1009F2248 = xmmword_100563C20;
  qword_1009F2258 = 0x3FE3333333333333;
  dword_1009F2260 = 3;
  xmmword_1009F2268 = xmmword_100563C30;
  unk_1009F2278 = xmmword_100563C10;
  xmmword_1009F2288 = xmmword_100563C00;
  qword_1009F2298 = 0x3FE3333333333333;
  byte_1009F22A0 = 0;
  xmmword_1009F22A8 = xmmword_100563C40;
  unk_1009F22B8 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  xmmword_1009F22C8 = _Q0;
  qword_1009F22D8 = 0xBFD3333333333333;
  xmmword_1009F22E0 = xmmword_100563C60;
  qword_1009F22F0 = 0x3E99999A40000000;
  xmmword_1009F22F8 = xmmword_100563BE0;
  qword_1009F2310 = 0;
  unk_1009F2318 = 0;
  qword_1009F2308 = 0x3FD999999999999ALL;
  xmmword_1009F2320 = xmmword_100563BF0;
  dword_1009F2330 = 5;
  qword_1009F2338 = 0x4000000000000000;
  dword_1009F2340 = 4;
  qword_1009F2348 = 0x300000008;
  qword_1009F2350 = 0xC04E800000000000;
  v45.__r_.__value_.__r.__words[0] = 0xC04E800000000000;
  sub_1001BD370(qword_1009F2358, &v45, 1);
  xmmword_1009F2370 = xmmword_100563C70;
  qword_1009F2380 = 0x4024000000000000;
  dword_1009F2388 = 45;
  byte_1009F2390 = 0;
  byte_1009F23A8 = 0;
  qword_1009F23B0 = 0;
  byte_1009F23B8 = 0;
  dword_1009F23BC = 1;
  byte_1009F23C0 = 1;
  xmmword_1009F23C8 = xmmword_100563C80;
  xmmword_1009F23D8 = xmmword_100563C90;
  xmmword_1009F23E8 = v42;
  qword_1009F23F8 = 0xC059000000000000;
  xmmword_1009F2400 = xmmword_100563CA0;
  qword_1009F2410 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F2418 = xmmword_100563BE0;
  qword_1009F2428 = 0x3FD999999999999ALL;
  xmmword_1009F2430 = 0u;
  unk_1009F2440 = xmmword_100563BF0;
  dword_1009F2450 = 5;
  qword_1009F2458 = 0x4000000000000000;
  dword_1009F2460 = 10;
  qword_1009F2468 = 0x4034000000000000;
  dword_1009F2470 = 3;
  xmmword_1009F2478 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F21A0, &_mh_execute_header);
  __cxa_atexit(nullsub_73, &off_1009EB9E0, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EB9E8, &_mh_execute_header);
  v43 = xmmword_100567D18;
  v44[0] = unk_100567D28;
  v44[1] = xmmword_100567D38;
  v44[2] = unk_100567D48;
  qword_1009F2490 = 0;
  unk_1009F2498 = 0;
  qword_1009F2488 = 0;
  sub_10004EEB8(&qword_1009F2488, &v43, &v45, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F2488, &_mh_execute_header);
  v43 = xmmword_100567D58;
  qword_1009F24A8 = 0;
  unk_1009F24B0 = 0;
  qword_1009F24A0 = 0;
  sub_10004EEB8(&qword_1009F24A0, &v43, v44, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F24A0, &_mh_execute_header);
  sub_10041C9CC();
  v6 = std::string::insert(&v45, 0, "reverseLUT_A");
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v6->__r_.__value_.__l + 2);
  v43 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v43, ".bin");
  v9 = *&v8->__r_.__value_.__l.__data_;
  qword_1009F24C8 = v8->__r_.__value_.__r.__words[2];
  xmmword_1009F24B8 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F24B8, &_mh_execute_header);
  sub_10041C9CC();
  v10 = std::string::insert(&v45, 0, "reverseLUT_A");
  v11 = *&v10->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v10->__r_.__value_.__l + 2);
  v43 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v43, ".bin");
  v13 = *&v12->__r_.__value_.__l.__data_;
  qword_1009F24E0 = v12->__r_.__value_.__r.__words[2];
  xmmword_1009F24D0 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F24D0, &_mh_execute_header);
  sub_10041C9CC();
  v14 = std::string::insert(&v45, 0, "reverseLUT_A");
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v14->__r_.__value_.__l + 2);
  v43 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v43, ".bin");
  v17 = *&v16->__r_.__value_.__l.__data_;
  qword_1009F24F8 = v16->__r_.__value_.__r.__words[2];
  xmmword_1009F24E8 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F24E8, &_mh_execute_header);
  sub_10041C9CC();
  v18 = std::string::insert(&v45, 0, "reverseLUT_A");
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v18->__r_.__value_.__l + 2);
  v43 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v43, ".bin");
  v21 = *&v20->__r_.__value_.__l.__data_;
  qword_1009F2510 = v20->__r_.__value_.__r.__words[2];
  xmmword_1009F2500 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2500, &_mh_execute_header);
  sub_10041C9CC();
  v22 = std::string::insert(&v45, 0, "reverseLUT_A");
  v23 = *&v22->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v22->__r_.__value_.__l + 2);
  v43 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v43, ".bin");
  v25 = *&v24->__r_.__value_.__l.__data_;
  qword_1009F2528 = v24->__r_.__value_.__r.__words[2];
  xmmword_1009F2518 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2518, &_mh_execute_header);
  sub_10041C9CC();
  v26 = std::string::insert(&v45, 0, "reverseLUT_A");
  v27 = *&v26->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v26->__r_.__value_.__l + 2);
  v43 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v43, ".bin");
  v29 = *&v28->__r_.__value_.__l.__data_;
  qword_1009F2540 = v28->__r_.__value_.__r.__words[2];
  xmmword_1009F2530 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2530, &_mh_execute_header);
  sub_10041C9CC();
  v30 = std::string::insert(&v45, 0, "reverseLUT_A");
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v30->__r_.__value_.__l + 2);
  v43 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v43, ".bin");
  v33 = *&v32->__r_.__value_.__l.__data_;
  qword_1009F2558 = v32->__r_.__value_.__r.__words[2];
  xmmword_1009F2548 = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2548, &_mh_execute_header);
  sub_10041C9CC();
  v34 = std::string::insert(&v45, 0, "reverseLUT_A");
  v35 = *&v34->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v34->__r_.__value_.__l + 2);
  v43 = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v43, ".bin");
  v37 = *&v36->__r_.__value_.__l.__data_;
  qword_1009F2570 = v36->__r_.__value_.__r.__words[2];
  xmmword_1009F2560 = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2560, &_mh_execute_header);
  sub_10041C9CC();
  v38 = std::string::insert(&v45, 0, "reverseLUT_A");
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v44[0] = *(&v38->__r_.__value_.__l + 2);
  v43 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v43, ".bin");
  v41 = *&v40->__r_.__value_.__l.__data_;
  qword_1009F2588 = v40->__r_.__value_.__r.__words[2];
  xmmword_1009F2578 = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  if (SBYTE7(v44[0]) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2578, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_10024F408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 73) < 0)
  {
    operator delete(*(v22 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_100250154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v24 = *(v21 - 80);
  if (v24)
  {
    *(v21 - 72) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1002501F0(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_100009838(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void sub_100250A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v30 = *(v28 - 144);
  if (v30)
  {
    *(v28 - 136) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 112);
  if (v31)
  {
    *(v28 - 104) = v31;
    operator delete(v31);
  }

  v32 = *(v28 - 80);
  if (v32)
  {
    *(v28 - 72) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_100250D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100250E48(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      sub_100019B38();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

uint64_t sub_100250F8C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 24);
  return result;
}

void sub_100250F98(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x18u);
}

uint64_t sub_1002524CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = *(sub_1000054A8() + 144);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10022F674(a1 + 24, a4);
  v8 = v7;
  *(a1 + 56) = v8;
  sub_10025448C(v12, a3);
  sub_100254524(a1 + 64, v12);
  sub_10022F5F4(v12);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (!*(a1 + 56))
  {
    v10 = "fDispatchQueue";
    v11 = 53;
    goto LABEL_8;
  }

  if (!*(a1 + 88))
  {
    v10 = "fInjectIsoCb";
    v11 = 54;
    goto LABEL_8;
  }

  if (!*(a1 + 48))
  {
    v10 = "fGetIsoCb";
    v11 = 55;
LABEL_8:
    __assert_rtn("PRIsoQueryManager", "PRIsoQueryManager.mm", v11, v10);
  }

  return a1;
}

void sub_1002525F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10022F5F4(va);

  sub_10022F70C(v2 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_100252668(uint64_t a1)
{
  sub_100252728(a1);
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100252794;
    block[3] = &unk_10098AD98;
    block[4] = a1;
    dispatch_sync(v3, block);
    v2 = *(a1 + 112);
  }

  sub_10022F8F0(a1 + 64);
  sub_10022F70C(a1 + 24);

  return a1;
}

void sub_100252728(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    [v2 enumerateObjectsUsingBlock:&stru_1009A0788];
    [*(a1 + 96) removeAllObjects];
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 16);
    *(a1 + 16) = 0;
  }
}

void sub_10025279C(uint64_t a1)
{
  if (*(a1 + 112))
  {
    v2 = qword_1009F25B0;
    if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,PRIsoQueryManager: Cancelling fNoDeviceFoundErrorSubmissionTimer", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 112));
    v3 = *(a1 + 112);
    *(a1 + 112) = 0;
  }
}

void sub_100252828(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B12A8();
  }

  v2 = objc_alloc_init(RPCompanionLinkClient);
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;

  [*(a1 + 16) setInvalidationHandler:&stru_1009A0590];
  v4 = *(a1 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002529A4;
  v7[3] = &unk_1009A05B0;
  v7[4] = a1;
  [v4 registerRequestID:@"com.apple.proximity.regulatoryrappportlink" options:0 handler:v7];
  v5 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,registerIsoQueryListener request handler registered", v6, 2u);
  }
}

void sub_100252940(id a1)
{
  v1 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,isoQueryListener client invalidation", v2, 2u);
  }
}

void sub_1002529A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 48);
  if (!v10)
  {
    sub_100037B10();
  }

  (*(*v10 + 48))(__p);
  if (v17 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = [NSString stringWithCString:v11 encoding:4];
  v20[0] = @"name";
  v20[1] = @"version";
  v21[0] = @"RegulatoryInfo";
  v21[1] = @"1.0";
  v20[2] = @"country";
  v21[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
  v14 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    if (v17 < 0)
    {
      if (__p[1])
      {
        v15 = __p[0];
      }

      else
      {
        v15 = "__";
      }
    }

    else
    {
      v15 = __p;
      if (!v17)
      {
        v15 = "__";
      }
    }

    *buf = 136315138;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,isoQueryListener,request received,isoCountry:%s", buf, 0xCu);
  }

  (*(v9 + 2))(v9, v13, 0, 0);

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100252BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100252BF8(uint64_t a1)
{
  if (sub_100003AA8(*a1))
  {

    sub_100252828(a1);
  }

  else if (sub_10041C7EC(*a1))
  {
    if (*(a1 + 16))
    {
      v2 = qword_1009F25B0;
      if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,start, active discovery client present", buf, 2u);
      }
    }

    else
    {
      *(a1 + 104) = 0;
      v3 = objc_alloc_init(NSMutableArray);
      v4 = *(a1 + 96);
      *(a1 + 96) = v3;

      v5 = objc_alloc_init(RPCompanionLinkClient);
      v6 = *(a1 + 16);
      *(a1 + 16) = v5;

      [*(a1 + 16) setDispatchQueue:*(a1 + 56)];
      [*(a1 + 16) setInvalidationHandler:&stru_1009A05D0];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100252E9C;
      v9[3] = &unk_10098AD98;
      v9[4] = a1;
      [*(a1 + 16) setInterruptionHandler:v9];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100252F0C;
      v8[3] = &unk_1009A05F0;
      v8[4] = a1;
      [*(a1 + 16) setDeviceFoundHandler:v8];
      v7 = qword_1009F25B0;
      if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,start, activating discovery client", buf, 2u);
      }

      [*(a1 + 16) setFlags:{objc_msgSend(*(a1 + 16), "flags") | 0x10}];
      [*(a1 + 16) setControlFlags:{objc_msgSend(*(a1 + 16), "controlFlags") | 0x980E}];
      *(a1 + 8) = sub_100005288();
      [*(a1 + 16) activateWithCompletion:&stru_1009A0610];
      sub_100253328(a1);
    }
  }
}

void sub_100252E38(id a1)
{
  v1 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,start,invalidationHandler, discovery client invalidation", v2, 2u);
  }
}

id sub_100252E9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,start,interruptionHandler,discovery client", v4, 2u);
  }

  return [*(v1 + 96) removeAllObjects];
}

void sub_100252F14(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = qword_1009F25B0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 effectiveIdentifier];
      v6 = [v3 model];
      *buf = 138478083;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,connectWithActiveDevice, device found: %{private}@ %@", buf, 0x16u);
    }

    if (*(a1 + 104) == 1)
    {
      v7 = qword_1009F25B0;
      if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,connectWithActiveDevice, device found, ignoring, Iso already available", buf, 2u);
      }
    }

    else
    {
      v8 = [v3 model];
      if (!v8 || ([v3 model], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsString:", @"iPhone"), v9, v8, (v10 & 1) != 0))
      {
        sub_10025279C(a1);
        v11 = qword_1009F25B0;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 effectiveIdentifier];
          v13 = [v3 model];
          *buf = 138478083;
          v20 = v12;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,connectWithActiveDevice, activating %{private}@ %@", buf, 0x16u);
        }

        v14 = objc_alloc_init(RPCompanionLinkClient);
        [v14 setControlFlags:{objc_msgSend(v14, "controlFlags") | 0x980E}];
        [v14 setDestinationDevice:v3];
        [v14 setDispatchQueue:*(a1 + 56)];
        [v14 setInvalidationHandler:&stru_1009A0670];
        [v14 setInterruptionHandler:&stru_1009A0690];
        [*(a1 + 96) addObject:v14];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100253600;
        v16[3] = &unk_1009A06B8;
        v18 = a1;
        v15 = v14;
        v17 = v15;
        [v15 activateWithCompletion:v16];
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_ERROR))
  {
    sub_1004B12E8();
  }
}

void sub_100253294(id a1, NSError *a2)
{
  v2 = a2;
  v3 = qword_1009F25B0;
  if (v2)
  {
    if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1324();
    }
  }

  else if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,start, activateWithCompletion, success", v4, 2u);
  }
}

BOOL sub_100253328(uint64_t a1)
{
  sub_10025279C(a1);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 56));
  v3 = *(a1 + 112);
  *(a1 + 112) = v2;

  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = dispatch_time(0, 1800000000000);
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    v6 = *(a1 + 112);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100253410;
    handler[3] = &unk_10098AD98;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(*(a1 + 112));
  }

  return v4 != 0;
}

uint64_t sub_100253410(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B1398();
  }

  sub_10025279C(v1);
  return AnalyticsSendEventLazy();
}

NSDictionary *__cdecl sub_100253470(id a1)
{
  v4 = @"ErrorCode";
  v1 = [NSNumber numberWithInt:6];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100253538(id a1)
{
  v1 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,connectWithActiveDevice, client invalidation", v2, 2u);
  }
}

void sub_10025359C(id a1)
{
  v1 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,connectWithActiveDevice,interruptionHandler, connectionClient interrupted", v2, 2u);
  }
}

void sub_100253610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1009F25B0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 destinationDevice];
    v9 = [v8 effectiveIdentifier];
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,sendIsoRequest, device:%{private}@", &buf, 0xCu);
  }

  if (v6)
  {
    if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_ERROR))
    {
      sub_1004B13D8();
    }

    [*(a1 + 96) removeObject:v5];
    if ((*(a1 + 104) & 1) == 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v27 = 0x2020000000;
      v10 = [v6 code];
      if (v10 > -6723)
      {
        if (v10 == -6714)
        {
          v11 = 2;
          goto LABEL_21;
        }

        if (v10 == -6722)
        {
          v11 = 1;
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 == -71143)
        {
          v11 = 5;
          goto LABEL_21;
        }

        if (v10 == -6727)
        {
          v11 = 3;
LABEL_21:
          v28 = v11;
          v19 = _NSConcreteStackBlock;
          v20 = 3221225472;
          v21 = sub_1002539D0;
          v22 = &unk_1009A06E0;
          p_buf = &buf;
          AnalyticsSendEventLazy();
          _Block_object_dispose(&buf, 8);
          goto LABEL_22;
        }
      }

      v11 = 0;
      goto LABEL_21;
    }
  }

  else if ([*(a1 + 96) containsObject:v5])
  {
    v24 = RPOptionStatusFlags;
    v12 = [NSNumber numberWithUnsignedLongLong:24590];
    v25 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100253AA4;
    v16[3] = &unk_1009A0748;
    v18 = a1;
    v17 = v5;
    [v17 sendRequestID:@"com.apple.proximity.regulatoryrappportlink" request:&__NSDictionary0__struct options:v13 responseHandler:v16];
  }

  else
  {
    v14 = qword_1009F25B0;
    if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 104);
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,sendIsoRequest, client invalid fIsoKnown = %d", &buf, 8u);
    }
  }

LABEL_22:
}

id sub_1002539D0(uint64_t a1)
{
  v4 = @"ErrorCode";
  v1 = [NSNumber numberWithInt:*(*(*(a1 + 32) + 8) + 24)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100253AA4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  v11 = qword_1009F25B0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) destinationDevice];
    v13 = [v12 effectiveIdentifier];
    *buf = 138477827;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,sendIsoRequest,response, device:%{private}@", buf, 0xCu);
  }

  if ([*(v10 + 96) containsObject:*(a1 + 32)])
  {
    if (*(v10 + 104) == 1)
    {
      v14 = qword_1009F25B0;
      if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        v15 = "#regulatory,isoquerymgr,sendIsoRequest,response, Iso available, ignoring error = %@";
        v16 = v14;
        v17 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (v9)
    {
      if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_ERROR))
      {
        sub_1004B144C();
      }

      [*(a1 + 32) invalidate];
      [*(v10 + 96) removeObject:*(a1 + 32)];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v20 = [v9 code];
      if (v20 > -6723)
      {
        if (v20 == -6714)
        {
          v21 = 2;
          goto LABEL_31;
        }

        if (v20 == -6722)
        {
          v21 = 1;
          goto LABEL_31;
        }
      }

      else
      {
        if (v20 == -71143)
        {
          v21 = 5;
          goto LABEL_31;
        }

        if (v20 == -6727)
        {
          v21 = 3;
LABEL_31:
          LODWORD(v45) = v21;
          v39 = _NSConcreteStackBlock;
          v40 = 3221225472;
          v41 = sub_100254154;
          v42 = &unk_1009A06E0;
          v43 = buf;
          AnalyticsSendEventLazy();
          _Block_object_dispose(buf, 8);
          goto LABEL_41;
        }
      }

      v21 = 0;
      goto LABEL_31;
    }

    if (v7)
    {
      v22 = [v7 objectForKeyedSubscript:@"name"];
      if (v22)
      {
        v23 = [v7 objectForKeyedSubscript:@"version"];
        if (v23)
        {
          v24 = [v7 objectForKeyedSubscript:@"country"];
          v25 = v24 == 0;

          if (!v25)
          {
            v26 = qword_1009F25B0;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [v7 objectForKeyedSubscript:@"name"];
              v27 = [v7 objectForKeyedSubscript:@"version"];
              v28 = [v7 objectForKeyedSubscript:@"country"];
              *buf = 138412802;
              *&buf[4] = v35;
              *&buf[12] = 2112;
              *&buf[14] = v27;
              *&buf[22] = 2112;
              v45 = v28;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,sendIsoRequest,response, %@ %@ %@", buf, 0x20u);
            }

            v29 = *(v10 + 56);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100254228;
            block[3] = &unk_10098A450;
            v38 = v10;
            v30 = v7;
            v37 = v30;
            dispatch_async(v29, block);
            v31 = [v30 objectForKeyedSubscript:@"country"];
            v32 = v31;
            sub_100004A08(buf, [v31 UTF8String]);
            if ((buf[23] & 0x80000000) != 0)
            {
              v33 = *&buf[8] == 0;
              operator delete(*buf);
            }

            else
            {
              v33 = buf[23] == 0;
            }

            if (!v33)
            {
              *(v10 + 104) = 1;
              floor(sub_100005288() - *(v10 + 8));
              AnalyticsSendEventLazy();
            }

LABEL_36:
            if (*(v10 + 104) == 1)
            {
              v34 = qword_1009F25B0;
              if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#regulatory,isoquerymgr,sendIsoRequest,response, Iso available,teardown", buf, 2u);
              }

              sub_100252728(v10);
            }

            else
            {
              [*(a1 + 32) invalidate];
              [*(v10 + 96) removeObject:*(a1 + 32)];
            }

            goto LABEL_41;
          }
        }

        else
        {
        }
      }
    }

    if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_ERROR))
    {
      sub_1004B14C0();
    }

    AnalyticsSendEventLazy();
    goto LABEL_36;
  }

  v18 = qword_1009F25B0;
  if (os_log_type_enabled(qword_1009F25B0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v10 + 104);
    *buf = 67109120;
    *&buf[4] = v19;
    v15 = "#regulatory,isoquerymgr,sendIsoRequest,response, client connection invalid fIsoKnown = %d";
    v16 = v18;
    v17 = 8;
    goto LABEL_9;
  }

LABEL_41:
}

id sub_100254154(uint64_t a1)
{
  v4 = @"ErrorCode";
  v1 = [NSNumber numberWithInt:*(*(*(a1 + 32) + 8) + 24)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100254228(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"country"];
  sub_100004A08(__p, [v2 UTF8String]);
  v3 = *(v1 + 88);
  if (!v3)
  {
    sub_100037B10();
  }

  (*(*v3 + 48))(v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002542C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_1002542EC(uint64_t a1)
{
  v4 = @"MCCSearchTime";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_1002543BC(id a1)
{
  v4 = @"ErrorCode";
  v1 = [NSNumber numberWithInt:4];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_10025448C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100254524(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *sub_1002545A4(void *a1)
{
  *a1 = off_1009A07B8;
  sub_10022F5F4((a1 + 1));
  return a1;
}

void sub_1002545E8(void *a1)
{
  *a1 = off_1009A07B8;
  sub_10022F5F4((a1 + 1));

  operator delete();
}

void sub_1002546F8(void *a1)
{
  sub_10022F5F4(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100254734(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100037B10();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_10025477C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002547C8(uint64_t a1, uint64_t a2)
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

void sub_100254848()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F25B0 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10025489C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = dispatch_queue_create(off_1009EBAB0[0], 0);
  v6 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  sub_1001DB3FC(a1 + 24, a3);
  *(a1 + 64) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 345600;
  v7 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "regulatory,download,sm,init", buf, 2u);
  }

  *buf = 0;
  v8 = sub_100003AE0();
  v9 = sub_10045C574(v8, buf);
  if (*buf > 300 && v9)
  {
    *(a1 + 72) = *buf;
  }

  v11 = +[BGSystemTaskScheduler sharedScheduler];
  [v11 deregisterTaskWithIdentifier:@"com.apple.nearbyd.regdownload.task"];

  v12 = +[BGSystemTaskScheduler sharedScheduler];
  v13 = *a1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100254A8C;
  v15[3] = &unk_1009A0888;
  v15[4] = a1;
  [v12 registerForTaskWithIdentifier:@"com.apple.nearbyd.regdownload.task" usingQueue:v13 launchHandler:v15];

  sub_100254B84(a1);
  sub_100254D5C(a1);

  return a1;
}

void sub_100254A3C(_Unwind_Exception *a1)
{
  v5 = v4;

  sub_100005F4C(v3, 0, v7, v8, v9, v10, v11, v12);
  sub_1001B3E54((v1 + 3));

  _Unwind_Resume(a1);
}

void sub_100254A94(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*a1);
  [v3 setExpirationHandler:&stru_1009A08A8];
  v4 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,download,triggerUpdate", buf, 2u);
  }

  sub_1002551B4(a1);
  v5 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "regulatory,download,task complete", v6, 2u);
  }

  [v3 setTaskCompleted];
}

void sub_100254B84(uint64_t a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 taskRequestForIdentifier:@"com.apple.nearbyd.regdownload.task"];

  if (v3)
  {
    v4 = qword_1009F25B8;
    if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "task already submitted, return", buf, 2u);
    }
  }

  else
  {
    v5 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.nearbyd.regdownload.task"];
    [v5 setInterval:*(a1 + 72)];
    [v5 setMinDurationBetweenInstances:(*(a1 + 72) + -900.0)];
    [v5 setPriority:2];
    [v5 setPreventsDeviceSleep:0];
    [v5 setShouldWakeDevice:0];
    v6 = +[BGSystemTaskScheduler sharedScheduler];
    v11 = 0;
    v7 = [v6 submitTaskRequest:v5 error:&v11];
    v8 = v11;

    v9 = qword_1009F25B8;
    if (v7)
    {
      if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "submitted regulatory download task successfully", v10, 2u);
      }
    }

    else if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_ERROR))
    {
      sub_1004B14FC(v8, v9);
    }
  }
}

void sub_100254D5C(NSObject **a1)
{
  v2 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "regulatory,download,triggerUpdate,startup", buf, 2u);
  }

  v3 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002552F4;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

uint64_t sub_100254E1C(uint64_t a1)
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  v3 = [v2 deregisterTaskWithIdentifier:@"com.apple.nearbyd.regdownload.task"];

  v4 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "deregister %d in destructor", v12, 8u);
  }

  sub_100005F4C((a1 + 64), 0, v5, v6, v7, v8, v9, v10);
  sub_1001B3E54(a1 + 24);

  return a1;
}

void sub_100254F18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_100254F28(NSObject **a1)
{
  v2 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "regulatory,download,onFirstUnlock", buf, 2u);
  }

  v3 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100254FE4;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_100254FE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (sub_100255034(v1))
  {
    *(v1 + 56) = 0;

    sub_1002551B4(v1);
  }
}

uint64_t sub_100255034(uint64_t a1)
{
  sub_1000054A8();
  sub_100005544(off_1009EBAD0, &v14);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v2 = &v14;
  }

  else
  {
    v2 = v14.__r_.__value_.__r.__words[0];
  }

  sub_100004A08(v12, v2);
  if (sub_1003033C8(v12))
  {
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v14;
    }

    else
    {
      v3 = v14.__r_.__value_.__r.__words[0];
    }

    sub_100004A08(v10, v3);
    sub_100303404(v10);
    if (v4 <= *(a1 + 72))
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v14;
      }

      else
      {
        v6 = v14.__r_.__value_.__r.__words[0];
      }

      sub_100004A08(__p, v6);
      v5 = sub_100303DFC(__p) ^ 1;
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v5 = 1;
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    v5 = 1;
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_100255148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1002551B4(uint64_t a1)
{
  if (sub_100255034(a1))
  {
    if ((sub_100255360(a1) & 1) == 0)
    {
      v2 = *(a1 + 56);
      *(a1 + 56) = v2 + 1;
      if (v2 <= 3)
      {

        sub_10025521C(a1);
      }
    }
  }
}

void sub_10025521C(NSObject **a1)
{
  v2 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "regulatory,download,triggerUpdate,retry", buf, 2u);
  }

  v3 = dispatch_time(0, 60000000000);
  v4 = *a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002552EC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_after(v3, v4, block);
}

void sub_1002552FC(id a1)
{
  v1 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "regulatory,download,task expiring", v2, 2u);
  }
}

uint64_t sub_100255360(dispatch_queue_t *a1)
{
  dispatch_assert_queue_V2(*a1);
  v1 = CLCopyNearbyAssetSettings();
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFDictionaryGetTypeID())
    {
      v4 = qword_1009F25B8;
      if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "regulatory,download,copyFromCLMobileAsset,copyData", buf, 2u);
      }

      value = 0;
      ValueIfPresent = CFDictionaryGetValueIfPresent(v2, @"PrGlobalTileKey", &value);
      sub_1000054A8();
      sub_100005544(off_1009EBAC8[0], &v9);
      if (ValueIfPresent)
      {
        if (value)
        {
          v6 = CFGetTypeID(value);
          if (v6 == CFDataGetTypeID())
          {
            operator new();
          }
        }
      }

      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
      }

LABEL_15:
      CFRelease(v2);
      return 0;
    }
  }

  v7 = qword_1009F25B8;
  if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "regulatory,download,triggerUpdate,copyFromCLMobileAsset,skipped", buf, 2u);
  }

  result = 0;
  if (v2)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_100255768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

void sub_10025582C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v2 = *v2;
  }

  sub_100004A08(__p, v2);
  sub_1002558A4(v1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100255888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002558A4(uint64_t a1, uint64_t *a2)
{
  sub_1000054A8();
  sub_100005544(off_1009EBAD0, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = [NSString stringWithCString:p_p encoding:4];
  v6 = [NSURL fileURLWithPath:v5 isDirectory:0];

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [NSString stringWithUTF8String:v7];
    v9 = [NSURL fileURLWithPath:v8 isDirectory:0];

    if (v9)
    {
      v10 = +[NSFileManager defaultManager];
      v21 = 0;
      v22 = 0;
      v11 = [v10 replaceItemAtURL:v6 withItemAtURL:v9 backupItemName:0 options:1 resultingItemURL:&v22 error:&v21];
      v12 = v22;
      v13 = v21;

      v14 = *(a1 + 8);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100255C84;
      v20[3] = &unk_10098AD98;
      v20[4] = a1;
      dispatch_async(v14, v20);
      v15 = qword_1009F25B8;
      if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        *buf = 136315394;
        v25 = v16;
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "regulatory,download,safeReplaceFileOnDiskWith,%s,replacementSucceeded,%d", buf, 0x12u);
      }
    }

    else
    {
      v18 = qword_1009F25B8;
      if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1574(v18);
      }

      v12 = 0;
      v13 = 0;
      v11 = 0;
    }
  }

  else
  {
    v17 = qword_1009F25B8;
    if (os_log_type_enabled(qword_1009F25B8, OS_LOG_TYPE_ERROR))
    {
      sub_1004B15B8(v17);
    }

    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_100255B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_100255BAC(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_1000056BC(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_100255BD8(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

float sub_100255BEC(FILE *a1, uint64_t a2)
{
  if (a1 && sub_100303650(a1, a2) && fread(&__ptr, 1uLL, 6uLL, a1) == 6)
  {
    *(a2 + 84) = __ptr;
    if (*a2 == 2)
    {
      v5 = bswap32(v7);
    }

    else
    {
      v5 = v7;
    }

    result = v5 / 100.0;
    *(a2 + 80) = result;
  }

  return result;
}

uint64_t sub_100255C84(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_100255CB8()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F25B8 = os_log_create("com.apple.nearbyd", "Regulatory");

  objc_autoreleasePoolPop(v0);
}

void sub_100255D0C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 != CFStringGetTypeID())
    {
      sub_1004B1610();
    }

    v4 = off_1009EBAD8;
    off_1009EBAD8 = v2;
  }
}

id sub_100255D80()
{
  v0 = MGCopyAnswerWithError();

  return v0;
}

id sub_100255DC4()
{
  if (qword_1009F25D0 != -1)
  {
    sub_1004B163C();
  }

  v1 = qword_1009F25C8;

  return v1;
}

void sub_100255E08(id a1)
{
  v1 = MGCopyAnswerWithError();
  v2 = qword_1009F25C8;
  qword_1009F25C8 = v1;
}

void sub_100255E4C(id a1)
{
  v1 = MGCopyAnswerWithError();
  v2 = qword_1009F25D8;
  qword_1009F25D8 = v1;
}

__CFString *sub_100255E90()
{
  if (qword_1009F25E8 != -1)
  {
    sub_1004B1650();
  }

  v1 = off_1009EBAE0;

  return v1;
}

void sub_100255ED4(id a1)
{
  v5 = MGCopyAnswer();
  v1 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", 2 * [v5 length]);
  v2 = [v5 bytes];
  for (i = 0; i < [v5 length]; ++i)
  {
    [(__CFString *)v1 appendFormat:@"%02lX", v2[i]];
  }

  if (!v1)
  {
    __assert_rtn("PRGetDeviceWifiSKU_block_invoke", "PRUtilities.m", 104, "mutableString");
  }

  v4 = off_1009EBAE0;
  off_1009EBAE0 = v1;
}

uint64_t sub_100255FEC()
{
  if (qword_1009F25F8 != -1)
  {
    sub_1004B1664();
  }

  return byte_1009F25F0;
}

void sub_100256024(id a1)
{
  v1 = MGCopyAnswer();
  byte_1009F25F0 = [v1 BOOLValue];
}

uint64_t sub_100256090()
{
  if (qword_1009F2608 != -1)
  {
    sub_1004B1678();
  }

  return byte_1009F2600;
}

void sub_1002560C8(id a1)
{
  v1 = MGCopyAnswer();
  byte_1009F2600 = [v1 BOOLValue];
}

uint64_t sub_100256134()
{
  if (qword_1009F2618 != -1)
  {
    sub_1004B168C();
  }

  return byte_1009F2610;
}

void sub_10025616C(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    byte_1009F2610 = CFEqual(v1, @"NonUI") != 0;

    CFRelease(v2);
  }

  else
  {
    byte_1009F2610 = 0;
  }
}

id sub_1002561E4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] == 6)
  {
    v3 = +[NSMutableString string];
    v4 = [v2 bytes];
    for (i = 0; [v2 length] > i; ++i)
    {
      [v3 appendFormat:@"%02lX", i[v4]];
      if ([v2 length] - 1 > i)
      {
        [v3 appendString:@":"];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100256428(uint64_t a1)
{
  v2 = +[NSMapTable strongToWeakObjectsMapTable];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

void sub_1002564C8(id a1)
{
  v1 = [[_InternalVisionSession alloc] _initInternal];
  v2 = qword_1009F2620;
  qword_1009F2620 = v1;
}

void sub_1002565CC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 16) count];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = v2;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#vision,registerObserver: %@. Before: %d, after: %d.", &v7, 0x18u);
  }

  if (v2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    [*(a1 + 32) _setUpARSession];
  }
}

void sub_10025676C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 16) count];
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 1024;
    v10 = v2;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#vision,unregisterObserver: %@. Before: %d, after: %d.", &v7, 0x18u);
  }

  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [*(a1 + 32) _tearDownARSession];
  }
}

uint64_t sub_100256BA8(uint64_t a1)
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#vision,Attempt relocalization: %d", v4, 8u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100257278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = NIServerVisionInternalSessionRequest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100257438(void *a1, void *a2)
{
  v3 = a2;
  *a1 = 0;
  a1[1] = v3;
  v4 = dispatch_queue_create("com.apple.nearbyd.Rose.analytics", 0);
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = v4;
  v5 = 0;
  operator new();
}

void sub_1002579A4(_Unwind_Exception *a1)
{
  v5 = *(v1 + 1712);
  if (v5)
  {
    sub_10000AD84(v5);
  }

  std::mutex::~mutex((v1 + 1608));
  std::condition_variable::~condition_variable((v1 + 1560));
  std::condition_variable::~condition_variable((v1 + 1408));
  std::mutex::~mutex((v1 + 1344));
  sub_100005F4C(v3, 0, v6, v7, v8, v9, v10, v11);
  v12 = *(v1 + 1320);
  if (v12)
  {
    sub_10000AD84(v12);
  }

  v13 = *(v1 + 1304);
  if (v13)
  {
    sub_10000AD84(v13);
  }

  sub_10041B224(v1 + 1248);
  sub_1004750E8(v1 + 40);

  _Unwind_Resume(a1);
}

void sub_100257AA8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100269234;
  v3[3] = &unk_100998F28;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100257B20(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = qword_1009F2630;
  switch(a2)
  {
    case 2:
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B172C();
      }

      goto LABEL_14;
    case 1:
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1760();
      }

      goto LABEL_14;
    case 0:
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FW crash metric being submitted", buf, 2u);
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B1794(a3);
      }

LABEL_14:
      AnalyticsSendEventLazy();
      return;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1830();
  }
}

uint64_t sub_100257D1C(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "~PRRose()", buf, 2u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100257E74;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 1712);
  if (v4)
  {
    sub_10000AD84(v4);
  }

  std::mutex::~mutex((a1 + 1608));
  std::condition_variable::~condition_variable((a1 + 1560));
  std::condition_variable::~condition_variable((a1 + 1408));
  std::mutex::~mutex((a1 + 1344));
  sub_100005F4C((a1 + 1328), 0, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 1320);
  if (v11)
  {
    sub_10000AD84(v11);
  }

  v12 = *(a1 + 1304);
  if (v12)
  {
    sub_10000AD84(v12);
  }

  sub_10041B224(a1 + 1248);
  sub_1004750E8(a1 + 40);

  return a1;
}

void sub_100257E7C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Cancelling SecureRom timer", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 24));
    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

void sub_100257F08(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100257F80;
  v3[3] = &unk_100998F28;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100257F90(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, off_1009A1050[a2]);
    v5 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deactivating Rose with reason: %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v6 = (a1 + 1240);
  v7 = atomic_load((a1 + 1240));
  if (v7 == 8 || (v8 = atomic_load(v6), v8 == 10) || (v9 = atomic_load(v6)) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B191C(v6);
    }
  }

  else
  {
    v10 = atomic_load(v6);
    if (v10 == 11)
    {
      v11 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose waking Rose from DSLP to properly power down", __p, 2u);
      }

      sub_100259A44(a1);
    }

    if (!sub_100259B08(a1) && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B18E8();
    }

    if (v10 == 11)
    {
      sub_100259C6C(a1);
    }

    else
    {
      atomic_store(8u, (a1 + 1240));
      sub_100259D80(a1);
    }

    *(a1 + 1244) = a2;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100259EA8;
    v12[3] = &unk_100998F28;
    v12[4] = a1;
    v13 = a2;
    sub_1002593D8(a1, v12);
  }
}

uint64_t sub_1002581E8(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100258294;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100258294(uint64_t result)
{
  v1 = atomic_load((*(result + 40) + 1240));
  *(*(*(result + 32) + 8) + 24) = v1 - 10 < 0xFFFFFFFE;
  return result;
}

uint64_t sub_1002582B8(uint64_t a1, io_iterator_t a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_serviceMatchRoseSupervisor is called", buf, 2u);
  }

  if (!a1)
  {
    sub_1004B1998();
LABEL_52:
    __break(1u);
  }

  result = IOIteratorNext(a2);
  v6 = result;
  if (result)
  {
    while (1)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v27 = 0u;
      v28 = 0u;
      *buf = 0u;
      sub_100004A08(v22, "rose");
      sub_100004A08(v20, "rose-supervisor");
      if (!IORegistryEntryGetName(v6, buf))
      {
        break;
      }

LABEL_41:
      IOObjectRelease(v6);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      result = IOIteratorNext(a2);
      v6 = result;
      if (!result)
      {
        return result;
      }
    }

    sub_100004A08(__p, buf);
    v7 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      if ((v19 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *v24 = 136315138;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found matching name: %s", v24, 0xCu);
    }

    v9 = v19;
    if ((v19 & 0x80u) == 0)
    {
      v10 = v19;
    }

    else
    {
      v10 = __p[1];
    }

    v11 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v11 = v22[1];
    }

    if (v10 == v11 && ((v19 & 0x80u) == 0 ? (v12 = __p) : (v12 = __p[0]), (v23 & 0x80u) == 0 ? (v13 = v22) : (v13 = v22[0]), !memcmp(v12, v13, v10)))
    {
      *(a1 + 1696) = 1;
      if ((*(a1 + 1697) & 1) == 0)
      {
LABEL_39:
        if ((v9 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v14 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v14 = v20[1];
      }

      if (v10 != v14 || (v9 >= 0 ? (v15 = __p) : (v15 = __p[0]), (v21 & 0x80u) == 0 ? (v16 = v20) : (v16 = v20[0]), memcmp(v15, v16, v10)))
      {
        abort_report_np();
        goto LABEL_52;
      }

      *(a1 + 1697) = 1;
    }

    if (*(a1 + 1696) == 1)
    {
      v17 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "both rose and rose-supervisor services are now matched.", v24, 2u);
      }

      sub_100258630(a1, 0);
      IOObjectRelease(*(a1 + 1676));
      IOObjectRelease(*(a1 + 1680));
      IONotificationPortDestroy(*(a1 + 1688));
      *(a1 + 1698) = 0;
      LOBYTE(v9) = v19;
    }

    goto LABEL_39;
  }

  return result;
}