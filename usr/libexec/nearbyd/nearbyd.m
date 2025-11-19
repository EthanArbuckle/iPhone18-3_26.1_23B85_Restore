void sub_100002EC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = atomic_load((v7 + 144));
  if (v8)
  {
    if (v5 && v6)
    {
      sub_100002F8C(v7, v5, v6);
    }
  }

  else
  {
    v9 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,notMonitoring", v10, 2u);
    }
  }
}

void sub_100002F8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 112) == 1)
  {
    v7 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#regulatory,regulatory,geo,mcc,processCellInfo,ignoreInAirplaneMode", buf, 2u);
    }
  }

  else
  {
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v8 = sub_1000032FC(a1, v5, &v28);
    if (v8)
    {
      v9 = sub_1000033B8(v8, v6, &v25);
      *buf = &v28;
      v10 = sub_100003FF0(a1 + 32, &v28);
      v11 = *(v10 + 63);
      if (v11 < 0)
      {
        v11 = v10[6];
      }

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        sub_100003C5C(a1, v28, &v25, 0);
      }

      else
      {
        v14 = qword_1009F5620;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v17 = v23;
          sub_100357E68(v28, v23);
          if (v24 < 0)
          {
            v17 = v23[0];
          }

          if (SHIBYTE(v27) < 0)
          {
            if (v26)
            {
              v18 = v25;
            }

            else
            {
              v18 = "__";
            }
          }

          else if (HIBYTE(v27))
          {
            v18 = &v25;
          }

          else
          {
            v18 = "__";
          }

          v29 = &v28;
          v19 = sub_100003FF0(a1 + 32, &v28);
          v20 = v19 + 5;
          if (*(v19 + 63) < 0)
          {
            v20 = *v20;
          }

          *buf = 136315906;
          *&buf[4] = v17;
          v31 = 1024;
          v32 = 0;
          v33 = 2080;
          v34 = v18;
          v35 = 2080;
          v36 = v20;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#regulatory,regulatory,geo,mcc,onCellMonitorUpdate,slot:%s,mccValid:%d,mcc:%s,fCurrentIsoFromMcc:%s,downgradingCurrentToLastKnown", buf, 0x26u);
          if (v24 < 0)
          {
            operator delete(v23[0]);
          }
        }

        v15 = v28;
        *buf = &v28;
        v16 = sub_100003FF0(a1 + 32, &v28);
        if (*(v16 + 63) < 0)
        {
          sub_1000056BC(__p, v16[5], v16[6]);
        }

        else
        {
          *__p = *(v16 + 5);
          v22 = v16[7];
        }

        sub_1000040C8(a1, v15, __p, 1);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v13 = qword_1009F5620;
      if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_ERROR))
      {
        sub_1004C25EC(v13);
      }
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v25);
    }
  }
}

void sub_100003290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000032FC(uint64_t a1, void *a2, _BOOL4 *a3)
{
  v5 = a2;
  if (!sub_100003AA8(*(a1 + 116)))
  {
    if (sub_10041C77C(*(a1 + 116)))
    {
      v7 = [v5 slotID];
      v6 = 0;
      if (v7 == 1)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  if ([v5 slotID] != 1 && objc_msgSend(v5, "slotID") != 2)
  {
    goto LABEL_8;
  }

  v6 = [v5 slotID] != 1;
LABEL_7:
  *a3 = v6;
  v8 = 1;
LABEL_9:

  return v8;
}

uint64_t sub_1000033B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = v4;
  __val = -1;
  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
    if (!v4)
    {
LABEL_71:
      v47 = 0;
      goto LABEL_72;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
    if (!v4)
    {
      goto LABEL_71;
    }
  }

  v6 = [v4 legacyInfo];

  if (!v6)
  {
    goto LABEL_71;
  }

  v7 = [v5 legacyInfo];

  Count = CFArrayGetCount(v7);
  if (Count < 1)
  {
    goto LABEL_71;
  }

  v9 = 0;
  key = kCTCellMonitorCellType;
  cf2 = kCTCellMonitorCellTypeServing;
  v56 = kCTCellMonitorMCC;
  v55 = kCTCellMonitorCellRadioAccessTechnology;
  v54 = kCTCellMonitorRadioAccessTechnologyCDMA1x;
  v50 = kCTCellMonitorRadioAccessTechnologyCDMAEVDO;
  v49 = kCTCellMonitorRadioAccessTechnologyCDMAHybrid;
  v51 = kCTCellMonitorDerivedMCC;
  v53 = kCTCellMonitorSID;
  v52 = kCTCellMonitorNID;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
    v11 = ValueAtIndex;
    if (!ValueAtIndex || (v12 = CFGetTypeID(ValueAtIndex), v12 != CFDictionaryGetTypeID()))
    {
      v34 = qword_1009F5620;
      if (!os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v35 = v34;
      v36 = "#regulatory,lvalue cellDict is not of type CFDictionary";
LABEL_43:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, &buf, 2u);
      goto LABEL_44;
    }

    Value = CFDictionaryGetValue(v11, key);
    v14 = Value;
    if (!Value || (v15 = CFGetTypeID(Value), v15 != CFStringGetTypeID()))
    {
      v37 = qword_1009F5620;
      if (!os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v35 = v37;
      v36 = "#regulatory,lvalue cellType is not of type CFString";
      goto LABEL_43;
    }

    if (!CFEqual(v14, cf2))
    {
      goto LABEL_44;
    }

    v16 = CFDictionaryGetValue(v11, v56);
    v17 = v16;
    if (!v16 || (v18 = CFGetTypeID(v16), v18 != CFNumberGetTypeID()))
    {
      v19 = qword_1009F5620;
      if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#regulatory,lvalue mccRef is not of type CFNumber", &buf, 2u);
      }

      v17 = 0;
    }

    v20 = CFDictionaryGetValue(v11, v55);
    v21 = v20;
    if (!v20 || (v22 = CFGetTypeID(v20), v22 != CFStringGetTypeID()))
    {
      v38 = qword_1009F5620;
      if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#regulatory,lvalue ratStr is not of type CFString", &buf, 2u);
      }

      if (v17)
      {
        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (!CFEqual(v21, v54) && !CFEqual(v21, v50))
    {
      break;
    }

    v23 = 1;
    if (v17)
    {
      goto LABEL_23;
    }

LABEL_51:
    if (v17)
    {
      goto LABEL_65;
    }

    if (v23 && CFDictionaryContainsKey(v11, v51))
    {
      v39 = CFDictionaryGetValue(v11, v51);
      v40 = v39;
      if (!v39 || (v41 = CFGetTypeID(v39), v41 != CFArrayGetTypeID()))
      {
        v45 = qword_1009F5620;
        if (!os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        v35 = v45;
        v36 = "#regulatory,lvalue derivedMccList is not of type CFArray";
        goto LABEL_43;
      }

      if (CFArrayGetCount(v40) >= 1)
      {
        v42 = CFArrayGetValueAtIndex(v40, 0);
        v17 = v42;
        if (v42)
        {
          v43 = CFGetTypeID(v42);
          if (v43 == CFNumberGetTypeID())
          {
            goto LABEL_65;
          }
        }

        v44 = qword_1009F5620;
        if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v35 = v44;
          v36 = "#regulatory,lvalue mccRef is not of type CFNumber";
          goto LABEL_43;
        }
      }
    }

LABEL_44:
    if (Count == ++v9)
    {
      goto LABEL_71;
    }
  }

  v23 = CFEqual(v21, v49) != 0;
  if (!v17)
  {
    goto LABEL_51;
  }

LABEL_23:
  if (!v23)
  {
    goto LABEL_51;
  }

  v59 = -1;
  if (!CFDictionaryContainsKey(v11, v53) || !CFDictionaryContainsKey(v11, v52))
  {
    goto LABEL_65;
  }

  v24 = CFDictionaryGetValue(v11, v53);
  v25 = v24;
  if (!v24 || (v26 = CFGetTypeID(v24), v26 != CFNumberGetTypeID()))
  {
    v27 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#regulatory,lvalue sid is not of type CFNumber", &buf, 2u);
    }

    v25 = 0;
  }

  v28 = CFDictionaryGetValue(v11, v52);
  v29 = v28;
  if (v28)
  {
    v30 = CFGetTypeID(v28);
    if (v30 == CFNumberGetTypeID())
    {
      if (!v25)
      {
        goto LABEL_65;
      }

      v31 = CFNumberGetValue(v25, kCFNumberIntType, &v59 + 4);
      v32 = CFNumberGetValue(v29, kCFNumberIntType, &v59);
      if (!v31 || !v32 || v59)
      {
        goto LABEL_65;
      }

      v33 = qword_1009F5620;
      if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 138412802;
        *(buf.__r_.__value_.__r.__words + 4) = v17;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = HIDWORD(v59);
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v59;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "#regulatory,regulatory,geo,mcc,cdmaRatWithInvalidContents,mcc:%@,sid:%d,nid:%d", &buf, 0x18u);
      }

      goto LABEL_44;
    }
  }

  v46 = qword_1009F5620;
  if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#regulatory,lvalue nid is not of type CFNumber", &buf, 2u);
  }

LABEL_65:
  if (!CFNumberGetValue(v17, kCFNumberIntType, &__val) || !__val)
  {
    std::string::assign(a3, "000");
    goto LABEL_71;
  }

  std::to_string(&buf, __val);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = buf;
  v47 = 1;
LABEL_72:

  return v47;
}

void *sub_100003AE0()
{
  if ((atomic_load_explicit(&qword_1009EB958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009EB958))
  {
    sub_100459A9C(&unk_1009EB878);
    __cxa_atexit(sub_10022E088, &unk_1009EB878, &_mh_execute_header);
    __cxa_guard_release(&qword_1009EB958);
  }

  return &unk_1009EB878;
}

uint64_t *sub_100003B7C(uint64_t a1, int *a2)
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

void sub_100003C5C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v13 = a2;
  if (*(a1 + 112) == 1)
  {
    v4 = qword_1009F5620;
    if (os_log_type_enabled(qword_1009F5620, OS_LOG_TYPE_DEBUG))
    {
      sub_1004C2718(v4);
    }
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    if (v7)
    {
      sub_100003DCC(a1, a3, &v11);
      __str = v11;
    }

    v11.__r_.__value_.__r.__words[0] = &v13;
    v8 = sub_100003FF0(a1 + 32, &v13);
    std::string::operator=((v8 + 5), &__str);
    v9 = v13;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __str;
    }

    sub_1000040C8(a1, v9, &__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_100003D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003DCC(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003EDC(a1 + 88, a2);
  if (a1 + 96 == v6)
  {
    sub_100358D34(a1, a2, a3);
    sub_100359450(v10, a2, a3);
    sub_1003598C8(a1 + 88, v10);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  else if (*(v6 + 79) < 0)
  {
    v8 = *(v6 + 56);
    v9 = *(v6 + 64);

    sub_1000056BC(a3, v8, v9);
  }

  else
  {
    v7 = *(v6 + 56);
    *(a3 + 16) = *(v6 + 72);
    *a3 = v7;
  }
}

void sub_100003EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10022A868(&a9);
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100003EDC(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_100003FF0(uint64_t a1, int *a2)
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

uint64_t sub_1000040C8(uint64_t a1, int a2, const char *a3, int a4)
{
  v31 = a2;
  sub_100003AE0();
  result = sub_1000044C8();
  if (*(a1 + 80))
  {
    v8 = result;
    if (result)
    {
      a4 = 0;
      if (a3[23] < 0)
      {
        **a3 = 0;
        *(a3 + 1) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }
    }

    v9 = sub_100005288();
    *buf = &v31;
    v10 = v9 - *(sub_100003B7C(a1 + 120, &v31) + 10);
    if (v10 > 3600.0)
    {
      goto LABEL_21;
    }

    v11 = v31;
    *buf = &v31;
    if (*(sub_100003B7C(a1 + 120, &v31) + 40) != 1)
    {
      goto LABEL_21;
    }

    *buf = &v31;
    v12 = sub_100003B7C(a1 + 120, &v31);
    v13 = *(v12 + 71);
    if (v13 >= 0)
    {
      v14 = *(v12 + 71);
    }

    else
    {
      v14 = v12[7];
    }

    v15 = *(a3 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a3 + 1);
    }

    if (v14 != v15)
    {
      goto LABEL_21;
    }

    v19 = v12[6];
    v17 = v12 + 6;
    v18 = v19;
    if (v13 < 0)
    {
      v17 = v18;
    }

    v20 = *a3;
    v21 = v16 >= 0 ? a3 : *a3;
    if (memcmp(v17, v21, v14) || (*buf = &v31, result = sub_100003B7C(a1 + 120, &v31), *(result + 72) != a4 || (v11 & 0xFFFFFFFE) == 2))
    {
LABEL_21:
      v22 = qword_1009F5620;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_100357E68(v31, v29);
        v25 = v30 >= 0 ? v29 : v29[0];
        if (a3[23] < 0)
        {
          v26 = *(a3 + 1) ? *a3 : "__";
        }

        else
        {
          v26 = a3[23] ? a3 : "__";
        }

        *buf = 136316162;
        *&buf[4] = v25;
        v33 = 2080;
        v34 = v26;
        v35 = 1024;
        v36 = a4;
        v37 = 1024;
        v38 = v8;
        v39 = 1024;
        v40 = v10 > 3600.0;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "#regulatory,regulatory,geo,mcc,bubbledUp,slot:%s,mcc:%s,isLastKnown:%d,simulateOOS:%d,isMccUpdateOld:%d", buf, 0x28u);
        if (v30 < 0)
        {
          operator delete(v29[0]);
        }
      }

      v23 = v31;
      if (a3[23] < 0)
      {
        sub_1000056BC(__p, *a3, *(a3 + 1));
      }

      else
      {
        *__p = *a3;
        v28 = *(a3 + 2);
      }

      sub_100359168(a1 + 56, v23, __p, a4);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      *buf = &v31;
      *(sub_100003B7C(a1 + 120, &v31) + 40) = 1;
      *buf = &v31;
      v24 = sub_100003B7C(a1 + 120, &v31);
      std::string::operator=(v24 + 2, a3);
      *buf = &v31;
      *(sub_100003B7C(a1 + 120, &v31) + 72) = a4;
      *buf = &v31;
      result = sub_100003B7C(a1 + 120, &v31);
      *(result + 80) = v9;
    }
  }

  return result;
}

uint64_t sub_1000044C8()
{
  v2 = 0;
  v0 = sub_1000052B0(off_1009EC490[0], &v2);
  return v0 & v2;
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  sub_10005E1F0();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_10049D548(v1);
    }
  }

  v2 = +[NSFileManager defaultManager];
  v29 = NSFilePosixPermissions;
  v30 = &off_1009C3DB8;
  v3 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v4 = NSTemporaryDirectory();
  v22 = 0;
  [v2 setAttributes:v3 ofItemAtPath:v4 error:&v22];
  v5 = v22;

  if (v5)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = [v5 description];
      v18 = v17;
      v19 = [v17 UTF8String];
      *buf = 136315138;
      v24 = v19;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error while trying to set permissions on temporary directory: %s", buf, 0xCu);
    }
  }

  v7 = objc_autoreleasePoolPush();
  v8 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting daemon - ranging service", buf, 2u);
  }

  if (+[NIPlatformInfo isInternalBuild])
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 BOOLForKey:@"ForceCrash_Startup"];

    if (v10)
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_10049D58C(v20);
      }

      v21 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/nearbyd.mm";
        v25 = 1024;
        v26 = 48;
        v27 = 2080;
        v28 = "main";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s:%d: assertion failure in %s", buf, 0x1Cu);
      }

      abort();
    }
  }

  v11 = objc_alloc_init(PRDaemon);
  [(PRDaemon *)v11 run];
  objc_autoreleasePoolPop(v7);
  do
  {
    v12 = objc_autoreleasePoolPush();
    v13 = +[NSRunLoop currentRunLoop];
    v14 = +[NSDate distantFuture];
    v15 = [v13 runMode:NSDefaultRunLoopMode beforeDate:v14];

    objc_autoreleasePoolPop(v12);
  }

  while ((v15 & 1) != 0);

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10000498C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didDiscoverDevice:v5];
  }
}

_BYTE *sub_100004A08(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t *sub_100004AC0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = qword_1009F3418;
  if (!qword_1009F3418)
  {
LABEL_7:

    return sub_100004A08(a2, "");
  }

  v4 = *a1;
  while (1)
  {
    v5 = *(v3 + 32);
    if (v4 >= v5)
    {
      break;
    }

LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (v5 < v4)
  {
    v3 += 8;
    goto LABEL_6;
  }

  result = sub_10029E50C(&unk_1009F3410, a1);
  if (*(result + 23) < 0)
  {
    v8 = *result;
    v9 = result[1];

    return sub_1000056BC(a2, v8, v9);
  }

  else
  {
    v7 = *result;
    *(a2 + 16) = result[2];
    *a2 = v7;
  }

  return result;
}

void sub_100004B98(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7)
{
  v19 = a4;
  v20 = a3;
  v17 = a6;
  v18 = a5;
  v10 = sub_100003AE0();
  v11 = sub_100004C74(v10, &v20, &v19, &v18, &v17);
  v13 = v19;
  v12 = v20;
  v15 = v17;
  v14 = v18;
  *(a1 + 48) = v20;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v23 = v13;
  v24 = v12;
  v21 = a7;
  v22 = v15;
  v16 = *(a1 + 184);
  if (!v16)
  {
    sub_100037B10();
  }

  (*(*v16 + 48))(v16, &v24, &v23, &v22, &v21);
  sub_100005038(a1, a2 & ~v11, v20, v19, v17, a7);
}

uint64_t sub_100004C74(uint64_t a1, double *a2, double *a3, void *a4, double *a5)
{
  v14 = 0;
  if (sub_1000052B0(off_1009EC460[0], &v14) && v14 == 1)
  {
    v9 = sub_10045C0F4(off_1009EC468[0], a2);
    v10 = sub_10045C0F4(off_1009EC470[0], a3);
    v11 = sub_10045C0F4(off_1009EC478[0], a5);
    if (v9 && v10)
    {
      if (os_log_type_enabled(qword_1009F9200, OS_LOG_TYPE_DEBUG))
      {
        sub_1004D0458(a2, a3);
      }

      *a4 = 0;
    }

    if (!v11)
    {
      *a5 = 0.0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v10 & v9;
}

uint64_t sub_100004D90(uint64_t a1, uint64_t a2)
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

void sub_100004F60(double *a1, double a2, double a3, double a4, double a5)
{
  v9 = CFAbsoluteTimeGetCurrent() - a5;
  if (v9 < a1[2])
  {
    a1[67] = a2;
    a1[68] = a3;
    a1[69] = a4;
    a1[70] = v9;
    sub_100004D90((a1 + 35), 2);
    *(a1 + 67) = 0u;
    *(a1 + 69) = 0u;
  }
}

uint64_t sub_100004FDC(uint64_t a1, int a2)
{
  if (a2 == 7)
  {
    result = sub_1002D094C(a1);
    if (result)
    {
      if (*(a1 + 440))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    if (!a2)
    {
      sub_10003229C(a1 + 448, 1);
    }

    return 0;
  }

  return result;
}

void sub_100005038(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v21 = a4;
  v22 = a3;
  v12 = sub_100005288();
  if (*(a1 + 32) != 1)
  {
    goto LABEL_4;
  }

  v13 = *(a1 + 40);
  if (v12 <= v13)
  {
    sub_1004BFBD0();
  }

  if (v12 - v13 >= 600.0)
  {
LABEL_4:
    v14 = qword_1009F5380;
    if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134546945;
      v24 = a3;
      v25 = 2053;
      v26 = a4;
      v27 = 2053;
      v28 = a5;
      v29 = 1024;
      v30 = a2;
      v31 = 2048;
      v32 = a6;
      v33 = 2048;
      v34 = 0x4082C00000000000;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "regulatory,geo,loc,checkRegulatoryIso,lat,%{sensitive}.6f,lon,%{sensitive}.6f,unc,%{sensitive}.2f,isLastKnownLocation,%d,ts,%.2f,checkInterval,%.2f", buf, 0x3Au);
    }

    *(a1 + 40) = v12;
    *(a1 + 32) = 1;
    if (sub_100005424(a1 + 224))
    {
      v15 = sub_100005760(a1 + 224, &v22, &v21);
    }

    else
    {
      v15 = 1;
    }

    sub_1000059FC(a1);
    v16 = [[GEOLocation alloc] initWithGEOCoordinate:{v22, v21}];
    [v16 setHorizontalAccuracy:a5];
    v17 = *a1;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005F98;
    v18[3] = &unk_1009A53A0;
    v18[4] = a1;
    v19 = v15;
    *&v18[5] = v22;
    *&v18[6] = v21;
    v20 = a2;
    *&v18[7] = a6;
    [GEOGeographicMetadataRequester fetchPossibleTerritoriesForLocation:v16 responseQueue:v17 responseBlock:v18];
  }
}

double sub_100005288()
{
  v0 = mach_continuous_time();

  return sub_100005348(v0);
}

BOOL sub_1000052B0(uint64_t a1, _BYTE *a2)
{
  v3 = [NSString stringWithUTF8String:a1];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = v4;
  if (v4)
  {
    *a2 = [v4 BOOLForKey:v3];
  }

  return v5 != 0;
}

double sub_100005348(unint64_t a1)
{
  v2 = *&qword_1009ECC10;
  if (*&qword_1009ECC10 == 0.0)
  {
    if (mach_timebase_info(&info))
    {
      sub_10049CD78();
    }

    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_1009ECC10 = v2;
  }

  return v2 * a1;
}

BOOL sub_100005424(uint64_t a1)
{
  sub_1000054A8();
  sub_100005544(off_1009EBAD0, &v4);
  v2 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    operator delete(*v2);
  }

  *v2 = *&v4.st_dev;
  *(a1 + 80) = *&v4.st_uid;
  if (*(a1 + 87) < 0)
  {
    v2 = *v2;
  }

  return stat(v2, &v4) == 0;
}

void *sub_1000054A8()
{
  if ((atomic_load_explicit(&qword_1009E99C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E99C0))
  {
    sub_100460184(&unk_1009E96D0);
    __cxa_atexit(sub_1000196AC, &unk_1009E96D0, &_mh_execute_header);
    __cxa_guard_release(&qword_1009E99C0);
  }

  return &unk_1009E96D0;
}

void sub_100005544(char *a1@<X1>, std::string *a2@<X8>)
{
  sub_10000561C(&v9);
  sub_100004A08(__p, a1);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v9, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1000055E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000561C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1009F9318, memory_order_acquire) & 1) == 0)
  {
    sub_1004D06E8();
  }

  if (qword_1009F9310 != -1)
  {
    sub_100005410();
  }

  if (byte_1009F9337 < 0)
  {
    v2 = xmmword_1009F9320;

    sub_1000056BC(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1009F9320;
    *(a1 + 16) = unk_1009F9330;
  }
}

void *sub_1000056BC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100013AEC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_100005760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A40EC(a2, a3);
  }

  v6 = vcvtmd_s64_f64((*a2 + 90.0) * 10.0) + (floor(*a3 * 10.0) * 100000.0);
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A4164(a1);
  }

  if (*a1 == 1 && v6 == *(a1 + 4))
  {
    v7 = *(a1 + 8);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A43DC();
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8 == a1 + 16)
    {
LABEL_14:
      *a1 = 0;
      *(a1 + 4) = 0;
      *(a1 + 8) = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A42B0(a2, a3);
      }

      v7 = sub_1001B3A0C(a1, *a2, *a3);
      if (v7)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A4328();
        }

        operator new();
      }

      *a1 = 1;
      *(a1 + 4) = v6;
      *(a1 + 8) = 0;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A4364();
      }
    }

    else
    {
      while (1)
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          sub_1004A41F8(&v11, v12, v9);
        }

        if (v6 == *(v8 + 16))
        {
          break;
        }

        v8 = *(v8 + 8);
        if (v8 == a1 + 16)
        {
          goto LABEL_14;
        }
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A4238();
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A4274();
      }

      return 1;
    }
  }

  return v7;
}

void sub_1000059FC(uint64_t a1)
{
  v1 = *(a1 + 400);
  if (v1 == 0xFFFF)
  {
    sub_1004BFC9C();
  }

  *(a1 + 400) = v1 + 1;
  v3 = qword_1009F5380;
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 400);
    __p[0] = 67109120;
    __p[1] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "regulatory,geo,loc,checkRegulatoryIso,refCountForAcquiringAssertion,%d", __p, 8u);
  }

  if (*(a1 + 400) == 1)
  {
    v5 = qword_1009F5380;
    if (!*(a1 + 392))
    {
      if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "regulatory,geo,loc,checkRegulatoryIso,acquireAssertion", __p, 2u);
      }

      operator new();
    }

    sub_1004BFBFC(qword_1009F5380);
  }
}

void sub_100005B84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_100005BBC(void *__dst, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
    __dst[2] = *(a2 + 16);
    *__dst = v11;
  }

  *(__dst + 6) = 0;
  __dst[4] = 0;
  if (v9 && (sub_10046F7A4(__dst, a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    sub_100428D00("Unable to create a power assertion", a2, a3, a4, a5, a6, a7, a8, v27);
  }

  if (v8 && (sub_100005C84(__dst, a2, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    sub_100006464(__dst, v12, v13, v14, v15, v16, v17, v18);
    sub_100428D00("Unable to create an OS transaction", v19, v20, v21, v22, v23, v24, v25, v27);
  }

  return __dst;
}

void sub_100005C64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100005C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 23);
  if (*(a1 + 32))
  {
    if (v9 < 0)
    {
      v8 = *a1;
    }

    sub_100005D28("os transaction ID already created for %s", a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }

  if (v9 < 0)
  {
    v10 = *a1;
  }

  v11 = os_transaction_create();
  *(v8 + 32) = v11;
  v19 = *(v8 + 23);
  if (v11)
  {
    if (v19 < 0)
    {
      v8 = *v8;
    }

    sub_100005D28("Successfully created os transaction for %s", v12, v13, v14, v15, v16, v17, v18, v8);
    return 1;
  }

  if (v19 < 0)
  {
    v8 = *v8;
  }

  sub_100428B48("Failed to create os transaction for %s", v12, v13, v14, v15, v16, v17, v18, v8);
  return 0;
}

void sub_100005D28(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v10 = sub_100005E0C();
  sub_100005E44(v10);
  sub_100004A08(&v15, a1);
  v11 = std::string::append(&v15, "\n");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v17 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v13 = sub_100005F14();
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  sub_100005EB0(v13, v14, v18);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100005DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100005E0C()
{
  if ((atomic_load_explicit(&qword_1009EC3A0, memory_order_acquire) & 1) == 0)
  {
    sub_1004CF710();
  }

  return &qword_1009EC358;
}

void sub_100005E44(uint64_t *a1)
{
  std::mutex::lock((a1 + 1));
  v2 = *a1;
  os_log_with_args();

  std::mutex::unlock((a1 + 1));
}

void sub_100005EB0(std::mutex *a1, const char *a2, va_list a3)
{
  std::mutex::lock(a1);
  vprintf(a2, a3);
  fflush(__stdoutp);

  std::mutex::unlock(a1);
}

uint64_t *sub_100005F14()
{
  if ((atomic_load_explicit(&qword_1009EC3E8, memory_order_acquire) & 1) == 0)
  {
    sub_1004CF7BC();
  }

  return &qword_1009EC3A8;
}

uint64_t sub_100005F4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10000650C(result, a2, a3, a4, a5, a6, a7, a8);

    operator delete();
  }

  return result;
}

void sub_100005F98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  sub_1000062EC(v7);
  v8 = qword_1009F5380;
  if (v6)
  {
    if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_ERROR))
    {
      sub_1004BFD30(v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
    {
      sub_1004BFDA8();
    }

    *(v25 + 24) = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100006584;
    v19[3] = &unk_1009A5380;
    v19[4] = &v24;
    v19[5] = &v20;
    [v5 enumerateObjectsUsingBlock:v19];
  }

  v9 = qword_1009F5380;
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(v21 + 24);
    v13 = *(a1 + 64);
    v14 = *(v25 + 24);
    *buf = 67175425;
    *v29 = v12;
    *&v29[4] = 1025;
    *&v29[6] = v13;
    LOWORD(v30) = 1025;
    *(&v30 + 2) = v6 == 0;
    HIWORD(v30) = 1025;
    *v31 = v14;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "regulatory,geo,loc,checkRegulatoryIso,tileMapCoversRegion,%{private}d,tileMapUnrestricted,%{private}d,geoServicesAvailable,%{private}d,geoServicesUnrestricted,%{private}d", buf, 0x1Au);
  }

  memset(&__str, 0, sizeof(__str));
  if (*(v21 + 24) == 1 && (*(a1 + 64) & 1) != 0 || !v6 && (v25[3] & 1) != 0)
  {
    v10 = off_1009EC428;
  }

  else
  {
    v10 = off_1009EC420;
  }

  std::string::assign(&__str, *v10);
  std::string::operator=((v7 + 8), &__str);
  if (*(v7 + 120))
  {
    v11 = qword_1009F5380;
    if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_DEBUG))
    {
      v15 = v7 + 8;
      if (*(v7 + 31) < 0)
      {
        v15 = *(v7 + 8);
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 136315651;
      *v29 = v15;
      *&v29[8] = 2053;
      v30 = v16;
      *v31 = 2053;
      *&v31[2] = v17;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "regulatory,geo,loc,fOnRegulatoryRegion,%s,ll,%{sensitive}.6f,%{sensitive}.6f", buf, 0x20u);
    }

    sub_10032B128(v7 + 96, v7 + 8, *(a1 + 65), *(a1 + 56));
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void sub_1000062A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_1000062EC(uint64_t a1)
{
  if (!*(a1 + 400))
  {
    sub_1004BFEBC();
  }

  --*(a1 + 400);
  v2 = qword_1009F5380;
  if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 400);
    v11[0] = 67109120;
    v11[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "regulatory,geo,loc,checkRegulatoryIso,refCountForReleasingAssertion,%d", v11, 8u);
  }

  if (!*(a1 + 400))
  {
    v4 = qword_1009F5380;
    if (!*(a1 + 392))
    {
      sub_1004BFE1C(qword_1009F5380);
    }

    if (os_log_type_enabled(qword_1009F5380, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "regulatory,geo,loc,checkRegulatoryIso,releaseAssertion", v11, 2u);
    }

    sub_100005F4C((a1 + 392), 0, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_10000640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_100006464(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_100006510(a1, v10, v11, v12, v13, v14, v15, v16);
  if ((v9 & 1) == 0)
  {
    sub_100428D00("Unable to release a power assertion", v17, v18, v19, v20, v21, v22, v23, v25);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100006464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 24);
  if (!v9)
  {
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    sub_100005D28("power assertion ID is already null for %s", a2, a3, a4, a5, a6, a7, a8, v8);
    return 1;
  }

  v10 = IOPMAssertionRelease(v9);
  v18 = *(v8 + 24);
  v19 = *(v8 + 23);
  if (!v10)
  {
    if (v19 < 0)
    {
      v22 = *v8;
    }

    sub_100005D28("Successfully released powerAssertionId (%u) for %s", v11, v12, v13, v14, v15, v16, v17, *(v8 + 24));
    *(v8 + 24) = 0;
    return 1;
  }

  if (v19 < 0)
  {
    v20 = *v8;
  }

  sub_100428B48("Failed to release powerAssertionId (%u) for %s, return value: 0x%x", v11, v12, v13, v14, v15, v16, v17, v18);
  return 0;
}

uint64_t sub_100006510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 32);
  if (v9)
  {
    os_release(v9);
    *(v8 + 32) = 0;
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    sub_100005D28("Successfully released os transaction for %s", v10, v11, v12, v13, v14, v15, v16, v8);
  }

  else
  {
    if (*(v8 + 23) < 0)
    {
      v8 = *v8;
    }

    sub_100005D28("os transaction ID is already null for %s", a2, a3, a4, a5, a6, a7, a8, v8);
  }

  return 1;
}

void sub_100006584(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = [v5 iso3166CountryCode2];

  if (!v6)
  {
    goto LABEL_27;
  }

  v7 = [v5 iso3166CountryCode2];
  if ([v7 isEqualToString:@"IR"])
  {
  }

  else
  {
    v8 = [v5 iso3166CountryCode2];
    v9 = [v8 isEqualToString:@"KP"];

    if (!v9)
    {
      goto LABEL_6;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_6:
  if ([v5 isCoastalWaters] == 1)
  {
    v10 = [v5 iso3166CountryCode2];
    if ([v10 isEqualToString:@"US"])
    {

LABEL_10:
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
      goto LABEL_27;
    }

    v11 = [v5 iso3166CountryCode2];
    v12 = [v11 isEqualToString:@"KO"];

    if (v12)
    {
      goto LABEL_10;
    }
  }

  v13 = [v5 iso3166CountryCode2];
  sub_100004A08(&v24, [v13 UTF8String]);

  v22 = 0;
  *v20 = 0u;
  v21 = 0u;
  *v19 = 0u;
  v23 = -1;
  v14 = sub_100003AE0();
  if (SHIBYTE(v25) < 0)
  {
    sub_1000056BC(__p, v24, *(&v24 + 1));
  }

  else
  {
    *__p = v24;
    v18 = v25;
  }

  v15 = sub_100459DC8(v14, __p, v19);
  v16 = v15;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if (!v15)
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v22 & 1) == 0 && (v22 & 0x100) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a3 = 1;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (v16)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

LABEL_27:
}

void sub_100006838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    LOWORD(v11) = 0;
    v10 = "onHIDEvent HIDServiceClient is nil";
    goto LABEL_11;
  }

  sub_1004CF5D4();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v6)
  {
    v9 = qword_1009F9820;
    if (!os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    LOWORD(v11) = 0;
    v10 = "onHIDEvent HIDEvent is nil";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, &v11, 2u);
    goto LABEL_12;
  }

  DataValue = IOHIDEventGetDataValue();
  v8 = [v6 integerValueForField:65539];
  v11 = sub_100005348([v6 timestamp]);
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_1000069DC(&__p, DataValue, v8 + DataValue, v8);
  (*(*(a1 + 16) + 16))(*(a1 + 16));
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

LABEL_12:
}

void sub_1000069A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000069DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_100006A34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006A58(uint64_t a1, uint64_t *a2)
{
  v3 = a2 + 1;
  v2 = a2[1];
  v4 = a2 + 2;
  v5 = a2[2] - v2;
  if (v5)
  {
    if (v5 == 155)
    {
      v8 = v2[7];
      v40 = v2[6];
      v41 = v8;
      v42[0] = v2[8];
      *(v42 + 11) = *(v2 + 139);
      v9 = v2[3];
      v36 = v2[2];
      v37 = v9;
      v10 = v2[5];
      v38 = v2[4];
      v39 = v10;
      v11 = v2[1];
      v34 = *v2;
      v35 = v11;
      v12 = qword_1009F2630;
      v13 = v34;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEBUG))
      {
        v17 = *v4 - *v3;
        *buf = 134218496;
        v29 = v17;
        v30 = 2048;
        v31 = 155;
        v32 = 1024;
        v33 = v34;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "HID event size [%lu] (expected [%lu]). Report type %08x", buf, 0x1Cu);
      }

      kdebug_trace();
      if (v13 == 236)
      {
        sub_10025D178(a1, &v34 + 4);
      }

      else
      {
        if (v13 == 240 && BYTE4(v34) == 1)
        {
          v14 = qword_1009F2630;
          if (os_signpost_enabled(qword_1009F2630))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NIAlishaSignpost_GetKeyCompleteEvent_Receive", "", buf, 2u);
          }
        }

        v15 = *a2;
        v16 = *(a1 + 8);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100261D8C;
        v18[3] = &unk_1009A0AC8;
        v18[4] = a1;
        v18[5] = v15;
        v25 = v40;
        v26 = v41;
        v27[0] = v42[0];
        *(v27 + 11) = *(v42 + 11);
        v21 = v36;
        v22 = v37;
        v23 = v38;
        v24 = v39;
        v19 = v34;
        v20 = v35;
        dispatch_async(v16, v18);
      }
    }

    else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1864(v4, v3);
    }
  }
}

double sub_100006CF4(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return -200.0;
  }

  v3 = 0;
  v4 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = -200.0;
  do
  {
    v6 = a2[1];
    if (v6 != *a2)
    {
      v7 = dword_100563960[v4];
      v8 = *a2 + 8;
      do
      {
        if (*(v8 + 8) == v7)
        {
          sub_100009734(&v17, v8);
          v6 = a2[1];
        }

        v8 += 24;
      }

      while (v8 - 8 != v6);
      v3 = v17;
      if (v18 != v17)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        sub_100012F38(&v14, v17, v18, (v18 - v17) >> 3);
        if (v15 == v14)
        {
          v12 = 0.0;
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v9 = 0.0;
          v10 = v14;
          do
          {
            v11 = *v10++;
            v9 = v9 + v11;
          }

          while (v10 != v15);
          v12 = v9 / (v15 - v14);
          if (!v14)
          {
            goto LABEL_14;
          }
        }

        v15 = v14;
        operator delete(v14);
LABEL_14:
        if (v12 > v5)
        {
          v5 = v12;
        }

        v3 = v17;
      }
    }

    v18 = v3;
    ++v4;
  }

  while (v4 != 3);
  if (v3)
  {
    operator delete(v3);
  }

  return v5;
}

void sub_100006E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100006E64(uint64_t a1, int a2)
{
  v92 = a2;
  v3 = sub_100395F74(&qword_1009EC210, &qword_10056E2B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5, v6);
  v8 = &v77 - v7;
  v9 = type metadata accessor for ALBtAdvertisement.BtType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12, v13);
  v101 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16, v17);
  v96 = &v77 - v18;
  v19 = type metadata accessor for ALBtAdvertisement();
  v80 = *(v19 - 8);
  v20 = *(v80 + 64);
  __chkstk_darwin(v19, v21, v22);
  v102 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ALBtNotification();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24, v26, v27);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31, v32);
  v34 = &v77 - v33;
  __chkstk_darwin(v35, v36, v37);
  v41 = &v77 - v38;
  v84 = *(a1 + 16);
  if (v84)
  {
    v79 = OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider_logger;
    v97 = v95 + OBJC_IVAR____TtC19ProximityDaemonCore22AONSenseSampleProvider__callout;
    v43 = *(v39 + 16);
    v42 = v39 + 16;
    v90 = v43;
    v82 = (a1 + ((*(v42 + 64) + 32) & ~*(v42 + 64)));
    v44 = 0;
    v89 = (v42 - 8);
    v104 = (v10 + 48);
    v105 = v80 + 16;
    v100 = (v10 + 32);
    v99 = enum case for ALBtAdvertisement.BtType.type7(_:);
    v98 = (v10 + 104);
    v103 = (v80 + 8);
    v91 = v42;
    v81 = *(v42 + 56);
    *&v40 = 136315650;
    v77 = v40;
    v88 = v29;
    v87 = v34;
    v85 = &v77 - v38;
    v94 = v8;
    v83 = v24;
    v107 = (v10 + 8);
    v43(v41, v82, v24);
    while (1)
    {
      v45 = ALBtNotification.isScreenOn.getter();
      v93 = v44;
      if (v45 != 2)
      {
        v46 = v45;
        v47 = v90;
        v90(v34, v41, v24);
        v47(v29, v41, v24);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        v106 = v48;
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v108[0] = v86;
          *v50 = v77;
          v78 = v49;
          if (v46)
          {
            v51 = 0xE90000000000006ELL;
          }

          else
          {
            v51 = 0xEA00000000006666;
          }

          v52 = sub_100395FBC(0x4F206E6565726353, v51, v108);

          *(v50 + 4) = v52;
          *(v50 + 12) = 2048;
          v53 = *(ALBtNotification.advertisements.getter() + 16);

          v54 = *v89;
          (*v89)(v87, v24);
          *(v50 + 14) = v53;
          *(v50 + 22) = 2080;
          ALBtNotification.advertisements.getter();
          v55 = Array.description.getter();
          v57 = v56;

          v54(v88, v24);
          v58 = sub_100395FBC(v55, v57, v108);

          *(v50 + 24) = v58;
          v59 = v106;
          _os_log_impl(&_mh_execute_header, v106, v78, "#AONSenseSampleProvider #QE_Log - screen state for this notification: %s with Advertisement count: %ld. Advertisements: \n %s", v50, 0x20u);
          swift_arrayDestroy();

          v34 = v87;
          v29 = v88;
        }

        else
        {
          v60 = *v89;
          (*v89)(v34, v24);

          v60(v29, v24);
        }

        v41 = v85;
        v44 = v93;
      }

      v61 = ALBtNotification.advertisements.getter();
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = (*(v80 + 80) + 32) & ~*(v80 + 80);
        v86 = v61;
        v64 = v61 + v63;
        v65 = *(v80 + 72);
        v106 = *(v80 + 16);
        v66 = v96;
        v67 = v102;
        (v106)(v102, v61 + v63, v19);
        while (1)
        {
          ALBtAdvertisement.type.getter();
          if ((*v104)(v8, 1, v9) == 1)
          {
            (*v103)(v67, v19);
            sub_100396F00(v8, &qword_1009EC210, &qword_10056E2B8);
          }

          else
          {
            v68 = v19;
            (*v100)(v66, v8, v9);
            v69 = v101;
            (*v98)(v101, v99, v9);
            sub_100008528();
            v70 = v66;
            v71 = dispatch thunk of static Equatable.== infix(_:_:)();
            v72 = *v107;
            (*v107)(v69, v9);
            if (v71)
            {
              v73 = *v97;
              if (*v97)
              {
                v74 = *(v97 + 8);

                v75 = sub_100007724(v102);
                if (v75)
                {
                  v76 = v75;
                  v73(v75, v92 & 1);
                  sub_1000085A8(v73);
                }

                else
                {
                  sub_1000085A8(v73);
                }

                v8 = v94;
              }

              v66 = v96;
              v72(v96, v9);
              v19 = v68;
              v67 = v102;
              (*v103)();
            }

            else
            {
              v72(v70, v9);
              v19 = v68;
              v67 = v102;
              (*v103)();
              v66 = v70;
            }
          }

          v64 += v65;
          if (!--v62)
          {
            break;
          }

          (v106)(v67, v64, v19);
        }

        v29 = v88;
        v34 = v87;
        v41 = v85;
        v44 = v93;
      }

      else
      {
      }

      ++v44;
      v24 = v83;
      (*v89)(v41, v83);
      if (v44 == v84)
      {
        break;
      }

      v90(v41, &v82[v81 * v44], v24);
    }
  }
}

unint64_t sub_100008528()
{
  result = qword_1009EC218;
  if (!qword_1009EC218)
  {
    type metadata accessor for ALBtAdvertisement.BtType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009EC218);
  }

  return result;
}

uint64_t sub_1000085A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000085C4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = qword_1009F9820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CUPrintXPC();
    v5 = 138477827;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PRDaemon] Got CBDiscovery XPC event: %{private}@", &v5, 0xCu);
  }
}

uint64_t sub_1000086B0(int a1)
{
  if (qword_1009F55F8 != -1)
  {
    sub_1004C20DC();
  }

  if ((a1 & ~byte_1009F5600) != 0)
  {
    return 26;
  }

  else
  {
    return 19;
  }
}

BOOL sub_100008750(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t sub_1000087BC(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_100008750(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_100008750(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_10000884C(void *a1, const void **a2)
{
  if (sub_1000087BC(&unk_1009F37E8, a2) != &unk_1009F37F0)
  {
    v4 = sub_10029E564(&unk_1009F37E8, a2);
    sub_10029F7B4(&v10, v4);
    if (v11[0])
    {
      v5 = *a1;
      v6 = v11;
      v7 = v11[0];
      do
      {
        if (*(v7 + 8) >= v5)
        {
          v6 = v7;
        }

        v7 = v7[*(v7 + 8) < v5];
      }

      while (v7);
      if (v6 != v11 && v5 >= *(v6 + 8))
      {
        v11[3] = a1;
        v8 = sub_10026D1E8(&v10, a1)[5];
        sub_10002074C(&v10, v11[0]);
        return v8;
      }
    }

    sub_10002074C(&v10, v11[0]);
  }

  return 0;
}

void sub_100008CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008CF4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[22] consumeBluetoothSample:v5];
  }
}

void sub_100008D7C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100008DC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unsigned __int16 *sub_100008DE4@<X0>(unsigned __int16 *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

void sub_100008DF4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100008E14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100008E3C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, v13, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_100008E5C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_100008E94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100008EBC(uint64_t result, int a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 1024;
  *(a3 + 14) = a2;
  *(a3 + 18) = 1024;
  return result;
}

char *sub_100008EEC@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

void sub_100008F04(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t *sub_100008F38(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

unsigned int *sub_100008F50@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100008F60(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

void sub_100008F94(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t *sub_100008FC4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void sub_100008FDC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x1Cu);
}

void sub_100008FFC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t sub_10000902C(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::mutex::~mutex, a2, a3);
}

void sub_100009060(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_1000090CC(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100009118(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_100009150(float a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  *a4 = a1;
  *(a4 + 4) = v4;
  *(a4 + 8) = 2080;
  *(a4 + 10) = v6;
}

const char *sub_100009210(int a1)
{
  if (a1)
  {
    return "Finder";
  }

  else
  {
    return "Findee";
  }
}

void sub_10000922C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = 0;
  v42 = *a2;
  LODWORD(v43) = *(a2 + 16);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 576) - *(a1 + 568)) >> 3) < *(a1 + 80);
  sub_100010060(a1 + 568, &v42);
  if (v6)
  {
    v7 = *(a1 + 576);
  }

  else
  {
    v8 = *(a1 + 568);
    v9 = *(a1 + 576);
    v10 = v9 - (v8 + 24);
    if (v9 != v8 + 24)
    {
      memmove(*(a1 + 568), (v8 + 24), v9 - (v8 + 24));
    }

    v7 = v8 + v10;
    *(a1 + 576) = v8 + v10;
  }

  v11 = *(&off_1009EA9B0 + *(a1 + 84));
  v40 = 0;
  v41 = 0;
  __p = 0;
  sub_100012394(&__p, *(a1 + 568), v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - *(a1 + 568)) >> 3));
  *(a1 + 600) = (*(*v11 + 16))(v11, &__p);
  *(a1 + 608) = 1;
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  v12 = *(a1 + 192);
  if (v12 == 1)
  {
    v13 = *(a1 + 592);
    v31 = *a2;
    v32 = *(a2 + 16);
    if (*(a2 + 47) < 0)
    {
      sub_1000056BC(v33, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *v33 = *(a2 + 24);
      v34 = *(a2 + 40);
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    sub_100009A48(&v35, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    v38[0] = *(a2 + 72);
    *(v38 + 13) = *(a2 + 85);
    (*(*v13 + 24))(buf, v13, &v31, 0);
    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }

    if (v51 != 1)
    {
      goto LABEL_52;
    }

    v14 = buf[8];
    if (buf[8] != 1)
    {
      goto LABEL_52;
    }

    *(a1 + 600) = *buf;
    *(a1 + 608) = v14;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 576) - *(a1 + 568)) >> 3);
  v16 = *(a1 + 80);
  if (*(a1 + 636) != 1)
  {
    if (v15 < v16)
    {
      goto LABEL_24;
    }

LABEL_35:
    if ((*(a1 + 608) & 1) == 0)
    {
      sub_1000195BC();
    }

    *(a1 + 632) = sub_1000125AC((a1 + 680), *(a1 + 600), *a2);
    goto LABEL_42;
  }

  if (v15 >= v16)
  {
    goto LABEL_35;
  }

  if (*(a1 + 632))
  {
    goto LABEL_44;
  }

LABEL_24:
  v17 = *(a1 + 96);
  if (v17 == (a1 + 104))
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = *(a1 + 600);
    while (1)
    {
      if (*(a1 + 608))
      {
        v20 = v17[4];
        if (v19 > v20 + 3.0)
        {
          break;
        }
      }

      v21 = *(v17 + 1);
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
          v22 = *(v17 + 2);
          v23 = *v22 == v17;
          v17 = v22;
        }

        while (!v23);
      }

      ++v18;
      v17 = v22;
      if (v22 == (a1 + 104))
      {
        goto LABEL_40;
      }
    }

    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 112);
      *buf = 134218752;
      *&buf[4] = v25;
      v45 = 2048;
      v46 = v19;
      v47 = 2048;
      v48 = v20;
      v49 = 2048;
      v50 = 0x4008000000000000;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#threshold-detector, threshsize:%zu [in early] rssi: %f, rssiBorder: %f, rssiEarlyOffset: %f", buf, 0x2Au);
    }
  }

LABEL_40:
  v26 = (v18 + 1);
  if (*(a1 + 112) < v26)
  {
    *(a1 + 632) = 0;
LABEL_42:
    *(a1 + 636) = 1;
    goto LABEL_44;
  }

  *(a1 + 632) = v26;
  *(a1 + 636) = 1;
  *(a1 + 680) = v26;
LABEL_44:
  *(a1 + 656) = *a2;
  *(a1 + 664) = 1;
  v27 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 576) - *(a1 + 568)) >> 3);
  if ((*(a1 + 676) & 1) == 0)
  {
    *(a1 + 676) = 1;
  }

  *(a1 + 672) = v27;
  if ((v12 & *(a1 + 192)) == 1 && *(a1 + 608) == 1)
  {
    sub_1003B2734(a1, *(a1 + 600));
    *(a1 + 616) = v28;
    *(a1 + 624) = 1;
  }

  if (v15 < v16 && *(a1 + 636) == 1 && !*(a1 + 632))
  {
LABEL_52:
    *a3 = 0;
    *(a3 + 80) = 0;
    return;
  }

  v29 = *(a1 + 648);
  *(a3 + 32) = *(a1 + 632);
  *(a3 + 48) = v29;
  *(a3 + 64) = *(a1 + 664);
  v30 = *(a1 + 616);
  *a3 = *(a1 + 600);
  *(a3 + 16) = v30;
  *(a3 + 80) = 1;
}

void sub_100009734(const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_100019B38();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_100012564(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_100009838(char **a1, size_t a2)
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
      sub_100019B38();
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

void *sub_100009978(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100009A48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_100009AA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100009AC4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_100019B38();
}

uint64_t sub_100009B14(uint64_t a1, int a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *a1 = a7;
  *(a1 + 8) = a8;
  *(a1 + 16) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_1000056BC((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v12;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_100009A48(a1 + 48, *a4, a4[1], a4[1] - *a4);
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  return a1;
}

void sub_100009BA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void *sub_100009BCC(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100009C80(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_10000A25C(*(a1 + 120), v20);
  if (v21 != 1)
  {
    return 0;
  }

  sub_10000A258(v17, v20);
  v19 |= 2u;
  v6 = v18;
  if (!v18)
  {
    operator new();
  }

  *(v18 + 44) |= 2u;
  v7 = *(v6 + 24);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 496) |= 0x20000u;
  v8 = *(v7 + 144);
  if (!v8)
  {
    operator new();
  }

  sub_10000B41C(&__p, *(a3 + 48), *(a3 + 56), *(a3 + 56) - *(a3 + 48));
  v9 = *(v8 + 76);
  *(v8 + 16) = *a3;
  *(v8 + 76) = v9 | 7;
  v10 = *(v8 + 32);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, &__p);
  *(v8 + 76) |= 0x40u;
  v11 = *(v8 + 56);
  if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v11, (a3 + 24));
  v12 = *(v8 + 76);
  *(v8 + 44) = *(a3 + 16);
  *(v8 + 48) = *(a3 + 72);
  *(v8 + 76) = v12 | 0xB0;
  v13 = *(v8 + 64);
  if (v13 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v13, a2);
  v14 = sub_10000A2E0(a1, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_10000A80C(v17);
  if (v21)
  {
    sub_10000A80C(v20);
  }

  return v14;
}

void *sub_100009F6C(void *a1)
{
  *a1 = off_1009970D8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 1));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 4));
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void sub_100009FD0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100009FF8(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(&v8, a2);
  v3 = v10;
  if (v10 == 1)
  {
    *(a1 + 60) |= 1u;
    v4 = *(a1 + 40);
    if (!v4)
    {
      operator new();
    }

    v5 = *(v4 + 52);
    *(v4 + 16) = v8;
    v6 = v9;
    *(v4 + 52) = v5 | 7;
    *(v4 + 32) = v6;
  }

  return v3;
}

BOOL sub_10000A0D4(double *a1, double *a2, double *a3)
{
  times = mach_get_times();
  if (!times)
  {
    if (a1)
    {
      *a1 = v9 / 1000000000.0 + v8 - kCFAbsoluteTimeIntervalSince1970;
    }

    if (a2)
    {
      *a2 = sub_100005348(0);
    }

    if (a3)
    {
      *a3 = sub_100005348(0);
    }
  }

  return times == 0;
}

uint64_t sub_10000A188@<X0>(uint64_t a1@<X8>)
{
  v4 = 0uLL;
  v5 = 0;
  result = sub_10000A184(&v4, &v4 + 8, &v5);
  if (result)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_10000A1F4(uint64_t a1)
{
  *a1 = off_100997028;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

uint64_t sub_10000A25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100009FF4(v6);
  if (sub_100009FF8(v6, a1))
  {
    sub_10000A258(a2, v6);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 64) = v4;
  return sub_10000A80C(v6);
}

uint64_t sub_10000A2E0(uint64_t a1, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 72);
  if (!v4 || (sub_10000B4C8(v4) & 1) == 0)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      wireless_diagnostics::google::protobuf::MessageLite::SerializeAsString(&buf, a2);
      sub_1004BA540(&buf, __p, v8);
    }

    goto LABEL_8;
  }

  v5 = sub_10000B4F0(*(a1 + 72), a2);
  v6 = sub_10000ED40(*(a1 + 72));
  if ((v5 & v6 & 1) == 0)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 72);
      if (*(v11 + 39) < 0)
      {
        sub_1000056BC(__p, *(v11 + 16), *(v11 + 24));
      }

      else
      {
        *__p = *(v11 + 16);
        v14 = *(v11 + 32);
      }

      v12 = __p;
      if (v14 < 0)
      {
        v12 = __p[0];
      }

      LODWORD(buf) = 67109634;
      HIDWORD(buf) = v5;
      v16 = 1024;
      v17 = v6;
      v18 = 2080;
      v19 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "pblogger, logProtobuf: append:%d flush:%d error writing to %s", &buf, 0x18u);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:
  std::mutex::unlock((a1 + 8));
  return v7;
}

void *sub_10000A4C8(void *a1, uint64_t a2)
{
  *a1 = off_1009970D8;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 1));
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 4));
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_10000A570(a1, a2);
  return a1;
}

void sub_10000A53C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((v1 + 32));
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A570(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (v4)
  {
    if (*(a2 + 60))
    {
      *(a1 + 60) |= 1u;
      v5 = *(a1 + 40);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 40);
      if (!v6)
      {
        v6 = *(qword_1009F9F20 + 40);
      }

      sub_10000A6F4(v5, v6);
      v4 = *(a2 + 60);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 60) |= 2u;
      v7 = *(a1 + 48);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 48);
      if (!v8)
      {
        v8 = *(qword_1009F9F20 + 48);
      }

      sub_1000DDB54(v7, v8);
    }
  }

  wireless_diagnostics::google::protobuf::internal::ExtensionSet::MergeFrom((a1 + 8), (a2 + 8));
  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 32), (a2 + 32));
}

uint64_t sub_10000A6F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
  }

  if (*(a2 + 52))
  {
    v7 = *(a2 + 16);
    *(a1 + 52) |= 1u;
    *(a1 + 16) = v7;
    v4 = *(a2 + 52);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v9 = *(a2 + 32);
      *(a1 + 52) |= 4u;
      *(a1 + 32) = v9;
      if ((*(a2 + 52) & 8) == 0)
      {
        return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
      }

      goto LABEL_8;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  *(a1 + 52) |= 2u;
  *(a1 + 24) = v8;
  v4 = *(a2 + 52);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v4 & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 40);
    *(a1 + 52) |= 8u;
    *(a1 + 40) = v5;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_10000A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10000A810(void *result)
{
  if (qword_1009F9F20 != result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[6];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10000A8B0(uint64_t a1)
{
  *a1 = off_100997028;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

uint64_t sub_10000A91C(uint64_t a1)
{
  *a1 = off_10098DFB0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 496) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

void sub_10000A9B8(void *a1)
{
  *a1 = off_1009970D8;
  v2 = (a1 + 1);
  sub_10000A810(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 4));
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::~ExtensionSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

uint64_t sub_10000AA20(uint64_t a1)
{
  *a1 = off_1009931D0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 64) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 72) = 0;
  return a1;
}

void sub_10000AA98(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 64));
  if (v3)
  {
    if (*(a1 + 28) == 1)
    {
      [v3 gravity];
      v5 = v4;
      [v3 gravity];
      v7 = v6;
      [v3 gravity];
      v9 = sub_100013854((a1 + 104), *(a1 + 20), v5 * -9.80665, v7 * -9.80665, v8 * -9.80665);
      if ((v9 & 0x100000000) != 0 && *(a1 + 20) != v9)
      {
        v10 = *(a1 + 24) + 1;
        *(a1 + 20) = v9;
        *(a1 + 24) = v10;
        v11 = qword_1009F9820;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          sub_100004A08(v20, (&off_10099F350)[*(a1 + 20)]);
          v12 = v21;
          v13 = v20[0];
          v14 = *(a1 + 24);
          if (*(a1 + 28))
          {
            v15 = "DeviceMotionGravity";
          }

          else
          {
            v15 = "MotionActivity";
          }

          sub_100004A08(__p, v15);
          v16 = v20;
          if (v12 < 0)
          {
            v16 = v13;
          }

          if (v19 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136315650;
          v23 = v16;
          v24 = 1024;
          v25 = v14;
          v26 = 2080;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#nimd,generated new motion state %s with event id %u, detector type is %s", buf, 0x1Cu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }

          if (v21 < 0)
          {
            operator delete(v20[0]);
          }
        }

        sub_100223390(a1, *(a1 + 24));
      }
    }
  }
}

void sub_10000AC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10000ACDC(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 32);
      if (v9)
      {
        sub_10000AA98(v9, v10);
      }

      sub_10000AD84(v8);
    }
  }
}

void sub_10000AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_10000AD84(v11);

  _Unwind_Resume(a1);
}

void sub_10000AD84(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

double sub_10000ADF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a2[5];
  if (a3[5] != v4)
  {
    sub_1004AD528();
  }

  if (a4[5] != v4)
  {
    sub_1004AD554();
  }

  if (!v4)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = a2[1];
  v7 = a3[1];
  v8 = a4[1];
  v24 = a4[4];
  v25 = a3[4];
  v9 = v24 + 1;
  v10 = v25 + 1;
  v26 = a2[4];
  v27 = a2[5];
  v11 = v26 + 1;
  v12 = v4 - 1;
  v13 = 0.0;
  do
  {
    v28 = v5 + 1;
    v29 = v9;
    if (v4 > v5 + 1)
    {
      v14 = *(*(v6 + (((v26 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v26 + v5) & 0x1FF));
      v15 = *(*(v7 + (((v25 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v25 + v5) & 0x1FF));
      v16 = *(*(v8 + (((v24 + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v24 + v5) & 0x1FF));
      v17 = v12;
      v18 = v11;
      v19 = v10;
      do
      {
        v31[0] = v14;
        v31[1] = v15;
        v20 = *(*(v6 + ((v18 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v18 & 0x1FF));
        v31[2] = v16;
        v21 = *(*(v7 + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF));
        v30[0] = v20;
        v30[1] = v21;
        v30[2] = *(*(v8 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF));
        v22 = sub_10000AFB8(a1, v31, v30);
        if (v22 > v13)
        {
          v13 = v22;
        }

        ++v9;
        ++v19;
        ++v18;
        --v17;
      }

      while (v17);
    }

    v9 = v29 + 1;
    ++v10;
    ++v11;
    --v12;
    v5 = v28;
    v4 = v27;
  }

  while (v28 != v27);
  return v13;
}

long double sub_10000AFB8(uint64_t a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = sqrt(v4 * v4 + v3 * v3 + v5 * v5);
  result = 0.0;
  if (v6 != 0.0)
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    v11 = sqrt(v9 * v9 + v8 * v8 + v10 * v10);
    if (v11 != 0.0)
    {
      v12 = (v4 * v9 + v3 * v8 + v5 * v10) / v6 / v11;
      if (v12 <= 1.0)
      {
        if (v12 >= -1.0)
        {
          return acos(v12) / 3.14159265 * 180.0;
        }

        else
        {
          return 180.0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000B070(wireless_diagnostics::google::protobuf::internal::WireFormat *this, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *(this + 13);
  if (v4)
  {
    v10 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v10;
    a2 += 9;
    v4 = *(this + 13);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v12 = *(this + 4);
      *a2 = 25;
      *(a2 + 1) = v12;
      a2 += 9;
      if ((*(this + 13) & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  *a2 = 17;
  *(a2 + 1) = v11;
  a2 += 9;
  v4 = *(this + 13);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    v5 = *(this + 5);
    *a2 = 32;
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v5, a2 + 1, a3);
  }

LABEL_6:
  v8 = *(this + 1);
  v7 = (this + 8);
  v6 = v8;
  if (!v8 || *v6 == v6[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v7, a2, a3);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10000B1F0(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F9B70 + 16);
    }

    *a2 = 16082;
    v8 = a2 + 2;
    v9 = v7[8];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 2) = v9;
      v10 = (v4 + 3);
    }

    v4 = sub_1000E5F2C(v7, v10, a3);
    v6 = *(this + 11);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F9B70 + 24);
  }

  *v4 = 16090;
  v12 = v11[123];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v12;
    v13 = (v4 + 3);
  }

  v4 = sub_10000CF88(v11, v13, a3, a4);
  if ((*(this + 11) & 4) != 0)
  {
LABEL_17:
    v14 = *(this + 4);
    if (!v14)
    {
      v14 = *(qword_1009F9B70 + 32);
    }

    *v4 = 16106;
    v15 = v14[10];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v15;
      v16 = (v4 + 3);
    }

    v4 = sub_1000CDEF8(v14, v16, a3, a4);
  }

LABEL_23:
  v19 = *(this + 1);
  v18 = (this + 8);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v4, a3);
}

uint64_t sub_10000B358(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = (*a1 + a2);
  v5 = 1;
  do
  {
    v6 = *v4++;
    v5 = (v5 + v6) % 0xFFF1;
    v3 = (v5 + v3) % 0xFFF1;
    --a3;
  }

  while (a3);
  return v5 | (v3 << 16);
}

uint64_t sub_10000B3B4(uint64_t a1)
{
  *a1 = off_1009912C8;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return a1;
}

_BYTE *sub_10000B41C(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100013AEC();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_10000B4F0(uint64_t *a1, wireless_diagnostics::google::protobuf::MessageLite *a2)
{
  if (!(*(**a1 + 40))(*a1) || !(*(*a2 + 40))(a2) || (*(*a2 + 72))(a2) < 1)
  {
    return 0;
  }

  v4 = (*(*a2 + 72))(a2);
  v6 = v4;
  if (v4 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4, v5);
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 + v6;
  v11 = a1[5];
  a1[6] = v11;
  v12 = v10 + 4;
  if (v10 != -4)
  {
    sub_100009838(a1 + 5, v10 + 4);
    v11 = a1[5];
  }

  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::ArrayOutputStream(v20, v11, v12, -1);
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::CodedOutputStream();
  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(v19, v6);
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToCodedStream(a2, v19) & 1) != 0 && (v13 = sub_10000B358(a1 + 5, v7, v6), wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian32(v19, v13), (sub_10000E7A0(a1)))
  {
    v15 = *a1;
    v14 = a1[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = v15;
      v17 = v14;
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = 0;
      sub_10000AD84(v14);
    }

    else
    {
      v16 = *a1;
      v17 = 0;
      v18 = 0;
    }

    v8 = sub_10000ECB0(&v16, a1 + 5);
    if (v17)
    {
      sub_10000AD84(v17);
    }
  }

  else
  {
    v8 = 0;
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(v19);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(v20);
  return v8;
}

void sub_10000B6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  if (a4)
  {
    sub_10000AD84(a4);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  wireless_diagnostics::google::protobuf::io::ArrayOutputStream::~ArrayOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B738(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  if (!*(a1 + 60))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v4 = *(qword_1009F9F20 + 40);
  }

  v5 = sub_10000B838(v4, a2);
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
  if ((*(a1 + 60) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 48);
    if (!v8)
    {
      v8 = *(qword_1009F9F20 + 48);
    }

    v9 = sub_10000CB1C(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v3 += v11 + v12 + 1;
  }

LABEL_18:
  v14 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize((a1 + 8)) + v3;
  v15 = *(a1 + 32);
  if (v15 && *v15 != v15[1])
  {
    v14 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 32), v13) + v14;
  }

  *(a1 + 56) = v14;
  return v14;
}

uint64_t sub_10000B838(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 52);
  if (*(a1 + 52))
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
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 40), a2) + 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 8);
  if (v6 && *v6 != v6[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 48) = v5;
  return v5;
}

uint64_t sub_10000B8C8(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 496);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
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

  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = *(qword_1009F98E0 + 16);
  }

  v6 = sub_10007AE4C(v5, a2);
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
  v3 = *(a1 + 496);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F98E0 + 24);
    }

    v10 = sub_1000D0BF4(v9, a2);
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
    v3 = *(a1 + 496);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = *(qword_1009F98E0 + 32);
    }

    v14 = sub_1000D1778(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 496);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 40);
  if (!v17)
  {
    v17 = *(qword_1009F98E0 + 40);
  }

  v18 = sub_1000D2164(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 48);
  if (!v21)
  {
    v21 = *(qword_1009F98E0 + 48);
  }

  v22 = sub_100154100(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 488);
  if ((v25 & 0x80000000) != 0)
  {
    v26 = 11;
  }

  else if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25, a2) + 1;
    v3 = *(a1 + 496);
  }

  else
  {
    v26 = 2;
  }

  v4 = (v26 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v27 = *(a1 + 56);
  if (!v27)
  {
    v27 = *(qword_1009F98E0 + 56);
  }

  v28 = sub_10007BEB4(v27, a2);
  v29 = v28;
  if (v28 >= 0x80)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28, a2);
  }

  else
  {
    v30 = 1;
  }

  v4 = (v4 + v29 + v30 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x80) != 0)
  {
LABEL_55:
    v31 = *(a1 + 64);
    if (!v31)
    {
      v31 = *(qword_1009F98E0 + 64);
    }

    v32 = sub_10007D5C4(v31, a2);
    v33 = v32;
    if (v32 >= 0x80)
    {
      v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
    }

    else
    {
      v34 = 1;
    }

    v4 = (v4 + v33 + v34 + 1);
    v3 = *(a1 + 496);
  }

LABEL_61:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v3 & 0x100) != 0)
  {
    v35 = *(a1 + 72);
    if (!v35)
    {
      v35 = *(qword_1009F98E0 + 72);
    }

    v36 = sub_10007E188(v35, a2);
    v37 = v36;
    if (v36 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36, a2);
    }

    else
    {
      v38 = 1;
    }

    v4 = (v4 + v37 + v38 + 1);
    v3 = *(a1 + 496);
    if ((v3 & 0x200) == 0)
    {
LABEL_64:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v39 = *(a1 + 80);
  if (!v39)
  {
    v39 = *(qword_1009F98E0 + 80);
  }

  v40 = sub_10007F804(v39, a2);
  v41 = v40;
  if (v40 >= 0x80)
  {
    v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40, a2);
  }

  else
  {
    v42 = 1;
  }

  v4 = (v4 + v41 + v42 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x400) == 0)
  {
LABEL_65:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v43 = *(a1 + 88);
  if (!v43)
  {
    v43 = *(qword_1009F98E0 + 88);
  }

  v44 = sub_100080454(v43, a2);
  v45 = v44;
  if (v44 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44, a2);
  }

  else
  {
    v46 = 1;
  }

  v4 = (v4 + v45 + v46 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x800) == 0)
  {
LABEL_66:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v47 = *(a1 + 96);
  if (!v47)
  {
    v47 = *(qword_1009F98E0 + 96);
  }

  v48 = sub_100080E88(v47, a2);
  v49 = v48;
  if (v48 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48, a2);
  }

  else
  {
    v50 = 1;
  }

  v4 = (v4 + v49 + v50 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x1000) == 0)
  {
LABEL_67:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v51 = *(a1 + 104);
  if (!v51)
  {
    v51 = *(qword_1009F98E0 + 104);
  }

  v52 = sub_100081A0C(v51, a2);
  v53 = v52;
  if (v52 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52, a2);
  }

  else
  {
    v54 = 1;
  }

  v4 = (v4 + v53 + v54 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x2000) == 0)
  {
LABEL_68:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v55 = *(a1 + 112);
  if (!v55)
  {
    v55 = *(qword_1009F98E0 + 112);
  }

  v56 = sub_1001002C4(v55, a2);
  v57 = v56;
  if (v56 >= 0x80)
  {
    v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56, a2);
  }

  else
  {
    v58 = 1;
  }

  v4 = (v4 + v57 + v58 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x4000) == 0)
  {
LABEL_69:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v59 = *(a1 + 120);
  if (!v59)
  {
    v59 = *(qword_1009F98E0 + 120);
  }

  v60 = sub_10011B6C8(v59, a2);
  v61 = v60;
  if (v60 >= 0x80)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60, a2);
  }

  else
  {
    v62 = 1;
  }

  v4 = (v4 + v61 + v62 + 1);
  v3 = *(a1 + 496);
  if ((v3 & 0x8000) != 0)
  {
LABEL_113:
    v63 = *(a1 + 128);
    if (!v63)
    {
      v63 = *(qword_1009F98E0 + 128);
    }

    v64 = sub_100124398(v63, a2);
    v65 = v64;
    if (v64 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64, a2);
    }

    else
    {
      v66 = 1;
    }

    v4 = (v4 + v65 + v66 + 2);
    v3 = *(a1 + 496);
  }

LABEL_119:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v3 & 0x10000) != 0)
  {
    v67 = *(a1 + 136);
    if (!v67)
    {
      v67 = *(qword_1009F98E0 + 136);
    }

    v68 = sub_100138690(v67, a2);
    v69 = v68;
    if (v68 >= 0x80)
    {
      v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
    }

    else
    {
      v70 = 1;
    }

    v4 = (v4 + v69 + v70 + 2);
    v3 = *(a1 + 496);
    if ((v3 & 0x20000) == 0)
    {
LABEL_122:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v71 = *(a1 + 144);
  if (!v71)
  {
    v71 = *(qword_1009F98E0 + 144);
  }

  v72 = sub_10000CC58(v71, a2);
  v73 = v72;
  if (v72 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v72, a2);
  }

  else
  {
    v74 = 1;
  }

  v4 = (v4 + v73 + v74 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x40000) == 0)
  {
LABEL_123:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v75 = *(a1 + 152);
  if (!v75)
  {
    v75 = *(qword_1009F98E0 + 152);
  }

  v76 = sub_10011FCB8(v75, a2);
  v77 = v76;
  if (v76 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76, a2);
  }

  else
  {
    v78 = 1;
  }

  v4 = (v4 + v77 + v78 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x80000) == 0)
  {
LABEL_124:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v79 = *(a1 + 160);
  if (!v79)
  {
    v79 = *(qword_1009F98E0 + 160);
  }

  v80 = sub_1001232C4(v79, a2);
  v81 = v80;
  if (v80 >= 0x80)
  {
    v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v80, a2);
  }

  else
  {
    v82 = 1;
  }

  v4 = (v4 + v81 + v82 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x100000) == 0)
  {
LABEL_125:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v83 = *(a1 + 168);
  if (!v83)
  {
    v83 = *(qword_1009F98E0 + 168);
  }

  v84 = sub_100124FFC(v83, a2);
  v85 = v84;
  if (v84 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84, a2);
  }

  else
  {
    v86 = 1;
  }

  v4 = (v4 + v85 + v86 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x200000) == 0)
  {
LABEL_126:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v87 = *(a1 + 176);
  if (!v87)
  {
    v87 = *(qword_1009F98E0 + 176);
  }

  v88 = sub_1001264F8(v87, a2);
  v89 = v88;
  if (v88 >= 0x80)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88, a2);
  }

  else
  {
    v90 = 1;
  }

  v4 = (v4 + v89 + v90 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x400000) == 0)
  {
LABEL_127:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v91 = *(a1 + 184);
  if (!v91)
  {
    v91 = *(qword_1009F98E0 + 184);
  }

  v92 = sub_100127558(v91, a2);
  v93 = v92;
  if (v92 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92, a2);
  }

  else
  {
    v94 = 1;
  }

  v4 = (v4 + v93 + v94 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x800000) != 0)
  {
LABEL_171:
    v95 = *(a1 + 192);
    if (!v95)
    {
      v95 = *(qword_1009F98E0 + 192);
    }

    v96 = sub_10012ABF0(v95, a2);
    v97 = v96;
    if (v96 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96, a2);
    }

    else
    {
      v98 = 1;
    }

    v4 = (v4 + v97 + v98 + 2);
    v3 = *(a1 + 496);
  }

LABEL_177:
  if (!HIBYTE(v3))
  {
    goto LABEL_235;
  }

  if ((v3 & 0x1000000) != 0)
  {
    v99 = *(a1 + 200);
    if (!v99)
    {
      v99 = *(qword_1009F98E0 + 200);
    }

    v100 = sub_10012CE6C(v99, a2);
    v101 = v100;
    if (v100 >= 0x80)
    {
      v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100, a2);
    }

    else
    {
      v102 = 1;
    }

    v4 = (v4 + v101 + v102 + 2);
    v3 = *(a1 + 496);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_180:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_199;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  v103 = *(a1 + 208);
  if (!v103)
  {
    v103 = *(qword_1009F98E0 + 208);
  }

  v104 = sub_10012DCA4(v103, a2);
  v105 = v104;
  if (v104 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104, a2);
  }

  else
  {
    v106 = 1;
  }

  v4 = (v4 + v105 + v106 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_181:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_199:
  v107 = *(a1 + 216);
  if (!v107)
  {
    v107 = *(qword_1009F98E0 + 216);
  }

  v108 = sub_10012CE6C(v107, a2);
  v109 = v108;
  if (v108 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v108, a2);
  }

  else
  {
    v110 = 1;
  }

  v4 = (v4 + v109 + v110 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_182:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_211;
  }

LABEL_205:
  v111 = *(a1 + 224);
  if (!v111)
  {
    v111 = *(qword_1009F98E0 + 224);
  }

  v112 = sub_1000E4630(v111, a2);
  v113 = v112;
  if (v112 >= 0x80)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v112, a2);
  }

  else
  {
    v114 = 1;
  }

  v4 = (v4 + v113 + v114 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_183:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_217;
  }

LABEL_211:
  v115 = *(a1 + 232);
  if (!v115)
  {
    v115 = *(qword_1009F98E0 + 232);
  }

  v116 = sub_10008668C(v115, a2);
  v117 = v116;
  if (v116 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v116, a2);
  }

  else
  {
    v118 = 1;
  }

  v4 = (v4 + v117 + v118 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_184:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_223;
  }

LABEL_217:
  v119 = *(a1 + 240);
  if (!v119)
  {
    v119 = *(qword_1009F98E0 + 240);
  }

  v120 = sub_1001302E8(v119, a2);
  v121 = v120;
  if (v120 >= 0x80)
  {
    v122 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v120, a2);
  }

  else
  {
    v122 = 1;
  }

  v4 = (v4 + v121 + v122 + 2);
  v3 = *(a1 + 496);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_185:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  v123 = *(a1 + 248);
  if (!v123)
  {
    v123 = *(qword_1009F98E0 + 248);
  }

  v124 = sub_1001320D0(v123, a2);
  v125 = v124;
  if (v124 >= 0x80)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v124, a2);
  }

  else
  {
    v126 = 1;
  }

  v4 = (v4 + v125 + v126 + 2);
  if ((*(a1 + 496) & 0x80000000) != 0)
  {
LABEL_229:
    v127 = *(a1 + 256);
    if (!v127)
    {
      v127 = *(qword_1009F98E0 + 256);
    }

    v128 = sub_1001352E4(v127, a2);
    v129 = v128;
    if (v128 >= 0x80)
    {
      v130 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128, a2);
    }

    else
    {
      v130 = 1;
    }

    v4 = (v4 + v129 + v130 + 2);
  }

LABEL_235:
  v131 = *(a1 + 500);
  if (!v131)
  {
    goto LABEL_293;
  }

  if (v131)
  {
    v132 = *(a1 + 264);
    if (!v132)
    {
      v132 = *(qword_1009F98E0 + 264);
    }

    v133 = sub_100135B40(v132, a2);
    v134 = v133;
    if (v133 >= 0x80)
    {
      v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v133, a2);
    }

    else
    {
      v135 = 1;
    }

    v4 = (v4 + v134 + v135 + 2);
    v131 = *(a1 + 500);
    if ((v131 & 2) == 0)
    {
LABEL_238:
      if ((v131 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_257;
    }
  }

  else if ((v131 & 2) == 0)
  {
    goto LABEL_238;
  }

  v136 = *(a1 + 272);
  if (!v136)
  {
    v136 = *(qword_1009F98E0 + 272);
  }

  v137 = sub_100136658(v136, a2);
  v138 = v137;
  if (v137 >= 0x80)
  {
    v139 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v137, a2);
  }

  else
  {
    v139 = 1;
  }

  v4 = (v4 + v138 + v139 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 4) == 0)
  {
LABEL_239:
    if ((v131 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_263;
  }

LABEL_257:
  v140 = *(a1 + 280);
  if (!v140)
  {
    v140 = *(qword_1009F98E0 + 280);
  }

  v141 = sub_1001346A8(v140, a2);
  v142 = v141;
  if (v141 >= 0x80)
  {
    v143 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v141, a2);
  }

  else
  {
    v143 = 1;
  }

  v4 = (v4 + v142 + v143 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 8) == 0)
  {
LABEL_240:
    if ((v131 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_269;
  }

LABEL_263:
  v144 = *(a1 + 288);
  if (!v144)
  {
    v144 = *(qword_1009F98E0 + 288);
  }

  v145 = sub_10012CE6C(v144, a2);
  v146 = v145;
  if (v145 >= 0x80)
  {
    v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v145, a2);
  }

  else
  {
    v147 = 1;
  }

  v4 = (v4 + v146 + v147 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x10) == 0)
  {
LABEL_241:
    if ((v131 & 0x20) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_275;
  }

LABEL_269:
  v148 = *(a1 + 296);
  if (!v148)
  {
    v148 = *(qword_1009F98E0 + 296);
  }

  v149 = sub_100087B6C(v148, a2);
  v150 = v149;
  if (v149 >= 0x80)
  {
    v151 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v149, a2);
  }

  else
  {
    v151 = 1;
  }

  v4 = (v4 + v150 + v151 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x20) == 0)
  {
LABEL_242:
    if ((v131 & 0x40) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_281;
  }

LABEL_275:
  v152 = *(a1 + 304);
  if (!v152)
  {
    v152 = *(qword_1009F98E0 + 304);
  }

  v153 = sub_100130C58(v152, a2);
  v154 = v153;
  if (v153 >= 0x80)
  {
    v155 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v153, a2);
  }

  else
  {
    v155 = 1;
  }

  v4 = (v4 + v154 + v155 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x40) == 0)
  {
LABEL_243:
    if ((v131 & 0x80) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_287;
  }

LABEL_281:
  v156 = *(a1 + 312);
  if (!v156)
  {
    v156 = *(qword_1009F98E0 + 312);
  }

  v157 = sub_100137184(v156, a2);
  v158 = v157;
  if (v157 >= 0x80)
  {
    v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v157, a2);
  }

  else
  {
    v159 = 1;
  }

  v4 = (v4 + v158 + v159 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x80) != 0)
  {
LABEL_287:
    v160 = *(a1 + 320);
    if (!v160)
    {
      v160 = *(qword_1009F98E0 + 320);
    }

    v161 = sub_100088F3C(v160, a2);
    v162 = v161;
    if (v161 >= 0x80)
    {
      v163 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v161, a2);
    }

    else
    {
      v163 = 1;
    }

    v4 = (v4 + v162 + v163 + 2);
    v131 = *(a1 + 500);
  }

LABEL_293:
  if ((v131 & 0xFF00) == 0)
  {
    goto LABEL_351;
  }

  if ((v131 & 0x100) != 0)
  {
    v164 = *(a1 + 328);
    if (!v164)
    {
      v164 = *(qword_1009F98E0 + 328);
    }

    v165 = sub_10012F5FC(v164, a2);
    v166 = v165;
    if (v165 >= 0x80)
    {
      v167 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v165, a2);
    }

    else
    {
      v167 = 1;
    }

    v4 = (v4 + v166 + v167 + 2);
    v131 = *(a1 + 500);
    if ((v131 & 0x200) == 0)
    {
LABEL_296:
      if ((v131 & 0x400) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_315;
    }
  }

  else if ((v131 & 0x200) == 0)
  {
    goto LABEL_296;
  }

  v168 = *(a1 + 336);
  if (!v168)
  {
    v168 = *(qword_1009F98E0 + 336);
  }

  v169 = sub_100139EBC(v168, a2);
  v170 = v169;
  if (v169 >= 0x80)
  {
    v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v169, a2);
  }

  else
  {
    v171 = 1;
  }

  v4 = (v4 + v170 + v171 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x400) == 0)
  {
LABEL_297:
    if ((v131 & 0x800) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_321;
  }

LABEL_315:
  v172 = *(a1 + 344);
  if (!v172)
  {
    v172 = *(qword_1009F98E0 + 344);
  }

  v173 = sub_10013AA3C(v172, a2);
  v174 = v173;
  if (v173 >= 0x80)
  {
    v175 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173, a2);
  }

  else
  {
    v175 = 1;
  }

  v4 = (v4 + v174 + v175 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x800) == 0)
  {
LABEL_298:
    if ((v131 & 0x1000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_327;
  }

LABEL_321:
  v176 = *(a1 + 352);
  if (!v176)
  {
    v176 = *(qword_1009F98E0 + 352);
  }

  v177 = sub_10013C344(v176, a2);
  v178 = v177;
  if (v177 >= 0x80)
  {
    v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v177, a2);
  }

  else
  {
    v179 = 1;
  }

  v4 = (v4 + v178 + v179 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x1000) == 0)
  {
LABEL_299:
    if ((v131 & 0x2000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_333;
  }

LABEL_327:
  v180 = *(a1 + 360);
  if (!v180)
  {
    v180 = *(qword_1009F98E0 + 360);
  }

  v181 = sub_10013DA3C(v180, a2);
  v182 = v181;
  if (v181 >= 0x80)
  {
    v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v181, a2);
  }

  else
  {
    v183 = 1;
  }

  v4 = (v4 + v182 + v183 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x2000) == 0)
  {
LABEL_300:
    if ((v131 & 0x4000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_339;
  }

LABEL_333:
  v184 = *(a1 + 368);
  if (!v184)
  {
    v184 = *(qword_1009F98E0 + 368);
  }

  v185 = sub_100137B00(v184, a2);
  v186 = v185;
  if (v185 >= 0x80)
  {
    v187 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v185, a2);
  }

  else
  {
    v187 = 1;
  }

  v4 = (v4 + v186 + v187 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x4000) == 0)
  {
LABEL_301:
    if ((v131 & 0x8000) == 0)
    {
      goto LABEL_351;
    }

    goto LABEL_345;
  }

LABEL_339:
  v188 = *(a1 + 376);
  if (!v188)
  {
    v188 = *(qword_1009F98E0 + 376);
  }

  v189 = sub_10013E4B0(v188, a2);
  v190 = v189;
  if (v189 >= 0x80)
  {
    v191 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v189, a2);
  }

  else
  {
    v191 = 1;
  }

  v4 = (v4 + v190 + v191 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x8000) != 0)
  {
LABEL_345:
    v192 = *(a1 + 384);
    if (!v192)
    {
      v192 = *(qword_1009F98E0 + 384);
    }

    v193 = sub_100125AC4(v192, a2);
    v194 = v193;
    if (v193 >= 0x80)
    {
      v195 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v193, a2);
    }

    else
    {
      v195 = 1;
    }

    v4 = (v4 + v194 + v195 + 2);
    v131 = *(a1 + 500);
  }

LABEL_351:
  if ((v131 & 0xFF0000) == 0)
  {
    goto LABEL_409;
  }

  if ((v131 & 0x10000) != 0)
  {
    v196 = *(a1 + 392);
    if (!v196)
    {
      v196 = *(qword_1009F98E0 + 392);
    }

    v197 = sub_100142BA0(v196, a2);
    v198 = v197;
    if (v197 >= 0x80)
    {
      v199 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v197, a2);
    }

    else
    {
      v199 = 1;
    }

    v4 = (v4 + v198 + v199 + 2);
    v131 = *(a1 + 500);
    if ((v131 & 0x20000) == 0)
    {
LABEL_354:
      if ((v131 & 0x40000) == 0)
      {
        goto LABEL_355;
      }

      goto LABEL_373;
    }
  }

  else if ((v131 & 0x20000) == 0)
  {
    goto LABEL_354;
  }

  v200 = *(a1 + 400);
  if (!v200)
  {
    v200 = *(qword_1009F98E0 + 400);
  }

  v201 = sub_1001456C4(v200, a2);
  v202 = v201;
  if (v201 >= 0x80)
  {
    v203 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v201, a2);
  }

  else
  {
    v203 = 1;
  }

  v4 = (v4 + v202 + v203 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x40000) == 0)
  {
LABEL_355:
    if ((v131 & 0x80000) == 0)
    {
      goto LABEL_356;
    }

    goto LABEL_379;
  }

LABEL_373:
  v204 = *(a1 + 408);
  if (!v204)
  {
    v204 = *(qword_1009F98E0 + 408);
  }

  v205 = sub_10014627C(v204, a2);
  v206 = v205;
  if (v205 >= 0x80)
  {
    v207 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v205, a2);
  }

  else
  {
    v207 = 1;
  }

  v4 = (v4 + v206 + v207 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x80000) == 0)
  {
LABEL_356:
    if ((v131 & 0x100000) == 0)
    {
      goto LABEL_357;
    }

    goto LABEL_385;
  }

LABEL_379:
  v208 = *(a1 + 416);
  if (!v208)
  {
    v208 = *(qword_1009F98E0 + 416);
  }

  v209 = sub_100146A68(v208, a2);
  v210 = v209;
  if (v209 >= 0x80)
  {
    v211 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v209, a2);
  }

  else
  {
    v211 = 1;
  }

  v4 = (v4 + v210 + v211 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x100000) == 0)
  {
LABEL_357:
    if ((v131 & 0x200000) == 0)
    {
      goto LABEL_358;
    }

    goto LABEL_391;
  }

LABEL_385:
  v212 = *(a1 + 424);
  if (!v212)
  {
    v212 = *(qword_1009F98E0 + 424);
  }

  v213 = sub_1001485A4(v212, a2);
  v214 = v213;
  if (v213 >= 0x80)
  {
    v215 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v213, a2);
  }

  else
  {
    v215 = 1;
  }

  v4 = (v4 + v214 + v215 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x200000) == 0)
  {
LABEL_358:
    if ((v131 & 0x400000) == 0)
    {
      goto LABEL_359;
    }

    goto LABEL_397;
  }

LABEL_391:
  v216 = *(a1 + 432);
  if (!v216)
  {
    v216 = *(qword_1009F98E0 + 432);
  }

  v217 = sub_100129314(v216, a2);
  v218 = v217;
  if (v217 >= 0x80)
  {
    v219 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v217, a2);
  }

  else
  {
    v219 = 1;
  }

  v4 = (v4 + v218 + v219 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x400000) == 0)
  {
LABEL_359:
    if ((v131 & 0x800000) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_403;
  }

LABEL_397:
  v220 = *(a1 + 440);
  if (!v220)
  {
    v220 = *(qword_1009F98E0 + 440);
  }

  v221 = sub_10013F290(v220, a2);
  v222 = v221;
  if (v221 >= 0x80)
  {
    v223 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v221, a2);
  }

  else
  {
    v223 = 1;
  }

  v4 = (v4 + v222 + v223 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x800000) != 0)
  {
LABEL_403:
    v224 = *(a1 + 448);
    if (!v224)
    {
      v224 = *(qword_1009F98E0 + 448);
    }

    v225 = sub_100089A7C(v224, a2);
    v226 = v225;
    if (v225 >= 0x80)
    {
      v227 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v225, a2);
    }

    else
    {
      v227 = 1;
    }

    v4 = (v4 + v226 + v227 + 2);
    v131 = *(a1 + 500);
  }

LABEL_409:
  if (!HIBYTE(v131))
  {
    goto LABEL_439;
  }

  if ((v131 & 0x1000000) != 0)
  {
    v228 = *(a1 + 456);
    if (!v228)
    {
      v228 = *(qword_1009F98E0 + 456);
    }

    v229 = sub_1001490CC(v228, a2);
    v230 = v229;
    if (v229 >= 0x80)
    {
      v231 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v229, a2);
    }

    else
    {
      v231 = 1;
    }

    v4 = (v4 + v230 + v231 + 2);
    v131 = *(a1 + 500);
    if ((v131 & 0x2000000) == 0)
    {
LABEL_412:
      if ((v131 & 0x4000000) == 0)
      {
        goto LABEL_413;
      }

      goto LABEL_427;
    }
  }

  else if ((v131 & 0x2000000) == 0)
  {
    goto LABEL_412;
  }

  v232 = *(a1 + 464);
  if (!v232)
  {
    v232 = *(qword_1009F98E0 + 464);
  }

  v233 = sub_10010EB3C(v232, a2);
  v234 = v233;
  if (v233 >= 0x80)
  {
    v235 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v233, a2);
  }

  else
  {
    v235 = 1;
  }

  v4 = (v4 + v234 + v235 + 2);
  v131 = *(a1 + 500);
  if ((v131 & 0x4000000) == 0)
  {
LABEL_413:
    if ((v131 & 0x8000000) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_433;
  }

LABEL_427:
  v236 = *(a1 + 472);
  if (!v236)
  {
    v236 = *(qword_1009F98E0 + 472);
  }

  v237 = sub_10014447C(v236, a2);
  v238 = v237;
  if (v237 >= 0x80)
  {
    v239 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v237, a2);
  }

  else
  {
    v239 = 1;
  }

  v4 = (v4 + v238 + v239 + 2);
  if ((*(a1 + 500) & 0x8000000) != 0)
  {
LABEL_433:
    v240 = *(a1 + 480);
    if (!v240)
    {
      v240 = *(qword_1009F98E0 + 480);
    }

    v241 = sub_100129E2C(v240, a2);
    v242 = v241;
    if (v241 >= 0x80)
    {
      v243 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v241, a2);
    }

    else
    {
      v243 = 1;
    }

    v4 = (v4 + v242 + v243 + 2);
  }

LABEL_439:
  v244 = *(a1 + 8);
  if (v244 && *v244 != v244[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 492) = v4;
  return v4;
}

uint64_t sub_10000CB1C(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  LOBYTE(v3) = *(a1 + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (*(a1 + 44))
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v5 = *(qword_1009F9B70 + 16);
    }

    v6 = sub_1000E6034(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v8 + 2);
    v3 = *(a1 + 44);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 44) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 24);
    if (!v9)
    {
      v9 = *(qword_1009F9B70 + 24);
    }

    v10 = sub_10000B8C8(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 2);
    v3 = *(a1 + 44);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 32);
    if (!v13)
    {
      v13 = *(qword_1009F9B70 + 32);
    }

    v14 = sub_1000CE060(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 2);
  }

LABEL_25:
  v17 = *(a1 + 8);
  if (v17 && *v17 != v17[1])
  {
    v4 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v4;
  }

  *(a1 + 40) = v4;
  return v4;
}

uint64_t sub_10000CC58(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 76);
  if (!*(a1 + 76))
  {
    v5 = 0;
    goto LABEL_53;
  }

  v4 = (v3 << 31 >> 31) & 9;
  if ((v3 & 2) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 4) != 0)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(a1 + 76);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v5 = (v5 + v11 + v7 + 1);
    if ((v3 & 8) == 0)
    {
LABEL_7:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 40);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v13 = 2;
  }

  v5 = (v13 + v5);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_28:
  v14 = *(a1 + 44);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2) + 1;
    v3 = *(a1 + 76);
  }

  else
  {
    v15 = 2;
  }

  v5 = (v15 + v5);
  if ((v3 & 0x20) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 48), a2) + 1;
  v3 = *(a1 + 76);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

LABEL_35:
  v16 = *(a1 + 56);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v3 = *(a1 + 76);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v5 = (v5 + v21 + v17 + 1);
  if ((v3 & 0x80) != 0)
  {
LABEL_44:
    v22 = *(a1 + 64);
    v23 = *(v22 + 23);
    v24 = v23;
    v25 = *(v22 + 8);
    if ((v23 & 0x80u) == 0)
    {
      v26 = *(v22 + 23);
    }

    else
    {
      v26 = v25;
    }

    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
      v23 = *(v22 + 23);
      v25 = *(v22 + 8);
      v24 = *(v22 + 23);
    }

    else
    {
      v27 = 1;
    }

    if (v24 < 0)
    {
      v23 = v25;
    }

    v5 = (v5 + v27 + v23 + 1);
  }

LABEL_53:
  v28 = *(a1 + 8);
  if (v28 && *v28 != v28[1])
  {
    v5 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v5;
  }

  *(a1 + 72) = v5;
  return v5;
}

uint64_t sub_10000CE6C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (*(a1 + 60))
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = *(qword_1009F9F20 + 40);
    }

    *a2 = 10;
    v6 = a2 + 1;
    v7 = v5[12];
    if (v7 > 0x7F)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v7, v6, a3);
    }

    else
    {
      v3[1] = v7;
      v8 = (v3 + 2);
    }

    v3 = sub_10000B070(v5, v8, a3);
  }

  v9 = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizesToArray((a1 + 8), 2, 3, v3);
  v12 = v9;
  if ((*(a1 + 60) & 2) != 0)
  {
    v13 = *(a1 + 48);
    if (!v13)
    {
      v13 = *(qword_1009F9F20 + 48);
    }

    *v9 = 34;
    v14 = v9 + 1;
    v15 = v13[10];
    if (v15 > 0x7F)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v14, v10);
    }

    else
    {
      *(v12 + 1) = v15;
      v16 = (v12 + 2);
    }

    v12 = sub_10000B1F0(v13, v16, v10, v11);
  }

  v19 = *(a1 + 32);
  v18 = (a1 + 32);
  v17 = v19;
  if (!v19 || *v17 == v17[1])
  {
    return v12;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v18, v12, v10);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10000CF88(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 124);
  if (v6)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      v7 = *(qword_1009F98E0 + 16);
    }

    *a2 = 10;
    v8 = a2 + 1;
    v9 = v7[8];
    if (v9 > 0x7F)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v9, v8, a3);
    }

    else
    {
      *(v4 + 1) = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_10007ACE8(v7, v10, a3);
    v6 = *(this + 124);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    v11 = *(qword_1009F98E0 + 24);
  }

  *v4 = 18;
  v12 = v11[17];
  if (v12 > 0x7F)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v12;
    v13 = (v4 + 2);
  }

  v4 = sub_1000D099C(v11, v13, a3, a4);
  v6 = *(this + 124);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_20:
  v14 = *(this + 4);
  if (!v14)
  {
    v14 = *(qword_1009F98E0 + 32);
  }

  *v4 = 26;
  v15 = v14[6];
  if (v15 > 0x7F)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v15;
    v16 = (v4 + 2);
  }

  v4 = sub_1000D16C8(v14, v16, a3, a4);
  v6 = *(this + 124);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_32:
    v20 = *(this + 6);
    if (!v20)
    {
      v20 = *(qword_1009F98E0 + 48);
    }

    *v4 = 42;
    v21 = v20[19];
    if (v21 > 0x7F)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v21, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v21;
      v22 = (v4 + 2);
    }

    v4 = sub_100153E38(v20, v22, a3);
    if ((*(this + 124) & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_26:
  v17 = *(this + 5);
  if (!v17)
  {
    v17 = *(qword_1009F98E0 + 40);
  }

  *v4 = 34;
  v18 = v17[8];
  if (v18 > 0x7F)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v18, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v18;
    v19 = (v4 + 2);
  }

  v4 = sub_1000D2060(v17, v19, a3, a4);
  v6 = *(this + 124);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v23 = *(this + 122);
  *v4 = 48;
  v24 = v4 + 1;
  if ((v23 & 0x80000000) != 0)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
  }

  else
  {
    if (v23 <= 0x7F)
    {
      *(v4 + 1) = v23;
      v4 = (v4 + 2);
      goto LABEL_44;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
  }

  v4 = v25;
LABEL_44:
  v26 = *(this + 124);
  if ((v26 & 0x40) != 0)
  {
    v27 = *(this + 7);
    if (!v27)
    {
      v27 = *(qword_1009F98E0 + 56);
    }

    *v4 = 58;
    v28 = *(v27 + 36);
    if (v28 > 0x7F)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v28, v4 + 1, a3);
    }

    else
    {
      *(v4 + 1) = v28;
      v29 = v4 + 2;
    }

    v4 = sub_10007BCFC(v27, v29, a3);
    v26 = *(this + 124);
    if ((v26 & 0x80) == 0)
    {
LABEL_46:
      if ((v26 & 0x100) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_83;
    }
  }

  else if ((v26 & 0x80) == 0)
  {
    goto LABEL_46;
  }

  v30 = *(this + 8);
  if (!v30)
  {
    v30 = *(qword_1009F98E0 + 64);
  }

  *v4 = 66;
  v31 = v30[16];
  if (v31 > 0x7F)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v31, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v31;
    v32 = (v4 + 2);
  }

  v4 = sub_10007D3A8(v30, v32, a3);
  v26 = *(this + 124);
  if ((v26 & 0x100) == 0)
  {
LABEL_47:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_89;
  }

LABEL_83:
  v33 = *(this + 9);
  if (!v33)
  {
    v33 = *(qword_1009F98E0 + 72);
  }

  *v4 = 74;
  v34 = v33[8];
  if (v34 > 0x7F)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v34, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v34;
    v35 = v4 + 2;
  }

  v4 = sub_10007E05C(v33, v35, a3);
  v26 = *(this + 124);
  if ((v26 & 0x200) == 0)
  {
LABEL_48:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_95;
  }

LABEL_89:
  v36 = *(this + 10);
  if (!v36)
  {
    v36 = *(qword_1009F98E0 + 80);
  }

  *v4 = 82;
  v37 = v36[26];
  if (v37 > 0x7F)
  {
    v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v37, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v37;
    v38 = (v4 + 2);
  }

  v4 = sub_10007F4D8(v36, v38, a3);
  v26 = *(this + 124);
  if ((v26 & 0x400) == 0)
  {
LABEL_49:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_101;
  }

LABEL_95:
  v39 = *(this + 11);
  if (!v39)
  {
    v39 = *(qword_1009F98E0 + 88);
  }

  *v4 = 90;
  v40 = v39[8];
  if (v40 > 0x7F)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v40;
    v41 = (v4 + 2);
  }

  v4 = sub_100080350(v39, v41, a3);
  v26 = *(this + 124);
  if ((v26 & 0x800) == 0)
  {
LABEL_50:
    if ((v26 & 0x1000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_107;
  }

LABEL_101:
  v42 = *(this + 12);
  if (!v42)
  {
    v42 = *(qword_1009F98E0 + 96);
  }

  *v4 = 98;
  v43 = v42[9];
  if (v43 > 0x7F)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v43, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v43;
    v44 = v4 + 2;
  }

  v4 = sub_100080D98(v42, v44, a3);
  v26 = *(this + 124);
  if ((v26 & 0x1000) == 0)
  {
LABEL_51:
    if ((v26 & 0x2000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_113;
  }

LABEL_107:
  v45 = *(this + 13);
  if (!v45)
  {
    v45 = *(qword_1009F98E0 + 104);
  }

  *v4 = 106;
  v46 = v45[13];
  if (v46 > 0x7F)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v46, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v46;
    v47 = v4 + 2;
  }

  v4 = sub_100081874(v45, v47, a3);
  v26 = *(this + 124);
  if ((v26 & 0x2000) == 0)
  {
LABEL_52:
    if ((v26 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_119;
  }

LABEL_113:
  v48 = *(this + 14);
  if (!v48)
  {
    v48 = *(qword_1009F98E0 + 112);
  }

  *v4 = 114;
  v49 = v48[36];
  if (v49 > 0x7F)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v49, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v49;
    v50 = (v4 + 2);
  }

  v4 = sub_1000FFCE4(v48, v50, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x4000) == 0)
  {
LABEL_53:
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_125;
  }

LABEL_119:
  v51 = *(this + 15);
  if (!v51)
  {
    v51 = *(qword_1009F98E0 + 120);
  }

  *v4 = 122;
  v52 = *(v51 + 48);
  if (v52 > 0x7F)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v52, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v52;
    v53 = v4 + 2;
  }

  v4 = sub_10011B4F8(v51, v53, a3);
  v26 = *(this + 124);
  if ((v26 & 0x8000) == 0)
  {
LABEL_54:
    if ((v26 & 0x10000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_131;
  }

LABEL_125:
  v54 = *(this + 16);
  if (!v54)
  {
    v54 = *(qword_1009F98E0 + 128);
  }

  *v4 = 386;
  v55 = v54[14];
  if (v55 > 0x7F)
  {
    v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v55, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v55;
    v56 = (v4 + 3);
  }

  v4 = sub_100124144(v54, v56, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x10000) == 0)
  {
LABEL_55:
    if ((v26 & 0x20000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_137;
  }

LABEL_131:
  v57 = *(this + 17);
  if (!v57)
  {
    v57 = *(qword_1009F98E0 + 136);
  }

  *v4 = 394;
  v58 = v57[14];
  if (v58 > 0x7F)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v58, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v58;
    v59 = (v4 + 3);
  }

  v4 = sub_10013850C(v57, v59, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x20000) == 0)
  {
LABEL_56:
    if ((v26 & 0x40000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_143;
  }

LABEL_137:
  v60 = *(this + 18);
  if (!v60)
  {
    v60 = *(qword_1009F98E0 + 144);
  }

  *v4 = 402;
  v61 = v60[18];
  if (v61 > 0x7F)
  {
    v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v61, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v61;
    v62 = (v4 + 3);
  }

  v4 = sub_10000E474(v60, v62, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x40000) == 0)
  {
LABEL_57:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_149;
  }

LABEL_143:
  v63 = *(this + 19);
  if (!v63)
  {
    v63 = *(qword_1009F98E0 + 152);
  }

  *v4 = 410;
  v64 = v63[12];
  if (v64 > 0x7F)
  {
    v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v64, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v64;
    v65 = (v4 + 3);
  }

  v4 = sub_10011FB98(v63, v65, a3);
  v26 = *(this + 124);
  if ((v26 & 0x80000) == 0)
  {
LABEL_58:
    if ((v26 & 0x100000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_155;
  }

LABEL_149:
  v66 = *(this + 20);
  if (!v66)
  {
    v66 = *(qword_1009F98E0 + 160);
  }

  *v4 = 418;
  v67 = v66[10];
  if (v67 > 0x7F)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v67, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v67;
    v68 = (v4 + 3);
  }

  v4 = sub_10012315C(v66, v68, a3);
  v26 = *(this + 124);
  if ((v26 & 0x100000) == 0)
  {
LABEL_59:
    if ((v26 & 0x200000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_161;
  }

LABEL_155:
  v69 = *(this + 21);
  if (!v69)
  {
    v69 = *(qword_1009F98E0 + 168);
  }

  *v4 = 426;
  v70 = v69[12];
  if (v70 > 0x7F)
  {
    v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v70, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v70;
    v71 = v4 + 3;
  }

  v4 = sub_100124E30(v69, v71, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x200000) == 0)
  {
LABEL_60:
    if ((v26 & 0x400000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_167;
  }

LABEL_161:
  v72 = *(this + 22);
  if (!v72)
  {
    v72 = *(qword_1009F98E0 + 176);
  }

  *v4 = 434;
  v73 = v72[9];
  if (v73 > 0x7F)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v73, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v73;
    v74 = v4 + 3;
  }

  v4 = sub_1001263BC(v72, v74, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x400000) == 0)
  {
LABEL_61:
    if ((v26 & 0x800000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_173;
  }

LABEL_167:
  v75 = *(this + 23);
  if (!v75)
  {
    v75 = *(qword_1009F98E0 + 184);
  }

  *v4 = 442;
  v76 = v75[19];
  if (v76 > 0x7F)
  {
    v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v76, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v76;
    v77 = (v4 + 3);
  }

  v4 = sub_100127238(v75, v77, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x800000) == 0)
  {
LABEL_62:
    if ((v26 & 0x1000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_179;
  }

LABEL_173:
  v78 = *(this + 24);
  if (!v78)
  {
    v78 = *(qword_1009F98E0 + 192);
  }

  *v4 = 450;
  v79 = v78[13];
  if (v79 > 0x7F)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v79, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v79;
    v80 = (v4 + 3);
  }

  v4 = sub_10012A978(v78, v80, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x1000000) == 0)
  {
LABEL_63:
    if ((v26 & 0x2000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_185;
  }

LABEL_179:
  v81 = *(this + 25);
  if (!v81)
  {
    v81 = *(qword_1009F98E0 + 200);
  }

  *v4 = 458;
  v82 = v81[34];
  if (v82 > 0x7F)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v82, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v82;
    v83 = (v4 + 3);
  }

  v4 = sub_10012C880(v81, v83, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x2000000) == 0)
  {
LABEL_64:
    if ((v26 & 0x4000000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_191;
  }

LABEL_185:
  v84 = *(this + 26);
  if (!v84)
  {
    v84 = *(qword_1009F98E0 + 208);
  }

  *v4 = 466;
  v85 = v84[14];
  if (v85 > 0x7F)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v85, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v85;
    v86 = v4 + 3;
  }

  v4 = sub_10012DA80(v84, v86, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x4000000) == 0)
  {
LABEL_65:
    if ((v26 & 0x8000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_197;
  }

LABEL_191:
  v87 = *(this + 27);
  if (!v87)
  {
    v87 = *(qword_1009F98E0 + 216);
  }

  *v4 = 474;
  v88 = v87[34];
  if (v88 > 0x7F)
  {
    v89 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v88, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v88;
    v89 = (v4 + 3);
  }

  v4 = sub_10012C880(v87, v89, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x8000000) == 0)
  {
LABEL_66:
    if ((v26 & 0x10000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_203;
  }

LABEL_197:
  v90 = *(this + 28);
  if (!v90)
  {
    v90 = *(qword_1009F98E0 + 224);
  }

  *v4 = 482;
  v91 = v90[18];
  if (v91 > 0x7F)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v91, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v91;
    v92 = (v4 + 3);
  }

  v4 = sub_1000E4368(v90, v92, a3);
  v26 = *(this + 124);
  if ((v26 & 0x10000000) == 0)
  {
LABEL_67:
    if ((v26 & 0x20000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_209;
  }

LABEL_203:
  v93 = *(this + 29);
  if (!v93)
  {
    v93 = *(qword_1009F98E0 + 232);
  }

  *v4 = 490;
  v94 = v93[23];
  if (v94 > 0x7F)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v94, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v94;
    v95 = (v4 + 3);
  }

  v4 = sub_1000862E4(v93, v95, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x20000000) == 0)
  {
LABEL_68:
    if ((v26 & 0x40000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_215;
  }

LABEL_209:
  v96 = *(this + 30);
  if (!v96)
  {
    v96 = *(qword_1009F98E0 + 240);
  }

  *v4 = 498;
  v97 = v96[8];
  if (v97 > 0x7F)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v97, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v97;
    v98 = (v4 + 3);
  }

  v4 = sub_1001301D0(v96, v98, a3, a4);
  v26 = *(this + 124);
  if ((v26 & 0x40000000) == 0)
  {
LABEL_69:
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_221;
  }

LABEL_215:
  v99 = *(this + 31);
  if (!v99)
  {
    v99 = *(qword_1009F98E0 + 248);
  }

  *v4 = 506;
  v100 = v99[28];
  if (v100 > 0x7F)
  {
    v101 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v100, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v100;
    v101 = (v4 + 3);
  }

  v4 = sub_100131C44(v99, v101, a3, a4);
  if ((*(this + 124) & 0x80000000) != 0)
  {
LABEL_221:
    v102 = *(this + 32);
    if (!v102)
    {
      v102 = *(qword_1009F98E0 + 256);
    }

    *v4 = 642;
    v103 = v102[8];
    if (v103 > 0x7F)
    {
      v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v103, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v103;
      v104 = (v4 + 3);
    }

    v4 = sub_1001351C4(v102, v104, a3, a4);
  }

LABEL_227:
  v105 = *(this + 125);
  if (v105)
  {
    v106 = *(this + 33);
    if (!v106)
    {
      v106 = *(qword_1009F98E0 + 264);
    }

    *v4 = 650;
    v107 = v106[6];
    if (v107 > 0x7F)
    {
      v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v107, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v107;
      v108 = (v4 + 3);
    }

    v4 = sub_100135A80(v106, v108, a3, a4);
    v105 = *(this + 125);
    if ((v105 & 2) == 0)
    {
LABEL_229:
      if ((v105 & 4) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_268;
    }
  }

  else if ((v105 & 2) == 0)
  {
    goto LABEL_229;
  }

  v109 = *(this + 34);
  if (!v109)
  {
    v109 = *(qword_1009F98E0 + 272);
  }

  *v4 = 658;
  v110 = v109[12];
  if (v110 > 0x7F)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v110, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v110;
    v111 = v4 + 3;
  }

  v4 = sub_10013648C(v109, v111, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 4) == 0)
  {
LABEL_230:
    if ((v105 & 8) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_274;
  }

LABEL_268:
  v112 = *(this + 35);
  if (!v112)
  {
    v112 = *(qword_1009F98E0 + 280);
  }

  *v4 = 666;
  v113 = v112[25];
  if (v113 > 0x7F)
  {
    v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v113, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v113;
    v114 = (v4 + 3);
  }

  v4 = sub_100134258(v112, v114, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 8) == 0)
  {
LABEL_231:
    if ((v105 & 0x10) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_280;
  }

LABEL_274:
  v115 = *(this + 36);
  if (!v115)
  {
    v115 = *(qword_1009F98E0 + 288);
  }

  *v4 = 674;
  v116 = v115[34];
  if (v116 > 0x7F)
  {
    v117 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v116, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v116;
    v117 = (v4 + 3);
  }

  v4 = sub_10012C880(v115, v117, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x10) == 0)
  {
LABEL_232:
    if ((v105 & 0x20) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_286;
  }

LABEL_280:
  v118 = *(this + 37);
  if (!v118)
  {
    v118 = *(qword_1009F98E0 + 296);
  }

  *v4 = 682;
  v119 = v118[28];
  if (v119 > 0x7F)
  {
    v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v119, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v119;
    v120 = v4 + 3;
  }

  v4 = sub_1000876E0(v118, v120, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x20) == 0)
  {
LABEL_233:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_292;
  }

LABEL_286:
  v121 = *(this + 38);
  if (!v121)
  {
    v121 = *(qword_1009F98E0 + 304);
  }

  *v4 = 690;
  v122 = v121[8];
  if (v122 > 0x7F)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v122, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v122;
    v123 = v4 + 3;
  }

  v4 = sub_100130B44(v121, v123, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x40) == 0)
  {
LABEL_234:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_298;
  }

LABEL_292:
  v124 = *(this + 39);
  if (!v124)
  {
    v124 = *(qword_1009F98E0 + 312);
  }

  *v4 = 698;
  v125 = v124[10];
  if (v125 > 0x7F)
  {
    v126 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v125, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v125;
    v126 = (v4 + 3);
  }

  v4 = sub_100136FF8(v124, v126, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x80) == 0)
  {
LABEL_235:
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_304;
  }

LABEL_298:
  v127 = *(this + 40);
  if (!v127)
  {
    v127 = *(qword_1009F98E0 + 320);
  }

  *v4 = 706;
  v128 = v127[10];
  if (v128 > 0x7F)
  {
    v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v128, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v128;
    v129 = (v4 + 3);
  }

  v4 = sub_100088E70(v127, v129, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x100) == 0)
  {
LABEL_236:
    if ((v105 & 0x200) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_310;
  }

LABEL_304:
  v130 = *(this + 41);
  if (!v130)
  {
    v130 = *(qword_1009F98E0 + 328);
  }

  *v4 = 714;
  v131 = v130[12];
  if (v131 > 0x7F)
  {
    v132 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v131, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v131;
    v132 = (v4 + 3);
  }

  v4 = sub_10012F4CC(v130, v132, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x200) == 0)
  {
LABEL_237:
    if ((v105 & 0x400) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_316;
  }

LABEL_310:
  v133 = *(this + 42);
  if (!v133)
  {
    v133 = *(qword_1009F98E0 + 336);
  }

  *v4 = 722;
  v134 = v133[30];
  if (v134 > 0x7F)
  {
    v135 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v134, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v134;
    v135 = v4 + 3;
  }

  v4 = sub_100139AD0(v133, v135, a3);
  v105 = *(this + 125);
  if ((v105 & 0x400) == 0)
  {
LABEL_238:
    if ((v105 & 0x800) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_322;
  }

LABEL_316:
  v136 = *(this + 43);
  if (!v136)
  {
    v136 = *(qword_1009F98E0 + 344);
  }

  *v4 = 730;
  v137 = v136[9];
  if (v137 > 0x7F)
  {
    v138 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v137, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v137;
    v138 = (v4 + 3);
  }

  v4 = sub_10013A908(v136, v138, a3);
  v105 = *(this + 125);
  if ((v105 & 0x800) == 0)
  {
LABEL_239:
    if ((v105 & 0x1000) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_328;
  }

LABEL_322:
  v139 = *(this + 44);
  if (!v139)
  {
    v139 = *(qword_1009F98E0 + 352);
  }

  *v4 = 738;
  v140 = v139[7];
  if (v140 > 0x7F)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v140, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v140;
    v141 = (v4 + 3);
  }

  v4 = sub_10013C25C(v139, v141, a3);
  v105 = *(this + 125);
  if ((v105 & 0x1000) == 0)
  {
LABEL_240:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_334;
  }

LABEL_328:
  v142 = *(this + 45);
  if (!v142)
  {
    v142 = *(qword_1009F98E0 + 360);
  }

  *v4 = 746;
  v143 = v142[9];
  if (v143 > 0x7F)
  {
    v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v143, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v143;
    v144 = (v4 + 3);
  }

  v4 = sub_10013D938(v142, v144, a3);
  v105 = *(this + 125);
  if ((v105 & 0x2000) == 0)
  {
LABEL_241:
    if ((v105 & 0x4000) == 0)
    {
      goto LABEL_242;
    }

    goto LABEL_340;
  }

LABEL_334:
  v145 = *(this + 46);
  if (!v145)
  {
    v145 = *(qword_1009F98E0 + 368);
  }

  *v4 = 754;
  v146 = v145[8];
  if (v146 > 0x7F)
  {
    v147 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v146, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v146;
    v147 = v4 + 3;
  }

  v4 = sub_1001379EC(v145, v147, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x4000) == 0)
  {
LABEL_242:
    if ((v105 & 0x8000) == 0)
    {
      goto LABEL_243;
    }

    goto LABEL_346;
  }

LABEL_340:
  v148 = *(this + 47);
  if (!v148)
  {
    v148 = *(qword_1009F98E0 + 376);
  }

  *v4 = 762;
  v149 = v148[11];
  if (v149 > 0x7F)
  {
    v150 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v149, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v149;
    v150 = v4 + 3;
  }

  v4 = sub_10013E35C(v148, v150, a3);
  v105 = *(this + 125);
  if ((v105 & 0x8000) == 0)
  {
LABEL_243:
    if ((v105 & 0x10000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_352;
  }

LABEL_346:
  v151 = *(this + 48);
  if (!v151)
  {
    v151 = *(qword_1009F98E0 + 384);
  }

  *v4 = 898;
  v152 = v151[10];
  if (v152 > 0x7F)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v152, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v152;
    v153 = v4 + 3;
  }

  v4 = sub_100125950(v151, v153, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x10000) == 0)
  {
LABEL_244:
    if ((v105 & 0x20000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_358;
  }

LABEL_352:
  v154 = *(this + 49);
  if (!v154)
  {
    v154 = *(qword_1009F98E0 + 392);
  }

  *v4 = 906;
  v155 = v154[10];
  if (v155 > 0x7F)
  {
    v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v155, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v155;
    v156 = (v4 + 3);
  }

  v4 = sub_100142AD4(v154, v156, a3);
  v105 = *(this + 125);
  if ((v105 & 0x20000) == 0)
  {
LABEL_245:
    if ((v105 & 0x40000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_364;
  }

LABEL_358:
  v157 = *(this + 50);
  if (!v157)
  {
    v157 = *(qword_1009F98E0 + 400);
  }

  *v4 = 914;
  v158 = v157[23];
  if (v158 > 0x7F)
  {
    v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v158, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v158;
    v159 = v4 + 3;
  }

  v4 = sub_100145308(v157, v159, a3);
  v105 = *(this + 125);
  if ((v105 & 0x40000) == 0)
  {
LABEL_246:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_370;
  }

LABEL_364:
  v160 = *(this + 51);
  if (!v160)
  {
    v160 = *(qword_1009F98E0 + 408);
  }

  *v4 = 922;
  v161 = *(v160 + 52);
  if (v161 > 0x7F)
  {
    v162 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v161, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v161;
    v162 = v4 + 3;
  }

  v4 = sub_1001460DC(v160, v162, a3);
  v105 = *(this + 125);
  if ((v105 & 0x80000) == 0)
  {
LABEL_247:
    if ((v105 & 0x100000) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_376;
  }

LABEL_370:
  v163 = *(this + 52);
  if (!v163)
  {
    v163 = *(qword_1009F98E0 + 416);
  }

  *v4 = 930;
  v164 = *(v163 + 20);
  if (v164 > 0x7F)
  {
    v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v164, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v164;
    v165 = (v4 + 3);
  }

  v4 = sub_100146A10(v163, v165, a3);
  v105 = *(this + 125);
  if ((v105 & 0x100000) == 0)
  {
LABEL_248:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_382;
  }

LABEL_376:
  v166 = *(this + 53);
  if (!v166)
  {
    v166 = *(qword_1009F98E0 + 424);
  }

  *v4 = 938;
  v167 = v166[40];
  if (v167 > 0x7F)
  {
    v168 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v167, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v167;
    v168 = (v4 + 3);
  }

  v4 = sub_100148024(v166, v168, a3);
  v105 = *(this + 125);
  if ((v105 & 0x200000) == 0)
  {
LABEL_249:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_388;
  }

LABEL_382:
  v169 = *(this + 54);
  if (!v169)
  {
    v169 = *(qword_1009F98E0 + 432);
  }

  *v4 = 946;
  v170 = v169[6];
  if (v170 > 0x7F)
  {
    v171 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v170, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v170;
    v171 = (v4 + 3);
  }

  v4 = sub_100129264(v169, v171, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x400000) == 0)
  {
LABEL_250:
    if ((v105 & 0x800000) == 0)
    {
      goto LABEL_251;
    }

    goto LABEL_394;
  }

LABEL_388:
  v172 = *(this + 55);
  if (!v172)
  {
    v172 = *(qword_1009F98E0 + 440);
  }

  *v4 = 954;
  v173 = v172[15];
  if (v173 > 0x7F)
  {
    v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v173, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v173;
    v174 = (v4 + 3);
  }

  v4 = sub_10013F064(v172, v174, a3);
  v105 = *(this + 125);
  if ((v105 & 0x800000) == 0)
  {
LABEL_251:
    if ((v105 & 0x1000000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_400;
  }

LABEL_394:
  v175 = *(this + 56);
  if (!v175)
  {
    v175 = *(qword_1009F98E0 + 448);
  }

  *v4 = 962;
  v176 = v175[8];
  if (v176 > 0x7F)
  {
    v177 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v176, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v176;
    v177 = (v4 + 3);
  }

  v4 = sub_100089918(v175, v177, a3);
  v105 = *(this + 125);
  if ((v105 & 0x1000000) == 0)
  {
LABEL_252:
    if ((v105 & 0x2000000) == 0)
    {
      goto LABEL_253;
    }

    goto LABEL_406;
  }

LABEL_400:
  v178 = *(this + 57);
  if (!v178)
  {
    v178 = *(qword_1009F98E0 + 456);
  }

  *v4 = 970;
  v179 = v178[8];
  if (v179 > 0x7F)
  {
    v180 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v179, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v179;
    v180 = (v4 + 3);
  }

  v4 = sub_100148FC8(v178, v180, a3, a4);
  v105 = *(this + 125);
  if ((v105 & 0x2000000) == 0)
  {
LABEL_253:
    if ((v105 & 0x4000000) == 0)
    {
      goto LABEL_254;
    }

    goto LABEL_412;
  }

LABEL_406:
  v181 = *(this + 58);
  if (!v181)
  {
    v181 = *(qword_1009F98E0 + 464);
  }

  *v4 = 978;
  v182 = *(v181 + 20);
  if (v182 > 0x7F)
  {
    v183 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v182, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v182;
    v183 = (v4 + 3);
  }

  v4 = sub_10010EB00(v181, v183, a3);
  v105 = *(this + 125);
  if ((v105 & 0x4000000) == 0)
  {
LABEL_254:
    if ((v105 & 0x8000000) == 0)
    {
      goto LABEL_424;
    }

    goto LABEL_418;
  }

LABEL_412:
  v184 = *(this + 59);
  if (!v184)
  {
    v184 = *(qword_1009F98E0 + 472);
  }

  *v4 = 986;
  v185 = v184[10];
  if (v185 > 0x7F)
  {
    v186 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v185, v4 + 2, a3);
  }

  else
  {
    *(v4 + 2) = v185;
    v186 = (v4 + 3);
  }

  v4 = sub_1001443B0(v184, v186, a3);
  if ((*(this + 125) & 0x8000000) != 0)
  {
LABEL_418:
    v187 = *(this + 60);
    if (!v187)
    {
      v187 = *(qword_1009F98E0 + 480);
    }

    *v4 = 994;
    v188 = v187[6];
    if (v188 > 0x7F)
    {
      v189 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v188, v4 + 2, a3);
    }

    else
    {
      *(v4 + 2) = v188;
      v189 = (v4 + 3);
    }

    v4 = sub_100129D7C(v187, v189, a3, a4);
  }

LABEL_424:
  v192 = *(this + 1);
  v191 = (this + 8);
  v190 = v192;
  if (!v192 || *v190 == v190[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v191, v4, a3);
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10000E474(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a2;
  v6 = *(this + 19);
  if (v6)
  {
    v7 = *(this + 2);
    *a2 = 9;
    *(a2 + 1) = v7;
    v4 = (a2 + 9);
    v6 = *(this + 19);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = *(this + 4);
      if ((*(v9 + 23) & 0x8000000000000000) != 0)
      {
        v10 = *v9;
        v11 = *(*(this + 4) + 8);
      }

      wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
      v14 = *(this + 4);
      *v4 = 26;
      v15 = *(v14 + 23);
      if ((v15 & 0x8000000000000000) != 0)
      {
        v15 = *(v14 + 8);
      }

      if (v15 > 0x7F)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v15, v4 + 1, v12);
      }

      else
      {
        *(v4 + 1) = v15;
        v16 = v4 + 2;
      }

      v17 = *(v14 + 23);
      if (v17 >= 0)
      {
        v18 = v14;
      }

      else
      {
        v18 = *v14;
      }

      if (v17 >= 0)
      {
        v19 = *(v14 + 23);
      }

      else
      {
        v19 = *(v14 + 8);
      }

      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v18, v19, v16, v13);
      if ((*(this + 19) & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  *v4 = 17;
  *(v4 + 1) = v8;
  v4 = (v4 + 9);
  v6 = *(this + 19);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v20 = *(this + 10);
  *v4 = 32;
  v21 = v4 + 1;
  if ((v20 & 0x80000000) != 0)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v20, v21, a3);
  }

  else
  {
    if (v20 <= 0x7F)
    {
      *(v4 + 1) = v20;
      v4 = (v4 + 2);
      goto LABEL_28;
    }

    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v20, v21, a3);
  }

  v4 = v22;
LABEL_28:
  if ((*(this + 76) & 0x10) == 0)
  {
    goto LABEL_35;
  }

  v23 = *(this + 11);
  *v4 = 40;
  v24 = v4 + 1;
  if ((v23 & 0x80000000) != 0)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v23, v24, a3);
  }

  else
  {
    if (v23 <= 0x7F)
    {
      *(v4 + 1) = v23;
      v4 = (v4 + 2);
      goto LABEL_35;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v23, v24, a3);
  }

  v4 = v25;
LABEL_35:
  v26 = *(this + 19);
  if ((v26 & 0x20) != 0)
  {
    v27 = *(this + 6);
    *v4 = 48;
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v27, v4 + 1, a3);
    v26 = *(this + 19);
    if ((v26 & 0x80) == 0)
    {
LABEL_37:
      if ((v26 & 0x40) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_52;
    }
  }

  else if ((v26 & 0x80) == 0)
  {
    goto LABEL_37;
  }

  v28 = *(this + 8);
  *v4 = 58;
  v29 = *(v28 + 23);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v29 = *(v28 + 8);
  }

  if (v29 > 0x7F)
  {
    v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v29, v4 + 1, a3);
  }

  else
  {
    *(v4 + 1) = v29;
    v30 = v4 + 2;
  }

  v31 = *(v28 + 23);
  if (v31 >= 0)
  {
    v32 = v28;
  }

  else
  {
    v32 = *v28;
  }

  if (v31 >= 0)
  {
    v33 = *(v28 + 23);
  }

  else
  {
    v33 = *(v28 + 8);
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v32, v33, v30, a4);
  if ((*(this + 19) & 0x40) != 0)
  {
LABEL_52:
    v34 = *(this + 7);
    if ((*(v34 + 23) & 0x8000000000000000) != 0)
    {
      v35 = *v34;
      v36 = *(*(this + 7) + 8);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormat::VerifyUTF8StringFallback();
    v39 = *(this + 7);
    *v4 = 66;
    v40 = *(v39 + 23);
    if ((v40 & 0x8000000000000000) != 0)
    {
      v40 = *(v39 + 8);
    }

    if (v40 > 0x7F)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v40, v4 + 1, v37);
    }

    else
    {
      *(v4 + 1) = v40;
      v41 = v4 + 2;
    }

    v42 = *(v39 + 23);
    if (v42 >= 0)
    {
      v43 = v39;
    }

    else
    {
      v43 = *v39;
    }

    if (v42 >= 0)
    {
      v44 = *(v39 + 23);
    }

    else
    {
      v44 = *(v39 + 8);
    }

    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteRawToArray(v43, v44, v41, v38);
  }

LABEL_66:
  v47 = *(this + 1);
  v46 = (this + 8);
  v45 = v47;
  if (!v47 || *v45 == v45[1])
  {
    return v4;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v46, v4, a3);
}

uint64_t sub_10000E7A0(uint64_t *a1)
{
  result = (*(**a1 + 40))(*a1);
  if (result)
  {
    v3 = sub_10000E9FC(*a1);
    v4 = sub_10000E9FC(v3);
    sub_10000E9FC(v4);
    return *a1 != 0;
  }

  return result;
}

uint64_t sub_10000E814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100013AEC();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_10000E9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000EA44(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_10000E814(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10000EB84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10000EB64);
}

uint64_t sub_10000EC1C(uint64_t a1, int a2)
{
  v4 = *a1;
  if (a2 & 0xFFFFFFDF) == 0x5D && (*(a1 + 16))
  {
    sub_10000E9FC(*a1);
  }

  sub_10000E9FC(v4);
  result = (*(*v4 + 24))(v4);
  if (result)
  {
    *(a1 + 16) = a2 == 126;
  }

  return result;
}

uint64_t sub_10000ECB0(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    return 1;
  }

  v4 = *a2 + 1;
  do
  {
    result = sub_10000EC1C(a1, *(v4 - 1));
    if (result)
    {
      v6 = v4 == v2;
    }

    else
    {
      v6 = 1;
    }

    ++v4;
  }

  while (!v6);
  return result;
}

uint64_t sub_10000ED40(void *a1)
{
  v2 = (*(**a1 + 40))(*a1);
  if (v2)
  {
    (*(**a1 + 56))();
  }

  return v2;
}

void sub_10000EDBC(void *a1)
{
  *a1 = off_1009912C8;
  v2 = (a1 + 1);
  sub_10000EE54(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10000EE1C(void *a1)
{
  sub_10000EDBC(a1);

  operator delete();
}

void *sub_10000EE54(void *result)
{
  if (qword_1009F9B70 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    result = v1[4];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10000EF20(void *a1)
{
  sub_10000EF58(a1);

  operator delete();
}

void sub_10000EF58(void *a1)
{
  *a1 = off_10098DFB0;
  v2 = (a1 + 1);
  sub_10000F050(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_10000EFB8(void *a1)
{
  sub_10000EFF0(a1);

  operator delete();
}

void sub_10000EFF0(void *a1)
{
  *a1 = off_1009931D0;
  v2 = (a1 + 1);
  sub_10000FABC(a1);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void *sub_10000F050(void *result)
{
  if (qword_1009F98E0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[6];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[7];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[8];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[9];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[10];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[11];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[12];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[13];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[14];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[15];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[16];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[17];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[18];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[19];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[20];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[21];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[22];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[23];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[24];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[25];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[26];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[27];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[28];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[29];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[30];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[31];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[32];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[38];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[39];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[40];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[41];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    v42 = v1[42];
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }

    v43 = v1[43];
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    v44 = v1[44];
    if (v44)
    {
      (*(*v44 + 8))(v44);
    }

    v45 = v1[45];
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }

    v46 = v1[46];
    if (v46)
    {
      (*(*v46 + 8))(v46);
    }

    v47 = v1[47];
    if (v47)
    {
      (*(*v47 + 8))(v47);
    }

    v48 = v1[48];
    if (v48)
    {
      (*(*v48 + 8))(v48);
    }

    v49 = v1[49];
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }

    v50 = v1[50];
    if (v50)
    {
      (*(*v50 + 8))(v50);
    }

    v51 = v1[51];
    if (v51)
    {
      (*(*v51 + 8))(v51);
    }

    v52 = v1[52];
    if (v52)
    {
      (*(*v52 + 8))(v52);
    }

    v53 = v1[53];
    if (v53)
    {
      (*(*v53 + 8))(v53);
    }

    v54 = v1[54];
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    v55 = v1[55];
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    v56 = v1[56];
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }

    v57 = v1[57];
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    v58 = v1[58];
    if (v58)
    {
      (*(*v58 + 8))(v58);
    }

    v59 = v1[59];
    if (v59)
    {
      (*(*v59 + 8))(v59);
    }

    result = v1[60];
    if (result)
    {
      v60 = *(*result + 8);

      return v60();
    }
  }

  return result;
}