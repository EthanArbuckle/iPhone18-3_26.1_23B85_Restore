void sub_1004E44D0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 652);
  v5 = *(a1 + 664);
  v6 = *(a1 + 668);
  v7 = v5 * flt_101C7BD20[v4];
  if (v5 >= 0.0833)
  {
    v11 = v7;
    v12 = *(a1 + 4520);
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v13 = v12 * -0.62 + v11 * 5.5;
        v14 = 4.44;
LABEL_14:
        v8 = v13 + v14;
        if (v6 >= 0.0)
        {
          if (v6 <= 20.0)
          {
            v10 = 0;
            v9 = 1.4;
          }

          else
          {
            v10 = 0;
            if (v6 <= 80.0)
            {
              v9 = (v6 * -0.0033) + 1.466;
            }

            else
            {
              v9 = 1.2;
            }
          }
        }

        else
        {
          v10 = 0;
          v9 = 1.3;
        }

        goto LABEL_21;
      }

      if (v4 == 4)
      {
        v13 = v12 * -1.44 + v11 * 2.06;
        v14 = 8.77;
        goto LABEL_14;
      }
    }

    else if (v4 == 2)
    {
      v13 = v12 * -1.44 + v11 * 2.06;
      v14 = 7.77;
      goto LABEL_14;
    }

    v13 = v12 * -0.61 + v11 * 2.0;
    v14 = 6.59;
    goto LABEL_14;
  }

  if (v4 == 6)
  {
    v8 = 6.0;
  }

  else
  {
    v8 = 2.1;
  }

  v9 = 1.0;
  v10 = 3;
LABEL_21:
  v15 = *(a1 + 592);
  v16 = *(a1 + 600);
  v17 = *(a1 + 608);
  v18 = *(a1 + 624);
  v19 = *(a1 + 656);
  if (qword_1025D4240 != -1)
  {
    sub_1018A35AC();
  }

  v20 = v8 * v9;
  v21 = qword_1025D4248;
  if (os_log_type_enabled(qword_1025D4248, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    *buf = 134221312;
    v28 = v22;
    v29 = 2048;
    v30 = v23;
    v31 = 1024;
    v32 = v19;
    v33 = 1024;
    v34 = v4;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v17;
    v39 = 2048;
    v40 = v7;
    v41 = 1024;
    v42 = v10;
    v43 = 2048;
    v44 = v5;
    v45 = 2048;
    v46 = v15;
    v47 = 2048;
    v48 = v16;
    v49 = 2048;
    v50 = v18;
    v51 = 2048;
    v52 = v20;
    v53 = 2048;
    v54 = v6;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "startTime,%f,endTime,%f,numberOfStrokes,%d,strokeType,%d,epochMets,%f,timestamp,%f,speed,%f,metSource,%d,strokeRate,%f,entryStartTime,%f,entryEndTime,%f,distance,%f,scaledMets,%f,historicalTurnsPerSession,%f", buf, 0x82u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4240 != -1)
    {
      sub_1018A35C0();
    }

    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieSwimmingModel::computeMETS(const CLNatalieModelInput &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  if (v5 < 0.0833)
  {
    v24 = sub_1000DA93C();
    sub_101242934(v24);
  }

  v25 = sub_1000DA93C();
  sub_101242348(v25, v4);
  *a2 = 0;
  *(a2 + 4) = v8;
  *(a2 + 8) = 0;
  *(a2 + 12) = v8;
  *(a2 + 16) = 0;
  *(a2 + 20) = v20;
  *(a2 + 24) = v10;
  *(a2 + 28) = 0;
  *(a2 + 32) = 0xB00000003;
}

uint64_t sub_1004E49D8(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_1004E4A68(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018A3404();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 24);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v19 = v7;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v9;
    v24 = 2048;
    v25 = a3;
    v26 = 1024;
    v27 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018A3584();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLSwimEntry>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLSwimEntry>]", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = *(a1 + 24);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_1004E4D48(v12, a2, Current, a3);
    v11 = *(a1 + 24);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      sub_101200484(*(a1 + 8), *(a1 + 48));
    }

    v14 = sub_1000081AC();
    if (a2)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 56);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_1004E4D48(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

uint64_t sub_1004E5198(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 2)
      {
        break;
      }

      switch(v12)
      {
        case 3u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 8u;
          while (1)
          {
            v45 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v45 & 0x7F) << v25;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v10 = v26++ >= 9;
            if (v10)
            {
              v24 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_73:
          v42 = 24;
LABEL_88:
          *(a1 + v42) = v24;
          break;
        case 4u:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 32) |= 0x10u;
          while (1)
          {
            v48 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v48 & 0x7F) << v30;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v10 = v31++ >= 9;
            if (v10)
            {
              LOBYTE(v35) = 0;
              goto LABEL_75;
            }
          }

          v35 = (v32 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 28) = v35;
          break;
        case 5u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v49 = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v49 & 0x7F) << v13;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_83:
          *(a1 + 8) = v18;
          break;
        default:
          goto LABEL_68;
      }

LABEL_89:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v12 == 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        v47 = 0;
        v39 = [a2 position] + 1;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v38 |= (v47 & 0x7F) << v36;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v36 += 7;
        v10 = v37++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v38;
      }

LABEL_79:
      v42 = 16;
    }

    else
    {
      if (v12 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_89;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 32) |= 4u;
      while (1)
      {
        v46 = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v46 & 0x7F) << v19;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v10 = v20++ >= 9;
        if (v10)
        {
          v24 = 0;
          goto LABEL_87;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v21;
      }

LABEL_87:
      v42 = 20;
    }

    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

const char *sub_1004E5DD4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_102459ED8[a1];
  }
}

uint64_t sub_1004E5DF8()
{
  v0 = sub_10001CABC();

  return sub_100A5BAD4(v0);
}

uint64_t sub_1004E5E3C()
{
  v0 = sub_10001CABC();

  return sub_100A5C7C4(v0);
}

BOOL sub_1004E5E64(_BOOL8 result)
{
  v3 = result;
  if (result >= 1)
  {
    v1 = result - 18;
    if (result - 18 < 0)
    {
      v1 = 18 - result;
    }

    if (v1 <= 0x13)
    {
      v2 = sub_1000206B4();
      result = sub_10004345C(v2, "gpsUtcLeapSeconds", &v3);
      dword_1025D6560 = v3;
    }
  }

  return result;
}

void sub_1004E5EC4(const void *a1)
{
  if (!qword_102656770)
  {
    goto LABEL_15;
  }

  if (qword_102656770 != a1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Changing CLCommon's runloop after it was already established", &v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A36E0();
      if (!a1)
      {
        goto LABEL_17;
      }

LABEL_16:
      CFRetain(a1);
      goto LABEL_17;
    }

LABEL_15:
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A35E8();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Setting CLCommon's runloop after it was already established", &v5, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_15;
  }

  sub_1018A37C4();
  if (a1)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (qword_102656770)
  {
    CFRelease(qword_102656770);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A38B0();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    v6 = a1;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLCommonSetRunLoop, %p", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A38D8();
  }

  qword_102656770 = a1;
}

uint64_t sub_1004E6168(const std::string *a1, unsigned __int8 a2, void *a3)
{
  sub_1004E6370(v10, a1, 24);
  __p = 0uLL;
  v9 = 0;
  while (1)
  {
    v5 = sub_100485630(v10, &__p, a2);
    if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
    {
      break;
    }

    sub_1003CDE18(a3, &__p);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  v10[2] = v6;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1004E6338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1004E6370(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), const std::string *a2, int a3))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v6 = a1 + 2;
  *a1 = v8;
  *(*(v8 - 3) + a1) = v7;
  a1[1] = 0;
  v9 = (*(*a1 - 3) + a1);
  std::ios_base::init(v9, a1 + 3);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  a1[2] = v11;
  *(*(v11 - 3) + v6) = v10;
  *a1 = v12;
  sub_100487200((a1 + 3), a2, a3);
  return a1;
}

void sub_1004E6600(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004E6628(const char *a1)
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
    pw_gid = v2->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  return lchown(a1, pw_uid, pw_gid);
}

uint64_t sub_1004E667C(_BYTE *a1, uid_t a2, gid_t a3)
{
  bzero(v11, 0x400uLL);
  v6 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v7 = 0;
  v8 = a1 + 1;
  while (1)
  {
    v11[v7] = v6;
    if (v6 != 47 || !stat(v11, &v10))
    {
      goto LABEL_7;
    }

    if (mkdir(v11, 0x1FFu))
    {
      return 0;
    }

    lchown(v11, a2, a3);
    lchmod(v11, 0x1C0u);
LABEL_7:
    result = 1;
    if (v7 <= 0x3FD)
    {
      v6 = v8[v7++];
      if (v6)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_1004E6778(const char *a1, uid_t a2, gid_t a3, mode_t a4)
{
  lchown(a1, a2, a3);

  return lchmod(a1, a4);
}

uint64_t sub_1004E6818(const char *a1, const char *a2)
{
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_27:
    v15 = 0;
    goto LABEL_37;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v12 = *__error();
      v18 = 136446466;
      v19 = a1;
      v20 = 1026;
      v21 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", &v18, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A3C88();
    }

    goto LABEL_27;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v14 = *__error();
      v18 = 136446466;
      v19 = a2;
      v20 = 1026;
      v21 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", &v18, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A3B98();
    }

    fclose(v6);
    goto LABEL_27;
  }

  v8 = v7;
  while (1)
  {
    if (feof(v6))
    {
      v15 = 1;
      goto LABEL_36;
    }

    v9 = fread(v4, 1uLL, 0x400uLL, v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 != fwrite(v4, 1uLL, v9, v8))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A35E8();
      }

      v10 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v18 = 136446210;
        v19 = a2;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", &v18, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A39C8();
      }

      goto LABEL_35;
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A35E8();
  }

  v16 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    v18 = 136446210;
    v19 = a1;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", &v18, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A3AB0();
  }

LABEL_35:
  v15 = 0;
LABEL_36:
  fclose(v6);
  fclose(v8);
LABEL_37:
  free(v4);
  return v15;
}

uint64_t sub_1004E6B78(const char *a1, const char *a2)
{
  bzerror = 0;
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_38:
    v11 = 0;
    goto LABEL_39;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v15 = *__error();
      *buf = 136446466;
      v23 = a1;
      v24 = 1026;
      v25 = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A4214();
    }

    goto LABEL_38;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A35E8();
    }

    v16 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v17 = *__error();
      *buf = 136446466;
      v23 = a1;
      v24 = 1026;
      v25 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A4124();
    }

    fclose(v6);
    goto LABEL_38;
  }

  v8 = v7;
  v9 = BZ2_bzWriteOpen(&bzerror, v7, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v23 = a2;
      v24 = 1026;
      v25 = bzerror;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A3D78();
    }
  }

  else
  {
    while (1)
    {
      if (feof(v6))
      {
        v11 = 1;
        goto LABEL_12;
      }

      v13 = fread(v4, 1uLL, 0x400uLL, v6);
      if (v13 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v9, v4, v13);
      if (bzerror)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018A38B0();
        }

        v20 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v23 = a2;
          v24 = 1026;
          v25 = bzerror;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018A3E64();
        }

        goto LABEL_11;
      }
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v19 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v23 = a1;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A3F50();
    }
  }

LABEL_11:
  v11 = 0;
LABEL_12:
  fclose(v6);
  if (v9)
  {
    BZ2_bzWriteClose(&bzerror, v9, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A38B0();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v23 = a2;
        v24 = 1026;
        v25 = bzerror;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A4038();
      }
    }
  }

  fclose(v8);
LABEL_39:
  free(v4);
  return v11;
}

FILE *sub_1004E704C(const char *a1)
{
  result = fopen(a1, "rb");
  if (result)
  {
    v2 = result;
    fseek(result, 0, 2);
    v3 = ftell(v2);
    fclose(v2);
    return v3;
  }

  return result;
}

BOOL sub_1004E70A0(char *a1, const char *a2)
{
  sub_10000FF38(v42, [[NSString UTF8String:@"decompress:%@"] stringWithFormat:?];
  v40 = 0;
  v41 = 0;
  v3 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!v3)
  {
    v12 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_52;
  }

  if (sub_1004E7C9C(a1, &v40, 0, 0, &v41))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v51 = a1;
      v52 = 2080;
      *v53 = a2;
      *&v53[8] = 2048;
      *&v53[10] = v41;
      *&v53[18] = 2048;
      *&v53[20] = v40;
      *&v53[28] = 1024;
      *v54 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLCommonGzipDecompressFile, from, %s, to, %s, size, %llu, cTime, %.1lf, isOK, %d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A4304(buf);
      v43 = 136316162;
      v44 = a1;
      v45 = 2080;
      *v46 = a2;
      *&v46[8] = 2048;
      *&v46[10] = v41;
      *&v46[18] = 2048;
      *&v46[20] = v40;
      *&v46[28] = 1024;
      *v47 = 0;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    v6 = fopen(a2, "wb");
    if (v6)
    {
      v7 = gzopen(a1, "rb");
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          v10 = v9;
          v11 = gzeof(v7);
          v12 = v11 != 0;
          if (v11)
          {
            goto LABEL_48;
          }

          v13 = gzread(v7, v3, 0x4000u);
          if (v13 <= 0)
          {
            break;
          }

          v14 = fwrite(v3, 1uLL, v13, v6);
          v8 += v13;
          v9 = v10 + v14;
          if (v14 != v13)
          {
            if (qword_1025D48A0 == -1)
            {
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            }

            else
            {
              sub_1018A38B0();
              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            v15 = p_info[277];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              v16 = *__error();
              *buf = 136446722;
              v51 = a2;
              v52 = 1026;
              *v53 = v16;
              *&v53[4] = 2050;
              *&v53[6] = v14;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "CLCommonGzipDecompressFile, can't write, %{public}s, errno, %{public}d, write, %{public}zu", buf, 0x1Cu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018A4304(buf);
              v17 = *__error();
              v43 = 136446722;
              v44 = a2;
              v45 = 1026;
              *v46 = v17;
              *&v46[4] = 2050;
              *&v46[6] = v14;
              v18 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v18);
              if (v18 != buf)
              {
                free(v18);
              }
            }

            goto LABEL_49;
          }
        }

        if (qword_1025D48A0 == -1)
        {
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        else
        {
          sub_1018A38B0();
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v25 = p_info[277];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = *__error();
          *buf = 136446722;
          v51 = a1;
          v52 = 1026;
          *v53 = v26;
          *&v53[4] = 1026;
          *&v53[6] = v13;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_FAULT, "CLCommonGzipDecompressFile, error reading source file: %{public}s, errno, %{public}d, read, %{public}d", buf, 0x18u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018A4304(buf);
          v27 = *__error();
          v43 = 136446722;
          v44 = a1;
          v45 = 1026;
          *v46 = v27;
          *&v46[4] = 1026;
          *&v46[6] = v13;
          v28 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v28);
          if (v28 != buf)
          {
            free(v28);
          }

LABEL_48:
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

LABEL_49:
        gzclose(v7);
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018A38B0();
        }

        v23 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          v24 = *__error();
          *buf = 136446466;
          v51 = a1;
          v52 = 1026;
          *v53 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "CLCommonGzipDecompressFile, can't open, file_path_from, %{public}s, errno, %{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018A4304(buf);
          v37 = *__error();
          v43 = 136446466;
          v44 = a1;
          v45 = 1026;
          *v46 = v37;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }

          v8 = 0;
          v10 = 0;
          v12 = 0;
        }

        else
        {
          v8 = 0;
          v10 = 0;
          v12 = 0;
        }
      }

      fclose(v6);
      goto LABEL_51;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v21 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v22 = *__error();
      *buf = 136446466;
      v51 = a2;
      v52 = 1026;
      *v53 = v22;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "CLCommonGzipDecompressFile, can't open, file_path_to, %{public}s, errno %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A4304(buf);
      v35 = *__error();
      v43 = 136446466;
      v44 = a2;
      v45 = 1026;
      *v46 = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }

      v12 = 0;
      v10 = 0;
      v8 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v19 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v51 = a1;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "CLCommonGzipDecompressFile, can't stat, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A4304(buf);
      v43 = 136446210;
      v44 = a1;
      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  v12 = 0;
  v10 = 0;
  v8 = 0;
LABEL_51:
  free(v3);
LABEL_52:
  if (qword_1025D48A0 != -1)
  {
    sub_1018A38B0();
  }

  v29 = p_info[277];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    if (v10)
    {
      v30 = v41 / v10;
    }

    else
    {
      v30 = 0.0;
    }

    *buf = 136316674;
    v51 = a1;
    v52 = 2080;
    *v53 = a2;
    *&v53[8] = 1024;
    *&v53[10] = v12;
    *&v53[14] = 2048;
    *&v53[16] = v41;
    *&v53[24] = 1024;
    *&v53[26] = v8;
    *v54 = 1024;
    *&v54[2] = v10;
    v55 = 2048;
    v56 = v30;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLCommonGzipDecompressFile, from, %s, to, %s, isOK, %d, fileSize, %llu, totalReadBytes, %u, totalWrittenBytes, %u, compression, %.4lf", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    if (v10)
    {
      v32 = v41 / v10;
    }

    else
    {
      v32 = 0.0;
    }

    v43 = 136316674;
    v44 = a1;
    v45 = 2080;
    *v46 = a2;
    *&v46[8] = 1024;
    *&v46[10] = v12;
    *&v46[14] = 2048;
    *&v46[16] = v41;
    *&v46[24] = 1024;
    *&v46[26] = v8;
    *v47 = 1024;
    *&v47[2] = v10;
    v48 = 2048;
    v49 = v32;
    v33 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCommonGzipDecompressFile(const char *, const char *)", "%s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  sub_10001A420(v42);
  return v12;
}

void sub_1004E7C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

BOOL sub_1004E7C9C(char *a1, double *a2, double *a3, double *a4, off_t *a5)
{
  memset(&v13, 0, sizeof(v13));
  v10 = stat(a1, &v13);
  if (v10)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = a1;
      v16 = 1024;
      v17 = v10;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning CLCommonGetFileTimestamps, failed to stat file, %s, ret, %d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A4348(a1, v10);
    }
  }

  else
  {
    if (a2)
    {
      *a2 = (v13.st_ctimespec.tv_sec - kCFAbsoluteTimeIntervalSince1970);
    }

    if (a3)
    {
      *a3 = (v13.st_mtimespec.tv_sec - kCFAbsoluteTimeIntervalSince1970);
    }

    if (a4)
    {
      *a4 = (v13.st_atimespec.tv_sec - kCFAbsoluteTimeIntervalSince1970);
    }

    if (a5)
    {
      *a5 = v13.st_size;
    }
  }

  return v10 == 0;
}

uint64_t sub_1004E7E44(const char *a1, const char *a2)
{
  sub_10000FF38(v6, [[NSString UTF8String:@"compress:%@"] stringWithFormat:?];
  v4 = sub_1004E6B78(a1, a2);
  sub_10001A420(v6);
  return v4;
}

void sub_1004E7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004E7EE8(const __CFString *a1, double *a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = 0;
LABEL_3:
    if (strptime(CStringPtr, "%a, %d %b %Y %T %Z", &usedBufLen))
    {
      v6 = mktime(&usedBufLen);
      if (v6 != -1)
      {
        *a2 = v6 - kCFAbsoluteTimeIntervalSince1970;
        v7 = 1;
        if (!v5)
        {
          return v7;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  *&usedBufLen.tm_sec = 0;
  v10.length = CFStringGetLength(a1);
  v10.location = 0;
  CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, 0, 0, &usedBufLen.tm_sec);
  if (!*&usedBufLen.tm_sec)
  {
    v5 = 0;
    goto LABEL_12;
  }

  ++*&usedBufLen.tm_sec;
  v5 = malloc_type_malloc(*&usedBufLen.tm_sec, 0x100004077774924uLL);
  if (v5 && CFStringGetCString(a1, v5, *&usedBufLen.tm_sec, 0x8000100u))
  {
    CStringPtr = v5;
    goto LABEL_3;
  }

LABEL_12:
  v7 = 0;
  if (v5)
  {
LABEL_13:
    free(v5);
  }

  return v7;
}

uint64_t sub_1004E801C(const __CFDictionary *a1, double *a2, double *a3)
{
  result = CFDictionaryGetValue(a1, @"Date");
  if (result)
  {
    result = sub_1004E7EE8(result, a3);
    if (result)
    {
      if (*a2 >= 0.0)
      {
        v6 = *a2 * 0.5;
      }

      else
      {
        v6 = 0.0;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018A35E8();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v8 = *a3;
        v9 = v6 + *a3;
        v10 = *a2;
        *buf = 134218752;
        v13 = v8;
        v14 = 2048;
        v15 = v9;
        v16 = 2048;
        v17 = v10;
        v18 = 2048;
        v19 = CFAbsoluteTimeGetCurrent() - v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "http date string is converted to timestamp %.3f and adjusted to %.3f by %.3fs RTT (%.3fs diff from systime)", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_1018A38B0();
        }

        CFAbsoluteTimeGetCurrent();
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "int CLCommonGetTimeFromHttpHeaderAndRtt(CFDictionaryRef, const CFTimeInterval *, CFAbsoluteTime *)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_1004E8270(double *a1, double *a2, double *a3)
{
  times = mach_get_times();
  if (times)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018A4454();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v12 = times;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "TCONV,mach_get_times failed,kern_return_t,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A447C(times);
    }
  }

  else
  {
    *a1 = sub_1000080EC(0);
    *a2 = sub_1000080EC(0);
    *a3 = v10 / 1000000000.0 + v9 - kCFAbsoluteTimeIntervalSince1970;
  }

  return times == 0;
}

CFStringRef sub_1004E83C0(CFDictionaryRef formatOptions, CFAbsoluteTime a2)
{
  if (!formatOptions)
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, formatOptions, @"%.3f", *&a2);
  }

  return CFDateFormatterCreateStringWithAbsoluteTime(kCFAllocatorDefault, formatOptions, a2);
}

CFStringRef sub_1004E8410(CFAbsoluteTime a1)
{
  if (!qword_102656778)
  {
    v2 = CFLocaleCreate(kCFAllocatorDefault, @"en_US");
    if (v2)
    {
      v3 = v2;
      qword_102656778 = CFDateFormatterCreate(kCFAllocatorDefault, v2, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
      CFRelease(v3);
    }
  }

  v4 = qword_102656778;

  return sub_1004E83C0(v4, a1);
}

void sub_1004E84E8(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  if ((atomic_load_explicit(&qword_1026567B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026567B0))
  {
    sub_10018D404(xmmword_102656788);
    __cxa_guard_release(&qword_1026567B0);
  }

  sub_100FE3EFC(xmmword_102656788, a1, a2, a3, a4, 0.0, a5, a6, a7);
}

uint64_t sub_1004E8644(const __CFString *a1, const __CFString *a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v4 = CFPreferencesCopyValue(a1, a2, @"mobile", kCFPreferencesAnyHost);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFBooleanGetTypeID())
  {
    if (a3)
    {
      *a3 = 1;
    }

    v7 = CFEqual(v5, kCFBooleanTrue);
  }

  else if (v6 == CFNumberGetTypeID() && !CFNumberIsFloatType(v5))
  {
    if (a3)
    {
      *a3 = 1;
    }

    valuePtr = 0;
    CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    v7 = valuePtr != 0;
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

void sub_1004E8744()
{
  os_unfair_lock_lock(&unk_1026567B8);
  v2 = 0;
  if (sub_1004E8644(@"LocationServicesEnabledIn8.0", @"com.apple.locationd", &v2))
  {
    v0 = v2 == 0;
  }

  else
  {
    v0 = 1;
  }

  v1 = !v0;
  dword_1025D6564 = v1;
  os_unfair_lock_unlock(&unk_1026567B8);
}

BOOL sub_1004E8818()
{
  v3 = 0;
  v0 = sub_1004E8644(@"GpsNetworkCtrl", @"com.apple.locationd", &v3);
  if (qword_1025D48A0 != -1)
  {
    sub_1018A38B0();
  }

  v1 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v5 = v0;
    v6 = 1024;
    v7 = v3;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "GPS_NETWORK: enabled %d found %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A4574(v0, &v3);
  }

  return v0 != 0;
}

BOOL sub_1004E8924(const char *a1, double *a2)
{
  v3 = stat(a1, &v5);
  if (a2 && !v3)
  {
    *a2 = v5.st_mtimespec.tv_nsec / 1000000000.0 + v5.st_mtimespec.tv_sec - kCFAbsoluteTimeIntervalSince1970;
  }

  return v3 == 0;
}

void sub_1004E8994(FILE *a1)
{
  v2 = _dyld_image_count();
  v3 = v2;
  v4 = malloc_type_calloc(v2, 0x38uLL, 0x105004076241286uLL);
  v5 = v4;
  v31 = v4;
  if (v2 && v4)
  {
    v6 = 0;
    do
    {
      image_name = _dyld_get_image_name(v6);
      v8 = &image_name[strlen(image_name) + 1];
      do
      {
        v9 = *(v8 - 2);
        --v8;
      }

      while (v9 != 47);
      image_header = _dyld_get_image_header(v6);
      v11 = image_header;
      v12 = *&image_header->cputype;
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        v14 = 0;
        p_cputype = &image_header[1].cputype;
        do
        {
          if (*p_cputype == 1)
          {
            if (!strncmp(p_cputype + 8, "__TEXT", 6uLL))
            {
              v14 = (v14 + p_cputype[7]);
            }
          }

          else if (*p_cputype == 27)
          {
            v32[0] = *(p_cputype + 2);
          }

          p_cputype = (p_cputype + p_cputype[1]);
          --ncmds;
        }

        while (ncmds);
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      v5 = v31;
      v17 = v31;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        v18 = v19;
        if (v19 >= v11 || v18 == 0)
        {
          break;
        }

        if (v3 == ++v16)
        {
          v16 = v3;
          v21 = v3;
          goto LABEL_24;
        }
      }

      v21 = v16;
LABEL_24:
      v22 = &v31[56 * v16];
      memmove(v22 + 7, v22, 56 * (v3 + ~v21));
      *v22 = v11;
      v22[1] = v14;
      *(v22 + 1) = v32[0];
      v22[4] = image_name;
      v22[5] = v8;
      v22[6] = v12;
      ++v6;
    }

    while (v6 != v3);
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
  }

  else
  {
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v23 = 0;
  do
  {
    v24 = &v5[56 * v23];
    v25 = *(v24 + 1);
    v32[0] = *v24;
    v32[1] = v25;
    v33 = *(v24 + 2);
    v34 = *(v24 + 6);
    v26 = "other";
    if (v34 != 16777228)
    {
      v27 = "unknown";
      if (HIDWORD(v34) == 9)
      {
        v27 = "armv7";
      }

      v26 = "armv6";
      if (HIDWORD(v34) != 6)
      {
        v26 = v27;
      }
    }

    v30 = v26;
    if (v23)
    {
      v28 = 32;
    }

    else
    {
      v28 = 43;
    }

    fprintf(a1, "%16p - %lld %c%s %s <", *&v32[0], ((v32[0] + __PAIR128__(-1, 0)) >> 64), v28, *(&v33 + 1), v30);
    for (i = 16; i != 32; ++i)
    {
      fprintf(a1, "%02X", *(v32 + i));
    }

    fprintf(a1, "> %s\n", v33);
    ++v23;
    v5 = v31;
  }

  while (v23 != v3);
LABEL_39:

  free(v5);
}

CFTypeRef sub_1004E8D20(CFStringRef filePath, const __CFString *a2)
{
  if (!filePath)
  {
    return 0;
  }

  v3 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 1u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v6 = Unique;
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(Unique, a2);
    v8 = ValueForInfoDictionaryKey;
    if (ValueForInfoDictionaryKey)
    {
      CFRetain(ValueForInfoDictionaryKey);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

uint64_t sub_1004E8DC4()
{
  v0 = sub_100042568();

  return sub_100F898E4(v0);
}

void **sub_1004E8DEC(void **a1)
{
  v3 = a1;
  sub_1001E56E8(&v3);
  return a1;
}

void sub_1004E8E24(char *a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018A35E8();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = a1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "TILE: delete file, %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A4888();
  }

  memset(&v8, 0, sizeof(v8));
  v3 = stat(a1, &v8);
  if (qword_1025D48A0 != -1)
  {
    sub_1018A38B0();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v20 = a1;
    v21 = 1024;
    v22 = v3;
    v23 = 2048;
    tv_sec = v8.st_mtimespec.tv_sec;
    v25 = 2048;
    v26 = v8.st_ctimespec.tv_sec;
    v27 = 2048;
    st_size = v8.st_size;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: stat, %s, ret, %d, mtime, %lu, ctime, %lu, size, %lld", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v9 = 136316162;
    v10 = a1;
    v11 = 1024;
    v12 = v3;
    v13 = 2048;
    v14 = v8.st_mtimespec.tv_sec;
    v15 = 2048;
    v16 = v8.st_ctimespec.tv_sec;
    v17 = 2048;
    v18 = v8.st_size;
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCommonDeleteFileIfExists(const char *)", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!v3)
  {
    v5 = unlink(a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018A38B0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v20 = a1;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TILE: unlink, %s, ret, %d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A4978(a1, v5);
    }
  }
}

uint64_t sub_1004E915C(const char *a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018A4A84();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "CLCommonSetFileProtectionClass,sFilename==nullptr", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018A4B98();
    return 0;
  }

  v4 = open(a1, 2);
  if (v4 < 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_1018A4A84();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      *buf = 67240192;
      LODWORD(v18) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "CLCommonSetFileProtectionClass,open,errno,%{public}d", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018A4A98();
    return 0;
  }

  v5 = v4;
  v6 = fcntl(v4, 63);
  if (v6 == a2)
  {
    close(v5);
LABEL_28:
    if (qword_1025D4870 != -1)
    {
      sub_1018A4A84();
    }

    v15 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = a1;
      v19 = 1026;
      v20 = v6;
      v21 = 1026;
      v22 = a2;
      v23 = 1026;
      v24 = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLCommonSetFileProtectionClass,%s,oldPc,%{public}d,newPc,%{public}d,ret,%{public}d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_1018A4454();
      }

      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCommonSetFileProtectionClass(const char *, int)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    return 1;
  }

  v11 = fcntl(v5, 64, a2);
  close(v5);
  if (!v11)
  {
    goto LABEL_28;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018A4A84();
  }

  v12 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_INFO))
  {
    v13 = *__error();
    *buf = 136316162;
    v18 = a1;
    v19 = 1026;
    v20 = v6;
    v21 = 1026;
    v22 = a2;
    v23 = 1026;
    v24 = v11;
    v25 = 1026;
    v26 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#Warning,CLCommonSetFileProtectionClass,%s,oldPc,%{public}d,newPc,%{public}d,ret,%{public}d,errno,%{public}d", buf, 0x24u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_1018A4454();
    }

    __error();
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCommonSetFileProtectionClass(const char *, int)", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }

    return 0;
  }

  return result;
}

double sub_1004E9660(int a1, int a2, int a3)
{
  if (a3 >= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a3;
  }

  v4 = pow(a2, (v3 & ~(v3 >> 31)));
  return v4 + rand() / 2147483650.0 * v4;
}

double sub_1004E96B0(double a1)
{
  if (a1 < 0.0)
  {
    return 180.0;
  }

  v1 = 1.0;
  if (a1 <= 15.0)
  {
    v1 = 4.0;
    if (a1 <= 10.0)
    {
      v1 = 10.0;
      if (a1 <= 8.0)
      {
        v1 = 15.0;
        if (a1 <= 5.0)
        {
          if (a1 <= 3.0)
          {
            v1 = 25.0;
            if (a1 <= 2.5)
            {
              return dbl_101C7BDF0[a1 > 1.0];
            }
          }

          else
          {
            return 19.9;
          }
        }
      }
    }
  }

  return v1;
}

id sub_1004E974C(void *a1)
{
  v1 = [a1 objectForInfoDictionaryKey:@"NSWidgetWantsLocation"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

std::string *sub_1004E97B8(int a1, std::string *this, unsigned __int8 *a3, uint64_t a4)
{
  if ((a4 - 0x7FFFFFFFFFFFFFFFLL) > 0x8000000000000001)
  {
    v5 = a4;
    std::string::resize(this, 2 * a4, 48);
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    v8 = &v7->__r_.__value_.__s.__data_[1];
    do
    {
      v9 = *a3++;
      *v8 = a0123456789abcd_1[v9 & 0xF];
      *(v8 - 1) = a0123456789abcd_1[v9 >> 4];
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  else if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  return this;
}

void sub_1004E9874(int a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  sub_1004E97B8(a1, &__p, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(a4, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a4 = __p;
  }
}

void sub_1004E98EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004E9918(int a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a3[23];
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 1);
  }

  v6 = v5 >> 1;
  v7 = *a2;
  v8 = *(a2 + 8) - *a2;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      *(a2 + 8) = &v7[v6];
    }
  }

  else
  {
    sub_1004E9A84(a2, v6 - v8);
    v7 = *a2;
  }

  v9 = a3[23];
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 1);
  }

  if (v9 >= 1)
  {
    v11 = v10 < 0;
    v12 = *a3;
    if (!v11)
    {
      v12 = a3;
    }

    do
    {
      if (v7 >= *(a2 + 8))
      {
        break;
      }

      v13 = *v12;
      v14 = (v13 - 65) >= 6 ? 0 : -55;
      v15 = (v13 - 97) >= 6 ? v14 : -87;
      v16 = (v13 - 48) >= 0xA ? v15 : -48;
      v17 = 16 * (v16 + v13);
      *v7 = v17;
      v18 = v12[1];
      v19 = (v18 - 65) >= 6 ? 0 : -55;
      v20 = (v18 - 97) >= 6 ? v19 : -87;
      v21 = (v18 - 48) >= 0xA ? v20 : -48;
      *v7++ = (v21 + v18) | v17;
      v22 = a3[23];
      v23 = (v22 & 0x80u) == 0 ? a3 : *a3;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(a3 + 1);
      }

      v12 += 2;
    }

    while (v12 < &v23[v22]);
  }

  return a2;
}

void sub_1004E9A84(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_10028C64C();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_1004E9BCC(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_1004E9CDC(a1, "ActiveConfig", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10245A108;
  a1[9] = off_10245A1B8;
  sub_100DD42E4(a1 + 55, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_1004E9CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004E9CDC(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102456270;
  sub_1003FFA38((a1 + 8));
  *v12 = off_1024562B8;
  *a1 = off_10245A3F8;
  *(a1 + 72) = off_10245A4A0;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_10245A3F8;
  *(a1 + 72) = off_10245A4A0;
  *(a1 + 176) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 240) = 0;
  sub_10000EC00((a1 + 248), "");
  sub_10000EC00((a1 + 272), "");
  sub_10000EC00((a1 + 296), "");
  sub_10000EC00((a1 + 320), "");
  *(a1 + 344) = 12000;
  *(a1 + 352) = off_102456270;
  sub_1003FFA38((a1 + 360));
  *(a1 + 360) = off_1024562B8;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((a3 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_1004EA0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1017EC98C(&a21);
  *a13 = a12;
  sub_1003FFCFC(v32);
  sub_1004EF650(v31);
  sub_1004EFD80(v30);
  sub_1010532A4(v29);
  *v27 = a14;
  sub_1003FFCFC(v28);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EA1FC(uint64_t a1)
{
  *a1 = off_10245A3F8;
  v2 = a1 + 72;
  *(a1 + 72) = off_10245A4A0;
  sub_1004EFFBC(a1, 0, 0);
  *(a1 + 352) = off_102456270;
  sub_1003FFCFC((a1 + 360));
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_1004EFD80((a1 + 176));
  sub_1010532A4(v2);
  *a1 = off_102456270;
  sub_1003FFCFC((a1 + 8));
  return a1;
}

void sub_1004EA318(uint64_t a1)
{
  sub_1004EA1FC(a1);

  operator delete();
}

void sub_1004EA350(uint64_t a1)
{
  sub_1004EA1FC(a1 - 72);

  operator delete();
}

uint64_t sub_1004EA3B4(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "DELETE FROM ActiveConfig WHERE bundleIdentifier = ?");
  }

  return result;
}

void sub_1004EA5F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004EA638(uint64_t a1, uint64_t *a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1004EA858(a2);
    sub_1000388D8(*(a1 + 80), "SELECT * from ActiveConfig");
  }

  return result;
}

void sub_1004EA7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_1004EF650(&a9);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  _Unwind_Resume(a1);
}

void sub_1004EA858(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 120)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }

    if (*(i - 73) < 0)
    {
      operator delete(*(i - 96));
    }
  }

  a1[1] = v2;
}

uint64_t sub_1004EA8D8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  sub_1004EABE8(a1, a2);
  return 0;
}

uint64_t sub_1004EA938(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  v12[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v13 = 256;
  if (sub_100099160(v6))
  {
    sub_100144CA0((a1 + 440), v12);
    if (v12[0])
    {
      sub_1004EA8D8(v12, a2);
      v7 = 100;
    }

    else
    {
      if (qword_1025D44B0 != -1)
      {
        sub_1018A4CE8();
      }

      v8 = qword_1025D44B8;
      if (os_log_type_enabled(qword_1025D44B8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "ActiveConfigRecorderDb: failed to prepare queryForBestFit #InvalidPreparedSQLStatement", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A4D10(buf);
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "CMError CLActiveConfigRecorderDb::queryForBestFitConfig(ConfigSummary &) const", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      v7 = 112;
    }

    v9 = v12[0];
    v12[0] = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  else
  {
    v7 = 109;
  }

  (*(*v5 + 24))(v5);
  return v7;
}

void sub_1004EAB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a6)
  {
    (*(*a6 + 8))(a6);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

std::string *sub_1004EABE8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v4, 0);
  v5 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_double(v5, 1);
  v6 = sub_100008880(*a1);
  *(a2 + 16) = sqlite3_column_int(v6, 2);
  v7 = sub_100008880(*a1);
  v8 = sqlite3_column_text(v7, 3);
  sub_100006044((a2 + 24), v8);
  v9 = sub_100008880(*a1);
  v10 = sqlite3_column_text(v9, 4);
  sub_100006044((a2 + 48), v10);
  v11 = sub_100008880(*a1);
  v12 = sqlite3_column_text(v11, 5);
  sub_100006044((a2 + 72), v12);
  v13 = sub_100008880(*a1);
  v14 = sqlite3_column_text(v13, 6);

  return sub_100006044((a2 + 96), v14);
}

BOOL sub_1004EACC8(uint64_t a1)
{
  result = sub_100023B68(*(a1 + 80));
  if (result)
  {
    sub_1004EADDC(a1);
    sub_100608EC8(*(a1 + 80), "ActiveConfig", &off_10245A268, &off_1025D6570, 0);
    sub_1000388D8(*(a1 + 80), "CREATE UNIQUE INDEX IF NOT EXISTS ix_ActiveConfig_studyId ON ActiveConfig(studyId)");
  }

  return result;
}

void sub_1004EADA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004EADDC(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "ActiveConfig");
  if (result)
  {
    v3 = "startTime";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "ActiveConfig", "startTime", &v3);
  }

  return result;
}

void sub_1004EB30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EB3B4(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "DELETE FROM ActiveConfig");
  }

  return result;
}

void sub_1004EB464(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004EB484(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "REPLACE INTO ActiveConfig (startTime, priority, configId, bundleIdentifier, studyId, parameterDictionary) VALUES (?, ?, ?, ?, ?, ?)");
  }

  return result;
}

void sub_1004EB5EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004EB604(uint64_t a1, char *a2)
{
  if (!sub_10060A9FC(*(a1 + 80), a2))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018A4D54();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Notice %{public}s needs autoincrement migration", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A4D68(a2);
    }

    __p = 0;
    v26 = 0uLL;
    sub_10000EC00(buf, a2);
    v5 = std::string::append(buf, "AutoIncr", 8uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24 = v5->__r_.__value_.__r.__words[2];
    v23 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_10000EC00(buf, a2);
    v7 = std::string::append(buf, "Index", 5uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22 = v7->__r_.__value_.__r.__words[2];
    *v21 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_100144A84(*(a1 + 80));
    if (v26 >= 0)
    {
      v9 = HIBYTE(v26);
    }

    else
    {
      v9 = v26;
    }

    v10 = buf;
    sub_100070148(buf, v9 + 21);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(v10, p_p, v9);
    }

    strcpy(v10 + v9, "DROP TABLE IF EXISTS ");
    if (v24 >= 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23;
    }

    if (v24 >= 0)
    {
      v13 = HIBYTE(v24);
    }

    else
    {
      v13 = *(&v23 + 1);
    }

    v14 = std::string::append(buf, v12, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    v28.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
    *(v28.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *&v26 = v28.__r_.__value_.__r.__words[0];
    *(&v26 + 7) = *(v28.__r_.__value_.__r.__words + 7);
    HIBYTE(v26) = v16;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
      v16 = HIBYTE(v26);
      v15 = __p;
    }

    if (v16 >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = v15;
    }

    sub_1000388D8(*(a1 + 80), v17);
  }

  v18 = *(a1 + 80);
  if (*(v18 + 88) <= 0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = *(v18 + 88);
  }

  sub_1001B16EC(v18, v19);
  return 0;
}

void sub_1004EC6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004EC9C8(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((v18[15] & 0x80000000) != 0)
  {
    v8 = *v18;
    operator delete(*buf);
    if (v8)
    {
LABEL_3:
      if (sub_100099160(a1 + 9))
      {
        sub_10003848C(buf);
        v2 = sub_100038730(&v18[8], "SELECT * FROM ", 14);
        (*(*a1 + 64))(__p, a1);
        if ((v15 & 0x80u) == 0)
        {
          v3 = __p;
        }

        else
        {
          v3 = __p[0];
        }

        if ((v15 & 0x80u) == 0)
        {
          v4 = v15;
        }

        else
        {
          v4 = __p[1];
        }

        v5 = sub_100038730(v2, v3, v4);
        sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        v6 = a1[10];
        sub_100073518(buf, __p);
        if ((v15 & 0x80u) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        sub_1000388D8(v6, v7);
      }

      return 2;
    }
  }

  else if (v18[15])
  {
    goto LABEL_3;
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018A4C7C();
  }

  v9 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    *v18 = 2082;
    *&v18[2] = "";
    *&v18[10] = 2082;
    *&v18[12] = "assert";
    *&v18[20] = 2081;
    *&v18[22] = "getTableName() != ";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }
  }

  v10 = qword_1025D4208;
  if (os_signpost_enabled(qword_1025D4208))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    *v18 = 2082;
    *&v18[2] = "";
    *&v18[10] = 2082;
    *&v18[12] = "assert";
    *&v18[20] = 2081;
    *&v18[22] = "getTableName() != ";
    _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }
  }

  v11 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    *&buf[4] = 0;
    *v18 = 2082;
    *&v18[2] = "";
    *&v18[10] = 2082;
    *&v18[12] = "assert";
    *&v18[20] = 2081;
    *&v18[22] = "getTableName() != ";
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  __break(1u);
  v16 = 0;
  if (&OBJC_METACLASS___CLMotionHintLoggerAdapter != -32)
  {
    (*&OBJC_METACLASS___CLMotionHintLoggerAdapter.info->ivar_base_size)(&OBJC_METACLASS___CLMotionHintLoggerAdapter.info);
  }

  *&v18[8] = v12;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  std::locale::~locale(&v18[24]);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return 2;
}

void sub_1004ECFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  sub_10026C504(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_1004ED0D4(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_1004F0208(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018A4D54();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2082;
    v14 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A4CA4(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<ConfigSummary>::setDatabaseAccessible() [T = ConfigSummary, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_1004ED754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

std::string *sub_1004ED790(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  *(a2 + 16) = *(a3 + 4);
  *a2 = v5;
  std::string::operator=((a2 + 24), a3 + 1);
  std::string::operator=((a2 + 48), a3 + 2);
  std::string::operator=((a2 + 72), a3 + 3);

  return std::string::operator=((a2 + 96), a3 + 4);
}

id *sub_1004ED800(uint64_t *a1, __int128 *a2, char a3)
{
  v37[0] = os_transaction_create();
  v37[1] = 0;
  if (*(a1 + 29) <= 0.0 || !(*(*a1 + 136))(a1, a1 + 28, a2))
  {
    if ((a3 & 1) == 0)
    {
      sub_100144A84(a1[10]);
    }

    v26 = 0;
    v27 = 0.0;
    v28 = 0;
    sub_10000EC00(&v29, "");
    sub_10000EC00(&v31, "");
    sub_10000EC00(&v33, "");
    sub_10000EC00(&__p, "");
    v6 = (*(*a1 + 104))(a1, &v26);
    if (v6 != 1)
    {
      if (v6)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018A4C7C();
        }

        v14 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018A4CA4(buf);
          LOWORD(v38) = 0;
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<ConfigSummary>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = ConfigSummary, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }

LABEL_41:
        if (v36 < 0)
        {
          operator delete(__p);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 < 0)
        {
          operator delete(v29);
          if (a3)
          {
            return sub_10001A420(v37);
          }
        }

        else if (a3)
        {
          return sub_10001A420(v37);
        }

        sub_1001454E0(a1[10]);
        return sub_10001A420(v37);
      }

      v7 = *(a2 + 1);
      v8 = v27;
      v9 = v7 - v27;
      if (v7 - v27 < 0.0)
      {
        v9 = -(v7 - v27);
      }

      if (v9 > 604800.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018A4C7C();
        }

        v10 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a2 + 1);
          *buf = 134349312;
          v43 = v27;
          v44 = 2050;
          v45 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018A4CA4(buf);
          v21 = *(a2 + 1);
          v38 = 134349312;
          v39 = v27;
          v40 = 2050;
          v41 = v21;
          v22 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<ConfigSummary>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = ConfigSummary, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        CLWriteStackshot();
        v7 = *(a2 + 1);
        v8 = v27;
      }

      if (v7 < v8)
      {
        if (v8 - v7 < 10.0)
        {
          if (qword_1025D4200 != -1)
          {
            sub_1018A4C7C();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            v13 = *(a2 + 1);
            *buf = 134217984;
            v43 = v13;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018A4CA4(buf);
            v23 = *(a2 + 1);
            v38 = 134217984;
            v39 = v23;
            v24 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<ConfigSummary>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = ConfigSummary, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v24);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          (*(*a1 + 88))(a1, a2);
          goto LABEL_40;
        }

        v16 = *(a1 + 34);
        if (qword_1025D4200 != -1)
        {
          sub_1018A4C7C();
        }

        v17 = v7 - v8 - v16;
        v18 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v43 = v17;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018A4CA4(buf);
          v38 = 134217984;
          v39 = v17;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<ConfigSummary>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = ConfigSummary, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        (*(*a1 + 96))(a1, v17);
      }

      (*(*a1 + 144))(a1, &v26, a1 + 28, a2);
    }

    (*(*a1 + 120))(a1, a2, 1);
LABEL_40:
    v19 = *a2;
    *(a1 + 60) = *(a2 + 4);
    *(a1 + 14) = v19;
    std::string::operator=((a1 + 31), a2 + 1);
    std::string::operator=((a1 + 34), a2 + 2);
    std::string::operator=((a1 + 37), a2 + 3);
    std::string::operator=((a1 + 40), a2 + 4);
    goto LABEL_41;
  }

  (*(*a1 + 72))(a1, a1 + 28, a2);
  return sub_10001A420(v37);
}

void sub_1004EDFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  sub_1004EF650(&a12);
  sub_10001A420(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EE048(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1004EE5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EE5FC(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v16[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " SET startTime = startTime + ?", 30);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return result;
}

void sub_1004EEB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EEB70(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_1004EF07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EF10C(uint64_t a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_10028C64C();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1004EF360(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  sub_1004EF23C(120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = *(a1 + 8);
  v8 = 120 * v2 + *a1 - v7;
  sub_1004EF3B8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1004EF5BC(&v13);
  return v12;
}

void sub_1004EF228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1004EF5BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EF23C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100007244((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  return a1;
}

void sub_1004EF314(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_1004EF360(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1004EF3B8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 4);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = v6[3];
      *(a4 + 64) = *(v6 + 8);
      *(a4 + 48) = v9;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 6) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 11);
      *(a4 + 72) = v10;
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      v11 = v6[6];
      *(a4 + 112) = *(v6 + 14);
      *(a4 + 96) = v11;
      *(v6 + 12) = 0;
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      v6 = (v6 + 120);
      a4 += 120;
    }

    while (v6 != a3);
    v16 = a4;
    v14 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 119) < 0)
      {
        operator delete(*(v5 + 12));
      }

      if (*(v5 + 95) < 0)
      {
        operator delete(*(v5 + 9));
      }

      if (*(v5 + 71) < 0)
      {
        operator delete(*(v5 + 6));
      }

      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 = (v5 + 120);
    }
  }

  return sub_1004EF4F4(v13);
}

uint64_t sub_1004EF4F4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004EF540(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1004EF540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 24));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 48));
      }

      if (*(v6 - 49) < 0)
      {
        operator delete(*(v6 - 72));
      }

      if (*(v6 - 73) < 0)
      {
        operator delete(*(v6 - 96));
      }

      v6 -= 120;
    }

    while (v6 != a5);
  }
}

uint64_t sub_1004EF5BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }

    if (*(i - 73) < 0)
    {
      operator delete(*(i - 96));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1004EF650(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_1004EF6B4(void *a1, uint64_t *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018A4C7C();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_1004EA858(a2);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1004EFC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_1004EF650(&a12);
  v42 = a40;
  a40 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  sub_10026C504(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_1004EFD80(void *a1)
{
  sub_1004EFDD8(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_1003EE22C(a1);
}

void sub_1004EFDD8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x22];
    v7 = *v6 + 120 * (v5 % 0x22);
    v8 = v2[(a1[5] + v5) / 0x22] + 120 * ((a1[5] + v5) % 0x22);
    if (v7 != v8)
    {
      do
      {
        if (*(v7 + 119) < 0)
        {
          operator delete(*(v7 + 96));
        }

        if (*(v7 + 95) < 0)
        {
          operator delete(*(v7 + 72));
        }

        if (*(v7 + 71) < 0)
        {
          operator delete(*(v7 + 48));
        }

        if (*(v7 + 47) < 0)
        {
          operator delete(*(v7 + 24));
        }

        v7 += 120;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 17;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 34;
  }

  a1[4] = v12;
}

uint64_t sub_1004EFF2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_1004EFFBC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018A4D54();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A4EF8(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018A4C7C();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A504C(a1);
    }
  }

  *(a1 + 424) = a2;
  v10 = *(a1 + 432);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 432) = _Block_copy(a3);
  }
}

void sub_1004F0284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F03C4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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

void sub_1004F054C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1004F0598(void *a1)
{
  a1[3] = 0;
  *a1 = off_10245A530;
  a1[1] = 0;
  a1[2] = 0;
  v2 = sub_100011660();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004F066C;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  sub_10017A794(v2, v4);
  return a1;
}

void sub_1004F0648(_Unwind_Exception *a1)
{
  sub_1004F0990(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1004F07A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

uint64_t sub_1004F07D4(void *a1)
{
  v2 = a1[3];
  sub_1010FA2B0(v2);
  sub_1010FA55C(v2);
  v3 = *(*a1 + 16);

  return v3(a1);
}

void *sub_1004F083C(void *a1)
{
  *a1 = off_10245A530;
  sub_1004F0990(a1 + 3, 0);
  v2 = a1[2];
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

void sub_1004F0894(void *a1)
{
  sub_1004F083C(a1);

  operator delete();
}

BOOL sub_1004F08E8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100011660();
  sub_10001160C();
  if ((sub_100023B30() & 0x200) == 0)
  {
    sub_1018A51A0();
  }

  v8 = 0;
  v7 = 4;
  return sub_1010FAC50(*(a1 + 24), a2, a3, &v8, &v7) == 0;
}

uint64_t sub_1004F0990(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1010FA558();

    operator delete();
  }

  return result;
}

id sub_1004F0D5C(uint64_t a1, uint64_t a2)
{
  v3 = [[CKRecordID alloc] initWithRecordName:a2 zoneID:{objc_msgSend(*(a1 + 32), "zoneIDForZoneName:", *(a1 + 40))}];
  v4 = [CKSyncEnginePendingRecordZoneChange alloc];
  v5 = [v4 initWithRecordID:v3 type:CKSyncEnginePendingRecordZoneChangeTypeSave];

  v6 = *(a1 + 48);

  return [v6 addObject:v5];
}

BOOL sub_1004F11DC(void *a1, uint64_t a2)
{
  v4 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  LODWORD(a2) = (*(*a1 + 104))(a1, a2);
  (*(*v4 + 24))(v4);
  return a2 == 0;
}

void sub_1004F12AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1004F1C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F2AC4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    sub_100EA56C8(v2, a2);
  }
}

void sub_1004F2CA0(id a1, CKRecordZone *a2, unint64_t a3, BOOL *a4)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v5 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = [(CKRecordZoneID *)[(CKRecordZone *)a2 zoneID] zoneName];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[CloudKit] Successfully saved zone %{public}@", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A6AA0();
  }
}

id sub_1004F2D80(uint64_t a1, void *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = [a2 zoneName];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "[CloudKit] Successfully deleted zone ID %{public}@", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A6BA4();
  }

  return [*(a1 + 32) handleZoneDeleted:a2];
}

id sub_1004F2E74(uint64_t a1, void *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543618;
    v14 = [objc_msgSend(objc_msgSend(a2 "recordZone")];
    v15 = 2114;
    v16 = [a2 error];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CloudKit] Failed to save zone changes %{public}@. Error: %{public}@", &v13, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A6CA4(a2, v5, v6, v7, v8, v9, v10, v11);
  }

  result = [objc_msgSend(a2 "error")];
  if (result == 112)
  {
    return [*(a1 + 32) deleteZone:{objc_msgSend(objc_msgSend(a2, "recordZone"), "zoneID")}];
  }

  return result;
}

void sub_1004F2FAC(id a1, CKRecordZoneID *a2, NSError *a3, BOOL *a4)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v6 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
  {
    v13 = 138543618;
    v14 = [(CKRecordZoneID *)a2 zoneName];
    v15 = 2114;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "[CloudKit] Failed to delete zone %{public}@. Error: %{public}@", &v13, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A6DC0(a2, a3, v7, v8, v9, v10, v11, v12);
  }
}

void sub_1004F32A8(uint64_t a1, void *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    v8 = [a2 recordID];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[CloudKit] Successfully saved records %{public}@", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A6FDC();
  }

  v5 = *(*(a1 + 32) + 24);
  if (v5 && (sub_100EA5480(v5, [a2 recordID], +[CMHealthColdStorageUtils getSystemFieldsFromCKRecord:](CMHealthColdStorageUtils, "getSystemFieldsFromCKRecord:", a2)) & 1) == 0)
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5488();
    }

    v6 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CloudKit] SentRecordChanges: Failed to update local system fields for saved record", &v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A70DC();
    }
  }
}

void sub_1004F343C(uint64_t a1, void *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[CloudKit] Successfully deleted records %{public}@", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A71C0();
  }

  v5 = *(*(a1 + 32) + 24);
  if (v5 && (sub_100EA5480(v5, a2, 0) & 1) == 0)
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018A5488();
    }

    v6 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CloudKit] SentRecordChanges: Failed to update local system fields for failed record", &v7, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A72B0();
    }
  }
}

void sub_1004F35A8(uint64_t a1, void *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
  {
    v13 = 138543618;
    v14 = [objc_msgSend(a2 "record")];
    v15 = 2114;
    v16 = [a2 error];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "[CloudKit] Failed to save record changes %{public}@. Error: %{public}@", &v13, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A7394(a2, v5, v6, v7, v8, v9, v10, v11);
  }

  sub_100EA57E8(*(*(a1 + 32) + 24), [a2 error]);
  [a2 error];
  if (CKErrorIsCode())
  {
    [*(a1 + 32) handleServerRecordChanged:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "error"), "userInfo"), "objectForKeyedSubscript:", CKRecordChangedErrorServerRecordKey)}];
  }

  else
  {
    [a2 error];
    if (CKErrorIsCode())
    {
      [*(a1 + 32) handleUnknownItem:{objc_msgSend(a2, "record")}];
    }

    else
    {
      [a2 error];
      if (CKErrorIsCode())
      {
        [*(a1 + 32) handleZoneNotFound:{objc_msgSend(a2, "record")}];
      }

      else
      {
        [a2 error];
        if (CKErrorIsCode())
        {
          [*(a1 + 32) deleteZone:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "record"), "recordID"), "zoneID")}];
        }

        else
        {
          if (qword_1025D4530 != -1)
          {
            sub_1018A5488();
          }

          v12 = qword_1025D4538;
          if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v13) = 0;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "[CloudKit] Unhandled error, ignoring failed record", &v13, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018A74AC();
          }
        }
      }
    }
  }
}

void sub_1004F3814(id a1, CKRecordID *a2, NSError *a3, BOOL *a4)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018A5370();
  }

  v6 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543618;
    v8 = a2;
    v9 = 2114;
    v10 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[CloudKit] Failed to delete record %{public}@. Error: %{public}@", &v7, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A7590(a2, a3);
  }
}

void *sub_1004F4134(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245A780;
  sub_100D7E304(a1 + 3, *a2);
  return a1;
}

void sub_1004F41B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245A780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004F4230(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2114;
  *(v3 + 14) = result;
  return result;
}

double sub_1004F4254(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = -1.0;
  *(a1 + 8) = xmmword_101C75BF0;
  *(a1 + 24) = xmmword_101C75BF0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 64) = xmmword_101C75BF0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xBFF0000000000000;
  *(a1 + 96) = 0;
  *(a1 + 100) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  return result;
}

void sub_1004F4294(uint64_t a1)
{
  if (*(a1 + 8) <= 0.0)
  {
    *(a1 + 8) = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 88) > 0.0)
    {
      v2 = *(a1 + 96);
      v3 = *(a1 + 100);
      Current = CFAbsoluteTimeGetCurrent();
      v5 = *(a1 + 112);
      v6 = *(a1 + 120);
      if (v5 >= v6)
      {
        v8 = *(a1 + 104);
        v9 = (v5 - v8) >> 4;
        v10 = v9 + 1;
        if ((v9 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v11 = v6 - v8;
        if (v11 >> 3 > v10)
        {
          v10 = v11 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1004F4DA8(a1 + 104, v12);
        }

        v13 = 16 * v9;
        *v13 = Current;
        *(v13 + 8) = v2;
        *(v13 + 12) = v3;
        v7 = 16 * v9 + 16;
        v14 = *(a1 + 104);
        v15 = *(a1 + 112) - v14;
        v16 = v13 - v15;
        memcpy((v13 - v15), v14, v15);
        v17 = *(a1 + 104);
        *(a1 + 104) = v16;
        *(a1 + 112) = v7;
        *(a1 + 120) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v5 = Current;
        *(v5 + 8) = v2;
        v7 = v5 + 16;
        *(v5 + 12) = v3;
      }

      *(a1 + 112) = v7;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018A8128();
    }

    v18 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "HARVEST NAVIGATION SESSION: start navigation session", v19, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A813C();
    }
  }
}

void sub_1004F4420(uint64_t a1)
{
  if (*(a1 + 8) >= 0.0 && *(a1 + 24) <= 0.0 && *(a1 + 40) <= 0.0)
  {
    *(a1 + 16) = CFAbsoluteTimeGetCurrent() - *(a1 + 8);
    *(a1 + 8) = 0xBFF0000000000000;
    if (*(a1 + 88) > 0.0)
    {
      v2 = *(a1 + 96);
      v3 = *(a1 + 100);
      Current = CFAbsoluteTimeGetCurrent();
      v5 = *(a1 + 112);
      v6 = *(a1 + 120);
      if (v5 >= v6)
      {
        v8 = *(a1 + 104);
        v9 = (v5 - v8) >> 4;
        v10 = v9 + 1;
        if ((v9 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v11 = v6 - v8;
        if (v11 >> 3 > v10)
        {
          v10 = v11 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1004F4DA8(a1 + 104, v12);
        }

        v13 = 16 * v9;
        *v13 = Current;
        *(v13 + 8) = v2;
        *(v13 + 12) = v3;
        v7 = 16 * v9 + 16;
        v14 = *(a1 + 104);
        v15 = *(a1 + 112) - v14;
        v16 = v13 - v15;
        memcpy((v13 - v15), v14, v15);
        v17 = *(a1 + 104);
        *(a1 + 104) = v16;
        *(a1 + 112) = v7;
        *(a1 + 120) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v5 = Current;
        *(v5 + 8) = v2;
        v7 = v5 + 16;
        *(v5 + 12) = v3;
      }

      *(a1 + 112) = v7;
    }

    if (qword_1025D47D0 != -1)
    {
      sub_1018A8128();
    }

    v18 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_31:
      if (!sub_10000A100(121, 2))
      {
LABEL_32:
        *(a1 + 8) = xmmword_101C75BF0;
        *(a1 + 24) = xmmword_101C75BF0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0xBFF0000000000000;
        *(a1 + 64) = xmmword_101C75BF0;
        *(a1 + 80) = 0;
        *(a1 + 112) = *(a1 + 104);
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47D0 != -1)
      {
        sub_1018A8218();
      }

      (*(**a1 + 16))(v48);
      if (v49 >= 0)
      {
        v33 = v48;
      }

      else
      {
        v33 = v48[0];
      }

      v34 = *(a1 + 16);
      v35 = *(a1 + 32);
      v37 = *(a1 + 48);
      v36 = *(a1 + 56);
      v38 = *(a1 + 72);
      v39 = *(a1 + 80);
      v40 = *(a1 + 104);
      v41 = *(a1 + 112);
      v42 = -1.0;
      v43 = (v41 - v40) >> 4;
      if (v41 == v40)
      {
        v45 = -1;
        v44 = -1.0;
      }

      else
      {
        v44 = *(v40 + 8);
        v45 = *(v40 + 12);
        if (v43 >= 2)
        {
          v42 = *(v41 - 8);
          v46 = *(v41 - 4);
LABEL_44:
          *__p = 136317954;
          *&__p[4] = v33;
          v51 = 2048;
          v52 = v34;
          v53 = 2048;
          v54 = v35;
          v55 = 2048;
          v56 = v37;
          v57 = 2048;
          v58 = v36;
          v59 = 2048;
          v60 = v38;
          v61 = 1024;
          v62 = v39;
          v63 = 2048;
          v64 = v43;
          v65 = 2048;
          v66 = v44;
          v67 = 1024;
          v68 = v45;
          v69 = 2048;
          v70 = v42;
          v71 = 1024;
          v72 = v46;
          v47 = _os_log_send_and_compose_impl();
          if (v49 < 0)
          {
            operator delete(v48[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLNavigationSession::stop()", "%s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }

          goto LABEL_32;
        }
      }

      v46 = -1;
      goto LABEL_44;
    }

    (*(**a1 + 16))(__p);
    if (v53 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v23 = *(a1 + 48);
    v22 = *(a1 + 56);
    v24 = *(a1 + 72);
    v25 = *(a1 + 80);
    v26 = *(a1 + 104);
    v27 = *(a1 + 112);
    v28 = -1.0;
    v29 = (v27 - v26) >> 4;
    if (v27 == v26)
    {
      v31 = -1;
      v30 = -1.0;
    }

    else
    {
      v30 = *(v26 + 8);
      v31 = *(v26 + 12);
      if (v29 >= 2)
      {
        v28 = *(v27 - 8);
        v32 = *(v27 - 4);
        goto LABEL_29;
      }
    }

    v32 = -1;
LABEL_29:
    *buf = 136317954;
    v74 = v19;
    v75 = 2048;
    v76 = v20;
    v77 = 2048;
    v78 = v21;
    v79 = 2048;
    v80 = v23;
    v81 = 2048;
    v82 = v22;
    v83 = 2048;
    v84 = v24;
    v85 = 1024;
    v86 = v25;
    v87 = 2048;
    v88 = v29;
    v89 = 2048;
    v90 = v30;
    v91 = 1024;
    v92 = v31;
    v93 = 2048;
    v94 = v28;
    v95 = 1024;
    v96 = v32;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "HARVEST NAVIGATION SESSION: stop navigation session, identifier, %s, duration, %.3f, automtiveActivityDuration, %.3f, isVehicleConnectedDuration, %.3f, gpsDuration, %.3f, proactiveGpsDuration, %.3f, mapsUsed, %d, batteryStates, %lu, beggining, level, %f, charging, %d, end, level, %f, charging, %d", buf, 0x6Eu);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_31;
  }
}

void sub_1004F4910(uint64_t a1)
{
  if (*(a1 + 24) <= 0.0)
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D47D0 != -1)
    {
      sub_1018A8128();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "HARVEST NAVIGATION SESSION: start automotive activity", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A8240();
    }

    *(a1 + 24) = CFAbsoluteTimeGetCurrent();
    sub_1004F4294(a1);
  }
}

void sub_1004F49C8(uint64_t a1)
{
  if (*(a1 + 24) >= 0.0)
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D47D0 != -1)
    {
      sub_1018A8128();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "HARVEST NAVIGATION SESSION: stop automotive activity", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A8314();
    }

    *(a1 + 32) = *(a1 + 32) + CFAbsoluteTimeGetCurrent() - *(a1 + 24);
    *(a1 + 24) = 0xBFF0000000000000;
    sub_1004F4420(a1);
  }
}

void sub_1004F4A94(uint64_t a1)
{
  if (*(a1 + 40) <= 0.0)
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D47D0 != -1)
    {
      sub_1018A8128();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "HARVEST NAVIGATION SESSION: start vehicle connected", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A83E8();
    }

    *(a1 + 40) = CFAbsoluteTimeGetCurrent();
    sub_1004F4294(a1);
  }
}

void sub_1004F4B4C(uint64_t a1)
{
  if (*(a1 + 40) >= 0.0)
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D47D0 != -1)
    {
      sub_1018A8128();
    }

    v4 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "HARVEST NAVIGATION SESSION: stop vehicle connected", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A84BC();
    }

    *(a1 + 48) = *(a1 + 48) + CFAbsoluteTimeGetCurrent() - *(a1 + 40);
    *(a1 + 40) = 0xBFF0000000000000;
    sub_1004F4420(a1);
  }
}

double sub_1004F4C18(double *a1)
{
  result = a1[1];
  if (result > 0.0)
  {
    result = a1[8];
    if (result >= 0.0)
    {
      result = a1[9] + CFAbsoluteTimeGetCurrent() - a1[8];
      a1[9] = result;
      a1[8] = -1.0;
    }
  }

  return result;
}

void sub_1004F4C7C(uint64_t a1, int a2, float a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 88) = Current;
  v7 = (a1 + 88);
  *(a1 + 96) = a3;
  *(a1 + 100) = a2;
  if (*(a1 + 8) > 0.0)
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = v9 - v8;
    if (v9 == v8 || *(v9 - 4) != a2 || Current - *(v9 - 2) >= 300.0)
    {
      v11 = *(a1 + 120);
      if (v9 >= v11)
      {
        v13 = v10 >> 4;
        v14 = (v10 >> 4) + 1;
        if (v14 >> 60)
        {
          sub_10028C64C();
        }

        v15 = v11 - v8;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_1004F4DA8(a1 + 104, v16);
        }

        v17 = (16 * v13);
        *v17 = *v7;
        v12 = 16 * v13 + 16;
        v18 = *(a1 + 104);
        v19 = *(a1 + 112) - v18;
        v20 = 16 * v13 - v19;
        memcpy(v17 - v19, v18, v19);
        v21 = *(a1 + 104);
        *(a1 + 104) = v20;
        *(a1 + 112) = v12;
        *(a1 + 120) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = *v7;
        v12 = (v9 + 2);
      }

      *(a1 + 112) = v12;
    }
  }
}

void sub_1004F4DA8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1004F4E20(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004F4E54(uint64_t a1)
{
  *a1 = off_10245A7F0;
  *(a1 + 8) = 0;
  operator new();
}

void *sub_1004F5110(void *a1, uint64_t a2)
{
  sub_1004F8B68(v4, a2);
  sub_1004F8C00(v4, a1);
  sub_1004F80B4(v4);
  return a1;
}

void *sub_1004F5184(void *a1, uint64_t a2)
{
  sub_1004F8E64(v4, a2);
  sub_1004F8EFC(v4, a1);
  sub_1004F8180(v4);
  return a1;
}

uint64_t *sub_1004F51F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    nullsub_34(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1004F5244(uint64_t a1)
{
  *a1 = off_10245A7F0;
  dispatch_release(*(a1 + 72));
  sub_1004F8180(a1 + 88);
  sub_1004F8134((a1 + 80), 0);
  sub_1004F80B4(a1 + 40);
  sub_1004F51F8((a1 + 24));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_1004F8038(a1 + 16, v2);
  }

  return a1;
}

void sub_1004F52C8(uint64_t a1)
{
  sub_1004F5244(a1);

  operator delete();
}

void sub_1004F5300(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 32) > 31)
  {
    v6 = (a1 + 128);
    v7 = *(a1 + 128);
    *(a1 + 120) = a3;
    v8 = a3 - a2;
    if (v7 == 0.0)
    {
      *v6 = v8;
      v7 = a3 - a2;
    }

    if (vabdd_f64(v8, v7) > 0.02)
    {
      if (qword_1025D4270 != -1)
      {
        sub_1018A8590();
      }

      v9 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v6;
        v18 = 134218240;
        v19 = v10;
        v20 = 2048;
        v21 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Shift in offset from machTime to wallTime, prevOffset, %lf, newOffset, %lf", &v18, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A85A4((a1 + 128), v11, v12, v13, v14, v15, v16, v17);
      }

      *v6 = v8;
    }

    sub_1004F54DC(a1);
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v4 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Still in model delay", &v18, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A86B4();
    }

    ++*(a1 + 32);
  }
}

void sub_1004F54DC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = sub_1004F5828(v2, __src, v1);
  switch(v4)
  {
    case 2:
      if (qword_1025D4270 != -1)
      {
        sub_1018A8590();
      }

      v9 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Skip inference due to bad input quality.", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A8880();
      }

      v8 = 2;
      break;
    case 1:
      if (qword_1025D4270 != -1)
      {
        sub_1018A8590();
      }

      v7 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Data provider streams empty. Hitting this log is not expected.", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A8790();
      }

      v8 = 1;
      break;
    case 0:
      if (qword_1025D4270 != -1)
      {
        sub_1018A8590();
      }

      v5 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Executing async CMSP call.", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A8964();
      }

      v6 = *(v3 + 80);
      memcpy(v12, __src, 0xC18uLL);
      v14[0] = off_10245A8E8;
      v14[1] = v3;
      v14[3] = v14;
      sub_1013B2F50(v6, v12, v14);
      sub_1004F9528(v14);
      return;
    default:
      if (qword_1025D4270 != -1)
      {
        sub_1018A8590();
      }

      v10 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "PN inference not run for unknown reason. Hitting this log is not expected.", v12, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018A8A48();
      }

      v8 = 125;
      break;
  }

  if (qword_1025D4270 != -1)
  {
    sub_1018A8B38();
  }

  v11 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Not running PN inference", v12, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A8B60();
  }

  memset(v12, 0, 20);
  HIDWORD(v12[2]) = v8;
  sub_1004F595C(v3, v12);
}

uint64_t sub_1004F5828(uint64_t a1, void *a2, double a3)
{
  sub_1004F5C3C(*(a1 + 16), v16, a3);
  v7 = sub_1004F5DD8(v6, v16);
  if (!v7)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v7 = sub_1004F601C(v16, &v13, 128, a3);
    if (!v7)
    {
      v10 = 0;
      v11 = 0;
      __p = 0;
      sub_1004F7FB8(&__p, v13, v14, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
      sub_1004F6984(a1, &__p, __src);
      memcpy(a2, __src, 0xC18uLL);
      if (__p)
      {
        v10 = __p;
        operator delete(__p);
      }
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  return v7;
}

void sub_1004F5924(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    *(v1 - 88) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 72);
  if (v4)
  {
    *(v1 - 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F595C(uint64_t a1, uint64_t a2)
{
  *a2 = sub_1011A6B2C(*(a1 + 224), *a2, *(a2 + 16));
  *buf = *a2;
  v14 = *(a2 + 16);
  v4 = *(a1 + 112);
  if (!v4)
  {
    sub_1000CF05C();
  }

  (*(*v4 + 48))(v4, buf);
  v5 = *(a2 + 20);
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = *(a1 + 8) + 1;
      *(a1 + 8) = v6;
      if (!(v6 % (1.0 / *(a1 + 148) / 0.0799999982)))
      {
        if (qword_1025D4270 != -1)
        {
          sub_1018A8B38();
        }

        v7 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "Not enough samples, sending empty step", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018A8C44();
        }

        sub_1004F6B60(a1, COERCE__INT64(*(a1 + 120) + -1.27999997), 0);
        *(a1 + 8) = 0;
      }
    }
  }

  else
  {
    sub_1005D69F0(*(a1 + 24), a2, buf, *(a1 + 120) + -2.55999994);
    if (v15 == 1 && v14 == 1 && buf[12] == 1)
    {
      if (qword_1025D4270 != -1)
      {
        sub_1018A8B38();
      }

      v8 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "Detected a PedNet Step and Sending to Data Provider", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A8DFC();
      }

      if ((v14 & 1) == 0)
      {
        sub_100173BA0();
      }

      v9 = *buf;
      v10 = *&buf[8];
    }

    else
    {
      if (vabdd_f64(*(a1 + 120), *(a1 + 136)) <= 1.0 / *(a1 + 148))
      {
        return;
      }

      if (qword_1025D4270 != -1)
      {
        sub_1018A8B38();
      }

      v11 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Sending an empty step to Data Provider", v12, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A8D20();
      }

      v9 = *(a1 + 120) + -1.27999997;
      v10 = dword_100000000;
    }

    sub_1004F6B60(a1, *&v9, v10);
  }
}

void sub_1004F5C3C(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  if (qword_1025D4270 != -1)
  {
    sub_1018A8590();
  }

  v6 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a3 + -2.55999994;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CMPedNetAlgorithm: Getting dm data from %f to %f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A8ED8(buf, v7, v8, v9, v10, v11, v12, v13, a3);
    v14 = *buf;
  }

  else
  {
    v14 = a3 + -2.55999994;
  }

  sub_1000A69D8(*a1, 0, buf, v14, a3);
  sub_1004F7318(buf, &v18);
  v15 = v18;
  v16 = v19;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 4);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v17 >= 2)
  {
    sub_1004F7EF0(a2, v15, v16, v17);
    v15 = v18;
  }

  if (v15)
  {
    v19 = v15;
    operator delete(v15);
  }
}

void sub_1004F5DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004F5DD8(uint64_t a1, unint64_t **a2)
{
  v2 = a2 + 1;
  if (a2[1] == *a2)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v9 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Empty stream on inference request.", &v19, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A9224();
    }

    return 1;
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v4 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v5 = a2[1];
      v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
      if (v5 == *a2)
      {
        v7 = 0xBFF0000000000000;
        v8 = 0xBFF0000000000000;
      }

      else
      {
        v7 = **a2;
        v8 = *(v5 - 6);
      }

      v19 = 134218496;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Retrieved raw data size %zu, start timetamp, %f, end timestamp, %f", &v19, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A8FFC(v2, a2, v11, v12, v13, v14, v15, v16);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4) > 0x7D)
    {
      return 0;
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_1018A8B38();
      }

      v17 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Not enough samples [even after interpolation if used], skipping inference", &v19, 2u);
      }

      v10 = 2;
      if (sub_10000A100(121, 2))
      {
        sub_1018A9148();
      }
    }
  }

  return v10;
}

uint64_t sub_1004F601C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v8 = (a1 + 8);
  v9 = *a1;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (*(a1 + 8) != *a1)
  {
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v14 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
      *buf = 134218752;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      LOWORD(v71) = 2048;
      *(&v71 + 2) = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Received accessory sample onDataReady, data size: %zu | useraccel: %f, %f, %f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_1018A8B38();
      }

      v64 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
      *v68 = 134218752;
      *&v68[4] = v64;
      *&v68[12] = 2048;
      *&v68[14] = v11;
      *&v68[22] = 2048;
      *&v68[24] = v12;
      v69.i16[0] = 2048;
      *(v69.i64 + 2) = v13;
      v65 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static CMPednetInputBufferFailure CMPedNetAlgorithm::getRotatedInputData(std::vector<CMPedNetAlgorithm::AccessoryDMType> &, std::vector<RotatedAccessoryData> &, int, CFTimeInterval)", "%s\n", v65);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    v17 = *a1;
    v16 = *(a1 + 8);
    if (qword_1025D4270 != -1)
    {
      sub_1018A8B38();
    }

    v18 = a3 + 1431655765 * ((v16 - v17) >> 4);
    v19 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
      *buf = 134218240;
      *&buf[4] = v20;
      *&buf[12] = 1024;
      *&buf[14] = v18;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "Checking padding size: %zu | diff: %d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_1018A8B38();
      }

      v66 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
      *v68 = 134218240;
      *&v68[4] = v66;
      *&v68[12] = 1024;
      *&v68[14] = v18;
      v67 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static CMPednetInputBufferFailure CMPedNetAlgorithm::getRotatedInputData(std::vector<CMPedNetAlgorithm::AccessoryDMType> &, std::vector<RotatedAccessoryData> &, int, CFTimeInterval)", "%s\n", v67);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    v21 = *v8;
    *buf = *(*v8 - 48);
    *&buf[16] = *(v21 - 2);
    v71 = *(v21 - 1);
    if (v18 >= 1)
    {
      v22 = a3;
      do
      {
        v23 = *(a1 + 16);
        if (v21 >= v23)
        {
          v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a1) >> 4);
          v27 = v26 + 1;
          if (v26 + 1 > 0x555555555555555)
          {
            sub_10028C64C();
          }

          v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 4);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x2AAAAAAAAAAAAAALL)
          {
            v29 = 0x555555555555555;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            sub_1004F72C0(a1, v29);
          }

          v30 = (16 * ((v21 - *a1) >> 4));
          *v30 = *buf;
          v30[1] = *&buf[16];
          v30[2] = v71;
          v21 = (48 * v26 + 48);
          v31 = *(a1 + 8) - *a1;
          v32 = 48 * v26 - v31;
          memcpy(v30 - v31, *a1, v31);
          v33 = *a1;
          *a1 = v32;
          *(a1 + 8) = v21;
          *(a1 + 16) = 0;
          if (v33)
          {
            operator delete(v33);
          }

          a3 = v22;
        }

        else
        {
          v24 = *buf;
          v25 = v71;
          v21[1] = *&buf[16];
          v21[2] = v25;
          *v21 = v24;
          v21 += 3;
        }

        *v8 = v21;
        --v18;
      }

      while (v18);
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4270 != -1)
    {
      sub_1018A8B38();
    }

    v34 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
      *v68 = 134217984;
      *&v68[4] = v35;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "accessoryDMData data size: %zu after padding", v68, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A9300(v8, a1, v36, v37, v38, v39, v40, v41);
    }
  }

  *(a2 + 8) = *a2;
  if (qword_1025D4270 != -1)
  {
    sub_1018A8B38();
  }

  v42 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "Perform Data Rotation", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A9428();
  }

  if (a3 <= 0)
  {
    v52 = *(a2 + 8);
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 48 * a3;
    do
    {
      v46 = (*a1 + v44);
      v48 = v46[1];
      v47 = v46[2];
      *v68 = *v46;
      *&v68[16] = v48;
      v69 = v47;
      if (a4 > 0.0)
      {
        *v47.i64 = vabdd_f64(*v68, a4 + -2.55999994 + (v43 / 50.0));
        if (*v47.i64 > 0.02)
        {
          if (p_info[78] != -1)
          {
            sub_1018A8B38();
          }

          v49 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            *&buf[4] = a4 + -2.55999994 + (v43 / 50.0);
            *&buf[12] = 2048;
            *&buf[14] = *v68;
            _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_INFO, "Inconsistent input timestamp, expected, %lf, actual, %lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (p_info[78] != -1)
            {
              sub_1018A8B38();
            }

            v61 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "static CMPednetInputBufferFailure CMPedNetAlgorithm::getRotatedInputData(std::vector<CMPedNetAlgorithm::AccessoryDMType> &, std::vector<RotatedAccessoryData> &, int, CFTimeInterval)", "%s\n", v61);
            if (v61 != buf)
            {
              free(v61);
            }
          }
        }
      }

      sub_1004F6ACC(v68, buf, v47);
      v51 = *(a2 + 8);
      v50 = *(a2 + 16);
      if (v51 >= v50)
      {
        v53 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *a2) >> 3);
        v54 = v53 + 1;
        if (v53 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v55 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *a2) >> 3);
        if (2 * v55 > v54)
        {
          v54 = 2 * v55;
        }

        if (v55 >= 0x555555555555555)
        {
          v56 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          sub_1001AB518(a2, v56);
        }

        v57 = 24 * v53;
        *v57 = *buf;
        *(v57 + 16) = *&buf[16];
        v52 = 24 * v53 + 24;
        v58 = *(a2 + 8) - *a2;
        v59 = v57 - v58;
        memcpy((v57 - v58), *a2, v58);
        v60 = *a2;
        *a2 = v59;
        *(a2 + 8) = v52;
        *(a2 + 16) = 0;
        if (v60)
        {
          operator delete(v60);
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      else
      {
        *v51 = *buf;
        *(v51 + 16) = *&buf[16];
        v52 = v51 + 24;
      }

      *(a2 + 8) = v52;
      v44 += 48;
      ++v43;
    }

    while (v45 != v44);
  }

  if (-1431655765 * ((v52 - *a2) >> 3) == 128)
  {
    return 0;
  }

  if (p_info[78] != -1)
  {
    sub_1018A8B38();
  }

  v63 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_INFO, "Unexpected accessory DM size: ", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A950C();
  }

  return 2;
}

void *sub_1004F6984@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (*a2 + 12);
    v8 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    v12 = v26;
    v13 = __src;
    do
    {
      v14 = *(v7 - 2);
      *v13++ = *(v7 - 3);
      *v12++ = v14;
      v15 = *v7;
      *v11++ = *(v7 - 1);
      *v10++ = v15;
      v16 = v7[1];
      v17 = v7[2];
      v7 += 6;
      *v9++ = v16;
      *v8++ = v17;
      --v6;
    }

    while (v6);
  }

  *a3 = 0;
  memcpy((a3 + 8), __src, 0x200uLL);
  memcpy((a3 + 520), v26, 0x200uLL);
  memcpy((a3 + 1032), v25, 0x200uLL);
  memcpy((a3 + 1544), v24, 0x200uLL);
  memcpy((a3 + 2056), v23, 0x200uLL);
  result = memcpy((a3 + 2568), v22, 0x200uLL);
  v19 = *(a1 + 172);
  *(a3 + 3080) = *(a1 + 168) * 100.0;
  *(a3 + 3084) = v19;
  v20 = 1.0;
  if (*(a1 + 160))
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  *(a3 + 3088) = v21;
  if (*(a1 + 200))
  {
    v20 = 0.0;
  }

  *(a3 + 3092) = v20;
  return result;
}

void sub_1004F6ACC(float32x2_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v20 = sub_100AEA718(a1 + 4, a3);
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v8.f32[0] = sub_100AEA7D0(&v20, a1[1].f32[0], a1[1].f32[1], a1[2].f32[0]);
  v9 = v8.i32[0];
  v11 = v10;
  v13 = v12;
  v20 = sub_100AEA718(a1 + 4, v8);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v17 = sub_100AEA7D0(&v20, a1[2].f32[1], a1[3].f32[0], a1[3].f32[1]);
  *a2 = v9;
  *(a2 + 4) = v11;
  *(a2 + 8) = v13;
  *(a2 + 12) = v17;
  *(a2 + 16) = v18;
  *(a2 + 20) = v19;
}

void sub_1004F6B60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *&a3;
  v6 = HIDWORD(a3);
  if (*(a1 + 144) == 1)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v7 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CMPedNetAlgorithm::feedPedNetSteps Logging Delta Step to MSL", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A95F0();
    }

    sub_1014FF460(buf);
    *&buf[8] = a2;
    v8 = v3;
    if ((v6 & 1) == 0)
    {
      v8 = -1.0;
    }

    *&buf[16] = v8;
    v15 |= 0xFu;
    *&buf[20] = 0;
    v14 = 0;
    if (qword_102637F48 != -1)
    {
      sub_1018A96D4();
    }

    if (qword_102637F50)
    {
      operator new();
    }

    PB::Base::~Base(buf);
  }

  *buf = a2;
  *&buf[8] = v3;
  buf[12] = v6;
  v9 = *(a1 + 64);
  if (!v9)
  {
    sub_1000CF05C();
  }

  (*(*v9 + 48))(v9, buf);
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4270 != -1)
  {
    sub_1018A8B38();
  }

  v10 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    v11 = v3;
    if ((v6 & 1) == 0)
    {
      v11 = -1.0;
    }

    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CMPedNetAlgorithm: PedNet Single Step | timestamp: %f, distance: %f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_1018A8B38();
    }

    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CMPedNetAlgorithm::feedPedNetSteps(SinglePedNetStep)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }
}

void sub_1004F6ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PB::Base::~Base(va);
  _Unwind_Resume(a1);
}

void sub_1004F6F04(uint64_t a1, uint64_t a2)
{
  *(a1 + 224) = a2;
  sub_1004F6FB0(*(a1 + 16));
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4270 != -1)
  {
    sub_1018A8590();
  }

  v3 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "Started reading from data provider", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A96FC();
  }
}

void *sub_1004F6FB0(void *result)
{
  if (!*result)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v1 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "CMPedNetAlgorithm: Start PedNet Algorithm", v2, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A97D8();
    }

    operator new();
  }

  return result;
}

void sub_1004F7104(uint64_t a1)
{
  sub_1004F71A0(*(a1 + 16));
  if (qword_1025D4270 != -1)
  {
    sub_1018A8590();
  }

  v1 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_INFO, "Stopped reading from data provider", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A98BC();
  }
}

uint64_t sub_1004F71A0(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    if (qword_1025D4270 != -1)
    {
      sub_1018A8590();
    }

    v2 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CMPedNetAlgorithm: Stop PedNet Algorithm", v3, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018A9998();
    }

    result = *v1;
    *v1 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

__n128 sub_1004F7274(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 204) = *(a2 + 44);
  *(a1 + 176) = v3;
  *(a1 + 192) = v4;
  *(a1 + 160) = result;
  return result;
}

void sub_1004F72C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1004F7318(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  *buf = 4;
  sub_1003DD9F8(v4, buf);
  v5 = *a1;
  *buf = 4;
  v6 = sub_1003DD9F8(v5, buf);
  v7 = *v6;
  v8 = v6[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 == 1 && (*(v6 + 33) & 1) != 0)
    {
LABEL_6:
      {
        v13 = 0;
      }

      else
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v9 = *(a1 + 24);
        v13 = v8;
      }

      sub_1004F76E8(v7, v9, a2, *(a1 + 8), *(a1 + 16));
      if (v13)
      {
        sub_100008080(v13);
      }

      goto LABEL_22;
    }
  }

  else if (v6[4])
  {
    goto LABEL_6;
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018A9B84();
  }

  v11 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
  {
    v12 = *(a1 + 24);
    *buf = 67109376;
    v16 = 4;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018A9B40(buf);
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryFitnessDM, T = CMPedNetAlgorithm::AccessoryDMType, Strategy = AccessoryDMConverter]", "%s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
LABEL_22:
  if (v8)
  {
    sub_100008080(v8);
  }
}

void sub_1004F75B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, char a15)
{
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F76E8(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (a5 < a4)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = vabdd_f64(a5, a4);
  v11 = v10 * 1.00999999 * 50.0;
  if (v11 >= 0x200)
  {
    v12 = 512;
  }

  else
  {
    v12 = v11;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1004F7C30(a3, v12);
  if (*(a1 + 98))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      if (a2)
      {
        v18 = (sub_1004F7CF0((a1 + 96), v13) + 8);
      }

      else
      {
        v18 = sub_1004F7CF0((a1 + 96), v13);
      }

      v19 = *v18;
      if (*v18 >= a4)
      {
        if (v19 > a5)
        {
          if (!*(a1 + 98))
          {
            return;
          }

LABEL_36:
          v40 = (v10 * 50.0) + 1431655765 * ((a3[1] - *a3) >> 4);
          if (v40 < 0)
          {
            v40 = -v40;
          }

          if (v40 > (v10 * 0.0500000007 * 50.0))
          {
            if (qword_1025D45A0 != -1)
            {
              sub_1018A9B84();
            }

            v41 = qword_1025D45A8;
            if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
            {
              if (v14)
              {
                v42 = v15;
              }

              else
              {
                v42 = 0;
              }

              v43 = *sub_1004F7CF0((a1 + 96), v42);
              if (v16)
              {
                v44 = v17;
              }

              else
              {
                v44 = 0;
              }

              v45 = *sub_1004F7CF0((a1 + 96), v44);
              v46 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4);
              *buf = 134219008;
              *&buf[4] = a4;
              *&buf[12] = 2048;
              *&buf[14] = a5;
              *&buf[22] = 2048;
              *&buf[24] = v43;
              *&buf[32] = 2048;
              *&buf[34] = v45;
              *&buf[42] = 2048;
              *&buf[44] = v46;
              _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", buf, 0x34u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018A9B40(buf);
              if (v14)
              {
                v47 = v15;
              }

              else
              {
                v47 = 0;
              }

              sub_1004F7CF0((a1 + 96), v47);
              if (v16)
              {
                v48 = v17;
              }

              else
              {
                v48 = 0;
              }

              sub_1004F7CF0((a1 + 96), v48);
              v49 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "const std::vector<T> CMDataProviderFactoryAccessoryFitnessDM::getDataInRange(CFTimeInterval, CFTimeInterval, TimeBase, Strategy) const [T = CMPedNetAlgorithm::AccessoryDMType, Strategy = AccessoryDMConverter]", "%s\n", v49);
              if (v49 != buf)
              {
                free(v49);
              }
            }
          }

          return;
        }

        if (v19 >= a4 && v19 < a5)
        {
          if ((v14 & 1) == 0)
          {
            v15 = v13;
            v14 = 1;
          }

          v21 = sub_1004F7CF0((a1 + 96), v13);
          *buf = *v21;
          v22 = *(v21 + 16);
          v23 = *(v21 + 32);
          HIDWORD(v22) = v23.i32[0];
          *&buf[8] = v22;
          v24 = *(v21 + 48);
          *&buf[24] = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v24, 8uLL);
          v25 = vextq_s8(v24, v24, 8uLL);
          *&buf[40] = v25.i64[0];
          sub_10011E648(&buf[32], v25);
          v26 = a3[1];
          v27 = a3[2];
          if (v26 >= v27)
          {
            v31 = *a3;
            v32 = v26 - *a3;
            v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 4) + 1;
            if (v33 > 0x555555555555555)
            {
              sub_10028C64C();
            }

            v34 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v31) >> 4);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x2AAAAAAAAAAAAAALL)
            {
              v33 = 0x555555555555555;
            }

            if (v33)
            {
              sub_1004F72C0(a3, v33);
            }

            v35 = (16 * (v32 >> 4));
            v36 = *buf;
            v37 = *&buf[32];
            v35[1] = *&buf[16];
            v35[2] = v37;
            *v35 = v36;
            v30 = v35 + 3;
            v38 = v35 - v32;
            memcpy(v35 - v32, v31, v32);
            v39 = *a3;
            *a3 = v38;
            a3[1] = v30;
            a3[2] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            v28 = *buf;
            v29 = *&buf[32];
            v26[1] = *&buf[16];
            v26[2] = v29;
            *v26 = v28;
            v30 = v26 + 3;
          }

          a3[1] = v30;
          v16 = 1;
          v17 = v13;
        }
      }

      if (++v13 >= *(a1 + 98))
      {
        if (!*(a1 + 98))
        {
          return;
        }

        goto LABEL_36;
      }
    }
  }
}

void sub_1004F7BB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004F7C30(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1004F72C0(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

uint64_t sub_1004F7CF0(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10245A878);
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
        dispatch_once(&qword_1025D48A0, &stru_10245A878);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMDataProvider::Types::CMDPAccessoryFitnessDeviceMotion>::operator[](const size_t) const [T = CMDataProvider::Types::CMDPAccessoryFitnessDeviceMotion]", "%s\n", v9);
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

  return &a1[40 * (v4 - v5) + 8];
}

uint64_t sub_1004F7EF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004F7F6C(result, a4);
  }

  return result;
}

void sub_1004F7F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F7F6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1004F72C0(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1004F7FB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_101857658(result, a4);
  }

  return result;
}

void sub_1004F8018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004F8038(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    *a2 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

uint64_t sub_1004F80B4(uint64_t a1)
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

id **sub_1004F8134(id ***a1, id **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1013B30D0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1004F8180(uint64_t a1)
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

unsigned __int8 *sub_1004F8200(unsigned __int8 *a1, const char *a2, _DWORD *a3, unsigned __int8 a4)
{
  *a1 = 0;
  *(a1 + 1) = *a3;
  v6 = (a1 + 4);
  a1[8] = a4;
  v7 = sub_100011660();
  sub_100185AC0(v7, buf);
  *a1 = sub_1004FBE40(*buf, a2, v6);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10003848C(v34);
  std::ostream::operator<<();
  if ((a1[8] & 1) == 0)
  {
    if (*a1)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018A9BAC();
      }

      v10 = qword_1025D4208;
      if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v11 = *a1;
      if ((v44 & 0x10) != 0)
      {
        v20 = v43;
        if (v43 < v40)
        {
          v43 = v40;
          v20 = v40;
        }

        v21 = __src;
      }

      else
      {
        if ((v44 & 8) == 0)
        {
          v12 = 0;
          BYTE3(v49) = 0;
LABEL_44:
          __dst[v12] = 0;
          v24 = __dst;
          if (SBYTE3(v49) < 0)
          {
            v24 = *__dst;
          }

          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          v51 = 2080;
          v52 = v24;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
          if (SBYTE3(v49) < 0)
          {
            operator delete(*__dst);
          }

LABEL_48:
          if (!sub_10000A100(121, 2))
          {
            goto LABEL_67;
          }

          sub_1018A9BD4(buf);
          v25 = *a1;
          sub_10003DD04(&v35, __p);
          if (v33 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = a2;
          v46 = 1024;
          v47 = v25;
          v48 = 2080;
          v49 = v26;
          v16 = _os_log_send_and_compose_impl();
          if (v33 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_75;
        }

        v21 = v37;
        v20 = v38;
      }

      v12 = v20 - v21;
      if (v20 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      BYTE3(v49) = v20 - v21;
      if (v12)
      {
        memmove(__dst, v21, v12);
      }

      goto LABEL_44;
    }

    if (qword_1025D4200 != -1)
    {
      sub_1018A9BAC();
    }

    v17 = qword_1025D4208;
    if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
LABEL_66:
      if (!sub_10000A100(121, 2))
      {
        goto LABEL_67;
      }

      sub_1018A9BD4(buf);
      v30 = *a1;
      sub_10003DD04(&v35, __p);
      if (v33 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      *__dst = 136315650;
      *&__dst[4] = a2;
      v46 = 1024;
      v47 = v30;
      v48 = 2080;
      v49 = v31;
      v16 = _os_log_send_and_compose_impl();
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_75:
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<float>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = float]", "%s\n", v16);
      if (v16 == buf)
      {
        goto LABEL_67;
      }

      goto LABEL_76;
    }

    v18 = *a1;
    if ((v44 & 0x10) != 0)
    {
      v22 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v22 = v40;
      }

      v23 = __src;
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v19 = 0;
        BYTE3(v49) = 0;
LABEL_62:
        __dst[v19] = 0;
        v27 = __dst;
        if (SBYTE3(v49) < 0)
        {
          v27 = *__dst;
        }

        *buf = 136315650;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v18;
        v51 = 2080;
        v52 = v27;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
        if (SBYTE3(v49) < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_66;
      }

      v23 = v37;
      v22 = v38;
    }

    v19 = v22 - v23;
    if (v22 - v23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v19 >= 0x17)
    {
      operator new();
    }

    BYTE3(v49) = v22 - v23;
    if (v19)
    {
      memmove(__dst, v23, v19);
    }

    goto LABEL_62;
  }

  if (*a1)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018A9BAC();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018A9BAC();
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v14 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
LABEL_23:
      sub_1018A9BD4(buf);
      v15 = *a1;
      *__dst = 136315394;
      *&__dst[4] = a2;
      v46 = 1024;
      v47 = v15;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<float>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = float]", "%s\n", v16);
      if (v16 == buf)
      {
        goto LABEL_67;
      }

LABEL_76:
      free(v16);
    }
  }

LABEL_67:
  v34[2] = v28;
  if (v42 < 0)
  {
    operator delete(v41);
  }

  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_1004F8B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1004F8B68(uint64_t a1, uint64_t a2)
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

void *sub_1004F8C00(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1004F8E58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1004F8E64(uint64_t a1, uint64_t a2)
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

void *sub_1004F8EFC(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1004F9154(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1004F91D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10245A8E8;
  a2[1] = v2;
  return result;
}

void sub_1004F91FC(uint64_t a1, float *a2)
{
  v3 = *(a1 + 8);
  if (qword_1025D4270 != -1)
  {
    sub_1018A8590();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Produced a model output before serialization", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018A9C18();
  }

  v5 = a2[12];
  v6 = a2[13];
  v7 = 0.0;
  if (v5 >= *(v3 + 152))
  {
    v7 = 1.0;
  }

  if (v5 >= *(v3 + 156))
  {
    v8 = 2.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = expf(-a2[10]) + 1.0;
  v10 = a2[11];
  if (qword_1025D4270 != -1)
  {
    sub_1018A8B38();
  }

  v11 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219008;
    v14 = (1.0 / v9);
    *v15 = 2048;
    *&v15[2] = v10;
    *&v15[10] = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = 0xBFF0000000000000;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Model output produced | stepProbability: %f, offset: %f, speed: %f, uncertainty: %f, pedestrian state: %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4270 != -1)
    {
      sub_1018A8B38();
    }

    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto CMPedNetAlgorithm::runInference(CFTimeInterval, CFAbsoluteTime)::(anonymous class)::operator()(const auto &) const [response:auto = motion::pednet::Response]", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *buf = v6;
  LODWORD(v14) = -1082130432;
  *(&v14 + 1) = 1.0 / v9;
  *v15 = v10;
  *&v15[4] = v8;
  *&v15[8] = 0;
  sub_1004F595C(v3, buf);
}

uint64_t sub_1004F94DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004F9528(uint64_t a1)
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

void sub_1004F95C4()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_1004F963C()
{
  v1 = 4;
  qword_102656818 = 0;
  unk_102656820 = 0;
  qword_102656810 = 0;
  sub_1004579D4(&qword_102656810, &v1, &v2, 1uLL);
  return __cxa_atexit(sub_1004F4E20, &qword_102656810, dword_100000000);
}

BOOL sub_1004F96B0(const char *a1, int a2, uint64_t a3)
{
  v6 = xmlBufferCreate();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = xmlNewTextWriterMemory(v6, 0);
  if (v8)
  {
    v9 = v8;
    v10 = xmlTextWriterWriteBase64(v8, a1, 0, a2);
    v11 = v10 != -1;
    if (v10 != -1)
    {
      xmlTextWriterFlush(v9);
      v12 = xmlBufferContent(v7);
      v13 = xmlBufferLength(v7);
      if (qword_1025D48A0 != -1)
      {
        sub_1018A9CF4();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 134218498;
        *&v16[4] = v12;
        *&v16[12] = 1024;
        *&v16[14] = v13;
        *&v16[18] = 2080;
        *&v16[20] = v12;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "processed %p %d to (%s)", v16, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018A9D08(v12, v13);
      }

      if ((v13 & 0x80000000) != 0)
      {
        sub_100061080();
      }

      if (v13 >= 0x17)
      {
        operator new();
      }

      v16[23] = v13;
      if (v13)
      {
        memmove(v16, v12, v13);
      }

      v16[v13] = 0;
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = *v16;
      *(a3 + 16) = *&v16[16];
    }

    xmlFreeTextWriter(v9);
  }

  else
  {
    v11 = 0;
  }

  xmlBufferFree(v7);
  return v11;
}

void *sub_1004F98D4(void *a1, CFTypeRef cf)
{
  *a1 = off_10245A978;
  a1[1] = cf;
  CFRetain(cf);
  return a1;
}

void sub_1004F991C(void *a1)
{
  sub_100005DA8(a1);

  operator delete();
}

void *sub_1004F9954(void *a1, uint64_t a2)
{
  *a1 = off_10245A978;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *(a2 + 8));
  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018A9FF8();
    }
  }

  return a1;
}

uint64_t sub_1004F9A30(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *(a2 + 8));
    *(a1 + 8) = MutableCopy;
    if (!MutableCopy)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018A9CF4();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", v8, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AA0DC();
      }
    }
  }

  return a1;
}

uint64_t sub_1004F9B88(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_1004F9B4C;
  }

  else
  {
    v5 = sub_1004F9B10;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_1004F9C20(uint64_t *a1, uint64_t a2)
{
  v4 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:a2] isDirectory:0];
  if (v4)
  {
    v22 = 0;
    if (objc_opt_respondsToSelector())
    {
      v5 = [NSData dataWithContentsOfURL:v4 options:0 error:&v22];
    }

    else
    {
      v5 = [NSData dataWithContentsOfURL:v4];
    }

    v11 = *a1;
    if (!v5)
    {
      (*(v11 + 872))(a1);
      result = v22;
      if (!v22)
      {
        return result;
      }

      if ([objc_msgSend(v22 "domain")] && objc_msgSend(v22, "code") == 260)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018AA1C0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v13 = [objc_msgSend(v22 "description")];
          *buf = 68289538;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = a2;
          v29 = 2082;
          v30 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_1018AA1C0();
          }
        }

        v14 = off_1025D47A8;
        result = os_signpost_enabled(off_1025D47A8);
        if (!result)
        {
          return result;
        }

        v15 = [objc_msgSend(v22 "description")];
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = a2;
        v29 = 2082;
        v30 = v15;
        v9 = "file does not exist... clearing";
        v10 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018AA1C0();
        }

        v19 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v20 = [objc_msgSend(v22 "description")];
          *buf = 68289538;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = a2;
          v29 = 2082;
          v30 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_1018AA1C0();
          }
        }

        v14 = off_1025D47A8;
        result = os_signpost_enabled(off_1025D47A8);
        if (!result)
        {
          return result;
        }

        v21 = [objc_msgSend(v22 "description")];
        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = a2;
        v29 = 2082;
        v30 = v21;
        v9 = "#Warning Error reading file";
        v10 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v17 = v14;
      v18 = 38;
      goto LABEL_41;
    }

    if ((*(v11 + 784))(a1))
    {
      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1C0();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v7 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (result)
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      v9 = "could not deserialize property list";
      v10 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1E8();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v7 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (result)
    {
      *buf = 68289282;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = a2;
      v9 = "Invalid fileURL";
      v10 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v17 = v7;
      v18 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v9, v10, buf, v18);
      return 0;
    }
  }

  return result;
}

void sub_1004FA1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1C0();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = "";
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x1004FA158);
  }

  _Unwind_Resume(a1);
}

id sub_1004FA34C(uint64_t a1, id *a2, void *a3, int a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:a2] isDirectory:0];
  if (v8)
  {
    v9 = 536870913;
    if (a4)
    {
      v9 = 1;
    }

    if (a4 == 1)
    {
      v10 = 1073741825;
    }

    else
    {
      v10 = v9;
    }

    v16 = 0;
    v11 = [a3 writeToURL:v8 options:v10 error:&v16];
    if ((v11 & 1) == 0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_ERROR))
      {
        v13 = [objc_msgSend(v16 "description")];
        *buf = 136446466;
        v18 = a2;
        v19 = 2082;
        v20 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018AA224(a2, &v16);
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v18 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v11 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018AA354(a2);
      v11 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

id sub_1004FA558(uint64_t a1, id *a2)
{
  cf = 0;
  v3 = (*(*a1 + 768))(a1, &cf);
  if (v3)
  {
    v4 = sub_1004FA34C(v3, a2, cf, 2);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v4 = 0;
    if (sub_10000A100(121, 0))
    {
      sub_1018AA448(a2);
      v4 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

id sub_1004FA694(uint64_t a1, id *a2, int a3)
{
  cf = 0;
  sub_10000FF38(v12, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  v7 = (*(*a1 + 776))(a1, &cf);
  if (v7)
  {
    v8 = sub_1004FA34C(v7, a2, cf, a3);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018AA1C0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018AA1C0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v8 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_10001A420(v12);
  return v8;
}

void sub_1004FA8B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}

uint64_t sub_1004FA978(CFMutableDictionaryRef *a1)
{
  CFDictionaryRemoveAllValues(a1[1]);
  v2 = *(*a1 + 106);

  return v2(a1);
}

void sub_1004FA9DC(uint64_t a1, const __CFString *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    cf = 0;
    if (!(*(*a1 + 912))(a1, a2, &cf))
    {
      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(cf) > a3)
      {
        CFArrayRemoveValueAtIndex(cf, a3);
        (*(*a1 + 848))(a1);
LABEL_38:
        CFRelease(cf);
        return;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v18 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v19 = SBYTE3(v34);
        v20 = *__p;
        Count = CFArrayGetCount(cf);
        v22 = __p;
        *buf = 136446722;
        if (v19 < 0)
        {
          v22 = v20;
        }

        v36 = v22;
        v37 = 1026;
        v38 = a3;
        v39 = 2050;
        v40 = Count;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in array of size %{public}ld", buf, 0x1Cu);
        if (SBYTE3(v34) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_38;
      }

      sub_1018AA53C(buf);
      sub_1000238CC(a2, v27);
      v23 = v28;
      v24 = v27[0];
      v25 = CFArrayGetCount(cf);
      v26 = v27;
      *__p = 136446722;
      if (v23 < 0)
      {
        v26 = v24;
      }

      *&__p[4] = v26;
      v31 = 1026;
      v32 = a3;
      v33 = 2050;
      v34 = v25;
      v17 = _os_log_send_and_compose_impl();
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    else
    {
      if (!a3)
      {
        (*(*a1 + 888))(a1, a2);
        goto LABEL_38;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a2, __p);
        v9 = SBYTE3(v34);
        v10 = *__p;
        v11 = CFGetTypeID(cf);
        v12 = __p;
        *buf = 136446722;
        if (v9 < 0)
        {
          v12 = v10;
        }

        v36 = v12;
        v37 = 1026;
        v38 = a3;
        v39 = 2050;
        v40 = v11;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "key %{public}s does not have element %{public}d in non-array type %{public}lu", buf, 0x1Cu);
        if (SBYTE3(v34) < 0)
        {
          operator delete(*__p);
        }
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_38;
      }

      sub_1018AA53C(buf);
      sub_1000238CC(a2, v27);
      v13 = v28;
      v14 = v27[0];
      v15 = CFGetTypeID(cf);
      v16 = v27;
      *__p = 136446722;
      if (v13 < 0)
      {
        v16 = v14;
      }

      *&__p[4] = v16;
      v31 = 1026;
      v32 = a3;
      v33 = 2050;
      v34 = v15;
      v17 = _os_log_send_and_compose_impl();
      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual void CLNameValuePair::clearInternal(const CFStringRef, int)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }

    goto LABEL_38;
  }

  v7 = *(*a1 + 888);

  v7();
}

void sub_1004FAEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004FAF3C(CFMutableDictionaryRef *a1, const void *a2)
{
  CFDictionaryRemoveValue(a1[1], a2);
  v3 = *(*a1 + 106);

  return v3(a1);
}

void sub_1004FB0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004FB0D0(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithUTF8String:a2];
  v4 = *(*a1 + 920);

  return v4(a1, v3);
}

uint64_t sub_1004FB178(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1003045C8(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FB1EC(uint64_t a1, const char *a2, _WORD *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FB260(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FB260(uint64_t a1, uint64_t a2, _WORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_100005EEC(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = (*(*a1 + 840))(a1);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint16_t &, int) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FB4EC(uint64_t a1, const char *a2, _WORD *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FB560(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FB560(uint64_t a1, uint64_t a2, _WORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1004FC2CC(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = (*(*a1 + 840))(a1);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, short &, int) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FB7DC(uint64_t a1, const char *a2, _DWORD *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FB850(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FB850(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  *buf = 0;
  v6 = sub_1002E198C(cf, buf);
  if (v6)
  {
    *a3 = *buf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      *&buf[4] = v8;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = (*(*a1 + 840))(a1);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, uint32_t &, int) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FBADC(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_10016B550(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FBB50(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1004FBBC4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1004FBBC4(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1004FC3E0(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = (*(*a1 + 840))(a1);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = a2;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, long &, int) const", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_1004FBE40(uint64_t a1, const char *a2, float *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v9 = 0.0;
  v6 = sub_100023B78(a1, v5, &v9);
  if (v6)
  {
    v7 = v9;
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

float sub_1004FBECC(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = 0.0;
  if (sub_100023B78(a1, a2, &v5))
  {
    result = v5;
    *a3 = result;
  }

  return result;
}

uint64_t sub_1004FBF14(uint64_t a1, const char *a2, CFTypeRef *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_10006EB64(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1004FBF88(uint64_t a1, const char *a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v10 = sub_1004FC008(a1, v9, a3, a4, a5);
  CFRelease(v9);
  return v10;
}

BOOL sub_1004FC008(uint64_t a1, uint64_t a2, const UInt8 **a3, _DWORD *a4, uint64_t a5)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf, a5))
  {
    return 0;
  }

  v9 = sub_1004FCA9C(cf, a3, a4);
  if (!v9)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v11 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v21 = v11;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v13 = (*(*a1 + 840))(a1);
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = a2;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, const char *&, unsigned int &, int) const", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  CFRelease(cf);
  return v9;
}

uint64_t sub_1004FC28C(const void *a1, _WORD *a2)
{
  v4 = 0;
  result = sub_100005EEC(a1, &v4);
  if (result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1004FC2CC(const void *a1, _WORD *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberSInt16Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA580();
    return 0;
  }

  return result;
}

uint64_t sub_1004FC3E0(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    v10 = 0;
    v8 = CFGetTypeID(a1);
    if (v8 != CFBooleanGetTypeID())
    {
      return 0;
    }

    result = sub_1000700DC(a1, &v10);
    if (!result)
    {
      return result;
    }

    *a2 = v10;
    return 1;
  }

  if (CFNumberGetValue(a1, kCFNumberLongType, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "could not get value", v9, 2u);
  }

  v6 = sub_10000A100(121, 0);
  result = 0;
  if (v6)
  {
    sub_1018AA82C();
    return 0;
  }

  return result;
}

BOOL sub_1004FC4F4(uint64_t a1, const __CFString *a2, CFTypeRef *a3)
{
  cf = 0;
  if (!(*(*a1 + 912))(a1, a2, &cf))
  {
    return 0;
  }

  v5 = CFGetTypeID(cf);
  v6 = v5 == CFArrayGetTypeID();
  v7 = v6;
  if (v6)
  {
    *a3 = cf;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v9 = v23 >= 0 ? __p : *__p;
      v10 = CFGetTypeID(cf);
      TypeID = CFArrayGetTypeID();
      *buf = 136446722;
      v26 = v9;
      v27 = 2050;
      v28 = v10;
      v29 = 2050;
      v30 = TypeID;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "type IDs do not match for key %{public}s - %{public}lu vs %{public}lu", buf, 0x20u);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AA53C(buf);
      v13 = v17;
      sub_1000238CC(a2, v17);
      if (v18 < 0)
      {
        v13 = v17[0];
      }

      v14 = CFGetTypeID(cf);
      v15 = CFArrayGetTypeID();
      *__p = 136446722;
      *&__p[4] = v13;
      v21 = 2050;
      v22 = v14;
      v23 = 2050;
      v24 = v15;
      v16 = _os_log_send_and_compose_impl();
      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, CFArrayRef &) const", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  CFAutorelease(cf);
  return v7;
}