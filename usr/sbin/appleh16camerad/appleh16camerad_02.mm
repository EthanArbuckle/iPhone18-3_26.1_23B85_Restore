BOOL sub_100020EDC(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 4144)
  {
    (*(*a1 + 24))(a1, a2, 4144);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 4144, v4);
  }

  return v5 == 4144;
}

BOOL sub_100020FA0(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 4248)
  {
    (*(*a1 + 24))(a1, a2, 4248);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 4248, v4);
  }

  return v5 == 4248;
}

uint64_t sub_100021064(uint64_t a1)
{
  v2 = sub_1000207A0(a1);
  *v2 = off_1000A2318;
  sub_1000210DC(v2);
  return a1;
}

void sub_1000210AC(_Unwind_Exception *a1)
{
  *v1 = off_1000A20A8;
  sub_10001E9B8((v1 + 1));
  _Unwind_Resume(a1);
}

void sub_1000210DC(uint64_t a1)
{
  *(a1 + 81) = 0;
  v1 = (a1 + 81);
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", kCFAllocatorDefault, 3u);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v5);
    goto LABEL_7;
  }

  v8 = CFGetTypeID(v5);
  if (v8 == CFStringGetTypeID())
  {
    BytePtr = CFStringGetCStringPtr(v5, 0x8000100u);
LABEL_7:
    if (BytePtr)
    {
      strncpy(v1, BytePtr, 0x20uLL);
    }
  }

  CFRelease(v5);
}

void sub_1000211D8(void *a1)
{
  *a1 = off_1000A20A8;
  sub_10001E9B8((a1 + 1));

  operator delete();
}

double sub_10002123C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F8E0((a1 + 8), 0);
  if ((*(*v4 + 16))(v4))
  {
    (*(*v4 + 24))(v4, &v6, 4);
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          return sub_1000219F8(a1, v4, a2);
        }

        if (v6 == 6)
        {
          sub_100021A74(a1, v4, a2);
        }

        return result;
      }

      if (!sub_100021C88(v4, &v7))
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v6 == 1)
    {
      if (!sub_100021B10(v4, &v7))
      {
        return result;
      }

      goto LABEL_15;
    }

    if (v6 == 2 && sub_100021BCC(v4, &v7))
    {
LABEL_15:
      *(a2 + 4280) = v7;
      result = v8;
      *(a2 + 24) = v8;
    }
  }

  return result;
}

void sub_100021388(uint64_t a1)
{
  v1 = sub_10001F8E0((a1 + 8), 2);
  if ((*(*v1 + 16))(v1))
  {
    (*(*v1 + 24))(v1, &v2, 4);
    switch(v2)
    {
      case 3:
        sub_100020DF0();
        break;
      case 2:
        sub_100020D18();
        break;
      case 1:
        sub_100020C40();
        break;
    }
  }
}

void sub_100021480(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F8E0((a1 + 8), 1);
  if ((*(*v4 + 16))(v4))
  {
    (*(*v4 + 24))(v4, &v5, 4);
    if (v5 == 3)
    {
      sub_100021F10(a1, v4, a2);
    }

    else if (v5 == 2)
    {
      sub_100021EBC(a1, v4, a2);
    }

    else if (v5 == 1 && sub_100021B10(v4, &v6))
    {
      *(a2 + 8544) = v6;
      *(a2 + 4288) = v7;
      *(a2 + 8904) = 0;
      *(a2 + 8920) = 0;
      *(a2 + 8912) = 0;
    }
  }
}

uint64_t sub_100021594(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001F8E0((a1 + 8), 5);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v7, 4);
    if (v7 == 1)
    {
      result = sub_100021F74(v3, &v5);
      if (result)
      {
        *a2 = v5;
        *(a2 + 16) = v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021658(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001F8E0((a1 + 8), 6);
  result = (*(*v3 + 16))(v3);
  if (result)
  {
    (*(*v3 + 24))(v3, &v8, 4);
    if (v8 == 1)
    {
      result = sub_100022030(v3, &v5);
      if (result)
      {
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 24) = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100021724(uint64_t a1, uint64_t a2)
{
  memcpy((a2 + 8928), (a2 + 24), 0x10A8uLL);
  v3 = 0;
  v4 = (a2 + 13192);
  v5 = vdupq_n_s64(3uLL);
  v6 = vdupq_n_s64(2uLL);
  do
  {
    v7 = v4;
    v8 = 4;
    v9 = xmmword_10008B050;
    do
    {
      if (vmovn_s64(vcgtq_u64(v5, v9)).u8[0])
      {
        if (v3 + v8 == 4)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *v7 = v10;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v9)).i32[1])
      {
        if (v3 + v8 == 5)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v7[3] = v11;
      }

      v9 = vaddq_s64(v9, v6);
      v7 += 6;
      v8 -= 2;
    }

    while (v8);
    ++v3;
    ++v4;
  }

  while (v3 != 3);
  *(a2 + 13264) = *(a2 + 8648);
  *(a2 + 13280) = *(a2 + 8664);
  if (*(a2 + 8912) == 0.0 && *(a2 + 8920) == 0.0)
  {
    v12 = *(a2 + 4296);
    if (v12 != 0.0)
    {
      *(a2 + 8912) = v12;
    }
  }

  v13 = *(a2 + 8936);
  if (v13 != 0.0 && *(a2 + 8880) == 0.0)
  {
    *(a2 + 8880) = v13;
  }

  v14 = *(a2 + 8944);
  if (v14 != 0.0)
  {
    v15 = *(a2 + 8952);
    if (v15 != 0.0 && *(a2 + 8728) == 0.0 && *(a2 + 8744) == 0.0 && *(a2 + 8792) == 0.0 && *(a2 + 8808) == 0.0)
    {
      *(a2 + 8728) = v14;
      *(a2 + 8792) = v15;
    }
  }

  return 1;
}

uint64_t sub_1000218A0(uint64_t a1)
{
  v1 = sub_10001F8E0((a1 + 8), 12);
  if ((*(*v1 + 16))(v1))
  {
    (*(*v1 + 32))(v1);
    operator new[]();
  }

  return 0;
}

double sub_1000219F8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sub_100021D44(a2, &v6))
  {
    *(a3 + 4280) = v6;
    v5 = v7;
    *(a3 + 24) = v7;
    *(a3 + 8880) = 0;
    *(a3 + 8896) = 0;
    *(a3 + 8888) = 0;
    *(a3 + 8720) = v10;
    *(a3 + 8728) = 0;
    *(a3 + 8792) = 0;
    *(a3 + 8736) = v5 * v8;
    result = v5 * v9;
    *(a3 + 8800) = result;
  }

  return result;
}

BOOL sub_100021A74(uint64_t a1, const char *a2, uint64_t a3)
{
  result = sub_100021E00(a2, v11);
  if (result)
  {
    v5 = v14;
    *(a3 + 8896) = v15;
    v6 = v12;
    *(a3 + 8880) = v12 * v13;
    *(a3 + 4280) = v11[1];
    *(a3 + 24) = v6;
    *(a3 + 8888) = v6 * v5;
    *(a3 + 8720) = v16[8];
    v7 = v16;
    v8 = (a3 + 8792);
    v9 = 8;
    do
    {
      v8[-4] = vmulq_n_f64(v7[-4], v6);
      v10 = *v7++;
      *v8++ = vmulq_n_f64(v10, v6);
      v9 -= 2;
    }

    while (v9);
  }

  return result;
}

BOOL sub_100021B10(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 12)
  {
    (*(*a1 + 24))(a1, a2, 12);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 12, v4);
  }

  return v5 == 12;
}

BOOL sub_100021BCC(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 20)
  {
    (*(*a1 + 24))(a1, a2, 20);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 20, v4);
  }

  return v5 == 20;
}

BOOL sub_100021C88(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 36)
  {
    (*(*a1 + 24))(a1, a2, 36);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 36, v4);
  }

  return v5 == 36;
}

BOOL sub_100021D44(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 84)
  {
    (*(*a1 + 24))(a1, a2, 84);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 84, v4);
  }

  return v5 == 84;
}

BOOL sub_100021E00(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 176)
  {
    (*(*a1 + 24))(a1, a2, 176);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 176, v4);
  }

  return v5 == 176;
}

double sub_100021EBC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sub_100021BCC(a2, &v6))
  {
    *(a3 + 8544) = v6;
    v5 = v8;
    *(a3 + 4288) = v7;
    *(a3 + 8904) = v5;
    result = 0.0;
    *(a3 + 8912) = 0u;
  }

  return result;
}

double sub_100021F10(uint64_t a1, const char *a2, uint64_t a3)
{
  if (sub_100021C88(a2, &v7))
  {
    *(a3 + 8544) = v7;
    v5 = v8;
    v6 = v9;
    *(a3 + 4288) = v8;
    *(a3 + 8904) = v6;
    *(a3 + 8912) = v5 * v10;
    result = v5 * v11;
    *(a3 + 8920) = result;
  }

  return result;
}

BOOL sub_100021F74(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 24)
  {
    (*(*a1 + 24))(a1, a2, 24);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 24, v4);
  }

  return v5 == 24;
}

BOOL sub_100022030(const char *a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = v4;
  if (v4 == 32)
  {
    (*(*a1 + 24))(a1, a2, 32);
  }

  else
  {
    printf("Expected file %s to be of size %ld. Actual size: %d\n", a1 + 8, 32, v4);
  }

  return v5 == 32;
}

BOOL sub_1000220EC(uint64_t a1, unsigned int a2, __CFDictionary *a3)
{
  v5 = sub_10001FE08(a1, a2);
  if (v5)
  {
    CFDictionarySetValue(a3, [NSString stringWithUTF8String:&aPcic[256 * a2]], v5);
    CFRelease(v5);
  }

  else
  {
    NSLog(@"%s: couldn't open input", &aPcic[256 * a2]);
  }

  return v5 != 0;
}

uint64_t sub_10002218C(uint64_t a1)
{
  v2 = sub_100022204(a1);
  *v2 = off_1000A2350;
  sub_100022294(v2);
  return a1;
}

void sub_1000221D4(_Unwind_Exception *a1)
{
  *v1 = off_1000A21E8;
  sub_10001E3A8(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100022204(uint64_t a1)
{
  *a1 = off_1000A21E8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = off_1000A1F50;
  *(a1 + 16) = a1 + 24;
  *(a1 + 48) = 0;
  *(a1 + 48) = sub_10001BEE8();
  return a1;
}

void sub_100022294(uint64_t a1)
{
  *(a1 + 49) = 0;
  v1 = (a1 + 49);
  v2 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  v4 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"JasperSNUM", kCFAllocatorDefault, 3u);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v5);
    goto LABEL_7;
  }

  v8 = CFGetTypeID(v5);
  if (v8 == CFStringGetTypeID())
  {
    BytePtr = CFStringGetCStringPtr(v5, 0x8000100u);
LABEL_7:
    if (BytePtr)
    {
      strncpy(v1, BytePtr, 0x20uLL);
    }
  }

  CFRelease(v5);
}

void sub_100022390(void *a1)
{
  *a1 = off_1000A21E8;
  sub_10001E3A8(a1 + 1);

  operator delete();
}

uint64_t sub_1000223F4()
{
  byte_10041DE00 = sub_10002ECA4(@"FdrForTof", @"com.apple.coremedia", 1) != 0;
  dword_10041DE08 = 0;
  qword_10041DE10 = 0;

  return __cxa_atexit(sub_10001CFD0, &dword_10041DE08, &_mh_execute_header);
}

_BYTE *sub_100022468(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023280();
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

BOOL sub_100022520()
{
  sub_100022468(__p, "JYKY");
  v0 = IOServiceNameMatching("product");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  v2 = MatchingService;
  if (!MatchingService)
  {
    v16 = 1;
    goto LABEL_33;
  }

  v3 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"rosaline-serial-num", kCFAllocatorDefault, 3u);
  v4 = v3;
  if (v3)
  {
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v4);
    sub_100022468(&v22, "");
    if (Length)
    {
      v7 = -11;
      do
      {
        v9 = *BytePtr++;
        v8 = v9;
        if (!v9)
        {
          break;
        }

        if (v7 <= 3)
        {
          std::string::push_back(&v22, v8);
        }

        ++v7;
        --Length;
      }

      while (Length);
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v11 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v11 = __p[1];
    }

    if (size != v11 || ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = &v22) : (v12 = v22.__r_.__value_.__r.__words[0]), (v24 & 0x80u) == 0 ? (v13 = __p) : (v13 = __p[0]), memcmp(v12, v13, size)))
    {
      v14 = 0;
      v15 = 0;
      v16 = 1;
      goto LABEL_23;
    }

    v18 = IOServiceNameMatching("AppleProxHIDEventDriver");
    v19 = IOServiceGetMatchingService(kIOMainPortDefault, v18);
    v14 = v19;
    if (v19)
    {
      v20 = IORegistryEntrySearchCFProperty(v19, "IOService", @"floodComplianceRevision", kCFAllocatorDefault, 3u);
      v15 = v20;
      if (v20)
      {
        valuePtr = 0;
        if (CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr))
        {
          v16 = (valuePtr & 0xC0) != 0;
        }

        else
        {
          NSLog(@"Error converting vader compliance value\n");
          v16 = 0;
        }

LABEL_23:
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        goto LABEL_27;
      }

      NSLog(@"Couldn't read vader compliance\n");
    }

    else
    {
      NSLog(@"Unable to find prox service");
      v14 = 0;
    }

    v16 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v15 = 0;
  v14 = 0;
  v16 = 1;
LABEL_27:
  IOObjectRelease(v2);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v14)
  {
    IOObjectRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_33:
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_10002279C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t sub_1000227E8()
{
  v0 = __chkstk_darwin();
  v1 = 0;
  v2 = (*(v0 + 4304) + 8);
  v3 = -1;
  v4 = -1;
  do
  {
    v5 = v2[2];
    if (v5 == 1785950322)
    {
      if (*v2)
      {
        v4 = v1;
      }
    }

    else if (v5 == 1718186595 && *v2)
    {
      v3 = v1;
    }

    v2 += 26;
    ++v1;
  }

  while (v1 != 6);
  if (v3 == -1)
  {
    NSLog(@"Found no IR sensor\n");
    goto LABEL_67;
  }

  v6 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  v8 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageSNUM", kCFAllocatorDefault, 3u);
  if (v8)
  {
    CFRelease(v8);
    v9 = 0;
  }

  else
  {
    NSLog(@"LoadPDEFiles: No Savage found. Never mind");
    v9 = 8;
  }

  v10 = sub_10001CECC();
  v11 = v10;
  NSLog(@"LoadPDEFiles: isOverridden %d", v10);
  v49 = 0;
  sub_100022468(&v48, "");
  v12 = [+[MSUDataAccessor sharedDataAccessor](MSUDataAccessor "sharedDataAccessor")];
  if (v49)
  {

    if (!v11)
    {
      NSLog(@"Could not find SEP reference location. Will use ISP references");
    }
  }

  else
  {
    v13 = v12;
    sub_1000233E4(&v48, [v12 UTF8String]);
    std::string::append(&v48, "/", 1uLL);

    if (!v11)
    {
      sub_100022F60(&v48.__r_.__value_.__l.__data_, 5, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0].__r_.__value_.__r.__words[0];
      }

      v15 = fopen(v14, "r");
      v16 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if (v15)
      {
        v17 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = __p;
        }

        NSLog(@"Found reference plist at %s. Will use SEP references", v17);
        v9 |= 1u;
        fclose(v15);
      }

      else
      {
        v18 = __p[0].__r_.__value_.__r.__words[0];
        v19 = __error();
        v20 = __p;
        if (v16 < 0)
        {
          v20 = v18;
        }

        NSLog(@"Could not find reference plist at %s (errno: %d). Will use ISP references", v20, *v19);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  sub_100055F24(v0, outputStruct);
  v21 = outputStruct[11];
  v22 = sub_10005E61C(v0);
  if (v21)
  {
    v23 = v9 | 2;
  }

  else
  {
    v23 = v9;
  }

  if (v22)
  {
    v24 = 4;
  }

  else
  {
    v24 = 16;
  }

  sub_10001C530(v23 | v24);
  sub_10001CD78();
  __p[0].__r_.__value_.__r.__words[0] = 0;
  if (sub_10001C760(__p))
  {
    operator new[]();
  }

  NSLog(@"Error: Couldn't send NVM\n");
  bzero(__p, 0x14uLL);
  NSLog(@"Reading rosaline serial number from sysconfig\n");
  v25 = IOServiceNameMatching("product");
  v26 = IOServiceGetMatchingService(kIOMainPortDefault, v25);
  v27 = IORegistryEntrySearchCFProperty(v26, "IOService", @"rosaline-serial-num", kCFAllocatorDefault, 3u);
  v28 = v27;
  if (!v27)
  {
    NSLog(@"Couldn't read serial number\n");
    goto LABEL_54;
  }

  BytePtr = CFDataGetBytePtr(v27);
  Length = CFDataGetLength(v28);
  memcpy(&__p[0].__r_.__value_.__s.__data_[2], BytePtr, Length);
  NSLog(@"Reading rosaline power from FDR\n");
  LOBYTE(BytePtr) = sub_10001C53C(__p);
  CFRelease(v28);
  if ((BytePtr & 1) == 0)
  {
    NSLog(@"Reading rosaline power from IOReg\n");
    v31 = IOServiceNameMatching("AppleProxHIDEventDriver");
    v32 = IOServiceGetMatchingService(kIOMainPortDefault, v31);
    v33 = IORegistryEntrySearchCFProperty(v32, "IOService", @"floodCalibrationCurrent", kCFAllocatorDefault, 3u);
    v34 = v33;
    if (v33)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v33, kCFNumberSInt32Type, &valuePtr))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = valuePtr;
        if (valuePtr < 0x10000)
        {
          CFRelease(v34);
          goto LABEL_51;
        }

        NSLog(@"Error converting calibrated power value:  could not fit 32-bit value into 16-bit destination \n");
      }

      else
      {
        NSLog(@"Error converting calibrated power value\n");
      }

      CFRelease(v34);
    }

    else
    {
      NSLog(@"Could not read calibrated power from IOReg\n");
    }

    NSLog(@"Reading rosaline power from sysconfig\n");
    v35 = IOServiceNameMatching("isp");
    v36 = IOServiceGetMatchingService(kIOMainPortDefault, v35);
    v37 = IORegistryEntrySearchCFProperty(v36, "IOService", @"rosaline-calibration-current", kCFAllocatorDefault, 3u);
    v38 = v37;
    if (!v37)
    {
      NSLog(@"Could not read calibrated power from sysconfig\n");
      goto LABEL_54;
    }

    LOWORD(__p[0].__r_.__value_.__l.__data_) = *(CFDataGetBytePtr(v37) + 1);
    CFRelease(v38);
  }

LABEL_51:
  NSLog(@"Sending rosaline configuration: SN: %s; Power: %d\n", &__p[0].__r_.__value_.__s.__data_[2], LOWORD(__p[0].__r_.__value_.__l.__data_));
  v39 = sub_10005D4E0(v0, v3, __p, 0x14u, 6u);
  if (!v39)
  {
    goto LABEL_55;
  }

  NSLog(@"Failed to send rosaline data file: 0x%08X\n", v39);
LABEL_54:
  NSLog(@"Error: Couldn't send rosaline configuration\n");
LABEL_55:
  bzero(__p, 0x3400uLL);
  if ((sub_10001CFD4() & 1) == 0)
  {
    NSLog(@"Failed to read PCE Calibration (FDR data)\n");
    goto LABEL_64;
  }

  if (v23)
  {
    v40 = &v48;
  }

  else
  {
    v40 = &unk_10041DE18;
  }

  if (sub_1000230AC(v0, &v40->__r_.__value_.__l.__data_, v3))
  {
    NSLog(@"Failed to send references to FW\n");
LABEL_64:
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    NSLog(@"Failed to load PDE files\n");
    goto LABEL_67;
  }

  if (sub_10005D4E0(v0, v3, __p, 0x3400u, 0xFFu))
  {
    NSLog(@"Failed to send PCE calibration to FW\n");
    goto LABEL_64;
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

LABEL_67:
  if (v4 != -1)
  {
    sub_100055F24(v0, __p);
    if (__p[0].__r_.__value_.__s.__data_[11])
    {
      v41 = 2;
    }

    else
    {
      v41 = 0;
    }

    v42 = IOServiceNameMatching("AppleH16CamIn");
    v43 = IOServiceGetMatchingService(kIOMasterPortDefault, v42);
    v44 = IORegistryEntrySearchCFProperty(v43, "IOService", @"JasperSNUM", kCFAllocatorDefault, 3u);
    if (v44)
    {
      CFRelease(v44);
    }

    else
    {
      NSLog(@"LoadPDEFiles: No JasperSNUM found. skipping FDR");
      v41 = v41 | 8;
    }

    sub_10001C530(v41);
    v45 = sub_10000A4DC(v0, 1);
    if (v45)
    {
      CFRelease(v45);
    }

    else
    {
      NSLog(@"Failed to create JasperLCalib.bin");
      NSLog(@"Failed to load Jasper files\n");
    }
  }

  return 1;
}

void sub_100022F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100022F60(const void **a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  sub_10002342C(a1, "reference", &v13);
  if ((a2 - 4) > 0xA)
  {
    v5 = "";
  }

  else
  {
    v5 = off_1000A23C0[a2 - 4];
  }

  sub_100022468(__p, v5);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v13, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, ".plist", 6uLL);
  *a3 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_100023060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000230AC(uint64_t a1, const void **a2, int a3)
{
  v13 = 256;
  sub_100022F60(a2, 4, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  sub_100023584(a1, a3, [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithUTF8String:p_p]], a2, 2, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_100022F60(a2, 5, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p.__r_.__value_.__r.__words[0];
  }

  v8 = sub_100023584(a1, a3, [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithUTF8String:v7]], a2, 1, &v13);
  v9 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
      return v9;
    }
  }

  else if (v8)
  {
    return v9;
  }

  sub_100022F60(a2, 12, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &__p;
  }

  else
  {
    v10 = __p.__r_.__value_.__r.__words[0];
  }

  sub_100023584(a1, a3, [NSDictionary dictionaryWithContentsOfFile:[NSString stringWithUTF8String:v10]], a2, 3, &v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_10002325C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100023298(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1000232F4(exception, a1);
}

std::logic_error *sub_1000232F4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

std::string *sub_100023328(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1000233E4(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_100023328(a1, __s, v4);
}

uint64_t sub_10002342C@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1000234F8(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_1000234F8(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100023280();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t sub_100023584(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = 3758097084;
  if (a3)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v13 = [a3 allKeys];
    v32 = [NSSortDescriptor sortDescriptorWithKey:@"doubleValue" ascending:1];
    v14 = [v13 sortedArrayUsingDescriptors:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v32, 1)}];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v15 = [a3 objectForKey:@"FormatDR"];
    if (v15)
    {
      v16 = [v15 intValue];
      *(v27 + 6) = v16;
    }

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3052000000;
    v25[3] = sub_1000054A0;
    v25[4] = sub_10000C1F4;
    v25[5] = &off_1000B00C8;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002380C;
    v18[3] = &unk_1000A23A0;
    v18[4] = a3;
    v18[5] = v25;
    v19 = a2;
    v20 = a5;
    v18[10] = a1;
    v18[11] = a6;
    v18[6] = v30;
    v18[7] = &v26;
    v18[8] = &v21;
    v18[9] = a4;
    [v14 enumerateObjectsUsingBlock:v18];
    if (*(v22 + 24))
    {
      v6 = 0;
    }

    else
    {
      v6 = 3758097084;
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(v30, 8);
  }

  return v6;
}

void sub_1000237C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10002380C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([*(*(*(a1 + 40) + 8) + 40) containsObject:a2] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKey:a2];
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = [v7 UTF8String];
      v10 = v9;
      if (*(v8 + 23) >= 0)
      {
        v11 = *(v8 + 23);
      }

      else
      {
        v11 = v8[1];
      }

      v12 = strlen(v9);
      v13 = __p;
      sub_1000234F8(__p, v11 + v12);
      if (v25 < 0)
      {
        v13 = __p[0];
      }

      if (v11)
      {
        if (*(v8 + 23) >= 0)
        {
          v14 = v8;
        }

        else
        {
          v14 = *v8;
        }

        memmove(v13, v14, v11);
      }

      v15 = v13 + v11;
      if (v12)
      {
        memmove(v15, v10, v12);
      }

      v15[v12] = 0;
      if (v25 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      v17 = *(a1 + 88);
      v18 = *v17;
      *v17 = v18 + 1;
      v19 = *(*(*(a1 + 48) + 8) + 24);
      [a2 doubleValue];
      v21 = v20;
      NSLog(@"Sending reference file %s, type: %d\n", v16, v18);
      NSLog(@"Trying to load reference file %s (type: %d, index: %d, temperature: %lf)\n", v16, v18, v19, v21);
      v22 = fopen(v16, "rb");
      v23 = v22;
      if (v22)
      {
        fseeko(v22, 0, 2);
        ftello(v23);
        fseeko(v23, 0, 0);
        operator new[]();
      }

      NSLog(@"Could not open input file: %s\n", v16);
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100023ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100023AE8()
{
  sub_100022468(byte_10041DE18, "/var/mobile/Library/ISP/Pearl/");
  __cxa_atexit(&std::string::~string, byte_10041DE18, &_mh_execute_header);
  qword_10041DE30 = 0x29000000228;
  word_10041DE38 = 0;
  unk_10041DE3C = 0x100000000D8;
  word_10041DE44 = 0;
  qword_10041DE48 = 0x16800000280;
  word_10041DE50 = 1;
  unk_10041DE54 = 0x1E000000280;
  word_10041DE5C = 1;
  qword_10041DE60 = 0x148000000B8;
  word_10041DE68 = 1;
  unk_10041DE6C = vdup_n_s32(0x280u);
  word_10041DE74 = 257;
  qword_10041DE78 = 0x12000000200;
  word_10041DE80 = 257;
  unk_10041DE84 = 0x20000000120;
  word_10041DE8C = 257;
  qword_10041DE90 = 0x29000000228;
  word_10041DE98 = 0;
  unk_10041DE9C = 0x100000000D8;
  word_10041DEA4 = 0;
  qword_10041DEA8 = 0x28000000168;
  word_10041DEB0 = 1;
  unk_10041DEB4 = 0x280000001E0;
  word_10041DEBC = 1;
  qword_10041DEC0 = 0x148000000B8;
  word_10041DEC8 = 1;
  unk_10041DECC = unk_10041DE6C;
  word_10041DED4 = 257;
  qword_10041DED8 = 0x12000000200;
  word_10041DEE0 = 257;
  unk_10041DEE4 = 0x20000000120;
  word_10041DEEC = 257;
  qword_10041DEF0 = 0xF000000140;
  word_10041DEF8 = 256;
  unk_10041DEFC = 0x78000000A0;
  word_10041DF04 = 0;
  qword_10041DF08 = 0xB400000140;
  word_10041DF10 = 256;
  unk_10041DF14 = 0x5A000000A0;
  word_10041DF1C = 0;
  *&result = 0xB800000148;
  qword_10041DF20 = 0xB800000148;
  word_10041DF28 = 256;
  return result;
}

uint64_t sub_100023C80(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  pthread_mutex_init((a1 + 8), &v4);
  pthread_mutexattr_destroy(&v4);
  return a1;
}

uint64_t sub_100023D08(uint64_t a1)
{
  if (*(a1 + 4))
  {
    sub_10000CBA8(a1);
  }

  pthread_mutex_destroy((a1 + 8));
  *a1 = 0;
  return a1;
}

void sub_100023D50(uint64_t a1@<X0>, long double *a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *a2 = atan2(v4, v5);
  a2[1] = atan2(-*(a1 + 48), sqrt(v5 * v5 + v4 * v4));
  a2[2] = atan2(*(a1 + 24), *a1);
}

BOOL sub_100023DBC(__int128 *a1, double *a2, double *a3)
{
  v5 = a1[3];
  v12 = a1[2];
  v13 = v5;
  v14 = *(a1 + 8);
  v6 = a1[1];
  v10 = *a1;
  v11 = v6;
  sub_100023D50(&v10, v15);
  v7 = 0;
  *&v11 = 0;
  v10 = 0uLL;
  do
  {
    *(&v10 + v7 * 8) = v15[v7] * 1000.0;
  }

  while (v7++ < 2);
  *a3 = v10;
  *(a3 + 2) = v11;
  return fabs(*a3) <= a2[85] && fabs(a3[1]) <= a2[86] && fabs(a3[2]) <= a2[87];
}

void *sub_100023EA4(void *a1)
{
  *a1 = &off_1000A2428;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100023EF4(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  *(a1 + 16) = *(a1 + 8);
  v4 = *(a1 + 120);
  if (*a2 != v4)
  {
    NSLog(@"ISF: history mismatch: %d != %u", *a2, v4);
    goto LABEL_41;
  }

  if (a2[1])
  {
    goto LABEL_41;
  }

  v6 = a2[2];
  if (v6 == -1)
  {
    goto LABEL_41;
  }

  if ((v6 & 0x80000000) != 0 || (v7 = *(a1 + 124), v6 >= v7))
  {
    NSLog(@"ISF: history.oldestIdx is out of range: %d", a2[2]);
    goto LABEL_41;
  }

  v8 = a2[3];
  if ((v8 & 0x80000000) != 0 || v8 >= v7)
  {
    NSLog(@"ISF: history.nextIdx is out of range: %d", a2[3]);
    goto LABEL_41;
  }

  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if (!((v10 < 0) ^ v9 | (v10 == 0)))
  {
    v7 = 0;
  }

  v11 = v10 + v7;
  *(a1 + 64) = v11;
  sub_10002417C((a1 + 8), (v11 + 1));
  sub_10002522C(v3, *(a1 + 16), a2 + 40, &a2[18 * *(a1 + 64) + 10], *(a1 + 64));
  v12 = *(a1 + 8);
  if (v12 == *(a1 + 16))
  {
    goto LABEL_28;
  }

  v13 = 0;
  do
  {
    v14 = 0;
    v15 = 60;
    while (1)
    {
      v16 = *(v12 + v15);
      if ((v16 & 0x80000000) != 0)
      {
        if (v16 != -1)
        {
LABEL_23:
          NSLog(@"ISF: element.prevInSorted[%d] points to an index out of range: %d", v14, v16);
          goto LABEL_25;
        }
      }

      else if (v16 >= *(a1 + 64))
      {
        goto LABEL_23;
      }

      v17 = *(v12 + v15 - 12);
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }

      if (v17 >= *(a1 + 64))
      {
        goto LABEL_24;
      }

LABEL_21:
      *(v12 + v14++ + 45) = 1;
      v15 += 4;
      if (v14 == 3)
      {
        goto LABEL_26;
      }
    }

    if (v17 == -1)
    {
      goto LABEL_21;
    }

LABEL_24:
    NSLog(@"ISF: element.nextInSorted[%d] points to an index out of range: %d", v14, v17);
LABEL_25:
    v13 = 1;
LABEL_26:
    *(v12 + 44) = 1;
    *(v12 + 32) = sub_100024248(a1, v12);
    v12 += 72;
  }

  while (v12 != *(a1 + 16));
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_28:
  v18 = 0;
  *(a1 + 32) = *(a2 + 1);
  v19 = a2 + 7;
  v20 = (a1 + 40);
  while (2)
  {
    v21 = *(v19 - 3);
    if ((v21 & 0x80000000) != 0)
    {
      if (v21 != -1)
      {
LABEL_44:
        v25 = *(v19 - 3);
        goto LABEL_46;
      }
    }

    else if (v21 >= *(a1 + 124))
    {
      goto LABEL_44;
    }

    v22 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      if (v22 >= *(a1 + 124))
      {
        break;
      }

      goto LABEL_37;
    }

    if (v22 == -1)
    {
LABEL_37:
      *v20 = v21;
      v23 = *v19++;
      v20[3] = v23;
      ++v18;
      ++v20;
      if (v18 == 3)
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v25 = *v19;
LABEL_46:
  NSLog(@"ISF: history.head[%d] is out of range: %d", v18, v25);
LABEL_41:
  NSLog(@"ISF: Resetting history");
  *(a1 + 32) = 0xFFFFFFFFLL;
  *(a1 + 64) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 56) = -1;
  return 0;
}

void *sub_10002417C(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_1000251D0(result, a2);
    }

    sub_1000251B8();
  }

  return result;
}

double sub_100024248(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 148);
  if (v2)
  {
    v3 = 0;
    while (*(a2 + 24) >= *(*(a1 + 96) + 8 * v3))
    {
      if (v2 == ++v3)
      {
        v3 = *(a1 + 148);
        return *(*(a1 + 104) + 8 * v3);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return *(*(a1 + 104) + 8 * v3);
}

uint64_t sub_1000242A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x80000000) != 0 || v1 >= *(a1 + 124))
  {
    NSLog(@"ISF: %s", "Error: oldest index record is out of range.");
    return 257;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(a1 + 8);
    v5 = 0x8E38E38E38E38E39 * ((*(a1 + 16) - v4) >> 3);
    do
    {
      v6 = *(a1 + 32);
      if (v5 <= v6)
      {
LABEL_19:
        sub_1000254FC();
      }

      v7 = v4 + 72 * v6 + v2;
      v8 = *(v7 + 60);
      v9 = *(v7 + 48);
      if (v9 == -1)
      {
        v10 = (a1 + v2 + 52);
        if (*v10 != v6)
        {
          sub_10007C774();
        }
      }

      else
      {
        if (v5 <= v9)
        {
          goto LABEL_19;
        }

        v10 = (v4 + 72 * v9 + 4 * v3 + 60);
      }

      *v10 = v8;
      if (v8 == -1)
      {
        v11 = (a1 + v2 + 40);
        if (*v11 != *(a1 + 32))
        {
          sub_10007C7A0();
        }
      }

      else
      {
        if (v5 <= v8)
        {
          goto LABEL_19;
        }

        v11 = (v4 + 72 * v8 + 4 * v3 + 48);
      }

      *v11 = v9;
      ++v3;
      v2 += 4;
    }

    while (v2 != 12);
    v12 = 0;
    *(a1 + 32) = (*(a1 + 32) + 1) % *(a1 + 124);
    --*(a1 + 64);
  }

  return v12;
}

uint64_t sub_1000243FC(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 64);
  if (v3 >= *(a1 + 124))
  {
    sub_10007C7CC();
  }

  v4 = *(a1 + 8);
  v5 = 0x8E38E38E38E38E39 * ((*(a1 + 16) - v4) >> 3);
  if (v5 <= a3)
  {
    goto LABEL_10;
  }

  v6 = v4 + 72 * a3;
  v7 = a1 + 40;
  if (!v3)
  {
    *(v7 + 4 * a2) = a3;
    *(a1 + 4 * a2 + 52) = a3;
    v14 = v6 + 4 * a2;
    *(v14 + 48) = -1;
    *(v14 + 60) = -1;
    return 0;
  }

  v8 = *(v7 + 4 * a2);
  if (v8 == -1)
  {
    sub_10007C850();
  }

  v9 = a1 + 52;
  if (*(a1 + 52 + 4 * a2) == -1)
  {
    sub_10007C824();
  }

  v10 = v8;
  if (v5 <= v8)
  {
LABEL_10:
    sub_1000254FC();
  }

  while (1)
  {
    v11 = v4 + 72 * v10;
    if (*(v11 + 8 * a2) >= *(v6 + 8 * a2))
    {
      v15 = v11 + 4 * a2;
      *(v6 + 60 + 4 * a2) = *(v15 + 60);
      *(v15 + 60) = a3;
      *(v6 + 4 * a2 + 48) = v8;
      if (*(v7 + 4 * a2) == v8)
      {
        *(v7 + 4 * a2) = a3;
        return 0;
      }

      v17 = *(v6 + 60 + 4 * a2);
      if (v5 > v17)
      {
        *(v4 + 72 * v17 + 4 * a2 + 48) = a3;
        return 0;
      }

      goto LABEL_10;
    }

    v12 = v11 + 48;
    v13 = *(v12 + 4 * a2);
    if (v13 == -1)
    {
      break;
    }

    v10 = v13;
    v8 = v13;
    if (v5 <= v13)
    {
      goto LABEL_10;
    }
  }

  *(v12 + 4 * a2) = a3;
  v16 = v6 + 4 * a2;
  *(v16 + 60) = v8;
  if (*(v9 + 4 * a2) != v8)
  {
    sub_10007C7F8();
  }

  *(v16 + 48) = -1;
  *(v9 + 4 * a2) = a3;
  return 0;
}

uint64_t sub_100024568(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (*(a1 + 64) == *(a1 + 124))
  {
    if (sub_1000242A8(a1))
    {
      return 256;
    }

    v21 = *(a1 + 36);
    v22 = *(a1 + 8);
    v23 = v21;
    v24 = 0x8E38E38E38E38E39 * ((*(a1 + 16) - v22) >> 3);
  }

  else
  {
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    if (v14 >= v13)
    {
      v16 = *(a1 + 8);
      v17 = 0x8E38E38E38E38E39 * ((v14 - v16) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0x38E38E38E38E38ELL)
      {
        sub_1000251B8();
      }

      v19 = 0x8E38E38E38E38E39 * ((v13 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x1C71C71C71C71C7)
      {
        v20 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        sub_1000251D0(a1 + 8, v20);
      }

      v25 = 72 * v17;
      v15 = 72 * v17 + 72;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16) - v26;
      v28 = 72 * v17 - v27;
      memcpy((v25 - v27), v26, v27);
      v29 = *(a1 + 8);
      *(a1 + 8) = v28;
      *(a1 + 16) = v15;
      *(a1 + 24) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v15 = v14 + 72;
    }

    *(a1 + 16) = v15;
    v22 = *(a1 + 8);
    v24 = 0x8E38E38E38E38E39 * ((v15 - v22) >> 3);
    v21 = *(a1 + 36);
    v23 = v21;
    if (v24 != v21 + 1)
    {
      sub_10007C87C();
    }
  }

  if (v24 <= v23)
  {
    sub_1000254FC();
  }

  if (*(a1 + 32) == v21)
  {
    sub_10007C8A8();
  }

  v30 = v22 + 72 * v23;
  if (!*(a1 + 64))
  {
    *(a1 + 32) = v21;
  }

  *v30 = a3;
  *(v30 + 8) = a4;
  *(v30 + 40) = a2;
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  NSLog(@"ISF: New calibration result receives confidence %.5f", *&a6);
  v31 = 0;
  *(v30 + 32) = sub_100024248(a1, v30);
  do
  {
    sub_1000243FC(a1, v31++, *(a1 + 36));
  }

  while (v31 != 3);
  result = 0;
  *(a1 + 36) = (*(a1 + 36) + 1) % *(a1 + 124);
  ++*(a1 + 64);
  return result;
}

uint64_t sub_1000247DC(uint64_t a1)
{
  v1 = *(a1 + 124);
  v2 = *(a1 + 128);
  if (v1 == v2)
  {
    v3 = *(a1 + 156);
    if (*(a1 + 162) == 1)
    {
      v3 = vcvtps_s32_f32((v3 * (v1 - *(a1 + 164))) / v1);
    }
  }

  else
  {
    v3 = (*(a1 + 64) - v2) * (*(a1 + 156) - *(a1 + 152)) / (v1 - v2) + *(a1 + 152);
  }

  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
  if (v8 <= v4)
  {
    goto LABEL_33;
  }

  v9 = 0;
  v10 = a1 + 52;
  while (1)
  {
    v11 = *(v7 + 72 * v4 + 40) == 4 ? 3 : 2;
    if (v9 >= v11)
    {
      return 0;
    }

    v12 = v5[v9];
    if (v8 <= v12)
    {
      goto LABEL_33;
    }

    if (v3 >= 1)
    {
      v13 = 0;
      v14 = v7 + 72 * v12;
      do
      {
        v15 = *(v10 + 4 * v9);
        if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) <= v15)
        {
          goto LABEL_33;
        }

        if (v14 == v7 + 72 * v15)
        {
          break;
        }

        if (*(v14 + 44))
        {
          *(v14 + v9 + 45) = 0;
          *(v14 + 32) = *(a1 + 112);
          ++v13;
        }

        v16 = *(v14 + 4 * v9 + 48);
        if (v16 == -1)
        {
          sub_10007C8D4();
        }

        v7 = *(a1 + 8);
        v6 = *(a1 + 16);
        if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) <= v16)
        {
          goto LABEL_33;
        }

        v14 = v7 + 72 * v16;
      }

      while (v13 < v3);
      v17 = *(v10 + 4 * v9);
      if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) > v17)
      {
        v18 = 0;
        v19 = v7 + 72 * v17;
        while (1)
        {
          v20 = v5[v9];
          v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
          if (v8 <= v20)
          {
            break;
          }

          if (v19 == v7 + 72 * v20)
          {
            goto LABEL_32;
          }

          if (*(v19 + 44))
          {
            *(v19 + v9 + 45) = 0;
            *(v19 + 32) = *(a1 + 112);
            ++v18;
          }

          v21 = *(v19 + 4 * v9 + 60);
          if (v21 == -1)
          {
            sub_10007C900();
          }

          v7 = *(a1 + 8);
          v6 = *(a1 + 16);
          v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
          if (v8 <= v21)
          {
            break;
          }

          v19 = v7 + 72 * v21;
          if (v18 >= v3)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      sub_1000254FC();
    }

    v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
    if (v8 <= *(v10 + 4 * v9))
    {
      goto LABEL_33;
    }

LABEL_32:
    ++v9;
    v4 = *v5;
    if (v8 <= v4)
    {
      goto LABEL_33;
    }
  }
}

double sub_100024A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v3) >> 3) <= *(a1 + 124))
  {
    if (*(a1 + 64) >= 1)
    {
      *(a2 + 4) = 0;
    }

    if (v4 != v3)
    {
      memmove((a2 + 40), v3, v4 - v3);
    }

    result = *(a1 + 32);
    *(a2 + 8) = result;
    v7 = *(a1 + 40);
    *(a2 + 24) = *(a1 + 48);
    *(a2 + 16) = v7;
    v8 = *(a1 + 52);
    *(a2 + 36) = *(a1 + 60);
    *(a2 + 28) = v8;
  }

  else
  {
    NSLog(@"ISF: Error: Existing history is too large (contains %zu records).", 0x8E38E38E38E38E39 * ((v4 - v3) >> 3));
  }

  return result;
}

uint64_t sub_100024AC0(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    goto LABEL_10;
  }

  do
  {
    for (i = 0; i != 3; ++i)
    {
      if (!*(v2 + i + 45) || !*(v2 + 44))
      {
        continue;
      }

      if (i == 2 && (*(v2 + 40) - 2) > 2)
      {
        break;
      }

      v5 = *(v2 + 32);
      *&v10[i] = v5 + *&v10[i];
      *&v11[i] = *&v11[i] + v5 * *(v2 + 8 * i);
    }

    v2 += 72;
  }

  while (v2 != v3);
LABEL_10:
  for (j = 0; j != 3; ++j)
  {
    v7 = *&v10[j];
    if (v7 == 0.0)
    {
      v8 = NAN;
    }

    else
    {
      v8 = *&v11[j] / v7;
    }

    *(a2 + j * 8) = v8;
  }

  return 0;
}

uint64_t sub_100024BD4(uint64_t a1, int a2, void *a3)
{
  __src = 0;
  v33 = 0;
  v34 = 0;
  v5 = *(a1 + 4 * a2 + 40);
  if (v5 == -1)
  {
    v21 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    v8 = *(a1 + 8);
    do
    {
      v9 = v8 + 72 * v5;
      if (v6 >= v34)
      {
        v10 = __src;
        v11 = v6 - __src;
        v12 = (v6 - __src) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          sub_1000251B8();
        }

        v14 = v34 - __src;
        if ((v34 - __src) >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_1000255A4(&__src, v15);
        }

        v16 = v12;
        v17 = (8 * v12);
        v18 = *(v9 + 8 * v7);
        v19 = &v17[-v16];
        *v17 = v18;
        v6 = (v17 + 1);
        memcpy(v19, v10, v11);
        v20 = __src;
        __src = v19;
        v33 = v6;
        v34 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v6 = *(v9 + 8 * v7);
        v6 += 8;
      }

      v33 = v6;
      v8 = *(a1 + 8);
      v5 = *(v8 + 72 * v5 + 4 * v7 + 48);
    }

    while (v5 != -1);
    v21 = __src;
  }

  v22 = (v6 - v21) >> 3;
  v23 = ((v22 + 1) >> 2) - 1;
  v24 = ((v22 + 1) >> 1) - 1;
  v25 = ((3 * (v22 + 1)) >> 2) - 1;
  v29 = v6 == v21 || v22 != *(a1 + 64) || v23 >= v22 || v24 >= v22 || v25 >= v22;
  v30 = !v29;
  if (!v29)
  {
    *a3 = *v21;
    a3[1] = *&v21[8 * v23];
    a3[2] = *&v21[8 * v24];
    a3[3] = *&v21[8 * v25];
    a3[4] = *(v6 - 1);
LABEL_36:
    v33 = v21;
    operator delete(v21);
    return v30;
  }

  if (v21)
  {
    goto LABEL_36;
  }

  return v30;
}

void sub_100024DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100024DD4(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 64);
  result = sub_100024BD4(a1, 0, (a2 + 8));
  if (!result || (result = sub_100024BD4(a1, 1, (a2 + 48)), !result) || (result = sub_100024BD4(a1, 2, (a2 + 88)), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_100024E3C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(a1 + 160) = 0;
  if (a3 == 2)
  {
    NSLog(@"ISF: %s", "Error: Calibration result cannot be originated from GMC-RGB-IR.");
    return 258;
  }

  v9 = a7;
  *(a1 + 72) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 88) = 0x7FF8000000000000;
  NSLog(@"ISF: v%d.%d.%d. New calibration result: x=%.5f, y=%.5f, z=%.5f, confidence=%.5f from:%d (0:LMV,1:MI,2:GMC_GB,3:GMC_IR,4:RGBJ)", 1, 3, 1, *&a4, *&a5, *&a6, *&a7, a3);
  sub_100023EF4(a1, a2);
  if (a3 > 2)
  {
    if (a3 != 3 && a3 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
LABEL_7:
      NSLog(@"ISF: Error: Calibration result originated from unknown origin (%d).", a3);
      return 258;
    }
  }

  else
  {
    LODWORD(v15) = *(a1 + 144);
    v9 = v15;
  }

  v16 = *(a1 + 136);
  if (v9 < *(a1 + 132) || v9 > v16)
  {
    NSLog(@"ISF: Confidence is out of bounds (%.5f should be between %d..%d). This result will be ignored", *&v9, *(a1 + 132), v16);
    return 260;
  }

  bzero(a2, 0xE38uLL);
  *a2 = *(a1 + 120);
  *(a2 + 4) = 1;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  if (sub_100024568(a1, a3, a4, a5, a6, v9))
  {
    return 256;
  }

  v18 = *(a1 + 128);
  if (*(a1 + 64) >= v18)
  {
    sub_100024A04(a1, a2);
    if (v20)
    {
      return 256;
    }

    sub_10002503C(a1, a2);
    return 0;
  }

  else
  {
    NSLog(@"ISF: History does not contain enough records (%d < %d) to give a reliable result.", *(a1 + 64), v18);
    sub_100024A04(a1, a2);
    if (v19)
    {
      return 256;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_10002503C(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 160))
  {
    return 0;
  }

  sub_100023EF4(a1, a2);
  v4 = *(a1 + 128);
  if (*(a1 + 64) < v4)
  {
    NSLog(@"ISF: History does not contain enough records (%d < %d) to give a reliable result.", *(a1 + 64), v4);
    return 1;
  }

  if (*(a1 + 161) == 1)
  {
    *(a1 + 162) = 0;
    *(a1 + 164) = 0;
    if ((*(*a1 + 16))(a1) == 261)
    {
      *(a1 + 162) = 1;
      v5 = *(a1 + 32);
      v6 = *(a1 + 8);
      v7 = 0x8E38E38E38E38E39 * ((*(a1 + 16) - v6) >> 3);
      if (v7 <= v5)
      {
        goto LABEL_16;
      }

      v8 = *(a1 + 164);
      if (v8)
      {
        v9 = *(a1 + 124);
        v10 = *(a1 + 164);
        while (1)
        {
          v11 = v5 % v9;
          if (v7 <= v11)
          {
            break;
          }

          *(v6 + 72 * v11 + 44) = 0;
          LODWORD(v5) = v5 + 1;
          if (!--v10)
          {
            goto LABEL_12;
          }
        }

LABEL_16:
        sub_1000254FC();
      }

LABEL_12:
      v12 = 1;
    }

    else
    {
      v12 = *(a1 + 162);
      v8 = *(a1 + 164);
    }

    NSLog(@"ISF: ISF Step Detection result: isStepDetected:%d, stepIndex:%d", v12, v8);
  }

  sub_1000247DC(a1);
  sub_100024AC0(a1, a1 + 72);
  NSLog(@"ISF: New calculated rotation angle: x=%.5f, y=%.5f, z=%.5f", *(a1 + 72), *(a1 + 80), *(a1 + 88));
  result = 0;
  *(a1 + 160) = 1;
  return result;
}

void sub_1000251D0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_1000196F4();
}

char *sub_10002522C(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0x8E38E38E38E38E39 * ((v8 - __dst) >> 3)) >= a5)
      {
        v22 = 9 * a5;
        v23 = &__dst[72 * a5];
        v24 = &v8[-72 * a5];
        v25 = a1[1];
        while (v24 < v8)
        {
          *v25 = *v24;
          v26 = *(v24 + 1);
          v27 = *(v24 + 2);
          v28 = *(v24 + 3);
          *(v25 + 64) = *(v24 + 8);
          *(v25 + 32) = v27;
          *(v25 + 48) = v28;
          *(v25 + 16) = v26;
          v24 += 72;
          v25 += 72;
        }

        a1[1] = v25;
        if (v8 != v23)
        {
          memmove(&__dst[72 * a5], __dst, v8 - v23);
        }

        v35 = 8 * v22;
        v36 = v5;
        v37 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          *v18 = *v16;
          v19 = *(v16 + 1);
          v20 = *(v16 + 2);
          v21 = *(v16 + 3);
          *(v18 + 64) = *(v16 + 8);
          *(v18 + 32) = v20;
          *(v18 + 48) = v21;
          *(v18 + 16) = v19;
          v16 += 72;
          v18 += 72;
          v17 += 72;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v29 = &__dst[72 * a5];
        v30 = v17 - 72 * a5;
        v31 = v17;
        while (v30 < v8)
        {
          *v31 = *v30;
          v32 = *(v30 + 16);
          v33 = *(v30 + 32);
          v34 = *(v30 + 48);
          *(v31 + 64) = *(v30 + 64);
          *(v31 + 32) = v33;
          *(v31 + 48) = v34;
          *(v31 + 16) = v32;
          v30 += 72;
          v31 += 72;
        }

        a1[1] = v31;
        if (v18 != v29)
        {
          memmove(&__dst[72 * a5], __dst, v17 - v29);
        }

        v36 = v5;
        v37 = v6;
        v35 = v15;
      }

      memmove(v36, v37, v35);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x71C71C71C71C71C7 * (&v8[-*a1] >> 3);
    if (v11 > 0x38E38E38E38E38ELL)
    {
      sub_1000251B8();
    }

    v12 = __dst - v10;
    v13 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_1000251D0(a1, v14);
    }

    v38 = 8 * (v12 >> 3);
    v39 = (v38 + 72 * a5);
    v40 = 72 * a5;
    v41 = v38;
    do
    {
      *v41 = *v6;
      v42 = *(v6 + 1);
      v43 = *(v6 + 2);
      v44 = *(v6 + 3);
      *(v41 + 64) = *(v6 + 8);
      *(v41 + 32) = v43;
      *(v41 + 48) = v44;
      *(v41 + 16) = v42;
      v41 += 72;
      v6 += 72;
      v40 -= 72;
    }

    while (v40);
    memcpy(v39, v5, a1[1] - v5);
    v45 = *a1;
    v46 = &v39[a1[1] - v5];
    a1[1] = v5;
    v47 = v5 - v45;
    v48 = (v38 - (v5 - v45));
    memcpy(v48, v45, v47);
    v49 = *a1;
    *a1 = v48;
    a1[1] = v46;
    a1[2] = 0;
    if (v49)
    {
      operator delete(v49);
    }

    return v38;
  }

  return v5;
}

void sub_100025514(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100025570(exception, a1);
}

std::logic_error *sub_100025570(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000255A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000196F4();
}

BOOL sub_1000255EC(uint64_t a1, uint64_t a2, double *a3)
{
  sub_100025810(&v21, *(a2 + 116) / 32, *(a2 + 112) / 32);
  v6 = *(a1 + 20);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(a1 + 16);
      if (!v8)
      {
        __assert_rtn("operator()", "Matrix.hpp", 125, "row < m_rows && col < m_cols");
      }

      if (v8 == 1)
      {
        __assert_rtn("operator()", "Matrix.hpp", 125, "row < m_rows && col < m_cols");
      }

      v9 = *(a2 + 112);
      v10 = v9 + 31;
      if (v9 >= 0)
      {
        v10 = *(a2 + 112);
      }

      v11 = (*(a1 + 8) + 8 * i);
      v12 = fmin((*(a2 + 116) / 32 - 1), fmax((v11[v6] * 0.03125), 0.0));
      if (v23 <= v12 || (v13 = fmin(((v10 >> 5) - 1), fmax((*v11 * 0.03125), 0.0)), v24 <= v13))
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      v22[v13 + v24 * v12] = 1;
      v6 = *(a1 + 20);
    }
  }

  if (v24 * v23)
  {
    v14 = v22;
    v15 = 0.0;
    v16 = v24 * v23;
    do
    {
      v17 = *v14++;
      v15 = v15 + v17;
      --v16;
    }

    while (v16);
  }

  else
  {
    v15 = 0.0;
  }

  v18 = v15 / (v24 * v23);
  v19 = v18 > *(a2 + 536);
  *a3 = v18;
  sub_100025998(&v21);
  return v19;
}

uint64_t sub_100025810(uint64_t result, int a2, int a3)
{
  *result = off_1000A2450;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_100025960(uint64_t a1)
{
  sub_100025998(a1);

  operator delete();
}

uint64_t sub_100025998(uint64_t result)
{
  *result = off_1000A2450;
  if (*(result + 8) && *(result + 24) == 1)
  {
    operator delete[]();
  }

  *(result + 16) = 0;
  return result;
}

uint64_t sub_100025A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  pthread_mutex_init((a1 + 80), 0);
  pthread_cond_init((a1 + 144), 0);
  *(a1 + 192) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 64) = pthread_self();
  Current = CFRunLoopGetCurrent();
  *(a1 + 48) = CFRetain(Current);
  *(a1 + 72) = 0;
  return a1;
}

uint64_t sub_100025A80(uint64_t a1)
{
  for (i = 0; i < CFArrayGetCount(*a1); ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
    sub_100056818(ValueAtIndex);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    IOObjectRelease(v4);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRunLoopRemoveSource(*(a1 + 48), v6, kCFRunLoopDefaultMode);
      *(a1 + 24) = 0;
      v5 = *(a1 + 16);
    }

    IONotificationPortDestroy(v5);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    dispatch_sync(v7, &stru_1000A2490);
    dispatch_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  pthread_cond_destroy((a1 + 144));
  pthread_mutex_destroy((a1 + 80));
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  return a1;
}

uint64_t sub_100025B64(uint64_t a1)
{
  v2 = 3758097086;
  callBacks.version = 0;
  callBacks.retain = 0;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = sub_100025DE8;
  v3 = CFArrayCreateMutable(0, 0, &callBacks);
  *a1 = v3;
  if (!v3)
  {
    return 3758097085;
  }

  v4 = IOMasterPort(bootstrap_port, (a1 + 8));
  if (v4)
  {
    return v4;
  }

  v6 = IOServiceMatching("AppleH16CamIn");
  v7 = IONotificationPortCreate(*(a1 + 8));
  *(a1 + 16) = v7;
  if (v7)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    *(a1 + 24) = RunLoopSource;
    if (RunLoopSource)
    {
      CFRunLoopAddSource(*(a1 + 48), RunLoopSource, kCFRunLoopDefaultMode);
      v4 = IOServiceAddMatchingNotification(*(a1 + 16), "IOServiceFirstPublish", v6, sub_100025E2C, a1, (a1 + 56));
      if (v4)
      {
        return v4;
      }

      *(a1 + 72) = dispatch_queue_create("com.apple.h16ispdevicecontroller.notifications.queue", 0);
      sub_100025E2C(a1, *(a1 + 56));
      pthread_mutex_lock((a1 + 80));
      if (*(a1 + 192))
      {
        v9 = 0;
      }

      else
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        __tp.tv_sec += 2;
        v9 = pthread_cond_timedwait((a1 + 144), (a1 + 80), &__tp);
        if (v9 && (*(a1 + 192) & 1) == 0)
        {
          if (off_10041DBA0 == &_os_log_default)
          {
            off_10041DBA0 = os_log_create("com.apple.isp", "device");
          }

          v9 = 3758097110;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10007C92C((a1 + 192));
          }
        }
      }

      pthread_mutex_unlock((a1 + 80));
      return v9;
    }

    else
    {
      if (off_10041DBA0 == &_os_log_default)
      {
        off_10041DBA0 = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10007C9C4();
      }

      IONotificationPortDestroy(*(a1 + 16));
      *(a1 + 16) = 0;
    }
  }

  else
  {
    if (off_10041DBA0 == &_os_log_default)
    {
      off_10041DBA0 = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10007CA4C();
    }
  }

  return v2;
}

void sub_100025DE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100056968(a2);

    operator delete();
  }
}

uint64_t sub_100025E2C(uint64_t a1, io_iterator_t iterator)
{
  properties = 0;
  while (1)
  {
    result = IOIteratorNext(iterator);
    if (!result)
    {
      break;
    }

    if (!IORegistryEntryCreateCFProperties(result, &properties, kCFAllocatorDefault, 0))
    {
      if (!CFArrayGetCount(*a1))
      {
        operator new();
      }

      CFRelease(properties);
      pthread_mutex_lock((a1 + 80));
      *(a1 + 192) = 1;
      pthread_cond_broadcast((a1 + 144));
      pthread_mutex_unlock((a1 + 80));
    }
  }

  return result;
}

double sub_100025F4C()
{
  v0 = __chkstk_darwin();
  if (!sub_100025FF4("/var/mobile/Library/ISP/Pearl/IsfThresholds.bin", v0, 0x20u))
  {
    if (sub_10001C9E0(v6))
    {
      v4[2] = v6[2];
      v4[3] = v6[3];
      v5 = v7;
      v4[0] = v6[0];
      v4[1] = v6[1];
      v2 = 0uLL;
      v3 = 0.0;
      sub_10001966C(v4, &v2);
      *(v0 + 8) = v2;
      result = v3;
      *(v0 + 24) = v3;
    }
  }

  return result;
}

BOOL sub_100025FF4(const char *a1, void *a2, unsigned int a3)
{
  v5 = fopen(a1, "rb");
  if (v5)
  {
    v6 = v5;
    v7 = fread(a2, 1uLL, a3, v5);
    fclose(v6);
    return v7 == a3;
  }

  else
  {
    bzero(a2, a3);
    return 0;
  }
}

FILE *sub_100026084(const char *a1, const void *a2, unsigned int a3)
{
  result = fopen(a1, "wb");
  if (result)
  {
    v6 = result;
    fwrite(a2, a3, 1uLL, result);

    return fclose(v6);
  }

  return result;
}

void sub_1000260FC(int a1, double *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 2)
  {
    if ((analytics_send_event_lazy() & 1) == 0)
    {
      v9 = off_10041DBA8;
      if (off_10041DBA8 == &_os_log_default)
      {
        v9 = os_log_create("com.apple.isp", "general");
        off_10041DBA8 = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10007CAD4();
      }
    }

    sub_1000262DC(a2, a6);
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (analytics_send_event_lazy())
    {
      goto LABEL_13;
    }

    v10 = off_10041DBA8;
    if (off_10041DBA8 == &_os_log_default)
    {
      v10 = os_log_create("com.apple.isp", "general");
      off_10041DBA8 = v10;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      if (a1)
      {
        return;
      }

      goto LABEL_14;
    }

    sub_10007CAD4();
    if (!a1)
    {
LABEL_14:
      sub_1000262DC(a2, a6);
    }
  }
}

void sub_1000262DC(double *a1, uint64_t a2)
{
  sub_100027220(*a1 - *(a2 + 8), "X", a2);
  sub_100027220(a1[1] - *(a2 + 16), "Y", (a2 + 2));
  v4 = a1[2] - *(a2 + 24);

  sub_100027220(v4, "Z", (a2 + 4));
}

void sub_10002635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28[0] = 3;
  v29 = -1;
  v30 = -1;
  v31 = -1;
  __asm { FMOV            V0.2D, #-1.0 }

  v27 = _Q0;
  v32 = _Q0;
  v33 = xmmword_10008D180;
  v34 = vdupq_n_s64(0x7FF8000000000000uLL);
  sub_1000267A8(v28);
  v13 = a5[1];
  v14 = a5[8];
  v15 = *(a2 + 376);
  if ((v15 & 0x80000000) == 0)
  {
    v30 = a5[1];
    *(&v32 + 1) = v14;
LABEL_4:
    v31 = v13;
    *&v33 = v14;
    goto LABEL_5;
  }

  if (v15 == -10)
  {
    goto LABEL_4;
  }

LABEL_5:
  v29 = v13;
  *&v32 = v14;
  v16 = a5[5];
  *(&v33 + 1) = a5[4];
  v34.i64[0] = v16;
  v34.i64[1] = a5[6];
  sub_100026084("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", v28, 0x1C4u);
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v17 = off_10041DBA8;
    if (off_10041DBA8 == &_os_log_default)
    {
      v17 = os_log_create("com.apple.isp", "general");
      off_10041DBA8 = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10007CB48();
    }
  }

  if (*(a2 + 376) >= 0.0)
  {
    v35 = 3;
    memset(&v41[40], 255, 24);
    v42 = v27;
    v43 = xmmword_10008D180;
    v44 = vdupq_n_s64(0x7FF8000000000000uLL);
    sub_1000267A8(&v35);
    v18 = *(a1 + 13240);
    v48[2] = *(a1 + 13224);
    v48[3] = v18;
    v49 = *(a1 + 13256);
    v19 = *(a1 + 13208);
    v48[0] = *(a1 + 13192);
    v48[1] = v19;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    sub_10001966C(v48, &v45);
    v20 = v46;
    v21 = v47;
    ++v36;
    sub_100027420(v45, "X", &v37);
    sub_100027420(v20, "Y", &v38);
    sub_100027420(v21, "Z", &v39);
    v22 = 0;
    v40 = v40 * 0.99 + llround((*(a2 + 88) * *(a1 + 24) / *(a1 + 32) + -1.0) * 10000.0) * 0.01;
    v23 = 0.05;
    do
    {
      v24 = v40;
      if (v40 > v23)
      {
        v25 = v41[v22]++ + 1;
        if (v25 == 10)
        {
          sub_10002764C();
          v24 = v40;
        }
      }

      if (v24 < -v23)
      {
        v26 = v41[v22 + 1]++ + 1;
        if (v26 == 10)
        {
          sub_10002764C();
        }
      }

      v23 = v23 + 0.05;
      v22 += 2;
    }

    while (v22 != 40);
    sub_100026084("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", &v35, 0x1C4u);
  }
}

FILE *sub_1000267A8(_DWORD *a1)
{
  result = sub_100025FF4("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", a1, 0x1C4u);
  if (result)
  {
    _ZF = *a1 == 3;
  }

  else
  {
    _ZF = 0;
  }

  if (!_ZF)
  {
    memset(&v8[47], 255, 24);
    *a1 = 3;
    memcpy(a1 + 1, v8, 0x190uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 101) = _Q0;
    *(a1 + 105) = xmmword_10008D180;
    *(a1 + 109) = vdupq_n_s64(0x7FF8000000000000uLL);

    return sub_100026084("/var/mobile/Library/ISP/Pearl/GmcThresholds.bin", a1, 0x1C4u);
  }

  return result;
}

void *sub_100026874(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Duration", *(*(a1 + 32) + 24));
    xpc_dictionary_set_int64(v3, "Status", *(*(a1 + 40) + 376));
    v4 = *(a1 + 40);
    if ((v4[47] & 0x80000000) == 0)
    {
      xpc_dictionary_set_double(v3, "SpatialCoverage", *v4);
      xpc_dictionary_set_double(v3, "RotationX", *(*(a1 + 32) + 32));
      xpc_dictionary_set_double(v3, "RotationY", *(*(a1 + 32) + 40));
      xpc_dictionary_set_double(v3, "RotationZ", *(*(a1 + 32) + 48));
      v5 = (*(*(a1 + 40) + 88) * *(*(a1 + 48) + 24) / *(*(a1 + 48) + 32) + -1.0) * 100.0;
      xpc_dictionary_set_double(v3, "EflPctDiffFromAssembly", v5);
      xpc_dictionary_set_double(v3, "EflPctDiffFromPrev", v5 - (*(*(a1 + 40) + 88) * *(*(a1 + 56) + 24) / *(*(a1 + 56) + 32) + -1.0) * 100.0);
    }

    if (*(a1 + 124) == 1)
    {
      xpc_dictionary_set_uint64(v3, "TimeSincePrevSuccessfulRun", *(a1 + 64));
    }

    if (*(a1 + 125) == 1)
    {
      xpc_dictionary_set_uint64(v3, "TimeSincePrevConvergence", *(a1 + 72));
      xpc_dictionary_set_double(v3, "TemperatureDiffSincePrevConvergence", *(a1 + 80));
    }

    xpc_dictionary_set_uint64(v3, "TimeSincePrevRun", *(a1 + 88));
    xpc_dictionary_set_double(v3, "RotationXDiffFromPrev", *(a1 + 96));
    xpc_dictionary_set_double(v3, "RotationYDiffFromPrev", *(a1 + 104));
    xpc_dictionary_set_double(v3, "RotationZDiffFromPrev", *(a1 + 112));
    xpc_dictionary_set_uint64(v3, "TriggeringReason", *(*(a1 + 32) + 60));
    xpc_dictionary_set_double(v3, "Temperature", *(*(a1 + 32) + 64));
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    if (v7 != -1.0)
    {
      xpc_dictionary_set_double(v3, "FaceX", v7);
      xpc_dictionary_set_double(v3, "FaceY", *(*(a1 + 32) + 80));
      xpc_dictionary_set_double(v3, "FaceWidth", *(*(a1 + 32) + 88));
      xpc_dictionary_set_double(v3, "FaceHeight", *(*(a1 + 32) + 96));
      v6 = *(a1 + 32);
    }

    xpc_dictionary_set_uint64(v3, "Correspondences", *(v6 + 104));
    v8 = *(a1 + 32);
    if (*(v8 + 56) == 1)
    {
      xpc_dictionary_set_double(v3, "ISFConfidence", *(v8 + 16));
      xpc_dictionary_set_double(v3, "ISFDuration", **(a1 + 32));
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v9 = *(a1 + 48);
      v25 = *(v9 + 13256);
      v10 = *(v9 + 13240);
      v23 = *(v9 + 13224);
      v24 = v10;
      v11 = *(v9 + 13208);
      v21 = *(v9 + 13192);
      v22 = v11;
      sub_10001966C(&v21, &v26);
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v12 = *(a1 + 56);
      v25 = *(v12 + 13256);
      v13 = *(v12 + 13240);
      v23 = *(v12 + 13224);
      v24 = v13;
      v14 = *(v12 + 13208);
      v21 = *(v12 + 13192);
      v22 = v14;
      sub_10001966C(&v21, &v18);
      xpc_dictionary_set_double(v3, "FilteredRotationX", v26);
      xpc_dictionary_set_double(v3, "FilteredRotationY", v27);
      xpc_dictionary_set_double(v3, "FilteredRotationZ", v28);
      xpc_dictionary_set_double(v3, "FilteredRotationXDiffFromPrev", v26 - v18);
      xpc_dictionary_set_double(v3, "FilteredRotationYDiffFromPrev", v27 - v19);
      xpc_dictionary_set_double(v3, "FilteredRotationZDiffFromPrev", v28 - v20);
      v15 = *(a1 + 32);
      if (*(v15 + 112) == 1)
      {
        xpc_dictionary_set_double(v3, "IsfDifferenceXMaxMin", *(v15 + 148) - *(v15 + 116));
        xpc_dictionary_set_double(v3, "IsfDifferenceXQ31", *(*(a1 + 32) + 140) - *(*(a1 + 32) + 124));
        xpc_dictionary_set_double(v3, "IsfDifferenceYMaxMin", *(*(a1 + 32) + 188) - *(*(a1 + 32) + 156));
        xpc_dictionary_set_double(v3, "IsfDifferenceYQ31", *(*(a1 + 32) + 180) - *(*(a1 + 32) + 164));
        xpc_dictionary_set_double(v3, "IsfDifferenceZMaxMin", *(*(a1 + 32) + 228) - *(*(a1 + 32) + 196));
        xpc_dictionary_set_double(v3, "IsfDifferenceZQ31", *(*(a1 + 32) + 220) - *(*(a1 + 32) + 204));
      }
    }

    v16 = *(a1 + 120);
    if (v16 >= 1)
    {
      xpc_dictionary_set_uint64(v3, "ScanModeStep", v16);
    }
  }

  return v3;
}

void sub_100026D58()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = off_10041DBA8;
    if (off_10041DBA8 == &_os_log_default)
    {
      v0 = os_log_create("com.apple.isp", "general");
      off_10041DBA8 = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10007CBBC();
    }
  }
}

void *sub_100026E3C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Duration", *(a1 + 32));
    xpc_dictionary_set_uint64(v3, "Status", *(a1 + 48));
    if (!*(a1 + 48))
    {
      v4 = *(*(a1 + 40) + 20);
      if (v4 <= 2)
      {
        xpc_dictionary_set_string(v3, "SelectedMode", off_1000A2570[v4]);
      }

      v5 = *(a1 + 52);
      if (v5)
      {
        if (v5 != 1)
        {
LABEL_10:
          xpc_dictionary_set_double(v3, "RotationX", *(*(a1 + 40) + 8));
          xpc_dictionary_set_double(v3, "RotationY", *(*(a1 + 40) + 12));
          xpc_dictionary_set_double(v3, "RotationZ", *(*(a1 + 40) + 16));
          xpc_dictionary_set_double(v3, "Confidence", **(a1 + 40));
          return v3;
        }

        v6 = "FullGrid";
      }

      else
      {
        v6 = "LMV";
      }

      xpc_dictionary_set_string(v3, "CalculationMode", v6);
      goto LABEL_10;
    }
  }

  return v3;
}

void *sub_100026F7C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Status", *(a1 + 48));
    xpc_dictionary_set_string(v3, "Mode", "StereoGmc");
    xpc_dictionary_set_int64(v3, "StereoGmcStatus", 0);
    if (!*(a1 + 48))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = *(v4 + 8600);
      v18[2] = *(v4 + 8584);
      v18[3] = v9;
      v19 = *(v4 + 8616);
      v10 = *(v4 + 8568);
      v18[0] = *(v4 + 8552);
      v18[1] = v10;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      sub_10001966C(v18, &v15);
      v11 = v6 - v15;
      v12 = v7 - v16;
      v13 = v8 - v17;
      xpc_dictionary_set_double(v3, "RotationX", v11);
      xpc_dictionary_set_double(v3, "RotationY", v12);
      xpc_dictionary_set_double(v3, "RotationZ", v13);
    }
  }

  return v3;
}

void *sub_1000270A4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_uint64(v2, "Status", *(a1 + 64));
    v4 = *(a1 + 32);
    if (v4 != 4025479150.0)
    {
      xpc_dictionary_set_int64(v3, "StereoGmcStatus", v4);
    }

    v5 = *(a1 + 68);
    if (v5 == 1)
    {
      xpc_dictionary_set_string(v3, "Mode", "FullGrid");
      xpc_dictionary_set_double(v3, "MIConfidence", *(a1 + 40));
    }

    else if (!v5)
    {
      xpc_dictionary_set_string(v3, "Mode", "LMV");
    }

    if (!*(a1 + 64))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = *(v6 + 8600);
      v20[2] = *(v6 + 8584);
      v20[3] = v11;
      v21 = *(v6 + 8616);
      v12 = *(v6 + 8568);
      v20[0] = *(v6 + 8552);
      v20[1] = v12;
      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      sub_10001966C(v20, &v17);
      v13 = v8 - v17;
      v14 = v9 - v18;
      v15 = v10 - v19;
      xpc_dictionary_set_double(v3, "RotationX", v13);
      xpc_dictionary_set_double(v3, "RotationY", v14);
      xpc_dictionary_set_double(v3, "RotationZ", v15);
    }
  }

  return v3;
}

void sub_100027220(double a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  if ((v5 + 1) < a1)
  {
    do
    {
      *a3 = v5 + 1;
      sub_1000272D8();
      LOBYTE(v5) = *a3;
    }

    while ((*a3 + 1) < a1);
  }

  v6 = a3[1];
  if ((v6 - 1) > a1)
  {
    do
    {
      a3[1] = v6 - 1;
      sub_1000272D8();
      LOBYTE(v6) = a3[1];
    }

    while ((v6 - 1) > a1);
  }
}

void sub_1000272D8()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = off_10041DBA8;
    if (off_10041DBA8 == &_os_log_default)
    {
      v0 = os_log_create("com.apple.isp", "general");
      off_10041DBA8 = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10007CC30();
    }
  }
}

void *sub_1000273BC(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_int64(v2, "ThresholdPassed", *(a1 + 40));
    xpc_dictionary_set_string(v3, "Axis", *(a1 + 32));
  }

  return v3;
}

void sub_100027420(double a1, uint64_t a2, double *a3)
{
  *a3 = *a3 * 0.99 + a1 * 0.01;
  v4 = a3 + 9;
  v5 = -50;
  v6 = -1;
  v7 = 1.0;
  do
  {
    v8 = *a3;
    if (*a3 > v7)
    {
      v9 = (*(v4 - 1))++ + 1;
      if (v9 == 10)
      {
        sub_100027504();
        v8 = *a3;
      }
    }

    if (v8 < v6)
    {
      v10 = (*v4)++ + 1;
      if (v10 == 10)
      {
        sub_100027504();
      }
    }

    v7 = v7 + 1.0;
    v4 += 2;
    --v6;
  }

  while (!__CFADD__(v5++, 1));
}

void sub_100027504()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = off_10041DBA8;
    if (off_10041DBA8 == &_os_log_default)
    {
      v0 = os_log_create("com.apple.isp", "general");
      off_10041DBA8 = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10007CCA4();
    }
  }
}

void *sub_1000275E8(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_int64(v2, "ThresholdPassed", *(a1 + 40));
    xpc_dictionary_set_string(v3, "Axis", *(a1 + 32));
  }

  return v3;
}

void sub_10002764C()
{
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v0 = off_10041DBA8;
    if (off_10041DBA8 == &_os_log_default)
    {
      v0 = os_log_create("com.apple.isp", "general");
      off_10041DBA8 = v0;
    }

    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10007CD18();
    }
  }
}

xpc_object_t sub_10002772C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xpc_dictionary_set_double(v2, "ThresholdPassed", *(a1 + 32));
  }

  return v3;
}

uint64_t sub_100027790(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_100027830(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  Current = CFRunLoopGetCurrent();
  *(a1 + 56) = CFRetain(Current);
  if (a2)
  {
    *(a2 + 928) = a1;
  }

  return a1;
}

uint64_t sub_100027880(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    IOObjectRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      CFRunLoopRemoveSource(*(a1 + 56), v4, kCFRunLoopDefaultMode);
      *(a1 + 8) = 0;
      v3 = *a1;
    }

    IONotificationPortDestroy(v3);
    *a1 = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    sub_100023D4C(v5);
    operator delete();
  }

  *(a1 + 32) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    CFRelease(v7);
  }

  return a1;
}

uint64_t sub_100027930(uint64_t a1)
{
  v2 = IOServiceMatching("AppleH16PhotonDetector");
  Mutable = CFArrayCreateMutable(0, 0, 0);
  *(a1 + 40) = Mutable;
  if (Mutable)
  {
    v4 = IOMasterPort(bootstrap_port, (a1 + 48));
    if (v4)
    {
      return v4;
    }

    else
    {
      v15 = IONotificationPortCreate(*(a1 + 48));
      *a1 = v15;
      if (v15)
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v15);
        *(a1 + 8) = RunLoopSource;
        if (RunLoopSource)
        {
          CFRunLoopAddSource(*(a1 + 56), RunLoopSource, kCFRunLoopDefaultMode);
          v5 = IOServiceAddMatchingNotification(*a1, "IOServiceMatched", v2, sub_100027790, a1, (a1 + 16));
          if (!v5)
          {
            sub_100027790(a1, *(a1 + 16));
          }
        }

        else
        {
          v25 = off_10041DBB0;
          if (off_10041DBB0 == &_os_log_default)
          {
            v25 = os_log_create("com.apple.isp", "photon");
            off_10041DBB0 = v25;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10007CD8C(v25, v26, v27, v28, v29, v30, v31, v32);
          }

          v5 = 3758097086;
          IONotificationPortDestroy(*a1);
          *a1 = 0;
        }
      }

      else
      {
        v17 = off_10041DBB0;
        if (off_10041DBB0 == &_os_log_default)
        {
          v17 = os_log_create("com.apple.isp", "photon");
          off_10041DBB0 = v17;
        }

        v5 = 3758097086;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10007CE04(v17, v18, v19, v20, v21, v22, v23, v24);
        }
      }
    }
  }

  else
  {
    v6 = off_10041DBB0;
    if (off_10041DBB0 == &_os_log_default)
    {
      v6 = os_log_create("com.apple.isp", "photon");
      off_10041DBB0 = v6;
    }

    v5 = 3758097085;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10007CE7C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return v5;
}

void sub_100027B38(uint64_t a1)
{
  pthread_setname_np("AppleH16PhotonDetectorServicesThread");
  pthread_mutex_lock(*(a1 + 16));
  operator new();
}

uint64_t sub_100027C0C(void *a1, uint64_t a2)
{
  sub_100027D0C(&v9);
  v6 = 0;
  v7[0] = 0;
  v7[1] = a2;
  v7[2] = &v9;
  v5 = 49;
  pthread_attr_init(&v8);
  pthread_attr_setschedparam(&v8, &v5);
  pthread_attr_setdetachstate(&v8, 1);
  pthread_create(&v6, &v8, sub_100027B38, v7);
  pthread_attr_destroy(&v8);
  pthread_cond_wait(&v10, &v9);
  *a1 = v7[0];
  return sub_100027D4C(&v9);
}

uint64_t sub_100027D0C(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_mutex_lock(a1);
  return a1;
}

uint64_t sub_100027D4C(uint64_t a1)
{
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_destroy(a1);
  return a1;
}

uint64_t sub_100027D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5, double *a6, double a7)
{
  v9 = *(a1 + 20);
  if (v9)
  {
    sub_100016114(v20, 1, v9);
    v20[0] = &off_1000A1C58;
    sub_100027EAC(a2, a1, a3, v20);
    v15 = sub_100028038(v20);
    LODWORD(v15) = v21;
    v16 = round(a7 * *&v15 + -1.0);
    if (v16 >= 0.0)
    {
      v17 = 0;
      v18 = *(v20[1] + 8 * v16);
      *a6 = v18;
      *a5 = v18 < *(a4 + 632);
    }

    else
    {
      v17 = 4294967291;
    }

    sub_100016068(v20);
  }

  else
  {
    v17 = 0;
    *a5 = 1;
  }

  return v17;
}

uint64_t sub_100027EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v8 = v28;
  do
  {
    v9 = 0;
    v10 = v8;
    do
    {
      *v10 = *(a3 + v9);
      v10 += 3;
      v9 += 8;
    }

    while (v9 != 24);
    ++v7;
    v8 = (v8 + 8);
    a3 += 24;
  }

  while (v7 != 3);
  if (*(a1 + 20))
  {
    v11 = 0;
    do
    {
      sub_1000280A4(a1, v11, v27);
      v12 = 0;
      v25 = 0uLL;
      v13 = v28;
      v26 = 0;
      do
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + *(v13 + v14 * 8) * *&v27[v14];
          ++v14;
        }

        while (v14 != 3);
        *(&v25 + v12++) = v15;
        v13 = (v13 + 24);
      }

      while (v12 != 3);
      sub_1000280A4(a2, v11, &v23);
      v16 = 0;
      v21 = v25;
      v22 = v26;
      v19 = v23;
      v20 = v24;
      v17 = 0.0;
      do
      {
        v17 = v17 + *(&v21 + v16) * *(&v19 + v16);
        v16 += 8;
      }

      while (v16 != 24);
      *(*(a4 + 8) + 8 * v11++) = fabs(v17) / sqrt(*(&v25 + 1) * *(&v25 + 1) + *&v25 * *&v25);
    }

    while (v11 < *(a1 + 20));
  }

  return 0;
}

double sub_100028038(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 >= 2)
  {
    v2 = 0;
    v3 = 1;
    do
    {
      v4 = v2 + 1;
      v5 = *(a1 + 8);
      v6 = v3;
      v7 = v2;
      do
      {
        if (*(v5 + 8 * v6) < *(v5 + 8 * v7))
        {
          v7 = v6;
        }

        ++v6;
      }

      while (v1 != v6);
      result = *(v5 + 8 * v2);
      v9 = *(v5 + 8 * v7);
      *(v5 + 8 * v7) = result;
      *(*(a1 + 8) + 8 * v2) = v9;
      ++v3;
      ++v2;
    }

    while (v4 != v1 - 1);
  }

  return result;
}

double sub_1000280A4@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (!*(a1 + 16) || (v3 = *(a1 + 20), v3 <= a2))
  {
    sub_10007CEF4();
  }

  v4 = 0;
  v5 = (*(a1 + 8) + 8 * a2);
  v6 = 8 * v3;
  do
  {
    result = *v5;
    a3[v4++] = *v5;
    v5 = (v5 + v6);
  }

  while ((v4 * 8) != 24);
  return result;
}

uint64_t sub_100028A48(uint64_t a1, char a2)
{
  result = 3758097090;
  if (a1)
  {
    v4 = *(a1 + 416);
    if (v4)
    {
      result = 0;
      *v4 = a2;
    }
  }

  return result;
}

uint64_t sub_100028A6C(uint64_t a1, char a2)
{
  result = 3758097090;
  if (a1)
  {
    v4 = *(a1 + 416);
    if (v4)
    {
      result = 0;
      *(v4 + 1) = a2;
    }
  }

  return result;
}

uint64_t sub_100028A90(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, int a4, UInt32 inNumberFrames)
{
  if (a1)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      sub_10000D1F4(v9);
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v16 = 0;
      goto LABEL_54;
    }

    v11 = *(a1 + 48) * inNumberFrames;
    v13 = (a1 + 104);
    v12 = *(a1 + 104);
    ioData.mBuffers[0].mData = (v10 + v12);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v11;
    if (v12 + v11 <= *(a1 + 76))
    {
      v16 = AudioUnitRender(*(a1 + 16), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v16)
      {
        v18 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10007D850();
        }
      }

      v19 = *(a1 + 248);
      if (v19)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v19);
        fflush(*(a1 + 248));
      }

      v15 = *v13 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v14 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007D8CC();
      }

      v15 = 0;
      v16 = 0;
    }

    *(a1 + 104) = v15;
    if (v15 != *(a1 + 76))
    {
      goto LABEL_54;
    }

    memcpy(*(a1 + 96), (*(a1 + 96) + v15), v15);
    memcpy((*(a1 + 96) + *(a1 + 76)), *(a1 + 80), *(a1 + 76));
    v20 = *(a1 + 256);
    if (v20)
    {
      fwrite(*(a1 + 96), 1uLL, *(a1 + 92), v20);
      fflush(*(a1 + 256));
    }

    v21 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v21)
    {
LABEL_53:
      *v13 = 0;
LABEL_54:
      v50 = *(a1 + 288);
      if (v50)
      {
        sub_100034CB4(v50);
      }

      return v16;
    }

    v22 = v21;
    v63 = NAN;
    v62 = 0x7FC000007FC00000;
    v61 = 2143289344;
    v60 = 0x7FC000007FC00000;
    v52 = NAN;
    v59 = 0;
    v58 = 0;
    v23 = *(*a1 + 8);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    *(a1 + 120) = *(a1 + 96);
    *(a1 + 116) = *(a1 + 92);
    v27 = *(a1 + 148) >> 2;
    v28 = (v25 / v26);
    if (v28 > 16 || v28 == 0)
    {
      v30 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v30 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v30;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_10007D948();
      }

      v56 = 0u;
      v57 = 0u;
      __F = 0u;
      v55 = 0u;
      v28 = 16;
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
      __F = 0u;
      v55 = 0u;
      if (v28 < 1)
      {
LABEL_42:
        vDSP_desamp(*(a1 + 120), v28, &__F, *(a1 + 152), v27, v28);
        v34 = v26;
        sub_10003F59C(*(a1 + 152), *(a1 + 232), &v62, &v60, *(a1 + 200), (a1 + 240), v34);
        v35 = *(a1 + 180) >> 2;
        __F = xmmword_10008D1F0;
        vDSP_desamp(*(a1 + 120), (v25 / v24), &__F, *(a1 + 184), v35, (v25 / v24));
        v36 = v24;
        sub_10000B05C(*(a1 + 184), v35, &v62, &v58, 3u, v36);
        v37 = sub_10003FA6C(&v52, *(a1 + 224), *&v62, *&v60, *&v58, -1.0);
        *v22 = v37;
        v38 = *(*(a1 + 224) + 4 * ((*(*(a1 + 224) + 8) + **(a1 + 224) - 1) % **(a1 + 224)) + 140);
        *&v58 = v38;
        if (v37 == 1)
        {
          if (v38 > 0.4)
          {
            v39 = 1;
          }

          else
          {
            v39 = 2;
          }
        }

        else
        {
          v39 = v37;
          if (v37 != 3)
          {
            v39 = 2;
          }
        }

        v40 = 0;
        v41 = v52 * 0.5;
        *(v22 + 24) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(COERCE_UNSIGNED_INT(sqrtf(v63)), v60), vdup_n_s32(0x477FFF00u)));
        *(v22 + 1) = v41;
        *(v22 + 2) = 0xBFF0000000000000;
        *(v22 + 5) = fminf(v38, 65535.0);
        *(v22 + 6) = fminf(*(&v58 + 1), 65535.0);
        *(v22 + 1) = v39;
        __asm { FMOV            V0.2D, #-1.0 }

        *(v22 + 56) = _Q0;
        *(v22 + 9) = 0xBFF0000000000000;
        *(v22 + 13) = 0x200000000;
        v46 = *(a1 + 296);
        v47 = 1;
        do
        {
          v48 = v47;
          *(v46 + 8 + 8 * v40) = *&v22[8 * v40 + 8];
          *(v46 + 24 + 8 * v40) = *&v22[8 * v40 + 24];
          *(v46 + 40 + 8 * v40) = *&v22[8 * v40 + 40];
          v40 = 1;
          v47 = 0;
        }

        while ((v48 & 1) != 0);
        *(v46 + 56) = *(v22 + 7);
        *(v46 + 64) = *(v22 + 8);
        *v46 = v37;
        *(v46 + 4) = v39;
        *(v46 + 72) = *(v22 + 9);
        *(v46 + 104) = 0;
        pthread_mutex_lock((a1 + 424));
        pthread_cond_broadcast((a1 + 488));
        pthread_mutex_unlock((a1 + 424));
        v49 = *(a1 + 312);
        if (v49)
        {
          v49(a1, *(a1 + 320), v22);
        }

        else
        {
          free(v22);
        }

        goto LABEL_53;
      }
    }

    p_F = &__F;
    v32 = 1;
    do
    {
      *p_F++ = 1.0 / v28;
    }

    while (v28 > v32++);
    goto LABEL_42;
  }

  v17 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v17 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10007D9C4();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100029094(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, int a4, UInt32 inNumberFrames)
{
  if (a1)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      sub_10000D1F4(v9);
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v16 = 0;
      goto LABEL_70;
    }

    v11 = *(a1 + 48) * inNumberFrames;
    v13 = (a1 + 104);
    v12 = *(a1 + 104);
    ioData.mBuffers[0].mData = (v10 + v12);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v11;
    if (v12 + v11 <= *(a1 + 76))
    {
      v16 = AudioUnitRender(*(a1 + 16), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v16)
      {
        v18 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10007DA44();
        }
      }

      v19 = *(a1 + 248);
      if (v19)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v19);
        fflush(*(a1 + 248));
      }

      v15 = *v13 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v14 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007DAC0();
      }

      v15 = 0;
      v16 = 0;
    }

    *(a1 + 104) = v15;
    if (v15 != *(a1 + 76))
    {
      goto LABEL_70;
    }

    memcpy(*(a1 + 96), (*(a1 + 96) + v15), v15);
    memcpy((*(a1 + 96) + *(a1 + 76)), *(a1 + 80), *(a1 + 76));
    v20 = *(a1 + 256);
    if (v20)
    {
      fwrite(*(a1 + 96), 1uLL, *(a1 + 92), v20);
      fflush(*(a1 + 256));
    }

    v21 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v21)
    {
LABEL_69:
      *v13 = 0;
LABEL_70:
      v61 = *(a1 + 288);
      if (v61)
      {
        sub_100034CB4(v61);
      }

      return v16;
    }

    v22 = v21;
    v75 = NAN;
    v74 = 0x7FC000007FC00000;
    v73 = 2143289344;
    v72 = 0x7FC000007FC00000;
    v63 = NAN;
    v71 = 0;
    v70 = 0;
    v23 = *(*a1 + 8);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = *(a1 + 116) >> 2;
    v28 = *(a1 + 132) >> 2;
    *&__F = 1065353216;
    vDSP_desamp(*(a1 + 96), 2, &__F, *(a1 + 136), v28, 2uLL);
    v69 = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 96), 2, &v69, *(a1 + 120), v27, 2uLL);
    v29 = sub_1000058F4(*(a1 + 120), v27);
    v30 = sub_1000058F4(*(a1 + 136), v28);
    if (*(a1 + 8) == 1)
    {
      v29 = sub_1000058F4((*(a1 + 120) + 38400), v27 - 9600);
      v31 = sub_1000058F4((*(a1 + 136) + 38400), v28 - 9600);
      *(a1 + 8) = 0;
    }

    else
    {
      v31 = v30;
    }

    v32 = v29 + 0.4945;
    v33 = v31 + 0.4945;
    v34 = (v29 + 0.4945) <= 0.033 || v33 <= 0.033;
    v35 = !v34;
    v36 = v32 > v33;
    v37 = v33 / v32;
    if ((v35 & v36) != 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    v39 = *(a1 + 272);
    if (v39)
    {
      fwrite(*(a1 + 136), 1uLL, *(a1 + 132), v39);
      fflush(*(a1 + 272));
    }

    v40 = *(a1 + 264);
    if (v40)
    {
      fwrite(*(a1 + 120), 1uLL, *(a1 + 116), v40);
      fflush(*(a1 + 264));
    }

    v41 = *(a1 + 148) >> 2;
    v42 = (v25 / v26);
    if (v42 > 16 || v42 == 0)
    {
      v44 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v44 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v44;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10007DB3C();
      }

      v67 = 0u;
      v68 = 0u;
      __F = 0u;
      v66 = 0u;
      v42 = 16;
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      __F = 0u;
      v66 = 0u;
      if (v42 < 1)
      {
LABEL_58:
        vDSP_desamp(*(a1 + 120), v42, &__F, *(a1 + 152), v41, v42);
        v47 = v26;
        sub_10003FD44(*(a1 + 152), *(a1 + 232), &v74, &v72, *(a1 + 200), (a1 + 240), v47);
        v48 = *(a1 + 180) >> 2;
        __F = xmmword_10008D1F0;
        vDSP_desamp(*(a1 + 120), (v25 / v24), &__F, *(a1 + 184), v48, (v25 / v24));
        v49 = v24;
        sub_10000B05C(*(a1 + 184), v48, &v74, &v70, 3u, v49);
        LODWORD(__F) = 0;
        v50 = sub_100040388(&v63, &__F, *(a1 + 224), *&v74, *&v72, *&v70, v38, v75, v26);
        *v22 = v50;
        v51.i32[0] = __F;
        LODWORD(v72) = __F;
        v52 = *(*(a1 + 224) + 4 * ((*(*(a1 + 224) + 8) + **(a1 + 224) - 1) % **(a1 + 224)) + 140);
        *&v70 = v52;
        if (v50 == 1)
        {
          if (v52 > 0.4)
          {
            v53 = 1;
          }

          else
          {
            v53 = 2;
          }
        }

        else
        {
          v53 = v50;
          if (v50 != 3)
          {
            v53 = 2;
          }
        }

        v54 = 0;
        v51.i32[1] = sqrtf(v75);
        v55 = v63 * 0.5;
        *(v22 + 24) = vcvtq_f64_f32(vminnm_f32(v51, vdup_n_s32(0x477FFF00u)));
        *(v22 + 1) = v55;
        *(v22 + 2) = v38;
        *(v22 + 5) = fminf(v52, 65535.0);
        v56 = fminf(*(&v70 + 1), 65535.0);
        *(v22 + 1) = v53;
        *(v22 + 6) = v56;
        *(v22 + 7) = v29;
        *(v22 + 8) = v31;
        *(v22 + 9) = v38;
        *(v22 + 13) = 0x200000000;
        v57 = *(a1 + 296);
        v58 = 1;
        do
        {
          v59 = v58;
          *(v57 + 8 + 8 * v54) = *&v22[8 * v54 + 8];
          *(v57 + 24 + 8 * v54) = *&v22[8 * v54 + 24];
          *(v57 + 40 + 8 * v54) = *&v22[8 * v54 + 40];
          v54 = 1;
          v58 = 0;
        }

        while ((v59 & 1) != 0);
        *(v57 + 56) = *(v22 + 7);
        *(v57 + 64) = *(v22 + 8);
        *v57 = v50;
        *(v57 + 4) = v53;
        *(v57 + 72) = *(v22 + 9);
        *(v57 + 104) = 0;
        pthread_mutex_lock((a1 + 424));
        pthread_cond_broadcast((a1 + 488));
        pthread_mutex_unlock((a1 + 424));
        v60 = *(a1 + 312);
        if (v60)
        {
          v60(a1, *(a1 + 320), v22);
        }

        else
        {
          free(v22);
        }

        goto LABEL_69;
      }
    }

    p_F = &__F;
    v46 = 1;
    do
    {
      *p_F++ = 1.0 / v42;
      v34 = v42 > v46++;
    }

    while (v34);
    goto LABEL_58;
  }

  v17 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v17 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10007DBB8();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1000297DC(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, int a4, UInt32 inNumberFrames)
{
  if (a1)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      sub_10000D1F4(v9);
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v16 = 0;
      goto LABEL_88;
    }

    v11 = *(a1 + 48) * inNumberFrames;
    v13 = (a1 + 104);
    v12 = *(a1 + 104);
    ioData.mBuffers[0].mData = (v10 + v12);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v11;
    if (v12 + v11 <= *(a1 + 76))
    {
      v16 = AudioUnitRender(*(a1 + 16), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v16)
      {
        v18 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10007DC38();
        }
      }

      v19 = *(a1 + 248);
      if (v19)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v19);
        fflush(*(a1 + 248));
      }

      v15 = *v13 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v14 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007DCB4();
      }

      v15 = 0;
      v16 = 0;
    }

    *(a1 + 104) = v15;
    if (v15 != *(a1 + 76))
    {
      goto LABEL_88;
    }

    memcpy(*(a1 + 96), (*(a1 + 96) + v15), v15);
    memcpy((*(a1 + 96) + *(a1 + 76)), *(a1 + 80), *(a1 + 76));
    v20 = *(a1 + 256);
    if (v20)
    {
      fwrite(*(a1 + 96), 1uLL, *(a1 + 92), v20);
      fflush(*(a1 + 256));
    }

    v21 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v21)
    {
LABEL_87:
      *v13 = 0;
LABEL_88:
      v84 = *(a1 + 288);
      if (v84)
      {
        sub_100034CB4(v84);
      }

      return v16;
    }

    v22 = v21;
    v96 = 2143289344;
    v95 = 0x7FC000007FC00000;
    v94 = 0;
    v93 = 0;
    v23 = *a1;
    v24 = *(*a1 + 8);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(a1 + 116) >> 2;
    v28 = *(a1 + 132) >> 2;
    *&__F = 1065353216;
    v97 = 0x3F80000000000000;
    if (*v23 == 5)
    {
      p_F = &v97;
    }

    else
    {
      p_F = &__F;
    }

    if (*v23 == 5)
    {
      v30 = &__F;
    }

    else
    {
      v30 = &v97;
    }

    vDSP_desamp(*(a1 + 96), 2, p_F, *(a1 + 136), v28, 2uLL);
    vDSP_desamp(*(a1 + 96), 2, v30, *(a1 + 120), v27, 2uLL);
    v31 = sub_1000058F4(*(a1 + 120), v27);
    v32 = sub_1000058F4(*(a1 + 136), v28);
    if (*(a1 + 8) == 1)
    {
      v31 = sub_1000058F4((*(a1 + 120) + 38400), v27 - 9600);
      v33 = sub_1000058F4((*(a1 + 136) + 38400), v28 - 9600);
      *(a1 + 8) = 0;
    }

    else
    {
      v33 = v32;
    }

    v34 = **a1;
    v35 = -1.0;
    if (v34 <= 4)
    {
      if (v34 == 3)
      {
        *(*(a1 + 416) + 708) = 0x3EE666663E99999ALL;
        v41 = v33 + 0.389;
        v35 = 0.0;
        if ((v33 + 0.389) > 0.024)
        {
          v42 = v31 + 0.3895;
          if ((v31 + 0.3895) > 0.024)
          {
            v43 = v42 <= v41;
            v44 = v41 / v42;
            if (!v43)
            {
              v35 = v44;
            }
          }
        }

        goto LABEL_61;
      }

      if (v34 == 4)
      {
        *(*(a1 + 416) + 708) = 0x4110000040C00000;
        v36 = v33 + 19.021;
        v35 = 0.0;
        if ((v33 + 19.021) > 1.4576)
        {
          v37 = v31 + 18.175;
          v38 = 1.6311;
          goto LABEL_54;
        }
      }
    }

    else
    {
      switch(v34)
      {
        case 5:
          *(*(a1 + 416) + 708) = 0x4110000040C00000;
          v39 = v33 + 24.91;
          v35 = 0.0;
          if ((v33 + 24.91) > 1.011)
          {
            v40 = v31 + 25.06;
            if ((v31 + 25.06) > v39 && v40 > 1.011)
            {
              v35 = v39 / v40;
            }
          }

          break;
        case 7:
          *(*(a1 + 416) + 708) = 0x3EE666663E99999ALL;
          v36 = v33 + 0.6268;
          v35 = 0.0;
          v38 = 0.01758;
          if ((v33 + 0.6268) > 0.01758)
          {
            v37 = v31 + 0.6268;
            goto LABEL_54;
          }

          break;
        case 8:
          *(*(a1 + 416) + 708) = 0x4110000040C00000;
          v36 = v33 + 24.876;
          v35 = 0.0;
          if ((v33 + 24.876) > 0.714)
          {
            v37 = v31 + 25.042;
            v38 = 2.0352;
LABEL_54:
            if (v37 > v38 && v37 > v36)
            {
              v35 = v36 / v37;
            }
          }

          break;
      }
    }

LABEL_61:
    v45 = *(a1 + 272);
    if (v45)
    {
      fwrite(*(a1 + 136), 1uLL, *(a1 + 132), v45);
      fflush(*(a1 + 272));
    }

    v46 = *(a1 + 264);
    if (v46)
    {
      fwrite(*(a1 + 120), 1uLL, *(a1 + 116), v46);
      fflush(*(a1 + 264));
    }

    if ((**a1 | 2) == 7)
    {
      v47 = *(*a1 + 8);
      v48 = *v47;
      v49 = v47[2];
      v50 = *(a1 + 148);
      v51 = (v48 / v49);
      v91 = 0u;
      v92 = 0u;
      v52 = v50 >> 2;
      __F = 0u;
      v90 = 0u;
      if (v51 >= 1)
      {
        v53 = &__F;
        v54 = 1;
        do
        {
          *v53++ = 1.0 / v51;
          v55 = v54++;
        }

        while (v55 < v51);
      }

      vDSP_desamp(*(a1 + 120), v51, &__F, *(a1 + 152), v52, v51);
      vDSP_desamp(*(a1 + 136), v51, &__F, *(a1 + 168), v52, v51);
    }

    else
    {
      memcpy(*(a1 + 152), *(a1 + 120), *(a1 + 148));
      memcpy(*(a1 + 168), *(a1 + 136), *(a1 + 148));
    }

    v56 = sub_100005AB0(*(a1 + 416), (a1 + 240), *(a1 + 152), *(a1 + 168), &v97, *(a1 + 408));
    v95 = 1119092736;
    v96 = 0;
    v57 = 0.0;
    if (!v56)
    {
      LODWORD(v95) = HIDWORD(v97);
      v96 = v100;
      v57 = v98 * 65535.0;
    }

    v86 = v57;
    v58 = *(a1 + 148);
    v59 = (*(a1 + 152) + (v58 >> 1));
    v60 = (*(a1 + 168) + (v58 >> 1));
    v61 = v58 >> 3;
    v62 = *(a1 + 416);
    v63 = *(v62 + 24);
    v64 = *(v62 + 28);
    v65 = *(v62 + 816);
    if (*(v62 + 828))
    {
      sub_100040A08(v59, v60, v61, 1, v65, &__F, 0, 1.0, 1.0, v63, v64);
    }

    else
    {
      sub_100040A08(v59, v60, v61, 0, v65, &__F, 0, 1.0, 1.0, v63, v64);
      *(*(a1 + 416) + 828) = 1;
    }

    v66 = v90;
    *(v22 + 116) = __F;
    *(v22 + 132) = v66;
    *(v22 + 148) = v91;
    *(v22 + 164) = v92;
    v67 = *(a1 + 180) >> 2;
    v88 = xmmword_10008D1F0;
    vDSP_desamp(*(a1 + 120), (v26 / v25), &v88, *(a1 + 184), v67, (v26 / v25));
    v68 = v25;
    sub_10000B05C(*(a1 + 184), v67, &v95, &v93, 3u, v68);
    v69 = v101;
    *v22 = v101;
    v70 = *(&v97 + 1);
    v71 = *(*(a1 + 224) + 4 * ((*(*(a1 + 224) + 8) + **(a1 + 224) - 1) % **(a1 + 224)) + 140);
    *&v93 = v71;
    v72 = v69;
    if (v69 != 3)
    {
      if (v69 == 1)
      {
        if (v71 > 0.4)
        {
          v72 = 1;
        }

        else
        {
          v72 = 2;
        }
      }

      else
      {
        v72 = 2;
      }
    }

    v73 = 0;
    *(v22 + 24) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v96, LODWORD(v86)), vdup_n_s32(0x477FFF00u)));
    *(v22 + 1) = v70 * 0.5;
    *(v22 + 2) = v35;
    v74 = v99;
    v75 = v102;
    *(v22 + 20) = v99;
    *(v22 + 23) = v75;
    *(v22 + 84) = 0x3F80000000000000;
    *(v22 + 5) = fminf(v71, 65535.0);
    v76 = fminf(*(&v93 + 1), 65535.0);
    *(v22 + 1) = v72;
    *(v22 + 13) = 0x200000000;
    *(v22 + 6) = v76;
    *(v22 + 7) = v31;
    *(v22 + 8) = v33;
    *(v22 + 9) = v35;
    v77 = *(a1 + 296);
    v78 = 1;
    do
    {
      v79 = v78;
      *(v77 + 8 + 8 * v73) = *&v22[8 * v73 + 8];
      *(v77 + 24 + 8 * v73) = *&v22[8 * v73 + 24];
      *(v77 + 40 + 8 * v73) = *&v22[8 * v73 + 40];
      v73 = 1;
      v78 = 0;
    }

    while ((v79 & 1) != 0);
    *(v77 + 56) = *(v22 + 7);
    *(v77 + 64) = *(v22 + 8);
    *v77 = v69;
    *(v77 + 4) = v72;
    *(v77 + 72) = *(v22 + 9);
    *(v77 + 80) = v74;
    *(v77 + 92) = v75;
    *(v77 + 84) = 0x3F80000000000000;
    *(v77 + 104) = 0;
    v80 = *(v22 + 116);
    v81 = *(v22 + 132);
    v82 = *(v22 + 148);
    *(v77 + 164) = *(v22 + 164);
    *(v77 + 148) = v82;
    *(v77 + 132) = v81;
    *(v77 + 116) = v80;
    pthread_mutex_lock((a1 + 424));
    pthread_cond_broadcast((a1 + 488));
    pthread_mutex_unlock((a1 + 424));
    v83 = *(a1 + 312);
    if (v83)
    {
      v83(a1, *(a1 + 320), v22);
    }

    else
    {
      free(v22);
    }

    goto LABEL_87;
  }

  v17 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v17 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10007DD30();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002A18C(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, int a4, UInt32 inNumberFrames)
{
  if (a1)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      sub_10000D1F4(v9);
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v16 = 0;
      goto LABEL_96;
    }

    v11 = *(a1 + 48) * inNumberFrames;
    v13 = (a1 + 104);
    v12 = *(a1 + 104);
    ioData.mBuffers[0].mData = (v10 + v12);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v11;
    if (v12 + v11 <= *(a1 + 76))
    {
      v16 = AudioUnitRender(*(a1 + 16), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v16)
      {
        v18 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10007DF28();
        }
      }

      v19 = *(a1 + 248);
      if (v19)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v19);
        fflush(*(a1 + 248));
      }

      v15 = *v13 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v14 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007DFA4();
      }

      v15 = 0;
      v16 = 0;
    }

    *(a1 + 104) = v15;
    v20 = *(a1 + 76);
    if (v15 != v20)
    {
      goto LABEL_96;
    }

    v84 = 0;
    *(a1 + 536) = 0;
    v21 = *(a1 + 544);
    if (v21)
    {
      sub_1000058DC(v21, &v84, (a1 + 536));
      v20 = *(a1 + 76);
    }

    memcpy(*(a1 + 96), (*(a1 + 96) + v20), v20);
    memcpy((*(a1 + 96) + *(a1 + 76)), *(a1 + 80), *(a1 + 76));
    v22 = *(a1 + 256);
    if (v22)
    {
      fwrite(*(a1 + 96), 1uLL, *(a1 + 92), v22);
      fflush(*(a1 + 256));
    }

    v23 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v23)
    {
LABEL_95:
      *v13 = 0;
LABEL_96:
      v81 = *(a1 + 288);
      if (v81)
      {
        sub_100034CB4(v81);
      }

      return v16;
    }

    v24 = v23;
    v90 = 2143289344;
    v89 = 0x7FC000007FC00000;
    v88 = 0;
    v87 = 0;
    v25 = *(*a1 + 8);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(a1 + 116) >> 2;
    v29 = *(a1 + 132) >> 2;
    __F = 1065353216;
    info[0] = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 96), 2, &__F, *(a1 + 136), v29, 2uLL);
    vDSP_desamp(*(a1 + 96), 2, info, *(a1 + 120), v28, 2uLL);
    v30 = *(a1 + 76);
    v31 = sub_1000058F4(*(a1 + 120), v28);
    v32 = sub_1000058F4(*(a1 + 136), v29);
    if (*(a1 + 8) == 1)
    {
      v33 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v33 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v33;
      }

      v34 = v30 >> 3;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 76);
        *buf = 67109376;
        *&buf[4] = v34;
        *&buf[8] = 1024;
        *&buf[10] = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "skip buffer size in (float)%d, acc size %d\n\n", buf, 0xEu);
      }

      v31 = sub_1000058F4((*(a1 + 120) + 4 * v34), v28 - v34);
      v36 = sub_1000058F4((*(a1 + 136) + 4 * v34), v29 - v34);
      *(a1 + 8) = 0;
      *(a1 + 540) = 0;
    }

    else
    {
      v36 = v32;
      *(a1 + 540) ^= 1u;
    }

    v37 = *(a1 + 416);
    *(v37 + 708) = 0x3EE666663E99999ALL;
    if (v84 <= 2u)
    {
      if (!v84)
      {
        v38 = *(v37 + 744);
        goto LABEL_49;
      }

      if (v84 == 1)
      {
        v38 = *(v37 + 752);
        goto LABEL_49;
      }
    }

    else
    {
      switch(v84)
      {
        case 3u:
          v38 = *(v37 + 760);
          goto LABEL_49;
        case 7u:
          v38 = *(v37 + 768);
          goto LABEL_49;
        case 0xFu:
          v38 = *(v37 + 776);
LABEL_49:
          v39 = vmul_f32(v38, 0x3400000034000000);
          *(v37 + 24) = vrev64_s32(v39);
          v40 = *&v39.i32[1];
          goto LABEL_50;
      }
    }

    v40 = *(v37 + 24);
LABEL_50:
    if (v40 < -0.6446 || v40 > -0.6138)
    {
      *(v37 + 24) = -1088351424;
      v40 = -0.6292;
    }

    v41 = *(v37 + 28);
    if (v41 < -0.6437 || v41 > -0.6051)
    {
      *(v37 + 28) = -1088431954;
      v41 = -0.6244;
    }

    v42 = v36 - v41;
    v43 = 0.0;
    if (v42 > 0.0193)
    {
      v44 = v31 - v40;
      if (v44 > 0.0154 && v44 > v42)
      {
        v43 = (v42 / v44);
      }
    }

    v45 = *(a1 + 272);
    if (v45)
    {
      fwrite(*(a1 + 136), 1uLL, *(a1 + 132), v45);
      fflush(*(a1 + 272));
    }

    v46 = *(a1 + 264);
    if (v46)
    {
      fwrite(*(a1 + 120), 1uLL, *(a1 + 116), v46);
      fflush(*(a1 + 264));
    }

    memcpy(*(a1 + 152), *(a1 + 120), *(a1 + 148));
    memcpy(*(a1 + 168), *(a1 + 136), *(a1 + 148));
    v47 = sub_100005AB0(*(a1 + 416), (a1 + 240), *(a1 + 152), *(a1 + 168), &__F, *(a1 + 408));
    v48 = *(a1 + 416);
    if (*(v48 + 1))
    {
      if (*(a1 + 408) != 8.0)
      {
        *(v48 + 828) = 0;
      }

      if (*(a1 + 540) == 1)
      {
        sub_100041078(*(a1 + 152), *(a1 + 168), *(a1 + 148) >> 2, 0xFA0u, *(v48 + 816), *(v48 + 824), buf);
      }
    }

    else
    {
      *(v48 + 828) = 0;
    }

    mach_timebase_info(info);
    if (info[0].denom)
    {
      v49 = info[0].numer / info[0].denom;
    }

    else
    {
      v49 = 1;
    }

    *&v95[1] = v49 * inTimeStamp->mHostTime;
    v50 = v94;
    *(v24 + 204) = v93;
    *(v24 + 220) = v50;
    *(v24 + 236) = v95[0];
    v51 = v92;
    *(v24 + 172) = *buf;
    *(v24 + 188) = v51;
    *(v24 + 250) = *(v95 + 14);
    v52 = HIDWORD(__F);
    v53 = 1;
    if ((*(&__F + 1) * 0.5) >= 59.0 && (*(&__F + 1) * 0.5) <= 61.0)
    {
      v53 = v97 < 0.95;
    }

    v55 = v101 >= 0.66 && v98 <= 13.66;
    *(v24 + 67) = v55 && v53;
    v89 = 1119092736;
    v90 = 0;
    v56 = 0.0;
    if (!v47)
    {
      LODWORD(v89) = v52;
      v90 = v99;
      v56 = v97 * 65535.0;
    }

    v83 = v56;
    v57 = *(a1 + 180) >> 2;
    *&info[0].numer = xmmword_10008D1F0;
    vDSP_desamp(*(a1 + 120), (v27 / v26), info, *(a1 + 184), v57, (v27 / v26));
    v58 = v26;
    sub_10000B05C(*(a1 + 184), v57, &v89, &v87, 3u, v58);
    v59 = v100;
    *v24 = v100;
    v60 = *(*(a1 + 224) + 4 * ((*(*(a1 + 224) + 8) + **(a1 + 224) - 1) % **(a1 + 224)) + 140);
    *&v87 = v60;
    v61 = v59;
    if (v59 != 3)
    {
      if (v59 == 1)
      {
        if (v60 > 0.4)
        {
          v61 = 1;
        }

        else
        {
          v61 = 2;
        }
      }

      else
      {
        v61 = 2;
      }
    }

    v62 = 0;
    v63 = *(&__F + 1) * 0.5;
    *(v24 + 24) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v90, LODWORD(v83)), vdup_n_s32(0x477FFF00u)));
    *(v24 + 1) = v63;
    *(v24 + 2) = v43;
    v64 = v98;
    *(v24 + 20) = v98;
    v65 = v101;
    *(v24 + 5) = fminf(v60, 65535.0);
    *(v24 + 23) = v65;
    v66 = fminf(*(&v87 + 1), 65535.0);
    *(v24 + 1) = v61;
    *(v24 + 27) = 2;
    *(v24 + 6) = v66;
    *(v24 + 7) = v31;
    *(v24 + 8) = v36;
    *(v24 + 9) = v43;
    v67 = *(a1 + 296);
    v68 = 1;
    do
    {
      v69 = v68;
      *(v67 + 8 + 8 * v62) = *&v24[8 * v62 + 8];
      *(v67 + 24 + 8 * v62) = *&v24[8 * v62 + 24];
      *(v67 + 40 + 8 * v62) = *&v24[8 * v62 + 40];
      v62 = 1;
      v68 = 0;
    }

    while ((v69 & 1) != 0);
    *(v67 + 56) = *(v24 + 7);
    *(v67 + 64) = *(v24 + 8);
    *v67 = v59;
    *(v67 + 4) = v61;
    *(v67 + 72) = *(v24 + 9);
    *(v67 + 80) = v64;
    *(v67 + 92) = v65;
    v70 = mach_absolute_time();
    v71 = *(a1 + 296);
    *(v71 + 96) = v70;
    v72 = *(v24 + 116);
    v73 = *(v24 + 132);
    v74 = *(v24 + 148);
    *(v71 + 164) = *(v24 + 164);
    *(v71 + 148) = v74;
    *(v71 + 132) = v73;
    *(v71 + 116) = v72;
    v75 = *(a1 + 296);
    v76 = *(v24 + 188);
    *(v75 + 172) = *(v24 + 172);
    *(v75 + 188) = v76;
    v77 = *(v24 + 204);
    v78 = *(v24 + 220);
    v79 = *(v24 + 236);
    *(v75 + 250) = *(v24 + 250);
    *(v75 + 236) = v79;
    *(v75 + 220) = v78;
    *(v75 + 204) = v77;
    v80 = *(a1 + 312);
    if (v80)
    {
      v80(a1, *(a1 + 320), v24);
    }

    else
    {
      free(v24);
    }

    goto LABEL_95;
  }

  v17 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v17 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10007E020();
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10002AB38(uint64_t a1, AudioUnitRenderActionFlags *ioActionFlags, AudioTimeStamp *inTimeStamp, int a4, UInt32 inNumberFrames)
{
  if (a1)
  {
    v9 = *(a1 + 288);
    if (v9)
    {
      sub_10000D1F4(v9);
    }

    v10 = *(a1 + 80);
    if (!v10)
    {
      v16 = 0;
      goto LABEL_112;
    }

    v12 = (a1 + 104);
    v11 = *(a1 + 104);
    v13 = *(a1 + 48) * inNumberFrames;
    ioData.mBuffers[0].mData = (v10 + v11);
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mDataByteSize = v13;
    if (v11 + v13 <= *(a1 + 76))
    {
      v16 = AudioUnitRender(*(a1 + 16), ioActionFlags, inTimeStamp, 1u, inNumberFrames, &ioData);
      if (v16)
      {
        v18 = off_10041DC78;
        if (off_10041DC78 == &_os_log_default)
        {
          v18 = os_log_create("com.apple.isp", "general");
          off_10041DC78 = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10007E0A0();
        }
      }

      v19 = *(a1 + 248);
      if (v19)
      {
        fwrite(ioData.mBuffers[0].mData, 1uLL, ioData.mBuffers[0].mDataByteSize, v19);
        fflush(*(a1 + 248));
      }

      v15 = *v12 + ioData.mBuffers[0].mDataByteSize;
    }

    else
    {
      v14 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v14 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10007E11C();
      }

      v15 = 0;
      v16 = 0;
    }

    *(a1 + 104) = v15;
    if (v15 != *(a1 + 76))
    {
      goto LABEL_112;
    }

    __ptr = 0;
    *(a1 + 536) = 0;
    v20 = *(a1 + 544);
    if (v20)
    {
      sub_1000058DC(v20, &__ptr, (a1 + 536));
    }

    v21 = *(a1 + 280);
    if (v21)
    {
      fwrite(&__ptr, 1uLL, 1uLL, v21);
      fflush(*(a1 + 280));
    }

    if (*(a1 + 536) && (*(a1 + 8) & 1) == 0)
    {
      *(a1 + 104) = 0;
      *(*(a1 + 416) + 828) = 0;
      pthread_mutex_lock((a1 + 424));
      v43 = mach_absolute_time();
      v44 = *(a1 + 296);
      *(v44 + 96) = v43;
      LOBYTE(v45) = __ptr;
      *(v44 + 88) = v45;
      *(v44 + 84) = 0;
      *(v44 + 112) = 1;
      pthread_cond_broadcast((a1 + 488));
      pthread_mutex_unlock((a1 + 424));
      return 0;
    }

    memcpy(*(a1 + 96), (*(a1 + 96) + *(a1 + 76)), *(a1 + 76));
    memcpy((*(a1 + 96) + *(a1 + 76)), *(a1 + 80), *(a1 + 76));
    v22 = *(a1 + 256);
    if (v22)
    {
      fwrite(*(a1 + 96), 1uLL, *(a1 + 92), v22);
      fflush(*(a1 + 256));
    }

    v23 = malloc_type_calloc(1uLL, 0x110uLL, 0x1000040368141FCuLL);
    if (!v23)
    {
LABEL_111:
      *v12 = 0;
LABEL_112:
      v100 = *(a1 + 288);
      if (v100)
      {
        sub_100034CB4(v100);
      }

      return v16;
    }

    v25 = v23;
    LOBYTE(v24) = __ptr;
    v23[22] = v24;
    v113 = 2143289344;
    v112 = 0x7FC000007FC00000;
    v111 = 0;
    v110 = 0;
    v26 = *(*a1 + 8);
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    v30 = *(a1 + 116) >> 2;
    v31 = *(a1 + 132) >> 2;
    __F = 1065353216;
    info[0] = 0x3F80000000000000;
    vDSP_desamp(*(a1 + 96), 2, &__F, *(a1 + 136), v31, 2uLL);
    vDSP_desamp(*(a1 + 96), 2, info, *(a1 + 120), v30, 2uLL);
    v32 = *(a1 + 76) >> 3;
    v33 = sub_1000058F4(*(a1 + 120), v30);
    v34 = sub_1000058F4(*(a1 + 136), v31);
    v35 = v30 - v32;
    v36 = v31 - v32;
    v37 = sub_1000058F4((*(a1 + 120) + 4 * v32 + 4 * (v35 - 3 * v35 / 5)), 3 * v35 / 5);
    v38 = sub_1000058F4((*(a1 + 136) + 4 * v32 + 4 * (v36 - 3 * v36 / 5)), 3 * v36 / 5);
    if (*(a1 + 8) == 1)
    {
      v39 = off_10041DC78;
      if (off_10041DC78 == &_os_log_default)
      {
        v39 = os_log_create("com.apple.isp", "general");
        off_10041DC78 = v39;
      }

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 76);
        *buf = 67109376;
        *&buf[4] = v32;
        *&buf[8] = 1024;
        *&buf[10] = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "skip buffer size in (float)%d, acc size %d\n\n", buf, 0xEu);
      }

      v33 = sub_1000058F4((*(a1 + 120) + 4 * v32), v35);
      v34 = sub_1000058F4((*(a1 + 136) + 4 * v32), v36);
      *(a1 + 8) = 0;
      *(a1 + 540) = 0;
    }

    else
    {
      *(a1 + 540) ^= 1u;
    }

    v41 = *(a1 + 416);
    *(v41 + 708) = 0x3EE666663E99999ALL;
    if (__ptr <= 2u)
    {
      if (!__ptr)
      {
        v42 = *(v41 + 744);
        goto LABEL_54;
      }

      if (__ptr == 1)
      {
        v42 = *(v41 + 752);
        goto LABEL_54;
      }
    }

    else
    {
      switch(__ptr)
      {
        case 3u:
          v42 = *(v41 + 760);
          goto LABEL_54;
        case 7u:
          v42 = *(v41 + 768);
          goto LABEL_54;
        case 0xFu:
          v42 = *(v41 + 776);
LABEL_54:
          *(v41 + 24) = vrev64_s32(vmul_f32(v42, 0x3400000034000000));
LABEL_55:
          v46 = *(a1 + 416);
          v47 = v34 - *(v46 + 28);
          v48 = 0.0;
          if (v47 > 0.01)
          {
            v49 = v33 - *(v46 + 24);
            if (v49 > 0.01 && v49 > v47)
            {
              v48 = (v47 / v49);
            }
          }

          v50 = *(a1 + 272);
          if (v50)
          {
            fwrite(*(a1 + 136), 1uLL, *(a1 + 132), v50);
            fflush(*(a1 + 272));
          }

          v51 = *(a1 + 264);
          if (v51)
          {
            fwrite(*(a1 + 120), 1uLL, *(a1 + 116), v51);
            fflush(*(a1 + 264));
          }

          v106 = 0.0;
          v105 = 0;
          v104 = 0.0;
          if (v28 == v29)
          {
            memcpy(*(a1 + 152), *(a1 + 120), *(a1 + 148));
            memcpy(*(a1 + 168), *(a1 + 136), *(a1 + 148));
          }

          else
          {
            v53 = *(a1 + 148) >> 2;
            v54 = v28 / v29;
            v55 = (v28 / v29);
            if (v55 >= 16)
            {
              v56 = 16;
            }

            else
            {
              v56 = (v28 / v29);
            }

            if (v55 >= 1)
            {
              *&v54 = 1.0 / v56;
              v57 = (v56 + 3) & 0x3C;
              v58 = vdupq_n_s64(v56 - 1);
              v59 = xmmword_10008D130;
              v60 = xmmword_10008B050;
              v61 = &buf[8];
              v62 = vdupq_n_s64(4uLL);
              do
              {
                v63 = vmovn_s64(vcgeq_u64(v58, v60));
                if (vuzp1_s16(v63, *&v54).u8[0])
                {
                  *(v61 - 2) = LODWORD(v54);
                }

                if (vuzp1_s16(v63, *&v54).i8[2])
                {
                  *(v61 - 1) = LODWORD(v54);
                }

                if (vuzp1_s16(*&v54, vmovn_s64(vcgeq_u64(v58, *&v59))).i32[1])
                {
                  *v61 = LODWORD(v54);
                  v61[1] = LODWORD(v54);
                }

                v59 = vaddq_s64(v59, v62);
                v60 = vaddq_s64(v60, v62);
                v61 += 4;
                v57 -= 4;
              }

              while (v57);
            }

            vDSP_desamp(*(a1 + 120), v56, buf, *(a1 + 152), v53, v56);
            vDSP_desamp(*(a1 + 136), v56, buf, *(a1 + 168), v53, v56);
          }

          sub_100005928((*(a1 + 416) + 716), __ptr, &v106, &v105 + 1, &v105, &v104, v52);
          v64 = sub_100005A3C((*(a1 + 416) + 716), 1, v37, v38, v106, *(&v105 + 1), *&v105, v104);
          if (v64 < 0.0)
          {
            v64 = 0.0;
          }

          v25[21] = v64;
          v65 = sub_100005AB0(*(a1 + 416), (a1 + 240), *(a1 + 152), *(a1 + 168), &__F, *(a1 + 408));
          v66 = *(a1 + 416);
          if (*(v66 + 1))
          {
            if (*(a1 + 408) != 8.0)
            {
              *(v66 + 828) = 0;
            }

            if (*(a1 + 540) == 1)
            {
              sub_100041078(*(a1 + 152), *(a1 + 168), *(a1 + 148) >> 2, 0xFA0u, *(v66 + 816), *(v66 + 824), buf);
            }
          }

          else
          {
            *(v66 + 828) = 0;
          }

          mach_timebase_info(info);
          if (info[0].denom)
          {
            v67 = info[0].numer / info[0].denom;
          }

          else
          {
            v67 = 1;
          }

          *&v117[1] = v67 * inTimeStamp->mHostTime;
          *(v25 + 51) = v115;
          v68 = v117[0];
          *(v25 + 55) = v116;
          *(v25 + 59) = v68;
          v69 = *&buf[16];
          *(v25 + 43) = *buf;
          *(v25 + 47) = v69;
          *(v25 + 250) = *(v117 + 14);
          v70 = HIDWORD(__F);
          v71 = 1;
          if ((*(&__F + 1) * 0.5) >= 59.0 && (*(&__F + 1) * 0.5) <= 61.0)
          {
            v71 = v119 < 0.95;
          }

          v73 = v123 >= 0.66 && v120 <= 13.66;
          *(v25 + 67) = v73 && v71;
          v112 = 1119092736;
          v113 = 0;
          v74 = 0.0;
          if (!v65)
          {
            LODWORD(v112) = v70;
            v113 = v121;
            v74 = v119 * 65535.0;
          }

          v103 = v74;
          v75 = *(a1 + 180) >> 2;
          *&info[0].numer = xmmword_10008D1F0;
          vDSP_desamp(*(a1 + 120), (v28 / v27), info, *(a1 + 184), v75, (v28 / v27));
          v76 = v27;
          sub_10000B05C(*(a1 + 184), v75, &v112, &v110, 3u, v76);
          v77 = v122;
          *v25 = v122;
          v78 = *(*(a1 + 224) + 4 * ((*(*(a1 + 224) + 8) + **(a1 + 224) - 1) % **(a1 + 224)) + 140);
          *&v110 = v78;
          v79 = v77;
          if (v77 != 3)
          {
            if (v77 == 1)
            {
              if (v78 > 0.4)
              {
                v79 = 1;
              }

              else
              {
                v79 = 2;
              }
            }

            else
            {
              v79 = 2;
            }
          }

          v80 = 0;
          v81 = *(&__F + 1) * 0.5;
          *(v25 + 6) = vcvtq_f64_f32(vminnm_f32(__PAIR64__(v113, LODWORD(v103)), vdup_n_s32(0x477FFF00u)));
          *(v25 + 1) = v81;
          *(v25 + 2) = v48;
          v82 = v120;
          v83 = v123;
          v25[20] = v120;
          v25[23] = v83;
          *(v25 + 5) = fminf(v78, 65535.0);
          v84 = fminf(*(&v110 + 1), 65535.0);
          *(v25 + 1) = v79;
          *(v25 + 13) = 0x200000001;
          *(v25 + 6) = v84;
          *(v25 + 7) = v33;
          *(v25 + 8) = v34;
          *(v25 + 9) = v48;
          v85 = *(a1 + 296);
          v86 = 1;
          do
          {
            v87 = v86;
            *(v85 + 8 + 8 * v80) = *&v25[2 * v80 + 2];
            *(v85 + 24 + 8 * v80) = *&v25[2 * v80 + 6];
            *(v85 + 40 + 8 * v80) = *&v25[2 * v80 + 10];
            v80 = 1;
            v86 = 0;
          }

          while ((v87 & 1) != 0);
          *(v85 + 56) = *(v25 + 7);
          *(v85 + 64) = *(v25 + 8);
          *v85 = v77;
          *(v85 + 4) = v79;
          *(v85 + 72) = *(v25 + 9);
          *(v85 + 80) = v82;
          *(v85 + 92) = v83;
          *(v85 + 104) = 1;
          pthread_mutex_lock((a1 + 424));
          *(*(a1 + 296) + 84) = v25[21];
          v88 = mach_absolute_time();
          v89 = *(a1 + 296);
          *(v89 + 96) = v88;
          *(v89 + 88) = v25[22];
          *(v89 + 112) = *(a1 + 536);
          pthread_cond_broadcast((a1 + 488));
          pthread_mutex_unlock((a1 + 424));
          v90 = *(a1 + 296);
          v91 = *(v25 + 41);
          v92 = *(v25 + 37);
          v93 = *(v25 + 33);
          *(v90 + 116) = *(v25 + 29);
          *(v90 + 132) = v93;
          *(v90 + 148) = v92;
          *(v90 + 164) = v91;
          v94 = *(a1 + 296);
          v95 = *(v25 + 59);
          v96 = *(v25 + 55);
          v97 = *(v25 + 51);
          *(v94 + 250) = *(v25 + 250);
          *(v94 + 204) = v97;
          *(v94 + 220) = v96;
          *(v94 + 236) = v95;
          v98 = *(v25 + 47);
          *(v94 + 172) = *(v25 + 43);
          *(v94 + 188) = v98;
          v99 = *(a1 + 312);
          if (v99)
          {
            v99(a1, *(a1 + 320), v25);
          }

          else
          {
            free(v25);
          }

          goto LABEL_111;
      }
    }

    v102 = off_10041DC78;
    if (off_10041DC78 == &_os_log_default)
    {
      v102 = os_log_create("com.apple.isp", "general");
      off_10041DC78 = v102;
    }

    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "inputCallbackForGrimaldiHighFreq";
      *&buf[12] = 1024;
      *&buf[14] = __ptr;
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "%s - Unexpected gain value %d\n", buf, 0x12u);
    }

    goto LABEL_55;
  }

  v17 = off_10041DC78;
  if (off_10041DC78 == &_os_log_default)
  {
    v17 = os_log_create("com.apple.isp", "general");
    off_10041DC78 = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10007E198();
  }

  return 0xFFFFFFFFLL;
}

int64_t sub_10002B7F0(xpc_connection_t *a1, void *a2)
{
  v4 = xpc_connection_send_message_with_reply_sync(*a1, a2);
  if (v4)
  {
    v5 = v4;
    type = xpc_get_type(v4);
    if (type == &_xpc_type_dictionary)
    {
      length = 3680;
      v12 = off_10041DC80;
      if (off_10041DC80 == &_os_log_default)
      {
        v12 = os_log_create("com.apple.isp", "services");
        off_10041DC80 = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10007E80C(v12);
      }

      int64 = xpc_dictionary_get_int64(v5, "H16ISPServicesRemoteReturnKey");
      data = xpc_dictionary_get_data(v5, "H16ISPServicesRemoteDataKey", &length);
      xpc_dictionary_set_data(a2, "H16ISPServicesRemoteDataKey", data, length);
      value = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteJasperCalibObjectKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteJasperCalibObjectKey", value);
      v15 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteRGBIRReportKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteRGBIRReportKey", v15);
      v16 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey", v16);
      v17 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteCFTypeNameKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteCFTypeNameKey", v17);
      v18 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteCFTypeDataKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteCFTypeDataKey", v18);
    }

    else
    {
      int64 = 3758097084;
      if (type == &_xpc_type_error)
      {
        v8 = xpc_copy_description(v5);
        if (v8)
        {
          v9 = v8;
          v10 = off_10041DC80;
          if (off_10041DC80 == &_os_log_default)
          {
            v10 = os_log_create("com.apple.isp", "services");
            off_10041DC80 = v10;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_10007E790();
          }

          free(v9);
        }

        int64 = 3758097111;
        if (v5 != &_xpc_error_connection_invalid)
        {
          xpc_connection_cancel(*a1);
        }
      }
    }

    xpc_release(v5);
  }

  else
  {
    v11 = off_10041DC80;
    if (off_10041DC80 == &_os_log_default)
    {
      v11 = os_log_create("com.apple.isp", "services");
      off_10041DC80 = v11;
    }

    int64 = 3758097084;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10007E890();
    }
  }

  return int64;
}

void sub_10002BAA4(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 32);
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "H16ISPServicesRemoteReturnKey");
    v10 = off_10041DC80;
    if (off_10041DC80 == &_os_log_default)
    {
      v10 = os_log_create("com.apple.isp", "services");
      off_10041DC80 = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12[0] = 67109376;
      v12[1] = v11;
      v13 = 1024;
      v14 = int64;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty (async) %d (reply=0x%08X)\n", v12, 0xEu);
    }
  }

  else if (type == &_xpc_type_error)
  {
    v6 = xpc_copy_description(object);
    if (v6)
    {
      v7 = v6;
      v8 = off_10041DC80;
      if (off_10041DC80 == &_os_log_default)
      {
        v8 = os_log_create("com.apple.isp", "services");
        off_10041DC80 = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10007E910();
      }

      free(v7);
    }

    if (object != &_xpc_error_connection_invalid)
    {
      xpc_connection_cancel(*v4);
    }
  }
}

uint64_t sub_10002BC5C(uint64_t a1, xpc_object_t *a2, int a3)
{
  v3 = 3758097085;
  if (!*a1)
  {
    return 3758097111;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_uint64(v7, "H16ISPServicesRemoteTypeKey", 1uLL);
    xpc_dictionary_set_data(v8, "H16ISPServicesRemoteDataKey", a2, 0x3408uLL);
    v9 = *a2;
    if (*a2 <= 8)
    {
      if (v9 == 7)
      {
        v10 = "H16ISPServicesRemoteJasperCalibObjectKey";
        goto LABEL_16;
      }

      if (v9 != 8)
      {
        goto LABEL_18;
      }

      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJBufferKey", a2[1]);
      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJOriginalCloudBanksKey", a2[3]);
      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJJasperCalibrationKey", a2[5]);
      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJColorCalibrationKey", a2[4]);
      v10 = "H16ISPServicesRemoteRGBJMetadataKey";
    }

    else
    {
      if ((v9 - 9) >= 2)
      {
        if (v9 != 21)
        {
          if (v9 == 18)
          {
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRBufferColorKey", a2[1]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRBufferIRKey", a2[2]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRBufferDepthKey", a2[3]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRMetadataColorKey", a2[4]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRMetadataIRKey", a2[5]);
            v10 = "H16ISPServicesRemoteRGBIRPCEConfigKey";
            v11 = 6;
LABEL_17:
            xpc_dictionary_set_value(v8, v10, a2[v11]);
          }

LABEL_18:
          if (a3)
          {
            v3 = sub_10002B7F0(a1, v8);
          }

          else
          {
            v12 = *a2;
            v13 = *a1;
            v14 = *(a1 + 8);
            v16[0] = _NSConcreteStackBlock;
            v16[1] = 0x40000000;
            v16[2] = sub_10002BAA4;
            v16[3] = &unk_1000A2628;
            v16[4] = a1;
            v17 = v12;
            xpc_connection_send_message_with_reply(v13, v8, v14, v16);
            v3 = 0;
          }

          xpc_release(v8);
          return v3;
        }

        v10 = "H16ISPServicesRemoteDeviceID";
LABEL_16:
        v11 = 1;
        goto LABEL_17;
      }

      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteCFTypeNameKey", a2[1]);
      v10 = "H16ISPServicesRemoteCFTypeDataKey";
    }

    v11 = 2;
    goto LABEL_17;
  }

  return v3;
}

uint64_t sub_10002BECC(xpc_connection_t *a1, xpc_object_t *a2)
{
  v2 = 3758097084;
  if (!*a1)
  {
    return 3758097111;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 3758097085;
  }

  v6 = v5;
  xpc_dictionary_set_uint64(v5, "H16ISPServicesRemoteTypeKey", 2uLL);
  xpc_dictionary_set_data(v6, "H16ISPServicesRemoteDataKey", a2, 0xE60uLL);
  if ((*a2 - 9) >= 2)
  {
    if (*a2 != 20)
    {
      goto LABEL_10;
    }

    v7 = "H16ISPServicesRemoteRGBIRFinalInputPCEConfigKey";
  }

  else
  {
    v7 = "H16ISPServicesRemoteCFTypeNameKey";
  }

  xpc_dictionary_set_value(v6, v7, a2[1]);
LABEL_10:
  v8 = sub_10002B7F0(a1, v6);
  length = 0;
  data = xpc_dictionary_get_data(v6, "H16ISPServicesRemoteDataKey", &length);
  if (length == 3680)
  {
    v2 = v8;
    memcpy(a2, data, 0xE60uLL);
    v10 = *a2;
    if (*a2 > 18)
    {
      if (v10 == 20)
      {
        if (!v8)
        {
          v11 = "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey";
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v10 == 19)
      {
        if (v8)
        {
LABEL_21:
          a2[1] = 0;
          goto LABEL_29;
        }

        v12 = "H16ISPServicesRemoteRGBIRReportKey";
LABEL_27:
        value = xpc_dictionary_get_value(v6, v12);
        a2[1] = value;
        goto LABEL_28;
      }
    }

    else
    {
      if ((v10 - 9) < 2)
      {
        if (!v8)
        {
          v11 = "H16ISPServicesRemoteCFTypeDataKey";
LABEL_25:
          value = xpc_dictionary_get_value(v6, v11);
          a2[2] = value;
LABEL_28:
          xpc_retain(value);
          goto LABEL_29;
        }

LABEL_23:
        a2[2] = 0;
        goto LABEL_29;
      }

      if (v10 == 7)
      {
        if (v8)
        {
          goto LABEL_21;
        }

        v12 = "H16ISPServicesRemoteJasperCalibObjectKey";
        goto LABEL_27;
      }
    }

LABEL_29:
    xpc_release(v6);
  }

  return v2;
}

uint64_t sub_10002C084(uint64_t a1, xpc_object_t *a2)
{
  v4 = off_10041DC80;
  if (off_10041DC80 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "services");
    off_10041DC80 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v10 = 67109120;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty %d (sent)\n", &v10, 8u);
  }

  v6 = sub_10002BC5C(a1, a2, 1);
  v7 = off_10041DC80;
  if (off_10041DC80 == &_os_log_default)
  {
    v7 = os_log_create("com.apple.isp", "services");
    off_10041DC80 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2;
    v10 = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty %d (reply=0x%08X)\n", &v10, 0xEu);
  }

  return v6;
}

uint64_t sub_10002C1FC(xpc_connection_t *a1, xpc_object_t *a2)
{
  v4 = off_10041DC80;
  if (off_10041DC80 == &_os_log_default)
  {
    v4 = os_log_create("com.apple.isp", "services");
    off_10041DC80 = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v10 = 67109120;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: GetProperty (%d) (sent)\n", &v10, 8u);
  }

  v6 = sub_10002BECC(a1, a2);
  v7 = off_10041DC80;
  if (off_10041DC80 == &_os_log_default)
  {
    v7 = os_log_create("com.apple.isp", "services");
    off_10041DC80 = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2;
    v10 = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: GetProperty (%d) (reply=0x%08X)\n", &v10, 0xEu);
  }

  return v6;
}

uint64_t sub_10002C370()
{
  v0 = __chkstk_darwin();
  LODWORD(v5[0]) = 7;
  v2 = sub_10000ADF8(v1);
  v5[1] = v2;
  v3 = sub_10002C084(v0, v5);
  xpc_release(v2);
  return v3;
}

uint64_t sub_10002C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 528))
  {
    sub_100016114(&v97, 2, *(a1 + 20));
    v97 = &off_1000A2658;
    sub_10002D3F4(a2, 0, &v92);
    v102 = 1;
    v103 = v99;
    LODWORD(v90) = 1;
    HIDWORD(v90) = v99;
    v91 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v88 = &off_1000A1C58;
    __dst = v98;
    sub_100016068(&v100);
    sub_10001746C(&v88, v94, v95);
    memcpy(__dst, __src, 8 * v90 * HIDWORD(v90));
    sub_100016068(&v88);
    sub_100016068(&v92);
    v10 = *(a3 + 24);
    v102 = 1;
    v103 = v99;
    v94 = 1;
    v95 = v99;
    v96 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v92 = &off_1000A1C58;
    __src = v98;
    sub_100016068(&v100);
    if (v95 * v94 >= 1)
    {
      v11 = __src;
      v12 = (__src + 8 * v95 * v94);
      do
      {
        *v11 = v10 * *v11;
        ++v11;
      }

      while (v11 < v12);
    }

    sub_100016068(&v92);
    v13 = *a3;
    v102 = 1;
    v103 = v99;
    v94 = 1;
    v95 = v99;
    v96 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v92 = &off_1000A1C58;
    __src = v98;
    sub_100016068(&v100);
    if (v95 * v94 >= 1)
    {
      v14 = __src;
      v15 = (__src + 8 * v95 * v94);
      do
      {
        *v14 = *v14 - v13;
        ++v14;
      }

      while (v14 < v15);
    }

    sub_100016068(&v92);
    sub_10002D3F4(a2, 1, &v92);
    v102 = 1;
    v103 = v99;
    LODWORD(v90) = 1;
    HIDWORD(v90) = v99;
    v91 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v88 = &off_1000A1C58;
    __dst = &v98[8 * v99];
    sub_100016068(&v100);
    sub_10001746C(&v88, v94, v95);
    memcpy(__dst, __src, 8 * v90 * HIDWORD(v90));
    sub_100016068(&v88);
    sub_100016068(&v92);
    v16 = *(a3 + 24);
    v102 = 1;
    v103 = v99;
    v94 = 1;
    v95 = v99;
    v96 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v92 = &off_1000A1C58;
    __src = &v98[8 * v99];
    sub_100016068(&v100);
    if (v95 * v94 >= 1)
    {
      v17 = __src;
      v18 = (__src + 8 * v95 * v94);
      do
      {
        *v17 = v16 * *v17;
        ++v17;
      }

      while (v17 < v18);
    }

    sub_100016068(&v92);
    v19 = *(a3 + 8);
    v102 = 1;
    v103 = v99;
    v94 = 1;
    v95 = v99;
    v96 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v92 = &off_1000A1C58;
    __src = &v98[8 * v99];
    sub_100016068(&v100);
    if (v95 * v94 >= 1)
    {
      v20 = __src;
      v21 = (__src + 8 * v95 * v94);
      do
      {
        *v20 = *v20 - v19;
        ++v20;
      }

      while (v20 < v21);
    }

    sub_100016068(&v92);
    v22 = *(a5 + 8);
    v23 = *(a5 + 20);
    v102 = 2;
    v103 = v23;
    v94 = 2;
    v95 = v23;
    v96 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v92 = &off_1000A2658;
    __src = v22;
    sub_100016068(&v100);
    v90 = 1;
    v91 = 0;
    v88 = &off_1000A1C58;
    __dst = 0;
    v86 = 1;
    v87 = 0;
    v84 = &off_1000A1C58;
    v85 = 0;
    if (*(a3 + 529))
    {
      sub_10002D334(a3 + 128, 0, &v100);
      sub_10001746C(&v88, v102, v103);
      memcpy(__dst, v101, 8 * v90 * HIDWORD(v90));
      sub_100016068(&v100);
      sub_10002D334(a3 + 128, 1, &v100);
    }

    else
    {
      sub_10002D334(a3 + 744, 0, &v100);
      sub_10001746C(&v88, v102, v103);
      memcpy(__dst, v101, 8 * v90 * HIDWORD(v90));
      sub_100016068(&v100);
      sub_10002D334(a3 + 744, 1, &v100);
    }

    sub_10001746C(&v84, v102, v103);
    memcpy(v85, v101, 8 * v86 * HIDWORD(v86));
    sub_100016068(&v100);
    sub_10002D478(&v97, v85, __dst, *(a3 + 148), &v92, 0, 1, 0, 0.0, 0);
    v35 = *a3;
    sub_10002D3F4(a5, 0, &v100);
    if (v103 * v102 >= 1)
    {
      v36 = v101;
      v37 = &v101[8 * v103 * v102];
      do
      {
        *v36 = v35 + *v36;
        ++v36;
      }

      while (v36 < v37);
    }

    sub_100016068(&v100);
    v38 = *(a3 + 24);
    sub_10002D3F4(a5, 0, &v100);
    if (v103 * v102 >= 1)
    {
      v39 = v101;
      v40 = &v101[8 * v103 * v102];
      do
      {
        *v39 = *v39 / v38;
        ++v39;
      }

      while (v39 < v40);
    }

    sub_100016068(&v100);
    v41 = *(a3 + 8);
    sub_10002D3F4(a5, 1, &v100);
    if (v103 * v102 >= 1)
    {
      v42 = v101;
      v43 = &v101[8 * v103 * v102];
      do
      {
        *v42 = v41 + *v42;
        ++v42;
      }

      while (v42 < v43);
    }

    sub_100016068(&v100);
    v44 = *(a3 + 24);
    sub_10002D3F4(a5, 1, &v100);
    if (v103 * v102 >= 1)
    {
      v45 = v101;
      v46 = &v101[8 * v103 * v102];
      do
      {
        *v45 = *v45 / v44;
        ++v45;
      }

      while (v45 < v46);
    }

    sub_100016068(&v100);
    sub_10002D3F4(a1, 0, &v79);
    v102 = 1;
    v103 = v99;
    v76 = 1;
    v77 = v99;
    v78 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v74 = &off_1000A1C58;
    v75 = v98;
    sub_100016068(&v100);
    sub_10001746C(&v74, v81, v82);
    memcpy(v75, v80, 8 * v76 * v77);
    sub_100016068(&v74);
    sub_100016068(&v79);
    v47 = *(a3 + 80);
    v102 = 1;
    v103 = v99;
    v81 = 1;
    v82 = v99;
    v83 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v79 = &off_1000A1C58;
    v80 = v98;
    sub_100016068(&v100);
    if (v82 * v81 >= 1)
    {
      v48 = v80;
      v49 = (v80 + 8 * v82 * v81);
      do
      {
        *v48 = v47 * *v48;
        ++v48;
      }

      while (v48 < v49);
    }

    sub_100016068(&v79);
    v50 = *(a3 + 56);
    v102 = 1;
    v103 = v99;
    v81 = 1;
    v82 = v99;
    v83 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v79 = &off_1000A1C58;
    v80 = v98;
    sub_100016068(&v100);
    if (v82 * v81 >= 1)
    {
      v51 = v80;
      v52 = (v80 + 8 * v82 * v81);
      do
      {
        *v51 = *v51 - v50;
        ++v51;
      }

      while (v51 < v52);
    }

    sub_100016068(&v79);
    sub_10002D3F4(a1, 1, &v79);
    v102 = 1;
    v103 = v99;
    v76 = 1;
    v77 = v99;
    v78 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v74 = &off_1000A1C58;
    v75 = &v98[8 * v99];
    sub_100016068(&v100);
    sub_10001746C(&v74, v81, v82);
    memcpy(v75, v80, 8 * v76 * v77);
    sub_100016068(&v74);
    sub_100016068(&v79);
    v53 = *(a3 + 80);
    v102 = 1;
    v103 = v99;
    v81 = 1;
    v82 = v99;
    v83 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v79 = &off_1000A1C58;
    v80 = &v98[8 * v99];
    sub_100016068(&v100);
    if (v82 * v81 >= 1)
    {
      v54 = v80;
      v55 = (v80 + 8 * v82 * v81);
      do
      {
        *v54 = v53 * *v54;
        ++v54;
      }

      while (v54 < v55);
    }

    sub_100016068(&v79);
    v56 = *(a3 + 64);
    v102 = 1;
    v103 = v99;
    v81 = 1;
    v82 = v99;
    v83 = 0;
    v100 = off_1000A1C28;
    v101 = 0;
    v104 = 0;
    v79 = &off_1000A1C58;
    v80 = &v98[8 * v99];
    sub_100016068(&v100);
    if (v82 * v81 >= 1)
    {
      v57 = v80;
      v58 = (v80 + 8 * v82 * v81);
      do
      {
        *v57 = *v57 - v56;
        ++v57;
      }

      while (v57 < v58);
    }

    sub_100016068(&v79);
    v59 = *(a4 + 8);
    v60 = *(a4 + 20);
    v81 = 2;
    v82 = v60;
    v102 = 2;
    v103 = v60;
    v104 = 0;
    v79 = off_1000A1C28;
    v80 = 0;
    v83 = 0;
    v100 = &off_1000A2658;
    v101 = v59;
    sub_100016068(&v79);
    if ((*(a3 + 529) & 1) == 0)
    {
      sub_10002D334(a3 + 128, 0, &v79);
      sub_10001746C(&v88, v81, v82);
      memcpy(__dst, v80, 8 * v90 * HIDWORD(v90));
      sub_100016068(&v79);
      sub_10002D334(a3 + 128, 1, &v79);
      sub_10001746C(&v84, v81, v82);
      memcpy(v85, v80, 8 * v86 * HIDWORD(v86));
      sub_100016068(&v79);
    }

    sub_10002D478(&v97, v85, __dst, *(a3 + 148), &v100, 0, 1, 0, 0.0, 0);
    v61 = *(a3 + 56);
    sub_10002D3F4(a4, 0, &v79);
    if (v82 * v81 >= 1)
    {
      v62 = v80;
      v63 = (v80 + 8 * v82 * v81);
      do
      {
        *v62 = v61 + *v62;
        ++v62;
      }

      while (v62 < v63);
    }

    sub_100016068(&v79);
    v64 = *(a3 + 80);
    sub_10002D3F4(a4, 0, &v79);
    if (v82 * v81 >= 1)
    {
      v65 = v80;
      v66 = (v80 + 8 * v82 * v81);
      do
      {
        *v65 = *v65 / v64;
        ++v65;
      }

      while (v65 < v66);
    }

    sub_100016068(&v79);
    v67 = *(a3 + 64);
    sub_10002D3F4(a4, 1, &v79);
    if (v82 * v81 >= 1)
    {
      v68 = v80;
      v69 = (v80 + 8 * v82 * v81);
      do
      {
        *v68 = v67 + *v68;
        ++v68;
      }

      while (v68 < v69);
    }

    sub_100016068(&v79);
    v70 = *(a3 + 80);
    sub_10002D3F4(a4, 1, &v79);
    if (v82 * v81 >= 1)
    {
      v71 = v80;
      v72 = (v80 + 8 * v82 * v81);
      do
      {
        *v71 = *v71 / v70;
        ++v71;
      }

      while (v71 < v72);
    }

    sub_100016068(&v79);
    sub_100016068(&v100);
    sub_100016068(&v84);
    sub_100016068(&v88);
    sub_100016068(&v92);
    sub_100016068(&v97);
  }

  else
  {
    v24 = *(a1 + 20);
    if (v24)
    {
      v25 = *(a1 + 16);
      if (!v25)
      {
        sub_10007C618();
      }

      v26 = *(a4 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = 0;
        v29 = 8 * *(a4 + 20);
        v30 = *(a2 + 16);
        v31 = *(a2 + 20);
        v32 = 8 * v24;
        while (v29 + v27)
        {
          *(*(a4 + 8) + 8 * v28) = *(*(a1 + 8) + 8 * v28);
          if (v25 == 1)
          {
            sub_10007C618();
          }

          if (v26 == 1)
          {
            sub_10007C618();
          }

          *(*(a4 + 8) + v29 + 8 * v28) = *(*(a1 + 8) + v32 + 8 * v28);
          if (!v30 || v28 >= v31)
          {
            sub_10007C618();
          }

          v33 = *(a5 + 16);
          if (!v33 || (v34 = *(a5 + 20), v28 >= v34))
          {
            sub_10007C618();
          }

          *(*(a5 + 8) + 8 * v28) = *(*(a2 + 8) + 8 * v28);
          if (v30 == 1)
          {
            sub_10007C618();
          }

          if (v33 == 1)
          {
            sub_10007C618();
          }

          *(*(a5 + 8) + 8 * v34 + 8 * v28) = *(*(a2 + 8) + 8 * v31 + 8 * v28);
          ++v28;
          v27 -= 8;
          if (!(v32 + v27))
          {
            return 0;
          }
        }
      }

      sub_10007C618();
    }
  }

  return 0;
}

void sub_10002D264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_100016068(&a15);
  sub_100016068(v27 - 128);
  sub_100016068(&a19);
  sub_100016068(&a23);
  sub_100016068(&a27);
  sub_100016068(v27 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D334@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(a1 + 8) + 8 * (v3 * a2);
  v6[0] = off_1000A1C28;
  v6[1] = v4;
  v7 = 1;
  v8 = v3;
  v9 = 0;
  *(a3 + 16) = 1;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  *a3 = &off_1000A1C58;
  *(a3 + 8) = v4;
  return sub_100016068(v6);
}

void sub_10002D3BC(uint64_t a1)
{
  sub_100016068(a1);

  operator delete();
}

uint64_t sub_10002D3F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(a1 + 8) + 8 * (v3 * a2);
  v7 = 1;
  v8 = v3;
  *(a3 + 16) = 1;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  v6[0] = off_1000A1C28;
  v6[1] = 0;
  v9 = 0;
  *a3 = &off_1000A1C58;
  *(a3 + 8) = v4;
  return sub_100016068(v6);
}

uint64_t sub_10002D478(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, int a7, int a8, double a9, char a10)
{
  if (*(a1 + 16) != 2)
  {
    sub_10007E98C();
  }

  if (a7)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  if (a7)
  {
    v16 = a3;
  }

  else
  {
    v16 = a2;
  }

  v63 = 1;
  v64 = a4;
  v65 = 0;
  v62[0] = &off_1000A1C58;
  v62[1] = v15;
  v59 = 1;
  v60 = a4;
  v61 = 0;
  v58[0] = &off_1000A1C58;
  v58[1] = v16;
  sub_100016114(&v54, 1, *(a1 + 20));
  v54 = &off_1000A1C58;
  sub_100016114(v53, 1, *(a1 + 20));
  v53[0] = &off_1000A1C58;
  v17 = v57;
  sub_10002D950(a1, a1, v49);
  if (a6)
  {
    if (v17 >= 1)
    {
      v18 = v51;
      if (v51)
      {
        v19 = 0;
        v20 = v52;
        v21 = v56;
        v22 = 8 * v52;
        while (v20 && v18 != 1 && v21 && v19 < v57)
        {
          v23 = sqrt(*(v50 + 8 * v19) + *(v50 + v22));
          if (v23 >= a9)
          {
            v23 = a9;
          }

          *(v55 + 8 * v19++) = v23;
          --v20;
          v22 += 8;
          if (v17 == v19)
          {
            goto LABEL_28;
          }
        }
      }

      goto LABEL_50;
    }
  }

  else if (v17 >= 1)
  {
    v24 = v51;
    if (v51)
    {
      v25 = 0;
      v26 = v52;
      v27 = v56;
      v28 = 8 * v52;
      while (v26 && v24 != 1 && v27 && v25 < v57)
      {
        *(v55 + 8 * v25) = sqrt(*(v50 + 8 * v25) + *(v50 + v28));
        ++v25;
        --v26;
        v28 += 8;
        if (v17 == v25)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_50:
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_28:
  if (a8)
  {
    sub_10002DAFC(v62, v58, &v54, v53);
  }

  else
  {
    sub_10002D9D8(v62, v58, &v54, 1, v53, a10);
  }

  sub_10002DA88(v53, &v54, &v41);
  v45 = off_1000A1C28;
  v46 = v42;
  v47 = v43;
  v48 = v44;
  v42 = 0;
  v44 = 0;
  sub_100016068(&v41);
  v29 = v57;
  if (v57 >= 1)
  {
    if (v56)
    {
      v30 = 0;
      v31 = v47;
      while (1)
      {
        if (*(v55 + 8 * v30) == 0.0)
        {
          if (!v31 || v30 >= HIDWORD(v47))
          {
            break;
          }

          *(v46 + 8 * v30) = 0x3FF0000000000000;
        }

        if (v29 == ++v30)
        {
          v32 = *(a1 + 16);
          if (v32)
          {
            v33 = 0;
            v34 = *(a1 + 20);
            v35 = v47;
            v36 = 119;
            while (1)
            {
              if (v34 == v33)
              {
                goto LABEL_53;
              }

              if (!v35 || v33 >= HIDWORD(v47))
              {
                goto LABEL_54;
              }

              v37 = *(a5 + 16);
              if (!v37)
              {
                break;
              }

              v38 = *(a5 + 20);
              if (v33 >= v38)
              {
                break;
              }

              *(*(a5 + 8) + 8 * v33) = *(*(a1 + 8) + 8 * v33) * *(v46 + 8 * v33);
              if (v32 == 1)
              {
                v40 = 125;
                goto LABEL_57;
              }

              if (v37 == 1)
              {
                v40 = 119;
LABEL_57:
                __assert_rtn("operator()", "Matrix.hpp", v40, "row < m_rows && col < m_cols");
              }

              *(*(a5 + 8) + 8 * v38 + 8 * v33) = *(v46 + 8 * v33) * *(*(a1 + 8) + 8 * v34 + 8 * v33);
              if (v29 == ++v33)
              {
                goto LABEL_49;
              }
            }

            v36 = 119;
          }

          else
          {
LABEL_53:
            v36 = 125;
          }

LABEL_54:
          __assert_rtn("operator()", "Matrix.hpp", v36, "row < m_rows && col < m_cols");
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_49:
  sub_100016068(&v45);
  sub_100016068(v49);
  sub_100016068(v53);
  sub_100016068(&v54);
  sub_100016068(v58);
  sub_100016068(v62);
  return 0;
}

void sub_10002D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_100016068(va);
  sub_100016068(va1);
  sub_100016068(va2);
  sub_100016068(v9 - 128);
  sub_100016068(v9 - 96);
  _Unwind_Resume(a1);
}

double sub_10002D950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v6 = *(a2 + 16), v6 != *(a1 + 16)))
  {
    sub_10007E9B8();
  }

  v7 = sub_100016114(a3, v6, v4);
  v9 = *(a1 + 20) * *(a1 + 16);
  if (v9 >= 1)
  {
    v10 = *(a1 + 8);
    v11 = &v10[v9];
    v12 = *(v7 + 8);
    v13 = *(a2 + 8);
    do
    {
      v14 = *v10++;
      v15 = v14;
      v16 = *v13++;
      result = v15 * v16;
      *v12++ = result;
    }

    while (v10 < v11);
  }

  return result;
}

uint64_t sub_10002D9D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      if (*(a3 + 20) <= 1u)
      {
        sub_10007EA10();
      }

      return sub_10002DFC4(a1, a2, a3, a5, a6);
    }

    else
    {
      if (a4 != 1)
      {
        sub_10007EA68();
      }

      if (!*(a3 + 20))
      {
        sub_10007EA3C();
      }

      return sub_10002DE08(a1, a2, a3, a5, a6);
    }
  }

  else
  {
    if (*(a3 + 20) <= 1u)
    {
      sub_10007E9E4();
    }

    return sub_10002E150(a1, a2, a3, a5, a6);
  }
}

uint64_t sub_10002DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10002E30C(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &off_1000A1C58;
  *(a3 + 8) = v4;
  *(a3 + 16) = 1;
  *(a3 + 20) = v5;
  return sub_100016068(&v7);
}

uint64_t sub_10002DAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    sub_10007EA94();
  }

  v5 = *(a3 + 20);
  if (v5 <= 1)
  {
    sub_10007EAC0();
  }

  sub_10001746C(a4, 1, v5);
  v9 = *(a3 + 20);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 20);
    v13 = *(*(a1 + 8) + 8 * (v12 - 1));
    do
    {
      v14 = *(*(a3 + 8) + 8 * v10);
      v18 = 0;
      if (v14 >= v13)
      {
        v15 = v12 - 2;
        v11 = v12 - 2;
      }

      else
      {
        sub_10002DC2C(a1, v11, &v18, v14);
        v12 = *(a1 + 20);
        v11 = v18;
        v9 = *(a3 + 20);
        v15 = v12 - 2;
      }

      if (v12 - 1 > v11)
      {
        v15 = v11;
      }

      v16 = *(a2 + 8);
      *(*(a4 + 8) + 8 * v10++) = *(v16 + 8 * v15) + (*(v16 + 8 * (v15 + 1)) - *(v16 + 8 * v15)) * ((v14 - *(*(a1 + 8) + 8 * v15)) / (*(*(a1 + 8) + 8 * (v15 + 1)) - *(*(a1 + 8) + 8 * v15)));
    }

    while (v10 < v9);
  }

  return 0;
}

uint64_t sub_10002DC2C(uint64_t a1, int a2, int *a3, double a4)
{
  v4 = *(a1 + 20);
  v5 = v4 - 1;
  if (v4 - 1 >= 100)
  {
    if (v5 >= a2)
    {
      while (1)
      {
        v9 = (v5 + a2) >> 1;
        v10 = *(*(a1 + 8) + 8 * v9);
        if (v10 == a4)
        {
          break;
        }

        if (v10 > a4)
        {
          v5 = v9 - 1;
        }

        else
        {
          a2 = v9 + 1;
        }

        if (a2 > v5)
        {
          goto LABEL_18;
        }
      }

      a2 = (v5 + a2) >> 1;
    }

LABEL_18:
    if (v5 >= a2)
    {
      v5 = a2;
    }

    v8 = v5 & ~(v5 >> 31);
  }

  else
  {
    *a3 = 0;
    if (v4 < 1)
    {
LABEL_6:
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      while (*(*(a1 + 8) + 8 * v6) <= a4)
      {
        if (v4 == ++v6)
        {
          goto LABEL_6;
        }
      }
    }

    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return 0;
}

double sub_10002DCD0(double a1, uint64_t a2, double *a3, double *a4, unsigned int a5, unsigned int a6)
{
  if (a5 >= 4)
  {
    v6 = a5 - 2;
    if (a5 - 2 <= a6)
    {
      v7 = a4[a5 - 3];
      v8 = a4[v6];
      v9 = a4[a5 - 1];
      v11 = a3[v6];
      v10 = -(v8 - v9 * 2.0);
      v12 = a1 - v11;
      v13 = a3[a5 - 1];
      goto LABEL_13;
    }

    if (a6)
    {
      v7 = a4[a6 - 1];
      v8 = a4[a6];
      v9 = a4[a6 + 1];
      v10 = a4[a6 + 2];
      v11 = a3[a6];
      v12 = a1 - v11;
      v13 = a3[a6 + 1];
LABEL_13:
      v14 = v12 / (v13 - v11);
      return v8 + v14 * ((v7 + v8 * -2.5 + v9 * 2.0 + v10 * -0.5) * v14) + v14 * (v14 * ((v8 - v9) * 1.5 + (v10 - v7) * 0.5)) * v14 + (v9 - v7) * 0.5 * v14;
    }

    v8 = *a4;
    v9 = a4[1];
    goto LABEL_11;
  }

  if (a5 != 3)
  {
    v8 = *a4;
    v9 = a4[1];
    v7 = -(v9 - *a4 * 2.0);
    v10 = -(*a4 - v9 * 2.0);
LABEL_12:
    v11 = *a3;
    v13 = a3[1];
    v12 = a1 - *a3;
    goto LABEL_13;
  }

  v8 = *a4;
  v9 = a4[1];
  if (!a6)
  {
LABEL_11:
    v7 = -(v9 - v8 * 2.0);
    v10 = a4[2];
    goto LABEL_12;
  }

  v10 = -(v9 - a4[2] * 2.0);
  v14 = (a1 - a3[1]) / (a3[1] - *a3);
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  return v8 + v14 * ((v7 + v8 * -2.5 + v9 * 2.0 + v10 * -0.5) * v14) + v14 * (v14 * ((v8 - v9) * 1.5 + (v10 - v7) * 0.5)) * v14 + (v9 - v7) * 0.5 * v14;
}

uint64_t sub_10002DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    sub_10007EAEC();
  }

  v10 = *(a3 + 20);
  sub_10001746C(a4, 1, *(a3 + 20));
  v11 = *(a1 + 20);
  v26 = 0;
  v12 = *(a3 + 8);
  v13 = *(a4 + 8);
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v15[v11 - 1];
  if (a5)
  {
    if (v10 >= 1)
    {
      v17 = *v15;
      v18 = v15[1] - *v15;
      do
      {
        v19 = *v12;
        v20 = v11 - 2;
        if (*v12 < v16)
        {
          v20 = ((v19 - v17) / v18);
          if (v20 + 1 < v11 && *(*(a1 + 8) + 8 * (v20 + 1)) <= v19)
          {
            ++v20;
          }
        }

        if (v11 - 1 <= v20)
        {
          v20 = v11 - 2;
        }

        *v13++ = *(v14 + 8 * v20) + (*(v14 + 8 * (v20 + 1)) - *(v14 + 8 * v20)) * ((v19 - v15[v20]) / (v15[v20 + 1] - v15[v20]));
        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v21 = v11 - 2;
    v22 = v11 - 1;
    do
    {
      v23 = *v12;
      if (*v12 >= v16)
      {
        v26 = v21;
        v24 = v21;
      }

      else
      {
        sub_10002DC2C(a1, 0, &v26, *v12);
        v24 = v26;
      }

      if (v22 <= v24)
      {
        v24 = v21;
      }

      *v13++ = *(v14 + 8 * v24) + (*(v14 + 8 * (v24 + 1)) - *(v14 + 8 * v24)) * ((v23 - v15[v24]) / (v15[v24 + 1] - v15[v24]));
      ++v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t sub_10002DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    sub_10007EAEC();
  }

  v10 = *(a3 + 20);
  sub_10001746C(a4, 1, *(a3 + 20));
  v11 = *(a1 + 20);
  v24 = 0;
  v12 = *(a3 + 8);
  v13 = *(a4 + 8);
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v15[v11 - 1];
  if (a5)
  {
    if (v10 >= 1)
    {
      v17 = *v15;
      v18 = v15[1] - *v15;
      do
      {
        v19 = *v12;
        v20 = v11 - 2;
        if (*v12 < v16)
        {
          v20 = ((v19 - v17) / v18);
          if (v20 + 1 < *(a1 + 20) && *(*(a1 + 8) + 8 * (v20 + 1)) <= v19)
          {
            ++v20;
          }
        }

        *v13++ = sub_10002DCD0(v19, &v25, v15, v14, v11, v20);
        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    do
    {
      v21 = *v12;
      if (*v12 >= v16)
      {
        v24 = v11 - 2;
        v22 = v11 - 2;
      }

      else
      {
        sub_10002DC2C(a1, 0, &v24, *v12);
        v22 = v24;
      }

      *v13++ = sub_10002DCD0(v21, &v25, v15, v14, v11, v22);
      ++v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t sub_10002E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    sub_10007EAEC();
  }

  v10 = *(a3 + 20);
  sub_10001746C(a4, 1, *(a3 + 20));
  v11 = *(a1 + 20);
  v28 = 0;
  v12 = *(a3 + 8);
  v13 = *(a4 + 8);
  v14 = *(a2 + 8);
  v15 = *(a1 + 8);
  v16 = v15[v11 - 1];
  if (a5)
  {
    if (v10 >= 1)
    {
      v17 = *v15;
      v18 = v15[1] - *v15;
      do
      {
        v19 = *v12;
        v20 = v11 - 2;
        if (*v12 < v16)
        {
          v20 = ((v19 - v17) / v18);
          if (v20 + 1 < v11 && *(*(a1 + 8) + 8 * (v20 + 1)) <= v19)
          {
            ++v20;
          }
        }

        v21 = (v11 - 1);
        if (v11 - 1 > v20)
        {
          v21 = v20 + 1;
          if (v19 - v15[v20] < v15[v21] - v19)
          {
            v21 = v20;
          }
        }

        *v13++ = *(v14 + 8 * v21);
        ++v12;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v22 = v11 - 2;
    v23 = (v11 - 1);
    do
    {
      v24 = *v12;
      if (*v12 >= v16)
      {
        v28 = v22;
        v25 = v22;
      }

      else
      {
        sub_10002DC2C(a1, 0, &v28, *v12);
        v25 = v28;
      }

      v26 = v23;
      if (v23 > v25)
      {
        v26 = v25 + 1;
        if (v24 - v15[v25] < v15[v26] - v24)
        {
          v26 = v25;
        }
      }

      *v13++ = *(v14 + 8 * v26);
      ++v12;
      --v10;
    }

    while (v10);
  }

  return 0;
}

double sub_10002E30C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v6 = *(a2 + 16), v6 != *(a1 + 16)))
  {
    sub_10007EB18();
  }

  v7 = sub_100016114(a3, v6, v4);
  v9 = *(a1 + 20) * *(a1 + 16);
  if (v9 >= 1)
  {
    v10 = *(a1 + 8);
    v11 = &v10[v9];
    v12 = *(v7 + 8);
    v13 = *(a2 + 8);
    do
    {
      v14 = *v10++;
      v15 = v14;
      v16 = *v13++;
      result = v15 / v16;
      *v12++ = result;
    }

    while (v10 < v11);
  }

  return result;
}

uint64_t sub_10002E394(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xBFF0000000000000;
  if (a2)
  {
    v3 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *(a1 + 16) = v3;
    if (v3)
    {
      **(a1 + 16) = objc_alloc_init(BrightnessSystemClient);
    }
  }

  return a1;
}

void *sub_10002E40C(void *a1)
{
  if (a1[1])
  {
    sub_10006C670();
    operator delete();
  }

  v2 = a1[2];
  if (v2)
  {
    if (*v2)
    {
      [*v2 dealloc];
      v2 = a1[2];
      *v2 = 0;
    }

    free(v2);
    a1[2] = 0;
  }

  *a1 = 0;
  return a1;
}

uint64_t sub_10002E488(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    operator new();
  }

  return 3758097106;
}

void sub_10002E530(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v31 = a4;
  v32 = a2;
  v7 = a6;
  v8 = 2 * a4 - 8;
  v9 = (2 * a2 + 2 * a6 * a3 + a1 + 6);
  v10 = 2 * a6;
  v11 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v9 - 3);
      v13 = *(v9 - 2);
      v14 = *(v9 - 1);
      v15 = *v9;
      v16 = *(v9 + v8 - 6);
      v17 = *(v9 + v8 - 4);
      v18 = *(v9 + v8 - 2);
      v19 = *(v9 + v8);
      *buf = 67110912;
      v36 = v12;
      v37 = 1024;
      v38 = v13;
      v39 = 1024;
      v40 = v14;
      v41 = 1024;
      v42 = v15;
      v43 = 1024;
      v44 = v16;
      v45 = 1024;
      v46 = v17;
      v47 = 1024;
      v48 = v18;
      v49 = 1024;
      v50 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%6d %6d %6d %6d ... %6d %6d %6d %6d]\n", buf, 0x32u);
    }

    v9 = (v9 + v10);
    --v11;
  }

  while (v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [...... ...... ...... ...... ... ...... ...... ...... ......]\n", buf, 2u);
  }

  v20 = 2 * v31 - 8;
  v21 = (2 * (a3 + a5 - 4) * v7 + 2 * v32 + a1 + 6);
  v22 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v21 - 3);
      v24 = *(v21 - 2);
      v25 = *(v21 - 1);
      v26 = *v21;
      v27 = *(v21 + v20 - 6);
      v28 = *(v21 + v20 - 4);
      v29 = *(v21 + v20 - 2);
      v30 = *(v21 + v20);
      *buf = 67110912;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v25;
      v41 = 1024;
      v42 = v26;
      v43 = 1024;
      v44 = v27;
      v45 = 1024;
      v46 = v28;
      v47 = 1024;
      v48 = v29;
      v49 = 1024;
      v50 = v30;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%6d %6d %6d %6d ... %6d %6d %6d %6d]\n", buf, 0x32u);
    }

    v21 += v7;
    --v22;
  }

  while (v22);
}

void sub_10002E7E4(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v7 = a2;
  v8 = a6;
  v9 = a4 - 4;
  v10 = (a2 + (a6 * a3) + a1 + 3);
  v11 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v14 = *(v10 - 1);
      v15 = *v10;
      v16 = v10[v9 - 3];
      v17 = v10[v9 - 2];
      v18 = v10[v9 - 1];
      v19 = v10[v9];
      *buf = 67110912;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v14;
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      v44 = 1024;
      v45 = v18;
      v46 = 1024;
      v47 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%3d %3d %3d %3d ... %3d %3d %3d %3d]\n", buf, 0x32u);
    }

    v10 += v8;
    --v11;
  }

  while (v11);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [... ... ... ... ... ... ... ... ...]\n", buf, 2u);
  }

  v20 = (v7 + (a3 + a5 - 4) * v8 + a1 + 3);
  v21 = 4;
  do
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *(v20 - 1);
      v25 = *v20;
      v26 = v20[v9 - 3];
      v27 = v20[v9 - 2];
      v28 = v20[v9 - 1];
      v29 = v20[v9];
      *buf = 67110912;
      v33 = v22;
      v34 = 1024;
      v35 = v23;
      v36 = 1024;
      v37 = v24;
      v38 = 1024;
      v39 = v25;
      v40 = 1024;
      v41 = v26;
      v42 = 1024;
      v43 = v27;
      v44 = 1024;
      v45 = v28;
      v46 = 1024;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BlurM: [%3d %3d %3d %3d ... %3d %3d %3d %3d]\n", buf, 0x32u);
    }

    v20 += v8;
    --v21;
  }

  while (v21);
}

uint64_t sub_10002EA6C(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  sub_100034B88(&v10);
  v9[0] = 0;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = &v10;
  v7 = 48;
  pthread_attr_init(&v11);
  pthread_attr_setschedparam(&v11, &v7);
  pthread_attr_setdetachstate(&v11, 1);
  pthread_create(&v8, &v11, sub_10002EB78, v9);
  pthread_attr_destroy(&v11);
  sub_100034BCC(&v10);
  *a1 = v9[0];
  sub_100034BC4(&v10);
  return 0;
}

void sub_10002EB78(uint64_t a1)
{
  pthread_setname_np("H16ISPServicesThread");
  j__pthread_mutex_lock(*(a1 + 24));
  operator new();
}

void sub_10002EC34(uint64_t a1)
{
  v2 = CFRetain(*(a1 + 48));
  CFRunLoopStop(v2);
  v3 = 0;
  pthread_join(*(a1 + 64), &v3);
  sub_100025B60(a1);
  operator delete();
}

uint64_t sub_10002ECA4(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyValue(a1, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (!IntValue)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
        if (!CStringPtr || (IntValue = strtol(CStringPtr, 0, 0), !IntValue))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"true", 1uLL))
          {
            IntValue = 1;
            if (CFStringCompare(v5, @"yes", 1uLL))
            {
              if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
              {
                IntValue = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, kCFBooleanTrue);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

unsigned int *sub_10002EE54(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 20);
    do
    {
      v5 = *v4;
      if (v4 + v5 > a1 + a2)
      {
        break;
      }

      if (*(v4 + 4) == a3)
      {
        return v4 + 1;
      }

      v4 = (v4 + (v5 + 4));
      --v3;
    }

    while (v3);
  }

  return 0;
}

CFRunLoopSourceRef sub_10002EEA0(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = CFMessagePortCreateRunLoopSource(0, *(a1 + 8), 0);
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10002EED8(thread_act_t a1, int a2)
{
  v8 = 0;
  v4 = getpid();
  if (proc_pidinfo(v4, 2, 0, buffer, 232) <= 0)
  {
    fwrite("H16ISPSetMachThreadPriority - proc_pidinfo() failed\n", 0x34uLL, 1uLL, __stderrp);
    return 0xFFFFFFFFLL;
  }

  else
  {
    policy_info = a2 - v11;
    v5 = thread_policy_set(a1, 3u, &policy_info, 1u);
    if (v5)
    {
      v6 = v5;
      fprintf(__stderrp, "H16ISPSetMachThreadPriority - thread_policy_set(...,THREAD_PRECEDENCE_POLICY,...) failed, err=%d\n", v5);
    }

    else
    {
      v6 = thread_policy_set(a1, 1u, &v8, 1u);
      if (v6)
      {
        fprintf(__stderrp, "H16ISPSetMachThreadPriority - thread_policy_set(...,THREAD_EXTENDED_POLICY,...) failed, err=%d\n", v6);
      }
    }
  }

  return v6;
}

void sub_10002F008(const __CFString *a1, uint64_t a2, void *a3)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr || (CStringPtr = buffer, CFStringGetCString(a1, buffer, 100, 0x8000100u)))
  {
    if (a2)
    {
      v7 = sub_10000ADF8(a2);
      if (v7)
      {
        v8 = v7;
        xpc_dictionary_set_value(a3, CStringPtr, v7);
        xpc_release(v8);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10007EB70(CStringPtr);
    }
  }
}

void sub_10002F0F0(uint64_t a1, void *a2)
{
  v3 = sub_10000ADF8(a1);
  xpc_array_append_value(a2, v3);

  xpc_release(v3);
}

uint64_t sub_10002F138(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_10000B2D0(a3);
  if (v5)
  {
    v6 = v5;
    v7 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
    CFDictionarySetValue(*(a1 + 32), v7, v6);
    CFRelease(v7);
    CFRelease(v6);
  }

  return 1;
}

uint64_t sub_10002F1B8(uint64_t a1, CFIndex a2, uint64_t a3)
{
  v5 = sub_10000B2D0(a3);
  CFArraySetValueAtIndex(*(a1 + 32), a2, v5);
  CFRelease(v5);
  return 1;
}

void *sub_10002F20C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100023280();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_10002F2B0(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  sub_100016114(a3, 3, *(a1 + 20));
  *a3 = &off_1000A1DE0;
  if (*(a1 + 20))
  {
    v6 = 0;
    v7 = a2->f64[0];
    v8 = a2[1];
    v8.f64[1] = a2[2].f64[1];
    v9 = v8;
    do
    {
      sub_1000280A4(a1, v6, &v12);
      v10 = vmulq_n_f64(vsubq_f64(v12, v9), 1.0 / (v7 * v13));
      v11 = 0x3FF0000000000000;
      sub_10002F3B0(a3, v6++, &v10);
    }

    while (v6 < *(a1 + 20));
  }
}

double sub_10002F3B0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!*(a1 + 16) || (v3 = *(a1 + 20), v3 <= a2))
  {
    sub_10007C618();
  }

  v4 = 0;
  v5 = (*(a1 + 8) + 8 * a2);
  v6 = 8 * v3;
  do
  {
    result = *(a3 + v4);
    *v5 = result;
    v4 += 8;
    v5 = (v5 + v6);
  }

  while (v4 != 24);
  return result;
}

uint64_t sub_10002F404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X2>, float64x2_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v43 = sub_100016114(a8, 3, *(a1 + 20));
  *v43 = &off_1000A1DE0;
  v66 = 3;
  v67 = 0;
  v64 = &off_1000A1DE0;
  v65 = 0;
  v62 = 3;
  v63 = 0;
  v60 = &off_1000A1DE0;
  v61 = 0;
  if (a7)
  {
    sub_10002F2B0(a1, a3, &v57);
    if (v67 == 1 && v65)
    {
      operator delete[]();
    }

    v66 = v58;
    v65 = *(&v57 + 1);
    v67 = v59;
    v59 = 0;
    sub_100016068(&v57);
    sub_10002F2B0(a2, a4, &v55);
    sub_100019250(a5, &v55, &v57);
    if (v63 == 1 && v61)
    {
      operator delete[]();
    }

    v62 = v58;
    v61 = *(&v57 + 1);
    v63 = v59;
    v59 = 0;
    sub_100016068(&v57);
    v15 = &v55;
  }

  else
  {
    v66 = *(a1 + 16);
    v65 = *(a1 + 8);
    v67 = 0;
    sub_100019250(a5, a2, &v57);
    if (v63 == 1 && v61)
    {
      operator delete[]();
    }

    v62 = v58;
    v61 = *(&v57 + 1);
    v63 = v59;
    v59 = 0;
    v15 = &v57;
  }

  sub_100016068(v15);
  if (HIDWORD(v66))
  {
    v16 = 0;
    do
    {
      sub_1000280A4(&v64, v16, v52);
      v44 = v16;
      sub_1000280A4(&v60, v16, v51);
      v17 = 0;
      v49 = 0uLL;
      v50 = 0;
      do
      {
        *(&v49 + v17 * 8) = -*&v51[v17];
        v18 = v17++ >= 2;
      }

      while (!v18);
      v19 = 0;
      v55 = v49;
      v56 = v50;
      v57 = v49;
      v58 = v50;
      v20 = 0.0;
      do
      {
        v20 = v20 + *(&v57 + v19) * *(&v57 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      v21 = 0;
      v22 = sqrt(v20);
      do
      {
        *(&v57 + v21) = *(&v57 + v21) / v22;
        v21 += 8;
      }

      while (v21 != 24);
      v23 = 0;
      v24 = 0.0;
      do
      {
        v24 = v24 + *(&v57 + v23 * 8) * *&v52[v23];
        ++v23;
      }

      while (v23 != 3);
      v25 = 0;
      v49 = 0uLL;
      v50 = 0;
      do
      {
        *(&v49 + v25) = *(&v57 + v25) * -v24;
        v18 = v25 >= 0x10;
        v25 += 8;
      }

      while (!v18);
      v26 = 0;
      v53 = v49;
      v54 = v50;
      do
      {
        *(&v53 + v26 * 8) = *&v52[v26] + *(&v53 + v26 * 8);
        ++v26;
      }

      while (v26 != 3);
      v27 = 0;
      v28 = 0.0;
      do
      {
        v28 = v28 + *(&v53 + v27) * *(a6 + v27);
        v27 += 8;
      }

      while (v27 != 24);
      v29 = 0;
      v30 = 0.0;
      do
      {
        v30 = v30 + *(&v53 + v29 * 8) * *&v52[v29];
        ++v29;
      }

      while (v29 != 3);
      v31 = 0;
      v32 = 0.0;
      do
      {
        v32 = v32 + *(&v57 + v31) * *(a6 + v31);
        v31 += 8;
      }

      while (v31 != 24);
      v33 = 0;
      v34 = 0.0;
      do
      {
        v34 = v34 + *(&v57 + v33) * *(&v55 + v33);
        v33 += 8;
      }

      while (v33 != 24);
      v35 = 0;
      memset(v46, 0, sizeof(v46));
      v36 = v28 / v30;
      do
      {
        *&v46[v35] = v36 * *&v52[v35];
        v18 = v35++ >= 2;
      }

      while (!v18);
      v37 = 0;
      v38 = (v32 - v36 * v24) / v34;
      memset(v45, 0, sizeof(v45));
      do
      {
        *&v45[v37] = v38 * *&v51[v37];
        v18 = v37++ >= 2;
      }

      while (!v18);
      v39 = 0;
      memset(v47, 0, sizeof(v47));
      do
      {
        *&v47[v39] = *&v46[v39] + *&v45[v39];
        ++v39;
      }

      while (v39 != 3);
      v40 = 0;
      memset(v48, 0, sizeof(v48));
      do
      {
        *&v48[v40] = *&v47[v40] + *(a6 + v40 * 8);
        ++v40;
      }

      while (v40 != 3);
      v41 = 0;
      v49 = 0uLL;
      v50 = 0;
      do
      {
        *(&v49 + v41 * 8) = *&v48[v41] * 0.5;
        v18 = v41++ >= 2;
      }

      while (!v18);
      sub_10002F3B0(v43, v16++, &v49);
    }

    while (v44 + 1 < HIDWORD(v66));
  }

  sub_100016068(&v60);
  return sub_100016068(&v64);
}

void sub_10002F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100016068(&a37);
  sub_100016068(v37 - 176);
  sub_100016068(v37 - 144);
  sub_100016068(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F968(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int64x2_t *a9)
{
  result = sub_100024E3C(a6, a7, a8, a1, a2, a3, a4);
  if (result)
  {
    *a9 = vdupq_n_s64(0x7FF8000000000000uLL);
    v12 = 0x7FF8000000000000;
  }

  else
  {
    a9->i64[0] = a6[9];
    a9->i64[1] = a6[10];
    v12 = a6[11];
  }

  a9[1].i64[0] = v12;
  return result;
}

uint64_t sub_10002F9DC(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = *(a1 + 20);
  v16 = v15 / a3;
  if (v16 <= 1.0)
  {
    sub_10001746C(a6, *(a1 + 16), v15);
    memcpy(*(a6 + 8), *(a1 + 8), 8 * *(a6 + 16) * *(a6 + 20));
    sub_10001746C(a7, *(a2 + 16), *(a2 + 20));
    memcpy(*(a7 + 8), *(a2 + 8), 8 * *(a7 + 16) * *(a7 + 20));
    puts("Bad configuration");
  }

  else
  {
    sub_1000280A4(a1, 0, v30);
    sub_10002F3B0(a8, 0, v30);
    sub_1000280A4(a2, 0, v30);
    sub_10002F3B0(a9, 0, v30);
    if (a3)
    {
      v26 = a8;
      v20 = 0;
      v28 = 0;
      v21 = 1;
      v27 = a3;
      do
      {
        v29 = v21;
        v22 = llround(v16 * v21);
        v23 = llround(v16 * (v21 - 1)) + 1;
        if (v23 < v22)
        {
          do
          {
            sub_1000280A4(a1, v23, v30);
            sub_10002F3B0(a6, v20, v30);
            sub_1000280A4(a2, v23, v30);
            sub_10002F3B0(a7, v20, v30);
            if (a4)
            {
              if (*(a5 + 20) * *(a5 + 16) <= v23)
              {
                sub_10007EBF0();
              }

              if (*(a10 + 20) * *(a10 + 16) <= v20)
              {
                sub_10007EC1C();
              }

              *(*(a10 + 8) + v20) = *(*(a5 + 8) + v23);
            }

            ++v20;
            ++v23;
          }

          while (v22 != v23);
        }

        a3 = v27;
        if (v29 == v27)
        {
          break;
        }

        sub_1000280A4(a1, v22, v30);
        sub_10002F3B0(v26, v28 + 1, v30);
        sub_1000280A4(a2, v22, v30);
        ++v28;
        a3 = v27;
        sub_10002F3B0(a9, v28, v30);
        v21 = v29 + 1;
      }

      while (v29 + 1 <= v27);
      v24 = v28 + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v24 != a3)
    {
      sub_10007EC48();
    }

    if (*(a1 + 20) - a3 != *(a6 + 20))
    {
      sub_10007EC74();
    }
  }

  return 0;
}

void sub_10002FC80(int *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007ECCC();
  }

  if (!a2)
  {
    sub_10007ECA0();
  }

  v4 = *a1;
  if (*a1 == 1)
  {
    if (a1[12])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[3];
        v6 = a1[5];
        v7 = a1[6];
        v8 = a1[7];
        v9 = a1[8];
        v11 = a1[9];
        v10 = a1[10];
        *buf = 67110656;
        LODWORD(v119) = v5;
        WORD2(v119) = 1024;
        *(&v119 + 6) = v6;
        WORD5(v119) = 1024;
        HIDWORD(v119) = v7;
        LOWORD(v120) = 1024;
        *(&v120 + 2) = v10;
        HIWORD(v120) = 1024;
        *v121 = v8;
        *&v121[4] = 1024;
        *&v121[6] = v9;
        v122 = 1024;
        LODWORD(v123) = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:#%08d inp: (%4d x %4d) stride = %d, scale = %d x %d, total = %d\n", buf, 0x2Cu);
      }

      for (i = 0; i != 16; ++i)
      {
        v13 = a1[i + 19];
        if (v13 != -1 && (a1[12] & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&v119 = i;
          WORD4(v119) = 1024;
          *(&v119 + 10) = v13;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:tuning[%2zu] = %d\n", buf, 0x12u);
        }
      }
    }

    v14 = a1[5];
    if (v14)
    {
      a1[2] = 2;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:ERR: CSPD::SPD pContext->meta.geom.sizeX is not expected as an odd number!!!\n", buf, 2u);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v110 = a1[3];
        v111 = a1[5];
        v112 = a1[6];
        v113 = a1[7];
        v114 = a1[8];
        v116 = a1[9];
        v115 = a1[10];
        *buf = 67110656;
        LODWORD(v119) = v110;
        WORD2(v119) = 1024;
        *(&v119 + 6) = v111;
        WORD5(v119) = 1024;
        HIDWORD(v119) = v112;
        LOWORD(v120) = 1024;
        *(&v120 + 2) = v115;
        HIWORD(v120) = 1024;
        *v121 = v113;
        *&v121[4] = 1024;
        *&v121[6] = v114;
        v122 = 1024;
        LODWORD(v123) = v116;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:ERR: #%d SPD(%d,%d) stride=%d scaleXY(%d,%d) totSize=%d\n", buf, 0x2Cu);
      }
    }

    else
    {
      v15 = a1[6];
      v16 = (32 * v15);
      v17 = a1[10];
      v18 = a1[11];
      if ((a1[12] & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        LODWORD(v119) = (2 * v18) | 1;
        WORD2(v119) = 2048;
        *(&v119 + 6) = 0;
        HIWORD(v119) = 2048;
        v120 = 0;
        *v121 = 2048;
        *&v121[2] = v14;
        v122 = 2048;
        v123 = v15;
        v124 = 2048;
        v125 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:SPD: k=%d, (x y)=(%zu %zu), (w h)=(%zu %zu), strideIn=%zu\n", buf, 0x3Au);
      }

      v19 = 2 * v17;
      v20 = &a1[v16];
      v117 = v15;
      v21 = 0;
      if (v14 >= 0x11)
      {
        v22 = (v18 + 1);
        v23 = (v18 + v22) << 6;
        v24 = v15 - 1;
        v25 = ~v18 + v15;
        v26 = v15 - 2;
        v27 = (v22 << 6) - (v18 << 6) + 128;
        v28 = v23 + 4 * v16 + 144;
        v29 = 16;
        v30 = (v22 << 6) + 4 * v16 - (v18 << 6);
        do
        {
          v31 = v21 + (v21 >> 1);
          v32 = (a2 + v31);
          v126 = vld3_s8(v32);
          v33 = (a2 + v17 + v31);
          v127 = vld3_s8(v33);
          v21 = v29;
          v34 = vmovl_u8(v126.val[1]);
          *v126.val[1].i8 = vmovl_u8(v126.val[2]);
          v35 = vshrq_n_u16(*v126.val[1].i8, 4uLL);
          *v126.val[1].i8 = vsliq_n_s16(*v126.val[1].i8, vmovl_u8(v126.val[0]), 4uLL);
          v36 = vsliq_n_s16(v35, v34, 4uLL);
          v37 = vmovl_u16(v126.val[1]);
          v38 = vmovl_high_u16(*v126.val[1].i8);
          v39 = vmovl_u16(*v36.i8);
          v40 = vmovl_high_u16(v36);
          *(a1 + 9) = v37;
          *(a1 + 10) = v38;
          *(a1 + 11) = v39;
          *(a1 + 12) = v40;
          v41 = vmovl_u8(v127.val[1]);
          *v127.val[1].i8 = vmovl_u8(v127.val[2]);
          v42 = vshrq_n_u16(*v127.val[1].i8, 4uLL);
          *v127.val[1].i8 = vsliq_n_s16(*v127.val[1].i8, vmovl_u8(v127.val[0]), 4uLL);
          v43 = vsliq_n_s16(v42, v41, 4uLL);
          v44 = vmovl_u16(v127.val[1]);
          v45 = vmovl_high_u16(*v127.val[1].i8);
          v46 = vmovl_u16(*v43.i8);
          v47 = vmovl_high_u16(v43);
          v20[9] = v44;
          v20[10] = v45;
          v48 = &a1[v16 + 64];
          v20[11] = v46;
          v20[12] = v47;
          v49 = (a1 + 64);
          v50 = v32;
          v51 = v26;
          if (v24 >= 2)
          {
            do
            {
              v52 = &v50[v19];
              v129 = vld3_s8(v52);
              v53 = &v50[3 * v17];
              v130 = vld3_s8(v53);
              v54 = vmovl_u8(v129.val[0]);
              v55 = vmovl_u8(v129.val[1]);
              *v129.val[0].i8 = vmovl_u8(v129.val[2]);
              *v129.val[1].i8 = vshrq_n_u16(*v129.val[0].i8, 4uLL);
              *v129.val[0].i8 = vsliq_n_s16(*v129.val[0].i8, v54, 4uLL);
              *v129.val[1].i8 = vsliq_n_s16(*v129.val[1].i8, v55, 4uLL);
              v37 = vaddw_u16(v37, v129.val[0]);
              v38 = vaddw_high_u16(v38, *v129.val[0].i8);
              v39 = vaddw_u16(v39, v129.val[1]);
              v40 = vaddw_high_u16(v40, *v129.val[1].i8);
              v49[-3] = v37;
              v49[-2] = v38;
              v49[-1] = v39;
              *v49 = v40;
              *v129.val[0].i8 = vmovl_u8(v130.val[0]);
              *v129.val[2].i8 = vmovl_u8(v130.val[2]);
              *v130.val[0].i8 = vshrq_n_u16(*v129.val[2].i8, 4uLL);
              *v129.val[2].i8 = vsliq_n_s16(*v129.val[2].i8, *v129.val[0].i8, 4uLL);
              *v130.val[0].i8 = vsliq_n_s16(*v130.val[0].i8, vmovl_u8(v130.val[1]), 4uLL);
              v44 = vaddw_u16(v44, v129.val[2]);
              v45 = vaddw_high_u16(v45, *v129.val[2].i8);
              v46 = vaddw_u16(v46, v130.val[0]);
              v47 = vaddw_high_u16(v47, *v130.val[0].i8);
              v48[-3] = v44;
              v48[-2] = v45;
              v48[-1] = v46;
              *v48 = v47;
              v49 += 4;
              v48 += 4;
              v50 = v52;
              --v51;
            }

            while (v51);
          }

          v56 = a1;
          v57 = (v18 + 1);
          if (v25 > v22)
          {
            do
            {
              v58 = vmovn_s32(vsubq_s32(*(v56 + v23 + 160), *(v56 + v27 - 32)));
              v59 = vmovn_s32(vsubq_s32(*(v56 + v23 + 144), *(v56 + v27 - 48)));
              v128.val[0] = vuzp1_s8(vshr_n_u16(v59, 7uLL), vshr_n_u16(v58, 7uLL));
              v60 = vmovn_s32(vsubq_s32(*(v56 + v23 + 192), *(v56 + v27)));
              v61 = vmovn_s32(vsubq_s32(*(v56 + v23 + 176), *(v56 + v27 - 16)));
              v128.val[1] = vuzp1_s8(vshr_n_u16(v61, 7uLL), vshr_n_u16(v60, 7uLL));
              v128.val[2] = vsli_n_s8(vuzp1_s8(vshr_n_u16(v59, 3uLL), vshr_n_u16(v58, 3uLL)), vuzp1_s8(vshr_n_u16(v61, 3uLL), vshr_n_u16(v60, 3uLL)), 4uLL);
              v62 = &v32[2 * v17 * v22];
              vst3_s8(v62, v128);
              v63 = vmovn_s32(vsubq_s32(*(v56 + v28 + 16), *(v56 + v30 + 96)));
              v64 = vmovn_s32(vsubq_s32(*(v56 + v28), *(v56 + v30 + 80)));
              v128.val[0] = vuzp1_s8(vshr_n_u16(v64, 7uLL), vshr_n_u16(v63, 7uLL));
              v65 = vmovn_s32(vsubq_s32(*(v56 + v28 + 48), *(v56 + v30 + 128)));
              v66 = vmovn_s32(vsubq_s32(*(v56 + v28 + 32), *(v56 + v30 + 112)));
              v128.val[1] = vuzp1_s8(vshr_n_u16(v66, 7uLL), vshr_n_u16(v65, 7uLL));
              v128.val[2] = vsli_n_s8(vuzp1_s8(vshr_n_u16(v64, 3uLL), vshr_n_u16(v63, 3uLL)), vuzp1_s8(vshr_n_u16(v66, 3uLL), vshr_n_u16(v65, 3uLL)), 4uLL);
              v67 = &v32[((2 * v22) | 1) * v17];
              vst3_s8(v67, v128);
              ++v57;
              v32 += v19;
              v56 += 16;
            }

            while (v57 < v25);
          }

          v29 = v21 + 16;
        }

        while (v21 + 16 < v14);
      }

      if (v21 < v14)
      {
        v68 = (a2 + v21 + (v21 >> 1));
        v69 = (v18 + 1);
        v70 = &a1[v16 + 39];
        v71 = ~v18 + v117;
        v72 = 4 * v16 + 8 * v69 - 8 * v18 + 140;
        v73 = 8 * (v18 + v69) + 148;
        v74 = 8 * v69 - 8 * v18 + 136;
        v75 = v73 + 4 * v16;
        do
        {
          v76 = v68[2];
          v77 = v68[1];
          a1[36] = v76 & 0xF | (16 * *v68);
          a1[37] = (v76 >> 4) | (16 * v77);
          v78 = v68[v17 + 2];
          v79 = v78 & 0xF | (16 * v68[v17]);
          v80 = (v78 >> 4) | (16 * v68[v17 + 1]);
          v81 = a1 + 39;
          v20[9].i32[0] = v79;
          v20[9].i32[1] = v80;
          v82 = v70;
          v83 = 2 * v17;
          v84 = v117 - 2;
          if ((v117 - 1) >= 2)
          {
            do
            {
              v85 = v68[v83 + 2];
              v86 = v85 & 0xF | (16 * v68[v83]);
              v87 = ((v85 >> 4) | (16 * v68[v83 + 1])) + *(v81 - 2);
              *(v81 - 1) = v86 + *(v81 - 3);
              *v81 = v87;
              v88 = &v68[v83 + v17];
              v89 = v88[2];
              v90 = v89 & 0xF | (16 * *v88);
              LODWORD(v88) = ((v89 >> 4) | (16 * v88[1])) + *(v82 - 2);
              *(v82 - 1) = v90 + *(v82 - 3);
              *v82 = v88;
              v83 += v19;
              v82 += 2;
              v81 += 2;
              --v84;
            }

            while (v84);
          }

          v91 = v75;
          v92 = v74;
          v93 = v73;
          v94 = v72;
          v95 = v17 * (2 * v69);
          for (j = v69; j < v71; v91 += 8)
          {
            v97 = &v68[v95];
            v98 = *(a1 + v93 - 4) - *(a1 + v92);
            v99 = *(a1 + v93) - *(a1 + v92 + 4);
            *v97 = v98 >> 7;
            v97[1] = v99 >> 7;
            v97[2] = (2 * v99) & 0xF0 | (v98 >> 3) & 0xF;
            v100 = *(a1 + v91 - 4) - *(a1 + v94 - 4);
            v101 = *(a1 + v91) - *(a1 + v94);
            v102 = &v68[v95 + v17];
            *v102 = v100 >> 7;
            ++j;
            v95 += v19;
            v94 += 8;
            v102[1] = v101 >> 7;
            v102[2] = (2 * v101) & 0xF0 | (v100 >> 3) & 0xF;
            v93 += 8;
            v92 += 8;
          }

          v68 += 3;
          v21 += 2;
        }

        while (v21 < v14);
      }

      *(a1 + 13) = *(a1 + 5);
      *(a1 + 17) = *(a1 + 9);
      if ((a1[12] & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v103 = a1[3];
        v104 = a1[13];
        v105 = a1[14];
        v106 = a1[15];
        v107 = a1[16];
        v109 = a1[17];
        v108 = a1[18];
        *buf = 67110656;
        LODWORD(v119) = v103;
        WORD2(v119) = 1024;
        *(&v119 + 6) = v104;
        WORD5(v119) = 1024;
        HIDWORD(v119) = v105;
        LOWORD(v120) = 1024;
        *(&v120 + 2) = v108;
        HIWORD(v120) = 1024;
        *v121 = v106;
        *&v121[4] = 1024;
        *&v121[6] = v107;
        v122 = 1024;
        LODWORD(v123) = v109;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:#%08d out: (%4d x %4d) stride = %d, scale = %d x %d, total = %d\n", buf, 0x2Cu);
      }

      a1[2] = 0;
    }
  }

  else
  {
    if ((a1[12] & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      LODWORD(v119) = 1;
      WORD2(v119) = 1024;
      *(&v119 + 6) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPD:incompatible context version (expected %d, got %d)\n", buf, 0xEu);
    }

    a1[2] = 1;
  }
}

void sub_100030838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_100016068(&a11);
  sub_100016068(&a15);
  sub_100034838(&a32);
  _Unwind_Resume(a1);
}

void sub_100030870(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  if (a5 != a1)
  {
    v7 = *a5;
    *(a1 + 16) = *(a5 + 2);
    *a1 = v7;
  }

  sub_1000317F0(a4, &v10);
  v8 = a3[3];
  v14 = a3[2];
  v15 = v8;
  v16 = *(a3 + 8);
  v9 = a3[1];
  v12 = *a3;
  v13 = v9;
  sub_10003487C(&v11, a2, 0, -1);
}

void sub_1000316C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  sub_100016068(&a46);
  sub_100016068(&a50);
  sub_100016068(&a54);
  sub_100016068(&a58);
  sub_100016068(&a62);
  sub_100016068(&STACK[0x200]);
  sub_100043A74(&a66);
  sub_100016068(a15);
  _Unwind_Resume(a1);
}

void sub_1000317F0(uint64_t a1@<X0>, double *a2@<X8>)
{
  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  v4 = (*a1 + 0.0 + *(a1 + 32) + *(a1 + 64) + -1.0) * 0.5;
  v5 = 1.0;
  if (v4 <= 1.0)
  {
    v5 = (*a1 + 0.0 + *(a1 + 32) + *(a1 + 64) + -1.0) * 0.5;
    if (v4 < -1.0)
    {
      v5 = -1.0;
    }
  }

  v6 = acos(v5);
  v7 = sin(v6);
  v9 = v7 + v7;
  v10 = 0;
  if (v9 <= 0.0000001)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    v39 = 0.0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    memset(v34, 0, sizeof(v34));
    v31 = 0;
    v15 = v30 + 1;
    v16 = vdupq_n_s64(2uLL);
    v8.i64[0] = 0;
    memset(v30, 0, sizeof(v30));
    v17 = vdupq_n_s64(3uLL);
    do
    {
      v18 = v15;
      v19 = 4;
      v20 = xmmword_10008B050;
      do
      {
        if (vmovn_s64(vcgtq_u64(v17, v20)).u8[0])
        {
          if (v10 + v19 == 4)
          {
            v21 = 1.0;
          }

          else
          {
            v21 = 0.0;
          }

          *(v18 - 1) = v21;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v20)).i32[1])
        {
          if (v10 + v19 == 5)
          {
            v22 = 1.0;
          }

          else
          {
            v22 = 0.0;
          }

          *v18 = v22;
        }

        v20 = vaddq_s64(v20, v16);
        v18 += 2;
        v19 -= 2;
      }

      while (v19);
      ++v10;
      v15 += 3;
    }

    while (v10 != 3);
    v23 = 0;
    v24 = 0;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    do
    {
      v25 = v23;
      v26 = 3;
      do
      {
        v27 = *(v30 + v25);
        v28 = *(a1 + v25) - v27;
        *(v32 + v25) = v28;
        v25 += 8;
        --v26;
      }

      while (v26);
      ++v24;
      v23 += 24;
    }

    while (v24 != 3);
    sub_100034468(v32, v40, v34, &v35, v28, v27, v8);
    v29 = v6 * *(&v37 + 1);
    *a2 = v6 * *&v36;
    a2[1] = v29;
    a2[2] = v6 * v39;
  }

  else
  {
    v11 = *(a1 + 56);
    v11.f64[1] = *(a1 + 16);
    *a2 = vdivq_f64(vsubq_f64(v11, *(a1 + 40)), vdupq_lane_s64(*&v9, 0));
    a2[2] = (*(a1 + 24) - *(a1 + 8)) / v9;
    v12 = 0.0;
    do
    {
      v12 = v12 + *(a2 + v10) * *(a2 + v10);
      v10 += 8;
    }

    while (v10 != 24);
    v13 = 0;
    v14 = v6 / sqrt(v12);
    do
    {
      a2[v13] = v14 * a2[v13];
      ++v13;
    }

    while (v13 != 3);
  }
}

uint64_t sub_100031A64@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = 1;
  sub_100016114(a3, 1, 4 * *(a2 + 29));
  *a3 = &off_1000A1C58;
  v67 = *a2;
  v68 = *(a2 + 2);
  sub_100033FA4(&v67, &v69);
  v7 = &v69 + 8;
  v8 = v70 + 8;
  do
  {
    v9 = 0;
    v10 = v7;
    do
    {
      v11 = *&v8[8 * v9];
      *&v8[8 * v9] = *v10;
      *v10 = v11;
      v10 += 3;
      ++v9;
    }

    while (v6 != v9);
    ++v6;
    v7 += 8;
    v8 += 24;
  }

  while (v6 != 3);
  v72[2] = v70[1];
  v72[3] = v70[2];
  v73 = v71;
  v72[0] = v69;
  v72[1] = v70[0];
  sub_100019250(a2 + 24, (a2 + 6), &v67);
  if (HIDWORD(v68))
  {
    v12 = 0;
    do
    {
      sub_1000280A4(&v67, v12, &v69);
      v13 = 0;
      v14 = *v70;
      do
      {
        *(&v70[-1] + v13) = *(&v70[-1] + v13) / v14;
        v13 += 8;
      }

      while (v13 != 24);
      sub_10002F3B0(&v67, v12++, &v69);
    }

    while (v12 < HIDWORD(v68));
  }

  sub_100019250(v72, (a2 + 6), v64);
  v15 = 0;
  v61 = 0.0;
  v62 = 0.0;
  v16 = v72;
  v63 = 0.0;
  do
  {
    v17 = 0;
    v18 = 0.0;
    do
    {
      v18 = v18 + *(v16 + v17) * *(a1 + v17);
      v17 += 8;
    }

    while (v17 != 24);
    *(&v61 + v15++) = v18;
    v16 = (v16 + 24);
  }

  while (v15 != 3);
  v19 = v61;
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = v66;
  v58 = 1;
  v59 = v66;
  v60 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v56 = &off_1000A1C58;
  v57 = v65;
  sub_100016068(&v69);
  if (v59 >= 1)
  {
    v20 = v57;
    v21 = &v57[v59];
    do
    {
      *v20 = *v20 - v19;
      ++v20;
    }

    while (v20 < v21);
  }

  sub_100016068(&v56);
  v22 = v62;
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = v66;
  v58 = 1;
  v59 = v66;
  v60 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v56 = &off_1000A1C58;
  v57 = &v65[v66];
  sub_100016068(&v69);
  if (v59 * v58 >= 1)
  {
    v23 = v57;
    v24 = &v57[v59 * v58];
    do
    {
      *v23 = *v23 - v22;
      ++v23;
    }

    while (v23 < v24);
  }

  sub_100016068(&v56);
  v25 = v63;
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = v66;
  v58 = 1;
  v59 = v66;
  v60 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v56 = &off_1000A1C58;
  v57 = &v65[2 * v66];
  sub_100016068(&v69);
  if (v59 * v58 >= 1)
  {
    v26 = v57;
    v27 = &v57[v59 * v58];
    do
    {
      *v26 = *v26 - v25;
      ++v26;
    }

    while (v26 < v27);
  }

  sub_100016068(&v56);
  if (v66)
  {
    for (i = 0; i < v66; ++i)
    {
      sub_1000280A4(v64, i, &v69);
      v29 = 0;
      v30 = *v70;
      do
      {
        *(&v70[-1] + v29) = *(&v70[-1] + v29) / v30;
        v29 += 8;
      }

      while (v29 != 24);
      sub_10002F3B0(v64, i, &v69);
    }
  }

  sub_10002D3F4(a1 + 88, 0, v54);
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = HIDWORD(v68);
  v51 = 1;
  v52 = HIDWORD(v68);
  v53 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v49 = &off_1000A1C58;
  v50 = *(&v67 + 1);
  sub_100016068(&v69);
  sub_1000343F4(v54, &v49, &v56);
  sub_100016068(&v49);
  sub_100016068(v54);
  sub_10002D3F4(a1 + 88, 1, &v49);
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = HIDWORD(v68);
  v46 = 1;
  v47 = HIDWORD(v68);
  v48 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v44 = &off_1000A1C58;
  v45 = *(&v67 + 1) + 8 * HIDWORD(v68);
  sub_100016068(&v69);
  sub_1000343F4(&v49, &v44, v54);
  sub_100016068(&v44);
  sub_100016068(&v49);
  sub_10002D3F4(a1 + 120, 0, &v44);
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = v66;
  v41 = 1;
  v42 = v66;
  v43 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v40[0] = &off_1000A1C58;
  v40[1] = v65;
  sub_100016068(&v69);
  sub_1000343F4(&v44, v40, &v49);
  sub_100016068(v40);
  sub_100016068(&v44);
  sub_10002D3F4(a1 + 120, 1, v40);
  LODWORD(v70[0]) = 1;
  DWORD1(v70[0]) = v66;
  v37 = 1;
  v38 = v66;
  v39 = 0;
  *&v69 = off_1000A1C28;
  *(&v69 + 1) = 0;
  BYTE8(v70[0]) = 0;
  v36[0] = &off_1000A1C58;
  v36[1] = &v65[v66];
  sub_100016068(&v69);
  sub_1000343F4(v40, v36, &v44);
  sub_100016068(v36);
  sub_100016068(v40);
  v31 = *(a2 + 29);
  if (v31)
  {
    v32 = 0;
    v33 = 8 * v31;
    v34 = 1;
    do
    {
      *(a3[1] + 8 * (v34 - 1)) = v57[v32 / 8];
      *(a3[1] + 8 * v34) = *(v55 + v32);
      *(a3[1] + 8 * (v34 + 1)) = *(v50 + v32);
      *(a3[1] + 8 * (v34 + 2)) = *(v45 + v32);
      v32 += 8;
      v34 += 4;
    }

    while (v33 != v32);
  }

  sub_100016068(&v44);
  sub_100016068(&v49);
  sub_100016068(v54);
  sub_100016068(&v56);
  sub_100016068(v64);
  return sub_100016068(&v67);
}