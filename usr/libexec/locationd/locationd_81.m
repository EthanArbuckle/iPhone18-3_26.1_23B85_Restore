BOOL sub_1005A2518(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  sub_10004FD18(v18);
  v20.__r_.__value_.__r.__words[0] = *a2;
  sub_1000ECD9C(__p);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0].__r_.__value_.__r.__words[0];
  }

  sub_1002DC480(v18, @"BSSID", v7);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if ((*(a2 + 40) & 0x80000000) == 0)
  {
    LODWORD(__p[0].__r_.__value_.__l.__data_) = *(a2 + 40);
    sub_1000F2D48(v18, @"CHANNEL", __p);
  }

  __p[0].__r_.__value_.__s.__data_[0] = 1;
  if (a4)
  {
    sub_1000434C8(v18, @"ENTRY_NETWORK", __p);
  }

  else
  {
    sub_1000434C8(v18, @"EXIT_NETWORK", __p);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018CD638();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v17.__r_.__value_.__r.__words[0] = *a2;
    sub_1000ECD9C(&v20);
    v9 = (v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v20 : v20.__r_.__value_.__r.__words[0];
    v10 = *(a2 + 40);
    LODWORD(__p[0].__r_.__value_.__l.__data_) = 136315650;
    *(__p[0].__r_.__value_.__r.__words + 4) = v9;
    WORD2(__p[0].__r_.__value_.__r.__words[1]) = 1024;
    *(&__p[0].__r_.__value_.__r.__words[1] + 6) = v10;
    WORD1(__p[0].__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(__p[0].__r_.__value_.__r.__words[2]) = a4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "network mac, %s, channel, %d, entry, %d", __p, 0x18u);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018CD660(__p);
    sub_1000ECD9C(&v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v17;
    }

    else
    {
      v14 = v17.__r_.__value_.__r.__words[0];
    }

    v15 = *(a2 + 40);
    LODWORD(v20.__r_.__value_.__l.__data_) = 136315650;
    *(v20.__r_.__value_.__r.__words + 4) = v14;
    WORD2(v20.__r_.__value_.__r.__words[1]) = 1024;
    *(&v20.__r_.__value_.__r.__words[1] + 6) = v15;
    WORD1(v20.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(v20.__r_.__value_.__r.__words[2]) = a4;
    v16 = _os_log_send_and_compose_impl();
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::createBackgroundNetwork(const CLWifiService_Type::AccessPoint &, WiFiNetworkRef &, BOOL)", "%s\n", v16);
    if (v16 != __p)
    {
      free(v16);
    }
  }

  sub_10007005C(v18);
  v11 = WiFiNetworkCreate();
  *a3 = v11;
  v12 = v11 != 0;
  sub_100005DA4(v18);
  return v12;
}

void sub_1005A2874(uint64_t a1, _DWORD **a2, void *a3, __CFDictionary *a4)
{
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F78C);
  if (v8)
  {
    v9 = v8;
    sub_1005A5584(a1, a2, a3, v8, a4);

    CFRelease(v9);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v11 = 134349056;
      v12 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "setScanOptionsChannels could not create scan params flag %{public}p", &v11, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D03A8();
    }
  }
}

__CFDictionary *sub_1005A29D8(uint64_t a1, int a2, int a3, int a4, _DWORD **a5, void *a6, uint64_t a7, int a8, char a9)
{
  v37 = a3;
  v38 = a2;
  v35 = a7;
  valuePtr = a4;
  v34 = a8;
  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v37);
  v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v35);
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v38);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &unk_101C7F790);
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v34);
  v17 = v16;
  if (v11)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18 || v13 == 0 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD58C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350336;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      *&buf[22] = 2050;
      *&buf[24] = v13;
      *v50 = 2050;
      *&v50[2] = v14;
      *&v50[10] = 2050;
      *&v50[12] = v15;
      *&v50[20] = 2050;
      *&v50[22] = v17;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "could not create scan params mode %{public}p type %{public}p dwell %{public}p scans %{public}p flag %{public}p age %{public}p", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v39 = 134350336;
      *v40 = v11;
      *&v40[8] = 2050;
      v41 = v12;
      *v42 = 2050;
      *&v42[2] = v13;
      v43 = 2050;
      v44 = v14;
      v45 = 2050;
      v46 = v15;
      v47 = 2050;
      v48 = v17;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = std::__wrap_iter<const int *>]", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    Mutable = 0;
  }

  else
  {
    v31 = a6;
    *buf = kCFBooleanFalse;
    *&buf[8] = kCFBooleanTrue;
    *&buf[16] = v11;
    *&buf[24] = v12;
    *v50 = v13;
    *&v50[8] = v14;
    if (a9)
    {
      v25 = kCFBooleanTrue;
    }

    else
    {
      v25 = kCFBooleanFalse;
    }

    *&v50[16] = v16;
    *&v50[24] = v25;
    v51 = kCFBooleanFalse;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 9, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    for (i = 0; i != 9; ++i)
    {
      CFDictionarySetValue(Mutable, off_102460F28[i], *&buf[i * 8]);
    }

    if (*a5 != *v31)
    {
      sub_1005A5868(a1, a5, v31, v15, Mutable);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!Mutable)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD638();
    }

    v27 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *&buf[4] = v38;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      *&buf[16] = valuePtr;
      *&buf[20] = 2048;
      *&buf[22] = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "#Warning failed to create scan options (numScans=%d, scan_type=%d, scanModes=%d, dwellTime=%lld)", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018CD638();
      }

      v39 = 67109888;
      *v40 = v38;
      *&v40[4] = 1024;
      *&v40[6] = v37;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = valuePtr;
      HIWORD(v41) = 2048;
      *v42 = a7;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CFMutableDictionaryRef CLWifiService::createScanOptions(int, apple80211_scan_type, int, const Iter &, const Iter &, cl::chrono::milliseconds, cl::chrono::seconds, BOOL) [Iter = std::__wrap_iter<const int *>]", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  return Mutable;
}

uint64_t sub_1005A2F04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = v1 + 104;
  (*(v1[104] + 16))(v1 + 104);
  v5 = 256;
  v3 = 4;
  (*(*v1 + 144))(v1, &v3, 0, 0xFFFFFFFFLL);
  return (*(v1[104] + 24))(v1 + 104);
}

void sub_1005A2FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A2FF0(void *a1, int a2)
{
  v4 = a1 + 104;
  (*(a1[104] + 16))(a1 + 104);
  if (a1[38] && a1[37])
  {
    WiFiManagerClientQuiesceWiFi();
    if (qword_1025D48A0 != -1)
    {
      sub_1018CD6A4();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "IMD: doQuiesceWifi, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018CD660(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiService::doQuiesceWifi(BOOL)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005A31E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A3214@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v11);
  sub_100038730(&v12, "scanStats, numOfScan, S1, ", 26);
  v2 = std::ostream::operator<<();
  sub_100038730(v2, ", S2, ", 6);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ", 5GHz S1, ", 11);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ", Fast, ", 8);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, ", Cached, ", 10);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, ", numOfScanErrors, ", 19);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, ", numOfScanBusies, ", 19);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, ", numOfReceivedScans, ", 22);
  std::ostream::operator<<();
  sub_10003DD04(&v13, a1);
  v12 = v9;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1005A345C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1005A354C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1005A3588(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_1005A5B4C(a4);
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

BOOL sub_1005A36F8(uint64_t a1, int a2, int *a3)
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
      sub_1018CD8DC();
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
      sub_1018D05A8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005A388C(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  *a3 = *v9;
  sub_1000F8F80(a3 + 8, v9 + 8);
  *(a3 + 104) = *(v9 + 104);
  if (v9 != a3)
  {
    sub_100288978((a3 + 112), *(v9 + 112), *(v9 + 120), 0x2E8BA2E8BA2E8BA3 * ((*(v9 + 120) - *(v9 + 112)) >> 3));
  }

  *(a3 + 136) = *(v9 + 136);
  return 1;
}

void sub_1005A39F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A3A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -256;
  v5 = 0;
  v8 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  (*(*a1 + 152))(a1, a2, &v4, a3, a4, 0);
  v11 = v9 + 1;
  sub_1000B96B4(&v11);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1005A3AAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100318B88(va);
  _Unwind_Resume(a1);
}

void sub_1005A3AC0(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018CD8DC();
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
      sub_1018D07CC(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018CD8DC();
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
      sub_1018D06AC(a1);
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
              sub_1002E9770();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
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
                sub_1002E9770();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLWifiService_Type::Notification, CLWifiService_Type::NotificationData, char, CLWifiService_Type::RegInfo>::listClients() [Notification_T = CLWifiService_Type::Notification, NotificationData_T = CLWifiService_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLWifiService_Type::RegInfo]", "%s\n", v16);
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

uint64_t sub_1005A3F9C(uint64_t *a1, uint64_t *a2, __int128 *a3, int *a4, int *a5, int *a6, uint64_t *a7, uint64_t *a8, char *a9, char *a10, int *a11)
{
  v11 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v12 = v11 + 1;
  if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v12)
  {
    v12 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v15 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v15 = v12;
  }

  v25 = a1;
  if (v15)
  {
    sub_10014E350(a1, v15);
  }

  v22 = 0;
  v23 = 88 * v11;
  v24 = (88 * v11);
  sub_1005A4144(88 * v11, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  *&v24 = v24 + 88;
  v16 = a1[1];
  v17 = v23 + *a1 - v16;
  sub_10014E3E4(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  sub_10014E3AC(&v22);
  return v21;
}

void sub_1005A4130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10014E3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A4144(uint64_t a1, uint64_t *a2, __int128 *a3, int *a4, int *a5, int *a6, uint64_t *a7, uint64_t *a8, char *a9, char *a10, int *a11)
{
  v17 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_100007244(&v27, *a3, *(a3 + 1));
  }

  else
  {
    v27 = *a3;
    v28 = *(a3 + 2);
  }

  v18 = *a4;
  v19 = *a5;
  v20 = *a6;
  v21 = *a7;
  v22 = *a8;
  v23 = *a9;
  v24 = *a10;
  v25 = *a11;
  *a1 = v17;
  *(a1 + 8) = v27;
  *(a1 + 24) = v28;
  *(a1 + 32) = v18;
  *(a1 + 36) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v23;
  *(a1 + 65) = v24;
  *(a1 + 68) = v25;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t sub_1005A423C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10014E350(a1, v6);
  }

  v7 = 88 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v10 = *(a2 + 48);
  v9 = *(a2 + 64);
  v11 = *(a2 + 80);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v10;
  *(v7 + 80) = v11;
  *(v7 + 64) = v9;
  *&v20 = 88 * v2 + 88;
  v12 = a1[1];
  v13 = 88 * v2 + *a1 - v12;
  sub_10014E3E4(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_10014E3AC(&v18);
  return v17;
}

void sub_1005A4398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10014E3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A43AC(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 24) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_1005A43FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002886D8(result, a4);
  }

  return result;
}

void sub_1005A4464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000B96B4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A4484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1005A4528(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1005A4578(a1, a2);
  return a1;
}

void sub_1005A4558(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1018D08DC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005A4578(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_10038EB38(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(v2 + 24) = 1;
  }

  return result;
}

__n128 sub_1005A45CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v2;
  result = *(a1 + 64);
  v4 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_1005A45E0(void *a1)
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
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_1002DDC9C(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
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
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_1003EE22C(a1);
}

uint64_t sub_1005A4740(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1005A4798((a1 + 8), a3);
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

void *sub_1005A4798(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005A47F0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005A47F0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005A4878(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1005A4878(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1005A4918(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1005A4918(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1005A4AE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102460EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005A4C68()
{
  if (*(v0 + 96) == 1 && *(v0 + 39) < 0)
  {
    operator delete(*(v0 + 16));
  }

  operator delete();
}

uint64_t sub_1005A4CA4(uint64_t result)
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

uint64_t *sub_1005A4D14(uint64_t a1, int *a2)
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

void sub_1005A4DE8(uint64_t a1, _DWORD **a2, void *a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  for (i = *a2; i != *a3; ++i)
  {
    valuePtr[0] = *i;
    if (valuePtr[0] != -1)
    {
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240704;
          v23 = valuePtr[0];
          v24 = 2050;
          v25 = v10;
          v26 = 2050;
          v27 = v12;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          valuePtr[1] = 67240704;
          valuePtr[2] = valuePtr[0];
          v18 = 2050;
          v19 = v10;
          v20 = 2050;
          v21 = v12;
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = const int *]", "%s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v10, @"CHANNEL", v11);
        CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        CFRelease(v12);
      }
    }
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

void sub_1005A50CC(uint64_t a1, _DWORD **a2, void *a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  for (i = *a2; i != *a3; ++i)
  {
    valuePtr[0] = *i;
    if (valuePtr[0] != -1)
    {
      v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v14 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240704;
          v23 = valuePtr[0];
          v24 = 2050;
          v25 = v10;
          v26 = 2050;
          v27 = v12;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 0))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          valuePtr[1] = 67240704;
          valuePtr[2] = valuePtr[0];
          v18 = 2050;
          v19 = v10;
          v20 = 2050;
          v21 = v12;
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = int *]", "%s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }

      else
      {
        CFDictionaryAddValue(v10, @"CHANNEL", v11);
        CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        CFRelease(v12);
      }
    }
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

void *sub_1005A53B0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
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

void sub_1005A5538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1005A5584(uint64_t a1, _DWORD **a2, void *a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  v9 = *a2;
  if (*a3 != v9)
  {
    do
    {
      valuePtr[0] = *v9;
      if (valuePtr[0] != -1)
      {
        v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v11 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v14 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240704;
            v23 = valuePtr[0];
            v24 = 2050;
            v25 = v10;
            v26 = 2050;
            v27 = v12;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_1018CD58C();
            }

            valuePtr[1] = 67240704;
            valuePtr[2] = valuePtr[0];
            v18 = 2050;
            v19 = v10;
            v20 = 2050;
            v21 = v12;
            v15 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = std::__wrap_iter<int *>]", "%s\n", v15);
            if (v15 != buf)
            {
              free(v15);
            }
          }
        }

        else
        {
          CFDictionaryAddValue(v10, @"CHANNEL", v11);
          CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v10);
          CFRelease(v12);
        }
      }

      ++v9;
    }

    while (v9 != *a3);
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

void sub_1005A5868(uint64_t a1, _DWORD **a2, void *a3, const void *a4, __CFDictionary *a5)
{
  Mutable = CFArrayCreateMutable(0, 24, &kCFTypeArrayCallBacks);
  v9 = *a2;
  if (*a3 != v9)
  {
    do
    {
      valuePtr[0] = *v9;
      if (valuePtr[0] != -1)
      {
        v10 = CFDictionaryCreateMutable(kCFAllocatorDefault, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v11 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          v14 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *buf = 67240704;
            v23 = valuePtr[0];
            v24 = 2050;
            v25 = v10;
            v26 = 2050;
            v27 = v12;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "could not create param for channel %{public}d channelDict %{public}p channelNumber %{public}p", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_1018CD58C();
            }

            valuePtr[1] = 67240704;
            valuePtr[2] = valuePtr[0];
            v18 = 2050;
            v19 = v10;
            v20 = 2050;
            v21 = v12;
            v15 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLWifiService::setScanOptionsChannels(const Iter &, const Iter &, CFNumberRef, CFMutableDictionaryRef) [Iter = std::__wrap_iter<const int *>]", "%s\n", v15);
            if (v15 != buf)
            {
              free(v15);
            }
          }
        }

        else
        {
          CFDictionaryAddValue(v10, @"CHANNEL", v11);
          CFDictionaryAddValue(v10, @"CHANNEL_FLAGS", a4);
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v10);
          CFRelease(v12);
        }
      }

      ++v9;
    }

    while (v9 != *a3);
  }

  CFDictionarySetValue(a5, @"SCAN_CHANNELS", Mutable);
  CFRelease(Mutable);
}

id sub_1005A5B4C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005A5BAC(a1);
}

id sub_1005A5BAC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F794 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0AF8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D08F4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7F794 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D0BF0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_1005A5DC4()
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

uint64_t sub_1005A617C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v43) = 0;
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

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v12)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v43) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v43 & 0x7F) << v23;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v10 = v24++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v25;
            }

LABEL_70:
            v39 = 44;
            break;
          case 2:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            while (1)
            {
              LOBYTE(v43) = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v43 & 0x7F) << v34;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v10 = v35++ >= 9;
              if (v10)
              {
                v28 = 0;
                goto LABEL_76;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v36;
            }

LABEL_76:
            v39 = 40;
            break;
          case 3:
            v43 = 0;
            v15 = [a2 position] + 8;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v43;
            v41 = 8;
            goto LABEL_86;
          default:
            goto LABEL_50;
        }

        *(a1 + v39) = v28;
      }

      else
      {
        if (v12 <= 5)
        {
          if (v12 == 4)
          {
            v43 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v43;
            v41 = 16;
          }

          else
          {
            if (v12 != 5)
            {
              goto LABEL_50;
            }

            v43 = 0;
            v13 = [a2 position] + 8;
            if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v40 = v43;
            v41 = 24;
          }

          goto LABEL_86;
        }

        if (v12 == 6)
        {
          *(a1 + 52) |= 1u;
          v43 = 0;
          v32 = [a2 position] + 8;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v40 = v43;
          v41 = 32;
LABEL_86:
          *(a1 + v41) = v40;
          goto LABEL_87;
        }

        if (v12 != 7)
        {
LABEL_50:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_87;
        }

        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 52) |= 4u;
        while (1)
        {
          LOBYTE(v43) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v43 & 0x7F) << v17;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v10 = v18++ >= 9;
          if (v10)
          {
            LOBYTE(v22) = 0;
            goto LABEL_72;
          }
        }

        v22 = (v19 != 0) & ~[a2 hasError];
LABEL_72:
        *(a1 + 48) = v22;
      }

LABEL_87:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1005A704C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005A7080(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = &off_102461038;
  sub_10183A3AC((a1 + 8), "NatalimetryMaxDelay", &qword_101C7F808, 0);
  *a1 = off_102460FC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = *a2;
  v6 = a2[1];
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0u;
  *(a1 + 201) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  LOBYTE(v8) = 0;
  sub_100126E84((a1 + 217), "LogBinaryNatalimetryOutputs", &v8, 0);
  LODWORD(v8) = -1082130432;
  sub_1004F8200((a1 + 220), "OverrideUserMetsWithMets", &v8, 0);
  LODWORD(v8) = -1082130432;
  sub_1004F8200((a1 + 232), "OverrideRawTruthMetsWithMets", &v8, 0);
  *(a1 + 248) = off_1024556A0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = a1 + 320;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0x10000000000000;
  *(a1 + 256) = 3;
  *(a1 + 344) = off_1024556A0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0x10000000000000;
  *(a1 + 352) = 3;
  *(a1 + 440) = a3;
  sub_100AF35B4(a1 + 448, a3);
  sub_100F23640(a1 + 520);
  *(a1 + 592) = 0;
  v7 = sub_1000D7E48();
  sub_100F29EC4(v7);
}

uint64_t sub_1005A7424(uint64_t a1)
{
  *a1 = off_102460FC8;

  sub_1005A842C((a1 + 520));
  sub_100AF3610(a1 + 448);
  *(a1 + 344) = off_1024556A0;
  sub_1003C93BC(a1 + 408, *(a1 + 416));
  sub_10045E1B0((a1 + 360));
  *(a1 + 248) = off_1024556A0;
  sub_1003C93BC(a1 + 312, *(a1 + 320));
  sub_10045E1B0((a1 + 264));
  sub_100102BC8((a1 + 168));
  sub_100102BC8((a1 + 120));
  sub_10045E1B0((a1 + 72));
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

void sub_1005A7570(uint64_t a1)
{
  sub_1005A7424(a1);

  operator delete();
}

void sub_1005A75B0(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018D0CE8();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Pausing calorimetry processing", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D0CFC();
  }

  *(a1 + 216) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 218) == 1)
  {
    v4 = Current;
    v11[0] = off_1024916D0;
    v12 = 1;
    *&v11[1] = Current;
    v5 = sub_10015ADF4();
    sub_1010CF5BC(v5, v11);
    sub_10152D354(v7);
    sub_101556064(v7);
    v10 |= 1u;
    v9 = v4;
    v6 = v8;
    *(v8 + 12) |= 1u;
    *(v6 + 8) = 1;
    if (qword_102637F48 != -1)
    {
      sub_1018D0DFC();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, v7);
    }

    sub_101532FA8(v7);
  }
}

void sub_1005A7734(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018D0CE8();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resuming calorimetry processing", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D0E24();
  }

  *(a1 + 216) = 0;
  if (*(a1 + 218) == 1)
  {
    v9 = off_1024916D0;
    v11 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = sub_10015ADF4();
    sub_1010CF5BC(v3, &v9);
    sub_10152D354(v5);
    sub_101556064(v5);
    v8 |= 1u;
    v7 = Current;
    v4 = v6;
    *(v6 + 12) |= 1u;
    *(v4 + 8) = 0;
    if (qword_102637F48 != -1)
    {
      sub_1018D0DFC();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, v5);
    }

    sub_101532FA8(v5);
  }
}

uint64_t sub_1005A78A8(uint64_t a1, uint64_t a2)
{
  sub_100F24964(a1 + 520, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(*result + 24);

    return v4();
  }

  return result;
}

void sub_1005A791C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (sub_1000D7E48() == 1 || *(a2 + 248) != 1)
  {
    v11 = sub_1000D7E48();
    v12 = *(a1 + 24);
    v13 = *(a1 + 16);
    *a3 = *a1;
    *(a3 + 16) = v13;
    *(a3 + 32) = *(a1 + 32);
    if (v11 == 1 && v12 == 5)
    {
      *(a3 + 24) = 3;
    }
  }

  else if (*(a1 + 24) == 5)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v7 = *(a2 + 48);
    v6 = (a2 + 48);
    v8 = sub_1010D0044(v7);
    *(a3 + 20) = v8;
    *(a3 + 24) = 0x4006666600000005;
    *(a3 + 32) = 3;
    if (qword_1025D4230 != -1)
    {
      sub_1018D0CE8();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *v6;
      v20 = 134218240;
      v21 = v8;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Calories, set book value, mets, %f, activity, %d", &v20, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D13B0(v6, v8);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    *a3 = *a1;
    *(a3 + 16) = v14;
    *(a3 + 32) = *(a1 + 32);
    v15 = *(a1 + 20);
    if (v15 < 2.1)
    {
      v15 = 2.1;
    }

    *(a3 + 20) = v15;
    v16 = *(a1 + 28);
    if (v16 < 2.1)
    {
      v16 = 2.1;
    }

    *(a3 + 28) = v16;
    if (qword_1025D4230 != -1)
    {
      sub_1018D0CE8();
    }

    v17 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 20);
      v19 = *(a2 + 48);
      v20 = 134218240;
      v21 = v18;
      v22 = 1024;
      v23 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Calories, standing floor applied, %f, activity, %d", &v20, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D1284((a1 + 20), a2);
    }
  }
}

uint64_t sub_1005A7B84(uint64_t a1, _OWORD *a2, double a3)
{
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v6 = *(a1 + 24);
  if (v6 && *(a1 + 28) != 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**a1 + 24))(a3);
    v6 = *(a1 + 24);
  }

  if ((v6 == 1 || *(a1 + 28) == 1) && *(a1 + 64) == 1)
  {
    v8 = sub_1005A875C(*(a1 + 8), v18, a3, *(a1 + 32));
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 28) == 1)
  {
    if (qword_1025D4230 != -1)
    {
      sub_1018D1104();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 67110656;
      v39 = v10;
      v40 = 2048;
      v41 = a3;
      v42 = 1024;
      v43 = v7;
      v44 = 2048;
      v45 = *(&v22 + 1);
      v46 = 1024;
      v47 = v8;
      v48 = 2048;
      v49 = *(&v19 + 1);
      v50 = 1024;
      v51 = *(&v22 + 1) == *(&v19 + 1);
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Comparing output, time, %f, legacy, [%d, %f], new, [%d, %f], equal, %d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018D1104();
      }

      v16 = *(a1 + 48);
      v24 = 67110656;
      v25 = v16;
      v26 = 2048;
      v27 = a3;
      v28 = 1024;
      v29 = v7;
      v30 = 2048;
      v31 = *(&v22 + 1);
      v32 = 1024;
      v33 = v8;
      v34 = 2048;
      v35 = *(&v19 + 1);
      v36 = 1024;
      v37 = *(&v22 + 1) == *(&v19 + 1);
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLCatherineData>>::lookup(CFAbsoluteTime, T &) const [LegacySourceT = CLNatalieInput<CLCatherineData>, T = CLCatherineData, LegacyT = CLCatherineData, ConverterT = void]", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v11 = *(a1 + 24);
  if (!v11)
  {
    v12 = v21;
    goto LABEL_20;
  }

  if (v11 == 1)
  {
    v12 = v18;
    LOBYTE(v7) = v8;
LABEL_20:
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
    v14 = v12[3];
    a2[2] = v12[2];
    a2[3] = v14;
  }

  return v7 & 1;
}

void sub_1005A7EB4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  sub_10001A3E8();
  if (!sub_10001CF3C())
  {
    return;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v12 setTimestamp:*(a5 + 16)];
  [(ALActivityLog *)v12 setCalorieData:objc_alloc_init(ALCMCalorieData)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setActivityType:*(a5 + 24)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setIsStanding:*(a5 + 29)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setUserMets:*(a5 + 32)];
  [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setTruthMets:*(a5 + 40)];
  if (*(a4 + 208) == 1)
  {
    [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setUserMetsSource:a6[6]];
    [(ALCMCalorieData *)[(ALActivityLog *)v12 calorieData] setTruthMetsSource:a6[8]];
    v13 = *a6;
    v14 = [(ALActivityLog *)v12 calorieData];
    LODWORD(v15) = v13;
    [(ALCMCalorieData *)v14 setMetsHR:v15];
    v16 = a6[1];
    v17 = [(ALActivityLog *)v12 calorieData];
    LODWORD(v18) = v16;
    [(ALCMCalorieData *)v17 setMetsWR:v18];
    v19 = a6[2];
    v20 = [(ALActivityLog *)v12 calorieData];
    LODWORD(v21) = v19;
    [(ALCMCalorieData *)v20 setMetsFM:v21];
  }

  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v11);
  v22 = *(a3 + 3392);
  if (v22 == 1)
  {
    v23 = (a3 + 3432);
LABEL_8:
    if (*v23 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v22)
  {
    v23 = (*(a3 + 3368) + 80);
    goto LABEL_8;
  }

LABEL_9:
  v24 = objc_autoreleasePoolPush();
  v25 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v25 setTimestamp:a1];
  [(ALActivityLog *)v25 setOdometer:objc_alloc_init(ALCLOdometer)];
  v26 = *(a3 + 432);
  v27 = [(ALActivityLog *)v25 odometer];
  *&v28 = v26;
  [(ALCLOdometer *)v27 setDistance:v28];
  v29 = *(a3 + 456);
  v30 = [(ALActivityLog *)v25 odometer];
  *&v31 = v29;
  [(ALCLOdometer *)v30 setAccuracy:v31];
  v32 = *(a3 + 448);
  v33 = [(ALActivityLog *)v25 odometer];
  *&v34 = v32;
  [(ALCLOdometer *)v33 setGpsAltitude:v34];
  v35 = *(a3 + 416);
  v36 = [(ALActivityLog *)v25 odometer];
  *&v37 = v35;
  [(ALCLOdometer *)v36 setSpeed:v37];
  v38 = *(a3 + 424);
  v39 = [(ALActivityLog *)v25 odometer];
  *&v40 = v38;
  [(ALCLOdometer *)v39 setRawSpeed:v40];
  v41 = *(a3 + 440);
  v42 = [(ALActivityLog *)v25 odometer];
  *&v43 = v41;
  [(ALCLOdometer *)v42 setOdometer:v43];
  v44 = *(a3 + 464);
  v45 = [(ALActivityLog *)v25 odometer];
  *&v46 = v44;
  [(ALCLOdometer *)v45 setGpsSpeedAccuracy:v46];
  [(ALCLOdometer *)[(ALActivityLog *)v25 odometer] setTimestampGps:*(a3 + 472)];
  [(ALCLOdometer *)[(ALActivityLog *)v25 odometer] setQuality:*(a3 + 480)];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v24);
LABEL_10:
  v47 = *(a3 + 3464);
  if (v47 == 1)
  {
    v48 = (a3 + 3504);
LABEL_14:
    if (*v48 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!v47)
  {
    v48 = (*(a3 + 3440) + 80);
    goto LABEL_14;
  }

LABEL_15:
  v49 = objc_autoreleasePoolPush();
  v50 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v50 setTimestamp:a1];
  [(ALActivityLog *)v50 setElevation:objc_alloc_init(ALCMElevation)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setElevationAscended:*(a3 + 504)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setElevationDescended:*(a3 + 508)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setGradeType:*(a3 + 512)];
  v51 = *(a3 + 520);
  v52 = [(ALActivityLog *)v50 elevation];
  *&v53 = v51;
  [(ALCMElevation *)v52 setVerticalSpeed:v53];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setRawGradeType:*(a3 + 512)];
  [(ALCMElevation *)[(ALActivityLog *)v50 elevation] setSource:*(a3 + 528)];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v49);
LABEL_16:
  v54 = *(a3 + 3320);
  if (v54 == 1)
  {
    v55 = (a3 + 3360);
LABEL_20:
    if (*v55 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v54)
  {
    v55 = (*(a3 + 3296) + 80);
    goto LABEL_20;
  }

LABEL_21:
  v56 = objc_autoreleasePoolPush();
  v57 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v57 setTimestamp:a1];
  [(ALActivityLog *)v57 setStairClimbingModel:objc_alloc_init(ALCLStairClimbingModel)];
  v58 = *(a3 + 200);
  v59 = [(ALActivityLog *)v57 stairClimbingModel];
  LODWORD(v60) = v58;
  [(ALCLStairClimbingModel *)v59 setMachineFrequency:v60];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v56);
  v54 = *(a3 + 3320);
LABEL_22:
  if (v54 == 1)
  {
    v61 = (a3 + 3360);
LABEL_26:
    if (*v61 != 1)
    {
      return;
    }

    goto LABEL_27;
  }

  if (!v54)
  {
    v61 = (*(a3 + 3296) + 80);
    goto LABEL_26;
  }

LABEL_27:
  v62 = objc_autoreleasePoolPush();
  v63 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v63 setTimestamp:a1];
  [(ALActivityLog *)v63 setRowingModel:objc_alloc_init(ALCLRowingModel)];
  v64 = *(a3 + 212);
  v65 = [(ALActivityLog *)v63 rowingModel];
  LODWORD(v66) = v64;
  [(ALCLRowingModel *)v65 setStrokePower:v66];
  v67 = *(a3 + 208);
  v68 = [(ALActivityLog *)v63 rowingModel];
  LODWORD(v69) = v67;
  [(ALCLRowingModel *)v68 setStrokeAmp:v69];
  v70 = *(a3 + 204);
  v71 = [(ALActivityLog *)v63 rowingModel];
  LODWORD(v72) = v70;
  [(ALCLRowingModel *)v71 setStrokeFrequency:v72];
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];

  objc_autoreleasePoolPop(v62);
}

uint64_t sub_1005A842C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 36;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 73;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_1005A84D8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 512;
  }

  a1[4] = v6;
}

void *sub_1005A8588(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_1003EE744(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1003112A0(a1, &v10);
}

void sub_1005A8710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A875C(uint64_t *a1, _OWORD *a2, double a3, double a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_1011FE628(a1, &v14, a3 - a4, a3 + a4);
  v6 = v14;
  if (v14 != v15)
  {
    v7 = (v14 + 64);
    v8 = v14;
    if (v14 + 64 != v15)
    {
      v8 = v14;
      do
      {
        if (vabdd_f64(a3, v7[5]) < vabdd_f64(a3, v8[5]))
        {
          v8 = v7;
        }

        v7 += 8;
      }

      while (v7 != v15);
    }

    if (v8 != v15)
    {
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(v8 + 3);
      a2[2] = *(v8 + 2);
      a2[3] = v11;
      *a2 = v9;
      a2[1] = v10;
      v12 = 1;
      if (!v6)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  if (v14)
  {
LABEL_11:
    v15 = v6;
    operator delete(v6);
  }

  return v12;
}

void sub_1005A8824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005A8840(void *a1)
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

void sub_1005A89C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005A8A14()
{
  __cxa_atexit(sub_1005A704C, aAcc800fp, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp, dword_100000000);
}

void sub_1005A8AEC()
{
  if (!qword_102636F38)
  {
    sub_1005A8A7C();
  }
}

void sub_1005A9204(_Unwind_Exception *a1)
{
  sub_100506B88((v1 + v7));
  sub_1005AF7EC(v1 + 1734, 0);
  sub_100F2227C(v1 + v6);
  nullsub_34(v1 + v5);
  sub_100C572F8(v1 + v4);
  sub_100ADEE24(v1 + v3);
  sub_1005AF190((v1 + 1606));
  v9 = v1[246];
  v1[246] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v1[245];
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = v1[243];
  if (v11)
  {
    sub_100008080(v11);
  }

  sub_1004F0990(v2, 0);
  sub_100F57E68(v1);
  _Unwind_Resume(a1);
}

void sub_1005A935C(void *a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    v3 = sub_100011660();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1005AB764;
    v14[3] = &unk_102449A78;
    v14[4] = a1;
    sub_10017A794(v3, v14);
    return;
  }

  if (a1[242])
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v4 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Close hid driver interface", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D1874();
    }

    v5 = a1 + 239;
    v6 = a1[239];
    v7 = a1[240];
    if (v7)
    {
      (*(*v7 + 72))(a1[240], 0);
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else if (!v6)
    {
      *(a1[242] + 8) = 0;
      *v5 = 0;
      a1[240] = 0;
      return;
    }

    ((*v6)->Release)(v6);
    IODestroyPlugInInterface(v6);
LABEL_15:
    *(a1[242] + 8) = 0;
    *v5 = 0;
    a1[240] = 0;
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v8 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[239];
      v10 = a1[240];
      *buf = 134218752;
      v24 = v6;
      v25 = 2048;
      v26 = v7;
      v27 = 2048;
      v28 = v9;
      v29 = 2048;
      v30 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Closed hid driver interface, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4210 != -1)
      {
        sub_1018D1768();
      }

      v11 = a1[239];
      v12 = a1[240];
      v15 = 134218752;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::closeHidDriverInterface()", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

void sub_1005A967C(uint64_t a1, void *a2)
{
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *v55 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Open hid driver interface,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D1958(a2);
  }

  Current = CFRunLoopGetCurrent();
  sub_100011660();
  if (Current != sub_10018D3EC())
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v6 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "openHidDriverInterface should be called from motion thread", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D1A54();
    }

    v7 = sub_100011660();
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1005AB754;
    v38[3] = &unk_102460CC8;
    v38[4] = a1;
    v39 = a2;
    sub_10017A794(v7, v38);
    return;
  }

  v8 = *(a1 + 1936);
  if (!v8)
  {
    return;
  }

  theInterface = 0;
  valuePtr = 0;
  v41 = 0;
  v9 = sub_10026E634(v8);
  if (v9)
  {
    v10 = v9;
    RegistryID = IOHIDServiceClientGetRegistryID(v9);
    if (RegistryID)
    {
      CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
      if (valuePtr)
      {
        theScore = 0;
        v12 = IORegistryEntryIDMatching(valuePtr);
        MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v12);
        if (MatchingService)
        {
          v14 = MatchingService;
          v15 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x3Bu, 0xC5u, 0xCCu, 0x87u, 0x84u, 0x5Eu, 0x48u, 0xABu, 0xA9u, 0xC2u, 0x94u, 0x36u, 0, 0x1Bu, 0xA6u, 0x8Au);
          v16 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
          v17 = IOCreatePlugInInterfaceForService(v14, v15, v16, &theInterface, &theScore);
          if (v17)
          {
            v18 = v17;
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v19 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
            {
              *buf = 67240192;
              *v55 = v18;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "Unable to create plugin interface: 0x%{public}x", buf, 8u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D1B38(v18);
            }

            return;
          }

          IOObjectRelease(v14);
          v24 = theInterface;
          QueryInterface = (*theInterface)->QueryInterface;
          v26 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x6Eu, 0xBEu, 0xBAu, 0x6Eu, 9u, 0x1Eu, 0x45u, 0x2Eu, 0x82u, 0xEAu, 0x29u, 0x79u, 0x81u, 0x6Fu, 0xB1u, 0xB5u);
          v27 = CFUUIDGetUUIDBytes(v26);
          if ((QueryInterface)(v24, *&v27.byte0, *&v27.byte8, &v41))
          {
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v28 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "Unable to set up query interface", buf, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D1C30();
            }

LABEL_60:
            if (theInterface)
            {
              ((*theInterface)->Release)(theInterface);
              IODestroyPlugInInterface(theInterface);
            }

            return;
          }

          if ((*(*v41 + 64))(v41, a2))
          {
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v29 = qword_1025D4218;
            if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
            {
              *buf = 67240450;
              *v55 = 0;
              *&v55[4] = 2114;
              *&v55[6] = v10;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "Unable to create plugin interface: kr:%{public}x service:%{public}@", buf, 0x12u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018D1D14();
            }

            if (v41)
            {
              (*(*v41 + 72))(v41, 0);
            }

            goto LABEL_60;
          }

          if (qword_1025D4210 != -1)
          {
            sub_1018D1768();
          }

          v30 = qword_1025D4218;
          if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(a1 + 1912);
            v32 = *(a1 + 1920);
            *buf = 134219008;
            *v55 = valuePtr;
            *&v55[8] = 2048;
            *&v55[10] = v31;
            v56 = 2048;
            v57 = v32;
            v58 = 2048;
            v59 = theInterface;
            v60 = 2048;
            v61 = v41;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "Opened hid driver interface, registryID %llx, {cfPlugInInterface, hidDriverInterface} was then {%p,%p}, is now {%p,%p}", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4210 != -1)
            {
              sub_1018D1768();
            }

            v35 = *(a1 + 1912);
            v36 = *(a1 + 1920);
            v44 = 134219008;
            v45 = valuePtr;
            v46 = 2048;
            v47 = v35;
            v48 = 2048;
            v49 = v36;
            v50 = 2048;
            v51 = theInterface;
            v52 = 2048;
            v53 = v41;
            v37 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::openHidDriverInterface(BOOL)", "%s\n", v37);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          v33 = theInterface;
          *(*(a1 + 1936) + 8) = valuePtr;
          *(a1 + 1912) = v33;
          v34 = v41;
          *(a1 + 1920) = v41;
          sub_1005AB660((a1 + 192), v34);
          if (*(a1 + 1920))
          {
            if (a2)
            {
              sub_1005AB6D4(a1);
            }

            else
            {
              sub_1005AB714(a1);
            }
          }
        }

        else
        {
          if (qword_1025D4210 != -1)
          {
            sub_1018D1768();
          }

          v23 = qword_1025D4218;
          if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "Service doesn't exist", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018D1E1C();
          }
        }
      }

      else
      {
        if (qword_1025D4210 != -1)
        {
          sub_1018D1768();
        }

        v22 = qword_1025D4218;
        if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "Can't get cma registry ID", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D1F00();
        }
      }
    }

    else
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1768();
      }

      v21 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "IOHIDServiceClientGetRegistryID query for cma service failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D1FE4();
      }
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1768();
    }

    v20 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "IoHidDevice is not ready", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D20C8();
    }

    *(a1 + 12845) = 1;
  }
}

uint64_t sub_1005A9F04(void *a1)
{
  sub_100011660();
  sub_10001160C();
  v2 = a1[241];
  sub_1010FA2B0(v2);
  sub_1010FA55C(v2);
  v3 = *(*a1 + 568);

  return v3(a1);
}

void sub_1005A9F88(void *a1, char a2)
{
  v4 = sub_100011660();
  sub_100185AC0(v4, &v32);
  v31 = 1;
  sub_10005BBE4(v32, "OscarLogLevel", &v31);
  if (qword_1025D4210 != -1)
  {
    sub_1018D1768();
  }

  v5 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v36 = v31;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "spuLogLevel,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D1724(buf);
    v34[0] = 67109120;
    v34[1] = v31;
    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::sendInitialConfig(BOOL)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v6 = (*(*a1 + 192))(a1);
  v30 = 0;
  sub_10001CB4C(v32, "OscarActivityForceCodeTransition", &v30 + 1);
  sub_10001CB4C(v32, "OscarStepCountingForceCodeTransition", &v30);
  sub_1004FB1EC(v32, "UserConfig", a1 + 172);
  buf[0] = 0;
  sub_100126E84(v29, "LogCompassCalibration", buf, 0);
  buf[0] = 0;
  sub_100126E84(v28, "LogCompass", buf, 0);
  *(a1 + 12844) = (v28[1] | v29[1]) & 1;
  buf[0] = 0;
  sub_100126E84(v27, "IgnoreDynamicGyroBiasEstimator", buf, 0);
  v26 = sub_1000F42C0() ^ 1;
  sub_10001CB4C(v32, "ConsumeBasebandSpeedInActivity", &v26);
  v34[0] = 1114636288;
  sub_1004F8200(buf, "ViewObstructedReplyIntervalSecs", v34, 0);
  v24 = a2;
  v25 = v6;
  LOBYTE(v34[0]) = 0;
  sub_10001CB4C(v32, "EnableComputeWhileStatic", v34);
  v7 = sub_100F53BC8();
  v8 = HIBYTE(v30);
  v9 = v30;
  v10 = v31;
  v23 = v27[1];
  sub_10001A3E8();
  v11 = sub_10071CB28();
  v12 = v26;
  sub_10001A3E8();
  v13 = sub_10071C6F4();
  sub_10001A3E8();
  v14 = sub_10071C750();
  sub_10001A3E8();
  v15 = sub_10071C7A4();
  sub_10001A3E8();
  v16 = sub_10071C814();
  v17 = v36;
  v18 = v34[0];
  *(a1 + 217) = 6;
  *(a1 + 218) = v7;
  *(a1 + 219) = v25;
  *(a1 + 220) = v8;
  *(a1 + 221) = v9;
  *(a1 + 222) = 0;
  *(a1 + 226) = 0;
  *(a1 + 227) = v10;
  *(a1 + 228) = 0;
  *(a1 + 235) = 0;
  *(a1 + 243) = v23;
  *(a1 + 244) = v11;
  *(a1 + 253) = 0;
  *(a1 + 245) = 0;
  *(a1 + 263) = v12;
  *(a1 + 132) = 0;
  *(a1 + 266) = v13;
  *(a1 + 267) = 0;
  *(a1 + 269) = v14;
  *(a1 + 270) = 0;
  *(a1 + 271) = v15;
  *(a1 + 272) = v16;
  *(a1 + 273) = 0;
  *(a1 + 274) = v17;
  *(a1 + 278) = 0;
  *(a1 + 282) = v18;
  v19 = sub_100023B30();
  v20 = sub_100177B18();
  if ((v19 & 0x40000000) != 0)
  {
    v21 = 34;
  }

  else
  {
    v21 = 32;
  }

  if ((v19 & 0x40000008) != 0)
  {
    v21 |= 0x40u;
  }

  sub_100F53C1C(a1, (v19 >> 10) & 8 | v19 & 0x10 | (v20 >> 2) & 4 | v21, v24);
  if ((v24 & 1) == 0)
  {
    sub_1005AA4D4(a1);
    (*(*a1 + 552))(a1, 1);
    sub_1005AA544();
  }

  sub_1005AA6F0(a1);
  if (v33)
  {
    sub_100008080(v33);
  }
}

void sub_1005AA45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005AA4D4(void *result)
{
  v1 = result[73];
  if (v1)
  {
    v2 = result;
    [*(v1 + 16) register:*(v1 + 8) forNotification:1 registrationInfo:0];
    [*(v2[73] + 16) register:*(v2[73] + 8) forNotification:2 registrationInfo:0];
    v3 = v2[73];
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);

    return [v4 register:v5 forNotification:3 registrationInfo:0];
  }

  return result;
}

void sub_1005AA6F0(uint64_t a1)
{
  v59 = 0;
  v2 = sub_1000206B4();
  if (sub_1003045C8(v2, @"CompassCalibration", &v59))
  {
    [objc_msgSend(v59 objectForKeyedSubscript:{@"Time", "floatValue"}];
    v4 = v3;
    v5 = [v59 objectForKeyedSubscript:@"Bias"];
    v6 = [v59 objectForKeyedSubscript:@"Scale"];
    v7 = v4;
    if (*(a1 + 12844) == 1)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D239C();
      }

      v8 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(v5 objectAtIndexedSubscript:{0), "floatValue"}];
        v10 = v9;
        [objc_msgSend(v5 objectAtIndexedSubscript:{1), "floatValue"}];
        v12 = v11;
        [objc_msgSend(v5 objectAtIndexedSubscript:{2), "floatValue"}];
        v14 = v13;
        [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
        *buf = 134219520;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        *&buf[24] = v14;
        v61 = 2048;
        v62 = (1.0 / v15);
        v63 = 1024;
        v64 = 4;
        v65 = 2048;
        v66 = 0x3FD1EB8520000000;
        v67 = 2048;
        v68 = v7;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] logging initial persisted calibration: bias.x,%.2f,.y,%.2f,.z,%.2f,radius,%.2f,level,%d,quality,%.2f,cftime,%.3f", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D42E0 != -1)
        {
          sub_1018D239C();
        }

        [objc_msgSend(v5 objectAtIndexedSubscript:{0), "floatValue"}];
        v52 = v51;
        [objc_msgSend(v5 objectAtIndexedSubscript:{1), "floatValue"}];
        v54 = v53;
        [objc_msgSend(v5 objectAtIndexedSubscript:{2), "floatValue"}];
        v56 = v55;
        [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
        v72 = 134219520;
        v73 = v52;
        v74 = 2048;
        v75 = v54;
        v76 = 2048;
        v77 = v56;
        v78 = 2048;
        v79 = (1.0 / v57);
        v80 = 1024;
        v81 = 4;
        v82 = 2048;
        v83 = 0x3FD1EB8520000000;
        v84 = 2048;
        v85 = v7;
        v58 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLSPU::retrieveCachedCompassCalibration()", "%s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      sub_10152D354(buf);
      sub_1015555B4(buf);
      Current = CFAbsoluteTimeGetCurrent();
      v71 |= 1u;
      v69 = Current;
      v17 = v70;
      v18 = *(a1 + 352);
      *(v70 + 80) |= 1u;
      *(v17 + 8) = v18;
      v19 = v70;
      [objc_msgSend(v5 objectAtIndexedSubscript:{0), "floatValue"}];
      *(v19 + 80) |= 2u;
      *(v19 + 16) = v20;
      v21 = v70;
      [objc_msgSend(v5 objectAtIndexedSubscript:{1), "floatValue"}];
      *(v21 + 80) |= 4u;
      *(v21 + 20) = v22;
      v23 = v70;
      [objc_msgSend(v5 objectAtIndexedSubscript:{2), "floatValue"}];
      *(v23 + 80) |= 8u;
      *(v23 + 24) = v24;
      v25 = v70;
      [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
      *(v25 + 80) |= 0x2000u;
      *(v25 + 64) = v26;
      v27 = v70;
      [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
      *(v27 + 80) |= 0x4000u;
      *(v27 + 68) = v28;
      v29 = v70;
      [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
      *(v29 + 80) |= 0x8000u;
      *(v29 + 72) = v30;
      v31 = v70;
      *(v70 + 80) |= 0x1000u;
      *(v31 + 60) = 1049582633;
      v32 = v70;
      *(v70 + 80) |= 0x20u;
      *(v32 + 32) = 2139095039;
      v33 = v70;
      *(v70 + 80) |= 0x40u;
      *(v33 + 36) = 0;
      v34 = v70;
      *(v70 + 80) |= 0x80u;
      *(v34 + 40) = 0;
      v35 = v70;
      *(v70 + 80) |= 0x200u;
      *(v35 + 48) = 0;
      v36 = v70;
      *(v70 + 80) |= 0x400u;
      *(v36 + 52) = 0;
      v37 = v70;
      *(v70 + 80) |= 0x800u;
      *(v37 + 56) = 0;
      v38 = v70;
      *(v70 + 80) |= 0x10u;
      *(v38 + 28) = 4;
      v39 = v70;
      *(v70 + 80) |= 0x20000u;
      *(v39 + 77) = 0;
      v40 = v70;
      *(v70 + 80) |= 0x10000u;
      *(v40 + 76) = 1;
      v41 = v70;
      *(v70 + 80) |= 0x100u;
      *(v41 + 44) = 0;
      if (qword_102637F48 != -1)
      {
        sub_1018D24B0();
      }

      if (qword_102637F50)
      {
        sub_1017F73BC(qword_102637F50, buf);
      }

      sub_101532FA8(buf);
    }

    if (CFAbsoluteTimeGetCurrent() + -3600.0 <= v7)
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D239C();
      }

      v44 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] restoring calibration,%@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D24D8();
      }

      [objc_msgSend(v5 objectAtIndexedSubscript:{0), "floatValue"}];
      *&buf[1] = v45;
      [objc_msgSend(v5 objectAtIndexedSubscript:{1), "floatValue"}];
      *&buf[5] = v46;
      [objc_msgSend(v5 objectAtIndexedSubscript:{2), "floatValue"}];
      *&buf[9] = v47;
      [objc_msgSend(v6 objectAtIndexedSubscript:{0), "floatValue"}];
      *&buf[13] = v48;
      [objc_msgSend(v6 objectAtIndexedSubscript:{1), "floatValue"}];
      *&buf[17] = v49;
      [objc_msgSend(v6 objectAtIndexedSubscript:{2), "floatValue"}];
      *&buf[21] = v50;
      *&buf[25] = 1049582633;
      sub_1005AFB7C(a1 + 192, buf, 0);
    }

    else
    {
      if (qword_1025D42E0 != -1)
      {
        sub_1018D239C();
      }

      v42 = qword_1025D42E8;
      if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] stale persistent calibration,%@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D25D4();
      }
    }
  }

  else
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v43 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] no persistent calibration found", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D23C4();
    }
  }
}

void sub_1005AAEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AAEE4(uint64_t a1)
{
  *a1 = off_1024610E0;
  *(a1 + 32) = off_1024615C0;
  *(a1 + 40) = off_102461608;
  *(a1 + 48) = off_102461640;
  *(a1 + 56) = off_102461668;
  *(a1 + 64) = off_1024616B8;
  *(a1 + 72) = off_1024616F0;
  *(a1 + 80) = off_102461730;
  *(a1 + 88) = off_102461768;
  *(a1 + 96) = off_102461798;
  *(a1 + 104) = off_1024617E8;
  *(a1 + 112) = off_102461810;
  *(a1 + 120) = off_102461878;
  *(a1 + 128) = off_1024618A0;
  *(a1 + 136) = off_1024618C8;
  *(a1 + 152) = off_1024618F0;
  v2 = *(a1 + 1944);
  v3 = 0uLL;
  *(a1 + 1936) = 0u;
  if (v2)
  {
    sub_100008080(v2);
    v3 = 0uLL;
  }

  v4 = *(a1 + 1960);
  *(a1 + 1952) = v3;
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_1004F0990((a1 + 1928), 0);

  sub_100506B88((a1 + 13880));
  sub_1005AF7EC((a1 + 13872), 0);
  sub_100F2227C(a1 + 13800);
  nullsub_34(a1 + 13704);
  sub_100C572F8(a1 + 13272);
  sub_100ADEE24(a1 + 13040);
  if (*(a1 + 12959) < 0)
  {
    operator delete(*(a1 + 12936));
  }

  if (*(a1 + 12887) < 0)
  {
    operator delete(*(a1 + 12864));
  }

  v5 = *(a1 + 1968);
  *(a1 + 1968) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 1960);
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = *(a1 + 1944);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1004F0990((a1 + 1928), 0);

  return sub_100F57E68(a1);
}

void sub_1005AB2A4(uint64_t a1)
{
  sub_1005AAEE4(a1);

  operator delete();
}

void sub_1005AB2DC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 32);

  operator delete();
}

void sub_1005AB318(uint64_t a1)
{
  sub_1005AAEE4(a1 - 40);

  operator delete();
}

void sub_1005AB354(uint64_t a1)
{
  sub_1005AAEE4(a1 - 48);

  operator delete();
}

void sub_1005AB390(uint64_t a1)
{
  sub_1005AAEE4(a1 - 56);

  operator delete();
}

void sub_1005AB3CC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 64);

  operator delete();
}

void sub_1005AB408(uint64_t a1)
{
  sub_1005AAEE4(a1 - 72);

  operator delete();
}

void sub_1005AB444(uint64_t a1)
{
  sub_1005AAEE4(a1 - 80);

  operator delete();
}

void sub_1005AB480(uint64_t a1)
{
  sub_1005AAEE4(a1 - 88);

  operator delete();
}

void sub_1005AB4BC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 96);

  operator delete();
}

void sub_1005AB4F8(uint64_t a1)
{
  sub_1005AAEE4(a1 - 104);

  operator delete();
}

void sub_1005AB534(uint64_t a1)
{
  sub_1005AAEE4(a1 - 112);

  operator delete();
}

void sub_1005AB570(uint64_t a1)
{
  sub_1005AAEE4(a1 - 120);

  operator delete();
}

void sub_1005AB5AC(uint64_t a1)
{
  sub_1005AAEE4(a1 - 128);

  operator delete();
}

void sub_1005AB5E8(uint64_t a1)
{
  sub_1005AAEE4(a1 - 136);

  operator delete();
}

void sub_1005AB624(uint64_t a1)
{
  sub_1005AAEE4(a1 - 152);

  operator delete();
}

void sub_1005AB660(NSObject **a1, uint64_t a2)
{
  v2 = *a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005AF1D4;
  v3[3] = &unk_10245D2A8;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

uint64_t sub_1005AB6D4(uint64_t a1)
{
  sub_100011660();
  sub_10001160C();

  return sub_10026C8E8(a1, 1);
}

uint64_t sub_1005AB714(uint64_t a1)
{
  sub_100011660();
  sub_10001160C();

  return sub_10026C8E8(a1, 0);
}

uint64_t sub_1005AB76C(_BYTE *a1)
{
  sub_100011660();
  sub_10001160C();
  a1[216] = 1;
  v2 = *(*a1 + 552);

  return v2(a1, 1);
}

void sub_1005AB7DC(uint64_t a1)
{
  sub_100011660();
  sub_10001160C();
  if (*(a1 + 12845) == 1 && sub_10026E634(*(a1 + 1936)))
  {
    *(a1 + 12845) = 0;
    sub_1005A935C(a1);

    sub_1005A967C(a1, 0);
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v2 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      v3 = sub_10026E634(*(a1 + 1936));
      v4 = 134283521;
      v5 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "cma reopening HID driver interface for service %{private}p, this is not expected", &v4, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D2898(a1);
    }
  }
}

void sub_1005AB928(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005AB9B0;
  v5[3] = &unk_102449BC0;
  v5[4] = v3;
  v5[5] = a1;
  sub_100042800(v4, v5);
}

void sub_1005AB9B0(uint64_t a1)
{
  v2 = *(a1 + 40);

  *(v2 + 1976) = [*(a1 + 32) copy];
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void sub_1005AB9FC(uint64_t a1, char *a2)
{
  v5 = 18;
  v6 = a2;
  v7 = -1;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[CLSPU] Setting BufferedAccelSampleRate,%lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D29A4(a2);
  }

  sub_1005AF9B0(a1 + 192, &v5, 0);
}

void sub_1005ABB04(uint64_t a1, char *a2)
{
  v5 = 18;
  v6 = -1;
  v7 = a2;
  v8 = -1;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[CLSPU] Setting BufferedGyroSampleRate,%lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D2A9C(a2);
  }

  sub_1005AF9B0(a1 + 192, &v5, 0);
}

void sub_1005ABC0C(uint64_t a1, char *a2)
{
  v5 = 18;
  v6 = -1;
  v7 = a2;
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v4 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[CLSPU] Setting BufferedPressureSampleRate,%lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D2B94(a2);
  }

  sub_1005AF9B0(a1 + 192, &v5, 0);
}

void sub_1005ABD14(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005ABD9C;
  v5[3] = &unk_102449BC0;
  v5[4] = v3;
  v5[5] = a1;
  sub_100042800(v4, v5);
}

void sub_1005ABD9C(uint64_t a1)
{
  v2 = *(a1 + 40);

  *(v2 + 1984) = [*(a1 + 32) copy];
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void sub_1005ABDE8(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005ABE70;
  v5[3] = &unk_102449BC0;
  v5[4] = v3;
  v5[5] = a1;
  sub_100042800(v4, v5);
}

void sub_1005ABE70(uint64_t a1)
{
  v2 = *(a1 + 40);

  *(v2 + 12832) = [*(a1 + 32) copy];
  v3 = *(a1 + 32);

  _Block_release(v3);
}

BOOL sub_1005ABEBC(uint64_t a1)
{
  v1 = *(a1 + 1928);
  if (v1)
  {
    Current = CFRunLoopGetCurrent();
    sub_100011660();
    if (Current == sub_10018D3EC())
    {
      v5 = 0.005;
      if (!*(a1 + 225))
      {
        v5 = 0.0;
      }

      sub_10017A1F4(*(a1 + 1952), v5);
      v16 = 3;
      v6 = *(a1 + 226);
      HIBYTE(v16) = *(a1 + 226);
      if (qword_1025D42C0 != -1)
      {
        sub_1018D2C8C();
      }

      v7 = qword_1025D42C8;
      if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v18) = v6;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "[CLSPU] Sending CameraDebug command %hhu", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D2CA0(v6);
      }

      v15 = 0;
      v14 = 4;
      v8 = sub_1010FAC50(*(a1 + 1928), &v16, 2, &v15, &v14);
      if (v8)
      {
        v9 = v8;
        if (qword_1025D42C0 != -1)
        {
          sub_1018D2D9C();
        }

        v10 = qword_1025D42C8;
        if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_ERROR))
        {
          v11 = mach_error_string(v9);
          *buf = 136315138;
          v18 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "[CLSPU] Send command failed %s", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D2DC4(v9);
        }
      }
    }

    else
    {
      v4 = sub_100011660();
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1005AC0FC;
      v13[3] = &unk_102449A78;
      v13[4] = a1;
      sub_10017A794(v4, v13);
    }
  }

  return v1 != 0;
}

void sub_1005AC164(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);
}

uint64_t sub_1005AC1AC(uint64_t a1)
{
  if (qword_1025D4210 != -1)
  {
    sub_1018D1710();
  }

  v2 = qword_1025D4218;
  if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "SPU rejected configuration. resending.", v4, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018D3304();
  }

  return (*(*a1 + 552))(a1, 0);
}

uint64_t sub_1005AC280(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D42E0 != -1)
  {
    sub_1018D33E8();
  }

  v6 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v2 + 5);
    v8 = *(v2 + 9);
    v9 = *(v2 + 13);
    v10 = *(v2 + 17);
    v11 = *(v2 + 21);
    v12 = *(v2 + 25);
    v13 = *(v2 + 53);
    v14 = *(v2 + 1);
    v15 = *(v2 + 2);
    v16 = *(v2 + 4);
    v17 = *(v2 + 73);
    v18 = *(v2 + 77);
    v19 = *(v2 + 81);
    v20 = *(v2 + 85);
    *buf = 134221312;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    *&buf[22] = 2048;
    *&buf[24] = v9;
    *v68 = 2048;
    *&v68[2] = v10;
    *&v68[10] = 2048;
    *&v68[12] = v11;
    *&v68[20] = 2048;
    *&v68[22] = v12;
    *&v68[30] = 2050;
    *v69 = v13;
    *&v69[8] = 1026;
    *&v69[10] = v14;
    *&v69[14] = 1026;
    *&v69[16] = v15;
    *&v69[20] = 1026;
    *&v69[22] = v16;
    v70 = 2050;
    v71 = v17;
    v72 = 2050;
    v73 = v18;
    v74 = 2050;
    v75 = v19;
    v76 = 2050;
    v77 = v20;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[CompassCalibration] bias.x,%f,.y,%f,.z,%f,biasEstVar.x,%f,.y,%f,.z,%f,quality,%{public}f,level,%{public}d,saturations,%{public}d,apAwake,%{public}d,temperature,%{public}f,minTemperatureSinceLastCal,%{public}f,maxTemperatureSinceLastCal,%{public}f,avgTemperatureSinceLastCal,%{public}f", buf, 0x82u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D33FC(v2);
  }

  if (*(v2 + 1) < 4)
  {
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v30 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "[CompassCalibration] clearing persistent calibration", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D35E0();
    }

    v31 = sub_1000206B4();
    sub_1004FA94C(v31);
  }

  else if (*(v2 + 53) > 0.28)
  {
    v83[0] = @"Bias";
    LODWORD(v21) = *(v2 + 5);
    v82[0] = [NSNumber numberWithFloat:v21];
    LODWORD(v22) = *(v2 + 9);
    v82[1] = [NSNumber numberWithFloat:v22];
    LODWORD(v23) = *(v2 + 13);
    v82[2] = [NSNumber numberWithFloat:v23];
    v84[0] = [NSArray arrayWithObjects:v82 count:3];
    v83[1] = @"Scale";
    LODWORD(v24) = *(v2 + 29);
    v81[0] = [NSNumber numberWithFloat:v24];
    LODWORD(v25) = *(v2 + 33);
    v81[1] = [NSNumber numberWithFloat:v25];
    LODWORD(v26) = *(v2 + 37);
    v81[2] = [NSNumber numberWithFloat:v26];
    v84[1] = [NSArray arrayWithObjects:v81 count:3];
    v83[2] = @"Time";
    v84[2] = [NSNumber numberWithDouble:Current];
    v27 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:3];
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v28 = qword_1025D42E8;
    if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "[CompassCalibration] persisting calibration,%@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D36CC();
    }

    v29 = sub_1000206B4();
    sub_1003046B4(v29);
  }

  if (*(v4 + 12844) == 1)
  {
    v61[0] = off_1024910A0;
    v32 = *(v4 + 352);
    *&v61[1] = Current;
    v61[3] = v32;
    *&v33 = *(v2 + 33);
    *(&v33 + 1) = *(v2 + 53);
    *&v34 = *(v2 + 61);
    *(&v34 + 1) = *(v2 + 41);
    *&v35 = *(v2 + 5);
    DWORD2(v35) = *(v2 + 13);
    HIDWORD(v35) = *(v2 + 29);
    v62 = v35;
    v63 = v33;
    v64 = v34;
    v65 = *(v2 + 49);
    v66 = *(v2 + 1);
    v36 = sub_10015ADF4();
    sub_1010CF5BC(v36, v61);
    sub_10152D354(buf);
    sub_1015555B4(buf);
    v80 |= 1u;
    v78 = Current;
    v37 = v79;
    v38 = *(v4 + 352);
    *(v79 + 80) |= 1u;
    *(v37 + 8) = v38;
    v39 = v79;
    LODWORD(v38) = *(v2 + 5);
    *(v79 + 80) |= 2u;
    *(v39 + 16) = v38;
    v40 = v79;
    LODWORD(v38) = *(v2 + 9);
    *(v79 + 80) |= 4u;
    *(v40 + 20) = v38;
    v41 = v79;
    LODWORD(v38) = *(v2 + 13);
    *(v79 + 80) |= 8u;
    *(v41 + 24) = v38;
    v42 = v79;
    LODWORD(v38) = *(v2 + 29);
    *(v79 + 80) |= 0x2000u;
    *(v42 + 64) = v38;
    v43 = v79;
    LODWORD(v38) = *(v2 + 33);
    *(v79 + 80) |= 0x4000u;
    *(v43 + 68) = v38;
    v44 = v79;
    LODWORD(v38) = *(v2 + 37);
    *(v79 + 80) |= 0x8000u;
    *(v44 + 72) = v38;
    v45 = v79;
    LODWORD(v38) = *(v2 + 53);
    *(v79 + 80) |= 0x1000u;
    *(v45 + 60) = v38;
    v46 = v79;
    LODWORD(v38) = *(v2 + 57);
    *(v79 + 80) |= 0x20u;
    *(v46 + 32) = v38;
    v47 = v79;
    LODWORD(v38) = *(v2 + 61);
    *(v79 + 80) |= 0x40u;
    *(v47 + 36) = v38;
    v48 = v79;
    LODWORD(v38) = *(v2 + 65);
    *(v79 + 80) |= 0x80u;
    *(v48 + 40) = v38;
    v49 = v79;
    LODWORD(v38) = *(v2 + 41);
    *(v79 + 80) |= 0x200u;
    *(v49 + 48) = v38;
    v50 = v79;
    LODWORD(v38) = *(v2 + 45);
    *(v79 + 80) |= 0x400u;
    *(v50 + 52) = v38;
    v51 = v79;
    LODWORD(v38) = *(v2 + 49);
    *(v79 + 80) |= 0x800u;
    *(v51 + 56) = v38;
    v52 = v79;
    v53 = *(v2 + 1);
    *(v79 + 80) |= 0x10u;
    *(v52 + 28) = v53;
    v54 = v79;
    LOBYTE(v53) = *(v2 + 3) != 0;
    *(v79 + 80) |= 0x20000u;
    *(v54 + 77) = v53;
    v55 = v79;
    LOBYTE(v53) = *(v2 + 4);
    *(v79 + 80) |= 0x10000u;
    *(v55 + 76) = v53;
    v56 = v79;
    LODWORD(v38) = *(v2 + 69);
    *(v79 + 80) |= 0x100u;
    *(v56 + 44) = v38;
    if (qword_102637F48 != -1)
    {
      sub_1018D24B0();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  sub_100ADEE28(v4 + 13040, v2);
  v57 = *(v2 + 32);
  v58 = *(v2 + 64);
  *&v68[16] = *(v2 + 48);
  *v69 = v58;
  *&v69[9] = *(v2 + 73);
  v59 = *(v2 + 16);
  *buf = *v2;
  *&buf[16] = v59;
  *v68 = v57;
  sub_100AB32B0(v4 + 12848, buf);
  return sub_100013B00(v4, 6, v2, 89);
}

void sub_1005AC994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_1005ACA00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 - 1) > 4)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = a1 + 2168 * (v4 - 1) + 1992;
    v6 = *(a1 + qword_101C7FCD0[(v4 - 1)]);
  }

  if (sub_1005ACCA4(v5, a2))
  {
    if (qword_1025D4350 != -1)
    {
      sub_1018D37CC();
    }

    v7 = qword_1025D4358;
    if (os_log_type_enabled(qword_1025D4358, OS_LOG_TYPE_DEBUG))
    {
      v14 = 67109120;
      v15 = v4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "data type %u,received and reconstructed", &v14, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D37E0(v4);
    }

    v8 = *(a2 + 2);
    v9 = *(a1 + 12840);
    if (v9)
    {
      if (v9 + 1 != v8)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018D38D8();
        }

        v10 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
        {
          v11 = *(a1 + 12840) + 1;
          v14 = 67109376;
          v15 = v11;
          v16 = 1024;
          v17 = v8;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Sensor Buffer packet drop detected. AP is expecting %u, but got %u", &v14, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018D3900((a1 + 12840), v8);
        }
      }
    }

    else
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018D38D8();
      }

      v12 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67109120;
        v15 = v8;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Receiving first Sensor Buffer packet since process start, seq %u", &v14, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D3A14(v8);
      }
    }

    *(a1 + 12840) = v8;
    if (v6)
    {
      v13 = sub_100040914(a1, *(a1 + 352));
      (*(v6 + 16))(v6, v4, *(a2 + 8), v5, *(v5 + 2164), v13);
    }
  }
}

BOOL sub_1005ACCA4(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 1);
  v4 = *(a2 + 1);
  if (*(a2 + 1) && *(a1 + 2160) + 1 != v4)
  {
    if (qword_1025D4210 != -1)
    {
      sub_1018D1710();
    }

    v12 = (a1 + 2160);
    v13 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      v14 = *v12;
      v15 = *v5;
      v17 = 67240704;
      v18 = 25;
      v19 = 1026;
      v20 = v14;
      v21 = 1026;
      v22 = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "Out of order segments,U::kType,%{public}u,fLastSegment,%{public}u,packet->fSegment,%{public}u", &v17, 0x14u);
    }

    v16 = sub_10000A100(121, 0);
    result = 0;
    if (v16)
    {
      sub_1018D3B0C();
      return 0;
    }
  }

  else
  {
    v7 = (a2 + 6);
    v6 = *(a2 + 6);
    if (v6 > 0xC8 || (v8 = 200 * v4, (200 * v4 + v6) >= 0x871))
    {
      if (qword_1025D4210 != -1)
      {
        sub_1018D1710();
      }

      v10 = qword_1025D4218;
      if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
      {
        v11 = *v7;
        v17 = 67240192;
        v18 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Bad size,packet->fSize,%{public}u", &v17, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D3C2C(v7);
      }

      result = 0;
      *(a1 + 2160) = -1;
    }

    else
    {
      memcpy((a1 + v8), (a2 + 18), v6);
      *(a1 + 2160) = *(a2 + 1);
      *(a1 + 2164) = v8 + *(a2 + 6);
      return *(a2 + 17) != 0;
    }
  }

  return result;
}

uint64_t sub_1005ACEC4(uint64_t a1, __int128 *a2)
{
  v6 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  return sub_100013B00(a1, 8, &v6, 40);
}

uint64_t sub_1005ACF18(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 12832);
  if (result)
  {
    return (*(result + 16))(result, *(a2 + 1));
  }

  return result;
}

uint64_t sub_1005ACF34(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 12680);
  if (result)
  {
    return (*(result + 16))(result, *(a2 + 1));
  }

  return result;
}

uint64_t sub_1005ACF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040914(a1, *(a1 + 352) + (*(a2 + 12) - *(a2 + 20)) / 1000000.0);
  v7 = 0;
  *v6 = *a2;
  *&v6[12] = *(a2 + 12);
  v8 = v4;
  return sub_100013B00(a1, 21, v6, 40);
}

uint64_t sub_1005ACFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040914(a1, *(a1 + 352) + (*(a2 + 12) - *(a2 + 20)) / 1000000.0);
  v7 = 0;
  *v6 = *a2;
  *&v6[12] = *(a2 + 12);
  v8 = v4;
  return sub_100013B00(a1, 13, v6, 40);
}

void sub_1005AD068(uint64_t a1)
{
  v2 = sub_100011660();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005AD0E4;
  v3[3] = &unk_102449A78;
  v3[4] = a1;
  sub_100042800(v2, v3);
}

void sub_1005AD0E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((sub_100023B30() & 0x10) != 0)
  {
    v2[0] = 0;
    v3 = 0xBFF0000000000000;
    *__p = 0u;
    v5 = 0u;
    v6 = -COERCE_DOUBLE(0x8000000080000000);
    v7 = -1082130432;
    v8 = -1;
    v9 = 0;
    sub_100AB2FA8(v1 + 12848, v2);
    (*(*v1 + 464))(v1);
    if (SBYTE7(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005AD19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AD1B8(uint64_t a1)
{
  v2 = sub_100011660();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1005AD234;
  v3[3] = &unk_102449A78;
  v3[4] = a1;
  sub_100042800(v2, v3);
}

void sub_1005AD234(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((sub_100023B30() & 0x80000) != 0)
  {
    v2[0] = 0;
    v3 = 0xBFF0000000000000;
    __p = 0;
    v5 = 0u;
    v6 = -COERCE_DOUBLE(0x8000000080000000);
    v7 = -1;
    sub_100AB321C(v1 + 12848, v2);
    (*(*v1 + 472))(v1);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1005AD2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AD2FC()
{
  if (qword_1025D4200 != -1)
  {
    sub_1018D3D28();
  }

  v0 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Sending fallModel Command.", v1, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D3D3C();
  }
}

void sub_1005AD390(uint64_t a1, __int128 *a2)
{
  v4 = a2[3];
  v90 = a2[2];
  v91 = v4;
  *v92 = a2[4];
  *&v92[12] = *(a2 + 76);
  v5 = a2[1];
  v88 = *a2;
  v87 = 32;
  v89 = v5;
  if (qword_1025D4330 != -1)
  {
    sub_10015659C();
  }

  v6 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v11 = *(a2 + 4);
    v12 = *(a2 + 5);
    v13 = *(a2 + 6);
    v14 = *(a2 + 10);
    v15 = *(a2 + 11);
    v16 = *(a2 + 12);
    v17 = *(a2 + 13);
    v18 = *(a2 + 14);
    v19 = *(a2 + 15);
    v20 = *(a2 + 16);
    v21 = *(a2 + 17);
    v22 = *(a2 + 18);
    v23 = *(a2 + 19);
    v24 = *(a2 + 20);
    v25 = *(a2 + 84);
    v26 = *(a2 + 85);
    v27 = *(a2 + 86);
    v28 = *(a2 + 87);
    v29 = *(a2 + 88);
    v30 = *(a2 + 89);
    v31 = *(a2 + 90);
    v32[0] = 68295683;
    v32[1] = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2049;
    v36 = v7;
    v37 = 2049;
    v38 = v8;
    v39 = 2049;
    v40 = v9;
    v41 = 2049;
    v42 = v10;
    v43 = 2049;
    v44 = v9;
    v45 = 2049;
    v46 = v11;
    v47 = 2049;
    v48 = v12;
    v49 = 2049;
    v50 = v13;
    v51 = 1025;
    v52 = v14;
    v53 = 1025;
    v54 = v15;
    v55 = 2049;
    v56 = v16;
    v57 = 2049;
    v58 = v17;
    v59 = 2049;
    v60 = v18;
    v61 = 2049;
    v62 = v19;
    v63 = 2049;
    v64 = v20;
    v65 = 1025;
    v66 = v21;
    v67 = 1025;
    v68 = v22;
    v69 = 1025;
    v70 = v23;
    v71 = 1025;
    v72 = v24;
    v73 = 1025;
    v74 = v25;
    v75 = 1025;
    v76 = v26;
    v77 = 1025;
    v78 = v27;
    v79 = 1025;
    v80 = v28;
    v81 = 1025;
    v82 = v29;
    v83 = 1025;
    v84 = v30;
    v85 = 1025;
    v86 = v31;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Sending fallThresholds Command, fImpactMaxAccelNormAlertThreshold:%{private}f, fImpactMaxAccelNormLoggingStatsThreshold:%{private}f, fImpactMaxAccelNormLoggingHeartRateThreshold:%{private}f, fImpactMaxAccelNormLoggingHighResolutionSensorDataThreshold:%{private}f, fImpactMaxAccelNormLoggingHeartRateThreshold:%{private}f, fTripFallPosteriorRatioDetectionThreshold:%{private}f, fSlipFallPosteriorRatioDetectionThreshold:%{private}f, fOtherFallPosteriorRatioDetectionThreshold:%{private}f, fTotalLongLieThreshold:%{private}d, fConsecutiveLongLieThreshold:%{private}d, fAlertGatingMotionThreshold:%{private}f, fCyclingImpactGravityVarianceThreshold:%{private}f, fCyclingImpactCrownVarianceThreshold:%{private}f, fCyclingImpactMaxAbsYThreshold:%{private}f, fCyclingDistanceTraveledPostImpactThreshold:%{private}f, fCyclingEpochsDetectedPostImpactThreshold:%{private}d, fOtherWorkoutQuiescenceThresholdLow:%{private}d, fOtherWorkoutQuiescenceThresholdHigh:%{private}d, fOtherWorkoutConsecutiveLongLieThreshold:%{private}d, fOtherWorkoutShouldCancelAlertOnStepsThreshold:%{private}d, fOtherWorkoutShouldCancelAlertOnStandThreshold:%{private}d, fOtherWorkoutShouldCancelAlertOnActiveThreshold:%{private}d, fRefereeOperatingModeOverride:%{private}d, fAllDayStateMachineOperatingModeOverride:%{private}d, fCyclingStateMachineEnabledOverride:%{private}d, fAllDayStateMachineEnabledOverride:%{private}d}", v32, 0xE2u);
  }

  sub_1005AFD60(a1 + 192, &v87, 0);
}

void sub_1005AD5FC(uint64_t a1, char a2)
{
  v4 = sub_100011660();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005AD680;
  v5[3] = &unk_102460CC8;
  v5[4] = a1;
  v6 = a2;
  sub_100042800(v4, v5);
}

uint64_t sub_1005AD680(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_1025D42F0 != -1)
  {
    sub_1018D3E20();
  }

  v3 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1025;
    v10 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Configuration sent, shouldGateDynamicBiasOnChargerStatus:%{private}d}", v6, 0x18u);
  }

  v2[267] = *(a1 + 40);
  return (*(*v2 + 552))(v2, 0);
}

void sub_1005AD7A4(uint64_t a1, void *a2, void *a3)
{
  LOBYTE(v6) = 46;
  BYTE1(v6) = a2;
  BYTE2(v6) = a3;
  sub_1005AFFB0(a1 + 192, &v6, 0);
  if (qword_1025D42E0 != -1)
  {
    sub_1018D239C();
  }

  v5 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v8 = a2;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Applying override baseband usage flag, enabled, %d, value, %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D3E34(a2, a3);
  }
}

void sub_1005AD8B4(uint64_t a1, char a2, char a3, float a4)
{
  v4[0] = 71;
  v4[1] = a2;
  v5 = a4;
  v6 = a3;
  sub_1005B0184(a1 + 192, v4, 0);
}

void sub_1005AD8F4(uint64_t a1, char a2)
{
  LOBYTE(v2) = 72;
  HIBYTE(v2) = a2;
  sub_1005B0368(a1 + 192, &v2, 0);
}

float sub_1005AD92C(uint64_t a1, char a2, char a3, double a4)
{
  v6[0] = 74;
  v6[1] = a2;
  v4 = a4;
  v7 = v4;
  v8 = a3;
  sub_1005B053C(a1 + 192, v6, 0);
  return result;
}

void sub_1005AD970(uint64_t a1, char a2, char a3, float a4)
{
  v4[0] = 81;
  v4[1] = a2;
  v5 = a4;
  v6 = a3;
  sub_1005B0720(a1 + 192, v4, 0);
}

void sub_1005AD9B0(uint64_t a1, uint64_t a2, float a3)
{
  if (qword_1025D45D0 != -1)
  {
    sub_1018D3F48();
  }

  v6 = qword_1025D45D8;
  if (os_log_type_enabled(qword_1025D45D8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 67240448;
    HIDWORD(v14) = a2;
    v15 = 2050;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "[IMUCal] Triggering stat collection: useSemiStatic,%{public}u,durationUntilMetrics,%{public}f", &v14, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D3F5C(a2, v7, v8, v9, v10, v11, v12, v13, a3);
  }

  LOBYTE(v14) = 83;
  BYTE1(v14) = a2;
  *(&v14 + 2) = a3;
  sub_1005B0904(a1 + 192, &v14, 0);
}

void sub_1005ADAD0(uint64_t a1, void *a2, void *a3)
{
  if (qword_1025D4780 != -1)
  {
    sub_1018D4084();
  }

  v6 = qword_1025D4788;
  if (os_log_type_enabled(qword_1025D4788, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240448;
    v7[1] = a2;
    v8 = 1026;
    v9 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "enableGNSSMotion,%{public}d,decimationRate,%{public}u", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4098(a2, a3);
  }

  LOBYTE(v7[0]) = 84;
  BYTE1(v7[0]) = a2;
  BYTE2(v7[0]) = a3;
  sub_1005B0AE8(a1 + 192, v7, 0);
}

void sub_1005ADBE4(uint64_t a1, float a2)
{
  if (qword_1025D45B0 != -1)
  {
    sub_1018D41AC();
  }

  v4 = qword_1025D45B8;
  if (os_log_type_enabled(qword_1025D45B8, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 134349056;
    *&v13[4] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "minAccelThreshold,%{public}.2f", v13, 0xCu);
  }

  v5 = sub_10000A100(121, 2);
  if (v5)
  {
    sub_1018D41C0(v5, v6, v7, v8, v9, v10, v11, v12, a2);
  }

  v13[0] = 85;
  *&v13[1] = a2;
  sub_1005B0CCC(a1 + 192, v13, 0);
}

void sub_1005ADCE4(uint64_t a1, void *a2)
{
  v2[0] = *a2;
  *(v2 + 6) = *(a2 + 6);
  sub_1005B0EB0(a1 + 192, v2, 0);
}

id sub_1005ADD20(uint64_t a1, __int128 *a2)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v3 = [*(a1 + 168) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021850C;
  v5[3] = &unk_102460E48;
  v5[4] = a1;
  return [v3 async:v5];
}

void sub_1005ADDB0(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 168) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018D42D4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLSPU::onBLSData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018D42E8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSPU::onBLSData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (!*a2)
  {
    sub_100726820(a4 + 13728, *a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005ADF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12844) == 1)
  {
    sub_10152D354(&v26);
    sub_101552EE4(&v26);
    Current = CFAbsoluteTimeGetCurrent();
    v44 |= 1u;
    v42 = Current;
    v5 = v43;
    v6 = *(a1 + 352);
    *(v43 + 44) |= 4u;
    *(v5 + 24) = v6;
    v7 = v43;
    v8 = *(a2 + 1);
    *(v43 + 44) |= 2u;
    *(v7 + 16) = v8;
    v9 = v43;
    v10 = *(a2 + 9);
    *(v43 + 44) |= 1u;
    *(v9 + 8) = v10;
    v11 = v43;
    v12 = *(a2 + 17);
    *(v43 + 44) |= 8u;
    *(v11 + 32) = v12;
    v13 = v43;
    LOBYTE(v12) = *(a2 + 25);
    *(v43 + 44) |= 0x10u;
    *(v13 + 40) = v12;
    v14 = v43;
    LOBYTE(v12) = *(a2 + 26);
    *(v43 + 44) |= 0x40u;
    *(v14 + 42) = v12;
    v15 = v43;
    LOBYTE(v12) = *(a2 + 27);
    *(v43 + 44) |= 0x20u;
    *(v15 + 41) = v12;
    if (qword_102637F48 != -1)
    {
      sub_1018D24B0();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, &v26);
    }

    sub_101532FA8(&v26);
  }

  if (qword_1025D42E0 != -1)
  {
    sub_1018D239C();
  }

  v16 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 352);
    v18 = *(a2 + 1);
    v19 = *(a2 + 9);
    v20 = *(a2 + 17);
    v21 = *(a2 + 25);
    v22 = *(a2 + 27);
    v23 = *(a2 + 26);
    v24 = *(a2 + 28);
    v26 = 134350848;
    v27 = v17;
    v28 = 2048;
    v29 = v18;
    v30 = 2048;
    v31 = v19;
    v32 = 2048;
    v33 = v20;
    v34 = 1026;
    v35 = v21;
    v36 = 1026;
    v37 = v22;
    v38 = 1026;
    v39 = v23;
    v40 = 1026;
    v41 = v24;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "MagnetometerReset,timestamp,%{public}f,timeSinceLastRemagTrigger,%llu,timeSinceLastRemag,%llu,triggerCount,%llu,exitingSaturation,%{public}d,extendedSaturation,%{public}d,shiftInSaturation,%{public}d,fSuccessFlag,%{public}d", &v26, 0x42u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4310();
  }

  return sub_10073D6CC(a1 + 13704, *(a1 + 352));
}

uint64_t sub_1005AE27C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = *(v3 + 352);
  *v19 = v5;
  v6 = sub_100040914(v3, v5);
  *&v19[1] = v6;
  v7 = *(v2 + 1);
  v20 = *(v2 + 1);
  v8 = *(v2 + 2);
  v21 = *(v2 + 2);
  v9 = *(v2 + 3);
  v22 = v9;
  if (*(v4 + 12844) == 1)
  {
    sub_10152D354(buf);
    sub_101553634(buf);
    v45 |= 1u;
    v44 = v6;
    v10 = v43;
    *(v43 + 28) |= 1u;
    *(v10 + 8) = v5;
    v11 = v43;
    v12 = *(v2 + 1);
    *(v43 + 28) |= 4u;
    *(v11 + 20) = v12;
    v13 = v43;
    LOBYTE(v12) = *(v2 + 2) != 0;
    *(v43 + 28) |= 8u;
    *(v13 + 24) = v12;
    v14 = v43;
    v15 = *(v2 + 3);
    *(v43 + 28) |= 2u;
    *(v14 + 16) = v15;
    if (qword_102637F48 != -1)
    {
      sub_1018D24B0();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  if (qword_1025D42E0 != -1)
  {
    sub_1018D239C();
  }

  v16 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v34 = v5;
    v35 = 2048;
    v36 = v6;
    v37 = 1024;
    v38 = v7;
    v39 = 1026;
    v40 = v8;
    v41 = 1024;
    v42 = v9;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "BasebandCompassCoex,timestamp,%f,startTime,%f,sub_type,%d,inCoex,%{public}d,reserved,0x%02x", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42E0 != -1)
    {
      sub_1018D239C();
    }

    v23 = 134219008;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    v27 = 1024;
    v28 = v7;
    v29 = 1026;
    v30 = v8;
    v31 = 1024;
    v32 = v9;
    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLSPU::visitBasebandCompassCoex(const CMMotionCoprocessorReply::BasebandCompassCoex *)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return sub_100013B00(v4, 36, v19, 232);
}

uint64_t sub_1005AE5DC(uint64_t a1, uint64_t a2)
{
  if (qword_1025D42E0 != -1)
  {
    sub_1018D33E8();
  }

  v4 = qword_1025D42E8;
  if (os_log_type_enabled(qword_1025D42E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a2 + 4);
    v9[0] = 67240704;
    v9[1] = v5;
    v10 = 1026;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "BasebandCompassCoexMetrics,countOfTimesEnteringHeatup,%{public}d,hasActiveMagnetometerClientDuringHeatUp,%{public}d,durationOfNonDefaultState,%llu", v9, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D447C();
  }

  return sub_10073D8F4(a1 + 13704, *(a1 + 352));
}

uint64_t sub_1005AE6FC(uint64_t a1, __int128 *a2)
{
  *&v8[16] = 0;
  v6 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[1];
  v7 = *a2;
  *v8 = v4;
  *&v8[15] = *(a2 + 31);
  return sub_100013B00(a1, 40, &v6, 48);
}

void sub_1005AE768(uint64_t a1, uint64_t a2)
{
  if (qword_1025D41E0 != -1)
  {
    sub_1018D4598();
  }

  v4 = qword_1025D41E8;
  if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 352);
    v6 = *(a2 + 9);
    v7 = *(a2 + 10);
    v8 = *(a2 + 11);
    v9 = *(a2 + 15);
    v10 = *(a2 + 19);
    v11 = *(a2 + 23);
    v12 = *(a2 + 27);
    v13 = *(a2 + 31);
    v14 = *(a2 + 35);
    v15 = *(a2 + 39);
    v16 = *(a2 + 43);
    v17 = *(a2 + 47);
    v18 = *(a2 + 51);
    v19 = *(a2 + 55);
    v20 = *(a2 + 59);
    v21 = *(a2 + 63);
    v22 = *(a2 + 67);
    v23 = *(a2 + 71);
    v24 = *(a2 + 75);
    v25 = *(a2 + 79);
    v26 = 134354176;
    v27 = v5;
    v28 = 1026;
    v29 = v6;
    v30 = 1026;
    v31 = v7;
    v32 = 2050;
    v33 = v8;
    v34 = 2050;
    v35 = v9;
    v36 = 2050;
    v37 = v10;
    v38 = 2050;
    v39 = v11;
    v40 = 2050;
    v41 = v12;
    v42 = 2050;
    v43 = v13;
    v44 = 2050;
    v45 = v14;
    v46 = 2050;
    v47 = v15;
    v48 = 2050;
    v49 = v16;
    v50 = 2050;
    v51 = v17;
    v52 = 2050;
    v53 = v18;
    v54 = 2050;
    v55 = v19;
    v56 = 2050;
    v57 = v20;
    v58 = 2050;
    v59 = v21;
    v60 = 2050;
    v61 = v22;
    v62 = 2050;
    v63 = v23;
    v64 = 2050;
    v65 = v24;
    v66 = 2050;
    v67 = v25;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "ViewObstructedMLFeatures timestamp,%{public}f,currentState,%{public}u,priorState,%{public}u,absMeanGravX,%{public}f,meanGravY,%{public}f,meanGravZ,%{public}f,AccelFFTBin1,%{public}f,AccelFFTBin2,%{public}f,AccelFFTBin3,%{public}f,AccelFFTBin4,%{public}f,AccelFFTBin5,%{public}f,AccelFFTBin6,%{public}f,PressureFFTBin1,%{public}f,PressureFFTBin2,%{public}f,PressureFFTBin3,%{public}f,PressureFFTBin4,%{public}f,PressureFFTBin5,%{public}f,PressureFFTBin6,%{public}fAccelFFTBinDotPressureFFTBin,%{public}f,MedianPocketProb,%{public}f,MedianLux,%{public}f", &v26, 0xCCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4798();
  }
}

uint64_t sub_1005AE99C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018D3D28();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 352);
    v6 = *(a2 + 12);
    *v8 = 134349312;
    *&v8[4] = v5;
    *&v8[12] = 2048;
    *&v8[14] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "ALS,timestamp,%{public}f,value,%f", v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D49E0();
  }

  *v8 = sub_100040914(a1, *(a1 + 352));
  *&v8[8] = *a2;
  return sub_100013B00(a1, 41, v8, 24);
}

uint64_t sub_1005AEACC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5[0] = sub_100040914(a1, *(a1 + 352));
  v5[1] = *a2;
  LOWORD(v6) = *(a2 + 8);
  return sub_100013B00(a1, 43, v5, 24);
}

uint64_t sub_1005AEB34(uint64_t a1, __int128 *a2)
{
  *&v9[16] = 0;
  v6 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  *v9 = a2[2];
  *&v9[15] = *(a2 + 47);
  return sub_100013B00(a1, 44, &v6, 64);
}

uint64_t sub_1005AEBA8(uint64_t a1, void *a2)
{
  v5[0] = sub_100040914(a1, *(a1 + 352));
  v5[1] = *a2;
  return sub_100013B00(a1, 45, v5, 16);
}

uint64_t sub_1005AEC04(uint64_t a1, void *a2)
{
  v5[0] = sub_100040914(a1, *(a1 + 352));
  v5[1] = *a2;
  return sub_100013B00(a1, 46, v5, 16);
}

void sub_1005AEC78()
{
  v0 = sub_100DA71C8();

  sub_100DA7238(v0);
}

void sub_1005AECB0()
{
  v0 = sub_100DA71C8();

  sub_100DA7238(v0);
}

void sub_1005AED18(uint64_t a1, uint64_t a2)
{
  if (qword_1025D42B0 != -1)
  {
    sub_1018D4AF8();
  }

  v3 = qword_1025D42B8;
  if (os_log_type_enabled(qword_1025D42B8, OS_LOG_TYPE_DEFAULT))
  {
    _H0 = fabsl(*(a2 + 4));
    __asm { FCVT            S0, H0; float }

    _H1 = fabsl(*(a2 + 2));
    __asm { FCVT            S8, H1 }

    v12 = (atan2f(_S0, _S8) * 57.296);
    _H0 = fabsl(*(a2 + 6));
    __asm { FCVT            S0, H0; float }

    v15 = atan2f(_S0, _S8);
    _H1 = *(a2 + 8);
    _H2 = *(a2 + 10);
    __asm
    {
      FCVT            D1, H1
      FCVT            D2, H2
    }

    _H3 = *(a2 + 12);
    __asm { FCVT            D3, H3 }

    _H4 = *(a2 + 14);
    __asm { FCVT            D4, H4 }

    _H5 = *(a2 + 16);
    __asm { FCVT            D5, H5 }

    _H6 = *(a2 + 18);
    __asm { FCVT            D6, H6 }

    v28 = *(a2 + 1);
    v36 = 134351104;
    v37 = v12;
    v38 = 2050;
    v39 = (v15 * 57.296);
    v40 = 2050;
    v41 = _D1;
    v42 = 2050;
    v43 = _D2;
    v44 = 2050;
    v45 = _D3;
    v46 = 2050;
    v47 = _D4;
    v48 = 2050;
    v49 = _D5;
    v50 = 2050;
    v51 = _D6;
    v52 = 1026;
    v53 = v28;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "[MagicMount][DebugLogging]rollAngle,%{public}f,landscapeAngle,%{public}f,rotationRate,(%{public}f,%{public}f,%{public}f),userAccel,(%{public}f,%{public}f,%{public}f),isStationary,%{public}u", &v36, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D4B0C(a2, v29, v30, v31, v32, v33, v34, v35);
  }
}

uint64_t sub_1005AEEC8(uint64_t a1, uint64_t a2)
{
  v5[0] = *(a1 + 352);
  v5[1] = sub_100040914(a1, v5[0]);
  v6 = *(a2 + 1);
  return sub_100013B00(a1, 50, v5, 232);
}

id sub_1005AEF3C(uint64_t a1, __int128 *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v9[0] = a2[2];
  *(v9 + 12) = *(a2 + 44);
  v4 = [*(a1 + 168) silo];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AEFD4;
  v6[3] = &unk_102461BF0;
  v6[4] = a1;
  return [v4 async:v6];
}

id sub_1005AEFEC(uint64_t a1, __int128 *a2)
{
  v2 = a1 - 152;
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  v9[0] = a2[2];
  *(v9 + 12) = *(a2 + 44);
  v4 = [*(a1 + 16) silo];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AEFD4;
  v6[3] = &unk_102461BF0;
  v6[4] = v2;
  return [v4 async:v6];
}

uint64_t sub_1005AF084(uint64_t a1, void *a2)
{
  *(&v6 + 1) = 0;
  v5 = sub_100040914(a1, *(a1 + 352));
  *&v6 = *a2;
  *(&v6 + 5) = *(a2 + 5);
  return sub_100013B00(a1, 52, &v5, 24);
}

uint64_t sub_1005AF0EC(uint64_t a1, __int128 *a2)
{
  *&v12[24] = 0;
  v8 = sub_100040914(a1, *(a1 + 352));
  v4 = *a2;
  v5 = a2[2];
  v6 = a2[3];
  v10 = a2[1];
  v11 = v5;
  *v12 = v6;
  *&v12[10] = *(a2 + 58);
  v9 = v4;
  return sub_100013B00(a1, 53, &v8, 88);
}

uint64_t sub_1005AF190(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

double sub_1005AF480(uint64_t a1, double **a2)
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

uint64_t sub_1005AF4AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1005AF580(uint64_t a1, double **a2)
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

uint64_t sub_1005AF5D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF6B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF7A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF7EC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100C4CA7C();

    operator delete();
  }

  return result;
}

uint64_t sub_1005AF8A8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102461FF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005AF8E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AF930(uint64_t a1)
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

void sub_1005AF9B0(uint64_t a1, void *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4012000000;
    v8[3] = sub_100047458;
    v8[4] = nullsub_41;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 5) = *(a2 + 5);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005AFAFC;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005AFAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005AFAFC(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 18;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 13);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005AFB7C(uint64_t a1, _OWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x5012000000;
    v8[3] = sub_1005AFCC8;
    v8[4] = nullsub_197;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 13) = *(a2 + 13);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005AFCE0;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005AFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1005AFCC8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 48) = result;
  return result;
}

void sub_1005AFCE0(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 37;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 29);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005AFD60(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x9012000000;
    v10[3] = sub_1005AFF08;
    v10[4] = nullsub_198;
    v10[5] = &unk_10238AE8B;
    v4 = a2[3];
    v13 = a2[2];
    v14 = v4;
    v15[0] = a2[4];
    *(v15 + 13) = *(a2 + 77);
    v5 = a2[1];
    v11 = *a2;
    v12 = v5;
    if (aBlock)
    {
      v6 = _Block_copy(aBlock);
    }

    else
    {
      v6 = 0;
    }

    v8 = *a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005AFF30;
    v9[3] = &unk_102462080;
    v9[5] = v10;
    v9[6] = a1;
    v9[4] = v6;
    dispatch_async(v8, v9);
    _Block_object_dispose(v10, 8);
  }

  else if (aBlock)
  {
    v7 = *(aBlock + 2);

    v7(aBlock, 0);
  }
}

void sub_1005AFEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_1005AFF08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v2;
  result = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  *(a1 + 80) = result;
  return result;
}

void sub_1005AFF30(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 32;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 93);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005AFFB0(uint64_t a1, int *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B00F4;
    v8[4] = nullsub_199;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0104;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B00DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005B0104(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 46;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 4);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0184(uint64_t a1, _DWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B02D0;
    v8[4] = nullsub_200;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 3) = *(a2 + 3);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B02E8;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B02B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B02D0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

void sub_1005B02E8(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 71;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 7);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0368(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B04AC;
    v8[4] = nullsub_201;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B04BC;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005B04BC(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 72;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B053C(uint64_t a1, _DWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0688;
    v8[4] = nullsub_202;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 3) = *(a2 + 3);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B06A0;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0688(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

void sub_1005B06A0(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 74;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 7);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0720(uint64_t a1, _DWORD *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B086C;
    v8[4] = nullsub_203;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 3) = *(a2 + 3);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0884;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B086C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 51) = *(a2 + 51);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0884(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 81;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 7);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0904(uint64_t a1, int *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0A50;
    v8[4] = nullsub_204;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 2);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0A68;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0A50(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0A68(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 83;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 6);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0AE8(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0C34;
    v8[4] = nullsub_205;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 2);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0C4C;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0C34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 50) = *(a2 + 50);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0C4C(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 84;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 3);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0CCC(uint64_t a1, int *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_1005B0E18;
    v8[4] = nullsub_206;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    v10 = *(a2 + 4);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B0E30;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0E18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

void sub_1005B0E30(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 85;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 5);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B0EB0(uint64_t a1, void *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4012000000;
    v8[3] = sub_1005B0FFC;
    v8[4] = nullsub_207;
    v8[5] = &unk_10238AE8B;
    v9[0] = *a2;
    *(v9 + 6) = *(a2 + 6);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1005B1014;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1005B0FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B0FFC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 54) = *(a2 + 54);
  *(result + 48) = v2;
  return result;
}

void sub_1005B1014(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 86;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 14);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_1005B1784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B17C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a2 + 8);
    v3 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CLConnection::sendMessage();
    if (v3)
    {
      sub_100008080(v3);
    }
  }
}

void sub_1005B181C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B1B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005B1FE8(uint64_t a1)
{
  result = [*(a1 + 32) poweredOn];
  if (result && *(a1 + 49) == 1)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 56) clientname];
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client got scanner powered on status, starting BTFindingScan, client:%{public, location:escape_only}@}", v5, 0x1Cu);
    }

    result = [*(a1 + 32) startBTFindingScan];
    *(a1 + 49) = 0;
  }

  return result;
}

void sub_1005B2158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B21E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B22F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B262C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B26BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B27B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B28BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B2FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B32D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B33E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B34F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B38C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B432C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B453C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B48D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B4EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B538C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B54A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B55BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B56D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B5FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B60E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B64A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B6FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B711C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B726C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B73AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B74FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B778C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B7910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B79E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005B7A38(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_1024620B0;
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *(a1 + 56) = 0;
  v6 = (a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  CLConnection::setDefaultMessageHandler();
  CLConnection::setInterruptionHandler();
  CLConnection::setDisconnectionHandler();
  *v6 = [[CLDurianClientAdapter alloc] initWithClient:a1];
  v7 = [objc_msgSend(a3 "vendor")];
  *v5 = v7;
  [v7 registerDelegate:*v6 inSilo:{objc_msgSend(a3, "silo")}];
  v8 = [objc_msgSend(a3 "vendor")];
  *(a1 + 64) = v8;
  [v8 registerDelegate:*(a1 + 56) inSilo:{objc_msgSend(a3, "silo")}];
  return a1;
}

void sub_1005B7C48(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1005B7CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B7CDC(uint64_t a1)
{
  if (qword_1025D4610 != -1)
  {
    sub_1018D4D18();
  }

  v2 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) clientname];
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client teardown, name:%{public, location:escape_only}@}", v4, 0x1Cu);
  }

  [*(a1 + 24) teardownClient:CLISP_ME_TOKEN];
  if (*(a1 + 48) == 1)
  {
    sub_1005BC5F8(a1);
  }
}

void *sub_1005B7DF4(uint64_t a1)
{
  *a1 = off_1024620B0;

  *(a1 + 64) = 0;

  return sub_100143A80(a1);
}

void sub_1005B7E70(uint64_t a1)
{
  sub_1005B7DF4(a1);

  operator delete();
}

void *sub_1005B7EA8()
{
  if ((atomic_load_explicit(&qword_102657050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102657050))
  {
    sub_10000EC00(v2, "DurianManagement/Connect");
    v2[3] = sub_1005B915C;
    v2[4] = 0;
    sub_10000EC00(v3, "DurianManagement/Disconnect");
    v4 = sub_1005B91F4;
    v5 = 0;
    sub_10000EC00(v6, "DurianManagement/FetchConnectionState");
    v7 = sub_1005B928C;
    v8 = 0;
    sub_10000EC00(v9, "DurianManagement/StartSoundSequence");
    v10 = sub_1005B9324;
    v11 = 0;
    sub_10000EC00(v12, "DurianManagement/StopSound");
    v13 = sub_1005B93EC;
    v14 = 0;
    sub_10000EC00(v15, "DurianManagement/SetKeyRollInterval");
    v16 = sub_1005B9484;
    v17 = 0;
    sub_10000EC00(v18, "DurianManagement/FetchBatteryStatus");
    v19 = sub_1005B9540;
    v20 = 0;
    sub_10000EC00(v21, "DurianManagement/StartEventCounter");
    v22 = sub_1005B95D8;
    v23 = 0;
    sub_10000EC00(v24, "DurianManagement/StopEventCounter");
    v25 = sub_1005B9680;
    v26 = 0;
    sub_10000EC00(v27, "DurianManagement/SetBatteryStatus");
    v28 = sub_1005B9728;
    v29 = 0;
    sub_10000EC00(v30, "DurianManagement/GetMultiStatus");
    v31 = sub_1005B97F4;
    v32 = 0;
    sub_10000EC00(v33, "DurianManagement/GetMultiPartStatus");
    v34 = sub_1005B988C;
    v35 = 0;
    sub_10000EC00(v36, "DurianManagement/DumpLogs");
    v37 = sub_1005B9924;
    v38 = 0;
    sub_10000EC00(v39, "DurianManagement/FetchFindingCapabilities");
    v40 = sub_1005B99E0;
    v41 = 0;
    sub_10000EC00(v42, "DurianManagement/InitRanging");
    v43 = sub_1005B9A88;
    v44 = 0;
    sub_10000EC00(v45, "DurianManagement/DeinitRanging");
    v46 = sub_1005B9B40;
    v47 = 0;
    sub_10000EC00(v48, "DurianManagement/ConfigureRanging");
    v49 = sub_1005B9BE8;
    v50 = 0;
    sub_10000EC00(v51, "DurianManagement/ConfigureNBRanging");
    v52 = sub_1005B9D58;
    v53 = 0;
    sub_10000EC00(v54, "DurianManagement/PrepareRanging");
    v55 = sub_1005B9E20;
    v56 = 0;
    sub_10000EC00(v57, "DurianManagement/StartRanging");
    v58 = sub_1005B9EC8;
    v59 = 0;
    sub_10000EC00(v60, "DurianManagement/StartNBRanging");
    v61 = sub_1005B9F98;
    v62 = 0;
    sub_10000EC00(v63, "DurianManagement/StopRanging");
    v64 = sub_1005BA060;
    v65 = 0;
    sub_10000EC00(v66, "DurianManagement/InduceCrash");
    v67 = sub_1005BA108;
    v68 = 0;
    sub_10000EC00(v69, "DurianManagement/Unpair");
    v70 = sub_1005BA1A0;
    v71 = 0;
    sub_10000EC00(v72, "DurianManagement/SetTagType");
    v73 = sub_1005BA290;
    v74 = 0;
    sub_10000EC00(v75, "DurianManagement/SetObfuscatedIdentifier");
    v76 = sub_1005BA34C;
    v77 = 0;
    sub_10000EC00(v78, "DurianManagement/SetNearOwnerTimeout");
    v79 = sub_1005BA414;
    v80 = 0;
    sub_10000EC00(v81, "DurianManagement/FetchPersonalizationInformation");
    v82 = sub_1005BA4E0;
    v83 = 0;
    sub_10000EC00(v84, "DurianManagement/UpdateFirmware");
    v85 = sub_1005BA578;
    v86 = 0;
    sub_10000EC00(v87, "DurianManagement/AbortFirmwareUpdate");
    v88 = sub_1005BA640;
    v89 = 0;
    sub_10000EC00(v90, "DurianManagement/FetchFirmwareVersion");
    v91 = sub_1005BA6D8;
    v92 = 0;
    sub_10000EC00(v93, "DurianManagement/FetchUserStats");
    v94 = sub_1005BA774;
    v95 = 0;
    sub_10000EC00(v96, "DurianManagement/StartUnauthorizedSound");
    v97 = sub_1005BA830;
    v98 = 0;
    sub_10000EC00(v99, "DurianManagement/StopUnauthorizedSound");
    v100 = sub_1005BA910;
    v101 = 0;
    sub_10000EC00(v102, "DurianManagement/SetWildConfiguration");
    v103 = sub_1005BA9A8;
    v104 = 0;
    sub_10000EC00(v105, "DurianManagement/RollWildKey");
    v106 = sub_1005BAA70;
    v107 = 0;
    sub_10000EC00(v108, "DurianManagement/SetAccelerometerSlopeMode");
    v109 = sub_1005BAB08;
    v110 = 0;
    sub_10000EC00(v111, "DurianManagement/SetAccelerometerOrientationMode");
    v112 = sub_1005BABD0;
    v113 = 0;
    sub_10000EC00(v114, "DurianManagement/GetAccelerometerSlopeModeConfiguration");
    v115 = sub_1005BAC98;
    v116 = 0;
    sub_10000EC00(v117, "DurianManagement/GetAccelerometerOrientationModeConfiguration");
    v118 = sub_1005BAD30;
    v119 = 0;
    sub_10000EC00(v120, "DurianManagement/GetAccelerometerMode");
    v121 = sub_1005BADC8;
    v122 = 0;
    sub_10000EC00(v123, "DurianManagement/SetUnauthorizedPlaySoundRateLimit");
    v124 = sub_1005BAE60;
    v125 = 0;
    sub_10000EC00(v126, "DurianManagement/ScanForNearOwner");
    v127 = sub_1005BAF1C;
    v128 = 0;
    sub_10000EC00(v129, "DurianManagement/ScanForHELE");
    v130 = sub_1005BAF24;
    v131 = 0;
    sub_10000EC00(v132, "DurianManagement/ScanForNearbyDevicesLong");
    v133 = sub_1005BB048;
    v134 = 0;
    sub_10000EC00(v135, "DurianManagement/StopScanForNearbyDevicesLong");
    v136 = sub_1005BB16C;
    v137 = 0;
    sub_10000EC00(v138, "DurianManagement/FetchTxPower");
    v139 = sub_1005BB28C;
    v140 = 0;
    sub_10000EC00(v141, "DurianManagement/StartAggressiveAdvertising");
    v142 = sub_1005BB350;
    v143 = 0;
    sub_10000EC00(v144, "DurianManagement/StopAggressiveAdvertising");
    v145 = sub_1005BB410;
    v146 = 0;
    sub_10000EC00(v147, "DurianManagement/StartUnauthorizedAggressiveAdvertising");
    v148 = sub_1005BB4A8;
    v149 = 0;
    sub_10000EC00(v150, "DurianManagement/SetHawkeyeTestMode");
    v151 = sub_1005BB540;
    v152 = 0;
    sub_10000EC00(v153, "DurianManagement/SetHawkeyeUTMotionConfig");
    v154 = sub_1005BB610;
    v155 = 0;
    sub_10000EC00(v156, "DurianManagement/FetchHawkeyeAISProductData");
    v157 = sub_1005BB710;
    v158 = 0;
    sub_10000EC00(v159, "DurianManagement/FetchHawkeyeAISManufacturerName");
    v160 = sub_1005BB7A8;
    v161 = 0;
    sub_10000EC00(v162, "DurianManagement/FetchHawkeyeAISModelName");
    v163 = sub_1005BB840;
    v164 = 0;
    sub_10000EC00(v165, "DurianManagement/FetchHawkeyeAISModelColorCode");
    v166 = sub_1005BB8D8;
    v167 = 0;
    sub_10000EC00(v168, "DurianManagement/FetchHawkeyeAISAccessoryCategory");
    v169 = sub_1005BB970;
    v170 = 0;
    sub_10000EC00(v171, "DurianManagement/FetchHawkeyeAISAccessoryCapabilities");
    v172 = sub_1005BBA08;
    v173 = 0;
    sub_10000EC00(v174, "DurianManagement/FetchHawkeyeAISFindMyVersion");
    v175 = sub_1005BBAA0;
    v176 = 0;
    sub_10000EC00(v177, "DurianManagement/FetchHawkeyeAISBatteryType");
    v178 = sub_1005BBB38;
    v179 = 0;
    sub_10000EC00(v180, "DurianManagement/FetchHawkeyeSerialNumber");
    v181 = sub_1005BBBD0;
    v182 = 0;
    sub_10000EC00(v183, "DurianManagement/FetchHawkeyeCurrentPrimaryKey");
    v184 = sub_1005BBC68;
    v185 = 0;
    sub_10000EC00(v186, "DurianManagement/FetchHawkeyeiCloudIdentifier");
    v187 = sub_1005BBD00;
    v188 = 0;
    sub_10000EC00(v189, "DurianManagement/UseLocalFirmwareAssetFromUrl");
    v190 = sub_1005BBD98;
    v191 = 0;
    sub_10000EC00(v192, "DurianManagement/UseDefaultFirmwareAssetSource");
    v193 = sub_1005BBFB0;
    v194 = 0;
    sub_10000EC00(v195, "DurianManagement/FetchWhetherLocalFirmwareAssetIsInUse");
    v196 = sub_1005BC178;
    v197 = 0;
    sub_10000EC00(v198, "DurianManagement/StartMonitoringForAvengerAdvertisementsForBTFinding");
    v199 = sub_1005BC340;
    v200 = 0;
    sub_10000EC00(v201, "DurianManagement/StopMonitoringForAvengerAdvertisementsForBTFinding");
    v202 = sub_1005BC5F8;
    v203 = 0;
    sub_10000EC00(v204, "DurianManagement/PerformAggressiveScanForSeparationAlerts");
    v205 = sub_1005BC7C8;
    v206 = 0;
    sub_10000EC00(v207, "DurianManagement/PerformLongAggressiveScanForSeparationAlerts");
    v208 = sub_1005BC9A0;
    v209 = 0;
    sub_10000EC00(v210, "DurianManagement/StopLongAggressiveScanForSeparationAlerts");
    v211 = sub_1005BCB78;
    v212 = 0;
    sub_10000EC00(v213, "DurianManagement/PerformAggressiveScanForTrackingAvoidance");
    v214 = sub_1005BCD50;
    v215 = 0;
    sub_10000EC00(v216, "DurianManagement/PerformHELEScanForTrackingAvoidance");
    v217 = sub_1005BCD58;
    v218 = 0;
    sub_10000EC00(v219, "DurianManagement/PerformAggressiveScanForDurianService");
    v220 = sub_1005BCD60;
    v221 = 0;
    sub_10000EC00(v222, "DurianManagement/FetchStatusOfUTEnablementRequirements");
    v223 = sub_1005BCD68;
    v224 = 0;
    sub_10000EC00(v225, "DurianManagement/FetchAISForTAUnknownBeacon");
    v226 = sub_1005BCD7C;
    v227 = 0;
    sub_10000EC00(v228, "DurianManagement/StageTADetection");
    v229 = sub_1005BCEF8;
    v230 = 0;
    sub_10000EC00(v231, "DurianManagement/ForceSurfaceStagedDetections");
    v232 = sub_1005BD074;
    v233 = 0;
    sub_10000EC00(v234, "DurianManagement/FetchAISProductData");
    v235 = sub_1005BD1B4;
    v236 = 0;
    sub_10000EC00(v237, "DurianManagement/FetchAISManufacturerName");
    v238 = sub_1005BD24C;
    v239 = 0;
    sub_10000EC00(v240, "DurianManagement/FetchAISModelName");
    v241 = sub_1005BD2E4;
    v242 = 0;
    sub_10000EC00(v243, "DurianManagement/FetchAISProtocolImplementation");
    v244 = sub_1005BD37C;
    v245 = 0;
    sub_10000EC00(v246, "DurianManagement/FetchAISAccessoryCapabilities");
    v247 = sub_1005BD414;
    v248 = 0;
    sub_10000EC00(v249, "DurianManagement/FetchAISAccessoryCategory");
    v250 = sub_1005BD4AC;
    v251 = 0;
    sub_10000EC00(v252, "DurianManagement/FetchAISNetworkID");
    v253 = sub_1005BD544;
    v254 = 0;
    sub_10000EC00(v255, "DurianManagement/FetchAISFirmwareVersion");
    v256 = sub_1005BD5DC;
    v257 = 0;
    sub_10000EC00(v258, "DurianManagement/FetchAISBatteryType");
    v259 = sub_1005BD674;
    v260 = 0;
    sub_10000EC00(v261, "DurianManagement/FetchAISBatteryLevel");
    v262 = sub_1005BD70C;
    v263 = 0;
    sub_10000EC00(v264, "DurianManagement/FetchAISSerialNumber");
    v265 = sub_1005BD7A4;
    v266 = 0;
    sub_10000EC00(v267, "DurianManagement/FetchAccessoryInformation");
    v268 = sub_1005BD83C;
    v269 = 0;
    sub_1005BE07C(&unk_102657028, v2, 90);
    v1 = 450;
    do
    {
      if (*(&v2[v1 - 2] - 1) < 0)
      {
        operator delete(v2[v1 - 5]);
      }

      v1 -= 5;
    }

    while (v1 * 8);
    __cxa_atexit(sub_1005BD8E4, &unk_102657028, dword_100000000);
    __cxa_guard_release(&qword_102657050);
  }

  return &unk_102657028;
}

void sub_1005B8F8C(_Unwind_Exception *a1)
{
  v3 = (v1 + 3583);
  v4 = -3600;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 40;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 40;
    if (!v4)
    {
      __cxa_guard_abort(&qword_102657050);
      _Unwind_Resume(a1);
    }
  }
}

id sub_1005B915C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 connectToTag:v5 forClient:v7];
}

id sub_1005B91F4(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 disconnectFromTag:v5 forClient:v7];
}

id sub_1005B928C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchConnectionStateForTag:v5 forClient:v7];
}

id sub_1005B9324(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianSoundSequence"];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 playSoundSequence:v8 onTag:v7 forClient:v10];
}

id sub_1005B93EC(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 stopPlayingSoundOnTag:v5 forClient:v7];
}

id sub_1005B9484(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianKeyRollInterval", "intValue"}];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;

  return [v8 setKeyRollInterval:v6 onTag:v7 forClient:v9];
}

id sub_1005B9540(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchBatteryStateFromTag:v5 forClient:v7];
}

id sub_1005B95D8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 startEventCounterOnTag:v6 forClient:v8];
}

id sub_1005B9680(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 stopEventCounterOnTag:v6 forClient:v8];
}

id sub_1005B9728(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianBatteryStatus", "unsignedIntValue"}];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 setBatteryStatus:v8 onTag:v7 forClient:v10];
}

id sub_1005B97F4(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 getMultiStatusForTag:v5 forClient:v7];
}

id sub_1005B988C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 getGroupStatusForTag:v5 forClient:v7];
}

id sub_1005B9924(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianLogType", "unsignedIntegerValue"}];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;

  return [v8 dumpLogsOfType:v6 forTag:v7 forClient:v9];
}

id sub_1005B99E0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 fetchFindingCapabilitiesOnTag:v6 forClient:v8];
}

id sub_1005B9A88(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianRangingMacAddress"];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;

  return [v8 initRangingWithMacAddress:v7 onTag:v6 forClient:v9];
}

id sub_1005B9B40(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 deinitRangingOnTag:v6 forClient:v8];
}

id sub_1005B9BE8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianRangingMacAddress"];
  v9 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianRangingCountryCode", "intValue"}];
  v10 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianRangingUwbChannel", "intValue"}];
  v11 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianRangingAcqPreamble", "intValue"}];
  v12 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianRangingTrackingPreamble", "intValue"}];
  v13 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianRangingInterval", "intValue"}];
  return [*(a1 + 24) configureRangingWithMacAddress:v8 countryCode:v9 uwbChannel:v10 acqPreamble:v11 trackingPreamble:v12 interval:v13 onTag:v7 forClient:CLISP_ME_TOKEN];
}

id sub_1005B9D58(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:CLDurianNBConfigDictionaryKey];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 configureNBRangingOnDevice:v7 withParams:v8 forClient:v10];
}

id sub_1005B9E20(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 prepareRangingOnTag:v6 forClient:v8];
}

id sub_1005B9EC8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianRangingTargetEventCounter"];
  v9 = *(a1 + 24);
  v10 = [v8 unsignedIntValue];
  v11 = CLISP_ME_TOKEN;

  return [v9 startRangingWithTargetEventCounter:v10 onTag:v7 forClient:v11];
}

id sub_1005B9F98(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:CLDurianRangingIRKKey];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 startNBRangingOnTag:v7 withIRK:v8 forClient:v10];
}

id sub_1005BA060(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 stopRangingOnTag:v6 forClient:v8];
}

id sub_1005BA108(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 induceCrashOnTag:v5 forClient:v7];
}

id sub_1005BA1A0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = *(a1 + 24);
  if (v6)
  {
    v8 = v6;
    v9 = CLISP_ME_TOKEN;
    v10 = *(a1 + 24);

    return [v10 unpairFromTag:v8 forClient:v9];
  }

  else
  {
    v12 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianMacAddress"];
    v13 = CLISP_ME_TOKEN;

    return [v7 unpairFromTagWithAddress:v12 forClient:v13];
  }
}

id sub_1005BA290(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianTagType", "unsignedCharValue"}];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;

  return [v8 setTagType:v7 onTag:v6 forClient:v9];
}

id sub_1005BA34C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianObfuscatedIdentifier"];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 setObfuscatedIdentifier:v8 onTag:v7 forClient:v10];
}

id sub_1005BA414(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianNearOwnerTimeout", "unsignedShortValue"}];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 setNearOwnerTimeout:v8 onTag:v7 forClient:v10];
}

id sub_1005BA4E0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 getPersonalizationInfoForDevice:v5 forClient:v7];
}

id sub_1005BA578(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianFirmwareAssetURL"];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 updateFirmwareForDevice:v7 withAssetURL:v8 forClient:v10];
}

id sub_1005BA640(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 abortFirmwareUpdateForDevice:v5 forClient:v7];
}

id sub_1005BA6D8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchFirmwareVersionFromTag:v5 forClient:v7 includeCrashLogs:0];
}

id sub_1005BA774(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianUserStatsPersistence", "BOOLValue"}];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;

  return [v8 fetchUserStatsWithPersistence:v7 fromTag:v6 forClient:v9];
}

id sub_1005BA830(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianSoundSequence"];
  if (!v8)
  {
    v8 = +[CLFindMyAccessorySoundSequence defaultSequence];
  }

  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 playUnauthorizedSoundSequence:v8 onTag:v7 forClient:v10];
}

id sub_1005BA910(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 stopPlayingUnauthorizedSoundOnTag:v5 forClient:v7];
}

id sub_1005BA9A8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianWildConfig"];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 setWildModeConfiguration:v8 onTag:v7 forClient:v10];
}

id sub_1005BAA70(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 rollWildKeyOnTag:v5 forClient:v7];
}

id sub_1005BAB08(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianAccelerometerSlopeModeConfigurationKey"];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 setAccelerometerSlopeModeConfiguration:v8 onTag:v7 forClient:v10];
}

id sub_1005BABD0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianAccelerometerOrientationModeConfigurationKey"];
  v9 = *(a1 + 24);
  v10 = CLISP_ME_TOKEN;

  return [v9 setAccelerometerOrientationModeConfiguration:v8 onTag:v7 forClient:v10];
}

id sub_1005BAC98(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAccelerometerSlopeModeConfigurationOnTag:v5 forClient:v7];
}

id sub_1005BAD30(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAccelerometerOrientationModeConfigurationOnTag:v5 forClient:v7];
}

id sub_1005BADC8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAccelerometerModeOnTag:v5 forClient:v7];
}

id sub_1005BAE60(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLDurianSetUnauthorizedPlaySoundRateLimitKey", "BOOLValue"}];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;

  return [v8 setUnauthorizedPlaySoundRateLimit:v7 onTag:v6 forClient:v9];
}

void sub_1005BAF24(CLAvengerScannerClient *a1)
{
  sub_1005BDD78(a1);
  v2 = dispatch_time(0, 5000000000);
  v3 = [-[CLAvengerPowerAssertion silo](a1->_avengerPowerAssertion "silo")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BDFB0;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_after(v2, v3, block);
  v4 = dispatch_time(0, 125000000000);
  v5 = [-[CLAvengerPowerAssertion silo](a1->_avengerPowerAssertion "silo")];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005BDFBC;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  dispatch_after(v4, v5, v6);
}

void sub_1005BB048(CLAvengerScannerClient *a1)
{
  sub_1005BDD78(a1);
  v2 = dispatch_time(0, 5000000000);
  v3 = [-[CLAvengerPowerAssertion silo](a1->_avengerPowerAssertion "silo")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005BDFC4;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_after(v2, v3, block);
  v4 = dispatch_time(0, 125000000000);
  v5 = [-[CLAvengerPowerAssertion silo](a1->_avengerPowerAssertion "silo")];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005BDFD0;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  dispatch_after(v4, v5, v6);
}

void sub_1005BB16C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {

    [v2 stopTemporaryLongAggressiveScan];
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 56) clientname];
      v5[0] = 68289282;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 2114;
      v9 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client no avenger scanner to stop, name:%{public, location:escape_only}@}", v5, 0x1Cu);
    }
  }
}

id sub_1005BB28C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeFetchTxPowerOwnerKey"];
  v8 = *(a1 + 24);
  v9 = CLISP_ME_TOKEN;
  v10 = [v7 BOOLValue];

  return [v8 fetchTxPowerForDevice:v6 forClient:v9 asOwner:v10];
}

id sub_1005BB350(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeAggressiveAdvertisementTimeoutKey"];
  v8 = *(a1 + 24);
  v9 = [v7 intValue];
  v10 = CLISP_ME_TOKEN;

  return [v8 startAggressiveAdvertisingForDevice:v6 withTimeout:v9 forClient:v10];
}

id sub_1005BB410(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 stopAggressiveAdvertisingForDevice:v5 forClient:v7];
}

id sub_1005BB4A8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 startUnauthorizedAggressiveAdvertisingForDevice:v5 forClient:v7];
}

id sub_1005BB540(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeTestModeKey"];
  v9 = *(a1 + 24);
  v10 = [v8 intValue];
  v11 = CLISP_ME_TOKEN;

  return [v9 setHawkeyeTestMode:v10 onTag:v7 forClient:v11];
}

id sub_1005BB610(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeSeparatedUTTimeoutSecondsKey"];
  v9 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeSeparatedUTBackoffTimeoutSecondsKey"];
  v10 = *(a1 + 24);
  v11 = [v8 unsignedIntValue];
  v12 = [v9 unsignedIntValue];
  v13 = CLISP_ME_TOKEN;

  return [v10 setHawkeyeUTMotionConfigWithSeparatedUTTimeoutSeconds:v11 separatedUTBackoffTimeoutSeconds:v12 forDevice:v7 forClient:v13];
}

id sub_1005BB710(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISProductDataForDevice:v5 forClient:v7];
}

id sub_1005BB7A8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISManufacturerNameForDevice:v5 forClient:v7];
}

id sub_1005BB840(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISModelNameForDevice:v5 forClient:v7];
}

id sub_1005BB8D8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISModelColorCodeForDevice:v5 forClient:v7];
}

id sub_1005BB970(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISAccessoryCategoryForDevice:v5 forClient:v7];
}

id sub_1005BBA08(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISAccessoryCapabilitiesForDevice:v5 forClient:v7];
}

id sub_1005BBAA0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISFindMyVersionForDevice:v5 forClient:v7];
}

id sub_1005BBB38(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeAISBatteryTypeForDevice:v5 forClient:v7];
}

id sub_1005BBBD0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeSerialNumber:v5 forClient:v7];
}

id sub_1005BBC68(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeCurrentPrimaryKey:v5 forClient:v7];
}

id sub_1005BBD00(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchHawkeyeiCloudIdentifier:v5 forClient:v7];
}

void sub_1005BBD98(uint64_t a1, CLConnectionMessage **a2)
{
  sub_10000EC00(&__p, "com.apple.locationd.Proximity.FindMyCertification");
  isEntitled = CLConnection::isEntitled();
  v5 = isEntitled;
  if (SBYTE3(v19) < 0)
  {
    operator delete(__p);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (isEntitled)
  {
LABEL_3:
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
    v9 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeFirmwareAssetURLKey"];
    v10 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeProductGroupKey"];
    v11 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeProductNumberKey"];
    v12 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeFirmwareURLSandboxExtensionKey"];
    [*(a1 + 24) useLocalFirmwareAssetFromUrl:v9 forProductGroup:v10 forProductNumber:v11 withSandboxExtension:v12 forClient:CLISP_ME_TOKEN];
    return;
  }

  if (qword_1025D4610 != -1)
  {
    sub_1018D4CF0();
  }

  v13 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 56) clientname];
    __p = 68289282;
    v16 = 2082;
    v17 = "";
    v18 = 2114;
    v19 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client not entitled for FMCA commands, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
  }
}

void sub_1005BBF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BBFB0(uint64_t a1, CLConnectionMessage **a2)
{
  sub_10000EC00(&__p, "com.apple.locationd.Proximity.FindMyCertification");
  isEntitled = CLConnection::isEntitled();
  v5 = isEntitled;
  if (SBYTE3(v16) < 0)
  {
    operator delete(__p);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (isEntitled)
  {
LABEL_3:
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
    v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeProductGroupKey"];
    v9 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeProductNumberKey"];
    [*(a1 + 24) useDefaultFirmwareAssetSourceForProductGroup:v8 andProductNumber:v9 forClient:CLISP_ME_TOKEN];
    return;
  }

  if (qword_1025D4610 != -1)
  {
    sub_1018D4CF0();
  }

  v10 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 56) clientname];
    __p = 68289282;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client not entitled for FMCA commands, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
  }
}

void sub_1005BC154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BC178(uint64_t a1, CLConnectionMessage **a2)
{
  sub_10000EC00(&__p, "com.apple.locationd.Proximity.FindMyCertification");
  isEntitled = CLConnection::isEntitled();
  v5 = isEntitled;
  if (SBYTE3(v16) < 0)
  {
    operator delete(__p);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (isEntitled)
  {
LABEL_3:
    v6 = [NSSet setWithObjects:objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
    v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeProductGroupKey"];
    v9 = [DictionaryOfClasses objectForKeyedSubscript:@"CLHawkeyeProductNumberKey"];
    [*(a1 + 24) fetchWhetherLocalFirmwareAssetIsInUseForProductGroup:v8 andProductNumber:v9 forClient:CLISP_ME_TOKEN];
    return;
  }

  if (qword_1025D4610 != -1)
  {
    sub_1018D4CF0();
  }

  v10 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 56) clientname];
    __p = 68289282;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client not entitled for FMCA commands, client:%{public, location:escape_only}@}", &__p, 0x1Cu);
  }
}

void sub_1005BC31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BC340(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 56) clientname];
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #client already scanning for BTFinding, client:%{public, location:escape_only}@}", &v11, 0x1Cu);
      if (qword_1025D4610 != -1)
      {
        sub_1018D4CF0();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = [*(a1 + 56) clientname];
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = v5;
      v6 = "#durian #client already scanning for BTFinding";
      v7 = "{msg%{public}.0s:#durian #client already scanning for BTFinding, client:%{public, location:escape_only}@}";
LABEL_9:
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v6, v7, &v11, 0x1Cu);
    }
  }

  else
  {
    *(a1 + 48) = 1;
    sub_1005BDD78(a1);
    if ([*(a1 + 32) poweredOn])
    {
      if (([*(a1 + 32) startBTFindingScan] & 1) == 0)
      {
        if (qword_1025D4610 != -1)
        {
          sub_1018D4D18();
        }

        v8 = qword_1025D4618;
        if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
        {
          v9 = [*(a1 + 56) clientname];
          v11 = 68289282;
          v12 = 0;
          v13 = 2082;
          v14 = "";
          v15 = 2114;
          v16 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #client failed to BTFindingScan even when powered on, client:%{public, location:escape_only}@}", &v11, 0x1Cu);
          if (qword_1025D4610 != -1)
          {
            sub_1018D4CF0();
          }
        }

        v4 = qword_1025D4618;
        if (os_signpost_enabled(qword_1025D4618))
        {
          v10 = [*(a1 + 56) clientname];
          v11 = 68289282;
          v12 = 0;
          v13 = 2082;
          v14 = "";
          v15 = 2114;
          v16 = v10;
          v6 = "#durian #client failed to BTFindingScan even when powered on";
          v7 = "{msg%{public}.0s:#durian #client failed to BTFindingScan even when powered on, client:%{public, location:escape_only}@}";
          goto LABEL_9;
        }
      }
    }

    else
    {
      *(a1 + 49) = 1;
    }
  }
}

void sub_1005BC5F8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    *(a1 + 48) = 0;
    [*(a1 + 32) stopBTFindingScan];

    sub_1005BDEB0(a1);
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 56) clientname];
      v6 = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #client not scanning for BTFinding, client:%{public, location:escape_only}@}", &v6, 0x1Cu);
      if (qword_1025D4610 != -1)
      {
        sub_1018D4CF0();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = [*(a1 + 56) clientname];
      v6 = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian #client not scanning for BTFinding", "{msg%{public}.0s:#durian #client not scanning for BTFinding, client:%{public, location:escape_only}@}", &v6, 0x1Cu);
    }
  }
}

void sub_1005BC7C8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian sa performing avenger scan}", &v5, 0x12u);
    }

    [*(a1 + 32) performTemporaryAggressiveScan];
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian sa attempted to issue scan but scanner client doesnt exist}", &v5, 0x12u);
      if (qword_1025D4610 != -1)
      {
        sub_1018D4CF0();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian sa attempted to issue scan but scanner client doesnt exist", "{msg%{public}.0s:#durian sa attempted to issue scan but scanner client doesnt exist}", &v5, 0x12u);
    }
  }
}

void sub_1005BC9A0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian sa performing long avenger scan}", &v5, 0x12u);
    }

    [*(a1 + 32) performTemporaryLongAggressiveScan];
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian sa attempted to issue scan but scanner client doesnt exist}", &v5, 0x12u);
      if (qword_1025D4610 != -1)
      {
        sub_1018D4CF0();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian sa attempted to issue scan but scanner client doesnt exist", "{msg%{public}.0s:#durian sa attempted to issue scan but scanner client doesnt exist}", &v5, 0x12u);
    }
  }
}

void sub_1005BCB78(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v2 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian sa stopping long avenger scan}", &v5, 0x12u);
    }

    [*(a1 + 32) stopTemporaryLongAggressiveScan];
  }

  else
  {
    if (qword_1025D4610 != -1)
    {
      sub_1018D4D18();
    }

    v3 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_ERROR))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian sa attempted to terminate long scan but scanner proxy doesnt exist}", &v5, 0x12u);
      if (qword_1025D4610 != -1)
      {
        sub_1018D4CF0();
      }
    }

    v4 = qword_1025D4618;
    if (os_signpost_enabled(qword_1025D4618))
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian sa attempted to terminate long scan but scanner proxy doesnt exist", "{msg%{public}.0s:#durian sa attempted to terminate long scan but scanner proxy doesnt exist}", &v5, 0x12u);
    }
  }
}

id sub_1005BCD7C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianIdentifier"];
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianMacAddress"];
  v9 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianTagType"];
  v10 = [NSData dataWithHexString:v8];
  if ([v9 isEqualToString:@"durian"])
  {
    v11 = 1;
  }

  else if ([v9 isEqualToString:@"hawkeye"])
  {
    v11 = 2;
  }

  else if ([v9 isEqualToString:@"hele"])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = [[TAUnknownBeacon alloc] initWithBeaconUUID:v7 address:v10 deviceType:v11 withAccessoryInfo:0];
  [*(a1 + 64) fetchAISInfoForTAUnknownBeacon:v12 client:CLISP_ME_TOKEN];

  return v12;
}

id sub_1005BCEF8(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianMacAddress"];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianTagType"];
  v8 = [NSData dataWithHexString:v6];
  v9 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLAvengerAdvertisementDetailsBitmask", "intValue"}];
  v10 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianDebugShouldRemoveDeviceFromTADeviceRecord"];
  if ([v7 isEqualToString:@"durian"])
  {
    v11 = 1;
  }

  else if ([v7 isEqualToString:@"hawkeye"])
  {
    v11 = 2;
  }

  else if ([v7 isEqualToString:@"hele"])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v10 isEqualToString:@"NO"];
  v13 = CLISP_ME_TOKEN;
  v14 = v12 ^ 1;
  v15 = *(a1 + 64);

  return [v15 stageTADetection:v8 deviceType:v11 detailsBitmask:v9 shouldRemoveDevice:v14 client:v13];
}

id sub_1005BD074(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v4);
  v6 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianMacAddress"];
  v7 = [DictionaryOfClasses objectForKeyedSubscript:@"CLDurianTagType"];
  v8 = [NSData dataWithHexString:v6];
  v9 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"CLAvengerAdvertisementDetailsBitmask", "intValue"}];
  if ([v7 isEqualToString:@"durian"])
  {
    v10 = 1;
  }

  else if ([v7 isEqualToString:@"hawkeye"])
  {
    v10 = 2;
  }

  else if ([v7 isEqualToString:@"hele"])
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 64);
  v12 = CLISP_ME_TOKEN;

  return [v11 forceSurfaceStagedDetections:v8 deviceType:v10 detailsBitmask:v9 client:v12];
}

id sub_1005BD1B4(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISProductDataForDevice:v5 forClient:v7];
}

id sub_1005BD24C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISManufacturerNameForDevice:v5 forClient:v7];
}

id sub_1005BD2E4(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISModelNameForDevice:v5 forClient:v7];
}

id sub_1005BD37C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISProtocolImplementationForDevice:v5 forClient:v7];
}

id sub_1005BD414(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISAccessoryCapabilitiesForDevice:v5 forClient:v7];
}

id sub_1005BD4AC(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISAccessoryCategoryForDevice:v5 forClient:v7];
}

id sub_1005BD544(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISNetworkIDForDevice:v5 forClient:v7];
}

id sub_1005BD5DC(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISFirmwareVersionForDevice:v5 forClient:v7];
}

id sub_1005BD674(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISBatteryTypeForDevice:v5 forClient:v7];
}

id sub_1005BD70C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISBatteryLevelForDevice:v5 forClient:v7];
}

id sub_1005BD7A4(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  v5 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v4)];
  v6 = *(a1 + 24);
  v7 = CLISP_ME_TOKEN;

  return [v6 fetchAISSerialNumberForDevice:v5 forClient:v7];
}

id sub_1005BD83C(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v5)];
  v7 = *(a1 + 24);
  v8 = CLISP_ME_TOKEN;

  return [v7 fetchAccessoryInformation:v6 client:v8];
}

void sub_1005BD8E8(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(buf, "com.apple.locationd.Proximity.TagManagement");
  isEntitled = CLConnection::isEntitled();
  v5 = isEntitled;
  if (SBYTE3(v33) < 0)
  {
    operator delete(*buf);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else if (isEntitled)
  {
LABEL_3:
    v6 = CLConnectionMessage::name(*a2);
    if (*(v6 + 23) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *v6;
    }

    v8 = [(NSArray *)[[NSString stringWithUTF8String:?]lastObject:@"/"]];
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v11 = [CLConnectionMessage::getDictionaryOfClasses(*a2 v10)];
    if (qword_1025D4610 != -1)
    {
      sub_1018D4CF0();
    }

    v12 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_msgSend(v11 "description")];
      v14 = [*(a1 + 56) clientname];
      *buf = 68289795;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = v8;
      v34 = 2113;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client handleMessage, name:%{public, location:escape_only}@, item:%{private, location:escape_only}@, client:%{public, location:escape_only}@}", buf, 0x30u);
    }

    sub_1005B7EA8();
    v15 = CLConnectionMessage::name(*a2);
    v16 = sub_10001A2EC(qword_102657028, v15);
    sub_1005B7EA8();
    if (v16)
    {
      v17 = v16[5];
      v18 = v16[6];
      v19 = (a1 + (v18 >> 1));
      if (v18)
      {
        v17 = *(*v19 + v17);
      }

      v26 = *(a2 + 8);
      v27 = *a2;
      v28 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17(v19, &v27);
      if (v28)
      {
        sub_100008080(v28);
      }
    }

    else
    {
      if (qword_1025D4610 != -1)
      {
        sub_1018D4CF0();
      }

      v22 = qword_1025D4618;
      if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_FAULT))
      {
        v23 = [objc_msgSend(v11 "description")];
        *buf = 68289539;
        *&buf[4] = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2114;
        v33 = v8;
        v34 = 2113;
        v35 = v23;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#durian #client unrecognized message, name:%{public, location:escape_only}@, item:%{private, location:escape_only}@}", buf, 0x26u);
        if (qword_1025D4610 != -1)
        {
          sub_1018D4CF0();
        }
      }

      v24 = qword_1025D4618;
      if (os_signpost_enabled(qword_1025D4618))
      {
        v25 = [objc_msgSend(v11 "description")];
        *buf = 68289539;
        *&buf[4] = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2114;
        v33 = v8;
        v34 = 2113;
        v35 = v25;
        _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian #client unrecognized message", "{msg%{public}.0s:#durian #client unrecognized message, name:%{public, location:escape_only}@, item:%{private, location:escape_only}@}", buf, 0x26u);
      }
    }

    return;
  }

  if (qword_1025D4610 != -1)
  {
    sub_1018D4CF0();
  }

  v20 = qword_1025D4618;
  if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 56) clientname];
    *buf = 68289282;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2114;
    v33 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #client not entitled, client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }
}